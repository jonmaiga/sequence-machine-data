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
import Seq.B000.C038
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A002700: Coefficients of Chebyshev polynomials: n*(2*n+1) * 4^(n-1).

The programs for A002700, the canonical program `A002700.P7113639674240418340` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002700 has offset 1).

The definition of A002700 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2*(n+1)+1)*4^n` (program `A002700.P7113639674240418340`, by `A002700.P7113639674240418340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002700.P17769298634904600812

`4^n*(n+1)*(2*(n+1)+1)`
-/

namespace A002700.P17769298634904600812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (n + 1) * (2 * (n + 1) + 1)

end

end A002700.P17769298634904600812

namespace A002700

/-- `4^n*(n+1)*(2*(n+1)+1)` -/
def P17769298634904600812.Spec : Prop :=
  ∀ n, (P17769298634904600812.a n : ℤ) = A002700 (n + 1)

theorem P17769298634904600812.correct : P17769298634904600812.Spec := by
  intro n
  simp only [A002700, Nat.add_sub_cancel, A002700.P17769298634904600812.a, A002700.P7113639674240418340.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002700

/-! ## A002700.P7113639674240418340

`(n+1)*(2*(n+1)+1)*4^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002700

/-- `(n+1)*(2*(n+1)+1)*4^n` -/
def P7113639674240418340.Spec : Prop :=
  ∀ n, (P7113639674240418340.a n : ℤ) = A002700 (n + 1)

theorem P7113639674240418340.correct : P7113639674240418340.Spec := by
  intro n
  simp only [A002700, Nat.add_sub_cancel]

end A002700

/-! ## A002700.P14676797314418283738

`12*a(n-1)-48*a(n-2)+64*a(n-3)` with `a(0)=3, a(1)=40, a(2)=336`
-/

namespace A002700.P14676797314418283738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 40, 336] fun n a =>
  12 * a (n - 1) - 48 * a (n - 2) + 64 * a (n - 3)

end

end A002700.P14676797314418283738

namespace A002700

/-- `12*a(n-1)-48*a(n-2)+64*a(n-3)` -/
def P14676797314418283738.Spec : Prop :=
  ∀ n, P14676797314418283738.a n = A002700 (n + 1)

theorem P14676797314418283738.correct : P14676797314418283738.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A002700, Nat.add_sub_cancel, A002700.P14676797314418283738.a, A002700.P7113639674240418340.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A002700, Nat.add_sub_cancel, A002700.P14676797314418283738.a, A002700.P7113639674240418340.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002700

/-! ## A002700.P13937004067303797164

`lcm(2*n+3, (n+1)*4^n)`
-/

namespace A002700.P13937004067303797164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 3) ((n + 1) * 4 ^ n)

end

end A002700.P13937004067303797164

namespace A002700

/-- `lcm(2*n+3, (n+1)*4^n)` -/
def P13937004067303797164.Spec : Prop :=
  ∀ n, (P13937004067303797164.a n : ℤ) = A002700 (n + 1)

end A002700

/-! ## A002700.P2962208488732084872

`A080929(Δ[n²])`
-/

namespace A002700.P2962208488732084872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080929 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002700.P2962208488732084872

namespace A002700

/-- `A080929(Δ[n²])` -/
def P2962208488732084872.Spec : Prop :=
  ∀ n, P2962208488732084872.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P7019649800642718684

`A052482(2*(n+1))`
-/

namespace A002700.P7019649800642718684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052482 (2 * (n + 1))

end

end A002700.P7019649800642718684

namespace A002700

/-- `A052482(2*(n+1))` -/
def P7019649800642718684.Spec : Prop :=
  ∀ n, P7019649800642718684.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P15576737556522199401

`record[A080929(A026741(n+1))]`
-/

namespace A002700.P15576737556522199401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080929 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002700.P15576737556522199401

namespace A002700

/-- `record[A080929(A026741(n+1))]` -/
def P15576737556522199401.Spec : Prop :=
  ∀ n, P15576737556522199401.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P15416866009423127091

`A007466(2*(n+1))-A000302(n)`
-/

namespace A002700.P15416866009423127091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (2 * (n + 1)) - A000302 n

end

end A002700.P15416866009423127091

namespace A002700

/-- `A007466(2*(n+1))-A000302(n)` -/
def P15416866009423127091.Spec : Prop :=
  ∀ n, P15416866009423127091.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P3451785005006900185

`A007466(2*(n+1))-A000079(n)²`
-/

namespace A002700.P3451785005006900185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (2 * (n + 1)) - A000079 n ^ 2

end

end A002700.P3451785005006900185

namespace A002700

/-- `A007466(2*(n+1))-A000079(n)²` -/
def P3451785005006900185.Spec : Prop :=
  ∀ n, P3451785005006900185.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P78438141488307486

`A100312(2*n)+2*A000079(n)²`
-/

namespace A002700.P78438141488307486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100312 (2 * n) + 2 * A000079 n ^ 2

end

end A002700.P78438141488307486

namespace A002700

/-- `A100312(2*n)+2*A000079(n)²` -/
def P78438141488307486.Spec : Prop :=
  ∀ n, P78438141488307486.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P17240544568436878723

`A084266(2*n+1)+A001788(2*n)`
-/

namespace A002700.P17240544568436878723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084266 (2 * n + 1) + A001788 (2 * n)

end

end A002700.P17240544568436878723

namespace A002700

/-- `A084266(2*n+1)+A001788(2*n)` -/
def P17240544568436878723.Spec : Prop :=
  ∀ n, P17240544568436878723.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P4892883665751302084

`A100312(2*n)+A000079(2*n+1)`
-/

namespace A002700.P4892883665751302084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100312 (2 * n) + A000079 (2 * n + 1)

end

end A002700.P4892883665751302084

namespace A002700

/-- `A100312(2*n)+A000079(2*n+1)` -/
def P4892883665751302084.Spec : Prop :=
  ∀ n, P4892883665751302084.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P14732422558388732908

`A104270(2*(n+1))+A036289(2*n)`
-/

namespace A002700.P14732422558388732908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (2 * (n + 1)) + A036289 (2 * n)

end

end A002700.P14732422558388732908

namespace A002700

/-- `A104270(2*(n+1))+A036289(2*n)` -/
def P14732422558388732908.Spec : Prop :=
  ∀ n, P14732422558388732908.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P8725346835718178500

`A084850(2*n)+A066373(2*(n+1))`
-/

namespace A002700.P8725346835718178500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084850 (2 * n) + A066373 (2 * (n + 1))

end

end A002700.P8725346835718178500

namespace A002700

/-- `A084850(2*n)+A066373(2*(n+1))` -/
def P8725346835718178500.Spec : Prop :=
  ∀ n, P8725346835718178500.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P17618188225071309862

`A176027(2*n)+A072863(2*n+1)`
-/

namespace A002700.P17618188225071309862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 (2 * n) + A072863 (2 * n + 1)

end

end A002700.P17618188225071309862

namespace A002700

/-- `A176027(2*n)+A072863(2*n+1)` -/
def P17618188225071309862.Spec : Prop :=
  ∀ n, P17618188225071309862.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P2087484301869122529

`A340257(2*n)+A036289(2*n+1)`
-/

namespace A002700.P2087484301869122529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340257 (2 * n) + A036289 (2 * n + 1)

end

end A002700.P2087484301869122529

namespace A002700

/-- `A340257(2*n)+A036289(2*n+1)` -/
def P2087484301869122529.Spec : Prop :=
  ∀ n, P2087484301869122529.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P2410740450443823836

`A007466(2*(n+1))-A000079(2*n)`
-/

namespace A002700.P2410740450443823836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (2 * (n + 1)) - A000079 (2 * n)

end

end A002700.P2410740450443823836

namespace A002700

/-- `A007466(2*(n+1))-A000079(2*n)` -/
def P2410740450443823836.Spec : Prop :=
  ∀ n, P2410740450443823836.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P5171433603453478342

`A084851(2*n+1)-A127276(2*n)`
-/

namespace A002700.P5171433603453478342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 (2 * n + 1) - A127276 (2 * n)

end

end A002700.P5171433603453478342

namespace A002700

/-- `A084851(2*n+1)-A127276(2*n)` -/
def P5171433603453478342.Spec : Prop :=
  ∀ n, P5171433603453478342.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P2287969532050283971

`A176027(2*n+1)-A036289(2*n)`
-/

namespace A002700.P2287969532050283971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 (2 * n + 1) - A036289 (2 * n)

end

end A002700.P2287969532050283971

namespace A002700

/-- `A176027(2*n+1)-A036289(2*n)` -/
def P2287969532050283971.Spec : Prop :=
  ∀ n, P2287969532050283971.a n = A002700 (n + 1)

end A002700

/-! ## A002700.P16844929343135770120

`A001788(2*(n+1))/2`
-/

namespace A002700.P16844929343135770120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001788 (2 * (n + 1)) : ℚ) / 2

end

end A002700.P16844929343135770120

namespace A002700

/-- `A001788(2*(n+1))/2` -/
def P16844929343135770120.Spec : Prop :=
  ∀ n, P16844929343135770120.a n = (A002700 (n + 1) : ℚ)

end A002700

/-!
# A002701: Coefficients for numerical differentiation.

The programs for A002701, the canonical program `A002701.P84297053768198759` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002701 has offset 2).

The definition of A002701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002701.P84297053768198759

`A007406(n+1)/gcd(A002738(n), A007406(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A002701

/-- `A007406(n+1)/gcd(A002738(n), A007406(n+1))` -/
def P84297053768198759.Spec : Prop :=
  ∀ n, P84297053768198759.a n = (A002701 (n + 2) : ℚ)

end A002701

/-! ## A002701.P4276683321686207306

`A007406(n+1)/A125294(A032559(n+1))`
-/

namespace A002701.P4276683321686207306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007406 (n + 1) : ℚ) / (A125294 (A032559 (n + 1)).toNat : ℚ)

end

end A002701.P4276683321686207306

namespace A002701

/-- `A007406(n+1)/A125294(A032559(n+1))` -/
def P4276683321686207306.Spec : Prop :=
  ∀ n, P4276683321686207306.a n = (A002701 (n + 2) : ℚ)

end A002701

/-! ## A002701.P4713761649445559964

`A007406(n+1)/A125294(A061219(n+1))`
-/

namespace A002701.P4713761649445559964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007406 (n + 1) : ℚ) / (A125294 (A061219 (n + 1)).toNat : ℚ)

end

end A002701.P4713761649445559964

namespace A002701

/-- `A007406(n+1)/A125294(A061219(n+1))` -/
def P4713761649445559964.Spec : Prop :=
  ∀ n, P4713761649445559964.a n = (A002701 (n + 2) : ℚ)

end A002701

/-! ## A002701.P7637841498144563953

`A007406(n+1)/A125294(A276142(n+1))`
-/

namespace A002701.P7637841498144563953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007406 (n + 1) : ℚ) / (A125294 (A276142 (n + 1)).toNat : ℚ)

end

end A002701.P7637841498144563953

namespace A002701

/-- `A007406(n+1)/A125294(A276142(n+1))` -/
def P7637841498144563953.Spec : Prop :=
  ∀ n, P7637841498144563953.a n = (A002701 (n + 2) : ℚ)

end A002701

/-!
# A002702: Coefficients for numerical differentiation.

The programs for A002702, there is no canonical definition to state claims against.
-/

/-! ## A002702.P9488350028360707929

`∑{d}[A177286(n+1)-A066858(n+2), #]`
-/

namespace A002702.P9488350028360707929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177286 (n + 1) - A066858 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A002702.P9488350028360707929

/-!
# A002703: Sets with a congruence property.

The programs for A002703, there is no canonical definition to state claims against.
-/

/-! ## A002703.P11653987105671395133

`A262568(n+3)-2`
-/

namespace A002703.P11653987105671395133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262568 (n + 3) - 2

end

end A002703.P11653987105671395133

/-! ## A002703.P1970426693585213754

`2*(A262569(n+3)-1)`
-/

namespace A002703.P1970426693585213754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A262569 (n + 3) - 1)

end

end A002703.P1970426693585213754

/-! ## A002703.P3609850602011648476

`2*A262567(n+3)`
-/

namespace A002703.P3609850602011648476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262567 (n + 3)

end

end A002703.P3609850602011648476

/-! ## A002703.P7323899616974486084

`A262567(n+3)+A262569(n+3)-1`
-/

namespace A002703.P7323899616974486084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262567 (n + 3) + (A262569 (n + 3) - 1)

end

end A002703.P7323899616974486084

/-! ## A002703.P3955097029490157710

`A262567(A262564(n+2))+A262567(n+3)`
-/

namespace A002703.P3955097029490157710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262567 (A262564 (n + 2)).toNat + A262567 (n + 3)

end

end A002703.P3955097029490157710

/-! ## A002703.P458523906272296688

`A262567(n+3)+A262567(n+3)%A262568(n+3)`
-/

namespace A002703.P458523906272296688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262567 (n + 3) + Int.tmod (A262567 (n + 3)) (A262568 (n + 3))

end

end A002703.P458523906272296688

/-!
# A002704: Number of sets with a congruence property.

The programs for A002704, there is no canonical definition to state claims against.
-/

/-! ## A002704.P12987465413538403988

`A262583(n)+2`
-/

namespace A002704.P12987465413538403988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262583 n + 2

end

end A002704.P12987465413538403988

/-! ## A002704.P4986231988778939888

`2*A262570(n)`
-/

namespace A002704.P4986231988778939888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262570 n

end

end A002704.P4986231988778939888

/-! ## A002704.P14108999416006766580

`2*(A262584(n)+1)`
-/

namespace A002704.P14108999416006766580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A262584 n + 1)

end

end A002704.P14108999416006766580

/-! ## A002704.P12380591922254374565

`A262570(n)+A262584(n)+1`
-/

namespace A002704.P12380591922254374565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262570 n + (A262584 n + 1)

end

end A002704.P12380591922254374565

/-! ## A002704.P2260207610503510923

`A262584(-A001489(n))+A262584(n)+2`
-/

namespace A002704.P2260207610503510923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262584 (-A001489 n).toNat + (A262584 n + 2)

end

end A002704.P2260207610503510923

/-!
# A002705: Sets with a congruence property.

The programs for A002705, there is no canonical definition to state claims against.
-/

/-! ## A002705.P18045758664859698832

`A262585(n)+2-A000038(n)`
-/

namespace A002705.P18045758664859698832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262585 n + (2 - A000038 n)

end

end A002705.P18045758664859698832

/-! ## A002705.P11093716595852202940

`ceil(A262585(n)+atan(A014486(n)))`
-/

namespace A002705.P11093716595852202940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262585 n : ℝ) + Real.arctan (A014486 n : ℝ)⌉

end

end A002705.P11093716595852202940

/-! ## A002705.P17109203622628627963

`A262585(n)+A051612(A020639(n+1))`
-/

namespace A002705.P17109203622628627963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262585 n + A051612 (A020639 (n + 1)).toNat

end

end A002705.P17109203622628627963

/-! ## A002705.P17431369161559388827

`A324817(A262621(n))+A262585(n)`
-/

namespace A002705.P17431369161559388827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324817 (A262621 n).toNat + A262585 n

end

end A002705.P17431369161559388827

/-! ## A002705.P16701631468688875715

`A262585(n)+A054740(A325483(2*(n+1)))`
-/

namespace A002705.P16701631468688875715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262585 n + A054740 (A325483 (2 * (n + 1))).toNat

end

end A002705.P16701631468688875715

/-!
# A002706: Theta series of 6-dimensional lattice A_6^(2) (other names for this lattice or the corresponding quadratic form are LAMBDA_{3,lambda}, P_6^(5), phi_6, F_14).

The programs for A002706, there is no canonical definition to state claims against.
-/

/-! ## A002706.P13725034839617463180

`lcm(A019554(A082139(n)), A023443(n))`
-/

namespace A002706.P13725034839617463180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A019554 (A082139 n).toNat) (A023443 n)

end

end A002706.P13725034839617463180

/-! ## A002706.P16725303611246533434

`A019554(A082139(n))*A049240(2*(n+1))`
-/

namespace A002706.P16725303611246533434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A082139 n).toNat * A049240 (2 * (n + 1))

end

end A002706.P16725303611246533434

/-!
# A002707: Number of ternary trees with n nodes.

The programs for A002707, there is no canonical definition to state claims against.
-/

/-! ## A002707.P9960722993256739948

`abs(Δ[C(a(n-1)+3, 3)])` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A002707.P9960722993256739948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 1] fun n f1 =>
  Nat.choose (f1 (n - 1) + 3) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A002707.P9960722993256739948

/-! ## A002707.P8209495135373670401

`Δ[A000292(a(n-1)+1)]` with `a(0)=-1`
-/

namespace A002707.P8209495135373670401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  A000292 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002707.P8209495135373670401

/-!
# A002708: a(n) = Fibonacci(n) mod n.

The programs for A002708, the canonical program `A002708.P14849052634573435079` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002708 has offset 1).

The definition of A002708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002708.P5638263475916705566

`A132634(n+1)%(n+1)`
-/

namespace A002708.P5638263475916705566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132634 (n + 1)) (n + 1 : ℤ)

end

end A002708.P5638263475916705566

namespace A002708

/-- `A132634(n+1)%(n+1)` -/
def P5638263475916705566.Spec : Prop :=
  ∀ n, P5638263475916705566.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P14849052634573435079

`A132636(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002708

/-- `A132636(n+1)%(n+1)` -/
def P14849052634573435079.Spec : Prop :=
  ∀ n, P14849052634573435079.a n = A002708 (n + 1)

theorem P14849052634573435079.correct : P14849052634573435079.Spec := by
  intro n
  simp only [A002708, Nat.add_sub_cancel]

end A002708

/-! ## A002708.P2782572181409071842

`A217737(n+1)%(n+1)`
-/

namespace A002708.P2782572181409071842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217737 (n + 1)) (n + 1 : ℤ)

end

end A002708.P2782572181409071842

namespace A002708

/-- `A217737(n+1)%(n+1)` -/
def P2782572181409071842.Spec : Prop :=
  ∀ n, P2782572181409071842.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P3309438028112316283

`∑[a(n-1)+a(n-2)]%(n+1)` with `a(0)=1, a(1)=0`
-/

namespace A002708.P3309438028112316283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A002708.P3309438028112316283

namespace A002708

/-- `∑[a(n-1)+a(n-2)]%(n+1)` -/
def P3309438028112316283.Spec : Prop :=
  ∀ n, (P3309438028112316283.a n : ℤ) = A002708 (n + 1)

end A002708

/-! ## A002708.P2311661020125655081

`∑[A212804(n)]%(n+1)`
-/

namespace A002708.P2311661020125655081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A002708.P2311661020125655081

namespace A002708

/-- `∑[A212804(n)]%(n+1)` -/
def P2311661020125655081.Spec : Prop :=
  ∀ n, P2311661020125655081.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P1257888574376831294

`A000045(n+1)%(n+1)`
-/

namespace A002708.P1257888574376831294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) (n + 1 : ℤ)

end

end A002708.P1257888574376831294

namespace A002708

/-- `A000045(n+1)%(n+1)` -/
def P1257888574376831294.Spec : Prop :=
  ∀ n, P1257888574376831294.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P2560992666045736229

`A002062(n+1)%(n+1)`
-/

namespace A002708.P2560992666045736229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002062 (n + 1)) (n + 1 : ℤ)

end

end A002708.P2560992666045736229

namespace A002708

/-- `A002062(n+1)%(n+1)` -/
def P2560992666045736229.Spec : Prop :=
  ∀ n, P2560992666045736229.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P11072134498266288310

`A160536(n+1)%(n+1)`
-/

namespace A002708.P11072134498266288310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160536 (n + 1)) (n + 1 : ℤ)

end

end A002708.P11072134498266288310

namespace A002708

/-- `A160536(n+1)%(n+1)` -/
def P11072134498266288310.Spec : Prop :=
  ∀ n, P11072134498266288310.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P2818191537071288942

`A212272(n+1)%(n+1)`
-/

namespace A002708.P2818191537071288942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212272 (n + 1)) (n + 1 : ℤ)

end

end A002708.P2818191537071288942

namespace A002708

/-- `A212272(n+1)%(n+1)` -/
def P2818191537071288942.Spec : Prop :=
  ∀ n, P2818191537071288942.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P3584530879363794518

`A212804(n+2)%(n+1)`
-/

namespace A002708.P3584530879363794518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (n + 2)) (n + 1 : ℤ)

end

end A002708.P3584530879363794518

namespace A002708

/-- `A212804(n+2)%(n+1)` -/
def P3584530879363794518.Spec : Prop :=
  ∀ n, P3584530879363794518.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P17432000043746431626

`A324969(n+2)%(n+1)`
-/

namespace A002708.P17432000043746431626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324969 (n + 2)) (n + 1 : ℤ)

end

end A002708.P17432000043746431626

namespace A002708

/-- `A324969(n+2)%(n+1)` -/
def P17432000043746431626.Spec : Prop :=
  ∀ n, P17432000043746431626.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P9538402229893233879

`A079977(2*n)%(n+1)`
-/

namespace A002708.P9538402229893233879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079977 (2 * n)) (n + 1 : ℤ)

end

end A002708.P9538402229893233879

namespace A002708

/-- `A079977(2*n)%(n+1)` -/
def P9538402229893233879.Spec : Prop :=
  ∀ n, P9538402229893233879.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P4578480781696566375

`(A000071(n+1)+1)%(n+1)`
-/

namespace A002708.P4578480781696566375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000071 (n + 1) + 1) (n + 1 : ℤ)

end

end A002708.P4578480781696566375

namespace A002708

/-- `(A000071(n+1)+1)%(n+1)` -/
def P4578480781696566375.Spec : Prop :=
  ∀ n, P4578480781696566375.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P16186780541840359816

`(A001611(n+1)-1)%(n+1)`
-/

namespace A002708.P16186780541840359816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 (n + 1) - 1) (n + 1 : ℤ)

end

end A002708.P16186780541840359816

namespace A002708

/-- `(A001611(n+1)-1)%(n+1)` -/
def P16186780541840359816.Spec : Prop :=
  ∀ n, P16186780541840359816.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P3941809670056669104

`A105800(2*(n+1))%(n+1)`
-/

namespace A002708.P3941809670056669104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105800 (2 * (n + 1))) (n + 1 : ℤ)

end

end A002708.P3941809670056669104

namespace A002708

/-- `A105800(2*(n+1))%(n+1)` -/
def P3941809670056669104.Spec : Prop :=
  ∀ n, P3941809670056669104.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P15189887577801246308

`A174619(2*n+1)%(n+1)`
-/

namespace A002708.P15189887577801246308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174619 (2 * n + 1)) (n + 1 : ℤ)

end

end A002708.P15189887577801246308

namespace A002708

/-- `A174619(2*n+1)%(n+1)` -/
def P15189887577801246308.Spec : Prop :=
  ∀ n, P15189887577801246308.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P15713313826287692127

`A272912(2*n+1)%(n+1)`
-/

namespace A002708.P15713313826287692127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272912 (2 * n + 1)) (n + 1 : ℤ)

end

end A002708.P15713313826287692127

namespace A002708

/-- `A272912(2*n+1)%(n+1)` -/
def P15713313826287692127.Spec : Prop :=
  ∀ n, P15713313826287692127.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P17451141451155567480

`A123231(2*n+1)%(n+1)`
-/

namespace A002708.P17451141451155567480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123231 (2 * n + 1)) (n + 1 : ℤ)

end

end A002708.P17451141451155567480

namespace A002708

/-- `A123231(2*n+1)%(n+1)` -/
def P17451141451155567480.Spec : Prop :=
  ∀ n, P17451141451155567480.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P18248054125593589922

`A163227(2*n+1)%(n+1)`
-/

namespace A002708.P18248054125593589922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163227 (2 * n + 1)) (n + 1 : ℤ)

end

end A002708.P18248054125593589922

namespace A002708

/-- `A163227(2*n+1)%(n+1)` -/
def P18248054125593589922.Spec : Prop :=
  ∀ n, P18248054125593589922.a n = A002708 (n + 1)

end A002708

/-! ## A002708.P14659743907492463052

`A094588(n+1)%(n+1)`
-/

namespace A002708.P14659743907492463052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094588 (n + 1)) (n + 1 : ℤ)

end

end A002708.P14659743907492463052

namespace A002708

/-- `A094588(n+1)%(n+1)` -/
def P14659743907492463052.Spec : Prop :=
  ∀ n, P14659743907492463052.a n = A002708 (n + 1)

end A002708

/-!
# A002709: Triangulations of the disk G_{n,0}.

The programs for A002709, there is no canonical definition to state claims against.
-/

/-! ## A002709.P8967082186111154340

`A262586(∑[n]+n)`
-/

namespace A002709.P8967082186111154340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A002709.P8967082186111154340

/-! ## A002709.P4319268199347274149

`2*A002713(n)-A002712(n)`
-/

namespace A002709.P4319268199347274149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002713 n - A002712 n

end

end A002709.P4319268199347274149

/-! ## A002709.P8716693272628561042

`A341923(abs(2-∑[n])+2)`
-/

namespace A002709.P8716693272628561042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (|2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 2).toNat

end

end A002709.P8716693272628561042

/-! ## A002709.P4559105031633881276

`gcd(A000038(n), A341923(A179865(n+1)))`
-/

namespace A002709.P4559105031633881276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A341923 (A179865 (n + 1)).toNat)

end

end A002709.P4559105031633881276

/-! ## A002709.P7860191868350727230

`lcm(A131561(n), A341923(A179865(n+1)))`
-/

namespace A002709.P7860191868350727230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131561 n) (A341923 (A179865 (n + 1)).toNat)

end

end A002709.P7860191868350727230

/-!
# A002710: Triangulations of the disk G_{n,1}.

The programs for A002710, there is no canonical definition to state claims against.
-/

/-! ## A002710.P9324364988101083736

`A262586(∑[n+2]-1)`
-/

namespace A002710.P9324364988101083736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A002710.P9324364988101083736

/-! ## A002710.P10540089817811811974

`record[A262586(A069981(n)+1)]`
-/

namespace A002710.P10540089817811811974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (A069981 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002710.P10540089817811811974

/-! ## A002710.P16897916276300121646

`2*A005500(n)-A005505(n)`
-/

namespace A002710.P16897916276300121646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005500 n - A005505 n

end

end A002710.P16897916276300121646

/-! ## A002710.P17574633236508078134

`or(A000007(n), A262586(A034856(n+1)))`
-/

namespace A002710.P17574633236508078134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A262586 (A034856 (n + 1)).toNat)

end

end A002710.P17574633236508078134

/-! ## A002710.P8868830827527131111

`A262586(A034856(n+1))^A000038(n)!`
-/

namespace A002710.P8868830827527131111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (A034856 (n + 1)).toNat ^ Nat.factorial (A000038 n).toNat

end

end A002710.P8868830827527131111

/-! ## A002710.P11657490514726247482

`A000034(2*n)*A262586(A034856(n+1))`
-/

namespace A002710.P11657490514726247482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A262586 (A034856 (n + 1)).toNat

end

end A002710.P11657490514726247482

/-! ## A002710.P15718493329389776025

`A262586(A034856(n+1))+(A030101(n+1)+1)%2`
-/

namespace A002710.P15718493329389776025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (A034856 (n + 1)).toNat + Int.tmod (A030101 (n + 1) + 1) 2

end

end A002710.P15718493329389776025

/-! ## A002710.P18124924594654705511

`A262586(A034856(n+1))+(n+1)%A038500(n+1)`
-/

namespace A002710.P18124924594654705511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (A034856 (n + 1)).toNat + Int.tmod (n + 1 : ℤ) (A038500 (n + 1))

end

end A002710.P18124924594654705511

/-! ## A002710.P11336035979736782926

`A001221(A051081(n+1))*A262586(A034856(n+1))`
-/

namespace A002710.P11336035979736782926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051081 (n + 1)).toNat * A262586 (A034856 (n + 1)).toNat

end

end A002710.P11336035979736782926

/-! ## A002710.P4916165947044416258

`A262586(A034856(n+1))%A005502(n)`
-/

namespace A002710.P4916165947044416258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262586 (A034856 (n + 1)).toNat) (A005502 n)

end

end A002710.P4916165947044416258

/-!
# A002711: Triangulations of the disk G_{n,2}.

The programs for A002711, there is no canonical definition to state claims against.
-/

/-! ## A002711.P17430966594633600504

`A262586(∑[n+3])`
-/

namespace A002711.P17430966594633600504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002711.P17430966594633600504

/-! ## A002711.P5641836821043359324

`record[A262586(A069981(n))]`
-/

namespace A002711.P5641836821043359324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002711.P5641836821043359324

/-! ## A002711.P4374193331136485258

`2*A005501(n)-A005506(n)`
-/

namespace A002711.P4374193331136485258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005501 n - A005506 n

end

end A002711.P4374193331136485258

/-! ## A002711.P15838377544220996573

`char[A054239(n)]*A262586(A055998(n+1))`
-/

namespace A002711.P15838377544220996573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A262586 (A055998 (n + 1)).toNat

end

end A002711.P15838377544220996573

/-! ## A002711.P7335042481545467546

`A262586(A055998(n+1))+A000038(n+1)`
-/

namespace A002711.P7335042481545467546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (A055998 (n + 1)).toNat + A000038 (n + 1)

end

end A002711.P7335042481545467546

/-! ## A002711.P11992917769407989671

`A262586(A055998(n+1))^A000045(ceil(n/(n+1)))`
-/

namespace A002711.P11992917769407989671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262586 (A055998 (n + 1)).toNat : ℚ) ^ (A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A002711.P11992917769407989671

/-! ## A002711.P2087648369460912114

`A262586(A055998(n+1))%A341853(n)`
-/

namespace A002711.P2087648369460912114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262586 (A055998 (n + 1)).toNat) (A341853 n)

end

end A002711.P2087648369460912114

/-!
# A002712: Number of unrooted triangulations of a disk that have reflection symmetry with n interior nodes and 3 nodes on the boundary.

The programs for A002712, there is no canonical definition to state claims against.
-/

/-! ## A002712.P5491564713383969260

`2*A002713(n)-A002709(n)`
-/

namespace A002712.P5491564713383969260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002713 n - A002709 n

end

end A002712.P5491564713383969260

/-! ## A002712.P5523035975202553048

`A169809(∑[n]+n)`
-/

namespace A002712.P5523035975202553048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A002712.P5523035975202553048

/-! ## A002712.P16142208751625884284

`or(char[1], A169809(A000096(n)))`
-/

namespace A002712.P16142208751625884284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A169809 (A000096 n).toNat)

end

end A002712.P16142208751625884284

/-! ## A002712.P569802704495980074

`gcd(A151878(n), A169809(A000096(n)))`
-/

namespace A002712.P569802704495980074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A169809 (A000096 n).toNat)

end

end A002712.P569802704495980074

/-! ## A002712.P4261145663680643206

`lcm(A165326(n), A169809(A000096(n)))`
-/

namespace A002712.P4261145663680643206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A169809 (A000096 n).toNat)

end

end A002712.P4261145663680643206

/-! ## A002712.P4009813143576048740

`A000034(2*n)*A169809(A000096(n))`
-/

namespace A002712.P4009813143576048740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A169809 (A000096 n).toNat

end

end A002712.P4009813143576048740

/-! ## A002712.P8694979414213907925

`A169809(A000096(n))+A008574(n+10)%2`
-/

namespace A002712.P8694979414213907925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (A000096 n).toNat + Int.tmod (A008574 (n + 10)) 2

end

end A002712.P8694979414213907925

/-! ## A002712.P1921442861157902288

`gcd(n, A000190(n+1))*A169809(A000096(n))`
-/

namespace A002712.P1921442861157902288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A000190 (n + 1)) : ℤ) * A169809 (A000096 n).toNat

end

end A002712.P1921442861157902288

/-! ## A002712.P15547660257314848162

`A000190(A014963(n+1))*A169809(A000096(n))`
-/

namespace A002712.P15547660257314848162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A014963 (n + 1)).toNat * A169809 (A000096 n).toNat

end

end A002712.P15547660257314848162

/-!
# A002713: Number of unrooted triangulations of the disk with n interior nodes and 3 nodes on the boundary.

The programs for A002713, there is no canonical definition to state claims against.
-/

/-! ## A002713.P1685501132884515606

`(A002709(n)+A002712(n))/2`
-/

namespace A002713.P1685501132884515606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002709 n + A002712 n : ℚ) / 2

end

end A002713.P1685501132884515606

/-! ## A002713.P17462927546086045694

`A169808(∑[n]+n)`
-/

namespace A002713.P17462927546086045694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A002713.P17462927546086045694

/-! ## A002713.P8438511480364070021

`A342053(∑[C(n, a(n-1))])` with `a(0)=2`
-/

namespace A002713.P8438511480364070021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002713.P8438511480364070021

/-! ## A002713.P13437381184224305752

`A342053(C(abs(1-n)+1, 2)+n)`
-/

namespace A002713.P13437381184224305752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (Nat.choose (|1 - (n : ℤ)| + 1).toNat 2 + n)

end

end A002713.P13437381184224305752

/-! ## A002713.P13914848688982303001

`A342053(A179865(n+1))`
-/

namespace A002713.P13914848688982303001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A179865 (n + 1)).toNat

end

end A002713.P13914848688982303001

/-! ## A002713.P16872859599357206715

`A342053(A123108(n²+n))`
-/

namespace A002713.P16872859599357206715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A123108 (n ^ 2 + n)).toNat

end

end A002713.P16872859599357206715

/-! ## A002713.P13636239687396190391

`A342053(A175631(n+2)+1)`
-/

namespace A002713.P13636239687396190391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A175631 (n + 2) + 1).toNat

end

end A002713.P13636239687396190391

/-! ## A002713.P11759632055603746294

`A342053(A027379(n)-2*n)`
-/

namespace A002713.P11759632055603746294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A027379 n - (2 * n : ℤ)).toNat

end

end A002713.P11759632055603746294

/-! ## A002713.P7991005176643179661

`A342053(A027379(n)-n-n)`
-/

namespace A002713.P7991005176643179661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A027379 n - (n : ℤ) - (n : ℤ)).toNat

end

end A002713.P7991005176643179661

/-! ## A002713.P11155189593452709550

`A342053(A000124(n)-ceil(sin(n)²))`
-/

namespace A002713.P11155189593452709550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A000124 n - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A002713.P11155189593452709550

/-!
# A002714: Number of different keys with n cuts, depths between 1 and 7 and depth difference at most 1 between adjacent cut depths.

The programs for A002714, there is no canonical definition to state claims against.
-/

/-! ## A002714.P15032284630389326955

`A126376(n)%A008587(3^n)`
-/

namespace A002714.P15032284630389326955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126376 n) (A008587 (3 ^ n))

end

end A002714.P15032284630389326955

/-! ## A002714.P4164080533880738023

`A126362(n)-A002264(A000244(n))`
-/

namespace A002714.P4164080533880738023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126362 n - A002264 (A000244 n).toNat

end

end A002714.P4164080533880738023

/-! ## A002714.P13261002024439499813

`A126362(n)-A006166(A006190(n))`
-/

namespace A002714.P13261002024439499813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126362 n - A006166 (A006190 n).toNat

end

end A002714.P13261002024439499813

/-! ## A002714.P5851830568028911260

`A126362(n)-A004526(A025192(n))`
-/

namespace A002714.P5851830568028911260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126362 n - A004526 (A025192 n).toNat

end

end A002714.P5851830568028911260

/-! ## A002714.P11174567952982691710

`A126362(n)-A006166(A050181(n))`
-/

namespace A002714.P11174567952982691710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126362 n - A006166 (A050181 n).toNat

end

end A002714.P11174567952982691710

/-!
# A002715: An infinite coprime sequence defined by recursion.

The programs for A002715, there is no canonical definition to state claims against.
-/

/-! ## A002715.P6944307592166464906

`A111239(a(n-1)+n+1)` with `a(0)=3`
-/

namespace A002715.P6944307592166464906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A111239 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A002715.P6944307592166464906

/-!
# A002716: An infinite coprime sequence defined by recursion.

The programs for A002716, there is no canonical definition to state claims against.
-/

/-! ## A002716.P2481206905000188024

`A290234(A077896(n))+A051049(A072345(n))`
-/

namespace A002716.P2481206905000188024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290234 (A077896 n).toNat + A051049 (A072345 n).toNat

end

end A002716.P2481206905000188024

/-! ## A002716.P9209935178907238600

`A282417(A075427(n))+A000034(n)`
-/

namespace A002716.P9209935178907238600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282417 (A075427 n).toNat + A000034 n

end

end A002716.P9209935178907238600

/-! ## A002716.P9563772269014686340

`A066845(A072946(n))`
-/

namespace A002716.P9563772269014686340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066845 (A072946 n).toNat

end

end A002716.P9563772269014686340

/-! ## A002716.P7793727869566593315

`A066845(A162255(n+1))`
-/

namespace A002716.P7793727869566593315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066845 (A162255 (n + 1)).toNat

end

end A002716.P7793727869566593315

/-! ## A002716.P5340247946447831503

`A066845(A164073(n+2))`
-/

namespace A002716.P5340247946447831503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066845 (A164073 (n + 2)).toNat

end

end A002716.P5340247946447831503

/-!
# A002717: a(n) = floor(n(n+2)(2n+1)/8).

The programs for A002717, the canonical program `A002717.P16216173563394211781` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002717 has offset 0).

The definition of A002717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+2)*(2*n+1)/8)` (program `A002717.P16216173563394211781`, by `A002717.P16216173563394211781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002717.P16216173563394211781

`floor(n*(n+2)*(2*n+1)/8)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002717

/-- `floor(n*(n+2)*(2*n+1)/8)` -/
def P16216173563394211781.Spec : Prop :=
  ∀ n, P16216173563394211781.a n = A002717 n

theorem P16216173563394211781.correct : P16216173563394211781.Spec := by
  intro n
  simp only [A002717]

end A002717

/-! ## A002717.P5972323667477605650

`1/16*(2*n*(2*n+1)*(n+2)+cos(π*n)-1)`
-/

namespace A002717.P5972323667477605650
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 16 : ℝ) * ((2 * n * (2 * n + 1) * (n + 2) : ℝ) + Real.cos (Real.pi * (n : ℝ)) - 1)

end

end A002717.P5972323667477605650

namespace A002717

/-- `1/16*(2*n*(2*n+1)*(n+2)+cos(π*n)-1)` -/
def P5972323667477605650.Spec : Prop :=
  ∀ n, P5972323667477605650.a n = (A002717 n : ℝ)

end A002717

/-! ## A002717.P8788922839206600627

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=13, a(4)=27`
-/

namespace A002717.P8788922839206600627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 13, 27] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A002717.P8788922839206600627

namespace A002717

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P8788922839206600627.Spec : Prop :=
  ∀ n, P8788922839206600627.a n = A002717 n

end A002717

/-! ## A002717.P7886079708506266863

`a(n-1)+A006578(n)` with `a(0)=0`
-/

namespace A002717.P7886079708506266863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A006578 n

end

end A002717.P7886079708506266863

namespace A002717

/-- `a(n-1)+A006578(n)` -/
def P7886079708506266863.Spec : Prop :=
  ∀ n, P7886079708506266863.a n = A002717 n

end A002717

/-! ## A002717.P9524991564632086589

`∑[∑[a(n-2)+3]]` with `a(0)=0, a(1)=1`
-/

namespace A002717.P9524991564632086589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002717.P9524991564632086589

namespace A002717

/-- `∑[∑[a(n-2)+3]]` -/
def P9524991564632086589.Spec : Prop :=
  ∀ n, (P9524991564632086589.a n : ℤ) = A002717 n

end A002717

/-! ## A002717.P3124601618437323526

`∑[∑[∑[(n-1)%2+1]]]`
-/

namespace A002717.P3124601618437323526
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002717.P3124601618437323526

namespace A002717

/-- `∑[∑[∑[(n-1)%2+1]]]` -/
def P3124601618437323526.Spec : Prop :=
  ∀ n, P3124601618437323526.a n = A002717 n

end A002717

/-! ## A002717.P13525143057191839338

`n*∑[n]-a(n-1)` with `a(0)=0`
-/

namespace A002717.P13525143057191839338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - a (n - 1)

end

end A002717.P13525143057191839338

namespace A002717

/-- `n*∑[n]-a(n-1)` -/
def P13525143057191839338.Spec : Prop :=
  ∀ n, P13525143057191839338.a n = A002717 n

end A002717

/-! ## A002717.P1318026418530797182

`∑[∑[comp[or(2, n)]+n]]/2`
-/

namespace A002717.P1318026418530797182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A002717.P1318026418530797182

namespace A002717

/-- `∑[∑[comp[or(2, n)]+n]]/2` -/
def P1318026418530797182.Spec : Prop :=
  ∀ n, P1318026418530797182.a n = (A002717 n : ℚ)

end A002717

/-! ## A002717.P16812770354355911310

`∑[A006578(n)]`
-/

namespace A002717.P16812770354355911310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002717.P16812770354355911310

namespace A002717

/-- `∑[A006578(n)]` -/
def P16812770354355911310.Spec : Prop :=
  ∀ n, P16812770354355911310.a n = A002717 n

end A002717

/-! ## A002717.P613870746384587303

`∑[sqrt(A212506(n))]`
-/

namespace A002717.P613870746384587303
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212506 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002717.P613870746384587303

namespace A002717

/-- `∑[sqrt(A212506(n))]` -/
def P613870746384587303.Spec : Prop :=
  ∀ n, P613870746384587303.a n = (A002717 n : ℝ)

end A002717

/-! ## A002717.P4577364712382645774

`∑[∑[A032766(n)]]`
-/

namespace A002717.P4577364712382645774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002717.P4577364712382645774

namespace A002717

/-- `∑[∑[A032766(n)]]` -/
def P4577364712382645774.Spec : Prop :=
  ∀ n, P4577364712382645774.a n = A002717 n

end A002717

/-! ## A002717.P16989123233076162843

`A045947(n)+∑[n]`
-/

namespace A002717.P16989123233076162843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002717.P16989123233076162843

namespace A002717

/-- `A045947(n)+∑[n]` -/
def P16989123233076162843.Spec : Prop :=
  ∀ n, P16989123233076162843.a n = A002717 n

end A002717

/-! ## A002717.P627421874530298098

`A173196(n)+∑[∑[n]]`
-/

namespace A002717.P627421874530298098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002717.P627421874530298098

namespace A002717

/-- `A173196(n)+∑[∑[n]]` -/
def P627421874530298098.Spec : Prop :=
  ∀ n, P627421874530298098.a n = A002717 n

end A002717

/-! ## A002717.P15750181410714659329

`n²+A212683(n)/2`
-/

namespace A002717.P15750181410714659329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A212683 n : ℚ) / 2

end

end A002717.P15750181410714659329

namespace A002717

/-- `n²+A212683(n)/2` -/
def P15750181410714659329.Spec : Prop :=
  ∀ n, P15750181410714659329.a n = (A002717 n : ℚ)

end A002717

/-! ## A002717.P4168212412091185085

`(A011934(n)+∑[n])/2`
-/

namespace A002717.P4168212412091185085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011934 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A002717.P4168212412091185085

namespace A002717

/-- `(A011934(n)+∑[n])/2` -/
def P4168212412091185085.Spec : Prop :=
  ∀ n, P4168212412091185085.a n = (A002717 n : ℚ)

end A002717

/-! ## A002717.P2423576434720385109

`A248851(n)-(∑[n]+n)`
-/

namespace A002717.P2423576434720385109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248851 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A002717.P2423576434720385109

namespace A002717

/-- `A248851(n)-(∑[n]+n)` -/
def P2423576434720385109.Spec : Prop :=
  ∀ n, P2423576434720385109.a n = A002717 n

end A002717

/-! ## A002717.P14322793133020716471

`abs(∑[∑[n]*A038608(n)])`
-/

namespace A002717.P14322793133020716471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A002717.P14322793133020716471

namespace A002717

/-- `abs(∑[∑[n]*A038608(n)])` -/
def P14322793133020716471.Spec : Prop :=
  ∀ n, P14322793133020716471.a n = A002717 n

end A002717

/-! ## A002717.P13292290207399713399

`∑[A271937(n)-(n+1)²]`
-/

namespace A002717.P13292290207399713399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271937 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002717.P13292290207399713399

namespace A002717

/-- `∑[A271937(n)-(n+1)²]` -/
def P13292290207399713399.Spec : Prop :=
  ∀ n, P13292290207399713399.a n = A002717 n

end A002717

/-! ## A002717.P4644960208794594002

`∑[A077043(n+1)-(n+1)]`
-/

namespace A002717.P4644960208794594002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002717.P4644960208794594002

namespace A002717

/-- `∑[A077043(n+1)-(n+1)]` -/
def P4644960208794594002.Spec : Prop :=
  ∀ n, P4644960208794594002.a n = A002717 n

end A002717

/-!
# A002718: Number of bicoverings of an n-set.

The programs for A002718, there is no canonical definition to state claims against.
-/

/-! ## A002718.P4977915611787872824

`A188445(A133263(n))`
-/

namespace A002718.P4977915611787872824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A133263 n).toNat

end

end A002718.P4977915611787872824

/-! ## A002718.P5723852777592335504

`A188445(A238531(n+1))`
-/

namespace A002718.P5723852777592335504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A238531 (n + 1)).toNat

end

end A002718.P5723852777592335504

/-! ## A002718.P5413032853345503122

`A188445(A134869(n+1)-n)`
-/

namespace A002718.P5413032853345503122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A134869 (n + 1) - (n : ℤ)).toNat

end

end A002718.P5413032853345503122

/-! ## A002718.P18036667295095841920

`A188445(A036452(n+1)+∑[n])`
-/

namespace A002718.P18036667295095841920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A036452 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A002718.P18036667295095841920

/-! ## A002718.P1645406778283732355

`A188445(A034856(n+1)-A004273(n))`
-/

namespace A002718.P1645406778283732355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A034856 (n + 1) - A004273 n).toNat

end

end A002718.P1645406778283732355

/-!
# A002720: Number of partial permutations of an n-set; number of n X n binary matrices with at most one 1 in each row and column.

The programs for A002720, the canonical program `A002720.P9188981106848597072` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002720 has offset 0).

The definition of A002720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002720.P10032696920423064274

`2*n*a(n-1)-(n-1)²*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A002720.P10032696920423064274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * n : ℤ) * a (n - 1) - ((n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A002720.P10032696920423064274

namespace A002720

/-- `2*n*a(n-1)-(n-1)²*a(n-2)` -/
def P10032696920423064274.Spec : Prop :=
  ∀ n, P10032696920423064274.a n = A002720 n

end A002720

/-! ## A002720.P9188981106848597072

`A000262(n+1)-n*A000262(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002720

/-- `A000262(n+1)-n*A000262(n)` -/
def P9188981106848597072.Spec : Prop :=
  ∀ n, P9188981106848597072.a n = A002720 n

theorem P9188981106848597072.correct : P9188981106848597072.Spec := by
  intro n
  simp only [A002720]

end A002720

/-! ## A002720.P5010551870848656229

`n!*A160617(n)/A160618(n)`
-/

namespace A002720.P5010551870848656229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A160617 n : ℚ) / (A160618 n : ℚ)

end

end A002720.P5010551870848656229

namespace A002720

/-- `n!*A160617(n)/A160618(n)` -/
def P5010551870848656229.Spec : Prop :=
  ∀ n, P5010551870848656229.a n = (A002720 n : ℚ)

end A002720

/-! ## A002720.P16057832260930558818

`A097662(n)+1`
-/

namespace A002720.P16057832260930558818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097662 n + 1

end

end A002720.P16057832260930558818

namespace A002720

/-- `A097662(n)+1` -/
def P16057832260930558818.Spec : Prop :=
  ∀ n, P16057832260930558818.a n = A002720 n

theorem P16057832260930558818.correct : P16057832260930558818.Spec := by
  intro n
  simp only [A002720, Nat.add_sub_cancel, A002720.P16057832260930558818.a, A002720.P9188981106848597072.a, A000262, A000262.P5795723230427946542.a, A097662, A097662.P16094723525980984548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002720

/-! ## A002720.P1034425384513721681

`A056953(2*n)`
-/

namespace A002720.P1034425384513721681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (2 * n)

end

end A002720.P1034425384513721681

namespace A002720

/-- `A056953(2*n)` -/
def P1034425384513721681.Spec : Prop :=
  ∀ n, P1034425384513721681.a n = A002720 n

end A002720

/-! ## A002720.P10974672622327449681

`A176120(∑[n]+n)`
-/

namespace A002720.P10974672622327449681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A002720.P10974672622327449681

namespace A002720

/-- `A176120(∑[n]+n)` -/
def P10974672622327449681.Spec : Prop :=
  ∀ n, P10974672622327449681.a n = A002720 n

end A002720

/-! ## A002720.P7067600867829109572

`A341200(∑[n]+n)`
-/

namespace A002720.P7067600867829109572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341200 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A002720.P7067600867829109572

namespace A002720

/-- `A341200(∑[n]+n)` -/
def P7067600867829109572.Spec : Prop :=
  ∀ n, P7067600867829109572.a n = A002720 n

end A002720

/-! ## A002720.P4273843742032554445

`A343847(∑[n+1]+1)`
-/

namespace A002720.P4273843742032554445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343847 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002720.P4273843742032554445

namespace A002720

/-- `A343847(∑[n+1]+1)` -/
def P4273843742032554445.Spec : Prop :=
  ∀ n, P4273843742032554445.a n = A002720 n

end A002720

/-! ## A002720.P11965757428240122905

`A289192(∑[n+2]-1)`
-/

namespace A002720.P11965757428240122905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A002720.P11965757428240122905

namespace A002720

/-- `A289192(∑[n+2]-1)` -/
def P11965757428240122905.Spec : Prop :=
  ∀ n, P11965757428240122905.a n = A002720 n

end A002720

/-! ## A002720.P4869681520516057115

`A293985(∑[n+2]-1)`
-/

namespace A002720.P4869681520516057115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A002720.P4869681520516057115

namespace A002720

/-- `A293985(∑[n+2]-1)` -/
def P4869681520516057115.Spec : Prop :=
  ∀ n, P4869681520516057115.a n = A002720 n

end A002720

/-!
# A002721: Number of 3 X 3 X 3 arrays M_ijk (1 <= i,j,k <= 3) with entries satisfying 0 <= M_ijk <= n and all line sums equal to n.

The programs for A002721, there is no canonical definition to state claims against.
-/

/-! ## A002721.P12957428703262995531

`record[gcd(2*floor(n/5), A111085(n))]`
-/

namespace A002721.P12957428703262995531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * ⌊(n : ℚ) / 5⌋) (A111085 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002721.P12957428703262995531

/-!
# A002723: Number of rotatable partitions of [n].

The programs for A002723, there is no canonical definition to state claims against.
-/

/-! ## A002723.P13031444199761611564

`A048766(A002379(comp[or(n, n+3)]))`
-/

namespace A002723.P13031444199761611564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A002379 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A002723.P13031444199761611564

/-! ## A002723.P18185290803172877919

`A335746(lt[A335744(2*n+1), A335731(n+1)])`
-/

namespace A002723.P18185290803172877919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335744 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335746 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A002723.P18185290803172877919

/-!
# A002724: Number of inequivalent n X n binary matrices, where equivalence means permutations of rows or columns.

The programs for A002724, there is no canonical definition to state claims against.
-/

/-! ## A002724.P16196079348718043685

`A028657(∑[4*n])`
-/

namespace A002724.P16196079348718043685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002724.P16196079348718043685

/-! ## A002724.P2550228498604130329

`record[A028657(gcd(n, A114327(n)))]`
-/

namespace A002724.P2550228498604130329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002724.P2550228498604130329

/-! ## A002724.P3578351767876245799

`2*A007139(n)-A122082(n)`
-/

namespace A002724.P3578351767876245799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007139 n - A122082 n

end

end A002724.P3578351767876245799

/-! ## A002724.P6260488565062590012

`record[A028657(∑[A014682(n)+1])]`
-/

namespace A002724.P6260488565062590012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002724.P6260488565062590012

/-! ## A002724.P14268079059494986165

`record[A028657(n*A110654(n+1))]`
-/

namespace A002724.P14268079059494986165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 ((n : ℤ) * A110654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002724.P14268079059494986165

/-!
# A002725: Number of incidence matrices: n X (n+1) binary matrices under row and column permutations.

The programs for A002725, there is no canonical definition to state claims against.
-/

/-! ## A002725.P4564923630252936247

`A028657(2*(n+1)²)`
-/

namespace A002725.P4564923630252936247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (2 * (n + 1) ^ 2)

end

end A002725.P4564923630252936247

/-! ## A002725.P5156890555572837591

`record[A028657(∑[A014682(n)])]`
-/

namespace A002725.P5156890555572837591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002725.P5156890555572837591

/-! ## A002725.P18291739559624551817

`record[A028657(n*A110654(n))]`
-/

namespace A002725.P18291739559624551817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 ((n : ℤ) * A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002725.P18291739559624551817

/-! ## A002725.P18078324465344263255

`record[A028657(2*A114327(n)²)]`
-/

namespace A002725.P18078324465344263255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (2 * A114327 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002725.P18078324465344263255

/-! ## A002725.P7888466258868938886

`record[A028657(Δ[A049778(n+1)])]`
-/

namespace A002725.P7888466258868938886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002725.P7888466258868938886

/-!
# A002726: a(n) = Fibonacci(n+1) mod n.

The programs for A002726, the canonical program `A002726.P17746365034456183688` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002726 has offset 1).

The definition of A002726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002726.P17746365034456183688

`∑[a(n-1)+a(n-2)]%(n+1)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002726

/-- `∑[a(n-1)+a(n-2)]%(n+1)` -/
def P17746365034456183688.Spec : Prop :=
  ∀ n, (P17746365034456183688.a n : ℤ) = A002726 (n + 1)

theorem P17746365034456183688.correct : P17746365034456183688.Spec := by
  intro n
  simp only [A002726, Nat.add_sub_cancel]

end A002726

/-! ## A002726.P1762081894989854892

`record[A212804(n)]%(n+1)`
-/

namespace A002726.P1762081894989854892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A002726.P1762081894989854892

namespace A002726

/-- `record[A212804(n)]%(n+1)` -/
def P1762081894989854892.Spec : Prop :=
  ∀ n, P1762081894989854892.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P18373513349435051088

`A081659(n+1)%(n+1)`
-/

namespace A002726.P18373513349435051088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081659 (n + 1)) (n + 1 : ℤ)

end

end A002726.P18373513349435051088

namespace A002726

/-- `A081659(n+1)%(n+1)` -/
def P18373513349435051088.Spec : Prop :=
  ∀ n, P18373513349435051088.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P2885934270742312278

`A000045(n+2)%(n+1)`
-/

namespace A002726.P2885934270742312278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 2)) (n + 1 : ℤ)

end

end A002726.P2885934270742312278

namespace A002726

/-- `A000045(n+2)%(n+1)` -/
def P2885934270742312278.Spec : Prop :=
  ∀ n, P2885934270742312278.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P1525521969298487832

`A129728(n+2)%(n+1)`
-/

namespace A002726.P1525521969298487832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129728 (n + 2)) (n + 1 : ℤ)

end

end A002726.P1525521969298487832

namespace A002726

/-- `A129728(n+2)%(n+1)` -/
def P1525521969298487832.Spec : Prop :=
  ∀ n, P1525521969298487832.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P10187306263741598105

`A212804(n+3)%(n+1)`
-/

namespace A002726.P10187306263741598105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (n + 3)) (n + 1 : ℤ)

end

end A002726.P10187306263741598105

namespace A002726

/-- `A212804(n+3)%(n+1)` -/
def P10187306263741598105.Spec : Prop :=
  ∀ n, P10187306263741598105.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P17804954681009356543

`A324969(n+3)%(n+1)`
-/

namespace A002726.P17804954681009356543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324969 (n + 3)) (n + 1 : ℤ)

end

end A002726.P17804954681009356543

namespace A002726

/-- `A324969(n+3)%(n+1)` -/
def P17804954681009356543.Spec : Prop :=
  ∀ n, P17804954681009356543.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P11315131105844957700

`A096748(2*n)%(n+1)`
-/

namespace A002726.P11315131105844957700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096748 (2 * n)) (n + 1 : ℤ)

end

end A002726.P11315131105844957700

namespace A002726

/-- `A096748(2*n)%(n+1)` -/
def P11315131105844957700.Spec : Prop :=
  ∀ n, P11315131105844957700.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P6195252143954012572

`(∑[A001611(n)]+1)%(n+1)`
-/

namespace A002726.P6195252143954012572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (n + 1 : ℤ)

end

end A002726.P6195252143954012572

namespace A002726

/-- `(∑[A001611(n)]+1)%(n+1)` -/
def P6195252143954012572.Spec : Prop :=
  ∀ n, P6195252143954012572.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P5879134473298259968

`(A001611(n+2)-1)%(n+1)`
-/

namespace A002726.P5879134473298259968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 (n + 2) - 1) (n + 1 : ℤ)

end

end A002726.P5879134473298259968

namespace A002726

/-- `(A001611(n+2)-1)%(n+1)` -/
def P5879134473298259968.Spec : Prop :=
  ∀ n, P5879134473298259968.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P10818338511135259344

`A053602(2*n+1)%(n+1)`
-/

namespace A002726.P10818338511135259344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053602 (2 * n + 1)) (n + 1 : ℤ)

end

end A002726.P10818338511135259344

namespace A002726

/-- `A053602(2*n+1)%(n+1)` -/
def P10818338511135259344.Spec : Prop :=
  ∀ n, P10818338511135259344.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P13804888185320319049

`A115339(2*n+1)%(n+1)`
-/

namespace A002726.P13804888185320319049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115339 (2 * n + 1)) (n + 1 : ℤ)

end

end A002726.P13804888185320319049

namespace A002726

/-- `A115339(2*n+1)%(n+1)` -/
def P13804888185320319049.Spec : Prop :=
  ∀ n, P13804888185320319049.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P241859882201623940

`A373566(n)%A171526(n+1)`
-/

namespace A002726.P241859882201623940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373566 n) (A171526 (n + 1))

end

end A002726.P241859882201623940

namespace A002726

/-- `A373566(n)%A171526(n+1)` -/
def P241859882201623940.Spec : Prop :=
  ∀ n, P241859882201623940.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P2400604017616598519

`Δ[A020695(n)]%(n+1)`
-/

namespace A002726.P2400604017616598519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A002726.P2400604017616598519

namespace A002726

/-- `Δ[A020695(n)]%(n+1)` -/
def P2400604017616598519.Spec : Prop :=
  ∀ n, P2400604017616598519.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P11659150009535445727

`Δ[A000071(n+3)]%(n+1)`
-/

namespace A002726.P11659150009535445727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A002726.P11659150009535445727

namespace A002726

/-- `Δ[A000071(n+3)]%(n+1)` -/
def P11659150009535445727.Spec : Prop :=
  ∀ n, P11659150009535445727.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P3378579906894108718

`A211228(2*n)%(n+1)`
-/

namespace A002726.P3378579906894108718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211228 (2 * n)) (n + 1 : ℤ)

end

end A002726.P3378579906894108718

namespace A002726

/-- `A211228(2*n)%(n+1)` -/
def P3378579906894108718.Spec : Prop :=
  ∀ n, P3378579906894108718.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P13861135289779878820

`A136391(n+2)%(n+1)`
-/

namespace A002726.P13861135289779878820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136391 (n + 2)) (n + 1 : ℤ)

end

end A002726.P13861135289779878820

namespace A002726

/-- `A136391(n+2)%(n+1)` -/
def P13861135289779878820.Spec : Prop :=
  ∀ n, P13861135289779878820.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P3591723902628970169

`A007502(n+2)%(n+1)`
-/

namespace A002726.P3591723902628970169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007502 (n + 2)) (n + 1 : ℤ)

end

end A002726.P3591723902628970169

namespace A002726

/-- `A007502(n+2)%(n+1)` -/
def P3591723902628970169.Spec : Prop :=
  ∀ n, P3591723902628970169.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P14860279791100086549

`A045925(n+2)%(n+1)`
-/

namespace A002726.P14860279791100086549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045925 (n + 2)) (n + 1 : ℤ)

end

end A002726.P14860279791100086549

namespace A002726

/-- `A045925(n+2)%(n+1)` -/
def P14860279791100086549.Spec : Prop :=
  ∀ n, P14860279791100086549.a n = A002726 (n + 1)

end A002726

/-! ## A002726.P8890102664204090452

`A136376(n+2)%(n+1)`
-/

namespace A002726.P8890102664204090452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136376 (n + 2)) (n + 1 : ℤ)

end

end A002726.P8890102664204090452

namespace A002726

/-- `A136376(n+2)%(n+1)` -/
def P8890102664204090452.Spec : Prop :=
  ∀ n, P8890102664204090452.a n = A002726 (n + 1)

end A002726

/-!
# A002727: Number of 3 X n binary matrices up to row and column permutations.

The programs for A002727, the canonical program `A002727.P5415919313851437187` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002727 has offset 0).

The definition of A002727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002727.P11541142449824053613

`∑[A005783(n)]`
-/

namespace A002727.P11541142449824053613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002727.P11541142449824053613

namespace A002727

/-- `∑[A005783(n)]` -/
def P11541142449824053613.Spec : Prop :=
  ∀ n, P11541142449824053613.a n = A002727 n

end A002727

/-! ## A002727.P5415919313851437187

`∑[∑[A050531(n)]]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A002727

/-- `∑[∑[A050531(n)]]` -/
def P5415919313851437187.Spec : Prop :=
  ∀ n, P5415919313851437187.a n = A002727 n

theorem P5415919313851437187.correct : P5415919313851437187.Spec := by
  intro n
  simp only [A002727]

end A002727

/-! ## A002727.P5702100107092395519

`∑[A055609(n+1)-A327728(n+1)]`
-/

namespace A002727.P5702100107092395519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 1) - A327728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002727.P5702100107092395519

namespace A002727

/-- `∑[A055609(n+1)-A327728(n+1)]` -/
def P5702100107092395519.Spec : Prop :=
  ∀ n, P5702100107092395519.a n = A002727 n

end A002727

/-! ## A002727.P10854264533883385226

`∑[∑[A037240(n)+A000292(A110654(n))]]`
-/

namespace A002727.P10854264533883385226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n + A000292 (A110654 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002727.P10854264533883385226

namespace A002727

/-- `∑[∑[A037240(n)+A000292(A110654(n))]]` -/
def P10854264533883385226.Spec : Prop :=
  ∀ n, P10854264533883385226.a n = A002727 n

end A002727

/-! ## A002727.P4486196882130712131

`∑[A055609(n+1)]+A002623(n)-A055609(n+1)`
-/

namespace A002727.P4486196882130712131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002623 n - A055609 (n + 1))

end

end A002727.P4486196882130712131

namespace A002727

/-- `∑[A055609(n+1)]+A002623(n)-A055609(n+1)` -/
def P4486196882130712131.Spec : Prop :=
  ∀ n, P4486196882130712131.a n = A002727 n

end A002727

/-! ## A002727.P35105043155436200

`A055484(n+1)+A056778(n)-A056782(n+1)`
-/

namespace A002727.P35105043155436200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055484 (n + 1) + (A056778 n - A056782 (n + 1))

end

end A002727.P35105043155436200

namespace A002727

/-- `A055484(n+1)+A056778(n)-A056782(n+1)` -/
def P35105043155436200.Spec : Prop :=
  ∀ n, P35105043155436200.a n = A002727 n

end A002727

/-! ## A002727.P3749940543409203430

`∑[∑[A089353(A167614(n+1))]]`
-/

namespace A002727.P3749940543409203430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A167614 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002727.P3749940543409203430

namespace A002727

/-- `∑[∑[A089353(A167614(n+1))]]` -/
def P3749940543409203430.Spec : Prop :=
  ∀ n, P3749940543409203430.a n = A002727 n

end A002727

/-!
# A002728: Number of n X (n+2) binary matrices.

The programs for A002728, there is no canonical definition to state claims against.
-/

/-! ## A002728.P8985565506655296626

`A028657((n+1)²+(n+2)²)`
-/

namespace A002728.P8985565506655296626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A002728.P8985565506655296626

/-! ## A002728.P13599124508314864101

`record[A028657(A001844(∑{digits}[n, #]))]`
-/

namespace A002728.P13599124508314864101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002728.P13599124508314864101

/-! ## A002728.P15948300611705008875

`record[A028657(∑[A014682(n)]+n)]`
-/

namespace A002728.P15948300611705008875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002728.P15948300611705008875

/-! ## A002728.P13092603271541576475

`record[A028657(n+1)*A214505(n)]`
-/

namespace A002728.P13092603271541576475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002728.P13092603271541576475

/-! ## A002728.P12073070494622147437

`record[A028657(n)^A214505(n+1)]`
-/

namespace A002728.P12073070494622147437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028657 n : ℚ) ^ (A214505 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002728.P12073070494622147437

/-!
# A002729: Number of equivalence classes of binary sequences of period n.

The programs for A002729, there is no canonical definition to state claims against.
-/

/-! ## A002729.P11914097251175893761

`A056415(A028310(n))+A040001(2*n)`
-/

namespace A002729.P11914097251175893761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056415 (A028310 n).toNat + A040001 (2 * n)

end

end A002729.P11914097251175893761

/-! ## A002729.P2696495646487854641

`A056415(A028310(n))+A020639(A008574(n))`
-/

namespace A002729.P2696495646487854641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056415 (A028310 n).toNat + A020639 (A008574 n).toNat

end

end A002729.P2696495646487854641

/-! ## A002729.P7489169325810740693

`A336534(A000124(n))+A056415(A028310(n))`
-/

namespace A002729.P7489169325810740693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (A000124 n).toNat + A056415 (A028310 n).toNat

end

end A002729.P7489169325810740693

/-! ## A002729.P15840453252531305735

`A285548(∑[n]+2)`
-/

namespace A002729.P15840453252531305735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A002729.P15840453252531305735

/-! ## A002729.P11188513188047787402

`A285548(A133263(n))%A000747(n)`
-/

namespace A002729.P11188513188047787402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285548 (A133263 n).toNat) (A000747 n)

end

end A002729.P11188513188047787402

/-!
# A002730: Number of equivalence classes of binary sequences of primitive period n.

The programs for A002730, there is no canonical definition to state claims against.
-/

/-! ## A002730.P13626703901492351473

`A056424(abs(1-n)+2)`
-/

namespace A002730.P13626703901492351473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056424 (|1 - (n : ℤ)| + 2).toNat

end

end A002730.P13626703901492351473

/-! ## A002730.P8331767051853206592

`A056424(n+1)+floor(acot(n)²)`
-/

namespace A002730.P8331767051853206592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056424 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A002730.P8331767051853206592

/-! ## A002730.P7500651527266241383

`A056424(n+1)+A000038(n)`
-/

namespace A002730.P7500651527266241383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056424 (n + 1) + A000038 n

end

end A002730.P7500651527266241383

/-! ## A002730.P1153168502618478768

`A056424(n+1)+2*A000007(n)`
-/

namespace A002730.P1153168502618478768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056424 (n + 1) + 2 * A000007 n

end

end A002730.P1153168502618478768

/-! ## A002730.P16965173378181338069

`A056424(n+1)+A000122(n²+1)`
-/

namespace A002730.P16965173378181338069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056424 (n + 1) + A000122 (n ^ 2 + 1)

end

end A002730.P16965173378181338069

/-! ## A002730.P2708008742720990994

`A056424(n+1)+A005843(A151933(n))`
-/

namespace A002730.P2708008742720990994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056424 (n + 1) + A005843 (A151933 n).toNat

end

end A002730.P2708008742720990994

/-! ## A002730.P12489138297406397464

`or(A000122(A082562(n)), A056424(n+1))`
-/

namespace A002730.P12489138297406397464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A082562 n).toNat) (A056424 (n + 1))

end

end A002730.P12489138297406397464

/-!
# A002731: Numbers k such that (k^2 + 1)/2 is prime.

The programs for A002731, the canonical program `A002731.P17861816823819005131` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002731 has offset 1).

The definition of A002731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6612 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002731.P11287133311010849631

`2*A027861(n+1)+1`
-/

namespace A002731.P11287133311010849631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027861 (n + 1) + 1

end

end A002731.P11287133311010849631

namespace A002731

/-- `2*A027861(n+1)+1` -/
def P11287133311010849631.Spec : Prop :=
  ∀ n, P11287133311010849631.a n = A002731 (n + 1)

end A002731

/-! ## A002731.P5889395878785248728

`sqrt(2*A027862(n+1)-1)`
-/

namespace A002731.P5889395878785248728
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A027862 (n + 1) - 1 : ℝ)

end

end A002731.P5889395878785248728

namespace A002731

/-- `sqrt(2*A027862(n+1)-1)` -/
def P5889395878785248728.Spec : Prop :=
  ∀ n, P5889395878785248728.a n = (A002731 (n + 1) : ℝ)

end A002731

/-! ## A002731.P8307122201270826229

`A000265(A027861(n+1)+A027861(n+1)+1)`
-/

namespace A002731.P8307122201270826229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A027861 (n + 1) + (A027861 (n + 1) + 1)).toNat

end

end A002731.P8307122201270826229

namespace A002731

/-- `A000265(A027861(n+1)+A027861(n+1)+1)` -/
def P8307122201270826229.Spec : Prop :=
  ∀ n, P8307122201270826229.a n = A002731 (n + 1)

end A002731

/-! ## A002731.P526297965496200898

`∩[2*n+1, A385821(n+1)]`
-/

namespace A002731.P526297965496200898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P526297965496200898

namespace A002731

/-- `∩[2*n+1, A385821(n+1)]` -/
def P526297965496200898.Spec : Prop :=
  ∀ n, (P526297965496200898.a n : ℤ) = A002731 (n + 1)

end A002731

/-! ## A002731.P17861816823819005131

`filter[A385821(n+2), A360128(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A002731

/-- `filter[A385821(n+2), A360128(#)]` -/
def P17861816823819005131.Spec : Prop :=
  ∀ n, P17861816823819005131.a n = A002731 (n + 1)

theorem P17861816823819005131.correct : P17861816823819005131.Spec := by
  intro n
  simp only [A002731, Nat.add_sub_cancel]

end A002731

/-! ## A002731.P6263426911623023420

`A305897(4*A027861(n+1))`
-/

namespace A002731.P6263426911623023420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (4 * A027861 (n + 1)).toNat

end

end A002731.P6263426911623023420

namespace A002731

/-- `A305897(4*A027861(n+1))` -/
def P6263426911623023420.Spec : Prop :=
  ∀ n, P6263426911623023420.a n = A002731 (n + 1)

end A002731

/-! ## A002731.P12573530118367822861

`∩[2*n+1, A085722(n+1)]`
-/

namespace A002731.P12573530118367822861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P12573530118367822861

namespace A002731

/-- `∩[2*n+1, A085722(n+1)]` -/
def P12573530118367822861.Spec : Prop :=
  ∀ n, (P12573530118367822861.a n : ℤ) = A002731 (n + 1)

end A002731

/-! ## A002731.P4704962152222899769

`∩[A085722(n+1), A281505(n+1)]`
-/

namespace A002731.P4704962152222899769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P4704962152222899769

namespace A002731

/-- `∩[A085722(n+1), A281505(n+1)]` -/
def P4704962152222899769.Spec : Prop :=
  ∀ n, (P4704962152222899769.a n : ℤ) = A002731 (n + 1)

end A002731

/-! ## A002731.P1725526424766109472

`∩[2*n+1, A333635(n+2)]`
-/

namespace A002731.P1725526424766109472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P1725526424766109472

namespace A002731

/-- `∩[2*n+1, A333635(n+2)]` -/
def P1725526424766109472.Spec : Prop :=
  ∀ n, (P1725526424766109472.a n : ℤ) = A002731 (n + 1)

end A002731

/-! ## A002731.P3228503052557183046

`filter[A385821(n+2), A097325(#)]`
-/

namespace A002731.P3228503052557183046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A002731.P3228503052557183046

namespace A002731

/-- `filter[A385821(n+2), A097325(#)]` -/
def P3228503052557183046.Spec : Prop :=
  ∀ n, P3228503052557183046.a n = A002731 (n + 1)

end A002731

/-! ## A002731.P2743457314279452564

`A005408(A027861(n+1))`
-/

namespace A002731.P2743457314279452564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A027861 (n + 1)).toNat

end

end A002731.P2743457314279452564

namespace A002731

/-- `A005408(A027861(n+1))` -/
def P2743457314279452564.Spec : Prop :=
  ∀ n, P2743457314279452564.a n = A002731 (n + 1)

end A002731

/-! ## A002731.P456695212191297347

`A005408(eq[2, A160651(n)])`
-/

namespace A002731.P456695212191297347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002731.P456695212191297347

namespace A002731

/-- `A005408(eq[2, A160651(n)])` -/
def P456695212191297347.Spec : Prop :=
  ∀ n, P456695212191297347.a n = A002731 (n + 1)

end A002731

/-! ## A002731.P14425284798838879147

`A016825(eq[2, A160651(n)])/2`
-/

namespace A002731.P14425284798838879147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A002731.P14425284798838879147

namespace A002731

/-- `A016825(eq[2, A160651(n)])/2` -/
def P14425284798838879147.Spec : Prop :=
  ∀ n, P14425284798838879147.a n = (A002731 (n + 1) : ℚ)

end A002731

/-! ## A002731.P7570490557886512623

`∩[A085722(n+1), A004273(n)]`
-/

namespace A002731.P7570490557886512623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P7570490557886512623

namespace A002731

/-- `∩[A085722(n+1), A004273(n)]` -/
def P7570490557886512623.Spec : Prop :=
  ∀ n, (P7570490557886512623.a n : ℤ) = A002731 (n + 1)

end A002731

/-! ## A002731.P14766553957651418507

`∩[A085722(n+1), A004274(n)]`
-/

namespace A002731.P14766553957651418507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P14766553957651418507

namespace A002731

/-- `∩[A085722(n+1), A004274(n)]` -/
def P14766553957651418507.Spec : Prop :=
  ∀ n, (P14766553957651418507.a n : ℤ) = A002731 (n + 1)

end A002731

/-! ## A002731.P10682471197154168644

`∩[A085722(n+1), A004281(n)]`
-/

namespace A002731.P10682471197154168644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P10682471197154168644

namespace A002731

/-- `∩[A085722(n+1), A004281(n)]` -/
def P10682471197154168644.Spec : Prop :=
  ∀ n, (P10682471197154168644.a n : ℤ) = A002731 (n + 1)

end A002731

/-! ## A002731.P1849557536262708983

`∩[A085722(n+1), A060747(n)]`
-/

namespace A002731.P1849557536262708983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P1849557536262708983

namespace A002731

/-- `∩[A085722(n+1), A060747(n)]` -/
def P1849557536262708983.Spec : Prop :=
  ∀ n, (P1849557536262708983.a n : ℤ) = A002731 (n + 1)

end A002731

/-! ## A002731.P1441019256744682983

`∩[A385821(n+1), A004273(n)]`
-/

namespace A002731.P1441019256744682983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P1441019256744682983

namespace A002731

/-- `∩[A385821(n+1), A004273(n)]` -/
def P1441019256744682983.Spec : Prop :=
  ∀ n, (P1441019256744682983.a n : ℤ) = A002731 (n + 1)

end A002731

/-! ## A002731.P3312353342482578435

`∩[A385821(n+1), A060747(n)]`
-/

namespace A002731.P3312353342482578435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P3312353342482578435

namespace A002731

/-- `∩[A385821(n+1), A060747(n)]` -/
def P3312353342482578435.Spec : Prop :=
  ∀ n, (P3312353342482578435.a n : ℤ) = A002731 (n + 1)

end A002731

/-! ## A002731.P13660423983875992068

`∩[A085722(n+1), A144396(n+1)]`
-/

namespace A002731.P13660423983875992068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002731.P13660423983875992068

namespace A002731

/-- `∩[A085722(n+1), A144396(n+1)]` -/
def P13660423983875992068.Spec : Prop :=
  ∀ n, (P13660423983875992068.a n : ℤ) = A002731 (n + 1)

end A002731

/-!
# A002732: Numbers k such that (4*k^2 + 1)/5 is prime.

The programs for A002732, the canonical program `A002732.P11978341477715930787` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002732 has offset 1).

The definition of A002732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002732.P4216697928317326777

`eq[5, A152823(A004277(n))]`
-/

namespace A002732.P4216697928317326777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152823 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002732.P4216697928317326777

namespace A002732

/-- `eq[5, A152823(A004277(n))]` -/
def P4216697928317326777.Spec : Prop :=
  ∀ n, (P4216697928317326777.a n : ℤ) = A002732 (n + 1)

end A002732

/-! ## A002732.P11978341477715930787

`A000463(eq[5, A248516(n+1)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A002732

/-- `A000463(eq[5, A248516(n+1)])` -/
def P11978341477715930787.Spec : Prop :=
  ∀ n, P11978341477715930787.a n = A002732 (n + 1)

theorem P11978341477715930787.correct : P11978341477715930787.Spec := by
  intro n
  simp only [A002732, Nat.add_sub_cancel]

end A002732

/-! ## A002732.P791237922776315704

`A001057(eq[5, A248516(n+1)])`
-/

namespace A002732.P791237922776315704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002732.P791237922776315704

namespace A002732

/-- `A001057(eq[5, A248516(n+1)])` -/
def P791237922776315704.Spec : Prop :=
  ∀ n, P791237922776315704.a n = A002732 (n + 1)

end A002732

/-! ## A002732.P15665233682340470530

`A008619(eq[5, A248516(n+1)])`
-/

namespace A002732.P15665233682340470530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002732.P15665233682340470530

namespace A002732

/-- `A008619(eq[5, A248516(n+1)])` -/
def P15665233682340470530.Spec : Prop :=
  ∀ n, P15665233682340470530.a n = A002732 (n + 1)

end A002732

/-! ## A002732.P2886026470209311897

`A065033(eq[5, A248516(n+1)])`
-/

namespace A002732.P2886026470209311897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002732.P2886026470209311897

namespace A002732

/-- `A065033(eq[5, A248516(n+1)])` -/
def P2886026470209311897.Spec : Prop :=
  ∀ n, P2886026470209311897.a n = A002732 (n + 1)

end A002732

/-! ## A002732.P4249934741864037241

`A110654(eq[5, A248516(n+1)])`
-/

namespace A002732.P4249934741864037241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002732.P4249934741864037241

namespace A002732

/-- `A110654(eq[5, A248516(n+1)])` -/
def P4249934741864037241.Spec : Prop :=
  ∀ n, P4249934741864037241.a n = A002732 (n + 1)

end A002732

/-! ## A002732.P6212155904967988693

`A152271(eq[5, A248516(n+1)])`
-/

namespace A002732.P6212155904967988693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002732.P6212155904967988693

namespace A002732

/-- `A152271(eq[5, A248516(n+1)])` -/
def P6212155904967988693.Spec : Prop :=
  ∀ n, P6212155904967988693.a n = A002732 (n + 1)

end A002732

/-! ## A002732.P13288958109151812404

`eq[A193330(2*n), A247339(A008574(2*n))]`
-/

namespace A002732.P13288958109151812404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A008574 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002732.P13288958109151812404

namespace A002732

/-- `eq[A193330(2*n), A247339(A008574(2*n))]` -/
def P13288958109151812404.Spec : Prop :=
  ∀ n, (P13288958109151812404.a n : ℤ) = A002732 (n + 1)

end A002732

/-! ## A002732.P10677234175545224081

`eq[5, A152823(A233583(2*n+1))]`
-/

namespace A002732.P10677234175545224081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152823 (A233583 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002732.P10677234175545224081

namespace A002732

/-- `eq[5, A152823(A233583(2*n+1))]` -/
def P10677234175545224081.Spec : Prop :=
  ∀ n, (P10677234175545224081.a n : ℤ) = A002732 (n + 1)

end A002732

/-!
# A002733: Numbers k such that (k^2 + 1)/10 is prime.

The programs for A002733, there is no canonical definition to state claims against.
-/

/-! ## A002733.P10745864610442541636

`sqrt(8*A207339(n+1)+1)`
-/

namespace A002733.P10745864610442541636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (8 * A207339 (n + 1) + 1 : ℝ)

end

end A002733.P10745864610442541636

/-! ## A002733.P13355704419410513037

`sqrt(10*A207337(n+1)-1)`
-/

namespace A002733.P13355704419410513037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (10 * A207337 (n + 1) - 1 : ℝ)

end

end A002733.P13355704419410513037

/-! ## A002733.P15246476753196371265

`ceil(sqrt(8*A207339(n+1)))`
-/

namespace A002733.P15246476753196371265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (8 * A207339 (n + 1) : ℝ)⌉

end

end A002733.P15246476753196371265

/-! ## A002733.P11842490648425233303

`round(sqrt(10*A207337(n+1)))`
-/

namespace A002733.P11842490648425233303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (10 * A207337 (n + 1) : ℝ))

end

end A002733.P11842490648425233303

/-! ## A002733.P6721480972775639991

`floor(sqrt(10*A207337(n+1)))%A053742(n)`
-/

namespace A002733.P6721480972775639991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (10 * A207337 (n + 1))) (A053742 n)

end

end A002733.P6721480972775639991

/-! ## A002733.P3149149931891357546

`A000265(floor(sqrt(10*A207337(n+1))))`
-/

namespace A002733.P3149149931891357546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.sqrt (10 * A207337 (n + 1))).toNat

end

end A002733.P3149149931891357546

/-! ## A002733.P7998344248099399144

`∩[A050798(n+1), A063206(n+1)]`
-/

namespace A002733.P7998344248099399144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002733.P7998344248099399144

/-! ## A002733.P4662515946359030882

`∩[A050798(n+1), A063226(n+1)]`
-/

namespace A002733.P4662515946359030882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002733.P4662515946359030882

/-! ## A002733.P344328557049714917

`eq[A036408(n), A281793(n)]`
-/

namespace A002733.P344328557049714917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002733.P344328557049714917

/-! ## A002733.P1034109014444119992

`eq[A056864(n), A281793(n)]`
-/

namespace A002733.P1034109014444119992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002733.P1034109014444119992

/-! ## A002733.P14843273254379024157

`eq[A040024(n), A248516(n+1)]+1`
-/

namespace A002733.P14843273254379024157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A002733.P14843273254379024157

/-! ## A002733.P2643445884130473307

`floor(sqrt(10*p?[A220082(n+1)]))`
-/

namespace A002733.P2643445884130473307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (10 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A002733.P2643445884130473307

/-!
# A002734: Remove squares!

The programs for A002734, the canonical program `A002734.P13802522267690957899` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002734 has offset 1).

The definition of A002734 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002734.P13802522267690957899

`A007913(A000037(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002734

/-- `A007913(A000037(n+1))` -/
def P13802522267690957899.Spec : Prop :=
  ∀ n, P13802522267690957899.a n = A002734 (n + 1)

theorem P13802522267690957899.correct : P13802522267690957899.Spec := by
  intro n
  simp only [A002734, Nat.add_sub_cancel]

end A002734

/-! ## A002734.P9673155278749138376

`A007913(comp[n²])`
-/

namespace A002734.P9673155278749138376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A002734.P9673155278749138376

namespace A002734

/-- `A007913(comp[n²])` -/
def P9673155278749138376.Spec : Prop :=
  ∀ n, P9673155278749138376.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P15244620474063924830

`comp[n²]/A008833(comp[n²])`
-/

namespace A002734.P15244620474063924830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / (A008833 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℚ)

end

end A002734.P15244620474063924830

namespace A002734

/-- `comp[n²]/A008833(comp[n²])` -/
def P15244620474063924830.Spec : Prop :=
  ∀ n, P15244620474063924830.a n = (A002734 (n + 1) : ℚ)

end A002734

/-! ## A002734.P7119174107722254615

`filter[A007913(n+2), A049240(#)]`
-/

namespace A002734.P7119174107722254615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A002734.P7119174107722254615

namespace A002734

/-- `filter[A007913(n+2), A049240(#)]` -/
def P7119174107722254615.Spec : Prop :=
  ∀ n, P7119174107722254615.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P14264925308622221167

`filter[A007913(n+2), A348737(#)]`
-/

namespace A002734.P14264925308622221167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348737 (f1 j).toNat = 1) n)

end

end A002734.P14264925308622221167

namespace A002734

/-- `filter[A007913(n+2), A348737(#)]` -/
def P14264925308622221167.Spec : Prop :=
  ∀ n, P14264925308622221167.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P2550932562714526436

`filter[A007913(n+1), A267635(#)]`
-/

namespace A002734.P2550932562714526436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A002734.P2550932562714526436

namespace A002734

/-- `filter[A007913(n+1), A267635(#)]` -/
def P2550932562714526436.Spec : Prop :=
  ∀ n, P2550932562714526436.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P16813931402079092935

`filter[A007913(n+1), A381955(#)]`
-/

namespace A002734.P16813931402079092935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A002734.P16813931402079092935

namespace A002734

/-- `filter[A007913(n+1), A381955(#)]` -/
def P16813931402079092935.Spec : Prop :=
  ∀ n, P16813931402079092935.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P15259278490263791635

`filter[A117811(2*n+1), A049240(#)]`
-/

namespace A002734.P15259278490263791635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A002734.P15259278490263791635

namespace A002734

/-- `filter[A117811(2*n+1), A049240(#)]` -/
def P15259278490263791635.Spec : Prop :=
  ∀ n, P15259278490263791635.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P11453069975544701210

`filter[A117811(2*n+1), A267635(#)]`
-/

namespace A002734.P11453069975544701210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A002734.P11453069975544701210

namespace A002734

/-- `filter[A117811(2*n+1), A267635(#)]` -/
def P11453069975544701210.Spec : Prop :=
  ∀ n, P11453069975544701210.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P6881915410264324729

`filter[A364900(2*n+1), A049240(#)]`
-/

namespace A002734.P6881915410264324729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A002734.P6881915410264324729

namespace A002734

/-- `filter[A364900(2*n+1), A049240(#)]` -/
def P6881915410264324729.Spec : Prop :=
  ∀ n, P6881915410264324729.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P12898040717647976028

`filter[A117811(2*n+1), A348737(#)]`
-/

namespace A002734.P12898040717647976028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348737 (f1 j).toNat = 1) n)

end

end A002734.P12898040717647976028

namespace A002734

/-- `filter[A117811(2*n+1), A348737(#)]` -/
def P12898040717647976028.Spec : Prop :=
  ∀ n, P12898040717647976028.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P10657312428373532087

`filter[A117811(2*n+1), A381955(#)]`
-/

namespace A002734.P10657312428373532087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A002734.P10657312428373532087

namespace A002734

/-- `filter[A117811(2*n+1), A381955(#)]` -/
def P10657312428373532087.Spec : Prop :=
  ∀ n, P10657312428373532087.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P16304205583091617601

`filter[A364900(2*n+1), A267635(#)]`
-/

namespace A002734.P16304205583091617601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A002734.P16304205583091617601

namespace A002734

/-- `filter[A364900(2*n+1), A267635(#)]` -/
def P16304205583091617601.Spec : Prop :=
  ∀ n, P16304205583091617601.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P17555948318356234639

`filter[A364900(2*n+1), A348737(#)]`
-/

namespace A002734.P17555948318356234639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348737 (f1 j).toNat = 1) n)

end

end A002734.P17555948318356234639

namespace A002734

/-- `filter[A364900(2*n+1), A348737(#)]` -/
def P17555948318356234639.Spec : Prop :=
  ∀ n, P17555948318356234639.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P6585772498584211144

`filter[A364900(2*n+1), A381955(#)]`
-/

namespace A002734.P6585772498584211144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A002734.P6585772498584211144

namespace A002734

/-- `filter[A364900(2*n+1), A381955(#)]` -/
def P6585772498584211144.Spec : Prop :=
  ∀ n, P6585772498584211144.a n = A002734 (n + 1)

end A002734

/-! ## A002734.P10332767204554271176

`A117811(A173263(n+1))`
-/

namespace A002734.P10332767204554271176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (A173263 (n + 1)).toNat

end

end A002734.P10332767204554271176

namespace A002734

/-- `A117811(A173263(n+1))` -/
def P10332767204554271176.Spec : Prop :=
  ∀ n, P10332767204554271176.a n = A002734 (n + 1)

end A002734

/-!
# A002735: Related to Euler numbers, expansion of e.g.f. sec(x)*tan^2(x).

The programs for A002735, there is no canonical definition to state claims against.
-/

/-! ## A002735.P15056126091873138826

`A054406(lcm(A080040(n), A112320(n+1)))`
-/

namespace A002735.P15056126091873138826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (Int.lcm (A080040 n) (A112320 (n + 1)))

end

end A002735.P15056126091873138826

/-!
# A002736: Apéry numbers: a(n) = n^2*C(2n,n).

The programs for A002736, the canonical program `A002736.P9373791893693471064` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002736 has offset 0).

The definition of A002736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*C(2*n, n)` (program `A002736.P9373791893693471064`, by `A002736.P9373791893693471064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002736.P9373791893693471064

`n²*C(2*n, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002736

/-- `n²*C(2*n, n)` -/
def P9373791893693471064.Spec : Prop :=
  ∀ n, (P9373791893693471064.a n : ℤ) = A002736 n

theorem P9373791893693471064.correct : P9373791893693471064.Spec := by
  intro n
  simp only [A002736]

end A002736

/-! ## A002736.P112849794698902813

`n*record[-(n*a(n-1)/floor(n/2))]` with `a(0)=1, a(1)=2`
-/

namespace A002736.P112849794698902813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  -((n : ℚ) * (f1 (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002736.P112849794698902813

namespace A002736

/-- `n*record[-(n*a(n-1)/floor(n/2))]` -/
def P112849794698902813.Spec : Prop :=
  ∀ n, P112849794698902813.a n = (A002736 n : ℚ)

end A002736

/-! ## A002736.P11734836371321985710

`n²*record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A002736.P11734836371321985710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002736.P11734836371321985710

namespace A002736

/-- `n²*record[a(n-1)/(floor(n/2)/n-1)]` -/
def P11734836371321985710.Spec : Prop :=
  ∀ n, P11734836371321985710.a n = (A002736 n : ℚ)

end A002736

/-! ## A002736.P9540357991095919349

`n*n*record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A002736.P9540357991095919349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A002736.P9540357991095919349

namespace A002736

/-- `n*n*record[a(n-1)/(floor(n/2)/n-1)]` -/
def P9540357991095919349.Spec : Prop :=
  ∀ n, P9540357991095919349.a n = (A002736 n : ℚ)

end A002736

/-! ## A002736.P9133038212359051710

`n*A005430(n)`
-/

namespace A002736.P9133038212359051710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005430 n

end

end A002736.P9133038212359051710

namespace A002736

/-- `n*A005430(n)` -/
def P9133038212359051710.Spec : Prop :=
  ∀ n, P9133038212359051710.a n = A002736 n

theorem P9133038212359051710.correct : P9133038212359051710.Spec := by
  intro n
  simp only [A002736, Nat.add_sub_cancel, A002736.P9133038212359051710.a, A002736.P9373791893693471064.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002736

/-! ## A002736.P3522887600889306968

`n²*A000984(n)`
-/

namespace A002736.P3522887600889306968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000984 n

end

end A002736.P3522887600889306968

namespace A002736

/-- `n²*A000984(n)` -/
def P3522887600889306968.Spec : Prop :=
  ∀ n, P3522887600889306968.a n = A002736 n

theorem P3522887600889306968.correct : P3522887600889306968.Spec := by
  intro n
  simp only [A002736, Nat.add_sub_cancel, A002736.P3522887600889306968.a, A002736.P9373791893693471064.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002736

/-! ## A002736.P9709244017706613598

`∑[n]*A162551(n)`
-/

namespace A002736.P9709244017706613598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A162551 n

end

end A002736.P9709244017706613598

namespace A002736

/-- `∑[n]*A162551(n)` -/
def P9709244017706613598.Spec : Prop :=
  ∀ n, P9709244017706613598.a n = A002736 n

end A002736

/-! ## A002736.P9423878889295559460

`(n+1)*A110609(n)`
-/

namespace A002736.P9423878889295559460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110609 n

end

end A002736.P9423878889295559460

namespace A002736

/-- `(n+1)*A110609(n)` -/
def P9423878889295559460.Spec : Prop :=
  ∀ n, P9423878889295559460.a n = A002736 n

end A002736

/-! ## A002736.P6961003449001736705

`n*(A319924(n)-1)`
-/

namespace A002736.P6961003449001736705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A319924 n - 1)

end

end A002736.P6961003449001736705

namespace A002736

/-- `n*(A319924(n)-1)` -/
def P6961003449001736705.Spec : Prop :=
  ∀ n, P6961003449001736705.a n = A002736 n

theorem P6961003449001736705.correct : P6961003449001736705.Spec := by
  intro n
  simp only [A002736, Nat.add_sub_cancel, A002736.P6961003449001736705.a, A002736.P9373791893693471064.a, A319924, A319924.P4321362157346301630.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002736

/-! ## A002736.P13232345039378181307

`n*A100071(2*n)`
-/

namespace A002736.P13232345039378181307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A100071 (2 * n)

end

end A002736.P13232345039378181307

namespace A002736

/-- `n*A100071(2*n)` -/
def P13232345039378181307.Spec : Prop :=
  ∀ n, P13232345039378181307.a n = A002736 n

end A002736

/-! ## A002736.P1369229744782914019

`n*A212303(2*n)`
-/

namespace A002736.P1369229744782914019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212303 (2 * n)

end

end A002736.P1369229744782914019

namespace A002736

/-- `n*A212303(2*n)` -/
def P1369229744782914019.Spec : Prop :=
  ∀ n, P1369229744782914019.a n = A002736 n

end A002736

/-! ## A002736.P736684287781959219

`n*A218073(2*n)`
-/

namespace A002736.P736684287781959219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A218073 (2 * n)

end

end A002736.P736684287781959219

namespace A002736

/-- `n*A218073(2*n)` -/
def P736684287781959219.Spec : Prop :=
  ∀ n, P736684287781959219.a n = A002736 n

end A002736

/-! ## A002736.P6081987148072452744

`n²*record[A081668(n)]`
-/

namespace A002736.P6081987148072452744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002736.P6081987148072452744

namespace A002736

/-- `n²*record[A081668(n)]` -/
def P6081987148072452744.Spec : Prop :=
  ∀ n, P6081987148072452744.a n = A002736 n

end A002736

/-! ## A002736.P16805592746834535006

`n²*record[A089849(n)]`
-/

namespace A002736.P16805592746834535006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002736.P16805592746834535006

namespace A002736

/-- `n²*record[A089849(n)]` -/
def P16805592746834535006.Spec : Prop :=
  ∀ n, P16805592746834535006.a n = A002736 n

end A002736

/-! ## A002736.P6516060617453372059

`n²*record[A126869(n)]`
-/

namespace A002736.P6516060617453372059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002736.P6516060617453372059

namespace A002736

/-- `n²*record[A126869(n)]` -/
def P6516060617453372059.Spec : Prop :=
  ∀ n, P6516060617453372059.a n = A002736 n

end A002736

/-! ## A002736.P7852245832129682626

`n²*record[A126930(n)]`
-/

namespace A002736.P7852245832129682626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002736.P7852245832129682626

namespace A002736

/-- `n²*record[A126930(n)]` -/
def P7852245832129682626.Spec : Prop :=
  ∀ n, P7852245832129682626.a n = A002736 n

end A002736

/-! ## A002736.P9219512215574856049

`n²*record[A241543(n)]`
-/

namespace A002736.P9219512215574856049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002736.P9219512215574856049

namespace A002736

/-- `n²*record[A241543(n)]` -/
def P9219512215574856049.Spec : Prop :=
  ∀ n, P9219512215574856049.a n = A002736 n

end A002736

/-! ## A002736.P3587299515501501318

`∑[∑[n]]*A071721(n)`
-/

namespace A002736.P3587299515501501318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A071721 n

end

end A002736.P3587299515501501318

namespace A002736

/-- `∑[∑[n]]*A071721(n)` -/
def P3587299515501501318.Spec : Prop :=
  ∀ n, P3587299515501501318.a n = A002736 n

end A002736

/-! ## A002736.P2268417917487933980

`n*record[Δ[A275324(n)]]`
-/

namespace A002736.P2268417917487933980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275324 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002736.P2268417917487933980

namespace A002736

/-- `n*record[Δ[A275324(n)]]` -/
def P2268417917487933980.Spec : Prop :=
  ∀ n, P2268417917487933980.a n = A002736 n

end A002736

/-! ## A002736.P17975722007804312763

`A001791(n)*n*(n+1)`
-/

namespace A002736.P17975722007804312763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n * (n : ℤ) * (n + 1 : ℤ)

end

end A002736.P17975722007804312763

namespace A002736

/-- `A001791(n)*n*(n+1)` -/
def P17975722007804312763.Spec : Prop :=
  ∀ n, P17975722007804312763.a n = A002736 n

end A002736

/-!
# A002737: a(n) = Sum_{j=0..n} (n+j)*binomial(n+j,j).

The programs for A002737, the canonical program `A002737.P13675572213787237758` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002737 has offset 0).

The definition of A002737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002737.P13675572213787237758

`n*(2*n+3)*C(2*n+1, n+1)/(n+2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002737

/-- `n*(2*n+3)*C(2*n+1, n+1)/(n+2)` -/
def P13675572213787237758.Spec : Prop :=
  ∀ n, P13675572213787237758.a n = (A002737 n : ℚ)

end A002737

/-! ## A002737.P6791517543858358555

`A232500(2*n+3)/2`
-/

namespace A002737.P6791517543858358555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232500 (2 * n + 3) : ℚ) / 2

end

end A002737.P6791517543858358555

namespace A002737

/-- `A232500(2*n+3)/2` -/
def P6791517543858358555.Spec : Prop :=
  ∀ n, P6791517543858358555.a n = (A002737 n : ℚ)

end A002737

/-! ## A002737.P2048258865103602133

`n/2*A001700(n+1)`
-/

namespace A002737.P2048258865103602133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A001700 (n + 1) : ℚ)

end

end A002737.P2048258865103602133

namespace A002737

/-- `n/2*A001700(n+1)` -/
def P2048258865103602133.Spec : Prop :=
  ∀ n, P2048258865103602133.a n = (A002737 n : ℚ)

end A002737

/-! ## A002737.P1620596039784895990

`n/2*A088218(n+2)`
-/

namespace A002737.P1620596039784895990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A088218 (n + 2) : ℚ)

end

end A002737.P1620596039784895990

namespace A002737

/-- `n/2*A088218(n+2)` -/
def P1620596039784895990.Spec : Prop :=
  ∀ n, P1620596039784895990.a n = (A002737 n : ℚ)

end A002737

/-! ## A002737.P9186128258937104621

`n/(n+2)*A033876(n)`
-/

namespace A002737.P9186128258937104621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 2 : ℚ) * (A033876 n : ℚ)

end

end A002737.P9186128258937104621

namespace A002737

/-- `n/(n+2)*A033876(n)` -/
def P9186128258937104621.Spec : Prop :=
  ∀ n, P9186128258937104621.a n = (A002737 n : ℚ)

end A002737

/-! ## A002737.P17378756737227403584

`(A010763(n+1)+1)*n/2`
-/

namespace A002737.P17378756737227403584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010763 (n + 1) + 1 : ℚ) * ((n : ℚ) / 2)

end

end A002737.P17378756737227403584

namespace A002737

/-- `(A010763(n+1)+1)*n/2` -/
def P17378756737227403584.Spec : Prop :=
  ∀ n, P17378756737227403584.a n = (A002737 n : ℚ)

end A002737

/-! ## A002737.P13798400686149014038

`n*A107232(2*n+1)/2`
-/

namespace A002737.P13798400686149014038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A107232 (2 * n + 1) : ℚ) / 2)

end

end A002737.P13798400686149014038

namespace A002737

/-- `n*A107232(2*n+1)/2` -/
def P13798400686149014038.Spec : Prop :=
  ∀ n, P13798400686149014038.a n = (A002737 n : ℚ)

end A002737

/-! ## A002737.P9318907464820278064

`(2*n+3)*A116385(2*n)`
-/

namespace A002737.P9318907464820278064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A116385 (2 * n)

end

end A002737.P9318907464820278064

namespace A002737

/-- `(2*n+3)*A116385(2*n)` -/
def P9318907464820278064.Spec : Prop :=
  ∀ n, P9318907464820278064.a n = A002737 n

end A002737

/-! ## A002737.P6731306785286167687

`n*A001405(2*n+3)/2`
-/

namespace A002737.P6731306785286167687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A001405 (2 * n + 3) : ℚ) / 2

end

end A002737.P6731306785286167687

namespace A002737

/-- `n*A001405(2*n+3)/2` -/
def P6731306785286167687.Spec : Prop :=
  ∀ n, P6731306785286167687.a n = (A002737 n : ℚ)

end A002737

/-! ## A002737.P17733346895256269998

`(2*n+3)*A037951(2*n+1)`
-/

namespace A002737.P17733346895256269998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A037951 (2 * n + 1)

end

end A002737.P17733346895256269998

namespace A002737

/-- `(2*n+3)*A037951(2*n+1)` -/
def P17733346895256269998.Spec : Prop :=
  ∀ n, P17733346895256269998.a n = A002737 n

end A002737

/-! ## A002737.P16027784820455554482

`(2*n+3)*A037955(2*n+1)`
-/

namespace A002737.P16027784820455554482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A037955 (2 * n + 1)

end

end A002737.P16027784820455554482

namespace A002737

/-- `(2*n+3)*A037955(2*n+1)` -/
def P16027784820455554482.Spec : Prop :=
  ∀ n, P16027784820455554482.a n = A002737 n

end A002737

/-! ## A002737.P17010693826140593338

`(n+3)*A000108(n+2)*n/4`
-/

namespace A002737.P17010693826140593338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * A000108 (n + 2) : ℚ) * ((n : ℚ) / 4)

end

end A002737.P17010693826140593338

namespace A002737

/-- `(n+3)*A000108(n+2)*n/4` -/
def P17010693826140593338.Spec : Prop :=
  ∀ n, P17010693826140593338.a n = (A002737 n : ℚ)

end A002737

/-! ## A002737.P14439226359174446770

`A000917(n)-A033876(n)`
-/

namespace A002737.P14439226359174446770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n - A033876 n

end

end A002737.P14439226359174446770

namespace A002737

/-- `A000917(n)-A033876(n)` -/
def P14439226359174446770.Spec : Prop :=
  ∀ n, P14439226359174446770.a n = A002737 n

end A002737

/-! ## A002737.P6675030346112538747

`A033876(n)-A001700(n+1)`
-/

namespace A002737.P6675030346112538747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033876 n - A001700 (n + 1)

end

end A002737.P6675030346112538747

namespace A002737

/-- `A033876(n)-A001700(n+1)` -/
def P6675030346112538747.Spec : Prop :=
  ∀ n, P6675030346112538747.a n = A002737 n

end A002737

/-! ## A002737.P6846571856230015836

`A033876(n)-A088218(n+2)`
-/

namespace A002737.P6846571856230015836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033876 n - A088218 (n + 2)

end

end A002737.P6846571856230015836

namespace A002737

/-- `A033876(n)-A088218(n+2)` -/
def P6846571856230015836.Spec : Prop :=
  ∀ n, P6846571856230015836.a n = A002737 n

end A002737

/-! ## A002737.P17491916903585928026

`A002457(n+1)-A394266(n+2)`
-/

namespace A002737.P17491916903585928026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A394266 (n + 2)

end

end A002737.P17491916903585928026

namespace A002737

/-- `A002457(n+1)-A394266(n+2)` -/
def P17491916903585928026.Spec : Prop :=
  ∀ n, P17491916903585928026.a n = A002737 n

end A002737

/-! ## A002737.P358100065908056200

`A394266(n+2)-A000984(n+2)`
-/

namespace A002737.P358100065908056200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394266 (n + 2) - A000984 (n + 2)

end

end A002737.P358100065908056200

namespace A002737

/-- `A394266(n+2)-A000984(n+2)` -/
def P358100065908056200.Spec : Prop :=
  ∀ n, P358100065908056200.a n = A002737 n

end A002737

/-! ## A002737.P15950814302843487771

`2*A002457(n)-A024482(n+2)`
-/

namespace A002737.P15950814302843487771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002457 n - A024482 (n + 2)

end

end A002737.P15950814302843487771

namespace A002737

/-- `2*A002457(n)-A024482(n+2)` -/
def P15950814302843487771.Spec : Prop :=
  ∀ n, P15950814302843487771.a n = A002737 n

end A002737

/-! ## A002737.P16954123141830932829

`n/2*A001405(A144396(n+1))`
-/

namespace A002737.P16954123141830932829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A001405 (A144396 (n + 1)).toNat : ℚ)

end

end A002737.P16954123141830932829

namespace A002737

/-- `n/2*A001405(A144396(n+1))` -/
def P16954123141830932829.Spec : Prop :=
  ∀ n, P16954123141830932829.a n = (A002737 n : ℚ)

end A002737

/-! ## A002737.P16323827665989419340

`A126930(2*n+1)+A110609(n+1)`
-/

namespace A002737.P16323827665989419340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n + 1) + A110609 (n + 1)

end

end A002737.P16323827665989419340

namespace A002737

/-- `A126930(2*n+1)+A110609(n+1)` -/
def P16323827665989419340.Spec : Prop :=
  ∀ n, P16323827665989419340.a n = A002737 n

end A002737

/-!
# A002738: Coefficients for extrapolation.

The programs for A002738, the canonical program `A002738.P2427408757081123955` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002738 has offset 0).

The definition of A002738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002738.P2427408757081123955

`3*A007744(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002738

/-- `3*A007744(n)` -/
def P2427408757081123955.Spec : Prop :=
  ∀ n, P2427408757081123955.a n = A002738 n

theorem P2427408757081123955.correct : P2427408757081123955.Spec := by
  intro n
  simp only [A002738]

end A002738

/-! ## A002738.P5430782160830103759

`3/2*(5*A020918(n)-3*A002802(n))`
-/

namespace A002738.P5430782160830103759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (5 * A020918 n - 3 * A002802 n : ℚ)

end

end A002738.P5430782160830103759

namespace A002738

/-- `3/2*(5*A020918(n)-3*A002802(n))` -/
def P5430782160830103759.Spec : Prop :=
  ∀ n, P5430782160830103759.a n = (A002738 n : ℚ)

end A002738

/-! ## A002738.P12401542202470497716

`3*C(2*n+3, n)*C(n+3, 3)`
-/

namespace A002738.P12401542202470497716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (2 * n + 3) n * Nat.choose (n + 3) 3

end

end A002738.P12401542202470497716

namespace A002738

/-- `3*C(2*n+3, n)*C(n+3, 3)` -/
def P12401542202470497716.Spec : Prop :=
  ∀ n, (P12401542202470497716.a n : ℤ) = A002738 n

theorem P12401542202470497716.correct : P12401542202470497716.Spec := by
  intro n
  simp only [A002738, Nat.add_sub_cancel, A002738.P12401542202470497716.a, A002738.P2427408757081123955.a, A007744, A007744.P16874309615917674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002738

/-! ## A002738.P17825680818747334400

`∏[2/(n+1)+4]/2*(n+1)²`
-/

namespace A002738.P17825680818747334400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * ((n + 1) ^ 2 : ℚ)

end

end A002738.P17825680818747334400

namespace A002738

/-- `∏[2/(n+1)+4]/2*(n+1)²` -/
def P17825680818747334400.Spec : Prop :=
  ∀ n, P17825680818747334400.a n = (A002738 n : ℚ)

end A002738

/-! ## A002738.P10289105711253391875

`A005429(n+1)+A002544(n)`
-/

namespace A002738.P10289105711253391875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005429 (n + 1) + A002544 n

end

end A002738.P10289105711253391875

namespace A002738

/-- `A005429(n+1)+A002544(n)` -/
def P10289105711253391875.Spec : Prop :=
  ∀ n, P10289105711253391875.a n = A002738 n

end A002738

/-! ## A002738.P12305089674195819063

`A119576(n+1)-A119581(n+1)`
-/

namespace A002738.P12305089674195819063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119576 (n + 1) - A119581 (n + 1)

end

end A002738.P12305089674195819063

namespace A002738

/-- `A119576(n+1)-A119581(n+1)` -/
def P12305089674195819063.Spec : Prop :=
  ∀ n, P12305089674195819063.a n = A002738 n

end A002738

/-! ## A002738.P4818000637616830225

`A005429(n+1)+A002736(n+1)/2`
-/

namespace A002738.P4818000637616830225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005429 (n + 1) : ℚ) + (A002736 (n + 1) : ℚ) / 2

end

end A002738.P4818000637616830225

namespace A002738

/-- `A005429(n+1)+A002736(n+1)/2` -/
def P4818000637616830225.Spec : Prop :=
  ∀ n, P4818000637616830225.a n = (A002738 n : ℚ)

end A002738

/-! ## A002738.P16672003491848763231

`A000917(n)+A000096(n)*A000917(n)`
-/

namespace A002738.P16672003491848763231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n + A000096 n * A000917 n

end

end A002738.P16672003491848763231

namespace A002738

/-- `A000917(n)+A000096(n)*A000917(n)` -/
def P16672003491848763231.Spec : Prop :=
  ∀ n, P16672003491848763231.a n = A002738 n

end A002738

/-! ## A002738.P6552749832862409466

`A000124(n+1)*A000917(n)-A000917(n)`
-/

namespace A002738.P6552749832862409466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) * A000917 n - A000917 n

end

end A002738.P6552749832862409466

namespace A002738

/-- `A000124(n+1)*A000917(n)-A000917(n)` -/
def P6552749832862409466.Spec : Prop :=
  ∀ n, P6552749832862409466.a n = A002738 n

end A002738

/-! ## A002738.P6505386462085927932

`A001700(n+1)*A002544(n)/A000108(n+1)`
-/

namespace A002738.P6505386462085927932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001700 (n + 1) * A002544 n : ℚ) / (A000108 (n + 1) : ℚ)

end

end A002738.P6505386462085927932

namespace A002738

/-- `A001700(n+1)*A002544(n)/A000108(n+1)` -/
def P6505386462085927932.Spec : Prop :=
  ∀ n, P6505386462085927932.a n = (A002738 n : ℚ)

end A002738

/-!
# A002739: a(n) = ((2*n-1)!/(2*n!*(n-2)!))*((n^3-3*n^2+2*n+2)/(n^2-1)).

The programs for A002739, the canonical program `A002739.P17475741263459700503` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002739 has offset 2).

The definition of A002739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002739.P17475741263459700503

`1/4*((n+2)^3-3*(n+2)²+2*(n+2)+2)*A000108(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002739

/-- `1/4*((n+2)^3-3*(n+2)²+2*(n+2)+2)*A000108(n+2)` -/
def P17475741263459700503.Spec : Prop :=
  ∀ n, P17475741263459700503.a n = (A002739 (n + 2) : ℚ)

end A002739

/-! ## A002739.P1359691036674740920

`A331432(∑[n+3])`
-/

namespace A002739.P1359691036674740920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331432 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002739.P1359691036674740920

namespace A002739

/-- `A331432(∑[n+3])` -/
def P1359691036674740920.Spec : Prop :=
  ∀ n, P1359691036674740920.a n = A002739 (n + 2)

end A002739

/-! ## A002739.P3772623120590586511

`record[A331432(n)/A063007(n+3)]`
-/

namespace A002739.P3772623120590586511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331432 n : ℚ) / (A063007 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002739.P3772623120590586511

namespace A002739

/-- `record[A331432(n)/A063007(n+3)]` -/
def P3772623120590586511.Spec : Prop :=
  ∀ n, P3772623120590586511.a n = (A002739 (n + 2) : ℚ)

end A002739

/-! ## A002739.P3534709572713128942

`record[A331432(C(n, A063007(n+3)))]`
-/

namespace A002739.P3534709572713128942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331432 (Nat.choose n (A063007 (n + 3)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002739.P3534709572713128942

namespace A002739

/-- `record[A331432(C(n, A063007(n+3)))]` -/
def P3534709572713128942.Spec : Prop :=
  ∀ n, P3534709572713128942.a n = A002739 (n + 2)

end A002739

/-!
# A002740: Number of tree-rooted bridgeless planar maps with two vertices and n faces.

The programs for A002740, the canonical program `A002740.P348049862178716560` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002740 has offset 0).

The definition of A002740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002740.P12983773402819102915

`∑[floor(n-atan(n))]*A120588(n)`
-/

namespace A002740.P12983773402819102915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A120588 n

end

end A002740.P12983773402819102915

namespace A002740

/-- `∑[floor(n-atan(n))]*A120588(n)` -/
def P12983773402819102915.Spec : Prop :=
  ∀ n, P12983773402819102915.a n = A002740 n

end A002740

/-! ## A002740.P9589054293372434226

`∑[A289207(n)]*A120588(n)`
-/

namespace A002740.P9589054293372434226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A120588 n

end

end A002740.P9589054293372434226

namespace A002740

/-- `∑[A289207(n)]*A120588(n)` -/
def P9589054293372434226.Spec : Prop :=
  ∀ n, P9589054293372434226.a n = A002740 n

end A002740

/-! ## A002740.P14000429581490945292

`(∑[n]-A004273(n))*A120588(n)`
-/

namespace A002740.P14000429581490945292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004273 n) * A120588 n

end

end A002740.P14000429581490945292

namespace A002740

/-- `(∑[n]-A004273(n))*A120588(n)` -/
def P14000429581490945292.Spec : Prop :=
  ∀ n, P14000429581490945292.a n = A002740 n

end A002740

/-! ## A002740.P6997016147827748917

`(A004273(n)-A000217(n))*A115140(n)`
-/

namespace A002740.P6997016147827748917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n - A000217 n) * A115140 n

end

end A002740.P6997016147827748917

namespace A002740

/-- `(A004273(n)-A000217(n))*A115140(n)` -/
def P6997016147827748917.Spec : Prop :=
  ∀ n, P6997016147827748917.a n = A002740 n

end A002740

/-! ## A002740.P348049862178716560

`(A005408(n)-A133263(n))*A246432(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A002740

/-- `(A005408(n)-A133263(n))*A246432(n)` -/
def P348049862178716560.Spec : Prop :=
  ∀ n, P348049862178716560.a n = A002740 n

theorem P348049862178716560.correct : P348049862178716560.Spec := by
  intro n
  simp only [A002740]

end A002740

/-! ## A002740.P2689706809696062599

`(A034856(n+1)-A008574(n))*A120588(n)`
-/

namespace A002740.P2689706809696062599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034856 (n + 1) - A008574 n) * A120588 n

end

end A002740.P2689706809696062599

namespace A002740

/-- `(A034856(n+1)-A008574(n))*A120588(n)` -/
def P2689706809696062599.Spec : Prop :=
  ∀ n, P2689706809696062599.a n = A002740 n

end A002740

/-! ## A002740.P5990149594479143754

`A217213(n)/2`
-/

namespace A002740.P5990149594479143754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217213 n : ℚ) / 2

end

end A002740.P5990149594479143754

namespace A002740

/-- `A217213(n)/2` -/
def P5990149594479143754.Spec : Prop :=
  ∀ n, P5990149594479143754.a n = (A002740 n : ℚ)

theorem P5990149594479143754.correct : P5990149594479143754.Spec := by
  intro n
  simp only [A002740, Nat.add_sub_cancel, A002740.P5990149594479143754.a, A002740.P348049862178716560.a, A005408, A005408.P17437947328870227736.a, A133263, A133263.P2239587293626440969.a, A217213, A217213.P12089861951504689576.a, A246432, A246432.P7367098291756528111.a, A120588, A120588.P13914353350146187734.a, A260196, A260196.P12598155231434087214.a, A115140, A115140.P12775726939612743797.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002740

/-! ## A002740.P12083762585097808971

`A115179(A027379(n))`
-/

namespace A002740.P12083762585097808971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115179 (A027379 n).toNat

end

end A002740.P12083762585097808971

namespace A002740

/-- `A115179(A027379(n))` -/
def P12083762585097808971.Spec : Prop :=
  ∀ n, P12083762585097808971.a n = A002740 n

end A002740

/-! ## A002740.P15116022693632109518

`A117434(A004275(n+1)+∑[n])`
-/

namespace A002740.P15116022693632109518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 (A004275 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A002740.P15116022693632109518

namespace A002740

/-- `A117434(A004275(n+1)+∑[n])` -/
def P15116022693632109518.Spec : Prop :=
  ∀ n, P15116022693632109518.a n = A002740 n

end A002740

/-! ## A002740.P14740700198398889290

`A117434(A004273(n)+A000124(n))`
-/

namespace A002740.P14740700198398889290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 (A004273 n + A000124 n).toNat

end

end A002740.P14740700198398889290

namespace A002740

/-- `A117434(A004273(n)+A000124(n))` -/
def P14740700198398889290.Spec : Prop :=
  ∀ n, P14740700198398889290.a n = A002740 n

end A002740

/-!
# A002741: Logarithmic numbers: expansion of the e.g.f. -log(1-x) * e^(-x).

The programs for A002741, the canonical program `A002741.P16820165176126929520` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002741 has offset 0).

The definition of A002741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002741.P16820165176126929520

`(n-2)*a(n-1)+(n-1)*a(n-2)-(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002741

/-- `(n-2)*a(n-1)+(n-1)*a(n-2)-(-1)^n` -/
def P16820165176126929520.Spec : Prop :=
  ∀ n, P16820165176126929520.a n = A002741 n

theorem P16820165176126929520.correct : P16820165176126929520.Spec := by
  intro n
  simp only [A002741]

end A002741

/-! ## A002741.P11563186090003774961

`abs(1-∑[(1-n)*a(n-1)+1])-(-1)^n` with `a(0)=0`
-/

namespace A002741.P11563186090003774961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 - (n : ℤ)) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j| - (-1) ^ n

end

end A002741.P11563186090003774961

namespace A002741

/-- `abs(1-∑[(1-n)*a(n-1)+1])-(-1)^n` -/
def P11563186090003774961.Spec : Prop :=
  ∀ n, P11563186090003774961.a n = A002741 n

end A002741

/-! ## A002741.P2286948542157839974

`(n-3)*a(n-1)+2*(n-2)*a(n-2)+(n-2)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A002741.P2286948542157839974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  ((n : ℤ) - 3) * a (n - 1) + 2 * (((n : ℤ) - 2) * a (n - 2)) + ((n : ℤ) - 2) * a (n - 3)

end

end A002741.P2286948542157839974

namespace A002741

/-- `(n-3)*a(n-1)+2*(n-2)*a(n-2)+(n-2)*a(n-3)` -/
def P2286948542157839974.Spec : Prop :=
  ∀ n, P2286948542157839974.a n = A002741 n

end A002741

/-! ## A002741.P13989768507419499590

`A000757(n)-(-1)^n`
-/

namespace A002741.P13989768507419499590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n - (-1) ^ n

end

end A002741.P13989768507419499590

namespace A002741

/-- `A000757(n)-(-1)^n` -/
def P13989768507419499590.Spec : Prop :=
  ∀ n, P13989768507419499590.a n = A002741 n

end A002741

/-! ## A002741.P1347737414042999584

`A000166(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A002741.P1347737414042999584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000166 (n - 1) - a (n - 1)

end

end A002741.P1347737414042999584

namespace A002741

/-- `A000166(n-1)-a(n-1)` -/
def P1347737414042999584.Spec : Prop :=
  ∀ n, P1347737414042999584.a n = A002741 n

end A002741

/-! ## A002741.P1346390318678693807

`abs(A182386(n-1))-a(n-1)` with `a(0)=0`
-/

namespace A002741.P1346390318678693807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |A182386 (n - 1)| - a (n - 1)

end

end A002741.P1346390318678693807

namespace A002741

/-- `abs(A182386(n-1))-a(n-1)` -/
def P1346390318678693807.Spec : Prop :=
  ∀ n, P1346390318678693807.a n = A002741 n

end A002741

/-! ## A002741.P18113402085848904108

`A033999(n+1)+A000757(n)`
-/

namespace A002741.P18113402085848904108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A000757 n

end

end A002741.P18113402085848904108

namespace A002741

/-- `A033999(n+1)+A000757(n)` -/
def P18113402085848904108.Spec : Prop :=
  ∀ n, P18113402085848904108.a n = A002741 n

end A002741

/-! ## A002741.P9051666085573952044

`A134832(A000217(n))-A033999(n)`
-/

namespace A002741.P9051666085573952044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (A000217 n).toNat - A033999 n

end

end A002741.P9051666085573952044

namespace A002741

/-- `A134832(A000217(n))-A033999(n)` -/
def P9051666085573952044.Spec : Prop :=
  ∀ n, P9051666085573952044.a n = A002741 n

end A002741

/-!
# A002742: Logarithmic numbers.

The programs for A002742, the canonical program `A002742.P667465221034903495` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002742 has offset 1).

The definition of A002742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002742.P667465221034903495

`2*A002747(n+1)-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002742

/-- `2*A002747(n+1)-a(n-1)` -/
def P667465221034903495.Spec : Prop :=
  ∀ n, P667465221034903495.a n = A002742 (n + 1)

theorem P667465221034903495.correct : P667465221034903495.Spec := by
  intro n
  simp only [A002742, Nat.add_sub_cancel]

end A002742

/-! ## A002742.P14372738408420452595

`2*(-1)^n*A263102(n+2)`
-/

namespace A002742.P14372738408420452595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((-1) ^ n * A263102 (n + 2))

end

end A002742.P14372738408420452595

namespace A002742

/-- `2*(-1)^n*A263102(n+2)` -/
def P14372738408420452595.Spec : Prop :=
  ∀ n, P14372738408420452595.a n = A002742 (n + 1)

end A002742

/-! ## A002742.P15414382448185993924

`A260322(∑[n+1]+2)`
-/

namespace A002742.P15414382448185993924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260322 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A002742.P15414382448185993924

namespace A002742

/-- `A260322(∑[n+1]+2)` -/
def P15414382448185993924.Spec : Prop :=
  ∀ n, P15414382448185993924.a n = A002742 (n + 1)

end A002742

/-! ## A002742.P5829291207349328911

`A020985(n)²*A260322(A133263(n+1))`
-/

namespace A002742.P5829291207349328911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A260322 (A133263 (n + 1)).toNat

end

end A002742.P5829291207349328911

namespace A002742

/-- `A020985(n)²*A260322(A133263(n+1))` -/
def P5829291207349328911.Spec : Prop :=
  ∀ n, P5829291207349328911.a n = A002742 (n + 1)

end A002742

/-!
# A002743: Sum of logarithmic numbers.

The programs for A002743, there is no canonical definition to state claims against.
-/

/-! ## A002743.P12345890939154692790

`A002748(n)-a(n-1)` with `a(0)=1`
-/

namespace A002743.P12345890939154692790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002748 n - a (n - 1)

end

end A002743.P12345890939154692790

/-!
# A002744: Sum of logarithmic numbers.

The programs for A002744, there is no canonical definition to state claims against.
-/

/-! ## A002744.P8534055983777340460

`A002749(n)-a(n-1)` with `a(0)=1`
-/

namespace A002744.P8534055983777340460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002749 n - a (n - 1)

end

end A002744.P8534055983777340460

/-!
# A002745: Sum of logarithmic numbers.

The programs for A002745, there is no canonical definition to state claims against.
-/

/-! ## A002745.P4353738986208343504

`∑[A002750(n)]`
-/

namespace A002745.P4353738986208343504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002745.P4353738986208343504

/-! ## A002745.P10089283699150727459

`a(n-1)+A002750(n)+A000007(n)` with `a(0)=1`
-/

namespace A002745.P10089283699150727459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A002750 n + A000007 n)

end

end A002745.P10089283699150727459

/-! ## A002745.P15836986765466737742

`a(n-1)+A002750(n)+A000038(n)` with `a(0)=1`
-/

namespace A002745.P15836986765466737742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A002750 n + A000038 n)

end

end A002745.P15836986765466737742

/-!
# A002746: Sum of logarithmic numbers.

The programs for A002746, there is no canonical definition to state claims against.
-/

/-! ## A002746.P13885742864975437790

`∑[A002751(n)]`
-/

namespace A002746.P13885742864975437790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002746.P13885742864975437790

/-! ## A002746.P15889746615969963909

`A002751(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A002746.P15889746615969963909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002751 n + a (A028310 n - 1).toNat

end

end A002746.P15889746615969963909

/-!
# A002747: Logarithmic numbers.

The programs for A002747, the canonical program `A002747.P14489780833244245312` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002747 has offset 1).

The definition of A002747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002747.P14489780833244245312

`(n+1)*(n*a(n-2)-(-1)^(n+1))` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002747

/-- `(n+1)*(n*a(n-2)-(-1)^(n+1))` -/
def P14489780833244245312.Spec : Prop :=
  ∀ n, P14489780833244245312.a n = A002747 (n + 1)

theorem P14489780833244245312.correct : P14489780833244245312.Spec := by
  intro n
  simp only [A002747, Nat.add_sub_cancel]

end A002747

/-! ## A002747.P11295265966289939750

`(-1)^(n+2)*(n+1)*A087208(n)`
-/

namespace A002747.P11295265966289939750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * (n + 1 : ℤ) * A087208 n

end

end A002747.P11295265966289939750

namespace A002747

/-- `(-1)^(n+2)*(n+1)*A087208(n)` -/
def P11295265966289939750.Spec : Prop :=
  ∀ n, P11295265966289939750.a n = A002747 (n + 1)

end A002747

/-! ## A002747.P3919608307715077383

`(A000166(n+1)-(-1)^(n+1)*A000522(n+1))/2`
-/

namespace A002747.P3919608307715077383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 (n + 1) - (-1) ^ (n + 1) * A000522 (n + 1) : ℚ) / 2

end

end A002747.P3919608307715077383

namespace A002747

/-- `(A000166(n+1)-(-1)^(n+1)*A000522(n+1))/2` -/
def P3919608307715077383.Spec : Prop :=
  ∀ n, P3919608307715077383.a n = (A002747 (n + 1) : ℚ)

end A002747

/-! ## A002747.P3436035082953141340

`(n+1)*(A000166(n)-a(n-1))` with `a(0)=1`
-/

namespace A002747.P3436035082953141340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (A000166 n - a (n - 1))

end

end A002747.P3436035082953141340

namespace A002747

/-- `(n+1)*(A000166(n)-a(n-1))` -/
def P3436035082953141340.Spec : Prop :=
  ∀ n, P3436035082953141340.a n = A002747 (n + 1)

end A002747

/-! ## A002747.P10290636391783466652

`Δ[A263102(n+1)]*A033999(n)`
-/

namespace A002747.P10290636391783466652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A002747.P10290636391783466652

namespace A002747

/-- `Δ[A263102(n+1)]*A033999(n)` -/
def P10290636391783466652.Spec : Prop :=
  ∀ n, P10290636391783466652.a n = A002747 (n + 1)

end A002747

/-! ## A002747.P7203066598185843048

`A087208(n+1)-(A186763(n+1)+A009179(n+1))`
-/

namespace A002747.P7203066598185843048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087208 (n + 1) - (A186763 (n + 1) + A009179 (n + 1))

end

end A002747.P7203066598185843048

namespace A002747

/-- `A087208(n+1)-(A186763(n+1)+A009179(n+1))` -/
def P7203066598185843048.Spec : Prop :=
  ∀ n, P7203066598185843048.a n = A002747 (n + 1)

end A002747

/-!
# A002749: Sum of logarithmic numbers.

The programs for A002749, there is no canonical definition to state claims against.
-/

/-! ## A002749.P13041550530741382019

`A263341(A180000(2*(n+1)))-A007290(n)`
-/

namespace A002749.P13041550530741382019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263341 (A180000 (2 * (n + 1))).toNat - A007290 n

end

end A002749.P13041550530741382019

/-!
# A002750: Sum of logarithmic numbers.

The programs for A002750, there is no canonical definition to state claims against.
-/

/-! ## A002750.P15819681311829023625

`A129309(A056854(n))`
-/

namespace A002750.P15819681311829023625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129309 (A056854 n).toNat

end

end A002750.P15819681311829023625

/-!
# A002751: Sum of logarithmic numbers.

The programs for A002751, there is no canonical definition to state claims against.
-/

/-! ## A002751.P9648729922283074299

`or(1, Δ[A002746(A028310(n))])`
-/

namespace A002751.P9648729922283074299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002746 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A002751.P9648729922283074299

/-! ## A002751.P7307284737736074441

`A000007(n)+Δ[A002746(A028310(n))]`
-/

namespace A002751.P7307284737736074441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002746 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A002751.P7307284737736074441

/-! ## A002751.P16357379501255664519

`Δ[A178334(n)+A002746(A028310(n))]`
-/

namespace A002751.P16357379501255664519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A002746 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002751.P16357379501255664519

/-! ## A002751.P8011300830016196225

`Δ[A002746(A028310(n))-A057428(n)]`
-/

namespace A002751.P8011300830016196225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002746 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002751.P8011300830016196225

/-! ## A002751.P9034029384159175851

`or(1, A002746(n+1)-A002746(A028310(n)))`
-/

namespace A002751.P9034029384159175851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002746 (n + 1) - A002746 (A028310 n).toNat)

end

end A002751.P9034029384159175851

/-! ## A002751.P11016595428478706158

`A002746(n+1)+A000007(n)-A002746(A028310(n))`
-/

namespace A002751.P11016595428478706158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002746 (n + 1) + (A000007 n - A002746 (A028310 n).toNat)

end

end A002751.P11016595428478706158

/-! ## A002751.P6447486336556294278

`A002746(n+1)+A002746(A028310(n))*A057428(n)`
-/

namespace A002751.P6447486336556294278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002746 (n + 1) + A002746 (A028310 n).toNat * A057428 n

end

end A002751.P6447486336556294278

/-! ## A002751.P18341753407211576766

`A002746(n+1)-A002746(A028310(n))*A178334(n)`
-/

namespace A002751.P18341753407211576766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002746 (n + 1) - A002746 (A028310 n).toNat * A178334 n

end

end A002751.P18341753407211576766

/-! ## A002751.P1437789971900971684

`Δ[A002746(A028310(n))%A053487(n)]`
-/

namespace A002751.P1437789971900971684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002746 (A028310 n).toNat) (A053487 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002751.P1437789971900971684

/-!
# A002752: a(n) = Fibonacci(n-1) mod n.

The programs for A002752, the canonical program `A002752.P3763873742837098406` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002752 has offset 1).

The definition of A002752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002752.P3763873742837098406

`∑[a(n-1)+a(n-2)]%(n+1)` with `a(0)=0, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002752

/-- `∑[a(n-1)+a(n-2)]%(n+1)` -/
def P3763873742837098406.Spec : Prop :=
  ∀ n, (P3763873742837098406.a n : ℤ) = A002752 (n + 1)

theorem P3763873742837098406.correct : P3763873742837098406.Spec := by
  intro n
  simp only [A002752, Nat.add_sub_cancel]

end A002752

/-! ## A002752.P11877910779365176839

`A000045(n)%(n+1)`
-/

namespace A002752.P11877910779365176839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (n + 1 : ℤ)

end

end A002752.P11877910779365176839

namespace A002752

/-- `A000045(n)%(n+1)` -/
def P11877910779365176839.Spec : Prop :=
  ∀ n, P11877910779365176839.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P14439751285904836318

`(A002062(n)+1)%(n+1)`
-/

namespace A002752.P14439751285904836318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002062 n + 1) (n + 1 : ℤ)

end

end A002752.P14439751285904836318

namespace A002752

/-- `(A002062(n)+1)%(n+1)` -/
def P14439751285904836318.Spec : Prop :=
  ∀ n, P14439751285904836318.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P8866101583276314738

`A212804(n+1)%(n+1)`
-/

namespace A002752.P8866101583276314738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (n + 1)) (n + 1 : ℤ)

end

end A002752.P8866101583276314738

namespace A002752

/-- `A212804(n+1)%(n+1)` -/
def P8866101583276314738.Spec : Prop :=
  ∀ n, P8866101583276314738.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P11008015919107298291

`A324969(n+1)%(n+1)`
-/

namespace A002752.P11008015919107298291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324969 (n + 1)) (n + 1 : ℤ)

end

end A002752.P11008015919107298291

namespace A002752

/-- `A324969(n+1)%(n+1)` -/
def P11008015919107298291.Spec : Prop :=
  ∀ n, P11008015919107298291.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P5144249303220034517

`(A001611(n)-1)%(n+1)`
-/

namespace A002752.P5144249303220034517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 n - 1) (n + 1 : ℤ)

end

end A002752.P5144249303220034517

namespace A002752

/-- `(A001611(n)-1)%(n+1)` -/
def P5144249303220034517.Spec : Prop :=
  ∀ n, P5144249303220034517.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P2866522532326808004

`A103609(2*n)%(n+1)`
-/

namespace A002752.P2866522532326808004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103609 (2 * n)) (n + 1 : ℤ)

end

end A002752.P2866522532326808004

namespace A002752

/-- `A103609(2*n)%(n+1)` -/
def P2866522532326808004.Spec : Prop :=
  ∀ n, P2866522532326808004.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P9548571117654883807

`A129982(2*n+1)%(n+1)`
-/

namespace A002752.P9548571117654883807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129982 (2 * n + 1)) (n + 1 : ℤ)

end

end A002752.P9548571117654883807

namespace A002752

/-- `A129982(2*n+1)%(n+1)` -/
def P9548571117654883807.Spec : Prop :=
  ∀ n, P9548571117654883807.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P14216805785047483884

`A053602(2*n)%(n+1)`
-/

namespace A002752.P14216805785047483884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053602 (2 * n)) (n + 1 : ℤ)

end

end A002752.P14216805785047483884

namespace A002752

/-- `A053602(2*n)%(n+1)` -/
def P14216805785047483884.Spec : Prop :=
  ∀ n, P14216805785047483884.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P9750243534953945035

`A302126(2*n)%(n+1)`
-/

namespace A002752.P9750243534953945035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302126 (2 * n)) (n + 1 : ℤ)

end

end A002752.P9750243534953945035

namespace A002752

/-- `A302126(2*n)%(n+1)` -/
def P9750243534953945035.Spec : Prop :=
  ∀ n, P9750243534953945035.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P17467669639055088492

`A272912(2*(n+1))%(n+1)`
-/

namespace A002752.P17467669639055088492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272912 (2 * (n + 1))) (n + 1 : ℤ)

end

end A002752.P17467669639055088492

namespace A002752

/-- `A272912(2*(n+1))%(n+1)` -/
def P17467669639055088492.Spec : Prop :=
  ∀ n, P17467669639055088492.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P8484280553992036784

`Δ[A000071(n+1)]%(n+1)`
-/

namespace A002752.P8484280553992036784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A002752.P8484280553992036784

namespace A002752

/-- `Δ[A000071(n+1)]%(n+1)` -/
def P8484280553992036784.Spec : Prop :=
  ∀ n, P8484280553992036784.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P8037441532674058111

`Δ[A187179(n+1)]%(n+1)`
-/

namespace A002752.P8037441532674058111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A002752.P8037441532674058111

namespace A002752

/-- `Δ[A187179(n+1)]%(n+1)` -/
def P8037441532674058111.Spec : Prop :=
  ∀ n, P8037441532674058111.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P7541787087330506669

`A303427(2*n+1)%(n+1)`
-/

namespace A002752.P7541787087330506669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303427 (2 * n + 1)) (n + 1 : ℤ)

end

end A002752.P7541787087330506669

namespace A002752

/-- `A303427(2*n+1)%(n+1)` -/
def P7541787087330506669.Spec : Prop :=
  ∀ n, P7541787087330506669.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P18257161057754811780

`(A004398(n+1)-A004397(n+1))%(n+1)`
-/

namespace A002752.P18257161057754811780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004398 (n + 1) - A004397 (n + 1)) (n + 1 : ℤ)

end

end A002752.P18257161057754811780

namespace A002752

/-- `(A004398(n+1)-A004397(n+1))%(n+1)` -/
def P18257161057754811780.Spec : Prop :=
  ∀ n, P18257161057754811780.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P3441956789867620501

`Δ[A337879(3*n+2)]%(n+1)`
-/

namespace A002752.P3441956789867620501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337879 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A002752.P3441956789867620501

namespace A002752

/-- `Δ[A337879(3*n+2)]%(n+1)` -/
def P3441956789867620501.Spec : Prop :=
  ∀ n, P3441956789867620501.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P696713863225299027

`A136391(n+1)%(n+1)`
-/

namespace A002752.P696713863225299027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136391 (n + 1)) (n + 1 : ℤ)

end

end A002752.P696713863225299027

namespace A002752

/-- `A136391(n+1)%(n+1)` -/
def P696713863225299027.Spec : Prop :=
  ∀ n, P696713863225299027.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P470672086312711638

`A006490(n+2)%(n+1)`
-/

namespace A002752.P470672086312711638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006490 (n + 2)) (n + 1 : ℤ)

end

end A002752.P470672086312711638

namespace A002752

/-- `A006490(n+2)%(n+1)` -/
def P470672086312711638.Spec : Prop :=
  ∀ n, P470672086312711638.a n = A002752 (n + 1)

end A002752

/-! ## A002752.P1487282590444026730

`A088209(n)%(n+1)`
-/

namespace A002752.P1487282590444026730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088209 n) (n + 1 : ℤ)

end

end A002752.P1487282590444026730

namespace A002752

/-- `A088209(n)%(n+1)` -/
def P1487282590444026730.Spec : Prop :=
  ∀ n, P1487282590444026730.a n = A002752 (n + 1)

end A002752

/-!
# A002753: Coefficients of elliptic function sn.

The programs for A002753, there is no canonical definition to state claims against.
-/

/-! ## A002753.P14909032653740528811

`A060628(A194274(n))`
-/

namespace A002753.P14909032653740528811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (A194274 n).toNat

end

end A002753.P14909032653740528811

/-! ## A002753.P8224957504715469731

`A060628(A007590(n+1))`
-/

namespace A002753.P8224957504715469731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (A007590 (n + 1)).toNat

end

end A002753.P8224957504715469731

/-! ## A002753.P14181702729863066139

`A060628(A080476(n+1))`
-/

namespace A002753.P14181702729863066139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (A080476 (n + 1)).toNat

end

end A002753.P14181702729863066139

/-! ## A002753.P4170212048451942583

`A060628(A156324(n+1))`
-/

namespace A002753.P4170212048451942583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (A156324 (n + 1)).toNat

end

end A002753.P4170212048451942583

/-! ## A002753.P15216385157638964406

`A060628(A194243(n+1)+A000217(n))`
-/

namespace A002753.P15216385157638964406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (A194243 (n + 1) + A000217 n).toNat

end

end A002753.P15216385157638964406

/-!
# A002754: Related to coefficient of m in Jacobi elliptic function cn(z, m).

The programs for A002754, the canonical program `A002754.P7844962935270223240` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002754 has offset 0).

The definition of A002754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002754.P7844962935270223240

`(9^n-8*n-1)/16`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002754

/-- `(9^n-8*n-1)/16` -/
def P7844962935270223240.Spec : Prop :=
  ∀ n, P7844962935270223240.a n = (A002754 n : ℚ)

end A002754

/-! ## A002754.P3904594524094516177

`∑[ogf(4x^2/(1-10x+9x^2))]`
-/

namespace A002754.P3904594524094516177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4] [1, -10, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002754.P3904594524094516177

namespace A002754

/-- `∑[ogf(4x^2/(1-10x+9x^2))]` -/
def P3904594524094516177.Spec : Prop :=
  ∀ n, P3904594524094516177.a n = A002754 n

end A002754

/-! ## A002754.P4966472378462018997

`∑[9*a(n-1)+4]` with `a(0)=0, a(1)=0`
-/

namespace A002754.P4966472378462018997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  9 * f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002754.P4966472378462018997

namespace A002754

/-- `∑[9*a(n-1)+4]` -/
def P4966472378462018997.Spec : Prop :=
  ∀ n, (P4966472378462018997.a n : ℤ) = A002754 n

end A002754

/-! ## A002754.P6868648566004654964

`∑[lcm(9, a(n-1))+4]` with `a(0)=0, a(1)=0`
-/

namespace A002754.P6868648566004654964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Nat.lcm 9 (f1 (n - 1)) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002754.P6868648566004654964

namespace A002754

/-- `∑[lcm(9, a(n-1))+4]` -/
def P6868648566004654964.Spec : Prop :=
  ∀ n, (P6868648566004654964.a n : ℤ) = A002754 n

end A002754

/-! ## A002754.P16630741405476294855

`∑[∑[9*a(n-1)]]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A002754.P16630741405476294855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n f2 =>
  9 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002754.P16630741405476294855

namespace A002754

/-- `∑[∑[9*a(n-1)]]` -/
def P16630741405476294855.Spec : Prop :=
  ∀ n, (P16630741405476294855.a n : ℤ) = A002754 n

end A002754

/-! ## A002754.P10593671015225657313

`∑[a(n-1)/(1/3)²+4]` with `a(0)=0, a(1)=0`
-/

namespace A002754.P10593671015225657313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 3) ^ 2 + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002754.P10593671015225657313

namespace A002754

/-- `∑[a(n-1)/(1/3)²+4]` -/
def P10593671015225657313.Spec : Prop :=
  ∀ n, P10593671015225657313.a n = (A002754 n : ℚ)

end A002754

/-! ## A002754.P16683577324956097126

`a(n-1)+2*A125857(n)` with `a(0)=0`
-/

namespace A002754.P16683577324956097126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A125857 n

end

end A002754.P16683577324956097126

namespace A002754

/-- `a(n-1)+2*A125857(n)` -/
def P16683577324956097126.Spec : Prop :=
  ∀ n, P16683577324956097126.a n = A002754 n

end A002754

/-! ## A002754.P11037417425575215053

`A097137(A004273(n))`
-/

namespace A002754.P11037417425575215053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (A004273 n).toNat

end

end A002754.P11037417425575215053

namespace A002754

/-- `A097137(A004273(n))` -/
def P11037417425575215053.Spec : Prop :=
  ∀ n, P11037417425575215053.a n = A002754 n

end A002754

/-! ## A002754.P5301213768554419570

`A097137(xor(1, A004275(n)))`
-/

namespace A002754.P5301213768554419570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (Int.xor 1 (A004275 n)).toNat

end

end A002754.P5301213768554419570

namespace A002754

/-- `A097137(xor(1, A004275(n)))` -/
def P5301213768554419570.Spec : Prop :=
  ∀ n, P5301213768554419570.a n = A002754 n

end A002754

/-! ## A002754.P10221403487538600096

`∑[A191681(log2(A011782(n)))]`
-/

namespace A002754.P10221403487538600096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002754.P10221403487538600096

namespace A002754

/-- `∑[A191681(log2(A011782(n)))]` -/
def P10221403487538600096.Spec : Prop :=
  ∀ n, P10221403487538600096.a n = A002754 n

end A002754

/-! ## A002754.P2584954941832788049

`A097137(abs(1-A005843(n)))`
-/

namespace A002754.P2584954941832788049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 |1 - A005843 n|.toNat

end

end A002754.P2584954941832788049

namespace A002754

/-- `A097137(abs(1-A005843(n)))` -/
def P2584954941832788049.Spec : Prop :=
  ∀ n, P2584954941832788049.a n = A002754 n

end A002754

/-! ## A002754.P3065957767277431377

`A097137(abs(A024000(2*n)))`
-/

namespace A002754.P3065957767277431377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 |A024000 (2 * n)|.toNat

end

end A002754.P3065957767277431377

namespace A002754

/-- `A097137(abs(A024000(2*n)))` -/
def P3065957767277431377.Spec : Prop :=
  ∀ n, P3065957767277431377.a n = A002754 n

end A002754

/-! ## A002754.P15682819048026864199

`∑[A003462(A289207(2*n))]`
-/

namespace A002754.P15682819048026864199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A289207 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002754.P15682819048026864199

namespace A002754

/-- `∑[A003462(A289207(2*n))]` -/
def P15682819048026864199.Spec : Prop :=
  ∀ n, P15682819048026864199.a n = A002754 n

end A002754

/-! ## A002754.P7064963658293144753

`A097137(abs(A024000(n))+n)`
-/

namespace A002754.P7064963658293144753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (|A024000 n| + (n : ℤ)).toNat

end

end A002754.P7064963658293144753

namespace A002754

/-- `A097137(abs(A024000(n))+n)` -/
def P7064963658293144753.Spec : Prop :=
  ∀ n, P7064963658293144753.a n = A002754 n

end A002754

/-! ## A002754.P17126777182131082028

`A097137(abs(n-A024000(n)))`
-/

namespace A002754.P17126777182131082028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 |(n : ℤ) - A024000 n|.toNat

end

end A002754.P17126777182131082028

namespace A002754

/-- `A097137(abs(n-A024000(n)))` -/
def P17126777182131082028.Spec : Prop :=
  ∀ n, P17126777182131082028.a n = A002754 n

end A002754

/-! ## A002754.P15757719547430049634

`A097137(A004275(n+1)-1)`
-/

namespace A002754.P15757719547430049634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (A004275 (n + 1) - 1).toNat

end

end A002754.P15757719547430049634

namespace A002754

/-- `A097137(A004275(n+1)-1)` -/
def P15757719547430049634.Spec : Prop :=
  ∀ n, P15757719547430049634.a n = A002754 n

end A002754

/-! ## A002754.P9718151664931045626

`A097137(A004275(2*n)/2)`
-/

namespace A002754.P9718151664931045626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (SequenceMachineLib.roundAway ((A004275 (2 * n) : ℚ) / 2)).toNat

end

end A002754.P9718151664931045626

namespace A002754

/-- `A097137(A004275(2*n)/2)` -/
def P9718151664931045626.Spec : Prop :=
  ∀ n, P9718151664931045626.a n = A002754 n

end A002754

/-! ## A002754.P7924242758149882044

`A097137(eq[1, A019425(n+1)])`
-/

namespace A002754.P7924242758149882044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002754.P7924242758149882044

namespace A002754

/-- `A097137(eq[1, A019425(n+1)])` -/
def P7924242758149882044.Spec : Prop :=
  ∀ n, P7924242758149882044.a n = A002754 n

end A002754

/-! ## A002754.P5992015442027918205

`A097137(eq[1, A019425(n)]-1)`
-/

namespace A002754.P5992015442027918205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A002754.P5992015442027918205

namespace A002754

/-- `A097137(eq[1, A019425(n)]-1)` -/
def P5992015442027918205.Spec : Prop :=
  ∀ n, P5992015442027918205.a n = A002754 n

end A002754

/-! ## A002754.P407377988658832261

`A097137(eq[A004275(n)², A019425(n)²])`
-/

namespace A002754.P407377988658832261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A002754.P407377988658832261

namespace A002754

/-- `A097137(eq[A004275(n)², A019425(n)²])` -/
def P407377988658832261.Spec : Prop :=
  ∀ n, P407377988658832261.a n = A002754 n

end A002754

/-!
# A002755: Number of bipartite partitions of n white objects and 6 black ones.

The programs for A002755, there is no canonical definition to state claims against.
-/

/-! ## A002755.P327741596412953368

`A031129(n)+1`
-/

namespace A002755.P327741596412953368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031129 n + 1

end

end A002755.P327741596412953368

/-! ## A002755.P13726051215632629902

`1-(A033685(A033685(n))-A031129(n))`
-/

namespace A002755.P13726051215632629902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A033685 (A033685 n).toNat - A031129 n)

end

end A002755.P13726051215632629902

/-! ## A002755.P15637832729398283786

`A054225(A134227(n+5)-1)`
-/

namespace A002755.P15637832729398283786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A134227 (n + 5) - 1).toNat

end

end A002755.P15637832729398283786

/-! ## A002755.P15535591862879877488

`A054225(A000124(n+6)+5)`
-/

namespace A002755.P15535591862879877488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000124 (n + 6) + 5).toNat

end

end A002755.P15535591862879877488

/-! ## A002755.P13053887454294603136

`A054225(A000096(n+5)+7)`
-/

namespace A002755.P13053887454294603136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000096 (n + 5) + 7).toNat

end

end A002755.P13053887454294603136

/-! ## A002755.P5240275973905840857

`A054225(Δ[A023551(n+2)]-1)`
-/

namespace A002755.P5240275973905840857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (f1 (n + 1) - f1 n - 1).toNat

end

end A002755.P5240275973905840857

/-! ## A002755.P5090506674935977793

`A054225(Δ[A026054(n+4)]-1)`
-/

namespace A002755.P5090506674935977793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (f1 (n + 1) - f1 n - 1).toNat

end

end A002755.P5090506674935977793

/-! ## A002755.P4321191883883266025

`A054225(Δ[A023545(n+2)]+10)`
-/

namespace A002755.P4321191883883266025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (f1 (n + 1) - f1 n + 10).toNat

end

end A002755.P4321191883883266025

/-! ## A002755.P7792640868483797875

`A054225(A000217(n+7)-(n+1))`
-/

namespace A002755.P7792640868483797875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000217 (n + 7) - (n + 1 : ℤ)).toNat

end

end A002755.P7792640868483797875

/-! ## A002755.P24602651415766777

`A054225(2*n+A000217(n+5)+6)`
-/

namespace A002755.P24602651415766777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 ((2 * n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A002755.P24602651415766777

/-! ## A002755.P8728194827718533210

`A054225(A005408(n)+A167614(n+4)+2)`
-/

namespace A002755.P8728194827718533210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A005408 n + (A167614 (n + 4) + 2)).toNat

end

end A002755.P8728194827718533210

/-! ## A002755.P828882686852955960

`A054225(A166136(n+5)+1-A008284(∑[n+1]))`
-/

namespace A002755.P828882686852955960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A166136 (n + 5) + 1 - A008284 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A002755.P828882686852955960

/-! ## A002755.P16922880494201664368

`A054225(eq[7, A002260(n+1)])`
-/

namespace A002755.P16922880494201664368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002755.P16922880494201664368

/-! ## A002755.P16652314550907046753

`A054225(eq[7, A004736(n+1)])`
-/

namespace A002755.P16652314550907046753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002755.P16652314550907046753

/-!
# A002756: Number of bipartite partitions of n white objects and 7 black ones.

The programs for A002756, there is no canonical definition to state claims against.
-/

/-! ## A002756.P13258335898710264247

`A031130(n)+1`
-/

namespace A002756.P13258335898710264247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031130 n + 1

end

end A002756.P13258335898710264247

/-! ## A002756.P10314364428292201912

`A054225(A000096(n+6)+8)`
-/

namespace A002756.P10314364428292201912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000096 (n + 6) + 8).toNat

end

end A002756.P10314364428292201912

/-! ## A002756.P763807225887422013

`A054225(A000217(n+8)-8)`
-/

namespace A002756.P763807225887422013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000217 (n + 8) - 8).toNat

end

end A002756.P763807225887422013

/-! ## A002756.P17412593241804966312

`A054225(2*n+A166136(n+5)+1)`
-/

namespace A002756.P17412593241804966312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 ((2 * n : ℤ) + (A166136 (n + 5) + 1)).toNat

end

end A002756.P17412593241804966312

/-! ## A002756.P17683590771116575771

`A054225(2*n+A000124(n+6)+6)`
-/

namespace A002756.P17683590771116575771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 ((2 * n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A002756.P17683590771116575771

/-! ## A002756.P15593529637580428657

`A054225(eq[8, A002260(n+1)])`
-/

namespace A002756.P15593529637580428657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002756.P15593529637580428657

/-! ## A002756.P10570867995542623248

`A054225(eq[7, A002262(n)])`
-/

namespace A002756.P10570867995542623248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002756.P10570867995542623248

/-! ## A002756.P14333215504118270295

`A054225(eq[7, A144328(n+1)])`
-/

namespace A002756.P14333215504118270295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002756.P14333215504118270295

/-! ## A002756.P5207291897687730976

`A054225(eq[7, A025581(n)])`
-/

namespace A002756.P5207291897687730976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002756.P5207291897687730976

/-! ## A002756.P13021123202661639567

`A054225(eq[8, A004736(n+1)])`
-/

namespace A002756.P13021123202661639567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002756.P13021123202661639567

/-!
# A002757: Number of bipartite partitions of n white objects and 8 black ones.

The programs for A002757, there is no canonical definition to state claims against.
-/

/-! ## A002757.P15021623690376368492

`A054225(A155212(n+5)-1)`
-/

namespace A002757.P15021623690376368492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A155212 (n + 5) - 1).toNat

end

end A002757.P15021623690376368492

/-! ## A002757.P12717173214657732357

`A054225(A167487(n+7)+1)`
-/

namespace A002757.P12717173214657732357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A167487 (n + 7) + 1).toNat

end

end A002757.P12717173214657732357

/-! ## A002757.P14875067537937287937

`A054225(A167499(n+7)+3)`
-/

namespace A002757.P14875067537937287937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A167499 (n + 7) + 3).toNat

end

end A002757.P14875067537937287937

/-! ## A002757.P17563868417543359149

`A054225(A000096(n+7)+9)`
-/

namespace A002757.P17563868417543359149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000096 (n + 7) + 9).toNat

end

end A002757.P17563868417543359149

/-! ## A002757.P9510574715721286203

`A054225(A000217(n+9)-9)`
-/

namespace A002757.P9510574715721286203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000217 (n + 9) - 9).toNat

end

end A002757.P9510574715721286203

/-! ## A002757.P10628284642153670971

`A054225(A055999(n+5)+n+6)`
-/

namespace A002757.P10628284642153670971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A055999 (n + 5) + (n + 6 : ℤ)).toNat

end

end A002757.P10628284642153670971

/-! ## A002757.P13893396494106085234

`A054225(A008586(n+5)+A000124(n+5))`
-/

namespace A002757.P13893396494106085234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A008586 (n + 5) + A000124 (n + 5)).toNat

end

end A002757.P13893396494106085234

/-! ## A002757.P10949948405399866856

`A054225(A004273(n+4)+A000124(n+7))`
-/

namespace A002757.P10949948405399866856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A004273 (n + 4) + A000124 (n + 7)).toNat

end

end A002757.P10949948405399866856

/-! ## A002757.P13058483171629456184

`A054225(A046691(n+8)-A004273(n+4))`
-/

namespace A002757.P13058483171629456184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A046691 (n + 8) - A004273 (n + 4)).toNat

end

end A002757.P13058483171629456184

/-! ## A002757.P13667067840517640358

`A054225(A016777(n+9)+A000124(n+5))`
-/

namespace A002757.P13667067840517640358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A016777 (n + 9) + A000124 (n + 5)).toNat

end

end A002757.P13667067840517640358

/-!
# A002758: Number of bipartite partitions of n white objects and 9 black ones.

The programs for A002758, there is no canonical definition to state claims against.
-/

/-! ## A002758.P16060621773174158696

`A054225(A155212(n+6)-2)`
-/

namespace A002758.P16060621773174158696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A155212 (n + 6) - 2).toNat

end

end A002758.P16060621773174158696

/-! ## A002758.P3332980647953667022

`A054225(A167487(n+8)+2)`
-/

namespace A002758.P3332980647953667022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A167487 (n + 8) + 2).toNat

end

end A002758.P3332980647953667022

/-! ## A002758.P11202429091524542614

`A054225(A052905(n+7)-5)`
-/

namespace A002758.P11202429091524542614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A052905 (n + 7) - 5).toNat

end

end A002758.P11202429091524542614

/-! ## A002758.P11826702785918711900

`A054225(A000096(n+8)+10)`
-/

namespace A002758.P11826702785918711900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000096 (n + 8) + 10).toNat

end

end A002758.P11826702785918711900

/-! ## A002758.P8677148820610723965

`A054225(A000217(n+10)-10)`
-/

namespace A002758.P8677148820610723965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000217 (n + 10) - 10).toNat

end

end A002758.P8677148820610723965

/-! ## A002758.P4916701920481497920

`A054225(A055999(n+6)+n+6)`
-/

namespace A002758.P4916701920481497920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A055999 (n + 6) + (n + 6 : ℤ)).toNat

end

end A002758.P4916701920481497920

/-! ## A002758.P8495663645748722076

`A054225(A167499(n+6)+A008585(n+4))`
-/

namespace A002758.P8495663645748722076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A167499 (n + 6) + A008585 (n + 4)).toNat

end

end A002758.P8495663645748722076

/-! ## A002758.P1356474741750985051

`A054225(A005843(n+4)+A000124(n+8))`
-/

namespace A002758.P1356474741750985051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A005843 (n + 4) + A000124 (n + 8)).toNat

end

end A002758.P1356474741750985051

/-! ## A002758.P4648772681012390392

`A054225(A016777(n+5)+A000124(n+7))`
-/

namespace A002758.P4648772681012390392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A016777 (n + 5) + A000124 (n + 7)).toNat

end

end A002758.P4648772681012390392

/-! ## A002758.P16562849679636730846

`A054225(A133263(n+8)+A004273(n+4))`
-/

namespace A002758.P16562849679636730846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A133263 (n + 8) + A004273 (n + 4)).toNat

end

end A002758.P16562849679636730846

/-! ## A002758.P496561874768915262

`A054225(A046691(n+6)+A004273(n+7))`
-/

namespace A002758.P496561874768915262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A046691 (n + 6) + A004273 (n + 7)).toNat

end

end A002758.P496561874768915262

/-! ## A002758.P14524180596536944516

`A054225(A034856(n+10)-A005843(n+5))`
-/

namespace A002758.P14524180596536944516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A034856 (n + 10) - A005843 (n + 5)).toNat

end

end A002758.P14524180596536944516

/-!
# A002759: Number of bipartite partitions of n white objects and 10 black ones.

The programs for A002759, there is no canonical definition to state claims against.
-/

/-! ## A002759.P17592034879589949694

`A054225(A027379(n+8)+13)`
-/

namespace A002759.P17592034879589949694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A027379 (n + 8) + 13).toNat

end

end A002759.P17592034879589949694

/-! ## A002759.P9221671418281272513

`A054225(A000217(n+11)-11)`
-/

namespace A002759.P9221671418281272513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000217 (n + 11) - 11).toNat

end

end A002759.P9221671418281272513

/-! ## A002759.P4433638937544317710

`A054225(A000124(n+11)-12)`
-/

namespace A002759.P4433638937544317710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000124 (n + 11) - 12).toNat

end

end A002759.P4433638937544317710

/-! ## A002759.P8110884411002603616

`A054225(A028552(n+8)-A167499(n+6))`
-/

namespace A002759.P8110884411002603616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A028552 (n + 8) - A167499 (n + 6)).toNat

end

end A002759.P8110884411002603616

/-! ## A002759.P13606808643550568382

`A054225(A052905(n+10)-A008486(n+7))`
-/

namespace A002759.P13606808643550568382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A052905 (n + 10) - A008486 (n + 7)).toNat

end

end A002759.P13606808643550568382

/-!
# A002760: Squares and cubes.

The programs for A002760, the canonical program `A002760.P867290944879031427` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002760 has offset 1).

The definition of A002760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002760.P867290944879031427

`∪[n^3, n²]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002760

/-- `∪[n^3, n²]` -/
def P867290944879031427.Spec : Prop :=
  ∀ n, (P867290944879031427.a n : ℤ) = A002760 (n + 1)

theorem P867290944879031427.correct : P867290944879031427.Spec := by
  intro n
  simp only [A002760, Nat.add_sub_cancel]

end A002760

/-! ## A002760.P4248270235713208730

`∑[A075052(n+1)]-A075052(n+1)`
-/

namespace A002760.P4248270235713208730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A075052 (n + 1)

end

end A002760.P4248270235713208730

namespace A002760

/-- `∑[A075052(n+1)]-A075052(n+1)` -/
def P4248270235713208730.Spec : Prop :=
  ∀ n, P4248270235713208730.a n = A002760 (n + 1)

end A002760

/-! ## A002760.P13835879684214784254

`∪[A000578(n), (n+1)²]%A299288(n)`
-/

namespace A002760.P13835879684214784254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n : ℤ) (A299288 n)

end

end A002760.P13835879684214784254

namespace A002760

/-- `∪[A000578(n), (n+1)²]%A299288(n)` -/
def P13835879684214784254.Spec : Prop :=
  ∀ n, P13835879684214784254.a n = A002760 (n + 1)

end A002760

/-! ## A002760.P15505330275293560374

`record[A125643(n+1)-char[1]]`
-/

namespace A002760.P15505330275293560374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002760.P15505330275293560374

namespace A002760

/-- `record[A125643(n+1)-char[1]]` -/
def P15505330275293560374.Spec : Prop :=
  ∀ n, P15505330275293560374.a n = A002760 (n + 1)

end A002760

/-! ## A002760.P9770091804128538782

`record[A125643(n+1-3%(n+1))]`
-/

namespace A002760.P9770091804128538782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (n + 1 - 3 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002760.P9770091804128538782

namespace A002760

/-- `record[A125643(n+1-3%(n+1))]` -/
def P9770091804128538782.Spec : Prop :=
  ∀ n, P9770091804128538782.a n = A002760 (n + 1)

end A002760

/-! ## A002760.P16955818896390062363

`record[A125643(A262519(n))]`
-/

namespace A002760.P16955818896390062363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (A262519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002760.P16955818896390062363

namespace A002760

/-- `record[A125643(A262519(n))]` -/
def P16955818896390062363.Spec : Prop :=
  ∀ n, P16955818896390062363.a n = A002760 (n + 1)

end A002760

/-! ## A002760.P13799112938354163888

`record[A125643(A027750(n+1))]`
-/

namespace A002760.P13799112938354163888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002760.P13799112938354163888

namespace A002760

/-- `record[A125643(A027750(n+1))]` -/
def P13799112938354163888.Spec : Prop :=
  ∀ n, P13799112938354163888.a n = A002760 (n + 1)

end A002760

/-! ## A002760.P14195576192274739756

`record[A125643(A126760(n+1))]`
-/

namespace A002760.P14195576192274739756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (A126760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002760.P14195576192274739756

namespace A002760

/-- `record[A125643(A126760(n+1))]` -/
def P14195576192274739756.Spec : Prop :=
  ∀ n, P14195576192274739756.a n = A002760 (n + 1)

end A002760

/-! ## A002760.P17619524259766981552

`record[A125643(A328472(n+1))]`
-/

namespace A002760.P17619524259766981552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (A328472 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002760.P17619524259766981552

namespace A002760

/-- `record[A125643(A328472(n+1))]` -/
def P17619524259766981552.Spec : Prop :=
  ∀ n, P17619524259766981552.a n = A002760 (n + 1)

end A002760

/-! ## A002760.P2471712112257010557

`record[A125643(A067022(n+1)%A067022(n+2)+1)]`
-/

namespace A002760.P2471712112257010557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (Int.tmod (A067022 (n + 1)) (A067022 (n + 2)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002760.P2471712112257010557

namespace A002760

/-- `record[A125643(A067022(n+1)%A067022(n+2)+1)]` -/
def P2471712112257010557.Spec : Prop :=
  ∀ n, P2471712112257010557.a n = A002760 (n + 1)

end A002760

/-! ## A002760.P11823589065141541046

`record[A125643(A027751(n+1))]`
-/

namespace A002760.P11823589065141541046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (A027751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002760.P11823589065141541046

namespace A002760

/-- `record[A125643(A027751(n+1))]` -/
def P11823589065141541046.Spec : Prop :=
  ∀ n, P11823589065141541046.a n = A002760 (n + 1)

end A002760

/-! ## A002760.P16839799413491350861

`comp[A094784(n+1)]`
-/

namespace A002760.P16839799413491350861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A002760.P16839799413491350861

namespace A002760

/-- `comp[A094784(n+1)]` -/
def P16839799413491350861.Spec : Prop :=
  ∀ n, (P16839799413491350861.a n : ℤ) = A002760 (n + 1)

end A002760

/-! ## A002760.P11856032654118444963

`eq[A053186(n*A010057(n)), A053186(n)]`
-/

namespace A002760.P11856032654118444963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 ((n : ℤ) * A010057 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002760.P11856032654118444963

namespace A002760

/-- `eq[A053186(n*A010057(n)), A053186(n)]` -/
def P11856032654118444963.Spec : Prop :=
  ∀ n, (P11856032654118444963.a n : ℤ) = A002760 (n + 1)

end A002760

/-! ## A002760.P9308243099510982839

`lt[(2-A000122(n))*char[comp[n^3]], 1]`
-/

namespace A002760.P9308243099510982839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000122 n) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A002760.P9308243099510982839

namespace A002760

/-- `lt[(2-A000122(n))*char[comp[n^3]], 1]` -/
def P9308243099510982839.Spec : Prop :=
  ∀ n, (P9308243099510982839.a n : ℤ) = A002760 (n + 1)

end A002760

/-!
# A002762: Number of bipartite partitions.

The programs for A002762, there is no canonical definition to state claims against.
-/

/-! ## A002762.P3467269337403721369

`A000412(n)+A000097(n)`
-/

namespace A002762.P3467269337403721369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n + A000097 n

end

end A002762.P3467269337403721369

/-! ## A002762.P16933620576203587250

`A000097(n)+A031126(n)+1`
-/

namespace A002762.P16933620576203587250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n + (A031126 n + 1)

end

end A002762.P16933620576203587250

/-! ## A002762.P17405069543370928692

`A000412(n)+∑[∑[A087787(n)]]`
-/

namespace A002762.P17405069543370928692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002762.P17405069543370928692

/-! ## A002762.P11410585022302310909

`A000412(n)+∑[A024786(n+2)]`
-/

namespace A002762.P11410585022302310909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002762.P11410585022302310909

/-! ## A002762.P3591900611122803509

`A000412(n)+record[A299779(n+1)]`
-/

namespace A002762.P3591900611122803509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002762.P3591900611122803509

/-!
# A002763: Number of bipartite partitions.

The programs for A002763, there is no canonical definition to state claims against.
-/

/-! ## A002763.P15661547777532517502

`a(n-1)+A000041(n)+A000070(n)+A000291(n)` with `a(0)=4`
-/

namespace A002763.P15661547777532517502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + A000041 n + A000070 n + A000291 n

end

end A002763.P15661547777532517502

/-! ## A002763.P1563752827491278393

`A082775(n+2)+∑[A000291(n)]`
-/

namespace A002763.P1563752827491278393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082775 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002763.P1563752827491278393

/-! ## A002763.P9814659979276309277

`A000070(n)+∑[A000291(n)+A000070(n)]`
-/

namespace A002763.P9814659979276309277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n + A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002763.P9814659979276309277

/-! ## A002763.P6284812290278657663

`∑[A100835(2*n+1)+A000097(n)]+A000412(n)-A000098(n)`
-/

namespace A002763.P6284812290278657663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100835 (2 * n + 1) + A000097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000412 n - A000098 n)

end

end A002763.P6284812290278657663

/-! ## A002763.P1954242101854765281

`∑[A100835(2*n+1)+A000097(n)]+A025065(2*n)+A014153(n)`
-/

namespace A002763.P1954242101854765281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100835 (2 * n + 1) + A000097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A025065 (2 * n) + A014153 n)

end

end A002763.P1954242101854765281

/-! ## A002763.P2751183298168909087

`∑[A054225(∑[n+3])]+A000412(n)-A000098(n)`
-/

namespace A002763.P2751183298168909087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000412 n - A000098 n)

end

end A002763.P2751183298168909087

/-! ## A002763.P3675690543903750847

`∑[A054225(∑[n+3])]+A025065(2*n)+A014153(n)`
-/

namespace A002763.P3675690543903750847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A025065 (2 * n) + A014153 n)

end

end A002763.P3675690543903750847

/-!
# A002764: Number of bipartite partitions.

The programs for A002764, there is no canonical definition to state claims against.
-/

/-! ## A002764.P2050537074836839731

`A000465(n)+∑[A000291(n)]`
-/

namespace A002764.P2050537074836839731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000465 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002764.P2050537074836839731

/-! ## A002764.P6176674443953546744

`∑[A000291(n)]+A031127(n)+1`
-/

namespace A002764.P6176674443953546744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A031127 n + 1)

end

end A002764.P6176674443953546744

/-! ## A002764.P6533457718744925958

`A054225(∑[n+5]+5)+∑[A000291(n)]`
-/

namespace A002764.P6533457718744925958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j + 5) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A002764.P6533457718744925958

/-! ## A002764.P4286180028117464116

`A054225(∑[n+5]+5)+∑[A031125(n)+1]`
-/

namespace A002764.P4286180028117464116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031125 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j + 5) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A002764.P4286180028117464116

/-! ## A002764.P11345307137605273714

`∑[A031125(n)+1]+n-(A023443(n)-A031127(n))`
-/

namespace A002764.P11345307137605273714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031125 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - (A023443 n - A031127 n))

end

end A002764.P11345307137605273714

/-!
# A002765: Number of bipartite partitions.

The programs for A002765, there is no canonical definition to state claims against.
-/

/-! ## A002765.P4309330608371690516

`A002766(n+1)+∑[A002762(n)]`
-/

namespace A002765.P4309330608371690516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002766 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002765.P4309330608371690516

/-! ## A002765.P521562074838870894

`∑[A002762(n)]+A002767(n)-A000097(n)`
-/

namespace A002765.P521562074838870894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002767 n - A000097 n)

end

end A002765.P521562074838870894

/-! ## A002765.P13665867175985668554

`∑[A002762(n)]+A014153(n)+A031126(n)+1`
-/

namespace A002765.P13665867175985668554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A014153 n + (A031126 n + 1))

end

end A002765.P13665867175985668554

/-!
# A002766: Number of bipartite partitions.

The programs for A002766, there is no canonical definition to state claims against.
-/

/-! ## A002766.P13921691693397994951

`A014153(n)+A000412(n)`
-/

namespace A002766.P13921691693397994951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n + A000412 n

end

end A002766.P13921691693397994951

/-! ## A002766.P10347603837320759294

`A002767(n)-A000097(n)`
-/

namespace A002766.P10347603837320759294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002767 n - A000097 n

end

end A002766.P10347603837320759294

/-! ## A002766.P11627240591405650533

`A000412(n)+∑[A000070(n)]`
-/

namespace A002766.P11627240591405650533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002766.P11627240591405650533

/-! ## A002766.P10555445995389392072

`A014153(n)+A031126(n)+1`
-/

namespace A002766.P10555445995389392072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n + (A031126 n + 1)

end

end A002766.P10555445995389392072

/-! ## A002766.P13334595758850129721

`A000412(n)+∑[∑[A000041(n)]]`
-/

namespace A002766.P13334595758850129721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002766.P13334595758850129721

/-!
# A002767: Number of bipartite partitions.

The programs for A002767, there is no canonical definition to state claims against.
-/

/-! ## A002767.P4435116022897637531

`A014153(n)+A002762(n)`
-/

namespace A002767.P4435116022897637531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n + A002762 n

end

end A002767.P4435116022897637531

/-! ## A002767.P17205536861745409376

`A002762(n)+∑[A000070(n)]`
-/

namespace A002767.P17205536861745409376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002762 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002767.P17205536861745409376

/-! ## A002767.P3704375786800742157

`A002766(n+1)+A000097(n)`
-/

namespace A002767.P3704375786800742157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002766 (n + 1) + A000097 n

end

end A002767.P3704375786800742157

/-! ## A002767.P9078565535458101224

`A002762(n)+∑[∑[A000041(n)]]`
-/

namespace A002767.P9078565535458101224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002762 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002767.P9078565535458101224

/-! ## A002767.P14341539947652101229

`A002762(n)+∑[record[A100824(n)]]`
-/

namespace A002767.P14341539947652101229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002762 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002767.P14341539947652101229

/-!
# A002768: Number of bipartite partitions.

The programs for A002768, there is no canonical definition to state claims against.
-/

/-! ## A002768.P10455447152050187069

`A014153(n)+A002766(n+1)`
-/

namespace A002768.P10455447152050187069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n + A002766 (n + 1)

end

end A002768.P10455447152050187069

/-! ## A002768.P11306069051412347721

`A000412(n)+2*A014153(n)`
-/

namespace A002768.P11306069051412347721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n + 2 * A014153 n

end

end A002768.P11306069051412347721

/-! ## A002768.P11323960104981468043

`A002766(n+1)+∑[A000070(n)]`
-/

namespace A002768.P11323960104981468043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002766 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002768.P11323960104981468043

/-! ## A002768.P17142689873917152932

`A002767(n)+∑[A024786(n+1)]`
-/

namespace A002768.P17142689873917152932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002767 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002768.P17142689873917152932

/-! ## A002768.P11439851313132935229

`A000412(n)+∑[2*A000070(n)]`
-/

namespace A002768.P11439851313132935229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002768.P11439851313132935229

/-!
# A002769: Discriminants of totally real quartic fields (see comments).

The programs for A002769, there is no canonical definition to state claims against.
-/

/-! ## A002769.P6546762070516533892

`record[gcd(A023680(n+1), A251764(n))]`
-/

namespace A002769.P6546762070516533892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023680 (n + 1)) (A251764 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002769.P6546762070516533892

/-! ## A002769.P16153523224564958984

`A023680(∑[A209401(n+1)!])`
-/

namespace A002769.P16153523224564958984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A209401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023680 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002769.P16153523224564958984

/-!
# A002770: Integers connected with coefficients in expansion of Weierstrass P-function.

The programs for A002770, there is no canonical definition to state claims against.
-/

/-! ## A002770.P13829148205740982836

`(A002306(n+2)-A274398(n+2))/A047817(n+2)`
-/

namespace A002770.P13829148205740982836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002306 (n + 2) - A274398 (n + 2) : ℚ) / (A047817 (n + 2) : ℚ)

end

end A002770.P13829148205740982836

/-!
# A002771: Number of terms in a skew determinant: a(n) = (A000085(n) + A081919(n))/2.

The programs for A002771, the canonical program `A002771.P3007338784624499283` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002771 has offset 1).

The definition of A002771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002771.P3007338784624499283

`(A000085(n+1)+A081919(n+1))/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002771

/-- `(A000085(n+1)+A081919(n+1))/2` -/
def P3007338784624499283.Spec : Prop :=
  ∀ n, P3007338784624499283.a n = (A002771 (n + 1) : ℚ)

end A002771

/-! ## A002771.P8341154317021925586

`A243107(∑[A053497(n)])`
-/

namespace A002771.P8341154317021925586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243107 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002771.P8341154317021925586

namespace A002771

/-- `A243107(∑[A053497(n)])` -/
def P8341154317021925586.Spec : Prop :=
  ∀ n, P8341154317021925586.a n = A002771 (n + 1)

end A002771

/-! ## A002771.P17899644882287591800

`A243107(A073789(n+1))`
-/

namespace A002771.P17899644882287591800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243107 (A073789 (n + 1)).toNat

end

end A002771.P17899644882287591800

namespace A002771

/-- `A243107(A073789(n+1))` -/
def P17899644882287591800.Spec : Prop :=
  ∀ n, P17899644882287591800.a n = A002771 (n + 1)

end A002771

/-!
# A002772: Number of terms in a bordered skew determinant.

The programs for A002772, there is no canonical definition to state claims against.
-/

/-! ## A002772.P17665281605957557213

`A241901(A283969(n+1))`
-/

namespace A002772.P17665281605957557213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241901 (A283969 (n + 1)).toNat

end

end A002772.P17665281605957557213

/-!
# A002773: Number of nonisomorphic simple matroids (or geometries) with n points.

The programs for A002773, there is no canonical definition to state claims against.
-/

/-! ## A002773.P11821619551750477708

`A243170(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A002773.P11821619551750477708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n a =>
  A243170 (a (n - 1)).toNat

end

end A002773.P11821619551750477708

/-! ## A002773.P5578259560974042750

`A316296(a(n-1))+n-1` with `a(0)=1, a(1)=1`
-/

namespace A002773.P5578259560974042750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A316296 (a (n - 1)).toNat + ((n : ℤ) - 1)

end

end A002773.P5578259560974042750

/-! ## A002773.P5040635518829207863

`A147680(A024175(n))`
-/

namespace A002773.P5040635518829207863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A024175 n).toNat

end

end A002773.P5040635518829207863

/-! ## A002773.P12782902097414819849

`A147680(A036767(n))`
-/

namespace A002773.P12782902097414819849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A036767 n).toNat

end

end A002773.P12782902097414819849

/-!
# A002774: Number of bipartite partitions of n white objects and n black ones.

The programs for A002774, there is no canonical definition to state claims against.
-/

/-! ## A002774.P2570996276997210912

`A091437(2*n)`
-/

namespace A002774.P2570996276997210912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091437 (2 * n)

end

end A002774.P2570996276997210912

/-! ## A002774.P3074055251659523813

`A331197(n)+A000041(n)`
-/

namespace A002774.P3074055251659523813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331197 n + A000041 n

end

end A002774.P3074055251659523813

/-! ## A002774.P15351341770351050887

`A331197(n)+∑[A002865(n)]`
-/

namespace A002774.P15351341770351050887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331197 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002774.P15351341770351050887

/-! ## A002774.P9671785444789860680

`A331197(n)+A139582(n)/2`
-/

namespace A002774.P9671785444789860680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331197 n : ℚ) + (A139582 n : ℚ) / 2

end

end A002774.P9671785444789860680

/-! ## A002774.P8327277621728923332

`A133041(n)+A331197(n)-n`
-/

namespace A002774.P8327277621728923332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n + (A331197 n - (n : ℤ))

end

end A002774.P8327277621728923332

/-! ## A002774.P14153243815043077447

`A331197(n)+∑[A085811(n+3)]`
-/

namespace A002774.P14153243815043077447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331197 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002774.P14153243815043077447

/-! ## A002774.P15196073998836365952

`A201376(∑[n]+n)`
-/

namespace A002774.P15196073998836365952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201376 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A002774.P15196073998836365952

/-! ## A002774.P9580496852147981093

`A054225(∑[4*n])`
-/

namespace A002774.P9580496852147981093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002774.P9580496852147981093

/-! ## A002774.P11890765751246626049

`A395808(n)+A001255(n)`
-/

namespace A002774.P11890765751246626049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395808 n + A001255 n

end

end A002774.P11890765751246626049

/-! ## A002774.P9985158662850917228

`A395808(n)+A000041(n)²`
-/

namespace A002774.P9985158662850917228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395808 n + A000041 n ^ 2

end

end A002774.P9985158662850917228

/-!
# A002775: a(n) = n^2 * n!.

The programs for A002775, the canonical program `A002775.P5567253749503335915` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002775 has offset 0).

The definition of A002775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*n!` (program `A002775.P5567253749503335915`, by `A002775.P5567253749503335915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002775.P5567253749503335915

`n²*n!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002775

/-- `n²*n!` -/
def P5567253749503335915.Spec : Prop :=
  ∀ n, (P5567253749503335915.a n : ℤ) = A002775 n

theorem P5567253749503335915.correct : P5567253749503335915.Spec := by
  intro n
  simp only [A002775]

end A002775

/-! ## A002775.P4528365274659735615

`n*Δ[n!]`
-/

namespace A002775.P4528365274659735615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A002775.P4528365274659735615

namespace A002775

/-- `n*Δ[n!]` -/
def P4528365274659735615.Spec : Prop :=
  ∀ n, P4528365274659735615.a n = A002775 n

theorem P4528365274659735615.correct : P4528365274659735615.Spec := by
  intro n
  simp only [A002775, Nat.add_sub_cancel, A002775.P4528365274659735615.f1, A002775.P4528365274659735615.a, A002775.P5567253749503335915.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A002775

/-! ## A002775.P2145683870908807839

`n!*n^2`
-/

namespace A002775.P2145683870908807839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * n ^ 2

end

end A002775.P2145683870908807839

namespace A002775

/-- `n!*n^2` -/
def P2145683870908807839.Spec : Prop :=
  ∀ n, (P2145683870908807839.a n : ℤ) = A002775 n

theorem P2145683870908807839.correct : P2145683870908807839.Spec := by
  intro n
  simp only [A002775, Nat.add_sub_cancel, A002775.P2145683870908807839.a, A002775.P5567253749503335915.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002775

/-! ## A002775.P4818571969719644678

`n*n*n!`
-/

namespace A002775.P4818571969719644678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * Nat.factorial n)

end

end A002775.P4818571969719644678

namespace A002775

/-- `n*n*n!` -/
def P4818571969719644678.Spec : Prop :=
  ∀ n, (P4818571969719644678.a n : ℤ) = A002775 n

theorem P4818571969719644678.correct : P4818571969719644678.Spec := by
  intro n
  simp only [A002775, Nat.add_sub_cancel, A002775.P4818571969719644678.a, A002775.P5567253749503335915.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002775

/-! ## A002775.P15211293143582180442

`n²/n!^-1`
-/

namespace A002775.P15211293143582180442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (Nat.factorial n : ℚ) ^ (-1 : ℤ)

end

end A002775.P15211293143582180442

namespace A002775

/-- `n²/n!^-1` -/
def P15211293143582180442.Spec : Prop :=
  ∀ n, P15211293143582180442.a n = (A002775 n : ℚ)

theorem P15211293143582180442.correct : P15211293143582180442.Spec := by
  intro n
  simp only [A002775, Nat.add_sub_cancel, A002775.P15211293143582180442.a, A002775.P5567253749503335915.a, SequenceMachineLib.memo_apply]
  try simp

end A002775

/-! ## A002775.P16562726916038539698

`Δ[Δ[n!]-∑[n!]]`
-/

namespace A002775.P16562726916038539698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002775.P16562726916038539698

namespace A002775

/-- `Δ[Δ[n!]-∑[n!]]` -/
def P16562726916038539698.Spec : Prop :=
  ∀ n, P16562726916038539698.a n = A002775 n

end A002775

/-! ## A002775.P423947465755001457

`Δ[Δ[n!]]-(n+1)!`
-/

namespace A002775.P423947465755001457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.factorial (n + 1) : ℤ)

end

end A002775.P423947465755001457

namespace A002775

/-- `Δ[Δ[n!]]-(n+1)!` -/
def P423947465755001457.Spec : Prop :=
  ∀ n, P423947465755001457.a n = A002775 n

theorem P423947465755001457.correct : P423947465755001457.Spec := by
  intro n
  simp only [A002775, Nat.add_sub_cancel, A002775.P423947465755001457.f2, A002775.P423947465755001457.f1, A002775.P423947465755001457.a, A002775.P5567253749503335915.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A002775

/-! ## A002775.P8195253247222850610

`n*Δ[n*a(n-1)]` with `a(0)=1`
-/

namespace A002775.P8195253247222850610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A002775.P8195253247222850610

namespace A002775

/-- `n*Δ[n*a(n-1)]` -/
def P8195253247222850610.Spec : Prop :=
  ∀ n, P8195253247222850610.a n = A002775 n

end A002775

/-! ## A002775.P2470855058876950135

`n²*∏[gcd(n, ∏[n+1])]`
-/

namespace A002775.P2470855058876950135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002775.P2470855058876950135

namespace A002775

/-- `n²*∏[gcd(n, ∏[n+1])]` -/
def P2470855058876950135.Spec : Prop :=
  ∀ n, (P2470855058876950135.a n : ℤ) = A002775 n

end A002775

/-! ## A002775.P3087209571093655881

`∏[n+1]/(n+1)*n²`
-/

namespace A002775.P3087209571093655881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) * (n ^ 2 : ℚ)

end

end A002775.P3087209571093655881

namespace A002775

/-- `∏[n+1]/(n+1)*n²` -/
def P3087209571093655881.Spec : Prop :=
  ∀ n, P3087209571093655881.a n = (A002775 n : ℚ)

end A002775

/-!
# A002776: Terms in certain determinants.

The programs for A002776, the canonical program `A002776.P10752058519020230104` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002776 has offset 0).

The definition of A002776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002776.P10752058519020230104

`(n^3+n²+2*n+1)*n!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002776

/-- `(n^3+n²+2*n+1)*n!` -/
def P10752058519020230104.Spec : Prop :=
  ∀ n, (P10752058519020230104.a n : ℤ) = A002776 n

theorem P10752058519020230104.correct : P10752058519020230104.Spec := by
  intro n
  simp only [A002776]

end A002776

/-! ## A002776.P6980764677384167762

`(n+3)!-5*(n+2)!+6*(n+1)!-n!`
-/

namespace A002776.P6980764677384167762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℤ) - (5 * Nat.factorial (n + 2) : ℤ) + (6 * Nat.factorial (n + 1) : ℤ) - (Nat.factorial n : ℤ)

end

end A002776.P6980764677384167762

namespace A002776

/-- `(n+3)!-5*(n+2)!+6*(n+1)!-n!` -/
def P6980764677384167762.Spec : Prop :=
  ∀ n, P6980764677384167762.a n = A002776 n

theorem P6980764677384167762.correct : P6980764677384167762.Spec := by
  intro n
  simp only [A002776, Nat.add_sub_cancel, A002776.P6980764677384167762.a, A002776.P10752058519020230104.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A002776

/-! ## A002776.P2454345757305553263

`Δ[(n²+1)*n!]-(n+2)*Δ[n!]`
-/

namespace A002776.P2454345757305553263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) * Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 2 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A002776.P2454345757305553263

namespace A002776

/-- `Δ[(n²+1)*n!]-(n+2)*Δ[n!]` -/
def P2454345757305553263.Spec : Prop :=
  ∀ n, P2454345757305553263.a n = A002776 n

theorem P2454345757305553263.correct : P2454345757305553263.Spec := by
  intro n
  simp only [A002776, Nat.add_sub_cancel, A002776.P2454345757305553263.f1, A002776.P2454345757305553263.f2, A002776.P2454345757305553263.a, A002776.P10752058519020230104.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A002776

/-! ## A002776.P10323884765290199839

`n!*A100705(n)`
-/

namespace A002776.P10323884765290199839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A100705 n

end

end A002776.P10323884765290199839

namespace A002776

/-- `n!*A100705(n)` -/
def P10323884765290199839.Spec : Prop :=
  ∀ n, P10323884765290199839.a n = A002776 n

theorem P10323884765290199839.correct : P10323884765290199839.Spec := by
  intro n
  simp only [A002776, Nat.add_sub_cancel, A002776.P10323884765290199839.a, A002776.P10752058519020230104.a, A100705, A100705.P6779774238995480043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002776

/-! ## A002776.P15462615520171688579

`A047922(A167614(n+2))`
-/

namespace A002776.P15462615520171688579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 (A167614 (n + 2)).toNat

end

end A002776.P15462615520171688579

namespace A002776

/-- `A047922(A167614(n+2))` -/
def P15462615520171688579.Spec : Prop :=
  ∀ n, P15462615520171688579.a n = A002776 n

end A002776

/-! ## A002776.P12976512620221896378

`A047922(A052905(n)+8)`
-/

namespace A002776.P12976512620221896378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 (A052905 n + 8).toNat

end

end A002776.P12976512620221896378

namespace A002776

/-- `A047922(A052905(n)+8)` -/
def P12976512620221896378.Spec : Prop :=
  ∀ n, P12976512620221896378.a n = A002776 n

end A002776

/-! ## A002776.P16386842212438943523

`A047922(A055999(n)+9)`
-/

namespace A002776.P16386842212438943523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 (A055999 n + 9).toNat

end

end A002776.P16386842212438943523

namespace A002776

/-- `A047922(A055999(n)+9)` -/
def P16386842212438943523.Spec : Prop :=
  ∀ n, P16386842212438943523.a n = A002776 n

end A002776

/-! ## A002776.P9103434638539868034

`A000142(n)*A100705(n)`
-/

namespace A002776.P9103434638539868034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A100705 n

end

end A002776.P9103434638539868034

namespace A002776

/-- `A000142(n)*A100705(n)` -/
def P9103434638539868034.Spec : Prop :=
  ∀ n, P9103434638539868034.a n = A002776 n

theorem P9103434638539868034.correct : P9103434638539868034.Spec := by
  intro n
  simp only [A002776, Nat.add_sub_cancel, A002776.P9103434638539868034.a, A002776.P10752058519020230104.a, A000142, A000142.P3272619076580183195.a, A100705, A100705.P6779774238995480043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002776

/-! ## A002776.P4036617113710597087

`A091363(n)+A001563(n+1)`
-/

namespace A002776.P4036617113710597087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091363 n + A001563 (n + 1)

end

end A002776.P4036617113710597087

namespace A002776

/-- `A091363(n)+A001563(n+1)` -/
def P4036617113710597087.Spec : Prop :=
  ∀ n, P4036617113710597087.a n = A002776 n

end A002776

/-! ## A002776.P8830881278934789766

`A001563(n+1)+n²*A001563(n)`
-/

namespace A002776.P8830881278934789766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (n + 1) + (n ^ 2 : ℤ) * A001563 n

end

end A002776.P8830881278934789766

namespace A002776

/-- `A001563(n+1)+n²*A001563(n)` -/
def P8830881278934789766.Spec : Prop :=
  ∀ n, P8830881278934789766.a n = A002776 n

end A002776

/-!
# A002778: Numbers whose square is a palindrome.

The programs for A002778, there is no canonical definition to state claims against.
-/

/-! ## A002778.P5355686803278648106

`sqrt(A002779(n+1))`
-/

namespace A002778.P5355686803278648106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002779 (n + 1) : ℝ)

end

end A002778.P5355686803278648106

/-! ## A002778.P631993146505218491

`A002779(n+1)^(A000124(n)/A014206(n))`
-/

namespace A002778.P631993146505218491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002779 (n + 1) : ℝ) ^ ((A000124 n : ℚ) / (A014206 n : ℚ) : ℝ)

end

end A002778.P631993146505218491

/-! ## A002778.P18288002721084061800

`A002779(n+1)^(char[A303787(n)]/2)`
-/

namespace A002778.P18288002721084061800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002779 (n + 1) : ℝ) ^ (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / 2 : ℝ)

end

end A002778.P18288002721084061800

/-! ## A002778.P13189344118602029630

`A002779(n+1)^(A011782(n)/A000079(n))`
-/

namespace A002778.P13189344118602029630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002779 (n + 1) : ℝ) ^ ((A011782 n : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A002778.P13189344118602029630

/-! ## A002778.P13846130095031329593

`∪[A057135(n+1), A251673(n+1)]`
-/

namespace A002778.P13846130095031329593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002778.P13846130095031329593

/-! ## A002778.P9919176964555222857

`∪[A028816(n+1), A059744(n+1)]`
-/

namespace A002778.P9919176964555222857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002778.P9919176964555222857

/-! ## A002778.P1255493222327560082

`∪[A028816(n+1), A251673(n+1)]`
-/

namespace A002778.P1255493222327560082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002778.P1255493222327560082

/-!
# A002779: Palindromic squares.

The programs for A002779, there is no canonical definition to state claims against.
-/

/-! ## A002779.P17991718834070707742

`A002778(n+1)²`
-/

namespace A002779.P17991718834070707742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1) ^ 2

end

end A002779.P17991718834070707742

/-! ## A002779.P3704923798051141925

`A002778(∑[n+1]-∑[n])^2`
-/

namespace A002779.P3704923798051141925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A002779.P3704923798051141925

/-! ## A002779.P10031414357727475555

`(A002778(n+1)*A309873(n+1))^2`
-/

namespace A002779.P10031414357727475555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002778 (n + 1) * A309873 (n + 1)) ^ 2

end

end A002779.P10031414357727475555

/-! ## A002779.P8234407670540266016

`A002778(n+1)*A002778(n%(n+1)+1)`
-/

namespace A002779.P8234407670540266016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1) * A002778 (n % (n + 1) + 1)

end

end A002779.P8234407670540266016

/-! ## A002779.P3613200344101990110

`A002778(A000027(n+1))*A002778(n+1)`
-/

namespace A002779.P3613200344101990110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (A000027 (n + 1)).toNat * A002778 (n + 1)

end

end A002779.P3613200344101990110

/-!
# A002780: Numbers whose cube is a palindrome.

The programs for A002780, there is no canonical definition to state claims against.
-/

/-! ## A002780.P11973972459458595179

`A002781(n+1)^(1/3)`
-/

namespace A002780.P11973972459458595179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002781 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A002780.P11973972459458595179

/-! ## A002780.P1191793968830157124

`eq[A033431(n), A319603(n)]`
-/

namespace A002780.P1191793968830157124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002780.P1191793968830157124

/-! ## A002780.P4286761510725809566

`eq[2*A000578(n), A319603(n)]`
-/

namespace A002780.P4286761510725809566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002780.P4286761510725809566

/-! ## A002780.P6309856570746364956

`A004178(A069748(n+1))`
-/

namespace A002780.P6309856570746364956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A069748 (n + 1)).toNat

end

end A002780.P6309856570746364956

/-!
# A002781: Palindromic cubes.

The programs for A002781, there is no canonical definition to state claims against.
-/

/-! ## A002781.P7299789733448973414

`A002780(n+1)^3`
-/

namespace A002781.P7299789733448973414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (n + 1) ^ 3

end

end A002781.P7299789733448973414

/-! ## A002781.P5567112951591565554

`record[A002780(A133310(n))^3]`
-/

namespace A002781.P5567112951591565554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (A133310 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002781.P5567112951591565554

/-! ## A002781.P7838198087065443247

`A002780(2*n+1-n)²*A002780(n+1)`
-/

namespace A002781.P7838198087065443247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (2 * n + 1 - n) ^ 2 * A002780 (n + 1)

end

end A002781.P7838198087065443247

/-! ## A002781.P3657685478416978271

`A002780(n+1)*A124625(2*(n+1))*A002780(n+1)²`
-/

namespace A002781.P3657685478416978271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (n + 1) * A124625 (2 * (n + 1)) * A002780 (n + 1) ^ 2

end

end A002781.P3657685478416978271

/-! ## A002781.P2686311585429291352

`A000578(A002780(n+1))`
-/

namespace A002781.P2686311585429291352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A002780 (n + 1)).toNat

end

end A002781.P2686311585429291352

/-!
# A002783: a(n) = 2*(3^n - 2^n) + 1.

The programs for A002783, the canonical program `A002783.P13135652513880479999` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002783 has offset 0).

The definition of A002783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(3^n-2^n)+1` (program `A002783.P13135652513880479999`, by `A002783.P13135652513880479999.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002783.P13135652513880479999

`2*(3^n-2^n)+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002783

/-- `2*(3^n-2^n)+1` -/
def P13135652513880479999.Spec : Prop :=
  ∀ n, P13135652513880479999.a n = A002783 n

theorem P13135652513880479999.correct : P13135652513880479999.Spec := by
  intro n
  simp only [A002783]

end A002783

/-! ## A002783.P4496161565338088950

`∑[ogf((1-3x+4x^2)/(1-5x+6x^2))]`
-/

namespace A002783.P4496161565338088950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002783.P4496161565338088950

namespace A002783

/-- `∑[ogf((1-3x+4x^2)/(1-5x+6x^2))]` -/
def P4496161565338088950.Spec : Prop :=
  ∀ n, P4496161565338088950.a n = A002783 n

end A002783

/-! ## A002783.P14186956121754054405

`or(1, 2*(3^n-2^n))`
-/

namespace A002783.P14186956121754054405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)))

end

end A002783.P14186956121754054405

namespace A002783

/-- `or(1, 2*(3^n-2^n))` -/
def P14186956121754054405.Spec : Prop :=
  ∀ n, P14186956121754054405.a n = A002783 n

end A002783

/-! ## A002783.P11347914648699356543

`xor(1, 2*(3^n-2^n))`
-/

namespace A002783.P11347914648699356543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)))

end

end A002783.P11347914648699356543

namespace A002783

/-- `xor(1, 2*(3^n-2^n))` -/
def P11347914648699356543.Spec : Prop :=
  ∀ n, P11347914648699356543.a n = A002783 n

end A002783

/-! ## A002783.P14238277458470637622

`gcd(2*3^n-∑[2^n], floor(acot(n)))`
-/

namespace A002783.P14238277458470637622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * 3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A002783.P14238277458470637622

namespace A002783

/-- `gcd(2*3^n-∑[2^n], floor(acot(n)))` -/
def P14238277458470637622.Spec : Prop :=
  ∀ n, (P14238277458470637622.a n : ℤ) = A002783 n

end A002783

/-! ## A002783.P12569780631650257199

`∑[lcm(3, a(n-1))+2^(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A002783.P12569780631650257199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (Int.lcm 3 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002783.P12569780631650257199

namespace A002783

/-- `∑[lcm(3, a(n-1))+2^(n-1)]` -/
def P12569780631650257199.Spec : Prop :=
  ∀ n, P12569780631650257199.a n = (A002783 n : ℚ)

end A002783

/-! ## A002783.P11315589549259090783

`Δ[A101052(n)+n]`
-/

namespace A002783.P11315589549259090783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002783.P11315589549259090783

namespace A002783

/-- `Δ[A101052(n)+n]` -/
def P11315589549259090783.Spec : Prop :=
  ∀ n, P11315589549259090783.a n = A002783 n

theorem P11315589549259090783.correct : P11315589549259090783.Spec := by
  intro n
  simp only [A002783, Nat.add_sub_cancel, A002783.P11315589549259090783.f1, A002783.P11315589549259090783.a, A002783.P13135652513880479999.a, A101052, A101052.P18135241430881834357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002783

/-! ## A002783.P3725228299231790576

`floor(A169650(n+1)/2)`
-/

namespace A002783.P3725228299231790576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A169650 (n + 1) : ℚ) / 2⌋

end

end A002783.P3725228299231790576

namespace A002783

/-- `floor(A169650(n+1)/2)` -/
def P3725228299231790576.Spec : Prop :=
  ∀ n, P3725228299231790576.a n = A002783 n

end A002783

/-! ## A002783.P8697392115357052535

`Δ[∑[A304973(2*n)]+n]`
-/

namespace A002783.P8697392115357052535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002783.P8697392115357052535

namespace A002783

/-- `Δ[∑[A304973(2*n)]+n]` -/
def P8697392115357052535.Spec : Prop :=
  ∀ n, P8697392115357052535.a n = A002783 n

end A002783

/-! ## A002783.P8105993309669121400

`∑[A003946(n)-A155559(n)]`
-/

namespace A002783.P8105993309669121400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A155559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002783.P8105993309669121400

namespace A002783

/-- `∑[A003946(n)-A155559(n)]` -/
def P8105993309669121400.Spec : Prop :=
  ∀ n, P8105993309669121400.a n = A002783 n

end A002783

/-! ## A002783.P16147931639941889247

`Δ[A001047(n)-A000295(n)]`
-/

namespace A002783.P16147931639941889247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002783.P16147931639941889247

namespace A002783

/-- `Δ[A001047(n)-A000295(n)]` -/
def P16147931639941889247.Spec : Prop :=
  ∀ n, P16147931639941889247.a n = A002783 n

theorem P16147931639941889247.correct : P16147931639941889247.Spec := by
  intro n
  simp only [A002783, Nat.add_sub_cancel, A002783.P16147931639941889247.f1, A002783.P16147931639941889247.a, A002783.P13135652513880479999.a, A000295, A000295.P9955939544913215267.a, A001047, A001047.P13659031121335709313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002783

/-! ## A002783.P4974608720818425617

`A198643(n)%A171270(n+1)`
-/

namespace A002783.P4974608720818425617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198643 n) (A171270 (n + 1))

end

end A002783.P4974608720818425617

namespace A002783

/-- `A198643(n)%A171270(n+1)` -/
def P4974608720818425617.Spec : Prop :=
  ∀ n, P4974608720818425617.a n = A002783 n

end A002783

/-! ## A002783.P5929106988751255318

`(A091344(n+1)+2)/3`
-/

namespace A002783.P5929106988751255318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091344 (n + 1) + 2 : ℚ) / 3

end

end A002783.P5929106988751255318

namespace A002783

/-- `(A091344(n+1)+2)/3` -/
def P5929106988751255318.Spec : Prop :=
  ∀ n, P5929106988751255318.a n = (A002783 n : ℚ)

theorem P5929106988751255318.correct : P5929106988751255318.Spec := by
  intro n
  simp only [A002783, Nat.add_sub_cancel, A002783.P5929106988751255318.a, A002783.P13135652513880479999.a, A091344, A091344.P9314832849917747821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002783

/-! ## A002783.P11101726140018908485

`(Δ[A027649(n)]-A033484(n))/2`
-/

namespace A002783.P11101726140018908485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A033484 n : ℚ) / 2

end

end A002783.P11101726140018908485

namespace A002783

/-- `(Δ[A027649(n)]-A033484(n))/2` -/
def P11101726140018908485.Spec : Prop :=
  ∀ n, P11101726140018908485.a n = (A002783 n : ℚ)

theorem P11101726140018908485.correct : P11101726140018908485.Spec := by
  intro n
  simp only [A002783, Nat.add_sub_cancel, A002783.P11101726140018908485.f1, A002783.P11101726140018908485.a, A002783.P13135652513880479999.a, A027649, A027649.P2434933350896167885.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002783

/-! ## A002783.P3359997039381774893

`record[2*A140303(n)-A130330(n)]`
-/

namespace A002783.P3359997039381774893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140303 n - A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002783.P3359997039381774893

namespace A002783

/-- `record[2*A140303(n)-A130330(n)]` -/
def P3359997039381774893.Spec : Prop :=
  ∀ n, P3359997039381774893.a n = A002783 n

end A002783

/-! ## A002783.P16243897273430452370

`record[2*A175840(n)-A130330(n)]`
-/

namespace A002783.P16243897273430452370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175840 n - A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002783.P16243897273430452370

namespace A002783

/-- `record[2*A175840(n)-A130330(n)]` -/
def P16243897273430452370.Spec : Prop :=
  ∀ n, P16243897273430452370.a n = A002783 n

end A002783

/-!
# A002784: A problem in parity.

The programs for A002784, there is no canonical definition to state claims against.
-/

/-! ## A002784.P17173543507817718524

`A303536(C(A000959(n+1), (n+1)/∏{p}[n+1, #]))`
-/

namespace A002784.P17173543507817718524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (Nat.choose (A000959 (n + 1)).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A002784.P17173543507817718524

/-! ## A002784.P3217213011507476391

`gcd(A005836(n+3), A317085(A000930(n)))`
-/

namespace A002784.P3217213011507476391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005836 (n + 3)) (A317085 (A000930 n).toNat)

end

end A002784.P3217213011507476391

/-! ## A002784.P2188561512571738190

`gcd(A070579(A236728(n+1)), A075355(n+1))`
-/

namespace A002784.P2188561512571738190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070579 (A236728 (n + 1)).toNat) (A075355 (n + 1))

end

end A002784.P2188561512571738190

/-! ## A002784.P15191161328356506080

`gcd(A213008(n+2), A274522(A309999(n+1)))`
-/

namespace A002784.P15191161328356506080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213008 (n + 2)) (A274522 (A309999 (n + 1)).toNat)

end

end A002784.P15191161328356506080

/-! ## A002784.P7821513405722166514

`gcd(A183312(3*n+1), A296658(A370980(n)))`
-/

namespace A002784.P7821513405722166514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183312 (3 * n + 1)) (A296658 (A370980 n).toNat)

end

end A002784.P7821513405722166514

/-!
# A002785: Number of self-complementary oriented graphs with n nodes.

The programs for A002785, there is no canonical definition to state claims against.
-/

/-! ## A002785.P13633618739128937250

`A160162(A086826(n)+A057427(n))`
-/

namespace A002785.P13633618739128937250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 (A086826 n + A057427 n).toNat

end

end A002785.P13633618739128937250

/-! ## A002785.P13659066469984869377

`A160162(A136400(n)+A086826(n))`
-/

namespace A002785.P13659066469984869377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 (A136400 n + A086826 n).toNat

end

end A002785.P13659066469984869377

/-! ## A002785.P5980321365212875503

`A160162(A086826(n)-A057428(n))`
-/

namespace A002785.P5980321365212875503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 (A086826 n - A057428 n).toNat

end

end A002785.P5980321365212875503

/-! ## A002785.P2662971206578629565

`A160162(A086826(n)+A057428(n)²)`
-/

namespace A002785.P2662971206578629565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 (A086826 n + A057428 n ^ 2).toNat

end

end A002785.P2662971206578629565

/-!
# A002786: Semigroups of order n with 1 idempotent, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A002786, there is no canonical definition to state claims against.
-/

/-! ## A002786.P3693037308817501238

`A058123(∑[n]+1)`
-/

namespace A002786.P3693037308817501238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002786.P3693037308817501238

/-! ## A002786.P10469857465810567801

`record[A058123(∑[A051801(n)])]`
-/

namespace A002786.P10469857465810567801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002786.P10469857465810567801

/-! ## A002786.P9129217684356548971

`record[gcd(A058123(n+1), A062110(n))]`
-/

namespace A002786.P9129217684356548971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058123 (n + 1)) (A062110 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002786.P9129217684356548971

/-! ## A002786.P15448230014183920421

`record[A058123(n+1)/A002260(n+1)]`
-/

namespace A002786.P15448230014183920421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058123 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002786.P15448230014183920421

/-! ## A002786.P12811877455050178818

`record[A058123(n+1)/A058127(n+1)]`
-/

namespace A002786.P12811877455050178818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058123 (n + 1) : ℚ) / (A058127 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002786.P12811877455050178818

/-!
# A002787: Number of semigroups of order n with 2 idempotents, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A002787, there is no canonical definition to state claims against.
-/

/-! ## A002787.P8756199382897964800

`A058123(∑[n+1]+2)`
-/

namespace A002787.P8756199382897964800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A002787.P8756199382897964800

/-! ## A002787.P2638448494338158307

`record[A058123(n+3)*A107727(n)]`
-/

namespace A002787.P2638448494338158307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (n + 3) * A107727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002787.P2638448494338158307

/-! ## A002787.P6638184013997108314

`record[gcd(A058123(n+2), A229001(n))]`
-/

namespace A002787.P6638184013997108314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058123 (n + 2)) (A229001 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002787.P6638184013997108314

/-!
# A002788: Idempotent semigroups of order n, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A002788, there is no canonical definition to state claims against.
-/

/-! ## A002788.P8026315300879274830

`A058123(A028310(∑[n]))`
-/

namespace A002788.P8026315300879274830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A002788.P8026315300879274830

/-! ## A002788.P11441573493886604192

`A058123(A179865(n+1))`
-/

namespace A002788.P11441573493886604192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (A179865 (n + 1)).toNat

end

end A002788.P11441573493886604192

/-! ## A002788.P14686035275021414670

`A058123(A057428(n)+A000124(n))`
-/

namespace A002788.P14686035275021414670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (A057428 n + A000124 n).toNat

end

end A002788.P14686035275021414670

/-! ## A002788.P14650584260274773481

`A058123(A000217(A088155(n)+n))`
-/

namespace A002788.P14650584260274773481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (A000217 (A088155 n + (n : ℤ)).toNat).toNat

end

end A002788.P14650584260274773481

/-! ## A002788.P12385311472954827168

`A058123(A000217(A151934(n)+n))`
-/

namespace A002788.P12385311472954827168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (A000217 (A151934 n + (n : ℤ)).toNat).toNat

end

end A002788.P12385311472954827168

/-!
# A002789: Number of integer points in a certain quadrilateral scaled by a factor of n.

The programs for A002789, the canonical program `A002789.P4916109399875461213` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002789 has offset 1).

The definition of A002789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002789.P4916109399875461213

`floor(A168668(n+2)/12)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002789

/-- `floor(A168668(n+2)/12)` -/
def P4916109399875461213.Spec : Prop :=
  ∀ n, P4916109399875461213.a n = A002789 (n + 1)

theorem P4916109399875461213.correct : P4916109399875461213.Spec := by
  intro n
  simp only [A002789, Nat.add_sub_cancel]

end A002789

/-! ## A002789.P5995571363175858140

`∑[ceil(∑[gcd(3, n)/2])]`
-/

namespace A002789.P5995571363175858140
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002789.P5995571363175858140

namespace A002789

/-- `∑[ceil(∑[gcd(3, n)/2])]` -/
def P5995571363175858140.Spec : Prop :=
  ∀ n, P5995571363175858140.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P750125752406212277

`∑[∑[(2*xor(1, n²))%3]]`
-/

namespace A002789.P750125752406212277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 (n ^ 2) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002789.P750125752406212277

namespace A002789

/-- `∑[∑[(2*xor(1, n²))%3]]` -/
def P750125752406212277.Spec : Prop :=
  ∀ n, (P750125752406212277.a n : ℤ) = A002789 (n + 1)

end A002789

/-! ## A002789.P16974489143828483660

`∑[∑[2-xor(3, n²)%3]]`
-/

namespace A002789.P16974489143828483660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.xor 3 (n ^ 2) % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002789.P16974489143828483660

namespace A002789

/-- `∑[∑[2-xor(3, n²)%3]]` -/
def P16974489143828483660.Spec : Prop :=
  ∀ n, P16974489143828483660.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P16524667015930274138

`∑[∑[∑[xor(1, n)+1]%3]]`
-/

namespace A002789.P16524667015930274138
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002789.P16524667015930274138

namespace A002789

/-- `∑[∑[∑[xor(1, n)+1]%3]]` -/
def P16524667015930274138.Spec : Prop :=
  ∀ n, (P16524667015930274138.a n : ℤ) = A002789 (n + 1)

end A002789

/-! ## A002789.P13898138597473757770

`∑[ceil(xor(1, 5*n)/6)+1]`
-/

namespace A002789.P13898138597473757770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (5 * n) : ℚ) / 6⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002789.P13898138597473757770

namespace A002789

/-- `∑[ceil(xor(1, 5*n)/6)+1]` -/
def P13898138597473757770.Spec : Prop :=
  ∀ n, P13898138597473757770.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P10037593795151814919

`∑[Δ[ceil(5/12*n²)]+1]`
-/

namespace A002789.P10037593795151814919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 : ℚ) / 12 * (n ^ 2 : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002789.P10037593795151814919

namespace A002789

/-- `∑[Δ[ceil(5/12*n²)]+1]` -/
def P10037593795151814919.Spec : Prop :=
  ∀ n, P10037593795151814919.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P615510342912847950

`∑[a(n-2)+5]-(a(n-1)+a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A002789.P615510342912847950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A002789.P615510342912847950

namespace A002789

/-- `∑[a(n-2)+5]-(a(n-1)+a(n-2))` -/
def P615510342912847950.Spec : Prop :=
  ∀ n, P615510342912847950.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P4395349284028274753

`∑[A049625(n)-n]+n`
-/

namespace A002789.P4395349284028274753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049625 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A002789.P4395349284028274753

namespace A002789

/-- `∑[A049625(n)-n]+n` -/
def P4395349284028274753.Spec : Prop :=
  ∀ n, P4395349284028274753.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P1012192787636898449

`2*∑[A242774(n+1)/2]`
-/

namespace A002789.P1012192787636898449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242774 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002789.P1012192787636898449

namespace A002789

/-- `2*∑[A242774(n+1)/2]` -/
def P1012192787636898449.Spec : Prop :=
  ∀ n, P1012192787636898449.a n = (A002789 (n + 1) : ℚ)

end A002789

/-! ## A002789.P8066591036803993945

`∑[A063208(n+1)]+1+n`
-/

namespace A002789.P8066591036803993945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A002789.P8066591036803993945

namespace A002789

/-- `∑[A063208(n+1)]+1+n` -/
def P8066591036803993945.Spec : Prop :=
  ∀ n, P8066591036803993945.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P16502849443086917013

`∑[n+1]+1-A211540(n)`
-/

namespace A002789.P16502849443086917013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A211540 n

end

end A002789.P16502849443086917013

namespace A002789

/-- `∑[n+1]+1-A211540(n)` -/
def P16502849443086917013.Spec : Prop :=
  ∀ n, P16502849443086917013.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P14712200531047928409

`A242771(n+1)+2*(n+1)`
-/

namespace A002789.P14712200531047928409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242771 (n + 1) + (2 * (n + 1) : ℤ)

end

end A002789.P14712200531047928409

namespace A002789

/-- `A242771(n+1)+2*(n+1)` -/
def P14712200531047928409.Spec : Prop :=
  ∀ n, P14712200531047928409.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P11607214944895001791

`a(n-1)+A010761(n)+2` with `a(0)=2`
-/

namespace A002789.P11607214944895001791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A010761 n + 2)

end

end A002789.P11607214944895001791

namespace A002789

/-- `a(n-1)+A010761(n)+2` -/
def P11607214944895001791.Spec : Prop :=
  ∀ n, P11607214944895001791.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P3881092718204432226

`A089108(n+1)+A078126(n)`
-/

namespace A002789.P3881092718204432226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089108 (n + 1) + A078126 n

end

end A002789.P3881092718204432226

namespace A002789

/-- `A089108(n+1)+A078126(n)` -/
def P3881092718204432226.Spec : Prop :=
  ∀ n, P3881092718204432226.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P12560832586419016499

`A143975(n+1)+A036410(n)`
-/

namespace A002789.P12560832586419016499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143975 (n + 1) + A036410 n

end

end A002789.P12560832586419016499

namespace A002789

/-- `A143975(n+1)+A036410(n)` -/
def P12560832586419016499.Spec : Prop :=
  ∀ n, P12560832586419016499.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P517503648062439552

`A211004(n+1)+A087811(n+1)`
-/

namespace A002789.P517503648062439552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (n + 1) + A087811 (n + 1)

end

end A002789.P517503648062439552

namespace A002789

/-- `A211004(n+1)+A087811(n+1)` -/
def P517503648062439552.Spec : Prop :=
  ∀ n, P517503648062439552.a n = A002789 (n + 1)

end A002789

/-! ## A002789.P17461842111861041809

`A211519(n+1)+A186498(n+1)`
-/

namespace A002789.P17461842111861041809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211519 (n + 1) + A186498 (n + 1)

end

end A002789.P17461842111861041809

namespace A002789

/-- `A211519(n+1)+A186498(n+1)` -/
def P17461842111861041809.Spec : Prop :=
  ∀ n, P17461842111861041809.a n = A002789 (n + 1)

end A002789

/-!
# A002790: Denominators of Cauchy numbers of second type (= Bernoulli numbers B_n^{(n)}).

The programs for A002790, there is no canonical definition to state claims against.
-/

/-! ## A002790.P15142729388465905022

`A164020(n)*A165299(n)`
-/

namespace A002790.P15142729388465905022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 n * A165299 n

end

end A002790.P15142729388465905022

/-! ## A002790.P18431310676525333190

`A141056(n)*A152271(n)*A165299(n)`
-/

namespace A002790.P18431310676525333190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n * A152271 n * A165299 n

end

end A002790.P18431310676525333190

/-! ## A002790.P3228820055661817077

`(A176289(n)+n*A000035(n))*A165299(n)`
-/

namespace A002790.P3228820055661817077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176289 n + (n : ℤ) * A000035 n) * A165299 n

end

end A002790.P3228820055661817077

/-! ## A002790.P7517667284175032185

`(A176289(n)+Δ[A004526(n)²])*A165299(n)`
-/

namespace A002790.P7517667284175032185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176289 n + (f1 (n + 1) - f1 n)) * A165299 n

end

end A002790.P7517667284175032185

/-! ## A002790.P4582575044098902221

`(A027642(n)+n*A027642(n)%2)*A165299(n)`
-/

namespace A002790.P4582575044098902221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027642 n + (n : ℤ) * Int.tmod (A027642 n) 2) * A165299 n

end

end A002790.P4582575044098902221

/-! ## A002790.P16194834765209798238

`gcd(n+1, A004526(n+1))*A141056(n)*A165299(n)`
-/

namespace A002790.P16194834765209798238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A004526 (n + 1)) : ℤ) * A141056 n * A165299 n

end

end A002790.P16194834765209798238

/-! ## A002790.P7720964622681015840

`A141056(n)*A165299(n)*A003602(A266303(n))`
-/

namespace A002790.P7720964622681015840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n * A165299 n * A003602 (A266303 n).toNat

end

end A002790.P7720964622681015840

/-! ## A002790.P17210945815352625936

`(A064680(n)+A176289(n)-A026741(n))*A165299(n)`
-/

namespace A002790.P17210945815352625936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064680 n + (A176289 n - A026741 n)) * A165299 n

end

end A002790.P17210945815352625936

/-! ## A002790.P669136154880228311

`A007318(A134519(n+1))*A141056(n)*A165299(n)`
-/

namespace A002790.P669136154880228311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A134519 (n + 1)).toNat * A141056 n * A165299 n

end

end A002790.P669136154880228311

/-! ## A002790.P3648298148929347581

`A051715(A266259(n))*A165299(n)`
-/

namespace A002790.P3648298148929347581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (A266259 n).toNat * A165299 n

end

end A002790.P3648298148929347581

/-! ## A002790.P15786103944021538608

`A051715(A266304(n))*A165299(n)`
-/

namespace A002790.P15786103944021538608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (A266304 n).toNat * A165299 n

end

end A002790.P15786103944021538608

/-!
# A002791: a(n) = Sum_{d|n, d <= 4} d^2 + 4*Sum_{d|n, d>4} d.

The programs for A002791, the canonical program `A002791.P2171648699354099435` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002791 has offset 1).

The definition of A002791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002791.P2171648699354099435

`∑{d}[n+1, #*A158411(#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002791

/-- `∑{d}[n+1, #*A158411(#)]` -/
def P2171648699354099435.Spec : Prop :=
  ∀ n, P2171648699354099435.a n = A002791 (n + 1)

theorem P2171648699354099435.correct : P2171648699354099435.Spec := by
  intro n
  simp only [A002791, Nat.add_sub_cancel]

end A002791

/-! ## A002791.P1141530827198719445

`∑{d}[n+1, A257637(A004277(#))]`
-/

namespace A002791.P1141530827198719445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A257637 (A004277 d).toNat

end

end A002791.P1141530827198719445

namespace A002791

/-- `∑{d}[n+1, A257637(A004277(#))]` -/
def P1141530827198719445.Spec : Prop :=
  ∀ n, P1141530827198719445.a n = A002791 (n + 1)

end A002791

/-! ## A002791.P789811845113693889

`∑{d}[n+1, A257637(A005843(#))]`
-/

namespace A002791.P789811845113693889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A257637 (A005843 d).toNat

end

end A002791.P789811845113693889

namespace A002791

/-- `∑{d}[n+1, A257637(A005843(#))]` -/
def P789811845113693889.Spec : Prop :=
  ∀ n, P789811845113693889.a n = A002791 (n + 1)

end A002791

/-! ## A002791.P10105674592439133814

`∑{d}[n+1, #*A171572(#)%5]`
-/

namespace A002791.P10105674592439133814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A171572 d) 5

end

end A002791.P10105674592439133814

namespace A002791

/-- `∑{d}[n+1, #*A171572(#)%5]` -/
def P10105674592439133814.Spec : Prop :=
  ∀ n, P10105674592439133814.a n = A002791 (n + 1)

end A002791

/-! ## A002791.P3210739354138539173

`A242640(∑[∑[A105597(n)]])`
-/

namespace A002791.P3210739354138539173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002791.P3210739354138539173

namespace A002791

/-- `A242640(∑[∑[A105597(n)]])` -/
def P3210739354138539173.Spec : Prop :=
  ∀ n, P3210739354138539173.a n = A002791 (n + 1)

end A002791

/-!
# A002793: a(n) = 2n*a(n-1) - (n-1)^2*a(n-2).

The programs for A002793, the canonical program `A002793.P12720943548033172460` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002793 has offset 0).

The definition of A002793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*a(n-1)-(n-1)²*a(n-2)` (program `A002793.P12720943548033172460`, by `A002793.P12720943548033172460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002793.P12720943548033172460

`2*n*a(n-1)-(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002793

/-- `2*n*a(n-1)-(n-1)²*a(n-2)` -/
def P12720943548033172460.Spec : Prop :=
  ∀ n, P12720943548033172460.a n = A002793 n

theorem P12720943548033172460.correct : P12720943548033172460.Spec := by
  intro n
  simp only [A002793]

end A002793

/-! ## A002793.P7225542527066107045

`A056952(2*n)`
-/

namespace A002793.P7225542527066107045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 (2 * n)

end

end A002793.P7225542527066107045

namespace A002793

/-- `A056952(2*n)` -/
def P7225542527066107045.Spec : Prop :=
  ∀ n, P7225542527066107045.a n = A002793 n

end A002793

/-! ## A002793.P16634672400881463919

`record[A056952(and(n, n+1))]`
-/

namespace A002793.P16634672400881463919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002793.P16634672400881463919

namespace A002793

/-- `record[A056952(and(n, n+1))]` -/
def P16634672400881463919.Spec : Prop :=
  ∀ n, P16634672400881463919.a n = A002793 n

end A002793

/-! ## A002793.P5941500100079343999

`record[A056952(A056944(n))]`
-/

namespace A002793.P5941500100079343999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 (A056944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002793.P5941500100079343999

namespace A002793

/-- `record[A056952(A056944(n))]` -/
def P5941500100079343999.Spec : Prop :=
  ∀ n, P5941500100079343999.a n = A002793 n

end A002793

/-! ## A002793.P14864234542704610441

`record[A056952(A029579(n)-1)]`
-/

namespace A002793.P14864234542704610441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 (A029579 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002793.P14864234542704610441

namespace A002793

/-- `record[A056952(A029579(n)-1)]` -/
def P14864234542704610441.Spec : Prop :=
  ∀ n, P14864234542704610441.a n = A002793 n

end A002793

/-! ## A002793.P9130050142791438806

`A002720(n)-A005189(n+1)`
-/

namespace A002793.P9130050142791438806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - A005189 (n + 1)

end

end A002793.P9130050142791438806

namespace A002793

/-- `A002720(n)-A005189(n+1)` -/
def P9130050142791438806.Spec : Prop :=
  ∀ n, P9130050142791438806.a n = A002793 n

end A002793

/-!
# A002794: Numerators of convergents to Lehmer's constant.

The programs for A002794, there is no canonical definition to state claims against.
-/

/-! ## A002794.P2265150567240529995

`ceil(Δ[A174143(n+1)]/A096407(n+2))`
-/

namespace A002794.P2265150567240529995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A096407 (n + 2) : ℚ)⌉

end

end A002794.P2265150567240529995

/-!
# A002796: Numbers that are divisible by each nonzero digit.

The programs for A002796, there is no canonical definition to state claims against.
-/

/-! ## A002796.P4978239683024557073

`∪[A034838(n+1), A342855(n+1)]`
-/

namespace A002796.P4978239683024557073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002796.P4978239683024557073

/-! ## A002796.P16678930769326399205

`∪[A055471(n+1), A342445(n+1)]`
-/

namespace A002796.P16678930769326399205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002796.P16678930769326399205

/-! ## A002796.P14517641439574454749

`lt[n*A347323(n), n]`
-/

namespace A002796.P14517641439574454749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A347323 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002796.P14517641439574454749

/-! ## A002796.P4016231328557538246

`lt[A347323(n+1), 1]+1`
-/

namespace A002796.P4016231328557538246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A002796.P4016231328557538246

/-! ## A002796.P14267560965493587842

`eq[A000038(n), A347323(n)]`
-/

namespace A002796.P14267560965493587842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002796.P14267560965493587842

/-! ## A002796.P11949215020915441596

`A132378(eq[n+1, A132378(n+1)]+1)`
-/

namespace A002796.P11949215020915441596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A002796.P11949215020915441596

/-! ## A002796.P9300145392754948876

`A132378(record[2*n+1-A132378(n+1)]+1)`
-/

namespace A002796.P9300145392754948876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A132378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132378 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A002796.P9300145392754948876

/-! ## A002796.P7882445094377108453

`A132378(record[n^((n+1)/A132378(n+1))]+1)`
-/

namespace A002796.P7882445094377108453
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((n + 1 : ℚ) / (A132378 (n + 1) : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132378 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A002796.P7882445094377108453

/-! ## A002796.P12723203299780560291

`eq[1, A347323(n)+A178334(A178334(n))]`
-/

namespace A002796.P12723203299780560291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A178334 (A178334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002796.P12723203299780560291

/-! ## A002796.P16728689701233040690

`eq[A000007(n), A347323(n)]`
-/

namespace A002796.P16728689701233040690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002796.P16728689701233040690

/-! ## A002796.P6078524675913500927

`eq[1, A347323(n)+A001222(A008578(n+1))]`
-/

namespace A002796.P6078524675913500927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A001222 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002796.P6078524675913500927

/-!
# A002797: Number of solutions to a linear inequality.

The programs for A002797, there is no canonical definition to state claims against.
-/

/-! ## A002797.P13393720311422713319

`A101741(A000124(n))-A052905(n)`
-/

namespace A002797.P13393720311422713319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101741 (A000124 n).toNat - A052905 n

end

end A002797.P13393720311422713319

/-!
# A002798: a(n) = a(n-1) + a(n-2) - a(n-3), starting with 18, 45, and 69.

The programs for A002798, the canonical program `A002798.P9443300686064846984` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002798 has offset 1).

The definition of A002798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-3)` (program `A002798.P9443300686064846984`, by `A002798.P9443300686064846984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002798.P8193748093006783843

`2*a(n-2)-a(n-4)` with `a(0)=18, a(1)=45, a(2)=69, a(3)=96`
-/

namespace A002798.P8193748093006783843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18, 45, 69, 96] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A002798.P8193748093006783843

namespace A002798

/-- `2*a(n-2)-a(n-4)` -/
def P8193748093006783843.Spec : Prop :=
  ∀ n, P8193748093006783843.a n = A002798 (n + 1)

end A002798

/-! ## A002798.P9443300686064846984

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=18, a(1)=45, a(2)=69`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002798

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P9443300686064846984.Spec : Prop :=
  ∀ n, P9443300686064846984.a n = A002798 (n + 1)

theorem P9443300686064846984.correct : P9443300686064846984.Spec := by
  intro n
  simp only [A002798, Nat.add_sub_cancel]

end A002798

/-! ## A002798.P4079669476519844252

`(51*(n+1)-12)/2-3*(1-(-1)^(n+1))/4`
-/

namespace A002798.P4079669476519844252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((51 * (n + 1) : ℤ) - 12 : ℚ) / 2 - (3 * (1 - (-1) ^ (n + 1)) : ℚ) / 4

end

end A002798.P4079669476519844252

namespace A002798

/-- `(51*(n+1)-12)/2-3*(1-(-1)^(n+1))/4` -/
def P4079669476519844252.Spec : Prop :=
  ∀ n, P4079669476519844252.a n = (A002798 (n + 1) : ℚ)

theorem P4079669476519844252.correct : P4079669476519844252.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A002798, Nat.add_sub_cancel, A002798.P4079669476519844252.a, A002798.P9443300686064846984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A002798, Nat.add_sub_cancel, A002798.P4079669476519844252.a, A002798.P9443300686064846984.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002798

/-! ## A002798.P8262434749224664830

`∑[abs(a(n-2))]` with `a(0)=18, a(1)=27, a(2)=24`
-/

namespace A002798.P8262434749224664830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 27, 24] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002798.P8262434749224664830

namespace A002798

/-- `∑[abs(a(n-2))]` -/
def P8262434749224664830.Spec : Prop :=
  ∀ n, (P8262434749224664830.a n : ℤ) = A002798 (n + 1)

end A002798

/-! ## A002798.P9025194258113498084

`∑[floor(a(n-2))]` with `a(0)=18, a(1)=27, a(2)=24`

`floor` is left out, it is the identity on integers.
-/

namespace A002798.P9025194258113498084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 27, 24] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002798.P9025194258113498084

namespace A002798

/-- `∑[floor(a(n-2))]` -/
def P9025194258113498084.Spec : Prop :=
  ∀ n, (P9025194258113498084.a n : ℤ) = A002798 (n + 1)

end A002798

/-! ## A002798.P244032522313991290

`∑[ceil(a(n-2))]` with `a(0)=18, a(1)=27, a(2)=24`

`ceil` is left out, it is the identity on integers.
-/

namespace A002798.P244032522313991290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 27, 24] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002798.P244032522313991290

namespace A002798

/-- `∑[ceil(a(n-2))]` -/
def P244032522313991290.Spec : Prop :=
  ∀ n, (P244032522313991290.a n : ℤ) = A002798 (n + 1)

end A002798

/-! ## A002798.P9972307495582081894

`∑[round(a(n-2))]` with `a(0)=18, a(1)=27, a(2)=24`

`round` is left out, it is the identity on integers.
-/

namespace A002798.P9972307495582081894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 27, 24] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002798.P9972307495582081894

namespace A002798

/-- `∑[round(a(n-2))]` -/
def P9972307495582081894.Spec : Prop :=
  ∀ n, (P9972307495582081894.a n : ℤ) = A002798 (n + 1)

end A002798

/-! ## A002798.P3635712276903653238

`9*∑[8/a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A002798.P3635712276903653238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  8 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002798.P3635712276903653238

namespace A002798

/-- `9*∑[8/a(n-1)]` -/
def P3635712276903653238.Spec : Prop :=
  ∀ n, P3635712276903653238.a n = (A002798 (n + 1) : ℚ)

end A002798

/-! ## A002798.P7038071412301117875

`3*(∑[∑[ogf((4+9x+4x^2)/(1+x))]]+2)`
-/

namespace A002798.P7038071412301117875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A002798.P7038071412301117875

namespace A002798

/-- `3*(∑[∑[ogf((4+9x+4x^2)/(1+x))]]+2)` -/
def P7038071412301117875.Spec : Prop :=
  ∀ n, P7038071412301117875.a n = A002798 (n + 1)

end A002798

/-! ## A002798.P10817055748964938311

`3*(A155095(n+1)+2)`
-/

namespace A002798.P10817055748964938311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A155095 (n + 1) + 2)

end

end A002798.P10817055748964938311

namespace A002798

/-- `3*(A155095(n+1)+2)` -/
def P10817055748964938311.Spec : Prop :=
  ∀ n, P10817055748964938311.a n = A002798 (n + 1)

end A002798

/-! ## A002798.P11076204496337187528

`3*(A016969(n)+ceil(A016873(n)/2))`
-/

namespace A002798.P11076204496337187528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A016969 n + ⌈(A016873 n : ℚ) / 2⌉)

end

end A002798.P11076204496337187528

namespace A002798

/-- `3*(A016969(n)+ceil(A016873(n)/2))` -/
def P11076204496337187528.Spec : Prop :=
  ∀ n, P11076204496337187528.a n = A002798 (n + 1)

end A002798

/-! ## A002798.P7947514991809168014

`3*A299637(Δ[n²])`
-/

namespace A002798.P7947514991809168014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A299637 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002798.P7947514991809168014

namespace A002798

/-- `3*A299637(Δ[n²])` -/
def P7947514991809168014.Spec : Prop :=
  ∀ n, P7947514991809168014.a n = A002798 (n + 1)

end A002798

/-! ## A002798.P6615186031039829060

`A008585(A299405(2*n+1)+1)`
-/

namespace A002798.P6615186031039829060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A299405 (2 * n + 1) + 1).toNat

end

end A002798.P6615186031039829060

namespace A002798

/-- `A008585(A299405(2*n+1)+1)` -/
def P6615186031039829060.Spec : Prop :=
  ∀ n, P6615186031039829060.a n = A002798 (n + 1)

end A002798

/-!
# A002799: Number of 4-line partitions of n (i.e., planar partitions of n with at most 4 lines).

The programs for A002799, there is no canonical definition to state claims against.
-/

/-! ## A002799.P626406714301022541

`A242641(∑[n+4]+3)`
-/

namespace A002799.P626406714301022541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A002799.P626406714301022541

/-! ## A002799.P4725073764881856055

`gcd(n, n+1)*A242641(A046691(n+2)+1)`
-/

namespace A002799.P4725073764881856055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A242641 (A046691 (n + 2) + 1).toNat

end

end A002799.P4725073764881856055

/-! ## A002799.P11771927993008272925

`A242641(A027379(n+2))%A000051(n)`
-/

namespace A002799.P11771927993008272925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242641 (A027379 (n + 2)).toNat) (A000051 n)

end

end A002799.P11771927993008272925

/-! ## A002799.P8279152792042162396

`lcm(A020985(n), A242641(A046691(n+2)+1))`
-/

namespace A002799.P8279152792042162396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A242641 (A046691 (n + 2) + 1).toNat)

end

end A002799.P8279152792042162396

/-! ## A002799.P11503063689764634799

`and(A126646(n), A242641(A046691(n+2)+1))`
-/

namespace A002799.P11503063689764634799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A242641 (A046691 (n + 2) + 1).toNat)

end

end A002799.P11503063689764634799

/-! ## A002799.P11845413264978734232

`or(A000007(n), A242641(A046691(n+2)+1))`
-/

namespace A002799.P11845413264978734232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A242641 (A046691 (n + 2) + 1).toNat)

end

end A002799.P11845413264978734232

/-! ## A002799.P9868434526629371236

`A242641(A046691(n+2)+1)%A235304(n+1)`
-/

namespace A002799.P9868434526629371236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242641 (A046691 (n + 2) + 1).toNat) (A235304 (n + 1))

end

end A002799.P9868434526629371236

/-! ## A002799.P17887804527271917193

`A242641(eq[2, A054123(n)])%A000051(n)`
-/

namespace A002799.P17887804527271917193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A000051 n)

end

end A002799.P17887804527271917193

