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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A164300: a(n) = ((1+4*sqrt(2))*(4+sqrt(2))^n + (1-4*sqrt(2))*(4-sqrt(2))^n)/2.

The programs for A164300, the canonical program `A164300.P7751636204174072935` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164300 has offset 0).

The definition of A164300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((1+4*sqrt(2))*(4+sqrt(2))^n+(1-4*sqrt(2))*(4-sqrt(2))^n)/2` (program `A164300.P16163676417624107190`, by `A164300.P16163676417624107190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164300.P7751636204174072935

`8*a(n-1)-14*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164300

/-- `8*a(n-1)-14*a(n-2)` -/
def P7751636204174072935.Spec : Prop :=
  ∀ n, P7751636204174072935.a n = A164300 n

theorem P7751636204174072935.correct : P7751636204174072935.Spec := by
  intro n
  simp only [A164300]

end A164300

/-! ## A164300.P16163676417624107190

`((1+4*sqrt(2))*(4+sqrt(2))^n+(1-4*sqrt(2))*(4-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164300.P16163676417624107190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 4 * Real.sqrt (2 : ℝ)) * (4 + Real.sqrt (2 : ℝ)) ^ n + (1 - 4 * Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164300.P16163676417624107190

namespace A164300

/-- `((1+4*sqrt(2))*(4+sqrt(2))^n+(1-4*sqrt(2))*(4-sqrt(2))^n)/2` -/
def P16163676417624107190.Spec : Prop :=
  ∀ n, P16163676417624107190.a n = (A164300 n : ℝ)

theorem P16163676417624107190.correct : P16163676417624107190.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164300, Nat.add_sub_cancel, A164300.P16163676417624107190.a, A164300.P7751636204174072935.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164300, Nat.add_sub_cancel, A164300.P16163676417624107190.a, A164300.P7751636204174072935.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164300

/-! ## A164300.P11790749279635184915

`A083879(n)+8*A081180(n)`
-/

namespace A164300.P11790749279635184915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083879 n + 8 * A081180 n

end

end A164300.P11790749279635184915

namespace A164300

/-- `A083879(n)+8*A081180(n)` -/
def P11790749279635184915.Spec : Prop :=
  ∀ n, P11790749279635184915.a n = A164300 n

end A164300

/-! ## A164300.P2625167927168332736

`ogf((1+4x)/(1-8x+14x^2))`
-/

namespace A164300.P2625167927168332736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -8, 14] n

end

end A164300.P2625167927168332736

namespace A164300

/-- `ogf((1+4x)/(1-8x+14x^2))` -/
def P2625167927168332736.Spec : Prop :=
  ∀ n, P2625167927168332736.a n = A164300 n

end A164300

/-! ## A164300.P16561288884782653055

`A164072(n)+5*A081180(n)`
-/

namespace A164300.P16561288884782653055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 n + 5 * A081180 n

end

end A164300.P16561288884782653055

namespace A164300

/-- `A164072(n)+5*A081180(n)` -/
def P16561288884782653055.Spec : Prop :=
  ∀ n, P16561288884782653055.a n = A164300 n

end A164300

/-! ## A164300.P10228560478336568619

`4*A164072(n)-A163604(n)`
-/

namespace A164300.P10228560478336568619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A164072 n - A163604 n

end

end A164300.P10228560478336568619

namespace A164300

/-- `4*A164072(n)-A163604(n)` -/
def P10228560478336568619.Spec : Prop :=
  ∀ n, P10228560478336568619.a n = A164300 n

end A164300

/-! ## A164300.P3597999244842327779

`A163350(n)+6*A081180(n)`
-/

namespace A164300.P3597999244842327779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n + 6 * A081180 n

end

end A164300.P3597999244842327779

namespace A164300

/-- `A163350(n)+6*A081180(n)` -/
def P3597999244842327779.Spec : Prop :=
  ∀ n, P3597999244842327779.a n = A164300 n

end A164300

/-!
# A164301: a(n) = ((1+4*sqrt(2))*(5+sqrt(2))^n + (1-4*sqrt(2))*(5-sqrt(2))^n)/2.

The programs for A164301, the canonical program `A164301.P14528475033559917562` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164301 has offset 0).

The definition of A164301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((1+4*sqrt(2))*(5+sqrt(2))^n+(1-4*sqrt(2))*(5-sqrt(2))^n)/2` (program `A164301.P8266467928517010870`, by `A164301.P8266467928517010870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164301.P14528475033559917562

`10*a(n-1)-23*a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164301

/-- `10*a(n-1)-23*a(n-2)` -/
def P14528475033559917562.Spec : Prop :=
  ∀ n, P14528475033559917562.a n = A164301 n

theorem P14528475033559917562.correct : P14528475033559917562.Spec := by
  intro n
  simp only [A164301]

end A164301

/-! ## A164301.P18028775679587871321

`A083880(n)+8*A081182(n)`
-/

namespace A164301.P18028775679587871321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083880 n + 8 * A081182 n

end

end A164301.P18028775679587871321

namespace A164301

/-- `A083880(n)+8*A081182(n)` -/
def P18028775679587871321.Spec : Prop :=
  ∀ n, P18028775679587871321.a n = A164301 n

end A164301

/-! ## A164301.P8266467928517010870

`((1+4*sqrt(2))*(5+sqrt(2))^n+(1-4*sqrt(2))*(5-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164301.P8266467928517010870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 4 * Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (1 - 4 * Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164301.P8266467928517010870

namespace A164301

/-- `((1+4*sqrt(2))*(5+sqrt(2))^n+(1-4*sqrt(2))*(5-sqrt(2))^n)/2` -/
def P8266467928517010870.Spec : Prop :=
  ∀ n, P8266467928517010870.a n = (A164301 n : ℝ)

theorem P8266467928517010870.correct : P8266467928517010870.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164301, Nat.add_sub_cancel, A164301.P8266467928517010870.a, A164301.P14528475033559917562.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164301, Nat.add_sub_cancel, A164301.P8266467928517010870.a, A164301.P14528475033559917562.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164301

/-! ## A164301.P15850088451880008512

`ogf((1+3x)/(1-10x+23x^2))`
-/

namespace A164301.P15850088451880008512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -10, 23] n

end

end A164301.P15850088451880008512

namespace A164301

/-- `ogf((1+3x)/(1-10x+23x^2))` -/
def P15850088451880008512.Spec : Prop :=
  ∀ n, P15850088451880008512.a n = A164301 n

end A164301

/-! ## A164301.P14091767027323478455

`A163616(n)+2*A081182(n)`
-/

namespace A164301.P14091767027323478455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163616 n + 2 * A081182 n

end

end A164301.P14091767027323478455

namespace A164301

/-- `A163616(n)+2*A081182(n)` -/
def P14091767027323478455.Spec : Prop :=
  ∀ n, P14091767027323478455.a n = A164301 n

end A164301

/-! ## A164301.P14092542532074234944

`A164031(n)+5*A081182(n)`
-/

namespace A164301.P14092542532074234944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164031 n + 5 * A081182 n

end

end A164301.P14092542532074234944

namespace A164301

/-- `A164031(n)+5*A081182(n)` -/
def P14092542532074234944.Spec : Prop :=
  ∀ n, P14092542532074234944.a n = A164301 n

end A164301

/-! ## A164301.P11201985564015576012

`A163346(n)+6*A081182(n)`
-/

namespace A164301.P11201985564015576012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n + 6 * A081182 n

end

end A164301.P11201985564015576012

namespace A164301

/-- `A163346(n)+6*A081182(n)` -/
def P11201985564015576012.Spec : Prop :=
  ∀ n, P11201985564015576012.a n = A164301 n

end A164301

/-! ## A164301.P8582858379826121308

`A161734(n)+7*A081182(n)`
-/

namespace A164301.P8582858379826121308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161734 n + 7 * A081182 n

end

end A164301.P8582858379826121308

namespace A164301

/-- `A161734(n)+7*A081182(n)` -/
def P8582858379826121308.Spec : Prop :=
  ∀ n, P8582858379826121308.a n = A164301 n

end A164301

/-! ## A164301.P15669620476093221012

`A081182(n+1)+3*A081182(n)`
-/

namespace A164301.P15669620476093221012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 (n + 1) + 3 * A081182 n

end

end A164301.P15669620476093221012

namespace A164301

/-- `A081182(n+1)+3*A081182(n)` -/
def P15669620476093221012.Spec : Prop :=
  ∀ n, P15669620476093221012.a n = A164301 n

end A164301

/-! ## A164301.P3739167775763945476

`A081182(n+1)+A081182(n+1)-A163346(n)`
-/

namespace A164301.P3739167775763945476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 (n + 1) + (A081182 (n + 1) - A163346 n)

end

end A164301.P3739167775763945476

namespace A164301

/-- `A081182(n+1)+A081182(n+1)-A163346(n)` -/
def P3739167775763945476.Spec : Prop :=
  ∀ n, P3739167775763945476.a n = A164301 n

end A164301

/-!
# A164302: a(n) = 2* (the n-th positive (odd) integer that is a palindrome when written in base 2).

The programs for A164302, the canonical program `A164302.P9116122680190835188` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164302 has offset 1).

The definition of A164302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164302.P9116122680190835188

`∑[2*A164126(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A164302

/-- `∑[2*A164126(n+1)]` -/
def P9116122680190835188.Spec : Prop :=
  ∀ n, P9116122680190835188.a n = A164302 (n + 1)

theorem P9116122680190835188.correct : P9116122680190835188.Spec := by
  intro n
  simp only [A164302, Nat.add_sub_cancel]

end A164302

/-! ## A164302.P14356393459788320169

`4*A044051(n+1)-2`
-/

namespace A164302.P14356393459788320169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A044051 (n + 1) - 2

end

end A164302.P14356393459788320169

namespace A164302

/-- `4*A044051(n+1)-2` -/
def P14356393459788320169.Spec : Prop :=
  ∀ n, P14356393459788320169.a n = A164302 (n + 1)

end A164302

/-! ## A164302.P16469872461366100853

`2*(A164126(n+1)+A006995(n+1))`
-/

namespace A164302.P16469872461366100853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A164126 (n + 1) + A006995 (n + 1))

end

end A164302.P16469872461366100853

namespace A164302

/-- `2*(A164126(n+1)+A006995(n+1))` -/
def P16469872461366100853.Spec : Prop :=
  ∀ n, P16469872461366100853.a n = A164302 (n + 1)

end A164302

/-! ## A164302.P17550673037400924693

`2*A162843(n+1)/A162844(n+1)`
-/

namespace A164302.P17550673037400924693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A162843 (n + 1) : ℚ) / (A162844 (n + 1) : ℚ))

end

end A164302.P17550673037400924693

namespace A164302

/-- `2*A162843(n+1)/A162844(n+1)` -/
def P17550673037400924693.Spec : Prop :=
  ∀ n, P17550673037400924693.a n = (A164302 (n + 1) : ℚ)

end A164302

/-! ## A164302.P11860503227194285184

`2*A006995(n+2)`
-/

namespace A164302.P11860503227194285184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006995 (n + 2)

end

end A164302.P11860503227194285184

namespace A164302

/-- `2*A006995(n+2)` -/
def P11860503227194285184.Spec : Prop :=
  ∀ n, P11860503227194285184.a n = A164302 (n + 1)

end A164302

/-! ## A164302.P12207728169055953758

`Δ[2*A206920(n+1)]`
-/

namespace A164302.P12207728169055953758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164302.P12207728169055953758

namespace A164302

/-- `Δ[2*A206920(n+1)]` -/
def P12207728169055953758.Spec : Prop :=
  ∀ n, P12207728169055953758.a n = A164302 (n + 1)

end A164302

/-! ## A164302.P9990403818816208270

`A006995(A000027(n+2))+A006995(n+2)`
-/

namespace A164302.P9990403818816208270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A000027 (n + 2)).toNat + A006995 (n + 2)

end

end A164302.P9990403818816208270

namespace A164302

/-- `A006995(A000027(n+2))+A006995(n+2)` -/
def P9990403818816208270.Spec : Prop :=
  ∀ n, P9990403818816208270.a n = A164302 (n + 1)

end A164302

/-! ## A164302.P8608803492879714731

`A006995(n+1)+A164126(n+1)+A006995(n+2)`
-/

namespace A164302.P8608803492879714731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1) + (A164126 (n + 1) + A006995 (n + 2))

end

end A164302.P8608803492879714731

namespace A164302

/-- `A006995(n+1)+A164126(n+1)+A006995(n+2)` -/
def P8608803492879714731.Spec : Prop :=
  ∀ n, P8608803492879714731.a n = A164302 (n + 1)

end A164302

/-! ## A164302.P114917539821957735

`A000007(n+1)+A006995(n+2)+A006995(n+2)`
-/

namespace A164302.P114917539821957735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A006995 (n + 2) + A006995 (n + 2))

end

end A164302.P114917539821957735

namespace A164302

/-- `A000007(n+1)+A006995(n+2)+A006995(n+2)` -/
def P114917539821957735.Spec : Prop :=
  ∀ n, P114917539821957735.a n = A164302 (n + 1)

end A164302

/-! ## A164302.P11129086035182650953

`A006995(n+2)+A206920(n+2)-A206920(n+1)`
-/

namespace A164302.P11129086035182650953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2) + (A206920 (n + 2) - A206920 (n + 1))

end

end A164302.P11129086035182650953

namespace A164302

/-- `A006995(n+2)+A206920(n+2)-A206920(n+1)` -/
def P11129086035182650953.Spec : Prop :=
  ∀ n, P11129086035182650953.a n = A164302 (n + 1)

end A164302

/-! ## A164302.P14630404091653587746

`A006995(n+2)+A162843(n+1)/A162844(n+1)`
-/

namespace A164302.P14630404091653587746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006995 (n + 2) : ℚ) + (A162843 (n + 1) : ℚ) / (A162844 (n + 1) : ℚ)

end

end A164302.P14630404091653587746

namespace A164302

/-- `A006995(n+2)+A162843(n+1)/A162844(n+1)` -/
def P14630404091653587746.Spec : Prop :=
  ∀ n, P14630404091653587746.a n = (A164302 (n + 1) : ℚ)

end A164302

/-! ## A164302.P13169628476357023807

`∩[A272670(n+1), A281379(n+1)]`
-/

namespace A164302.P13169628476357023807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164302.P13169628476357023807

namespace A164302

/-- `∩[A272670(n+1), A281379(n+1)]` -/
def P13169628476357023807.Spec : Prop :=
  ∀ n, (P13169628476357023807.a n : ℤ) = A164302 (n + 1)

end A164302

/-! ## A164302.P13140005489205467508

`A006995(n+2)+A192775(n+2)/A006995(n+2)`
-/

namespace A164302.P13140005489205467508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006995 (n + 2) : ℚ) + (A192775 (n + 2) : ℚ) / (A006995 (n + 2) : ℚ)

end

end A164302.P13140005489205467508

namespace A164302

/-- `A006995(n+2)+A192775(n+2)/A006995(n+2)` -/
def P13140005489205467508.Spec : Prop :=
  ∀ n, P13140005489205467508.a n = (A164302 (n + 1) : ℚ)

end A164302

/-! ## A164302.P3441440392547357017

`∩[A050425(n+1), A057890(n+1)]`
-/

namespace A164302.P3441440392547357017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164302.P3441440392547357017

namespace A164302

/-- `∩[A050425(n+1), A057890(n+1)]` -/
def P3441440392547357017.Spec : Prop :=
  ∀ n, (P3441440392547357017.a n : ℤ) = A164302 (n + 1)

end A164302

/-! ## A164302.P7819228259976750762

`∩[A050425(n+1), A161604(n+1)]`
-/

namespace A164302.P7819228259976750762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164302.P7819228259976750762

namespace A164302

/-- `∩[A050425(n+1), A161604(n+1)]` -/
def P7819228259976750762.Spec : Prop :=
  ∀ n, (P7819228259976750762.a n : ℤ) = A164302 (n + 1)

end A164302

/-! ## A164302.P4213754445565702523

`∩[A050425(n+1), A264964(n+1)]`
-/

namespace A164302.P4213754445565702523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164302.P4213754445565702523

namespace A164302

/-- `∩[A050425(n+1), A264964(n+1)]` -/
def P4213754445565702523.Spec : Prop :=
  ∀ n, (P4213754445565702523.a n : ℤ) = A164302 (n + 1)

end A164302

/-! ## A164302.P4147966142952073315

`∩[A050425(n+1), A272670(n+1)]`
-/

namespace A164302.P4147966142952073315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164302.P4147966142952073315

namespace A164302

/-- `∩[A050425(n+1), A272670(n+1)]` -/
def P4147966142952073315.Spec : Prop :=
  ∀ n, (P4147966142952073315.a n : ℤ) = A164302 (n + 1)

end A164302

/-! ## A164302.P2874409034329197967

`∩[A050420(n+1), A264964(n+1)]`
-/

namespace A164302.P2874409034329197967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164302.P2874409034329197967

namespace A164302

/-- `∩[A050420(n+1), A264964(n+1)]` -/
def P2874409034329197967.Spec : Prop :=
  ∀ n, (P2874409034329197967.a n : ℤ) = A164302 (n + 1)

end A164302

/-! ## A164302.P3557494170202321073

`2*eq[1, A303536(n)]`
-/

namespace A164302.P3557494170202321073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164302.P3557494170202321073

namespace A164302

/-- `2*eq[1, A303536(n)]` -/
def P3557494170202321073.Spec : Prop :=
  ∀ n, (P3557494170202321073.a n : ℤ) = A164302 (n + 1)

end A164302

/-! ## A164302.P16080730800430594240

`2*eq[1, A303534(n+1)]`
-/

namespace A164302.P16080730800430594240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164302.P16080730800430594240

namespace A164302

/-- `2*eq[1, A303534(n+1)]` -/
def P16080730800430594240.Spec : Prop :=
  ∀ n, (P16080730800430594240.a n : ℤ) = A164302 (n + 1)

end A164302

/-!
# A164303: a(n) = 2*a(n-1) + a(n-2) for n > 1; a(0) = 3, a(1) = 11.

The programs for A164303, the canonical program `A164303.P14007755109808434757` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164303 has offset 0).

The definition of A164303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A164303.P14007755109808434757`, by `A164303.P14007755109808434757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164303.P14007755109808434757

`2*a(n-1)+a(n-2)` with `a(0)=3, a(1)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164303

/-- `2*a(n-1)+a(n-2)` -/
def P14007755109808434757.Spec : Prop :=
  ∀ n, (P14007755109808434757.a n : ℤ) = A164303 n

theorem P14007755109808434757.correct : P14007755109808434757.Spec := by
  intro n
  simp only [A164303]

end A164303

/-! ## A164303.P15674964576347862706

`ogf((3+5x)/(1-2x-x^2))`
-/

namespace A164303.P15674964576347862706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5] [1, -2, -1] n

end

end A164303.P15674964576347862706

namespace A164303

/-- `ogf((3+5x)/(1-2x-x^2))` -/
def P15674964576347862706.Spec : Prop :=
  ∀ n, P15674964576347862706.a n = A164303 n

end A164303

/-! ## A164303.P3291922499387579167

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=3, a(1)=11`
-/

namespace A164303.P3291922499387579167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 11] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A164303.P3291922499387579167

namespace A164303

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P3291922499387579167.Spec : Prop :=
  ∀ n, (P3291922499387579167.a n : ℤ) = A164303 n

theorem P3291922499387579167.correct : P3291922499387579167.Spec := by
  intro n
  simp only [A164303, Nat.add_sub_cancel, A164303.P3291922499387579167.a, A164303.P14007755109808434757.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164303

/-! ## A164303.P920505402266645973

`A048696(n)+A002203(n)`
-/

namespace A164303.P920505402266645973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n + A002203 n

end

end A164303.P920505402266645973

namespace A164303

/-- `A048696(n)+A002203(n)` -/
def P920505402266645973.Spec : Prop :=
  ∀ n, P920505402266645973.a n = A164303 n

end A164303

/-! ## A164303.P5987442675770829021

`A277369(n)+A221172(n)`
-/

namespace A164303.P5987442675770829021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277369 n + A221172 n

end

end A164303.P5987442675770829021

namespace A164303

/-- `A277369(n)+A221172(n)` -/
def P5987442675770829021.Spec : Prop :=
  ∀ n, P5987442675770829021.a n = A164303 n

end A164303

/-! ## A164303.P1387965948992848875

`A048655(n)+A002203(n+1)`
-/

namespace A164303.P1387965948992848875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + A002203 (n + 1)

end

end A164303.P1387965948992848875

namespace A164303

/-- `A048655(n)+A002203(n+1)` -/
def P1387965948992848875.Spec : Prop :=
  ∀ n, P1387965948992848875.a n = A164303 n

end A164303

/-! ## A164303.P4894376623370866853

`A052542(n+1)+A048694(n)`
-/

namespace A164303.P4894376623370866853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) + A048694 n

end

end A164303.P4894376623370866853

namespace A164303

/-- `A052542(n+1)+A048694(n)` -/
def P4894376623370866853.Spec : Prop :=
  ∀ n, P4894376623370866853.a n = A164303 n

end A164303

/-! ## A164303.P4458006677111901689

`A078343(n)+A048654(n+1)`
-/

namespace A164303.P4458006677111901689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + A048654 (n + 1)

end

end A164303.P4458006677111901689

namespace A164303

/-- `A078343(n)+A048654(n+1)` -/
def P4458006677111901689.Spec : Prop :=
  ∀ n, P4458006677111901689.a n = A164303 n

end A164303

/-! ## A164303.P6681672857746301734

`A078343(n+1)+A048695(n)`
-/

namespace A164303.P6681672857746301734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 1) + A048695 n

end

end A164303.P6681672857746301734

namespace A164303

/-- `A078343(n+1)+A048695(n)` -/
def P6681672857746301734.Spec : Prop :=
  ∀ n, P6681672857746301734.a n = A164303 n

end A164303

/-! ## A164303.P2981572089898456547

`A221175(n+1)+A221173(n)`
-/

namespace A164303.P2981572089898456547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221175 (n + 1) + A221173 n

end

end A164303.P2981572089898456547

namespace A164303

/-- `A221175(n+1)+A221173(n)` -/
def P2981572089898456547.Spec : Prop :=
  ∀ n, P2981572089898456547.a n = A164303 n

end A164303

/-! ## A164303.P9914663154076957200

`A048693(n)+A000129(n+2)`
-/

namespace A164303.P9914663154076957200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n + A000129 (n + 2)

end

end A164303.P9914663154076957200

namespace A164303

/-- `A048693(n)+A000129(n+2)` -/
def P9914663154076957200.Spec : Prop :=
  ∀ n, P9914663154076957200.a n = A164303 n

end A164303

/-! ## A164303.P12938880208688896593

`A105082(n)-A078343(n+1)`
-/

namespace A164303.P12938880208688896593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105082 n - A078343 (n + 1)

end

end A164303.P12938880208688896593

namespace A164303

/-- `A105082(n)-A078343(n+1)` -/
def P12938880208688896593.Spec : Prop :=
  ∀ n, P12938880208688896593.a n = A164303 n

end A164303

/-! ## A164303.P11349038587501409373

`A163271(n+2)+A048694(n)`
-/

namespace A164303.P11349038587501409373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 2) + A048694 n

end

end A164303.P11349038587501409373

namespace A164303

/-- `A163271(n+2)+A048694(n)` -/
def P11349038587501409373.Spec : Prop :=
  ∀ n, P11349038587501409373.a n = A164303 n

end A164303

/-! ## A164303.P865206186291804819

`A135532(n+2)-A002203(n)`
-/

namespace A164303.P865206186291804819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 (n + 2) - A002203 n

end

end A164303.P865206186291804819

namespace A164303

/-- `A135532(n+2)-A002203(n)` -/
def P865206186291804819.Spec : Prop :=
  ∀ n, P865206186291804819.a n = A164303 n

end A164303

/-! ## A164303.P17455182538176968430

`A001333(n)+2*A048655(n)`
-/

namespace A164303.P17455182538176968430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + 2 * A048655 n

end

end A164303.P17455182538176968430

namespace A164303

/-- `A001333(n)+2*A048655(n)` -/
def P17455182538176968430.Spec : Prop :=
  ∀ n, P17455182538176968430.a n = A164303 n

end A164303

/-! ## A164303.P10333777545722935375

`A048696(n)+2*A001333(n)`
-/

namespace A164303.P10333777545722935375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n + 2 * A001333 n

end

end A164303.P10333777545722935375

namespace A164303

/-- `A048696(n)+2*A001333(n)` -/
def P10333777545722935375.Spec : Prop :=
  ∀ n, P10333777545722935375.a n = A164303 n

end A164303

/-! ## A164303.P7546557456320666615

`A048655(n)+2*A078057(n)`
-/

namespace A164303.P7546557456320666615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + 2 * A078057 n

end

end A164303.P7546557456320666615

namespace A164303

/-- `A048655(n)+2*A078057(n)` -/
def P7546557456320666615.Spec : Prop :=
  ∀ n, P7546557456320666615.a n = A164303 n

end A164303

/-! ## A164303.P2507821809665582059

`A162268(n)+2*A078343(n)`
-/

namespace A164303.P2507821809665582059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162268 n + 2 * A078343 n

end

end A164303.P2507821809665582059

namespace A164303

/-- `A162268(n)+2*A078343(n)` -/
def P2507821809665582059.Spec : Prop :=
  ∀ n, P2507821809665582059.a n = A164303 n

end A164303

/-! ## A164303.P15022761955061749113

`A266504(2*n)+A048697(n)`
-/

namespace A164303.P15022761955061749113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n) + A048697 n

end

end A164303.P15022761955061749113

namespace A164303

/-- `A266504(2*n)+A048697(n)` -/
def P15022761955061749113.Spec : Prop :=
  ∀ n, P15022761955061749113.a n = A164303 n

end A164303

/-! ## A164303.P9373682020191638905

`A078057(n+1)+Δ[A002203(n)]`
-/

namespace A164303.P9373682020191638905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) + (f1 (n + 1) - f1 n)

end

end A164303.P9373682020191638905

namespace A164303

/-- `A078057(n+1)+Δ[A002203(n)]` -/
def P9373682020191638905.Spec : Prop :=
  ∀ n, P9373682020191638905.a n = A164303 n

end A164303

/-!
# A164304: a(n) = 4*a(n-1) - 2*a(n-2) for n > 1; a(0) = 3, a(1) = 14.

The programs for A164304, the canonical program `A164304.P4750742442191699046` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164304 has offset 0).

The definition of A164304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-2*a(n-2)` (program `A164304.P4750742442191699046`, by `A164304.P4750742442191699046.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164304.P4750742442191699046

`4*a(n-1)-2*a(n-2)` with `a(0)=3, a(1)=14`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164304

/-- `4*a(n-1)-2*a(n-2)` -/
def P4750742442191699046.Spec : Prop :=
  ∀ n, P4750742442191699046.a n = A164304 n

theorem P4750742442191699046.correct : P4750742442191699046.Spec := by
  intro n
  simp only [A164304]

end A164304

/-! ## A164304.P1728061118889014221

`ogf((3+2x)/(1-4x+2x^2))`
-/

namespace A164304.P1728061118889014221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -4, 2] n

end

end A164304.P1728061118889014221

namespace A164304

/-- `ogf((3+2x)/(1-4x+2x^2))` -/
def P1728061118889014221.Spec : Prop :=
  ∀ n, P1728061118889014221.a n = A164304 n

end A164304

/-! ## A164304.P2496662671726165086

`A164298(n)+A056236(n)`
-/

namespace A164304.P2496662671726165086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164298 n + A056236 n

end

end A164304.P2496662671726165086

namespace A164304

/-- `A164298(n)+A056236(n)` -/
def P2496662671726165086.Spec : Prop :=
  ∀ n, P2496662671726165086.a n = A164304 n

end A164304

/-! ## A164304.P16849133222682481405

`A111566(n)+Δ[A056236(n)]`
-/

namespace A164304.P16849133222682481405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n + (f1 (n + 1) - f1 n)

end

end A164304.P16849133222682481405

namespace A164304

/-- `A111566(n)+Δ[A056236(n)]` -/
def P16849133222682481405.Spec : Prop :=
  ∀ n, P16849133222682481405.a n = A164304 n

end A164304

/-! ## A164304.P15551202043112780902

`A163613(n)-Δ[A106731(n)]`
-/

namespace A164304.P15551202043112780902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163613 n - (f1 (n + 1) - f1 n)

end

end A164304.P15551202043112780902

namespace A164304

/-- `A163613(n)-Δ[A106731(n)]` -/
def P15551202043112780902.Spec : Prop :=
  ∀ n, P15551202043112780902.a n = A164304 n

end A164304

/-! ## A164304.P7336844053074843403

`A111567(n+1)-A056236(n)`
-/

namespace A164304.P7336844053074843403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111567 (n + 1) - A056236 n

end

end A164304.P7336844053074843403

namespace A164304

/-- `A111567(n+1)-A056236(n)` -/
def P7336844053074843403.Spec : Prop :=
  ∀ n, P7336844053074843403.a n = A164304 n

end A164304

/-! ## A164304.P1017578631840458344

`A111566(n)+A060995(n+2)`
-/

namespace A164304.P1017578631840458344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n + A060995 (n + 2)

end

end A164304.P1017578631840458344

namespace A164304

/-- `A111566(n)+A060995(n+2)` -/
def P1017578631840458344.Spec : Prop :=
  ∀ n, P1017578631840458344.a n = A164304 n

end A164304

/-! ## A164304.P4842328230918296268

`A111566(n)-A106731(n+1)`
-/

namespace A164304.P4842328230918296268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n - A106731 (n + 1)

end

end A164304.P4842328230918296268

namespace A164304

/-- `A111566(n)-A106731(n+1)` -/
def P4842328230918296268.Spec : Prop :=
  ∀ n, P4842328230918296268.a n = A164304 n

end A164304

/-! ## A164304.P11797190364637850531

`A006012(n)+2*A111566(n)`
-/

namespace A164304.P11797190364637850531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n + 2 * A111566 n

end

end A164304.P11797190364637850531

namespace A164304

/-- `A006012(n)+2*A111566(n)` -/
def P11797190364637850531.Spec : Prop :=
  ∀ n, P11797190364637850531.a n = A164304 n

end A164304

/-! ## A164304.P10446154954192103871

`A007070(n)+2*A111567(n)`
-/

namespace A164304.P10446154954192103871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + 2 * A111567 n

end

end A164304.P10446154954192103871

namespace A164304

/-- `A007070(n)+2*A111567(n)` -/
def P10446154954192103871.Spec : Prop :=
  ∀ n, P10446154954192103871.a n = A164304 n

end A164304

/-! ## A164304.P7564439934256453361

`A111566(n)+2*A007070(n)`
-/

namespace A164304.P7564439934256453361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n + 2 * A007070 n

end

end A164304.P7564439934256453361

namespace A164304

/-- `A111566(n)+2*A007070(n)` -/
def P7564439934256453361.Spec : Prop :=
  ∀ n, P7564439934256453361.a n = A164304 n

end A164304

/-! ## A164304.P17233697233563678942

`A164298(n)+2*A006012(n)`
-/

namespace A164304.P17233697233563678942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164298 n + 2 * A006012 n

end

end A164304.P17233697233563678942

namespace A164304

/-- `A164298(n)+2*A006012(n)` -/
def P17233697233563678942.Spec : Prop :=
  ∀ n, P17233697233563678942.a n = A164304 n

end A164304

/-! ## A164304.P18003062002577221698

`A048580(n)-2*A106731(n)`
-/

namespace A164304.P18003062002577221698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n - 2 * A106731 n

end

end A164304.P18003062002577221698

namespace A164304

/-- `A048580(n)-2*A106731(n)` -/
def P18003062002577221698.Spec : Prop :=
  ∀ n, P18003062002577221698.a n = A164304 n

end A164304

/-! ## A164304.P4691206854166565980

`4*A007070(n)-A006012(n)`
-/

namespace A164304.P4691206854166565980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007070 n - A006012 n

end

end A164304.P4691206854166565980

namespace A164304

/-- `4*A007070(n)-A006012(n)` -/
def P4691206854166565980.Spec : Prop :=
  ∀ n, P4691206854166565980.a n = A164304 n

end A164304

/-! ## A164304.P17953200161599619935

`A048580(n)+2*A060995(n+1)`
-/

namespace A164304.P17953200161599619935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n + 2 * A060995 (n + 1)

end

end A164304.P17953200161599619935

namespace A164304

/-- `A048580(n)+2*A060995(n+1)` -/
def P17953200161599619935.Spec : Prop :=
  ∀ n, P17953200161599619935.a n = A164304 n

end A164304

/-! ## A164304.P12871536435169784463

`A060995(n+1)+3*A007070(n)`
-/

namespace A164304.P12871536435169784463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060995 (n + 1) + 3 * A007070 n

end

end A164304.P12871536435169784463

namespace A164304

/-- `A060995(n+1)+3*A007070(n)` -/
def P12871536435169784463.Spec : Prop :=
  ∀ n, P12871536435169784463.a n = A164304 n

end A164304

/-! ## A164304.P14098635628818738863

`A111567(n+1)-2*A006012(n)`
-/

namespace A164304.P14098635628818738863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111567 (n + 1) - 2 * A006012 n

end

end A164304.P14098635628818738863

namespace A164304

/-- `A111567(n+1)-2*A006012(n)` -/
def P14098635628818738863.Spec : Prop :=
  ∀ n, P14098635628818738863.a n = A164304 n

end A164304

/-! ## A164304.P332770123159185338

`∑[2*A006012(n+1)]-A006012(n)`
-/

namespace A164304.P332770123159185338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006012 n

end

end A164304.P332770123159185338

namespace A164304

/-- `∑[2*A006012(n+1)]-A006012(n)` -/
def P332770123159185338.Spec : Prop :=
  ∀ n, P332770123159185338.a n = A164304 n

end A164304

/-! ## A164304.P6577169949523654050

`A007052(n+1)+2*A060995(n+1)`
-/

namespace A164304.P6577169949523654050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1) + 2 * A060995 (n + 1)

end

end A164304.P6577169949523654050

namespace A164304

/-- `A007052(n+1)+2*A060995(n+1)` -/
def P6577169949523654050.Spec : Prop :=
  ∀ n, P6577169949523654050.a n = A164304 n

end A164304

/-! ## A164304.P14126730597891726082

`2*A068912(2*n+1)-A030436(2*n)`
-/

namespace A164304.P14126730597891726082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068912 (2 * n + 1) - A030436 (2 * n)

end

end A164304.P14126730597891726082

namespace A164304

/-- `2*A068912(2*n+1)-A030436(2*n)` -/
def P14126730597891726082.Spec : Prop :=
  ∀ n, P14126730597891726082.a n = A164304 n

end A164304

/-!
# A164305: a(n) = 6*a(n-1) - 7*a(n-2) for n > 1; a(0) = 3, a(1) = 17.

The programs for A164305, the canonical program `A164305.P8256042817506642899` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164305 has offset 0).

The definition of A164305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-7*a(n-2)` (program `A164305.P8256042817506642899`, by `A164305.P8256042817506642899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164305.P8256042817506642899

`6*a(n-1)-7*a(n-2)` with `a(0)=3, a(1)=17`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164305

/-- `6*a(n-1)-7*a(n-2)` -/
def P8256042817506642899.Spec : Prop :=
  ∀ n, P8256042817506642899.a n = A164305 n

theorem P8256042817506642899.correct : P8256042817506642899.Spec := by
  intro n
  simp only [A164305]

end A164305

/-! ## A164305.P9036820307137926504

`ogf((3-x)/(1-6x+7x^2))`
-/

namespace A164305.P9036820307137926504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -6, 7] n

end

end A164305.P9036820307137926504

namespace A164305

/-- `ogf((3-x)/(1-6x+7x^2))` -/
def P9036820307137926504.Spec : Prop :=
  ∀ n, P9036820307137926504.a n = A164305 n

end A164305

/-! ## A164305.P2221277826628066009

`A163348(n)+2*A102285(n)`
-/

namespace A164305.P2221277826628066009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 n + 2 * A102285 n

end

end A164305.P2221277826628066009

namespace A164305

/-- `A163348(n)+2*A102285(n)` -/
def P2221277826628066009.Spec : Prop :=
  ∀ n, P2221277826628066009.a n = A164305 n

end A164305

/-! ## A164305.P10410700320674791416

`A163606(n)+4*A081179(n)`
-/

namespace A164305.P10410700320674791416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n + 4 * A081179 n

end

end A164305.P10410700320674791416

namespace A164305

/-- `A163606(n)+4*A081179(n)` -/
def P10410700320674791416.Spec : Prop :=
  ∀ n, P10410700320674791416.a n = A164305 n

end A164305

/-! ## A164305.P17265078512556965375

`3*A081179(n+1)-A081179(n)`
-/

namespace A164305.P17265078512556965375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A081179 (n + 1) - A081179 n

end

end A164305.P17265078512556965375

namespace A164305

/-- `3*A081179(n+1)-A081179(n)` -/
def P17265078512556965375.Spec : Prop :=
  ∀ n, P17265078512556965375.a n = A164305 n

end A164305

/-! ## A164305.P2273516601032830543

`A081179(n+1)+A102285(n)+A081179(n+1)`
-/

namespace A164305.P2273516601032830543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) + (A102285 n + A081179 (n + 1))

end

end A164305.P2273516601032830543

namespace A164305

/-- `A081179(n+1)+A102285(n)+A081179(n+1)` -/
def P2273516601032830543.Spec : Prop :=
  ∀ n, P2273516601032830543.a n = A164305 n

end A164305

/-! ## A164305.P14987960540366119782

`((3+4*sqrt(2))*(sqrt(2)+3)^n+(3-4*sqrt(2))*(3-sqrt(2))^n)/2`
-/

namespace A164305.P14987960540366119782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 4 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 3) ^ n + (3 - 4 * Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164305.P14987960540366119782

namespace A164305

/-- `((3+4*sqrt(2))*(sqrt(2)+3)^n+(3-4*sqrt(2))*(3-sqrt(2))^n)/2` -/
def P14987960540366119782.Spec : Prop :=
  ∀ n, P14987960540366119782.a n = (A164305 n : ℝ)

theorem P14987960540366119782.correct : P14987960540366119782.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164305, Nat.add_sub_cancel, A164305.P14987960540366119782.a, A164305.P8256042817506642899.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164305, Nat.add_sub_cancel, A164305.P14987960540366119782.a, A164305.P8256042817506642899.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164305

/-! ## A164305.P9060595834844022330

`A163348(n)+Δ[A163614(n)-A163348(n)]`
-/

namespace A164305.P9060595834844022330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163614 n - A163348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 n + (f1 (n + 1) - f1 n)

end

end A164305.P9060595834844022330

namespace A164305

/-- `A163348(n)+Δ[A163614(n)-A163348(n)]` -/
def P9060595834844022330.Spec : Prop :=
  ∀ n, P9060595834844022330.a n = A164305 n

end A164305

/-!
# A164306: Triangle read by rows: T(n, k) = k / gcd(k, n), 1 <= k <= n.

The programs for A164306, the canonical program `A164306.P2069573017025375241` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164306 has offset 1).

The definition of A164306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164306.P2069573017025375241

`(col(n)+1)/gcd(col(n)+1, row(n)+1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164306

/-- `(col(n)+1)/gcd(col(n)+1, row(n)+1)` -/
def P2069573017025375241.Spec : Prop :=
  ∀ n, P2069573017025375241.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P7024156448481500728

`(col(n)+1)/gcd(col(n)+1, row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164306.P7024156448481500728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) / (Int.gcd (SequenceMachineLib.triCol n + 1 : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℚ)

end

end A164306.P7024156448481500728

namespace A164306

/-- `(col(n)+1)/gcd(col(n)+1, row(n)-col(n))` -/
def P7024156448481500728.Spec : Prop :=
  ∀ n, P7024156448481500728.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P3129309260802419432

`lcm(row(n)+1, col(n)+1)/(row(n)+1)`
-/

namespace A164306.P3129309260802419432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℚ) / (SequenceMachineLib.triRow n + 1 : ℚ)

end

end A164306.P3129309260802419432

namespace A164306

/-- `lcm(row(n)+1, col(n)+1)/(row(n)+1)` -/
def P3129309260802419432.Spec : Prop :=
  ∀ n, P3129309260802419432.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P6745105614264887961

`A051173(n+1)/∑[char[∑[n]]]`
-/

namespace A164306.P6745105614264887961
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A164306.P6745105614264887961

namespace A164306

/-- `A051173(n+1)/∑[char[∑[n]]]` -/
def P6745105614264887961.Spec : Prop :=
  ∀ n, P6745105614264887961.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P18065805185918202179

`A054531(n+1)-A167192(n+1)`
-/

namespace A164306.P18065805185918202179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) - A167192 (n + 1)

end

end A164306.P18065805185918202179

namespace A164306

/-- `A054531(n+1)-A167192(n+1)` -/
def P18065805185918202179.Spec : Prop :=
  ∀ n, P18065805185918202179.a n = A164306 (n + 1)

end A164306

/-! ## A164306.P10612526601519529641

`A002260(n+1)/A050873(n+1)`
-/

namespace A164306.P10612526601519529641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A164306.P10612526601519529641

namespace A164306

/-- `A002260(n+1)/A050873(n+1)` -/
def P10612526601519529641.Spec : Prop :=
  ∀ n, P10612526601519529641.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P2620618099130395564

`(A002262(n)+1)/A050873(n+1)`
-/

namespace A164306.P2620618099130395564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1 : ℚ) / (A050873 (n + 1) : ℚ)

end

end A164306.P2620618099130395564

namespace A164306

/-- `(A002262(n)+1)/A050873(n+1)` -/
def P2620618099130395564.Spec : Prop :=
  ∀ n, P2620618099130395564.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P8844552537152556152

`A051537(n+1)/A054531(n+1)`
-/

namespace A164306.P8844552537152556152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051537 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A164306.P8844552537152556152

namespace A164306

/-- `A051537(n+1)/A054531(n+1)` -/
def P8844552537152556152.Spec : Prop :=
  ∀ n, P8844552537152556152.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P2651498539762011168

`1/A002024(n+1)*A051173(n+1)`
-/

namespace A164306.P2651498539762011168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A002024 (n + 1) : ℚ) * (A051173 (n + 1) : ℚ)

end

end A164306.P2651498539762011168

namespace A164306

/-- `1/A002024(n+1)*A051173(n+1)` -/
def P2651498539762011168.Spec : Prop :=
  ∀ n, P2651498539762011168.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P4611328088724789590

`A007318(n)/gcd(A007318(n+1), A007318(n))`
-/

namespace A164306.P4611328088724789590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd (A007318 (n + 1)) (A007318 n) : ℚ)

end

end A164306.P4611328088724789590

namespace A164306

/-- `A007318(n)/gcd(A007318(n+1), A007318(n))` -/
def P4611328088724789590.Spec : Prop :=
  ∀ n, P4611328088724789590.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P7533718856249207502

`A054531(n+1)-A025581(n)/A050873(n+1)`
-/

namespace A164306.P7533718856249207502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) : ℚ) - (A025581 n : ℚ) / (A050873 (n + 1) : ℚ)

end

end A164306.P7533718856249207502

namespace A164306

/-- `A054531(n+1)-A025581(n)/A050873(n+1)` -/
def P7533718856249207502.Spec : Prop :=
  ∀ n, P7533718856249207502.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P10975913010652400859

`A002260(n+1)/gcd(A002260(n+1), A004247(n))`
-/

namespace A164306.P10975913010652400859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A004247 n) : ℚ)

end

end A164306.P10975913010652400859

namespace A164306

/-- `A002260(n+1)/gcd(A002260(n+1), A004247(n))` -/
def P10975913010652400859.Spec : Prop :=
  ∀ n, P10975913010652400859.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P16657404931466820231

`A002260(n+1)/gcd(A002024(n+1), A025581(n))`
-/

namespace A164306.P16657404931466820231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002024 (n + 1)) (A025581 n) : ℚ)

end

end A164306.P16657404931466820231

namespace A164306

/-- `A002260(n+1)/gcd(A002024(n+1), A025581(n))` -/
def P16657404931466820231.Spec : Prop :=
  ∀ n, P16657404931466820231.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P8676742926324405025

`A075362(n+1)/gcd(A068606(n), A075362(n+1))`
-/

namespace A164306.P8676742926324405025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / (Int.gcd (A068606 n) (A075362 (n + 1)) : ℚ)

end

end A164306.P8676742926324405025

namespace A164306

/-- `A075362(n+1)/gcd(A068606(n), A075362(n+1))` -/
def P8676742926324405025.Spec : Prop :=
  ∀ n, P8676742926324405025.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P3520939932844335455

`lcm(A002024(n+1), A128227(n))/A002024(n+1)`
-/

namespace A164306.P3520939932844335455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002024 (n + 1)) (A128227 n) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A164306.P3520939932844335455

namespace A164306

/-- `lcm(A002024(n+1), A128227(n))/A002024(n+1)` -/
def P3520939932844335455.Spec : Prop :=
  ∀ n, P3520939932844335455.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P8220483587737284813

`A010054(n+1)+A048151(n+1)/A050873(n+1)`
-/

namespace A164306.P8220483587737284813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010054 (n + 1) : ℚ) + (A048151 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A164306.P8220483587737284813

namespace A164306

/-- `A010054(n+1)+A048151(n+1)/A050873(n+1)` -/
def P8220483587737284813.Spec : Prop :=
  ∀ n, P8220483587737284813.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P4962822052415374700

`A002260(n+1)/A002024(n+1)*A054531(n+1)`
-/

namespace A164306.P4962822052415374700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A054531 (n + 1) : ℚ)

end

end A164306.P4962822052415374700

namespace A164306

/-- `A002260(n+1)/A002024(n+1)*A054531(n+1)` -/
def P4962822052415374700.Spec : Prop :=
  ∀ n, P4962822052415374700.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P12602057125071117229

`A002260(n+1)/A051173(n+1)*A051537(n+1)`
-/

namespace A164306.P12602057125071117229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A051173 (n + 1) : ℚ) * (A051537 (n + 1) : ℚ)

end

end A164306.P12602057125071117229

namespace A164306

/-- `A002260(n+1)/A051173(n+1)*A051537(n+1)` -/
def P12602057125071117229.Spec : Prop :=
  ∀ n, P12602057125071117229.a n = (A164306 (n + 1) : ℚ)

end A164306

/-! ## A164306.P2958505078637436914

`A277227(n+2)-A167192(n+1)`
-/

namespace A164306.P2958505078637436914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 2) - A167192 (n + 1)

end

end A164306.P2958505078637436914

namespace A164306

/-- `A277227(n+2)-A167192(n+1)` -/
def P2958505078637436914.Spec : Prop :=
  ∀ n, P2958505078637436914.a n = A164306 (n + 1)

end A164306

/-! ## A164306.P6392475144367595067

`A051537(n+1)/A277227(n+2)`
-/

namespace A164306.P6392475144367595067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051537 (n + 1) : ℚ) / (A277227 (n + 2) : ℚ)

end

end A164306.P6392475144367595067

namespace A164306

/-- `A051537(n+1)/A277227(n+2)` -/
def P6392475144367595067.Spec : Prop :=
  ∀ n, P6392475144367595067.a n = (A164306 (n + 1) : ℚ)

end A164306

/-!
# A164308: Triangle read by rows, binomial distribution of the terms (1, 3, 9, 27, ...).

The programs for A164308, there is no canonical definition to state claims against.
-/

/-! ## A164308.P12856048280871320052

`3^log2(A164281(n))`
-/

namespace A164308.P12856048280871320052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.logb 2 (A164281 n : ℝ))

end

end A164308.P12856048280871320052

/-! ## A164308.P15681148635281870696

`3^(A088696(n+1)-1)`
-/

namespace A164308.P15681148635281870696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A088696 (n + 1) - 1 : ℤ)

end

end A164308.P15681148635281870696

/-! ## A164308.P16220040265330072388

`3^A037834(xor(n+1, 2^floor(log2(n+1))-1))`
-/

namespace A164308.P16220040265330072388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A037834 (Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat : ℤ)

end

end A164308.P16220040265330072388

/-! ## A164308.P2789558071743618964

`A003959(A164281(n))`
-/

namespace A164308.P2789558071743618964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A164281 n).toNat

end

end A164308.P2789558071743618964

/-! ## A164308.P2926677777299415995

`A090880(A164738(n))`
-/

namespace A164308.P2926677777299415995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (A164738 n).toNat

end

end A164308.P2926677777299415995

/-!
# A164309: Triangle read by rows, generated from the binomial expansion of (5x + 2).

The programs for A164309, there is no canonical definition to state claims against.
-/

/-! ## A164309.P6444823858025531341

`A072029(A164279(n))`
-/

namespace A164309.P6444823858025531341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072029 (A164279 n).toNat

end

end A164309.P6444823858025531341

/-! ## A164309.P14479570016902590876

`A267099(A164279(n)%A048578(n))`
-/

namespace A164309.P14479570016902590876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (Int.tmod (A164279 n) (A048578 n)).toNat

end

end A164309.P14479570016902590876

/-! ## A164309.P4559551839180688903

`A267099(or(A164279(n), A164281(n)))`
-/

namespace A164309.P4559551839180688903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (Int.lor (A164279 n) (A164281 n)).toNat

end

end A164309.P4559551839180688903

/-! ## A164309.P15191326940281992371

`A267099(A164279(n))%A000045(n+6)`
-/

namespace A164309.P15191326940281992371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267099 (A164279 n).toNat) (A000045 (n + 6))

end

end A164309.P15191326940281992371

/-!
# A164310: a(n) = 6*a(n-1) - 6*a(n-2) for n > 1; a(0) = 4, a(1) = 15.

The programs for A164310, the canonical program `A164310.P15570649654944555336` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164310 has offset 0).

The definition of A164310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-6*a(n-2)` (program `A164310.P15570649654944555336`, by `A164310.P15570649654944555336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164310.P15570649654944555336

`6*a(n-1)-6*a(n-2)` with `a(0)=4, a(1)=15`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164310

/-- `6*a(n-1)-6*a(n-2)` -/
def P15570649654944555336.Spec : Prop :=
  ∀ n, P15570649654944555336.a n = A164310 n

theorem P15570649654944555336.correct : P15570649654944555336.Spec := by
  intro n
  simp only [A164310]

end A164310

/-! ## A164310.P236624478453853989

`ogf((4-9x)/(1-6x+6x^2))`
-/

namespace A164310.P236624478453853989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -9] [1, -6, 6] n

end

end A164310.P236624478453853989

namespace A164310

/-- `ogf((4-9x)/(1-6x+6x^2))` -/
def P236624478453853989.Spec : Prop :=
  ∀ n, P236624478453853989.a n = A164310 n

end A164310

/-! ## A164310.P1369622079514483978

`6*(a(n-1)-a(n-2))` with `a(0)=4, a(1)=15`
-/

namespace A164310.P1369622079514483978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 15] fun n a =>
  6 * (a (n - 1) - a (n - 2))

end

end A164310.P1369622079514483978

namespace A164310

/-- `6*(a(n-1)-a(n-2))` -/
def P1369622079514483978.Spec : Prop :=
  ∀ n, P1369622079514483978.a n = A164310 n

theorem P1369622079514483978.correct : P1369622079514483978.Spec := by
  intro n
  simp only [A164310, Nat.add_sub_cancel, A164310.P1369622079514483978.a, A164310.P15570649654944555336.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164310

/-! ## A164310.P1192412768447997821

`((4+sqrt(3))*(3+sqrt(3))^n+(4-sqrt(3))*(3-sqrt(3))^n)/2`
-/

namespace A164310.P1192412768447997821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (3 : ℝ)) * (3 + Real.sqrt (3 : ℝ)) ^ n + (4 - Real.sqrt (3 : ℝ)) * (3 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A164310.P1192412768447997821

namespace A164310

/-- `((4+sqrt(3))*(3+sqrt(3))^n+(4-sqrt(3))*(3-sqrt(3))^n)/2` -/
def P1192412768447997821.Spec : Prop :=
  ∀ n, P1192412768447997821.a n = (A164310 n : ℝ)

theorem P1192412768447997821.correct : P1192412768447997821.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164310, Nat.add_sub_cancel, A164310.P1192412768447997821.a, A164310.P15570649654944555336.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164310, Nat.add_sub_cancel, A164310.P1192412768447997821.a, A164310.P15570649654944555336.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164310

/-! ## A164310.P10832923136934570887

`A162814(n)-A083881(n)`
-/

namespace A164310.P10832923136934570887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162814 n - A083881 n

end

end A164310.P10832923136934570887

namespace A164310

/-- `A162814(n)-A083881(n)` -/
def P10832923136934570887.Spec : Prop :=
  ∀ n, P10832923136934570887.a n = A164310 n

end A164310

/-! ## A164310.P3126501055126908371

`A083881(n+1)+A083881(n)`
-/

namespace A164310.P3126501055126908371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 (n + 1) + A083881 n

end

end A164310.P3126501055126908371

namespace A164310

/-- `A083881(n+1)+A083881(n)` -/
def P3126501055126908371.Spec : Prop :=
  ∀ n, P3126501055126908371.a n = A164310 n

end A164310

/-!
# A164311: a(n) = 12*a(n-1) - 33*a(n-2) for n > 1; a(0) = 4, a(1) = 27.

The programs for A164311, the canonical program `A164311.P7660250323027519815` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164311 has offset 0).

The definition of A164311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-33*a(n-2)` (program `A164311.P7660250323027519815`, by `A164311.P7660250323027519815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164311.P7660250323027519815

`12*a(n-1)-33*a(n-2)` with `a(0)=4, a(1)=27`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164311

/-- `12*a(n-1)-33*a(n-2)` -/
def P7660250323027519815.Spec : Prop :=
  ∀ n, P7660250323027519815.a n = A164311 n

theorem P7660250323027519815.correct : P7660250323027519815.Spec := by
  intro n
  simp only [A164311]

end A164311

/-! ## A164311.P15000029004527928806

`A163472(n)+A147961(n)`
-/

namespace A164311.P15000029004527928806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163472 n + A147961 n

end

end A164311.P15000029004527928806

namespace A164311

/-- `A163472(n)+A147961(n)` -/
def P15000029004527928806.Spec : Prop :=
  ∀ n, P15000029004527928806.a n = A164311 n

end A164311

/-! ## A164311.P4741539667049050431

`A147961(n)+3*A162757(n)`
-/

namespace A164311.P4741539667049050431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147961 n + 3 * A162757 n

end

end A164311.P4741539667049050431

namespace A164311

/-- `A147961(n)+3*A162757(n)` -/
def P4741539667049050431.Spec : Prop :=
  ∀ n, P4741539667049050431.a n = A164311 n

end A164311

/-! ## A164311.P14292219319243800513

`((4+sqrt(3))*(sqrt(3)+6)^n+(4-sqrt(3))*(6-sqrt(3))^n)/2`
-/

namespace A164311.P14292219319243800513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 6) ^ n + (4 - Real.sqrt (3 : ℝ)) * (6 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A164311.P14292219319243800513

namespace A164311

/-- `((4+sqrt(3))*(sqrt(3)+6)^n+(4-sqrt(3))*(6-sqrt(3))^n)/2` -/
def P14292219319243800513.Spec : Prop :=
  ∀ n, P14292219319243800513.a n = (A164311 n : ℝ)

theorem P14292219319243800513.correct : P14292219319243800513.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164311, Nat.add_sub_cancel, A164311.P14292219319243800513.a, A164311.P7660250323027519815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164311, Nat.add_sub_cancel, A164311.P14292219319243800513.a, A164311.P7660250323027519815.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164311

/-! ## A164311.P1365678265752763026

`A162816(n)-A147961(n)`
-/

namespace A164311.P1365678265752763026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162816 n - A147961 n

end

end A164311.P1365678265752763026

namespace A164311

/-- `A162816(n)-A147961(n)` -/
def P1365678265752763026.Spec : Prop :=
  ∀ n, P1365678265752763026.a n = A164311 n

end A164311

/-! ## A164311.P12604212838945974366

`A147961(n+1)-2*A147961(n)`
-/

namespace A164311.P12604212838945974366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147961 (n + 1) - 2 * A147961 n

end

end A164311.P12604212838945974366

namespace A164311

/-- `A147961(n+1)-2*A147961(n)` -/
def P12604212838945974366.Spec : Prop :=
  ∀ n, P12604212838945974366.a n = A164311 n

end A164311

/-!
# A164312: Numbers n such that k^n + (k-1)^n + ... + 3^n + 2^n + 1 is prime for some k.

The programs for A164312, there is no canonical definition to state claims against.
-/

/-! ## A164312.P9855903897772931576

`lcm(2^n, ∑[C(n, 4)]!)`
-/

namespace A164312.P9855903897772931576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A164312.P9855903897772931576

/-!
# A164313: LCM of all differences of odd primes up to prime(n).

The programs for A164313, there is no canonical definition to state claims against.
-/

/-! ## A164313.P13172177965520658475

`A051426(A067076(n+2))`
-/

namespace A164313.P13172177965520658475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051426 (A067076 (n + 2)).toNat

end

end A164313.P13172177965520658475

/-! ## A164313.P5007988505106625212

`A051426(eq[3, A020483(n)])`
-/

namespace A164313.P5007988505106625212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164313.P5007988505106625212

/-! ## A164313.P15847779436327985071

`A051426(∑[A028334(n+2)])`
-/

namespace A164313.P15847779436327985071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051426 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164313.P15847779436327985071

/-! ## A164313.P13418940983584542943

`A051426((A172367(n+1)+1)/2)`
-/

namespace A164313.P13418940983584542943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051426 (SequenceMachineLib.roundAway ((A172367 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A164313.P13418940983584542943

/-! ## A164313.P1532160384336287310

`A051426(A110654(A172367(n+1)))`
-/

namespace A164313.P1532160384336287310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051426 (A110654 (A172367 (n + 1)).toNat).toNat

end

end A164313.P1532160384336287310

/-!
# A164314: Largest prime factor of n^2 - 2.

The programs for A164314, the canonical program `A164314.P4119450813910169316` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164314 has offset 2).

The definition of A164314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164314.P4119450813910169316

`A006530(A008865(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A164314

/-- `A006530(A008865(n+2))` -/
def P4119450813910169316.Spec : Prop :=
  ∀ n, P4119450813910169316.a n = A164314 (n + 2)

theorem P4119450813910169316.correct : P4119450813910169316.Spec := by
  intro n
  simp only [A164314, Nat.add_sub_cancel]

end A164314

/-! ## A164314.P17850578272317284700

`A006530((n+2)²-2)`
-/

namespace A164314.P17850578272317284700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2) ^ 2 - 2)

end

end A164314.P17850578272317284700

namespace A164314

/-- `A006530((n+2)²-2)` -/
def P17850578272317284700.Spec : Prop :=
  ∀ n, P17850578272317284700.a n = A164314 (n + 2)

end A164314

/-! ## A164314.P15336533274888736779

`A006530((n+1)²+2*n+1)+and(2, n²)`
-/

namespace A164314.P15336533274888736779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 2 + (2 * n + 1)) + (Nat.land 2 (n ^ 2) : ℤ)

end

end A164314.P15336533274888736779

namespace A164314

/-- `A006530((n+1)²+2*n+1)+and(2, n²)` -/
def P15336533274888736779.Spec : Prop :=
  ∀ n, P15336533274888736779.a n = A164314 (n + 2)

end A164314

/-! ## A164314.P6757236282508246086

`A006530(∑[2*n+1]+2*n+1)+C(2, n+3)`
-/

namespace A164314.P6757236282508246086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1)) + (Nat.choose 2 (n + 3) : ℤ)

end

end A164314.P6757236282508246086

namespace A164314

/-- `A006530(∑[2*n+1]+2*n+1)+C(2, n+3)` -/
def P6757236282508246086.Spec : Prop :=
  ∀ n, P6757236282508246086.a n = A164314 (n + 2)

end A164314

/-! ## A164314.P13039893767564670829

`A000040(A061395((n+2)²-2))`
-/

namespace A164314.P13039893767564670829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 ((n + 2) ^ 2 - 2)).toNat

end

end A164314.P13039893767564670829

namespace A164314

/-- `A000040(A061395((n+2)²-2))` -/
def P13039893767564670829.Spec : Prop :=
  ∀ n, P13039893767564670829.a n = A164314 (n + 2)

end A164314

/-! ## A164314.P5919028437052927069

`A008475(A006530((n+1)²+2*n+1))`
-/

namespace A164314.P5919028437052927069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A006530 ((n + 1) ^ 2 + (2 * n + 1))).toNat

end

end A164314.P5919028437052927069

namespace A164314

/-- `A008475(A006530((n+1)²+2*n+1))` -/
def P5919028437052927069.Spec : Prop :=
  ∀ n, P5919028437052927069.a n = A164314 (n + 2)

end A164314

/-! ## A164314.P396336124105664496

`A007318(∑[n])*A006530((n+1)²+2*n+1)`
-/

namespace A164314.P396336124105664496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A006530 ((n + 1) ^ 2 + (2 * n + 1))

end

end A164314.P396336124105664496

namespace A164314

/-- `A007318(∑[n])*A006530((n+1)²+2*n+1)` -/
def P396336124105664496.Spec : Prop :=
  ∀ n, P396336124105664496.a n = A164314 (n + 2)

end A164314

/-! ## A164314.P14409772088848930005

`A000040(A263297((n+2)²-2))`
-/

namespace A164314.P14409772088848930005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A263297 ((n + 2) ^ 2 - 2)).toNat

end

end A164314.P14409772088848930005

namespace A164314

/-- `A000040(A263297((n+2)²-2))` -/
def P14409772088848930005.Spec : Prop :=
  ∀ n, P14409772088848930005.a n = A164314 (n + 2)

end A164314

/-!
# A164315: Number of binary strings of length n with no substrings equal to 000 or 011.

The programs for A164315, the canonical program `A164315.P14456609794849242194` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164315 has offset 0).

The definition of A164315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 815 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164315.P11146707186830332075

`ogf((1+x+x^2)/(1-x-x^2+x^4))`
-/

namespace A164315.P11146707186830332075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, -1, 0, 1] n

end

end A164315.P11146707186830332075

namespace A164315

/-- `ogf((1+x+x^2)/(1-x-x^2+x^4))` -/
def P11146707186830332075.Spec : Prop :=
  ∀ n, P11146707186830332075.a n = A164315 n

end A164315

/-! ## A164315.P14456609794849242194

`∑[a(n-2)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164315

/-- `∑[a(n-2)+a(n-3)]` -/
def P14456609794849242194.Spec : Prop :=
  ∀ n, (P14456609794849242194.a n : ℤ) = A164315 n

theorem P14456609794849242194.correct : P14456609794849242194.Spec := by
  intro n
  simp only [A164315]

end A164315

/-! ## A164315.P14526304206183070977

`a(n-2)+a(n-3)+3` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A164315.P14526304206183070977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + (a (n - 3) + 3)

end

end A164315.P14526304206183070977

namespace A164315

/-- `a(n-2)+a(n-3)+3` -/
def P14526304206183070977.Spec : Prop :=
  ∀ n, (P14526304206183070977.a n : ℤ) = A164315 n

end A164315

/-! ## A164315.P12660795115896974848

`∑[a(n-1)-(a(n-4)-a(n-2))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A164315.P12660795115896974848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 1) - (f1 (n - 4) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P12660795115896974848

namespace A164315

/-- `∑[a(n-1)-(a(n-4)-a(n-2))]` -/
def P12660795115896974848.Spec : Prop :=
  ∀ n, P12660795115896974848.a n = A164315 n

end A164315

/-! ## A164315.P12309648337731373402

`∑[A134816(n+2)]`
-/

namespace A164315.P12309648337731373402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P12309648337731373402

namespace A164315

/-- `∑[A134816(n+2)]` -/
def P12309648337731373402.Spec : Prop :=
  ∀ n, P12309648337731373402.a n = A164315 n

end A164315

/-! ## A164315.P381585342095477159

`∑[A182097(n+3)]`
-/

namespace A164315.P381585342095477159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P381585342095477159

namespace A164315

/-- `∑[A182097(n+3)]` -/
def P381585342095477159.Spec : Prop :=
  ∀ n, P381585342095477159.a n = A164315 n

end A164315

/-! ## A164315.P6190711834482384344

`∑[A000931(n+6)]`
-/

namespace A164315.P6190711834482384344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P6190711834482384344

namespace A164315

/-- `∑[A000931(n+6)]` -/
def P6190711834482384344.Spec : Prop :=
  ∀ n, P6190711834482384344.a n = A164315 n

end A164315

/-! ## A164315.P5863076602111514465

`A054405(n+1)-1`
-/

namespace A164315.P5863076602111514465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (n + 1) - 1

end

end A164315.P5863076602111514465

namespace A164315

/-- `A054405(n+1)-1` -/
def P5863076602111514465.Spec : Prop :=
  ∀ n, P5863076602111514465.a n = A164315 n

end A164315

/-! ## A164315.P12501248454512569668

`A023434(n+4)-2`
-/

namespace A164315.P12501248454512569668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 4) - 2

end

end A164315.P12501248454512569668

namespace A164315

/-- `A023434(n+4)-2` -/
def P12501248454512569668.Spec : Prop :=
  ∀ n, P12501248454512569668.a n = A164315 n

end A164315

/-! ## A164315.P16999269134288255313

`A164001(n+4)-3`
-/

namespace A164315.P16999269134288255313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 4) - 3

end

end A164315.P16999269134288255313

namespace A164315

/-- `A164001(n+4)-3` -/
def P16999269134288255313.Spec : Prop :=
  ∀ n, P16999269134288255313.a n = A164315 n

end A164315

/-! ## A164315.P16104821198944020121

`A134816(n+7)-3`
-/

namespace A164315.P16104821198944020121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 7) - 3

end

end A164315.P16104821198944020121

namespace A164315

/-- `A134816(n+7)-3` -/
def P16104821198944020121.Spec : Prop :=
  ∀ n, P16104821198944020121.a n = A164315 n

end A164315

/-! ## A164315.P15961805140140530135

`∑[A228361(n+1)]+1`
-/

namespace A164315.P15961805140140530135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A164315.P15961805140140530135

namespace A164315

/-- `∑[A228361(n+1)]+1` -/
def P15961805140140530135.Spec : Prop :=
  ∀ n, P15961805140140530135.a n = A164315 n

end A164315

/-! ## A164315.P15243247067103711690

`∑[A052954(n+3)-1]`
-/

namespace A164315.P15243247067103711690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P15243247067103711690

namespace A164315

/-- `∑[A052954(n+3)-1]` -/
def P15243247067103711690.Spec : Prop :=
  ∀ n, P15243247067103711690.a n = A164315 n

end A164315

/-! ## A164315.P16956945506898405219

`∑[A127682(2*(n+1))]`
-/

namespace A164315.P16956945506898405219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P16956945506898405219

namespace A164315

/-- `∑[A127682(2*(n+1))]` -/
def P16956945506898405219.Spec : Prop :=
  ∀ n, P16956945506898405219.a n = A164315 n

end A164315

/-! ## A164315.P6648018522008807413

`∑[A068924(n+3)/2]`
-/

namespace A164315.P6648018522008807413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068924 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P6648018522008807413

namespace A164315

/-- `∑[A068924(n+3)/2]` -/
def P6648018522008807413.Spec : Prop :=
  ∀ n, P6648018522008807413.a n = (A164315 n : ℚ)

end A164315

/-! ## A164315.P10824365445580705041

`∑[abs(Δ[A077883(n+2)])]`
-/

namespace A164315.P10824365445580705041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P10824365445580705041

namespace A164315

/-- `∑[abs(Δ[A077883(n+2)])]` -/
def P10824365445580705041.Spec : Prop :=
  ∀ n, P10824365445580705041.a n = A164315 n

end A164315

/-! ## A164315.P14866296131039270232

`∑[abs(Δ[A023434(n+3)])]`
-/

namespace A164315.P14866296131039270232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P14866296131039270232

namespace A164315

/-- `∑[abs(Δ[A023434(n+3)])]` -/
def P14866296131039270232.Spec : Prop :=
  ∀ n, P14866296131039270232.a n = A164315 n

end A164315

/-! ## A164315.P2005813399801587390

`record[∑[A182097(n)]-A130130(n)]`
-/

namespace A164315.P2005813399801587390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A130130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164315.P2005813399801587390

namespace A164315

/-- `record[∑[A182097(n)]-A130130(n)]` -/
def P2005813399801587390.Spec : Prop :=
  ∀ n, P2005813399801587390.a n = A164315 n

end A164315

/-! ## A164315.P8949033392979999373

`∑[A023434(A289207(n+1))+1]`
-/

namespace A164315.P8949033392979999373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (A289207 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P8949033392979999373

namespace A164315

/-- `∑[A023434(A289207(n+1))+1]` -/
def P8949033392979999373.Spec : Prop :=
  ∀ n, P8949033392979999373.a n = A164315 n

end A164315

/-! ## A164315.P7476006461826608951

`∑[A098523(n)+A017899(n+1)]`
-/

namespace A164315.P7476006461826608951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098523 n + A017899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164315.P7476006461826608951

namespace A164315

/-- `∑[A098523(n)+A017899(n+1)]` -/
def P7476006461826608951.Spec : Prop :=
  ∀ n, P7476006461826608951.a n = A164315 n

end A164315

/-!
# A164316: Number of binary strings of length n with no substrings equal to 000, 001, or 010.

The programs for A164316, the canonical program `A164316.P2562151008344718311` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164316 has offset 0).

The definition of A164316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 602 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164316.P12866514260650039071

`ogf((1+x+2x^2)/(1-x-x^3))`
-/

namespace A164316.P12866514260650039071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -1, 0, -1] n

end

end A164316.P12866514260650039071

namespace A164316

/-- `ogf((1+x+2x^2)/(1-x-x^3))` -/
def P12866514260650039071.Spec : Prop :=
  ∀ n, P12866514260650039071.a n = A164316 n

end A164316

/-! ## A164316.P2562151008344718311

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164316

/-- `a(n-1)+a(n-3)` -/
def P2562151008344718311.Spec : Prop :=
  ∀ n, (P2562151008344718311.a n : ℤ) = A164316 n

theorem P2562151008344718311.correct : P2562151008344718311.Spec := by
  intro n
  simp only [A164316]

end A164316

/-! ## A164316.P13167539475081733865

`a(n-1)-floor(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A164316.P13167539475081733865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A164316.P13167539475081733865

namespace A164316

/-- `a(n-1)-floor(-a(n-3))` -/
def P13167539475081733865.Spec : Prop :=
  ∀ n, P13167539475081733865.a n = A164316 n

end A164316

/-! ## A164316.P3325177062168225499

`a(n-1)-ceil(-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A164316.P3325177062168225499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A164316.P3325177062168225499

namespace A164316

/-- `a(n-1)-ceil(-a(n-3))` -/
def P3325177062168225499.Spec : Prop :=
  ∀ n, P3325177062168225499.a n = A164316 n

end A164316

/-! ## A164316.P6236327656483064613

`A135851(n)+A097333(n+1)`
-/

namespace A164316.P6236327656483064613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 n + A097333 (n + 1)

end

end A164316.P6236327656483064613

namespace A164316

/-- `A135851(n)+A097333(n+1)` -/
def P6236327656483064613.Spec : Prop :=
  ∀ n, P6236327656483064613.a n = A164316 n

end A164316

/-! ## A164316.P8725437310031761039

`A097333(n+1)+Δ[A078012(n)]`
-/

namespace A164316.P8725437310031761039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (n + 1) + (f1 (n + 1) - f1 n)

end

end A164316.P8725437310031761039

namespace A164316

/-- `A097333(n+1)+Δ[A078012(n)]` -/
def P8725437310031761039.Spec : Prop :=
  ∀ n, P8725437310031761039.a n = A164316 n

end A164316

/-! ## A164316.P14752865892304373121

`A000930(n+2)+Δ[A000930(n)]`
-/

namespace A164316.P14752865892304373121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2) + (f1 (n + 1) - f1 n)

end

end A164316.P14752865892304373121

namespace A164316

/-- `A000930(n+2)+Δ[A000930(n)]` -/
def P14752865892304373121.Spec : Prop :=
  ∀ n, P14752865892304373121.a n = A164316 n

end A164316

/-! ## A164316.P4557593095015738826

`A078012(n+1)+record[A078012(n)]`
-/

namespace A164316.P4557593095015738826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164316.P4557593095015738826

namespace A164316

/-- `A078012(n+1)+record[A078012(n)]` -/
def P4557593095015738826.Spec : Prop :=
  ∀ n, P4557593095015738826.a n = A164316 n

end A164316

/-! ## A164316.P9830112254072464694

`A078012(n+1)+A068921(n+1)`
-/

namespace A164316.P9830112254072464694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1) + A068921 (n + 1)

end

end A164316.P9830112254072464694

namespace A164316

/-- `A078012(n+1)+A068921(n+1)` -/
def P9830112254072464694.Spec : Prop :=
  ∀ n, P9830112254072464694.a n = A164316 n

end A164316

/-! ## A164316.P6613879602699116185

`A058278(n+2)+A000930(n+1)`
-/

namespace A164316.P6613879602699116185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (n + 2) + A000930 (n + 1)

end

end A164316.P6613879602699116185

namespace A164316

/-- `A058278(n+2)+A000930(n+1)` -/
def P6613879602699116185.Spec : Prop :=
  ∀ n, P6613879602699116185.a n = A164316 n

end A164316

/-! ## A164316.P4359530754768452108

`A078012(n+1)+A000930(n+2)`
-/

namespace A164316.P4359530754768452108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1) + A000930 (n + 2)

end

end A164316.P4359530754768452108

namespace A164316

/-- `A078012(n+1)+A000930(n+2)` -/
def P4359530754768452108.Spec : Prop :=
  ∀ n, P4359530754768452108.a n = A164316 n

end A164316

/-! ## A164316.P5573172160622962929

`A135851(n+3)+A068921(n+1)`
-/

namespace A164316.P5573172160622962929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 3) + A068921 (n + 1)

end

end A164316.P5573172160622962929

namespace A164316

/-- `A135851(n+3)+A068921(n+1)` -/
def P5573172160622962929.Spec : Prop :=
  ∀ n, P5573172160622962929.a n = A164316 n

end A164316

/-! ## A164316.P9335812388990989346

`A179070(n+2)+A078012(n+2)`
-/

namespace A164316.P9335812388990989346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 2) + A078012 (n + 2)

end

end A164316.P9335812388990989346

namespace A164316

/-- `A179070(n+2)+A078012(n+2)` -/
def P9335812388990989346.Spec : Prop :=
  ∀ n, P9335812388990989346.a n = A164316 n

end A164316

/-! ## A164316.P10699408708190740545

`A135851(n+3)+A000930(n+2)`
-/

namespace A164316.P10699408708190740545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 3) + A000930 (n + 2)

end

end A164316.P10699408708190740545

namespace A164316

/-- `A135851(n+3)+A000930(n+2)` -/
def P10699408708190740545.Spec : Prop :=
  ∀ n, P10699408708190740545.a n = A164316 n

end A164316

/-! ## A164316.P7627788569432696550

`A277252(n+2)+A277252(n+3)`
-/

namespace A164316.P7627788569432696550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277252 (n + 2) + A277252 (n + 3)

end

end A164316.P7627788569432696550

namespace A164316

/-- `A277252(n+2)+A277252(n+3)` -/
def P7627788569432696550.Spec : Prop :=
  ∀ n, P7627788569432696550.a n = A164316 n

end A164316

/-! ## A164316.P4487383716696920971

`A226916(2*n+3)+A068921(n+1)`
-/

namespace A164316.P4487383716696920971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 3) + A068921 (n + 1)

end

end A164316.P4487383716696920971

namespace A164316

/-- `A226916(2*n+3)+A068921(n+1)` -/
def P4487383716696920971.Spec : Prop :=
  ∀ n, P4487383716696920971.a n = A164316 n

end A164316

/-! ## A164316.P3223901665026468110

`A226916(2*n+3)+A000930(n+2)`
-/

namespace A164316.P3223901665026468110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 3) + A000930 (n + 2)

end

end A164316.P3223901665026468110

namespace A164316

/-- `A226916(2*n+3)+A000930(n+2)` -/
def P3223901665026468110.Spec : Prop :=
  ∀ n, P3223901665026468110.a n = A164316 n

end A164316

/-! ## A164316.P878016658895396310

`A068921(n)+A068921(n)-A078012(n)`
-/

namespace A164316.P878016658895396310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n + (A068921 n - A078012 n)

end

end A164316.P878016658895396310

namespace A164316

/-- `A068921(n)+A068921(n)-A078012(n)` -/
def P878016658895396310.Spec : Prop :=
  ∀ n, P878016658895396310.a n = A164316 n

end A164316

/-! ## A164316.P14664429774945732823

`A068921(n+1)+A068921(n)-A000930(n)`
-/

namespace A164316.P14664429774945732823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) + (A068921 n - A000930 n)

end

end A164316.P14664429774945732823

namespace A164316

/-- `A068921(n+1)+A068921(n)-A000930(n)` -/
def P14664429774945732823.Spec : Prop :=
  ∀ n, P14664429774945732823.a n = A164316 n

end A164316

/-! ## A164316.P9120428127060202180

`A068921(n+1)+A013979(n)-A107458(n)`
-/

namespace A164316.P9120428127060202180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) + (A013979 n - A107458 n)

end

end A164316.P9120428127060202180

namespace A164316

/-- `A068921(n+1)+A013979(n)-A107458(n)` -/
def P9120428127060202180.Spec : Prop :=
  ∀ n, P9120428127060202180.a n = A164316 n

end A164316

/-!
# A164317: Number of binary strings of length n with no substrings equal to 000, 010, or 111.

The programs for A164317, the canonical program `A164317.P4890672788674657935` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164317 has offset 0).

The definition of A164317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164317.P4890672788674657935

`a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=6, a(5)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164317

/-- `a(n-3)+a(n-4)` -/
def P4890672788674657935.Spec : Prop :=
  ∀ n, (P4890672788674657935.a n : ℤ) = A164317 n

theorem P4890672788674657935.correct : P4890672788674657935.Spec := by
  intro n
  simp only [A164317]

end A164317

/-! ## A164317.P8845665170882818598

`A079398(n-1)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A164317.P8845665170882818598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A079398 (n - 1) + a (n - 1)

end

end A164317.P8845665170882818598

namespace A164317

/-- `A079398(n-1)+a(n-1)` -/
def P8845665170882818598.Spec : Prop :=
  ∀ n, P8845665170882818598.a n = A164317 n

end A164317

/-! ## A164317.P15875470011669705096

`∑[A079398(A014682(A004278(n+1)))]`
-/

namespace A164317.P15875470011669705096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (A014682 (A004278 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164317.P15875470011669705096

namespace A164317

/-- `∑[A079398(A014682(A004278(n+1)))]` -/
def P15875470011669705096.Spec : Prop :=
  ∀ n, P15875470011669705096.a n = A164317 n

end A164317

/-!
# A164318: Primes p such that the sum of divisors of p-1 is larger than 2*p.

The programs for A164318, the canonical program `A164318.P3164482500635630201` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164318 has offset 1).

The definition of A164318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164318.P1020400908378394705

`p?[(n+2)*A060862(n+1)]`
-/

namespace A164318.P1020400908378394705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164318.P1020400908378394705

namespace A164318

/-- `p?[(n+2)*A060862(n+1)]` -/
def P1020400908378394705.Spec : Prop :=
  ∀ n, P1020400908378394705.a n = A164318 (n + 1)

end A164318

/-! ## A164318.P3164482500635630201

`p?[(n+2)*A082551(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A164318

/-- `p?[(n+2)*A082551(n+1)]` -/
def P3164482500635630201.Spec : Prop :=
  ∀ n, P3164482500635630201.a n = A164318 (n + 1)

theorem P3164482500635630201.correct : P3164482500635630201.Spec := by
  intro n
  simp only [A164318, Nat.add_sub_cancel]

end A164318

/-! ## A164318.P14548659958145925290

`p?[2*A039725(n+1)+1]`
-/

namespace A164318.P14548659958145925290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039725 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164318.P14548659958145925290

namespace A164318

/-- `p?[2*A039725(n+1)+1]` -/
def P14548659958145925290.Spec : Prop :=
  ∀ n, P14548659958145925290.a n = A164318 (n + 1)

end A164318

/-! ## A164318.P1510962454267939961

`p?[lt[2*(n+2), A000203(n+1)]+2]`
-/

namespace A164318.P1510962454267939961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164318.P1510962454267939961

namespace A164318

/-- `p?[lt[2*(n+2), A000203(n+1)]+2]` -/
def P1510962454267939961.Spec : Prop :=
  ∀ n, (P1510962454267939961.a n : ℤ) = A164318 (n + 1)

end A164318

/-! ## A164318.P8919824401179799182

`record[A006530(lt[2*(n+2), A000203(n+1)]+2)]`
-/

namespace A164318.P8919824401179799182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164318.P8919824401179799182

namespace A164318

/-- `record[A006530(lt[2*(n+2), A000203(n+1)]+2)]` -/
def P8919824401179799182.Spec : Prop :=
  ∀ n, P8919824401179799182.a n = A164318 (n + 1)

end A164318

/-! ## A164318.P3920900572801485631

`p?[A005101(n+1)+1]`
-/

namespace A164318.P3920900572801485631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164318.P3920900572801485631

namespace A164318

/-- `p?[A005101(n+1)+1]` -/
def P3920900572801485631.Spec : Prop :=
  ∀ n, P3920900572801485631.a n = A164318 (n + 1)

end A164318

/-! ## A164318.P8950550081846210498

`record[A006530(A005101(n+1)+1)]`
-/

namespace A164318.P8950550081846210498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005101 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164318.P8950550081846210498

namespace A164318

/-- `record[A006530(A005101(n+1)+1)]` -/
def P8950550081846210498.Spec : Prop :=
  ∀ n, P8950550081846210498.a n = A164318 (n + 1)

end A164318

/-! ## A164318.P9472690942603907200

`record[A020639(A005101(n+1)+1)]`
-/

namespace A164318.P9472690942603907200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005101 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164318.P9472690942603907200

namespace A164318

/-- `record[A020639(A005101(n+1)+1)]` -/
def P9472690942603907200.Spec : Prop :=
  ∀ n, P9472690942603907200.a n = A164318 (n + 1)

end A164318

/-! ## A164318.P15326591529309573418

`p?[A349762(n+1)]`
-/

namespace A164318.P15326591529309573418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164318.P15326591529309573418

namespace A164318

/-- `p?[A349762(n+1)]` -/
def P15326591529309573418.Spec : Prop :=
  ∀ n, P15326591529309573418.a n = A164318 (n + 1)

end A164318

/-! ## A164318.P4701566765185158315

`filter[A349762(n+1), A010051(#)]`
-/

namespace A164318.P4701566765185158315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A164318.P4701566765185158315

namespace A164318

/-- `filter[A349762(n+1), A010051(#)]` -/
def P4701566765185158315.Spec : Prop :=
  ∀ n, P4701566765185158315.a n = A164318 (n + 1)

end A164318

/-! ## A164318.P9781904096529228778

`∩[A000040(n+1), A349762(n+1)]`
-/

namespace A164318.P9781904096529228778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164318.P9781904096529228778

namespace A164318

/-- `∩[A000040(n+1), A349762(n+1)]` -/
def P9781904096529228778.Spec : Prop :=
  ∀ n, (P9781904096529228778.a n : ℤ) = A164318 (n + 1)

end A164318

/-! ## A164318.P12496306374572841983

`∩[A004139(n+1), A349762(n+1)]`
-/

namespace A164318.P12496306374572841983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164318.P12496306374572841983

namespace A164318

/-- `∩[A004139(n+1), A349762(n+1)]` -/
def P12496306374572841983.Spec : Prop :=
  ∀ n, (P12496306374572841983.a n : ℤ) = A164318 (n + 1)

end A164318

/-! ## A164318.P2093060337292466043

`∩[A006005(n+1), A349762(n+1)]`
-/

namespace A164318.P2093060337292466043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164318.P2093060337292466043

namespace A164318

/-- `∩[A006005(n+1), A349762(n+1)]` -/
def P2093060337292466043.Spec : Prop :=
  ∀ n, (P2093060337292466043.a n : ℤ) = A164318 (n + 1)

end A164318

/-! ## A164318.P11905387807741567349

`∩[A008578(n+1), A349762(n+1)]`
-/

namespace A164318.P11905387807741567349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164318.P11905387807741567349

namespace A164318

/-- `∩[A008578(n+1), A349762(n+1)]` -/
def P11905387807741567349.Spec : Prop :=
  ∀ n, (P11905387807741567349.a n : ℤ) = A164318 (n + 1)

end A164318

/-! ## A164318.P11548007384842961567

`∩[A033946(n+1), A349762(n+1)]`
-/

namespace A164318.P11548007384842961567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164318.P11548007384842961567

namespace A164318

/-- `∩[A033946(n+1), A349762(n+1)]` -/
def P11548007384842961567.Spec : Prop :=
  ∀ n, (P11548007384842961567.a n : ℤ) = A164318 (n + 1)

end A164318

/-! ## A164318.P12801582379590294874

`∩[A045319(n+1), A349762(n+1)]`
-/

namespace A164318.P12801582379590294874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164318.P12801582379590294874

namespace A164318

/-- `∩[A045319(n+1), A349762(n+1)]` -/
def P12801582379590294874.Spec : Prop :=
  ∀ n, (P12801582379590294874.a n : ℤ) = A164318 (n + 1)

end A164318

/-! ## A164318.P15469832728819847462

`∩[A045344(n+1), A349762(n+1)]`
-/

namespace A164318.P15469832728819847462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164318.P15469832728819847462

namespace A164318

/-- `∩[A045344(n+1), A349762(n+1)]` -/
def P15469832728819847462.Spec : Prop :=
  ∀ n, (P15469832728819847462.a n : ℤ) = A164318 (n + 1)

end A164318

/-! ## A164318.P15736936496390972420

`∩[A046022(n+1), A349762(n+1)]`
-/

namespace A164318.P15736936496390972420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164318.P15736936496390972420

namespace A164318

/-- `∩[A046022(n+1), A349762(n+1)]` -/
def P15736936496390972420.Spec : Prop :=
  ∀ n, (P15736936496390972420.a n : ℤ) = A164318 (n + 1)

end A164318

/-!
# A164319: Primes p such that the sum of divisors of p+1 is larger than 2*p.

The programs for A164319, the canonical program `A164319.P7850389425374029552` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164319 has offset 1).

The definition of A164319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164319.P7850389425374029552

`record[p?[n%(n-A000203(n+1))]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A164319

/-- `record[p?[n%(n-A000203(n+1))]]` -/
def P7850389425374029552.Spec : Prop :=
  ∀ n, P7850389425374029552.a n = A164319 (n + 1)

theorem P7850389425374029552.correct : P7850389425374029552.Spec := by
  intro n
  simp only [A164319, Nat.add_sub_cancel]

end A164319

/-! ## A164319.P1168466846667494976

`eq[A302055(n), A378550(n+1)]`
-/

namespace A164319.P1168466846667494976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164319.P1168466846667494976

namespace A164319

/-- `eq[A302055(n), A378550(n+1)]` -/
def P1168466846667494976.Spec : Prop :=
  ∀ n, (P1168466846667494976.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P8777636067142565242

`p?[lt[n*A020639(n+1), A000203(n+1)]]`
-/

namespace A164319.P8777636067142565242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020639 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164319.P8777636067142565242

namespace A164319

/-- `p?[lt[n*A020639(n+1), A000203(n+1)]]` -/
def P8777636067142565242.Spec : Prop :=
  ∀ n, (P8777636067142565242.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P694946321423019739

`p?[A103288(n+1)-1]`
-/

namespace A164319.P694946321423019739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164319.P694946321423019739

namespace A164319

/-- `p?[A103288(n+1)-1]` -/
def P694946321423019739.Spec : Prop :=
  ∀ n, P694946321423019739.a n = A164319 (n + 1)

end A164319

/-! ## A164319.P9936923153983814535

`p?[lt[2*n, A000203(n+1)]]`
-/

namespace A164319.P9936923153983814535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164319.P9936923153983814535

namespace A164319

/-- `p?[lt[2*n, A000203(n+1)]]` -/
def P9936923153983814535.Spec : Prop :=
  ∀ n, (P9936923153983814535.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P6601800587495492979

`p?[lt[A000027(n+1)-A000203(n+1)+n+1, 2]]`
-/

namespace A164319.P6601800587495492979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A000203 (n + 1) + (n + 1 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164319.P6601800587495492979

namespace A164319

/-- `p?[lt[A000027(n+1)-A000203(n+1)+n+1, 2]]` -/
def P6601800587495492979.Spec : Prop :=
  ∀ n, (P6601800587495492979.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P7254333637718030796

`eq[A328771(n), A378550(n+1)]`
-/

namespace A164319.P7254333637718030796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164319.P7254333637718030796

namespace A164319

/-- `eq[A328771(n), A378550(n+1)]` -/
def P7254333637718030796.Spec : Prop :=
  ∀ n, (P7254333637718030796.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P13023987804557456621

`eq[A328772(n), A378550(n+1)]`
-/

namespace A164319.P13023987804557456621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164319.P13023987804557456621

namespace A164319

/-- `eq[A328772(n), A378550(n+1)]` -/
def P13023987804557456621.Spec : Prop :=
  ∀ n, (P13023987804557456621.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P11346227499957815857

`p?[lt[A033879(n+1), 2]]`
-/

namespace A164319.P11346227499957815857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164319.P11346227499957815857

namespace A164319

/-- `p?[lt[A033879(n+1), 2]]` -/
def P11346227499957815857.Spec : Prop :=
  ∀ n, (P11346227499957815857.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P17675052780550019968

`p?[lt[2*(n+1)-(A155085(n+1)-n)+1, 2]]`
-/

namespace A164319.P17675052780550019968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (A155085 (n + 1) - (n : ℤ)) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164319.P17675052780550019968

namespace A164319

/-- `p?[lt[2*(n+1)-(A155085(n+1)-n)+1, 2]]` -/
def P17675052780550019968.Spec : Prop :=
  ∀ n, (P17675052780550019968.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P11868358748609062574

`eq[A328847(n), A378550(n+1)]`
-/

namespace A164319.P11868358748609062574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164319.P11868358748609062574

namespace A164319

/-- `eq[A328847(n), A378550(n+1)]` -/
def P11868358748609062574.Spec : Prop :=
  ∀ n, (P11868358748609062574.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P13862936651299751616

`eq[A328848(n), A378550(n+1)]`
-/

namespace A164319.P13862936651299751616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328848 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164319.P13862936651299751616

namespace A164319

/-- `eq[A328848(n), A378550(n+1)]` -/
def P13862936651299751616.Spec : Prop :=
  ∀ n, (P13862936651299751616.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P13224336651652575380

`eq[A167866(n), A378550(n+1)]`
-/

namespace A164319.P13224336651652575380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164319.P13224336651652575380

namespace A164319

/-- `eq[A167866(n), A378550(n+1)]` -/
def P13224336651652575380.Spec : Prop :=
  ∀ n, (P13224336651652575380.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P8564612341495342851

`eq[A175126(n), A378550(n+1)]`
-/

namespace A164319.P8564612341495342851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164319.P8564612341495342851

namespace A164319

/-- `eq[A175126(n), A378550(n+1)]` -/
def P8564612341495342851.Spec : Prop :=
  ∀ n, (P8564612341495342851.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P13596639215048957820

`p?[lt[A325978(n+1), A325977(n+1)+2]]`
-/

namespace A164319.P13596639215048957820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164319.P13596639215048957820

namespace A164319

/-- `p?[lt[A325978(n+1), A325977(n+1)+2]]` -/
def P13596639215048957820.Spec : Prop :=
  ∀ n, (P13596639215048957820.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P13482809482456686059

`p?[lt[n+1-(A326126(n+1)-A326128(n+1)), 2]]`
-/

namespace A164319.P13482809482456686059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A326126 (n + 1) - A326128 (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164319.P13482809482456686059

namespace A164319

/-- `p?[lt[n+1-(A326126(n+1)-A326128(n+1)), 2]]` -/
def P13482809482456686059.Spec : Prop :=
  ∀ n, (P13482809482456686059.a n : ℤ) = A164319 (n + 1)

end A164319

/-! ## A164319.P15674323337397433202

`p?[A107912(n+2)]`
-/

namespace A164319.P15674323337397433202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107912 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164319.P15674323337397433202

namespace A164319

/-- `p?[A107912(n+2)]` -/
def P15674323337397433202.Spec : Prop :=
  ∀ n, P15674323337397433202.a n = A164319 (n + 1)

end A164319

/-! ## A164319.P16222939280136054967

`filter[A107912(n+2), A010051(#)]`
-/

namespace A164319.P16222939280136054967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107912 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A164319.P16222939280136054967

namespace A164319

/-- `filter[A107912(n+2), A010051(#)]` -/
def P16222939280136054967.Spec : Prop :=
  ∀ n, P16222939280136054967.a n = A164319 (n + 1)

end A164319

/-! ## A164319.P704839981862501465

`filter[A107912(n+2), A323152(#)]`
-/

namespace A164319.P704839981862501465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107912 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A164319.P704839981862501465

namespace A164319

/-- `filter[A107912(n+2), A323152(#)]` -/
def P704839981862501465.Spec : Prop :=
  ∀ n, P704839981862501465.a n = A164319 (n + 1)

end A164319

/-! ## A164319.P8037937928212991855

`filter[A107912(n+2), A323153(#)]`
-/

namespace A164319.P8037937928212991855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107912 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A164319.P8037937928212991855

namespace A164319

/-- `filter[A107912(n+2), A323153(#)]` -/
def P8037937928212991855.Spec : Prop :=
  ∀ n, P8037937928212991855.a n = A164319 (n + 1)

end A164319

/-!
# A164320: Primes p such that sums of divisors of the two adjacent integers are each > 2*p.

The programs for A164320, the canonical program `A164320.P3487527903107455350` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164320 has offset 1).

The definition of A164320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164320.P3487527903107455350

`∩[A164318(n+1), A164319(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A164320

/-- `∩[A164318(n+1), A164319(n+1)]` -/
def P3487527903107455350.Spec : Prop :=
  ∀ n, (P3487527903107455350.a n : ℤ) = A164320 (n + 1)

theorem P3487527903107455350.correct : P3487527903107455350.Spec := by
  intro n
  simp only [A164320, Nat.add_sub_cancel]

end A164320

/-! ## A164320.P16114322301724187369

`∩[A164319(n+1), A349762(n+1)]`
-/

namespace A164320.P16114322301724187369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164320.P16114322301724187369

namespace A164320

/-- `∩[A164319(n+1), A349762(n+1)]` -/
def P16114322301724187369.Spec : Prop :=
  ∀ n, (P16114322301724187369.a n : ℤ) = A164320 (n + 1)

end A164320

/-! ## A164320.P13827138601143742135

`∩[A107912(n+1), A164318(n+1)]`
-/

namespace A164320.P13827138601143742135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164320.P13827138601143742135

namespace A164320

/-- `∩[A107912(n+1), A164318(n+1)]` -/
def P13827138601143742135.Spec : Prop :=
  ∀ n, (P13827138601143742135.a n : ℤ) = A164320 (n + 1)

end A164320

/-! ## A164320.P2417143807212819681

`∩[A164318(n+1), lt[n-1, A001065(n+1)]]`
-/

namespace A164320.P2417143807212819681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A164320.P2417143807212819681

namespace A164320

/-- `∩[A164318(n+1), lt[n-1, A001065(n+1)]]` -/
def P2417143807212819681.Spec : Prop :=
  ∀ n, (P2417143807212819681.a n : ℤ) = A164320 (n + 1)

end A164320

/-! ## A164320.P15704276765506778719

`or(A221167(2*(∑[n]+1)), A276049(n+1))`
-/

namespace A164320.P15704276765506778719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221167 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))) (A276049 (n + 1))

end

end A164320.P15704276765506778719

namespace A164320

/-- `or(A221167(2*(∑[n]+1)), A276049(n+1))` -/
def P15704276765506778719.Spec : Prop :=
  ∀ n, P15704276765506778719.a n = A164320 (n + 1)

end A164320

/-!
# A164325: a(n) is the smallest number m such that (2*k-1)*m+1 is prime for all 0

The programs for A164325, there is no canonical definition to state claims against.
-/

/-! ## A164325.P13365448816054625497

`A175566(A028310(n))-A054977(n)`
-/

namespace A164325.P13365448816054625497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175566 (A028310 n).toNat - A054977 n

end

end A164325.P13365448816054625497

/-! ## A164325.P8128674858229491702

`A175566(A233583(n+1))-A054977(n)`
-/

namespace A164325.P8128674858229491702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175566 (A233583 (n + 1)).toNat - A054977 n

end

end A164325.P8128674858229491702

/-! ## A164325.P9572582151634955000

`A175566(A233583(n+1))-A000034(A177917(n+1))`
-/

namespace A164325.P9572582151634955000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175566 (A233583 (n + 1)).toNat - A000034 (A177917 (n + 1)).toNat

end

end A164325.P9572582151634955000

/-!
# A164326: a(n) is the smallest number m such that (2k-1)m - 1 is prime for all 0 < k < n+1.

The programs for A164326, there is no canonical definition to state claims against.
-/

/-! ## A164326.P11653289523618501831

`p?[A056686(A188002(n+1))]+1`
-/

namespace A164326.P11653289523618501831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056686 (A188002 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A164326.P11653289523618501831

/-!
# A164327: a(n) is the smallest n-digit term of A158594 and zero if there is no such number.

The programs for A164327, there is no canonical definition to state claims against.
-/

/-! ## A164327.P16686157765880121634

`or(1, A297065(A095263(n+1)))`
-/

namespace A164327.P16686157765880121634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297065 (A095263 (n + 1)).toNat)

end

end A164327.P16686157765880121634

/-!
# A164329: Numbers which yield a prime whenever a zero is inserted between any two digits.

The programs for A164329, there is no canonical definition to state claims against.
-/

/-! ## A164329.P10378360882507887361

`∪[A215417(n+1), A216169(n+1)]`
-/

namespace A164329.P10378360882507887361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164329.P10378360882507887361

/-! ## A164329.P16492664413245586595

`A050674(A121684(n+1)%A154562(2*n+5))`
-/

namespace A164329.P16492664413245586595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (Int.tmod (A121684 (n + 1)) (A154562 (2 * n + 5))).toNat

end

end A164329.P16492664413245586595

/-! ## A164329.P16152502304994383875

`A053392(p?[A055649(n+8)])`
-/

namespace A164329.P16152502304994383875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A164329.P16152502304994383875

/-! ## A164329.P7796520092268309926

`A076314(p?[A055649(n+8)])`
-/

namespace A164329.P7796520092268309926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A164329.P7796520092268309926

/-! ## A164329.P10279101473634237773

`∩[A050674(n+1), A346724(n+1)]`
-/

namespace A164329.P10279101473634237773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164329.P10279101473634237773

/-!
# A164333: Primes prime(k) such that all integers in the interval [(prime(k-1)+1)/2, (prime(k)-1)/2] are composite numbers.

The programs for A164333, there is no canonical definition to state claims against.
-/

/-! ## A164333.P17784672750054906645

`A194598(n+3)`
-/

namespace A164333.P17784672750054906645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194598 (n + 3)

end

end A164333.P17784672750054906645

/-! ## A164333.P8407835876764394584

`A003961(A164368(n+2))`
-/

namespace A164333.P8407835876764394584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A164368 (n + 2)).toNat

end

end A164333.P8407835876764394584

/-! ## A164333.P16622038321216560662

`p?[A283980(A164368(n+1))]`
-/

namespace A164333.P16622038321216560662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283980 (A164368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164333.P16622038321216560662

/-! ## A164333.P2211493400099120420

`p?[A016726(A006254(n+2))]`
-/

namespace A164333.P2211493400099120420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016726 (A006254 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164333.P2211493400099120420

/-! ## A164333.P15861792349767266183

`A151800(A164368(n+2)+1)`
-/

namespace A164333.P15861792349767266183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A164368 (n + 2) + 1).toNat

end

end A164333.P15861792349767266183

/-! ## A164333.P10860352534021638413

`record[A194598(A052938(A004277(n)))]`
-/

namespace A164333.P10860352534021638413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194598 (A052938 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164333.P10860352534021638413

/-! ## A164333.P576208343637460357

`record[A194598(A052938(A008611(n)))]`
-/

namespace A164333.P576208343637460357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194598 (A052938 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164333.P576208343637460357

/-! ## A164333.P14327533905824409132

`record[A194598(A052938(A052938(n)))]`
-/

namespace A164333.P14327533905824409132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194598 (A052938 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164333.P14327533905824409132

/-!
# A164334: Quartic recurrence sequence a(0) = 1, a(n) = n*a(n-1)^4.

The programs for A164334, the canonical program `A164334.P815827393990397805` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164334 has offset 0).

The definition of A164334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)^4` (program `A164334.P815827393990397805`, by `A164334.P815827393990397805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164334.P815827393990397805

`n*a(n-1)^4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164334

/-- `n*a(n-1)^4` -/
def P815827393990397805.Spec : Prop :=
  ∀ n, (P815827393990397805.a n : ℤ) = A164334 n

theorem P815827393990397805.correct : P815827393990397805.Spec := by
  intro n
  simp only [A164334]

end A164334

/-!
# A164335: Quintic recurrence sequence a(0) = 1, a(n) = n*a(n-1)^5.

The programs for A164335, the canonical program `A164335.P14249486389663481016` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164335 has offset 0).

The definition of A164335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)^5` (program `A164335.P14249486389663481016`, by `A164335.P14249486389663481016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164335.P14249486389663481016

`n*a(n-1)^5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164335

/-- `n*a(n-1)^5` -/
def P14249486389663481016.Spec : Prop :=
  ∀ n, (P14249486389663481016.a n : ℤ) = A164335 n

theorem P14249486389663481016.correct : P14249486389663481016.Spec := by
  intro n
  simp only [A164335]

end A164335

/-!
# A164336: a(1)=1. Thereafter, all terms are primes raised to the values of earlier terms of the sequence.

The programs for A164336, the canonical program `A164336.P8542371766919917307` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164336 has offset 1).

The definition of A164336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164336.P8542371766919917307

`A096165(n-a(val(n, n+1))+1)` with `a(0)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A164336

/-- `A096165(n-a(val(n, n+1))+1)` -/
def P8542371766919917307.Spec : Prop :=
  ∀ n, P8542371766919917307.a n = A164336 (n + 1)

theorem P8542371766919917307.correct : P8542371766919917307.Spec := by
  intro n
  simp only [A164336, Nat.add_sub_cancel]

end A164336

/-! ## A164336.P1099399877051243800

`∪[A096165(n+1), A016924(n)]`
-/

namespace A164336.P1099399877051243800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164336.P1099399877051243800

namespace A164336

/-- `∪[A096165(n+1), A016924(n)]` -/
def P1099399877051243800.Spec : Prop :=
  ∀ n, (P1099399877051243800.a n : ℤ) = A164336 (n + 1)

end A164336

/-! ## A164336.P2918975506917899113

`∪[A096165(n+1), A017080(n)]`
-/

namespace A164336.P2918975506917899113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164336.P2918975506917899113

namespace A164336

/-- `∪[A096165(n+1), A017080(n)]` -/
def P2918975506917899113.Spec : Prop :=
  ∀ n, (P2918975506917899113.a n : ℤ) = A164336 (n + 1)

end A164336

/-! ## A164336.P9377220327187206637

`∪[A096165(n+1), A017284(n)]`
-/

namespace A164336.P9377220327187206637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164336.P9377220327187206637

namespace A164336

/-- `∪[A096165(n+1), A017284(n)]` -/
def P9377220327187206637.Spec : Prop :=
  ∀ n, (P9377220327187206637.a n : ℤ) = A164336 (n + 1)

end A164336

/-! ## A164336.P1750843648340941129

`record[A020639(n)^a(A001222(n))]` with `a(0)=1`
-/

namespace A164336.P1750843648340941129
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (A020639 n : ℝ) ^ (f1 (A001222 n).toNat)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164336.P1750843648340941129

namespace A164336

/-- `record[A020639(n)^a(A001222(n))]` -/
def P1750843648340941129.Spec : Prop :=
  ∀ n, P1750843648340941129.a n = (A164336 (n + 1) : ℝ)

end A164336

/-! ## A164336.P12981211801677074443

`record[A323129(n+1)]`
-/

namespace A164336.P12981211801677074443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164336.P12981211801677074443

namespace A164336

/-- `record[A323129(n+1)]` -/
def P12981211801677074443.Spec : Prop :=
  ∀ n, P12981211801677074443.a n = A164336 (n + 1)

end A164336

/-! ## A164336.P2849431790097213075

`record[A323130(n+1)]`
-/

namespace A164336.P2849431790097213075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164336.P2849431790097213075

namespace A164336

/-- `record[A323130(n+1)]` -/
def P2849431790097213075.Spec : Prop :=
  ∀ n, P2849431790097213075.a n = A164336 (n + 1)

end A164336

/-! ## A164336.P1554935317794236226

`eq[1, A064372(n+1)]+1`
-/

namespace A164336.P1554935317794236226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A164336.P1554935317794236226

namespace A164336

/-- `eq[1, A064372(n+1)]+1` -/
def P1554935317794236226.Spec : Prop :=
  ∀ n, (P1554935317794236226.a n : ℤ) = A164336 (n + 1)

end A164336

/-! ## A164336.P10303774549692852400

`record[A014963(n)^a(A001222(n))]` with `a(0)=1`
-/

namespace A164336.P10303774549692852400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (A014963 n : ℝ) ^ (f1 (A001222 n).toNat)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164336.P10303774549692852400

namespace A164336

/-- `record[A014963(n)^a(A001222(n))]` -/
def P10303774549692852400.Spec : Prop :=
  ∀ n, P10303774549692852400.a n = (A164336 (n + 1) : ℝ)

end A164336

/-! ## A164336.P16825113130610383621

`eq[A001221(A190867(n+1)+1), A028234(n+1)]+1`
-/

namespace A164336.P16825113130610383621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A190867 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164336.P16825113130610383621

namespace A164336

/-- `eq[A001221(A190867(n+1)+1), A028234(n+1)]+1` -/
def P16825113130610383621.Spec : Prop :=
  ∀ n, (P16825113130610383621.a n : ℤ) = A164336 (n + 1)

end A164336

/-! ## A164336.P12921145689153809461

`record[A394674(n+1)]`
-/

namespace A164336.P12921145689153809461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164336.P12921145689153809461

namespace A164336

/-- `record[A394674(n+1)]` -/
def P12921145689153809461.Spec : Prop :=
  ∀ n, P12921145689153809461.a n = A164336 (n + 1)

end A164336

/-!
# A164337: Those powers of primes that are not in sequence A164336.

The programs for A164337, there is no canonical definition to state claims against.
-/

/-! ## A164337.P5950125107983710278

`A164345(log(7^((n+1)/log(7)))+1)`
-/

namespace A164337.P5950125107983710278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164345 (SequenceMachineLib.roundAway (Real.log ((7 : ℝ) ^ ((n + 1 : ℝ) / Real.log (7 : ℝ))) + 1)).toNat

end

end A164337.P5950125107983710278

/-! ## A164337.P13514387789426383226

`A164345(n+2)+A010051(A001651(n+1)²)`
-/

namespace A164337.P13514387789426383226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164345 (n + 2) + A010051 (A001651 (n + 1) ^ 2).toNat

end

end A164337.P13514387789426383226

/-! ## A164337.P12345187614966816961

`A164357(A164385(n+1))+A164345(n+2)`
-/

namespace A164337.P12345187614966816961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164357 (A164385 (n + 1)).toNat + A164345 (n + 2)

end

end A164337.P12345187614966816961

/-! ## A164337.P6053389447994000119

`A276689(A004526(n)²)+A164345(n+2)`
-/

namespace A164337.P6053389447994000119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A004526 n ^ 2).toNat + A164345 (n + 2)

end

end A164337.P6053389447994000119

/-! ## A164337.P13947441551672129826

`A276689(A013928(n+1)²)+A164345(n+2)`
-/

namespace A164337.P13947441551672129826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A013928 (n + 1) ^ 2).toNat + A164345 (n + 2)

end

end A164337.P13947441551672129826

/-! ## A164337.P3043943418400417184

`∩[A088247(n+1), A164345(n+1)]`
-/

namespace A164337.P3043943418400417184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164337.P3043943418400417184

/-! ## A164337.P18439492386696573622

`∩[A088248(n+1), A164345(n+1)]`
-/

namespace A164337.P18439492386696573622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164337.P18439492386696573622

/-! ## A164337.P7806400072914869999

`∩[A164345(n+1), A246549(n+1)]`
-/

namespace A164337.P7806400072914869999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164337.P7806400072914869999

/-! ## A164337.P7177361521735010440

`A009531(A107171(n+1))*A164345(n+2)`
-/

namespace A164337.P7177361521735010440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A107171 (n + 1)).toNat * A164345 (n + 2)

end

end A164337.P7177361521735010440

/-! ## A164337.P4270496966993065293

`record[A164345(A033810(A344180(n)))]`
-/

namespace A164337.P4270496966993065293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164345 (A033810 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164337.P4270496966993065293

/-! ## A164337.P6137729050700944998

`A276689((9-n)²)+A164345(n+2)`
-/

namespace A164337.P6137729050700944998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 ((9 - (n : ℤ)) ^ 2).toNat + A164345 (n + 2)

end

end A164337.P6137729050700944998

/-! ## A164337.P9386371640569859701

`A001222(A077317(n+1))*A164345(n+2)`
-/

namespace A164337.P9386371640569859701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077317 (n + 1)).toNat * A164345 (n + 2)

end

end A164337.P9386371640569859701

/-!
# A164339: Write down the primes dividing n (with repetition) in an exponent tower (see comment). a(n) = the smallest possible value of such a tower.

The programs for A164339, there is no canonical definition to state claims against.
-/

/-! ## A164339.P17486370886148968205

`A088444(n+1)^A088445(A077168(n))`
-/

namespace A164339.P17486370886148968205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088444 (n + 1) : ℚ) ^ (A088445 (A077168 n).toNat : ℤ)

end

end A164339.P17486370886148968205

/-! ## A164339.P2046145973217432016

`A118759(A088444(n+1)^A088445(n+1))`
-/

namespace A164339.P2046145973217432016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.roundAway ((A088444 (n + 1) : ℚ) ^ (A088445 (n + 1) : ℤ))).toNat

end

end A164339.P2046145973217432016

/-! ## A164339.P6360212611837609932

`A006530(gcd(A077168(n), A132097(n)))^A088445(n+1)`
-/

namespace A164339.P6360212611837609932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (Int.gcd (A077168 n) (A132097 n)) : ℚ) ^ (A088445 (n + 1) : ℤ)

end

end A164339.P6360212611837609932

/-! ## A164339.P18119071179278004240

`(A006530(A077168(n))-A318880(n+1))^A088445(n+1)`
-/

namespace A164339.P18119071179278004240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (A077168 n).toNat - A318880 (n + 1) : ℚ) ^ (A088445 (n + 1) : ℤ)

end

end A164339.P18119071179278004240

/-! ## A164339.P18430033680035174116

`(A006530(n+1)-A007153(A288324(n+3)))^A088445(n+1)`
-/

namespace A164339.P18430033680035174116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) - A007153 (A288324 (n + 3)).toNat : ℚ) ^ (A088445 (n + 1) : ℤ)

end

end A164339.P18430033680035174116

/-!
# A164342: Row sums of table A164341.

The programs for A164342, there is no canonical definition to state claims against.
-/

/-! ## A164342.P12377134843239545650

`A214418(n+1)%p?[2^n-1]`
-/

namespace A164342.P12377134843239545650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214418 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A164342.P12377134843239545650

/-! ## A164342.P9483770649884918287

`A214418(A024646(n+1))`
-/

namespace A164342.P9483770649884918287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214418 (A024646 (n + 1)).toNat

end

end A164342.P9483770649884918287

/-! ## A164342.P4860392646509840751

`A214418(A024647(n+1))`
-/

namespace A164342.P4860392646509840751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214418 (A024647 (n + 1)).toNat

end

end A164342.P4860392646509840751

/-!
# A164343: A positive integer is included if it is a square that contains the same number of 0's as 1's when represented in binary.

The programs for A164343, there is no canonical definition to state claims against.
-/

/-! ## A164343.P2917031933326128115

`A164344(n+1)²`
-/

namespace A164343.P2917031933326128115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164344 (n + 1) ^ 2

end

end A164343.P2917031933326128115

/-! ## A164343.P4379907657820290689

`A164344(n+1)^A001316(A001316(n))`
-/

namespace A164343.P4379907657820290689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164344 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A164343.P4379907657820290689

/-! ## A164343.P2447083921098162115

`A164344(n+1)^A000005(A020484(n))`
-/

namespace A164343.P2447083921098162115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164344 (n + 1) : ℚ) ^ (A000005 (A020484 n).toNat : ℤ)

end

end A164343.P2447083921098162115

/-! ## A164343.P11970027440939872604

`A164344(A000027(n+1))*A164344(n+1)`
-/

namespace A164343.P11970027440939872604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164344 (A000027 (n + 1)).toNat * A164344 (n + 1)

end

end A164343.P11970027440939872604

/-! ## A164343.P11814642896283288505

`A164344(n+1)^A001222(A001358(n+1))`
-/

namespace A164343.P11814642896283288505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164344 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A164343.P11814642896283288505

/-! ## A164343.P16561775170289549370

`A164344(n+1)^A107609(A001511(n+1)+1)`
-/

namespace A164343.P16561775170289549370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164344 (n + 1) : ℚ) ^ (A107609 (A001511 (n + 1) + 1).toNat : ℤ)

end

end A164343.P16561775170289549370

/-! ## A164343.P5568002726927198375

`eq[A159918(n), A214560(n)]²`
-/

namespace A164343.P5568002726927198375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A164343.P5568002726927198375

/-! ## A164343.P13159015336641215556

`A164344(n+1)^A000005(A277049(n+1))`
-/

namespace A164343.P13159015336641215556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164344 (n + 1) : ℚ) ^ (A000005 (A277049 (n + 1)).toNat : ℤ)

end

end A164343.P13159015336641215556

/-! ## A164343.P14222072765930035961

`A164344(n+1)^A043529(A337573(n+1))`
-/

namespace A164343.P14222072765930035961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164344 (n + 1) : ℚ) ^ (A043529 (A337573 (n + 1)).toNat : ℤ)

end

end A164343.P14222072765930035961

/-! ## A164343.P8434432349663229043

`A002620(2*A164344(n+1))`
-/

namespace A164343.P8434432349663229043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A164344 (n + 1)).toNat

end

end A164343.P8434432349663229043

/-! ## A164343.P4654444306000176707

`A164344(n+1)^A043529(A125056(n+1))`
-/

namespace A164343.P4654444306000176707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164344 (n + 1) : ℚ) ^ (A043529 (A125056 (n + 1)).toNat : ℤ)

end

end A164343.P4654444306000176707

/-! ## A164343.P15274358947125718135

`A164344(n+1)*A164344(A195663(∑[n]))`
-/

namespace A164343.P15274358947125718135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164344 (n + 1) * A164344 (A195663 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A164343.P15274358947125718135

/-!
# A164344: Positive integers whose square contains the same number of 0's as 1's when represented in binary.

The programs for A164344, there is no canonical definition to state claims against.
-/

/-! ## A164344.P2355644073183836548

`sqrt(A164343(n+1))`
-/

namespace A164344.P2355644073183836548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A164343 (n + 1) : ℝ)

end

end A164344.P2355644073183836548

/-! ## A164344.P9751094268677021286

`root(A164343(n+1), and(2, A010704(n)))`
-/

namespace A164344.P9751094268677021286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A164343 (n + 1) : ℝ) ^ (1 / (Int.land 2 (A010704 n) : ℝ))

end

end A164344.P9751094268677021286

/-! ## A164344.P12469438859419626989

`root(A164343(n+1), and(2, A164302(n+1)))`
-/

namespace A164344.P12469438859419626989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A164343 (n + 1) : ℝ) ^ (1 / (Int.land 2 (A164302 (n + 1)) : ℝ))

end

end A164344.P12469438859419626989

/-! ## A164344.P6805644583617443762

`root(A164343(n+1), A001316(A001316(n)))`
-/

namespace A164344.P6805644583617443762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A164343 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A164344.P6805644583617443762

/-! ## A164344.P7582886794909913452

`root(A164343(n+1), 2%A164294(n+1))`
-/

namespace A164344.P7582886794909913452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A164343 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A164294 (n + 1)) : ℝ))

end

end A164344.P7582886794909913452

/-! ## A164344.P5788624167674826682

`eq[A159918(n), A214560(n)]`
-/

namespace A164344.P5788624167674826682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164344.P5788624167674826682

/-! ## A164344.P13485347779555108964

`root(A164343(n+1), A102376(A102376(n)))²`
-/

namespace A164344.P13485347779555108964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A164343 (n + 1) : ℝ) ^ (1 / (A102376 (A102376 n).toNat : ℝ))) ^ 2

end

end A164344.P13485347779555108964

/-!
# A164345: Powers of primes where the exponents are not powers of primes.

The programs for A164345, there is no canonical definition to state claims against.
-/

/-! ## A164345.P4578354934199843513

`A164337(A028310(n))%A177019(n)`
-/

namespace A164345.P4578354934199843513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164337 (A028310 n).toNat) (A177019 n)

end

end A164345.P4578354934199843513

/-! ## A164345.P13239961904529540301

`A164337(A000007(n)+n)%A177019(n)`
-/

namespace A164345.P13239961904529540301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164337 (A000007 n + (n : ℤ)).toNat) (A177019 n)

end

end A164345.P13239961904529540301

/-! ## A164345.P2249208741505318314

`∏{e}[2^n, A164337(#)]`
-/

namespace A164345.P2249208741505318314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A164337 (Nat.factorization (f1 n) p)

end

end A164345.P2249208741505318314

/-! ## A164345.P7703713420920881573

`A164337(n-A353753(a(n-1)))` with `a(0)=1`
-/

namespace A164345.P7703713420920881573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164337 ((n : ℤ) - A353753 (a (n - 1)).toNat).toNat

end

end A164345.P7703713420920881573

/-!
# A164346: a(n) = 3 * 4^n.

The programs for A164346, the canonical program `A164346.P15391135698532929339` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164346 has offset 0).

The definition of A164346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*4^n` (program `A164346.P15391135698532929339`, by `A164346.P15391135698532929339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164346.P15391135698532929339

`3*4^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164346

/-- `3*4^n` -/
def P15391135698532929339.Spec : Prop :=
  ∀ n, (P15391135698532929339.a n : ℤ) = A164346 n

theorem P15391135698532929339.correct : P15391135698532929339.Spec := by
  intro n
  simp only [A164346]

end A164346

/-!
# A164347: The n-th term is the minimum number x such that x/Totient(x) >= n.

The programs for A164347, there is no canonical definition to state claims against.
-/

/-! ## A164347.P16701251188552460898

`A104588(3^n+3)`
-/

namespace A164347.P16701251188552460898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104588 (3 ^ n + 3)

end

end A164347.P16701251188552460898

/-! ## A164347.P6665112694088784315

`A002110(A256969(n))`
-/

namespace A164347.P6665112694088784315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A256969 n).toNat

end

end A164347.P6665112694088784315

/-! ## A164347.P13450327822038375892

`A034386(A061556(n)+1)`
-/

namespace A164347.P13450327822038375892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A061556 n + 1).toNat

end

end A164347.P13450327822038375892

/-! ## A164347.P14682866671818040183

`A034386(A083658(n)+1)`
-/

namespace A164347.P14682866671818040183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A083658 n + 1).toNat

end

end A164347.P14682866671818040183

/-! ## A164347.P1789751853690219041

`A034386(A141602(n+1))`
-/

namespace A164347.P1789751853690219041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A141602 (n + 1)).toNat

end

end A164347.P1789751853690219041

/-!
# A164349: The limit of the string "0, 1" under the operation 'repeat string twice and remove last symbol'.

The programs for A164349, the canonical program `A164349.P4841108181734445144` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164349 has offset 0).

The definition of A164349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164349.P10341157008797756717

`char[∑[A101403(n)]]`
-/

namespace A164349.P10341157008797756717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164349.P10341157008797756717

namespace A164349

/-- `char[∑[A101403(n)]]` -/
def P10341157008797756717.Spec : Prop :=
  ∀ n, (P10341157008797756717.a n : ℤ) = A164349 n

end A164349

/-! ## A164349.P11801147688530499811

`A101266(abs(1-n))`
-/

namespace A164349.P11801147688530499811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101266 |1 - (n : ℤ)|.toNat

end

end A164349.P11801147688530499811

namespace A164349

/-- `A101266(abs(1-n))` -/
def P11801147688530499811.Spec : Prop :=
  ∀ n, P11801147688530499811.a n = A164349 n

end A164349

/-! ## A164349.P3711695348167668667

`char[A246439(n+1)]`
-/

namespace A164349.P3711695348167668667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164349.P3711695348167668667

namespace A164349

/-- `char[A246439(n+1)]` -/
def P3711695348167668667.Spec : Prop :=
  ∀ n, (P3711695348167668667.a n : ℤ) = A164349 n

end A164349

/-! ## A164349.P3367117822980834329

`char[comp[A246438(n+1)]]`
-/

namespace A164349.P3367117822980834329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246438 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A164349.P3367117822980834329

namespace A164349

/-- `char[comp[A246438(n+1)]]` -/
def P3367117822980834329.Spec : Prop :=
  ∀ n, (P3367117822980834329.a n : ℤ) = A164349 n

end A164349

/-! ## A164349.P4841108181734445144

`a(A053645(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A164349

/-- `a(A053645(n-1))` -/
def P4841108181734445144.Spec : Prop :=
  ∀ n, (P4841108181734445144.a n : ℤ) = A164349 n

theorem P4841108181734445144.correct : P4841108181734445144.Spec := by
  intro n
  simp only [A164349]

end A164349

/-! ## A164349.P14686495672528350834

`n-A246438(1-A101402(n)+n)`
-/

namespace A164349.P14686495672528350834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246438 (1 - A101402 n + (n : ℤ)).toNat

end

end A164349.P14686495672528350834

namespace A164349

/-- `n-A246438(1-A101402(n)+n)` -/
def P14686495672528350834.Spec : Prop :=
  ∀ n, P14686495672528350834.a n = A164349 n

end A164349

/-! ## A164349.P9432785558730624021

`log2(A293838(n+1))`
-/

namespace A164349.P9432785558730624021
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A293838 (n + 1) : ℝ)

end

end A164349.P9432785558730624021

namespace A164349

/-- `log2(A293838(n+1))` -/
def P9432785558730624021.Spec : Prop :=
  ∀ n, P9432785558730624021.a n = (A164349 n : ℝ)

end A164349

/-! ## A164349.P8406309083691798674

`A293838(n+1)-A361338(n)`
-/

namespace A164349.P8406309083691798674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293838 (n + 1) - A361338 n

end

end A164349.P8406309083691798674

namespace A164349

/-- `A293838(n+1)-A361338(n)` -/
def P8406309083691798674.Spec : Prop :=
  ∀ n, P8406309083691798674.a n = A164349 n

end A164349

/-! ## A164349.P7514587566479788742

`A000051(n)%A293838(n+1)`
-/

namespace A164349.P7514587566479788742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n) (A293838 (n + 1))

end

end A164349.P7514587566479788742

namespace A164349

/-- `A000051(n)%A293838(n+1)` -/
def P7514587566479788742.Spec : Prop :=
  ∀ n, P7514587566479788742.a n = A164349 n

end A164349

/-! ## A164349.P2327571280138809233

`A000213(n)%A293838(n+1)`
-/

namespace A164349.P2327571280138809233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000213 n) (A293838 (n + 1))

end

end A164349.P2327571280138809233

namespace A164349

/-- `A000213(n)%A293838(n+1)` -/
def P2327571280138809233.Spec : Prop :=
  ∀ n, P2327571280138809233.a n = A164349 n

end A164349

/-! ## A164349.P14688046938330235014

`A000225(n)%A293838(n+1)`
-/

namespace A164349.P14688046938330235014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 n) (A293838 (n + 1))

end

end A164349.P14688046938330235014

namespace A164349

/-- `A000225(n)%A293838(n+1)` -/
def P14688046938330235014.Spec : Prop :=
  ∀ n, P14688046938330235014.a n = A164349 n

end A164349

/-! ## A164349.P16202482406576122450

`A000230(n)%A293838(n+1)`
-/

namespace A164349.P16202482406576122450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000230 n) (A293838 (n + 1))

end

end A164349.P16202482406576122450

namespace A164349

/-- `A000230(n)%A293838(n+1)` -/
def P16202482406576122450.Spec : Prop :=
  ∀ n, P16202482406576122450.a n = A164349 n

end A164349

/-! ## A164349.P18403994062809850877

`A000244(n)%A293838(n+1)`
-/

namespace A164349.P18403994062809850877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A293838 (n + 1))

end

end A164349.P18403994062809850877

namespace A164349

/-- `A000244(n)%A293838(n+1)` -/
def P18403994062809850877.Spec : Prop :=
  ∀ n, P18403994062809850877.a n = A164349 n

end A164349

/-! ## A164349.P4161125127392845320

`A000322(n)%A293838(n+1)`
-/

namespace A164349.P4161125127392845320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000322 n) (A293838 (n + 1))

end

end A164349.P4161125127392845320

namespace A164349

/-- `A000322(n)%A293838(n+1)` -/
def P4161125127392845320.Spec : Prop :=
  ∀ n, P4161125127392845320.a n = A164349 n

end A164349

/-! ## A164349.P8228382058990472025

`A000328(n)%A293838(n+1)`
-/

namespace A164349.P8228382058990472025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A293838 (n + 1))

end

end A164349.P8228382058990472025

namespace A164349

/-- `A000328(n)%A293838(n+1)` -/
def P8228382058990472025.Spec : Prop :=
  ∀ n, P8228382058990472025.a n = A164349 n

end A164349

/-! ## A164349.P9189717995419444195

`A000337(n)%A293838(n+1)`
-/

namespace A164349.P9189717995419444195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000337 n) (A293838 (n + 1))

end

end A164349.P9189717995419444195

namespace A164349

/-- `A000337(n)%A293838(n+1)` -/
def P9189717995419444195.Spec : Prop :=
  ∀ n, P9189717995419444195.a n = A164349 n

end A164349

/-! ## A164349.P10703265464099650817

`A000466(n)%A293838(n+1)`
-/

namespace A164349.P10703265464099650817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A293838 (n + 1))

end

end A164349.P10703265464099650817

namespace A164349

/-- `A000466(n)%A293838(n+1)` -/
def P10703265464099650817.Spec : Prop :=
  ∀ n, P10703265464099650817.a n = A164349 n

end A164349

/-! ## A164349.P16439780653082481880

`A000605(n)%A293838(n+1)`
-/

namespace A164349.P16439780653082481880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A293838 (n + 1))

end

end A164349.P16439780653082481880

namespace A164349

/-- `A000605(n)%A293838(n+1)` -/
def P16439780653082481880.Spec : Prop :=
  ∀ n, P16439780653082481880.a n = A164349 n

end A164349

/-! ## A164349.P1611345788392384320

`A001003(n)%A293838(n+1)`
-/

namespace A164349.P1611345788392384320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001003 n) (A293838 (n + 1))

end

end A164349.P1611345788392384320

namespace A164349

/-- `A001003(n)%A293838(n+1)` -/
def P1611345788392384320.Spec : Prop :=
  ∀ n, P1611345788392384320.a n = A164349 n

end A164349

/-!
# A164352: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164352, there is no canonical definition to state claims against.
-/

/-! ## A164352.P6574097768896978995

`or(A000079(n), A082447(A148939(n)))`
-/

namespace A164352.P6574097768896978995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A082447 (A148939 n).toNat)

end

end A164352.P6574097768896978995

/-! ## A164352.P17404971293603214354

`A003945(n)-A238701(A072880(n+1))`
-/

namespace A164352.P17404971293603214354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A238701 (A072880 (n + 1)).toNat

end

end A164352.P17404971293603214354

/-! ## A164352.P2346083713241990023

`A003945(n)-A054898(A345761(n+1))`
-/

namespace A164352.P2346083713241990023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A054898 (A345761 (n + 1)).toNat

end

end A164352.P2346083713241990023

/-! ## A164352.P5922215767769496019

`A285947(2*n)-A297330(A112960(n+1))`
-/

namespace A164352.P5922215767769496019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285947 (2 * n) - A297330 (A112960 (n + 1)).toNat

end

end A164352.P5922215767769496019

/-!
# A164353: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164353, there is no canonical definition to state claims against.
-/

/-! ## A164353.P11348493446946250595

`A004396(Δ[3^n])-A173066(n+1)`
-/

namespace A164353.P11348493446946250595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A173066 (n + 1)

end

end A164353.P11348493446946250595

/-! ## A164353.P7224549155414652549

`floor(4*3^(n-1))-A034432(A002145(n+1))`
-/

namespace A164353.P7224549155414652549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A002145 (n + 1)).toNat

end

end A164353.P7224549155414652549

/-! ## A164353.P3550290345489229479

`floor(4*3^(n-1))-A034432(A069348(n+1))`
-/

namespace A164353.P3550290345489229479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A069348 (n + 1)).toNat

end

end A164353.P3550290345489229479

/-! ## A164353.P7770036723293914843

`record[3*(a(n-1)-A024362(A187044(n)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A164353.P7770036723293914843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n f1 =>
  3 * (f1 (n - 1) - A024362 (A187044 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164353.P7770036723293914843

/-!
# A164354: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164354, there is no canonical definition to state claims against.
-/

/-! ## A164354.P2355780259957309595

`floor(5*4^(n-1))-A185264(A000217(n))`
-/

namespace A164354.P2355780259957309595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185264 (A000217 n).toNat

end

end A164354.P2355780259957309595

/-! ## A164354.P5242487005437781757

`floor(5*4^(n-1))-A185255(A006918(n))`
-/

namespace A164354.P5242487005437781757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A006918 n).toNat

end

end A164354.P5242487005437781757

/-! ## A164354.P6581390724439626608

`floor(5*4^(n-1))-A185255(A311440(n))`
-/

namespace A164354.P6581390724439626608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A311440 n).toNat

end

end A164354.P6581390724439626608

/-! ## A164354.P6773332504992420280

`floor(5*4^(n-1))-A185255(A314825(n))`
-/

namespace A164354.P6773332504992420280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A314825 n).toNat

end

end A164354.P6773332504992420280

/-!
# A164355: Expansion of (1 - x^2)^4 * (1 - x^5) / ((1 - x)^5 * (1 - x^4)^2) in powers of x.

The programs for A164355, the canonical program `A164355.P4532967862495122103` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164355 has offset 0).

The definition of A164355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x^2+6x^4-x^5-4x^6+4x^7+x^8-6x^9+4x^11-x^13)/(1-5x+10x^2-10x^3+3x^4+9x^5-20x^6+20x^7-9x^8-3x^9+10x^10-10x^11+5x^12-x^13))` (program `A164355.P4532967862495122103`, by `A164355.P4532967862495122103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164355.P4532967862495122103

`ogf((1-4x^2+6x^4-x^5-4x^6+4x^7+x^8-6x^9+4x^11-x^13)/(1-5x+10x^2-10x^3+3x^4+9x^5-20x^6+20x^7-9x^8-3x^9+10x^10-10x^11+5x^12-x^13))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164355

/-- `ogf((1-4x^2+6x^4-x^5-4x^6+4x^7+x^8-6x^9+4x^11-x^13)/(1-5x+10x^2-10x^3+3x^4+9x^5-20x^6+20x^7-9x^8-3x^9+10x^10-10x^11+5x^12-x^13))` -/
def P4532967862495122103.Spec : Prop :=
  ∀ n, P4532967862495122103.a n = A164355 n

theorem P4532967862495122103.correct : P4532967862495122103.Spec := by
  intro n
  simp only [A164355]

end A164355

/-! ## A164355.P9295729857417602287

`A186813(n)+A008574(n)`
-/

namespace A164355.P9295729857417602287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 n + A008574 n

end

end A164355.P9295729857417602287

namespace A164355

/-- `A186813(n)+A008574(n)` -/
def P9295729857417602287.Spec : Prop :=
  ∀ n, P9295729857417602287.a n = A164355 n

end A164355

/-! ## A164355.P17572280094964982076

`A008486(n)+A186813(n)+n`
-/

namespace A164355.P17572280094964982076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A186813 n + (n : ℤ))

end

end A164355.P17572280094964982076

namespace A164355

/-- `A008486(n)+A186813(n)+n` -/
def P17572280094964982076.Spec : Prop :=
  ∀ n, P17572280094964982076.a n = A164355 n

end A164355

/-! ## A164355.P1943749269926916783

`A008574(n)+abs(ceil((n*A056594(n)-1)/2)-n)`
-/

namespace A164355.P1943749269926916783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + |⌈((n : ℤ) * A056594 n - 1 : ℚ) / 2⌉ - (n : ℤ)|

end

end A164355.P1943749269926916783

namespace A164355

/-- `A008574(n)+abs(ceil((n*A056594(n)-1)/2)-n)` -/
def P1943749269926916783.Spec : Prop :=
  ∀ n, P1943749269926916783.a n = A164355 n

end A164355

/-! ## A164355.P15430191961372157136

`A008574(n)+n-A127365(A237420(n))`
-/

namespace A164355.P15430191961372157136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A127365 (A237420 n).toNat)

end

end A164355.P15430191961372157136

namespace A164355

/-- `A008574(n)+n-A127365(A237420(n))` -/
def P15430191961372157136.Spec : Prop :=
  ∀ n, P15430191961372157136.a n = A164355 n

end A164355

/-! ## A164355.P2995568156723184888

`A186813(n)+A026491(A004273(n))`
-/

namespace A164355.P2995568156723184888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 n + A026491 (A004273 n).toNat

end

end A164355.P2995568156723184888

namespace A164355

/-- `A186813(n)+A026491(A004273(n))` -/
def P2995568156723184888.Spec : Prop :=
  ∀ n, P2995568156723184888.a n = A164355 n

end A164355

/-! ## A164355.P8901541893186467136

`A008458(n)-A160016(A109043(n))`
-/

namespace A164355.P8901541893186467136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A160016 (A109043 n).toNat

end

end A164355.P8901541893186467136

namespace A164355

/-- `A008458(n)-A160016(A109043(n))` -/
def P8901541893186467136.Spec : Prop :=
  ∀ n, P8901541893186467136.a n = A164355 n

end A164355

/-! ## A164355.P676722141447629149

`A255347(2*n)+A008486(n)`
-/

namespace A164355.P676722141447629149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255347 (2 * n) + A008486 n

end

end A164355.P676722141447629149

namespace A164355

/-- `A255347(2*n)+A008486(n)` -/
def P676722141447629149.Spec : Prop :=
  ∀ n, P676722141447629149.a n = A164355 n

end A164355

/-! ## A164355.P8016825062417326884

`A257088(2*n)+A186813(n)`
-/

namespace A164355.P8016825062417326884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) + A186813 n

end

end A164355.P8016825062417326884

namespace A164355

/-- `A257088(2*n)+A186813(n)` -/
def P8016825062417326884.Spec : Prop :=
  ∀ n, P8016825062417326884.a n = A164355 n

end A164355

/-! ## A164355.P3321222105582203565

`A186813(n)+A004396(A008458(n))`
-/

namespace A164355.P3321222105582203565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 n + A004396 (A008458 n).toNat

end

end A164355.P3321222105582203565

namespace A164355

/-- `A186813(n)+A004396(A008458(n))` -/
def P3321222105582203565.Spec : Prop :=
  ∀ n, P3321222105582203565.a n = A164355 n

end A164355

/-! ## A164355.P14256550498949347879

`A329116(A002620(n))+A008706(n)`
-/

namespace A164355.P14256550498949347879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (A002620 n).toNat + A008706 n

end

end A164355.P14256550498949347879

namespace A164355

/-- `A329116(A002620(n))+A008706(n)` -/
def P14256550498949347879.Spec : Prop :=
  ∀ n, P14256550498949347879.a n = A164355 n

end A164355

/-!
# A164356: Expansion of (1 - x^2)^4 / ((1 - x)^4 * (1 - x^4)) in powers of x.

The programs for A164356, the canonical program `A164356.P17577977688000065436` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164356 has offset 0).

The definition of A164356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x^2+6x^4-4x^6+x^8)/(1-4x+6x^2-4x^3+4x^5-6x^6+4x^7-x^8))` (program `A164356.P17577977688000065436`, by `A164356.P17577977688000065436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164356.P17577977688000065436

`ogf((1-4x^2+6x^4-4x^6+x^8)/(1-4x+6x^2-4x^3+4x^5-6x^6+4x^7-x^8))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164356

/-- `ogf((1-4x^2+6x^4-4x^6+x^8)/(1-4x+6x^2-4x^3+4x^5-6x^6+4x^7-x^8))` -/
def P17577977688000065436.Spec : Prop :=
  ∀ n, P17577977688000065436.a n = A164356 n

theorem P17577977688000065436.correct : P17577977688000065436.Spec := by
  intro n
  simp only [A164356]

end A164356

/-!
# A164357: Expansion of (1 - x^2)^5 / ((1 - x)^4 * (1 - x^6)) in powers of x.

The programs for A164357, the canonical program `A164357.P7197146483451552545` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164357 has offset 0).

The definition of A164357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x^2+10x^4-10x^6+5x^8-x^10)/(1-4x+6x^2-4x^3+x^4-x^6+4x^7-6x^8+4x^9-x^10))` (program `A164357.P7197146483451552545`, by `A164357.P7197146483451552545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164357.P7197146483451552545

`ogf((1-5x^2+10x^4-10x^6+5x^8-x^10)/(1-4x+6x^2-4x^3+x^4-x^6+4x^7-6x^8+4x^9-x^10))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164357

/-- `ogf((1-5x^2+10x^4-10x^6+5x^8-x^10)/(1-4x+6x^2-4x^3+x^4-x^6+4x^7-6x^8+4x^9-x^10))` -/
def P7197146483451552545.Spec : Prop :=
  ∀ n, P7197146483451552545.a n = A164357 n

theorem P7197146483451552545.correct : P7197146483451552545.Spec := by
  intro n
  simp only [A164357]

end A164357

/-!
# A164358: Expansion of (1 - x^2)^2 * (1 - x^3) / ((1 - x)^3 * (1 - x^4)) in powers of x.

The programs for A164358, the canonical program `A164358.P2111997820097768134` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164358 has offset 0).

The definition of A164358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2-x^3+x^4+2x^5-x^7)/(1-3x+3x^2-x^3-x^4+3x^5-3x^6+x^7))` (program `A164358.P2111997820097768134`, by `A164358.P2111997820097768134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164358.P2111997820097768134

`ogf((1-2x^2-x^3+x^4+2x^5-x^7)/(1-3x+3x^2-x^3-x^4+3x^5-3x^6+x^7))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164358

/-- `ogf((1-2x^2-x^3+x^4+2x^5-x^7)/(1-3x+3x^2-x^3-x^4+3x^5-3x^6+x^7))` -/
def P2111997820097768134.Spec : Prop :=
  ∀ n, P2111997820097768134.a n = A164358 n

theorem P2111997820097768134.correct : P2111997820097768134.Spec := by
  intro n
  simp only [A164358]

end A164358

/-!
# A164359: Expansion of (1 - x^2)^3 / ((1 - x)^3 * (1 - x^3)) in powers of x.

The programs for A164359, the canonical program `A164359.P15472008752552926325` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164359 has offset 0).

The definition of A164359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2+3x^4-x^6)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` (program `A164359.P15472008752552926325`, by `A164359.P15472008752552926325.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164359.P15472008752552926325

`ogf((1-3x^2+3x^4-x^6)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164359

/-- `ogf((1-3x^2+3x^4-x^6)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P15472008752552926325.Spec : Prop :=
  ∀ n, P15472008752552926325.a n = A164359 n

theorem P15472008752552926325.correct : P15472008752552926325.Spec := by
  intro n
  simp only [A164359]

end A164359

/-!
# A164360: Period 3: repeat [5, 4, 3].

The programs for A164360, the canonical program `A164360.P7130041537322034007` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164360 has offset 0).

The definition of A164360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164360.P7130041537322034007

`a(n-3)` with `a(0)=5, a(1)=4, a(2)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164360

/-- `a(n-3)` -/
def P7130041537322034007.Spec : Prop :=
  ∀ n, (P7130041537322034007.a n : ℤ) = A164360 n

theorem P7130041537322034007.correct : P7130041537322034007.Spec := by
  intro n
  simp only [A164360]

end A164360

/-!
# A164362: The number of 0's in the n-th stage of A164349.

The programs for A164362, there is no canonical definition to state claims against.
-/

/-! ## A164362.P12257719686188382391

`A000051(n)-A164363(n+1)`
-/

namespace A164362.P12257719686188382391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A164363 (n + 1)

end

end A164362.P12257719686188382391

/-! ## A164362.P2595166966034948960

`record[A052552(n)]-A164363(n+1)`
-/

namespace A164362.P2595166966034948960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A164363 (n + 1)

end

end A164362.P2595166966034948960

/-! ## A164362.P3584501552602787831

`A000079(n)+1-A164363(n+1)`
-/

namespace A164362.P3584501552602787831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (1 - A164363 (n + 1))

end

end A164362.P3584501552602787831

/-! ## A164362.P4630147375736826004

`A000225(n)+2-A164363(n+1)`
-/

namespace A164362.P4630147375736826004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (2 - A164363 (n + 1))

end

end A164362.P4630147375736826004

/-! ## A164362.P1065938781188233669

`A052552(2*n)-A164363(n+1)`
-/

namespace A164362.P1065938781188233669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (2 * n) - A164363 (n + 1)

end

end A164362.P1065938781188233669

/-! ## A164362.P4070827724674082226

`A000325(n)+n+1-A164363(n+1)`
-/

namespace A164362.P4070827724674082226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n + ((n + 1 : ℤ) - A164363 (n + 1))

end

end A164362.P4070827724674082226

/-!
# A164363: The number of 1's in the n-th stage of A164349.

The programs for A164363, there is no canonical definition to state claims against.
-/

/-! ## A164363.P1363913487098536628

`A000051(n)-A164362(n+1)`
-/

namespace A164363.P1363913487098536628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A164362 (n + 1)

end

end A164363.P1363913487098536628

/-! ## A164363.P8744181220491343143

`A000079(n)+1-A164362(n+1)`
-/

namespace A164363.P8744181220491343143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (1 - A164362 (n + 1))

end

end A164363.P8744181220491343143

/-! ## A164363.P2366434262080613892

`A094373(n+1)-A164362(n+1)`
-/

namespace A164363.P2366434262080613892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (n + 1) - A164362 (n + 1)

end

end A164363.P2366434262080613892

/-! ## A164363.P2646947287974880215

`A000225(n)+2-A164362(n+1)`
-/

namespace A164363.P2646947287974880215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (2 - A164362 (n + 1))

end

end A164363.P2646947287974880215

/-! ## A164363.P3946398838849071836

`A011782(n+1)+1-A164362(n+1)`
-/

namespace A164363.P3946398838849071836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (1 - A164362 (n + 1))

end

end A164363.P3946398838849071836

/-!
# A164364: a(n) = A164349(2^n).

The programs for A164364, the canonical program `A164364.P14451456092947760029` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164364 has offset 0).

The definition of A164364 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164349, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164364.P14451456092947760029

`A164349(2^n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A164364

/-- `A164349(2^n)` -/
def P14451456092947760029.Spec : Prop :=
  ∀ n, P14451456092947760029.a n = A164364 n

theorem P14451456092947760029.correct : P14451456092947760029.Spec := by
  intro n
  simp only [A164364]

end A164364

/-! ## A164364.P1316529842003008499

`1-char[record[a(n-1)+2-val(n, 2)]]` with `a(0)=1`
-/

namespace A164364.P1316529842003008499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (2 - (SequenceMachineLib.valuation n 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164364.P1316529842003008499

namespace A164364

/-- `1-char[record[a(n-1)+2-val(n, 2)]]` -/
def P1316529842003008499.Spec : Prop :=
  ∀ n, P1316529842003008499.a n = A164364 n

end A164364

/-! ## A164364.P2287434694722525755

`1-A334820(n)`
-/

namespace A164364.P2287434694722525755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A334820 n

end

end A164364.P2287434694722525755

namespace A164364

/-- `1-A334820(n)` -/
def P2287434694722525755.Spec : Prop :=
  ∀ n, P2287434694722525755.a n = A164364 n

end A164364

/-! ## A164364.P1603627713298101352

`1-char[record[A230300(n+1)]]`
-/

namespace A164364.P1603627713298101352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230300 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164364.P1603627713298101352

namespace A164364

/-- `1-char[record[A230300(n+1)]]` -/
def P1603627713298101352.Spec : Prop :=
  ∀ n, P1603627713298101352.a n = A164364 n

end A164364

/-! ## A164364.P6248221367279315895

`1-char[record[A000120(n)+1+n]]`
-/

namespace A164364.P6248221367279315895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164364.P6248221367279315895

namespace A164364

/-- `1-char[record[A000120(n)+1+n]]` -/
def P6248221367279315895.Spec : Prop :=
  ∀ n, P6248221367279315895.a n = A164364 n

end A164364

/-! ## A164364.P9545953821364020529

`A334820(C(2, n*A334820(n)))`
-/

namespace A164364.P9545953821364020529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334820 (Nat.choose 2 ((n : ℤ) * A334820 n).toNat)

end

end A164364.P9545953821364020529

namespace A164364

/-- `A334820(C(2, n*A334820(n)))` -/
def P9545953821364020529.Spec : Prop :=
  ∀ n, P9545953821364020529.a n = A164364 n

end A164364

/-! ## A164364.P11579786811599404918

`A334820(C(n, A334820(n)+n))`
-/

namespace A164364.P11579786811599404918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334820 (Nat.choose n (A334820 n + (n : ℤ)).toNat)

end

end A164364.P11579786811599404918

namespace A164364

/-- `A334820(C(n, A334820(n)+n))` -/
def P11579786811599404918.Spec : Prop :=
  ∀ n, P11579786811599404918.a n = A164364 n

end A164364

/-! ## A164364.P8014015617548429088

`xor(A057427(n), A334820(n))^n`
-/

namespace A164364.P8014015617548429088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A334820 n) ^ n

end

end A164364.P8014015617548429088

namespace A164364

/-- `xor(A057427(n), A334820(n))^n` -/
def P8014015617548429088.Spec : Prop :=
  ∀ n, P8014015617548429088.a n = A164364 n

end A164364

/-! ## A164364.P13602541676133364463

`Δ[A334820(n)]*A334820(n+1)`
-/

namespace A164364.P13602541676133364463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A334820 (n + 1)

end

end A164364.P13602541676133364463

namespace A164364

/-- `Δ[A334820(n)]*A334820(n+1)` -/
def P13602541676133364463.Spec : Prop :=
  ∀ n, P13602541676133364463.a n = A164364 n

end A164364

/-! ## A164364.P9925675503079408420

`floor(4/(A000217(2*n)*A334820(n)+3))`
-/

namespace A164364.P9925675503079408420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / (A000217 (2 * n) * A334820 n + 3 : ℚ)⌋

end

end A164364.P9925675503079408420

namespace A164364

/-- `floor(4/(A000217(2*n)*A334820(n)+3))` -/
def P9925675503079408420.Spec : Prop :=
  ∀ n, P9925675503079408420.a n = A164364 n

end A164364

/-! ## A164364.P4824555606322696679

`xor(A057427(n+2), A334820(n))`
-/

namespace A164364.P4824555606322696679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (n + 2)) (A334820 n)

end

end A164364.P4824555606322696679

namespace A164364

/-- `xor(A057427(n+2), A334820(n))` -/
def P4824555606322696679.Spec : Prop :=
  ∀ n, P4824555606322696679.a n = A164364 n

end A164364

/-! ## A164364.P7064316417603321120

`xor(A026600(A026601(n+1)), A334820(n))`
-/

namespace A164364.P7064316417603321120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026600 (A026601 (n + 1)).toNat) (A334820 n)

end

end A164364.P7064316417603321120

namespace A164364

/-- `xor(A026600(A026601(n+1)), A334820(n))` -/
def P7064316417603321120.Spec : Prop :=
  ∀ n, P7064316417603321120.a n = A164364 n

end A164364

/-! ## A164364.P16691416447627363729

`xor(A026607(A026604(3*n+4)), A334820(n))`
-/

namespace A164364.P16691416447627363729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026607 (A026604 (3 * n + 4)).toNat) (A334820 n)

end

end A164364.P16691416447627363729

namespace A164364

/-- `xor(A026607(A026604(3*n+4)), A334820(n))` -/
def P16691416447627363729.Spec : Prop :=
  ∀ n, P16691416447627363729.a n = A164364 n

end A164364

/-! ## A164364.P18431723858032600683

`A164363(n+2)%2`
-/

namespace A164364.P18431723858032600683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164363 (n + 2)) 2

end

end A164364.P18431723858032600683

namespace A164364

/-- `A164363(n+2)%2` -/
def P18431723858032600683.Spec : Prop :=
  ∀ n, P18431723858032600683.a n = A164364 n

end A164364

/-! ## A164364.P8477067530775587837

`A164363(n+1)-Δ[A164363(n+1)]`
-/

namespace A164364.P8477067530775587837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164363 (n + 1) - (f1 (n + 1) - f1 n)

end

end A164364.P8477067530775587837

namespace A164364

/-- `A164363(n+1)-Δ[A164363(n+1)]` -/
def P8477067530775587837.Spec : Prop :=
  ∀ n, P8477067530775587837.a n = A164364 n

end A164364

/-! ## A164364.P5358374943462667891

`A164363(n+1)+A164363(n+1)-A164363(n+2)`
-/

namespace A164364.P5358374943462667891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164363 (n + 1) + (A164363 (n + 1) - A164363 (n + 2))

end

end A164364.P5358374943462667891

namespace A164364

/-- `A164363(n+1)+A164363(n+1)-A164363(n+2)` -/
def P5358374943462667891.Spec : Prop :=
  ∀ n, P5358374943462667891.a n = A164364 n

end A164364

/-! ## A164364.P15974392324458751069

`val(A164362(n+2), 2)`
-/

namespace A164364.P15974392324458751069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A164362 (n + 2)).toNat 2

end

end A164364.P15974392324458751069

namespace A164364

/-- `val(A164362(n+2), 2)` -/
def P15974392324458751069.Spec : Prop :=
  ∀ n, (P15974392324458751069.a n : ℤ) = A164364 n

end A164364

/-! ## A164364.P1951027141641814489

`C(Δ[A164362(n+1)], A164362(n+1))`
-/

namespace A164364.P1951027141641814489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A164362 (n + 1)).toNat

end

end A164364.P1951027141641814489

namespace A164364

/-- `C(Δ[A164362(n+1)], A164362(n+1))` -/
def P1951027141641814489.Spec : Prop :=
  ∀ n, (P1951027141641814489.a n : ℤ) = A164364 n

end A164364

/-!
# A164365: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164365, there is no canonical definition to state claims against.
-/

/-! ## A164365.P9936319839690377211

`floor(6*5^(n-1))-A285007(A094373(n))`
-/

namespace A164365.P9936319839690377211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A285007 (A094373 n).toNat

end

end A164365.P9936319839690377211

/-! ## A164365.P1851351668410368487

`xor(floor(6*5^(n-1)), A194591(A085139(n)))`
-/

namespace A164365.P1851351668410368487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A194591 (A085139 n).toNat)

end

end A164365.P1851351668410368487

/-! ## A164365.P11296274858098704407

`floor(6*5^(n-1))-A002262(A111432(n+1))`
-/

namespace A164365.P11296274858098704407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A002262 (A111432 (n + 1)).toNat

end

end A164365.P11296274858098704407

/-! ## A164365.P2183209847984692957

`abs(A003948(n)-A285007(A094373(n)))`
-/

namespace A164365.P2183209847984692957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003948 n - A285007 (A094373 n).toNat|

end

end A164365.P2183209847984692957

/-!
# A164367: a(n) = A164051(n) in base 2.

The programs for A164367, the canonical program `A164367.P13316634360645922476` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164367 has offset 1).

The definition of A164367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164367.P13316634360645922476

`10^(2*(n+1))+10^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164367

/-- `10^(2*(n+1))+10^n` -/
def P13316634360645922476.Spec : Prop :=
  ∀ n, (P13316634360645922476.a n : ℤ) = A164367 (n + 1)

theorem P13316634360645922476.correct : P13316634360645922476.Spec := by
  intro n
  simp only [A164367, Nat.add_sub_cancel]

end A164367

/-! ## A164367.P9612677520540163466

`A164046(2*(n+1))`
-/

namespace A164367.P9612677520540163466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164046 (2 * (n + 1))

end

end A164367.P9612677520540163466

namespace A164367

/-- `A164046(2*(n+1))` -/
def P9612677520540163466.Spec : Prop :=
  ∀ n, P9612677520540163466.a n = A164367 (n + 1)

end A164367

/-! ## A164367.P14525112813833379361

`A038444(2*(n+1)²)`
-/

namespace A164367.P14525112813833379361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038444 (2 * (n + 1) ^ 2)

end

end A164367.P14525112813833379361

namespace A164367

/-- `A038444(2*(n+1)²)` -/
def P14525112813833379361.Spec : Prop :=
  ∀ n, P14525112813833379361.a n = A164367 (n + 1)

end A164367

/-! ## A164367.P18100545939530174045

`A052216(∑[4*(n+1)])`
-/

namespace A164367.P18100545939530174045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164367.P18100545939530174045

namespace A164367

/-- `A052216(∑[4*(n+1)])` -/
def P18100545939530174045.Spec : Prop :=
  ∀ n, P18100545939530174045.a n = A164367 (n + 1)

end A164367

/-! ## A164367.P17659926895679642667

`10^n*A062397(n+2)`
-/

namespace A164367.P17659926895679642667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A062397 (n + 2)

end

end A164367.P17659926895679642667

namespace A164367

/-- `10^n*A062397(n+2)` -/
def P17659926895679642667.Spec : Prop :=
  ∀ n, P17659926895679642667.a n = A164367 (n + 1)

theorem P17659926895679642667.correct : P17659926895679642667.Spec := by
  intro n
  simp only [A164367, Nat.add_sub_cancel, A164367.P17659926895679642667.a, A164367.P13316634360645922476.a, A062397, A062397.P11904164326522871108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164367

/-!
# A164368: Primes p with the property: if q is the smallest prime > p/2, then a prime exists between p and 2q.

The programs for A164368, the canonical program `A164368.P4170227640801400143` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164368 has offset 1).

The definition of A164368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5807 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164368.P4170227640801400143

`p?[A217564(n+1)+A000040(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A164368

/-- `p?[A217564(n+1)+A000040(n+1)]` -/
def P4170227640801400143.Spec : Prop :=
  ∀ n, P4170227640801400143.a n = A164368 (n + 1)

theorem P4170227640801400143.correct : P4170227640801400143.Spec := by
  intro n
  simp only [A164368, Nat.add_sub_cancel]

end A164368

/-! ## A164368.P8157584180607638862

`A000040(eq[A107347(n+1)+1, A107347(n+2)]+1)`
-/

namespace A164368.P8157584180607638862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A164368.P8157584180607638862

namespace A164368

/-- `A000040(eq[A107347(n+1)+1, A107347(n+2)]+1)` -/
def P8157584180607638862.Spec : Prop :=
  ∀ n, P8157584180607638862.a n = A164368 (n + 1)

end A164368

/-! ## A164368.P10411434762566282032

`p?[A000040(n+1)%A060265(A079953(n+1))]`
-/

namespace A164368.P10411434762566282032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A060265 (A079953 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164368.P10411434762566282032

namespace A164368

/-- `p?[A000040(n+1)%A060265(A079953(n+1))]` -/
def P10411434762566282032.Spec : Prop :=
  ∀ n, P10411434762566282032.a n = A164368 (n + 1)

end A164368

/-! ## A164368.P2429664112477122206

`p?[A252463(A194598(n+1))]`
-/

namespace A164368.P2429664112477122206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A194598 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164368.P2429664112477122206

namespace A164368

/-- `p?[A252463(A194598(n+1))]` -/
def P2429664112477122206.Spec : Prop :=
  ∀ n, P2429664112477122206.a n = A164368 (n + 1)

end A164368

/-! ## A164368.P4051897200962084628

`A283463(A194598(n+2)+1)`
-/

namespace A164368.P4051897200962084628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A194598 (n + 2) + 1).toNat

end

end A164368.P4051897200962084628

namespace A164368

/-- `A283463(A194598(n+2)+1)` -/
def P4051897200962084628.Spec : Prop :=
  ∀ n, P4051897200962084628.a n = A164368 (n + 1)

end A164368

/-! ## A164368.P15333082286082109855

`∪[A104272(n+1), A164288(n+1)]`
-/

namespace A164368.P15333082286082109855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164368.P15333082286082109855

namespace A164368

/-- `∪[A104272(n+1), A164288(n+1)]` -/
def P15333082286082109855.Spec : Prop :=
  ∀ n, (P15333082286082109855.a n : ℤ) = A164368 (n + 1)

end A164368

/-! ## A164368.P17711748136631844515

`A229607(∑[n+1])`
-/

namespace A164368.P17711748136631844515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229607 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164368.P17711748136631844515

namespace A164368

/-- `A229607(∑[n+1])` -/
def P17711748136631844515.Spec : Prop :=
  ∀ n, P17711748136631844515.a n = A164368 (n + 1)

end A164368

/-! ## A164368.P18433439285603169011

`A156037(eq[0, A164917(n+1)]+1)+1`
-/

namespace A164368.P18433439285603169011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A164368.P18433439285603169011

namespace A164368

/-- `A156037(eq[0, A164917(n+1)]+1)+1` -/
def P18433439285603169011.Spec : Prop :=
  ∀ n, P18433439285603169011.a n = A164368 (n + 1)

end A164368

/-!
# A164369: Number of reduced words of length n in Coxeter group on 7 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164369, there is no canonical definition to state claims against.
-/

/-! ## A164369.P5317926806219631752

`floor(7*6^(n-1))-A241379(A241464(n+1))`
-/

namespace A164369.P5317926806219631752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A241379 (A241464 (n + 1)).toNat

end

end A164369.P5317926806219631752

/-!
# A164370: Sequence A005418 written in base 2.

The programs for A164370, the canonical program `A164370.P15740221419071987727` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164370 has offset 1).

The definition of A164370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164370.P15740221419071987727

`∪[10*A163449(n), A163449(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A164370

/-- `∪[10*A163449(n), A163449(n)]` -/
def P15740221419071987727.Spec : Prop :=
  ∀ n, (P15740221419071987727.a n : ℤ) = A164370 (n + 1)

theorem P15740221419071987727.correct : P15740221419071987727.Spec := by
  intro n
  simp only [A164370, Nat.add_sub_cancel]

end A164370

/-! ## A164370.P18095313435742556938

`A007088(A005418(n+1))`
-/

namespace A164370.P18095313435742556938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005418 (n + 1)).toNat

end

end A164370.P18095313435742556938

namespace A164370

/-- `A007088(A005418(n+1))` -/
def P18095313435742556938.Spec : Prop :=
  ∀ n, P18095313435742556938.a n = A164370 (n + 1)

end A164370

/-! ## A164370.P4566059623385296309

`A007088(A277504(∑[n+3]))`
-/

namespace A164370.P4566059623385296309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A277504 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A164370.P4566059623385296309

namespace A164370

/-- `A007088(A277504(∑[n+3]))` -/
def P4566059623385296309.Spec : Prop :=
  ∀ n, P4566059623385296309.a n = A164370 (n + 1)

end A164370

/-! ## A164370.P14114144297631974867

`A007088(Δ[A290075(n+3)])`
-/

namespace A164370.P14114144297631974867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n).toNat

end

end A164370.P14114144297631974867

namespace A164370

/-- `A007088(Δ[A290075(n+3)])` -/
def P14114144297631974867.Spec : Prop :=
  ∀ n, P14114144297631974867.a n = A164370 (n + 1)

end A164370

/-!
# A164371: The smaller members of twin prime pairs which are non-Ramanujan primes.

The programs for A164371, there is no canonical definition to state claims against.
-/

/-! ## A164371.P13126956306815061549

`p?[A174635(n+1)+2]-2`
-/

namespace A164371.P13126956306815061549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A164371.P13126956306815061549

/-! ## A164371.P8483212152045351295

`∩[A001359(n+1), A174635(n+1)]`
-/

namespace A164371.P8483212152045351295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P8483212152045351295

/-! ## A164371.P17006689504065662591

`∩[A001838(n+1), A174635(n+1)]`
-/

namespace A164371.P17006689504065662591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P17006689504065662591

/-! ## A164371.P7869048577443115603

`∩[A054799(n+1), A174635(n+1)]`
-/

namespace A164371.P7869048577443115603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P7869048577443115603

/-! ## A164371.P6695529018493553826

`∩[A063693(n+1), A174635(n+1)]`
-/

namespace A164371.P6695529018493553826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P6695529018493553826

/-! ## A164371.P6154837304486523574

`∩[A063700(n+1), A174635(n+1)]`
-/

namespace A164371.P6154837304486523574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P6154837304486523574

/-! ## A164371.P8784186272213514007

`∩[A073534(n+1), A174635(n+1)]`
-/

namespace A164371.P8784186272213514007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P8784186272213514007

/-! ## A164371.P7786771285793665146

`∩[A124588(n+1), A174635(n+1)]`
-/

namespace A164371.P7786771285793665146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P7786771285793665146

/-! ## A164371.P13877425427856958735

`∩[A174635(n+1), A181747(n+1)]`
-/

namespace A164371.P13877425427856958735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P13877425427856958735

/-! ## A164371.P2527265939843583358

`∩[A174635(n+1), A274212(n+1)]`
-/

namespace A164371.P2527265939843583358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P2527265939843583358

/-! ## A164371.P3092245154312157434

`∩[A174635(n+1), A280255(n+1)]`
-/

namespace A164371.P3092245154312157434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P3092245154312157434

/-! ## A164371.P9515275934804000880

`∩[A174635(n+1), A280590(n+1)]`
-/

namespace A164371.P9515275934804000880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P9515275934804000880

/-! ## A164371.P14656318722598040407

`∩[A174635(n+1), A378983(n+1)]`
-/

namespace A164371.P14656318722598040407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P14656318722598040407

/-! ## A164371.P7981749543646388665

`∩[A174635(n+1), A394509(n+1)]`
-/

namespace A164371.P7981749543646388665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P7981749543646388665

/-! ## A164371.P14590168385215195387

`∩[A174635(n+1), A395788(n+1)]`
-/

namespace A164371.P14590168385215195387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P14590168385215195387

/-! ## A164371.P2235518883949455348

`∩[A066147(n+1), A174635(n+1)]`
-/

namespace A164371.P2235518883949455348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P2235518883949455348

/-! ## A164371.P4876688884649669794

`∩[A065873(n+1), A174635(n+1)]`
-/

namespace A164371.P4876688884649669794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P4876688884649669794

/-! ## A164371.P17728336193912502715

`∩[A072282(n+1), A174635(n+1)]`
-/

namespace A164371.P17728336193912502715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P17728336193912502715

/-! ## A164371.P16713551467621019383

`∩[A067532(n+1), A174635(n+1)]`
-/

namespace A164371.P16713551467621019383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P16713551467621019383

/-! ## A164371.P8950595489181183840

`∩[A040976(n+1), A174635(n+1)]`
-/

namespace A164371.P8950595489181183840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164371.P8950595489181183840

/-!
# A164373: Number of reduced words of length n in Coxeter group on 8 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164373, there is no canonical definition to state claims against.
-/

/-! ## A164373.P6896152102598885366

`floor(8*7^(n-1))-A330758(A160870(n+1))`
-/

namespace A164373.P6896152102598885366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A330758 (A160870 (n + 1)).toNat

end

end A164373.P6896152102598885366

/-!
# A164376: Nonprime numbers that are not a sum of 2 primes.

The programs for A164376, the canonical program `A164376.P15310961995427451889` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164376 has offset 1).

The definition of A164376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164376.P17936621597274208918

`A109934(n+1)%A014632(n)`
-/

namespace A164376.P17936621597274208918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109934 (n + 1)) (A014632 n)

end

end A164376.P17936621597274208918

namespace A164376

/-- `A109934(n+1)%A014632(n)` -/
def P17936621597274208918.Spec : Prop :=
  ∀ n, P17936621597274208918.a n = A164376 (n + 1)

end A164376

/-! ## A164376.P15310961995427451889

`∪[A023002(n), A025583(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A164376

/-- `∪[A023002(n), A025583(n+1)]` -/
def P15310961995427451889.Spec : Prop :=
  ∀ n, (P15310961995427451889.a n : ℤ) = A164376 (n + 1)

theorem P15310961995427451889.correct : P15310961995427451889.Spec := by
  intro n
  simp only [A164376, Nat.add_sub_cancel]

end A164376

/-! ## A164376.P3778345927198541914

`∪[A025583(n+1), A123095(n)]`
-/

namespace A164376.P3778345927198541914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164376.P3778345927198541914

namespace A164376

/-- `∪[A025583(n+1), A123095(n)]` -/
def P3778345927198541914.Spec : Prop :=
  ∀ n, (P3778345927198541914.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P8182432572566448732

`∪[A025583(n+1), A162840(n)]`
-/

namespace A164376.P8182432572566448732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164376.P8182432572566448732

namespace A164376

/-- `∪[A025583(n+1), A162840(n)]` -/
def P8182432572566448732.Spec : Prop :=
  ∀ n, (P8182432572566448732.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P17181772540434847925

`∪[A025583(n+1), A168119(n)]`
-/

namespace A164376.P17181772540434847925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164376.P17181772540434847925

namespace A164376

/-- `∪[A025583(n+1), A168119(n)]` -/
def P17181772540434847925.Spec : Prop :=
  ∀ n, (P17181772540434847925.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P17659151364827083849

`∪[A025583(n+1), A194720(n)]`
-/

namespace A164376.P17659151364827083849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194720 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164376.P17659151364827083849

namespace A164376

/-- `∪[A025583(n+1), A194720(n)]` -/
def P17659151364827083849.Spec : Prop :=
  ∀ n, (P17659151364827083849.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P5879785226225171004

`∪[A329757(n), A025583(n+1)]`
-/

namespace A164376.P5879785226225171004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164376.P5879785226225171004

namespace A164376

/-- `∪[A329757(n), A025583(n+1)]` -/
def P5879785226225171004.Spec : Prop :=
  ∀ n, (P5879785226225171004.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P13366601274290429331

`lt[n*A002126(n), 1]`
-/

namespace A164376.P13366601274290429331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002126 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A164376.P13366601274290429331

namespace A164376

/-- `lt[n*A002126(n), 1]` -/
def P13366601274290429331.Spec : Prop :=
  ∀ n, (P13366601274290429331.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P16496257802349827511

`eq[A000007(n), A002126(n)]`
-/

namespace A164376.P16496257802349827511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P16496257802349827511

namespace A164376

/-- `eq[A000007(n), A002126(n)]` -/
def P16496257802349827511.Spec : Prop :=
  ∀ n, (P16496257802349827511.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P7533130549813764476

`eq[A002126(n), A014017(n)]`
-/

namespace A164376.P7533130549813764476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P7533130549813764476

namespace A164376

/-- `eq[A002126(n), A014017(n)]` -/
def P7533130549813764476.Spec : Prop :=
  ∀ n, (P7533130549813764476.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P10039791117478318190

`eq[A002126(n), A014021(n)]`
-/

namespace A164376.P10039791117478318190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P10039791117478318190

namespace A164376

/-- `eq[A002126(n), A014021(n)]` -/
def P10039791117478318190.Spec : Prop :=
  ∀ n, (P10039791117478318190.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P13399293358549949980

`eq[A002126(n), A014025(n)]`
-/

namespace A164376.P13399293358549949980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P13399293358549949980

namespace A164376

/-- `eq[A002126(n), A014025(n)]` -/
def P13399293358549949980.Spec : Prop :=
  ∀ n, (P13399293358549949980.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P14864689272779086493

`eq[A002126(n), A014029(n)]`
-/

namespace A164376.P14864689272779086493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P14864689272779086493

namespace A164376

/-- `eq[A002126(n), A014029(n)]` -/
def P14864689272779086493.Spec : Prop :=
  ∀ n, (P14864689272779086493.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P17562174180376758331

`eq[A002126(n), A014037(n)]`
-/

namespace A164376.P17562174180376758331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P17562174180376758331

namespace A164376

/-- `eq[A002126(n), A014037(n)]` -/
def P17562174180376758331.Spec : Prop :=
  ∀ n, (P17562174180376758331.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P12609946297444700406

`eq[A002126(n), A014041(n)]`
-/

namespace A164376.P12609946297444700406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P12609946297444700406

namespace A164376

/-- `eq[A002126(n), A014041(n)]` -/
def P12609946297444700406.Spec : Prop :=
  ∀ n, (P12609946297444700406.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P5193251059642269323

`eq[A002126(n), A014053(n)]`
-/

namespace A164376.P5193251059642269323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P5193251059642269323

namespace A164376

/-- `eq[A002126(n), A014053(n)]` -/
def P5193251059642269323.Spec : Prop :=
  ∀ n, (P5193251059642269323.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P7902532417902640156

`eq[A002126(n), A014057(n)]`
-/

namespace A164376.P7902532417902640156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P7902532417902640156

namespace A164376

/-- `eq[A002126(n), A014057(n)]` -/
def P7902532417902640156.Spec : Prop :=
  ∀ n, (P7902532417902640156.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P25864991077588263

`eq[A002126(n), A014061(n)]`
-/

namespace A164376.P25864991077588263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P25864991077588263

namespace A164376

/-- `eq[A002126(n), A014061(n)]` -/
def P25864991077588263.Spec : Prop :=
  ∀ n, (P25864991077588263.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P6177806382484167188

`eq[A002126(n), A014129(n)]`
-/

namespace A164376.P6177806382484167188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P6177806382484167188

namespace A164376

/-- `eq[A002126(n), A014129(n)]` -/
def P6177806382484167188.Spec : Prop :=
  ∀ n, (P6177806382484167188.a n : ℤ) = A164376 (n + 1)

end A164376

/-! ## A164376.P17504393468861174483

`eq[A002126(n), A014177(n)]`
-/

namespace A164376.P17504393468861174483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164376.P17504393468861174483

namespace A164376

/-- `eq[A002126(n), A014177(n)]` -/
def P17504393468861174483.Spec : Prop :=
  ∀ n, (P17504393468861174483.a n : ℤ) = A164376 (n + 1)

end A164376

/-!
# A164378: a(n) = the smallest positive integer not yet in the sequence that is neither coprime to n nor to n+1.

The programs for A164378, there is no canonical definition to state claims against.
-/

/-! ## A164378.P7419866222242818163

`A024619(A164379(n+1))`
-/

namespace A164378.P7419866222242818163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (A164379 (n + 1)).toNat

end

end A164378.P7419866222242818163

/-! ## A164378.P9177403495955988516

`A361102(A164379(n+1)+1)`
-/

namespace A164378.P9177403495955988516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A164379 (n + 1) + 1).toNat

end

end A164378.P9177403495955988516

/-! ## A164378.P14538267595121537845

`A080765(A164379(Δ[n²]-n))+1`
-/

namespace A164378.P14538267595121537845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (A164379 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + 1

end

end A164378.P14538267595121537845

/-! ## A164378.P17177294460225555656

`or(char[1], A080765(A164379(2*n-(n-1))))+1`
-/

namespace A164378.P17177294460225555656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A080765 (A164379 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat) + 1

end

end A164378.P17177294460225555656

/-! ## A164378.P16503142672496522006

`A144328(∑[n]+1)+A080765(A164379(n+1))`
-/

namespace A164378.P16503142672496522006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A080765 (A164379 (n + 1)).toNat

end

end A164378.P16503142672496522006

/-! ## A164378.P6723049798324323056

`A000007(n+1)+A080765(A164379(n+1))+1`
-/

namespace A164378.P6723049798324323056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A080765 (A164379 (n + 1)).toNat + 1)

end

end A164378.P6723049798324323056

/-!
# A164379: A164378(n+1) = the a(n)th positive integer that is not a power of a prime.

The programs for A164379, there is no canonical definition to state claims against.
-/

/-! ## A164379.P2812026258306855050

`A085970(A164378(n+2))`
-/

namespace A164379.P2812026258306855050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A164378 (n + 2)).toNat

end

end A164379.P2812026258306855050

/-! ## A164379.P14946779080754542128

`A305974(A164378(2*n-n+2))-1`
-/

namespace A164379.P14946779080754542128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A164378 ((2 * n : ℤ) - (n : ℤ) + 2).toNat).toNat - 1

end

end A164379.P14946779080754542128

/-! ## A164379.P9305621991349154096

`(A305974(A164378(n+2))-1)%A171797(n)`
-/

namespace A164379.P9305621991349154096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305974 (A164378 (n + 2)).toNat - 1) (A171797 n)

end

end A164379.P9305621991349154096

/-! ## A164379.P13646060519861705787

`A085121(n²)+A305974(A164378(n+2))-1`
-/

namespace A164379.P13646060519861705787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 (n ^ 2) + (A305974 (A164378 (n + 2)).toNat - 1)

end

end A164379.P13646060519861705787

/-! ## A164379.P14516726222097540255

`A305974(A164378(n+2))%A001359(n+1)-1`
-/

namespace A164379.P14516726222097540255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305974 (A164378 (n + 2)).toNat) (A001359 (n + 1)) - 1

end

end A164379.P14516726222097540255

/-! ## A164379.P8866616085653613936

`A305974(A001359(n+1))+A305974(A164378(n+2))`
-/

namespace A164379.P8866616085653613936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A001359 (n + 1)).toNat + A305974 (A164378 (n + 2)).toNat

end

end A164379.P8866616085653613936

/-!
# A164381: Triangle T(n,k) read by rows: T(n,k) = 1 if (n mod k) <= 2*k/9, -1 if 2*k/9 < (n mod k) <= 4*k/9, otherwise 0.

The programs for A164381, there is no canonical definition to state claims against.
-/

/-! ## A164381.P2566253968827178123

`A318608(A302846(n)^A048158(n+1))`
-/

namespace A164381.P2566253968827178123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318608 (SequenceMachineLib.roundAway ((A302846 n : ℚ) ^ (A048158 (n + 1) : ℤ))).toNat

end

end A164381.P2566253968827178123

/-! ## A164381.P5166728658395218001

`A318608(A302846(n)^A049828(n+1))`
-/

namespace A164381.P5166728658395218001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318608 (SequenceMachineLib.roundAway ((A302846 n : ℚ) ^ (A049828 (n + 1) : ℤ))).toNat

end

end A164381.P5166728658395218001

/-! ## A164381.P9957849549779376889

`A046980(gcd(A022171(n), A271875(n+1)))`
-/

namespace A164381.P9957849549779376889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (Int.gcd (A022171 n) (A271875 (n + 1)))

end

end A164381.P9957849549779376889

/-! ## A164381.P11845418727854935713

`A046980(gcd(A038271(n), A047005(n+3)))`
-/

namespace A164381.P11845418727854935713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (Int.gcd (A038271 n) (A047005 (n + 3)))

end

end A164381.P11845418727854935713

/-! ## A164381.P13913931729323452065

`A016330(gcd(A132318(n), A251746(n)))`
-/

namespace A164381.P13913931729323452065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016330 (Int.gcd (A132318 n) (A251746 n))

end

end A164381.P13913931729323452065

/-!
# A164382: Take sequence A114129, those integers that are factored into prime powers each with a distinct prime exponent. If the largest power of p dividing A114129(n) is p^q(p), p and q being primes, then a(n) = product{p|A114129(n)} q(p)^p.

The programs for A164382, there is no canonical definition to state claims against.
-/

/-! ## A164382.P6868875715436476438

`A008477(A114129(n+1))`
-/

namespace A164382.P6868875715436476438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (A114129 (n + 1)).toNat

end

end A164382.P6868875715436476438

/-! ## A164382.P17959931199346541917

`A008477(∩[A056166(n+1), A063806(n+1)])`
-/

namespace A164382.P17959931199346541917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164382.P17959931199346541917

/-! ## A164382.P17128303041417793102

`A008477(∩[A056166(n+1), A130091(n+2)])`
-/

namespace A164382.P17128303041417793102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164382.P17128303041417793102

/-! ## A164382.P12631781237454758516

`A008477(∩[A056166(n+1), A340656(n+1)])`
-/

namespace A164382.P12631781237454758516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164382.P12631781237454758516

/-!
# A164383: Composite numbers of the form 4 + some prime.

The programs for A164383, the canonical program `A164383.P6548176081872317167` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164383 has offset 1).

The definition of A164383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164383.P6548176081872317167

`A067775(n+1)+4`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A164383

/-- `A067775(n+1)+4` -/
def P6548176081872317167.Spec : Prop :=
  ∀ n, P6548176081872317167.a n = A164383 (n + 1)

theorem P6548176081872317167.correct : P6548176081872317167.Spec := by
  intro n
  simp only [A164383, Nat.add_sub_cancel]

end A164383

/-! ## A164383.P2214217304426891967

`A141427(n+1)+5`
-/

namespace A164383.P2214217304426891967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141427 (n + 1) + 5

end

end A164383.P2214217304426891967

namespace A164383

/-- `A141427(n+1)+5` -/
def P2214217304426891967.Spec : Prop :=
  ∀ n, P2214217304426891967.a n = A164383 (n + 1)

end A164383

/-! ## A164383.P1743094985951448954

`record[A000010((n%3+1)²+n)]+5`
-/

namespace A164383.P1743094985951448954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n % 3 + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 5

end

end A164383.P1743094985951448954

namespace A164383

/-- `record[A000010((n%3+1)²+n)]+5` -/
def P1743094985951448954.Spec : Prop :=
  ∀ n, P1743094985951448954.a n = A164383 (n + 1)

end A164383

/-! ## A164383.P2957913876388118909

`record[A000010(gcd(3, n+1)!+n)]+5`
-/

namespace A164383.P2957913876388118909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.gcd 3 (n + 1)) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 5

end

end A164383.P2957913876388118909

namespace A164383

/-- `record[A000010(gcd(3, n+1)!+n)]+5` -/
def P2957913876388118909.Spec : Prop :=
  ∀ n, P2957913876388118909.a n = A164383 (n + 1)

end A164383

/-! ## A164383.P1090002617358522965

`filter[A175221(n+1), A005171(#)]`
-/

namespace A164383.P1090002617358522965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A164383.P1090002617358522965

namespace A164383

/-- `filter[A175221(n+1), A005171(#)]` -/
def P1090002617358522965.Spec : Prop :=
  ∀ n, P1090002617358522965.a n = A164383 (n + 1)

end A164383

/-! ## A164383.P18433554958692283950

`filter[A175221(n+1), A066247(#)]`
-/

namespace A164383.P18433554958692283950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A164383.P18433554958692283950

namespace A164383

/-- `filter[A175221(n+1), A066247(#)]` -/
def P18433554958692283950.Spec : Prop :=
  ∀ n, P18433554958692283950.a n = A164383 (n + 1)

end A164383

/-! ## A164383.P16099619697971297106

`filter[A175221(n+1), A202238(#)]`
-/

namespace A164383.P16099619697971297106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A164383.P16099619697971297106

namespace A164383

/-- `filter[A175221(n+1), A202238(#)]` -/
def P16099619697971297106.Spec : Prop :=
  ∀ n, P16099619697971297106.a n = A164383 (n + 1)

end A164383

/-! ## A164383.P18381047035153128194

`p?[A002808(n+1)-4]+4`
-/

namespace A164383.P18381047035153128194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A164383.P18381047035153128194

namespace A164383

/-- `p?[A002808(n+1)-4]+4` -/
def P18381047035153128194.Spec : Prop :=
  ∀ n, P18381047035153128194.a n = A164383 (n + 1)

end A164383

/-! ## A164383.P10804551961548872230

`p?[A018252(n+1)-4]+4`
-/

namespace A164383.P10804551961548872230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A164383.P10804551961548872230

namespace A164383

/-- `p?[A018252(n+1)-4]+4` -/
def P10804551961548872230.Spec : Prop :=
  ∀ n, P10804551961548872230.a n = A164383 (n + 1)

end A164383

/-! ## A164383.P15274947650798725711

`∩[A002808(n+1), A175221(n+1)]`
-/

namespace A164383.P15274947650798725711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164383.P15274947650798725711

namespace A164383

/-- `∩[A002808(n+1), A175221(n+1)]` -/
def P15274947650798725711.Spec : Prop :=
  ∀ n, (P15274947650798725711.a n : ℤ) = A164383 (n + 1)

end A164383

/-! ## A164383.P7097955983710497242

`∩[A018252(n+1), A175221(n+1)]`
-/

namespace A164383.P7097955983710497242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164383.P7097955983710497242

namespace A164383

/-- `∩[A018252(n+1), A175221(n+1)]` -/
def P7097955983710497242.Spec : Prop :=
  ∀ n, (P7097955983710497242.a n : ℤ) = A164383 (n + 1)

end A164383

/-! ## A164383.P10945179144186486478

`∩[A141468(n+1), A175221(n+1)]`
-/

namespace A164383.P10945179144186486478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164383.P10945179144186486478

namespace A164383

/-- `∩[A141468(n+1), A175221(n+1)]` -/
def P10945179144186486478.Spec : Prop :=
  ∀ n, (P10945179144186486478.a n : ℤ) = A164383 (n + 1)

end A164383

/-! ## A164383.P17617917228979549121

`∩[A171845(n+1), A175221(n+1)]`
-/

namespace A164383.P17617917228979549121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164383.P17617917228979549121

namespace A164383

/-- `∩[A171845(n+1), A175221(n+1)]` -/
def P17617917228979549121.Spec : Prop :=
  ∀ n, (P17617917228979549121.a n : ℤ) = A164383 (n + 1)

end A164383

/-! ## A164383.P17859782480046441544

`p?[lt[1, A001222(n+1)]-3]+4`
-/

namespace A164383.P17859782480046441544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A164383.P17859782480046441544

namespace A164383

/-- `p?[lt[1, A001222(n+1)]-3]+4` -/
def P17859782480046441544.Spec : Prop :=
  ∀ n, P17859782480046441544.a n = A164383 (n + 1)

end A164383

/-! ## A164383.P8792755772873690010

`∩[A056653(n+1), A175221(n+1)]`
-/

namespace A164383.P8792755772873690010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164383.P8792755772873690010

namespace A164383

/-- `∩[A056653(n+1), A175221(n+1)]` -/
def P8792755772873690010.Spec : Prop :=
  ∀ n, (P8792755772873690010.a n : ℤ) = A164383 (n + 1)

end A164383

/-! ## A164383.P9381272333393565918

`∩[A175221(n+1), A176423(n+1)]`
-/

namespace A164383.P9381272333393565918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164383.P9381272333393565918

namespace A164383

/-- `∩[A175221(n+1), A176423(n+1)]` -/
def P9381272333393565918.Spec : Prop :=
  ∀ n, (P9381272333393565918.a n : ℤ) = A164383 (n + 1)

end A164383

/-! ## A164383.P9511700716701597249

`∩[A175221(n+1), A387319(n+1)]`
-/

namespace A164383.P9511700716701597249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164383.P9511700716701597249

namespace A164383

/-- `∩[A175221(n+1), A387319(n+1)]` -/
def P9511700716701597249.Spec : Prop :=
  ∀ n, (P9511700716701597249.a n : ℤ) = A164383 (n + 1)

end A164383

/-! ## A164383.P2368360338333076483

`∩[A065090(n+1), A175221(n+1)]`
-/

namespace A164383.P2368360338333076483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164383.P2368360338333076483

namespace A164383

/-- `∩[A065090(n+1), A175221(n+1)]` -/
def P2368360338333076483.Spec : Prop :=
  ∀ n, (P2368360338333076483.a n : ℤ) = A164383 (n + 1)

end A164383

/-! ## A164383.P118080645157348363

`∩[A171581(n+1), A175221(n+1)]`
-/

namespace A164383.P118080645157348363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164383.P118080645157348363

namespace A164383

/-- `∩[A171581(n+1), A175221(n+1)]` -/
def P118080645157348363.Spec : Prop :=
  ∀ n, (P118080645157348363.a n : ℤ) = A164383 (n + 1)

end A164383

/-! ## A164383.P241486094726068475

`∩[A173905(n+1), A175221(n+1)]`
-/

namespace A164383.P241486094726068475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164383.P241486094726068475

namespace A164383

/-- `∩[A173905(n+1), A175221(n+1)]` -/
def P241486094726068475.Spec : Prop :=
  ∀ n, (P241486094726068475.a n : ℤ) = A164383 (n + 1)

end A164383

/-!
# A164384: Positive nonprimes of the form p-4 where p is prime.

The programs for A164384, there is no canonical definition to state claims against.
-/

/-! ## A164384.P4105719249377766200

`p?[A080713(n+4)]-4`
-/

namespace A164384.P4105719249377766200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080713 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A164384.P4105719249377766200

/-! ## A164384.P2728982400510661791

`p?[A014076(n+1)+4]-4`
-/

namespace A164384.P2728982400510661791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A164384.P2728982400510661791

/-! ## A164384.P14354405828897867665

`p?[A018252(n+1)+4]-4`
-/

namespace A164384.P14354405828897867665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A164384.P14354405828897867665

/-! ## A164384.P14891592687709313151

`filter[A172367(n+1), A005171(#)]`
-/

namespace A164384.P14891592687709313151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A164384.P14891592687709313151

/-! ## A164384.P10630112850522152954

`filter[A172367(n+1), A292438(#)]`
-/

namespace A164384.P10630112850522152954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A164384.P10630112850522152954

/-! ## A164384.P16997473416538714421

`record[A171435(A000040(n+4)-4)]`
-/

namespace A164384.P16997473416538714421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A000040 (n + 4) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164384.P16997473416538714421

/-! ## A164384.P1753294902642266998

`eq[A095248(n+1), A290542(n+4)]`
-/

namespace A164384.P1753294902642266998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290542 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164384.P1753294902642266998

/-! ## A164384.P8156798952725681047

`∩[A014076(n+1), A172367(n+1)]`
-/

namespace A164384.P8156798952725681047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164384.P8156798952725681047

/-! ## A164384.P3494992531173970014

`∩[A018252(n+1), A172367(n+1)]`
-/

namespace A164384.P3494992531173970014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164384.P3494992531173970014

/-! ## A164384.P10965357620508874681

`∩[A056653(n+1), A172367(n+1)]`
-/

namespace A164384.P10965357620508874681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164384.P10965357620508874681

/-!
# A164385: Composite numbers n such that n+4 and n-4 are both prime.

The programs for A164385, the canonical program `A164385.P969803390570272299` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164385 has offset 1).

The definition of A164385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164385.P969803390570272299

`A087680(n+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A164385

/-- `A087680(n+2)` -/
def P969803390570272299.Spec : Prop :=
  ∀ n, P969803390570272299.a n = A164385 (n + 1)

theorem P969803390570272299.correct : P969803390570272299.Spec := by
  intro n
  simp only [A164385, Nat.add_sub_cancel]

end A164385

/-! ## A164385.P2438889331189730046

`A023202(n+2)+4`
-/

namespace A164385.P2438889331189730046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 2) + 4

end

end A164385.P2438889331189730046

namespace A164385

/-- `A023202(n+2)+4` -/
def P2438889331189730046.Spec : Prop :=
  ∀ n, P2438889331189730046.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P3378362747882724095

`2*A088764(n+2)+1`
-/

namespace A164385.P3378362747882724095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088764 (n + 2) + 1

end

end A164385.P3378362747882724095

namespace A164385

/-- `2*A088764(n+2)+1` -/
def P3378362747882724095.Spec : Prop :=
  ∀ n, P3378362747882724095.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P13412219326500036806

`p?[A015915(n+2)]+4`
-/

namespace A164385.P13412219326500036806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A164385.P13412219326500036806

namespace A164385

/-- `p?[A015915(n+2)]+4` -/
def P13412219326500036806.Spec : Prop :=
  ∀ n, P13412219326500036806.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P9268916414941763632

`p?[A262085(n+2)]+4`
-/

namespace A164385.P9268916414941763632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A164385.P9268916414941763632

namespace A164385

/-- `p?[A262085(n+2)]+4` -/
def P9268916414941763632.Spec : Prop :=
  ∀ n, P9268916414941763632.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P8921603437435573760

`p?[A000040(n+3)+8]-4`
-/

namespace A164385.P8921603437435573760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A164385.P8921603437435573760

namespace A164385

/-- `p?[A000040(n+3)+8]-4` -/
def P8921603437435573760.Spec : Prop :=
  ∀ n, P8921603437435573760.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P13429843343347300324

`∩[A164383(n+1), A172367(n+1)]`
-/

namespace A164385.P13429843343347300324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164385.P13429843343347300324

namespace A164385

/-- `∩[A164383(n+1), A172367(n+1)]` -/
def P13429843343347300324.Spec : Prop :=
  ∀ n, (P13429843343347300324.a n : ℤ) = A164385 (n + 1)

end A164385

/-! ## A164385.P6959660957412033028

`A092402(n+2)-4`
-/

namespace A164385.P6959660957412033028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092402 (n + 2) - 4

end

end A164385.P6959660957412033028

namespace A164385

/-- `A092402(n+2)-4` -/
def P6959660957412033028.Spec : Prop :=
  ∀ n, P6959660957412033028.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P3611783786147770394

`A016945(A307563(n+1))`
-/

namespace A164385.P3611783786147770394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A307563 (n + 1)).toNat

end

end A164385.P3611783786147770394

namespace A164385

/-- `A016945(A307563(n+1))` -/
def P3611783786147770394.Spec : Prop :=
  ∀ n, P3611783786147770394.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P16191557131588277323

`A005408(A088764(n+2))`
-/

namespace A164385.P16191557131588277323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A088764 (n + 2)).toNat

end

end A164385.P16191557131588277323

namespace A164385

/-- `A005408(A088764(n+2))` -/
def P16191557131588277323.Spec : Prop :=
  ∀ n, P16191557131588277323.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P2923557214389386796

`A004274(A088764(n+2)+2)`
-/

namespace A164385.P2923557214389386796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A088764 (n + 2) + 2).toNat

end

end A164385.P2923557214389386796

namespace A164385

/-- `A004274(A088764(n+2)+2)` -/
def P2923557214389386796.Spec : Prop :=
  ∀ n, P2923557214389386796.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P2426584380464546889

`A004280(A088764(n+2)+2)`
-/

namespace A164385.P2426584380464546889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A088764 (n + 2) + 2).toNat

end

end A164385.P2426584380464546889

namespace A164385

/-- `A004280(A088764(n+2)+2)` -/
def P2426584380464546889.Spec : Prop :=
  ∀ n, P2426584380464546889.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P4294823176620657436

`A004277(A088764(n+2)-1)+3`
-/

namespace A164385.P4294823176620657436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A088764 (n + 2) - 1).toNat + 3

end

end A164385.P4294823176620657436

namespace A164385

/-- `A004277(A088764(n+2)-1)+3` -/
def P4294823176620657436.Spec : Prop :=
  ∀ n, P4294823176620657436.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P5648958355475716022

`A241663(A092402(n+2))`
-/

namespace A164385.P5648958355475716022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241663 (A092402 (n + 2)).toNat

end

end A164385.P5648958355475716022

namespace A164385

/-- `A241663(A092402(n+2))` -/
def P5648958355475716022.Spec : Prop :=
  ∀ n, P5648958355475716022.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P14523750875360896399

`A015943(A023202(n+2))`
-/

namespace A164385.P14523750875360896399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015943 (A023202 (n + 2)).toNat

end

end A164385.P14523750875360896399

namespace A164385

/-- `A015943(A023202(n+2))` -/
def P14523750875360896399.Spec : Prop :=
  ∀ n, P14523750875360896399.a n = A164385 (n + 1)

end A164385

/-! ## A164385.P16153519661851411478

`A231190(2*A092402(n+2))`
-/

namespace A164385.P16153519661851411478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231190 (2 * A092402 (n + 2)).toNat

end

end A164385.P16153519661851411478

namespace A164385

/-- `A231190(2*A092402(n+2))` -/
def P16153519661851411478.Spec : Prop :=
  ∀ n, P16153519661851411478.a n = A164385 (n + 1)

end A164385

/-!
# A164386: Numbers which are not 1 larger than a nonzero square.

The programs for A164386, the canonical program `A164386.P4445805089101924583` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164386 has offset 1).

The definition of A164386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164386.P4445805089101924583

`n+1+floor(sqrt(n)+1/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164386

/-- `n+1+floor(sqrt(n)+1/2)` -/
def P4445805089101924583.Spec : Prop :=
  ∀ n, P4445805089101924583.a n = A164386 (n + 1)

theorem P4445805089101924583.correct : P4445805089101924583.Spec := by
  intro n
  simp only [A164386, Nat.add_sub_cancel]

end A164386

/-! ## A164386.P6204950584511758762

`comp[ceil(n/acot(n))]`
-/

namespace A164386.P6204950584511758762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164386.P6204950584511758762

namespace A164386

/-- `comp[ceil(n/acot(n))]` -/
def P6204950584511758762.Spec : Prop :=
  ∀ n, (P6204950584511758762.a n : ℤ) = A164386 (n + 1)

end A164386

/-! ## A164386.P6150176536260327039

`round(sqrt(n)-xor(n, -1))`
-/

namespace A164386.P6150176536260327039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) - (Int.xor (n : ℤ) (-1) : ℝ))

end

end A164386.P6150176536260327039

namespace A164386

/-- `round(sqrt(n)-xor(n, -1))` -/
def P6150176536260327039.Spec : Prop :=
  ∀ n, P6150176536260327039.a n = A164386 (n + 1)

end A164386

/-! ## A164386.P9549019475432825709

`abs(round(sqrt(n))-xor(n, -1))`
-/

namespace A164386.P9549019475432825709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) - Int.xor (n : ℤ) (-1)|

end

end A164386.P9549019475432825709

namespace A164386

/-- `abs(round(sqrt(n))-xor(n, -1))` -/
def P9549019475432825709.Spec : Prop :=
  ∀ n, P9549019475432825709.a n = A164386 (n + 1)

end A164386

/-! ## A164386.P2036625243801442102

`comp[∑[a(n-1)+2]]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A164386.P2036625243801442102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164386.P2036625243801442102

namespace A164386

/-- `comp[∑[a(n-1)+2]]` -/
def P2036625243801442102.Spec : Prop :=
  ∀ n, (P2036625243801442102.a n : ℤ) = A164386 (n + 1)

end A164386

/-! ## A164386.P3147833757569774380

`floor(sqrt(a(n-1))+n+1)` with `a(0)=1`
-/

namespace A164386.P3147833757569774380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.sqrt (a (n - 1) : ℝ) + (n + 1 : ℝ)⌋

end

end A164386.P3147833757569774380

namespace A164386

/-- `floor(sqrt(a(n-1))+n+1)` -/
def P3147833757569774380.Spec : Prop :=
  ∀ n, P3147833757569774380.a n = A164386 (n + 1)

end A164386

/-! ## A164386.P12052095890461286248

`floor(a(n-1)^(1/2)+n+1)` with `a(0)=1`
-/

namespace A164386.P12052095890461286248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ) + (n + 1 : ℝ)⌋

end

end A164386.P12052095890461286248

namespace A164386

/-- `floor(a(n-1)^(1/2)+n+1)` -/
def P12052095890461286248.Spec : Prop :=
  ∀ n, P12052095890461286248.a n = A164386 (n + 1)

end A164386

/-! ## A164386.P1430727638017200738

`floor(2*n+1-(1-n)²/a(n-1))` with `a(0)=1`
-/

namespace A164386.P1430727638017200738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * n + 1 : ℚ) - ((1 - (n : ℤ)) ^ 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A164386.P1430727638017200738

namespace A164386

/-- `floor(2*n+1-(1-n)²/a(n-1))` -/
def P1430727638017200738.Spec : Prop :=
  ∀ n, P1430727638017200738.a n = A164386 (n + 1)

end A164386

/-! ## A164386.P1491210120964108405

`floor(2*n+1-(n-1)*(n-1)/a(n-1))` with `a(0)=1`
-/

namespace A164386.P1491210120964108405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * n + 1 : ℚ) - ((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ))⌋

end

end A164386.P1491210120964108405

namespace A164386

/-- `floor(2*n+1-(n-1)*(n-1)/a(n-1))` -/
def P1491210120964108405.Spec : Prop :=
  ∀ n, P1491210120964108405.a n = A164386 (n + 1)

end A164386

/-! ## A164386.P6893512907538120451

`comp[A051494(n)+1]`
-/

namespace A164386.P6893512907538120451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164386.P6893512907538120451

namespace A164386

/-- `comp[A051494(n)+1]` -/
def P6893512907538120451.Spec : Prop :=
  ∀ n, (P6893512907538120451.a n : ℤ) = A164386 (n + 1)

end A164386

/-! ## A164386.P8258692916840142773

`comp[2-A131723(n)]`
-/

namespace A164386.P8258692916840142773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164386.P8258692916840142773

namespace A164386

/-- `comp[2-A131723(n)]` -/
def P8258692916840142773.Spec : Prop :=
  ∀ n, (P8258692916840142773.a n : ℤ) = A164386 (n + 1)

end A164386

/-! ## A164386.P11355931141346458575

`lt[A091453(n)², n]`
-/

namespace A164386.P11355931141346458575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A164386.P11355931141346458575

namespace A164386

/-- `lt[A091453(n)², n]` -/
def P11355931141346458575.Spec : Prop :=
  ∀ n, (P11355931141346458575.a n : ℤ) = A164386 (n + 1)

end A164386

/-! ## A164386.P15929813517734033748

`∑[A062557(abs(2-n))]`
-/

namespace A164386.P15929813517734033748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164386.P15929813517734033748

namespace A164386

/-- `∑[A062557(abs(2-n))]` -/
def P15929813517734033748.Spec : Prop :=
  ∀ n, P15929813517734033748.a n = A164386 (n + 1)

end A164386

/-! ## A164386.P16833678167996182273

`∑[char[∑[A004277(n)]]+1]`
-/

namespace A164386.P16833678167996182273
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164386.P16833678167996182273

namespace A164386

/-- `∑[char[∑[A004277(n)]]+1]` -/
def P16833678167996182273.Spec : Prop :=
  ∀ n, (P16833678167996182273.a n : ℤ) = A164386 (n + 1)

end A164386

/-! ## A164386.P16273426001860720109

`comp[∑[comp[A134234(n+1)]]]`
-/

namespace A164386.P16273426001860720109
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134234 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164386.P16273426001860720109

namespace A164386

/-- `comp[∑[comp[A134234(n+1)]]]` -/
def P16273426001860720109.Spec : Prop :=
  ∀ n, (P16273426001860720109.a n : ℤ) = A164386 (n + 1)

end A164386

/-! ## A164386.P15769592687887566826

`record[(n+1)^(1-char[n²])]`
-/

namespace A164386.P15769592687887566826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164386.P15769592687887566826

namespace A164386

/-- `record[(n+1)^(1-char[n²])]` -/
def P15769592687887566826.Spec : Prop :=
  ∀ n, P15769592687887566826.a n = (A164386 (n + 1) : ℚ)

end A164386

/-! ## A164386.P14462993596854965863

`lt[A276689(n)², n]`
-/

namespace A164386.P14462993596854965863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A164386.P14462993596854965863

namespace A164386

/-- `lt[A276689(n)², n]` -/
def P14462993596854965863.Spec : Prop :=
  ∀ n, (P14462993596854965863.a n : ℤ) = A164386 (n + 1)

end A164386

/-! ## A164386.P5097051404437389321

`A065475(A164514(n+1))`
-/

namespace A164386.P5097051404437389321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A164514 (n + 1)).toNat

end

end A164386.P5097051404437389321

namespace A164386

/-- `A065475(A164514(n+1))` -/
def P5097051404437389321.Spec : Prop :=
  ∀ n, P5097051404437389321.a n = A164386 (n + 1)

end A164386

/-!
# A164387: Number of binary strings of length n with no substrings equal to 0000 or 0010.

The programs for A164387, the canonical program `A164387.P8345450026453253617` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164387 has offset 0).

The definition of A164387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164387.P8345450026453253617

`a(n-1)+a(n-2)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=14`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164387

/-- `a(n-1)+a(n-2)+a(n-4)+a(n-5)` -/
def P8345450026453253617.Spec : Prop :=
  ∀ n, (P8345450026453253617.a n : ℤ) = A164387 n

theorem P8345450026453253617.correct : P8345450026453253617.Spec := by
  intro n
  simp only [A164387]

end A164387

/-! ## A164387.P10517018000111221328

`A185265(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A164387.P10517018000111221328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A185265 (n + 1) - a (n - 1)

end

end A164387.P10517018000111221328

namespace A164387

/-- `A185265(n+1)-a(n-1)` -/
def P10517018000111221328.Spec : Prop :=
  ∀ n, P10517018000111221328.a n = A164387 n

end A164387

/-! ## A164387.P11689789155701317445

`A079976(n+2)-A079976(n)`
-/

namespace A164387.P11689789155701317445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079976 (n + 2) - A079976 n

end

end A164387.P11689789155701317445

namespace A164387

/-- `A079976(n+2)-A079976(n)` -/
def P11689789155701317445.Spec : Prop :=
  ∀ n, P11689789155701317445.a n = A164387 n

end A164387

/-! ## A164387.P8964243798823358966

`Δ[A014743(n+1)]`
-/

namespace A164387.P8964243798823358966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164387.P8964243798823358966

namespace A164387

/-- `Δ[A014743(n+1)]` -/
def P8964243798823358966.Spec : Prop :=
  ∀ n, P8964243798823358966.a n = A164387 n

end A164387

/-! ## A164387.P14843315735302466365

`Δ[A079976(n+1)+A079976(n)]`
-/

namespace A164387.P14843315735302466365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079976 (n + 1) + A079976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164387.P14843315735302466365

namespace A164387

/-- `Δ[A079976(n+1)+A079976(n)]` -/
def P14843315735302466365.Spec : Prop :=
  ∀ n, P14843315735302466365.a n = A164387 n

end A164387

/-! ## A164387.P3111152568112830043

`A014743(n+2)-A014743(n+1)`
-/

namespace A164387.P3111152568112830043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014743 (n + 2) - A014743 (n + 1)

end

end A164387.P3111152568112830043

namespace A164387

/-- `A014743(n+2)-A014743(n+1)` -/
def P3111152568112830043.Spec : Prop :=
  ∀ n, P3111152568112830043.a n = A164387 n

end A164387

/-! ## A164387.P16762825841202521226

`2^n-A209400(n)`
-/

namespace A164387.P16762825841202521226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A209400 n

end

end A164387.P16762825841202521226

namespace A164387

/-- `2^n-A209400(n)` -/
def P16762825841202521226.Spec : Prop :=
  ∀ n, P16762825841202521226.a n = A164387 n

theorem P16762825841202521226.correct : P16762825841202521226.Spec := by
  intro n
  simp only [A164387, Nat.add_sub_cancel, A164387.P16762825841202521226.a, A164387.P8345450026453253617.a, A209400, A209400.P11197854543313356138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164387

/-! ## A164387.P5261312997835987737

`A000051(n)-(A209400(n)+1)`
-/

namespace A164387.P5261312997835987737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A209400 n + 1)

end

end A164387.P5261312997835987737

namespace A164387

/-- `A000051(n)-(A209400(n)+1)` -/
def P5261312997835987737.Spec : Prop :=
  ∀ n, P5261312997835987737.a n = A164387 n

theorem P5261312997835987737.correct : P5261312997835987737.Spec := by
  intro n
  simp only [A164387, Nat.add_sub_cancel, A164387.P5261312997835987737.a, A164387.P8345450026453253617.a, A000051, A000051.P14067217022188782580.a, A209400, A209400.P11197854543313356138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164387

/-! ## A164387.P11967529034540442960

`A006500(n)+A209399(n)-A209400(n)`
-/

namespace A164387.P11967529034540442960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 n + (A209399 n - A209400 n)

end

end A164387.P11967529034540442960

namespace A164387

/-- `A006500(n)+A209399(n)-A209400(n)` -/
def P11967529034540442960.Spec : Prop :=
  ∀ n, P11967529034540442960.a n = A164387 n

end A164387

/-!
# A164388: Number of binary strings of length n with no substrings equal to 0000 or 0011.

The programs for A164388, the canonical program `A164388.P13919177667350439990` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164388 has offset 0).

The definition of A164388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164388.P13919177667350439990

`a(n-1)+a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=14, a(5)=25, a(6)=45, a(7)=80, a(8)=142`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164388

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-5)` -/
def P13919177667350439990.Spec : Prop :=
  ∀ n, P13919177667350439990.a n = A164388 n

theorem P13919177667350439990.correct : P13919177667350439990.Spec := by
  intro n
  simp only [A164388]

end A164388

/-! ## A164388.P13359178767223873553

`ogf((1+x+x^2+x^3)/(1-x-x^2-x^3+x^5))`
-/

namespace A164388.P13359178767223873553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, -1, -1, -1, 0, 1] n

end

end A164388.P13359178767223873553

namespace A164388

/-- `ogf((1+x+x^2+x^3)/(1-x-x^2-x^3+x^5))` -/
def P13359178767223873553.Spec : Prop :=
  ∀ n, P13359178767223873553.a n = A164388 n

end A164388

/-! ## A164388.P5173064903273655077

`A199925(n+4)`
-/

namespace A164388.P5173064903273655077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199925 (n + 4)

end

end A164388.P5173064903273655077

namespace A164388

/-- `A199925(n+4)` -/
def P5173064903273655077.Spec : Prop :=
  ∀ n, P5173064903273655077.a n = A164388 n

end A164388

/-! ## A164388.P13862391166924520522

`∑[A199926(n+5)]`
-/

namespace A164388.P13862391166924520522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199926 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164388.P13862391166924520522

namespace A164388

/-- `∑[A199926(n+5)]` -/
def P13862391166924520522.Spec : Prop :=
  ∀ n, P13862391166924520522.a n = A164388 n

end A164388

/-! ## A164388.P10737624172497014490

`record[A199925(A178915(-xor(n, -1)))]`
-/

namespace A164388.P10737624172497014490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199925 (A178915 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164388.P10737624172497014490

namespace A164388

/-- `record[A199925(A178915(-xor(n, -1)))]` -/
def P10737624172497014490.Spec : Prop :=
  ∀ n, P10737624172497014490.a n = A164388 n

end A164388

/-! ## A164388.P1783292536306101038

`a(n-1)+A199926(n+5)+A000038(n)` with `a(0)=1`
-/

namespace A164388.P1783292536306101038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A199926 (n + 5) + A000038 n)

end

end A164388.P1783292536306101038

namespace A164388

/-- `a(n-1)+A199926(n+5)+A000038(n)` -/
def P1783292536306101038.Spec : Prop :=
  ∀ n, P1783292536306101038.a n = A164388 n

end A164388

/-! ## A164388.P7232524480224183313

`a(n-1)+gcd(5, A000032(n))*A199926(n+5)` with `a(0)=1`
-/

namespace A164388.P7232524480224183313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Int.gcd 5 (A000032 n) : ℤ) * A199926 (n + 5)

end

end A164388.P7232524480224183313

namespace A164388

/-- `a(n-1)+gcd(5, A000032(n))*A199926(n+5)` -/
def P7232524480224183313.Spec : Prop :=
  ∀ n, P7232524480224183313.a n = A164388 n

end A164388

/-! ## A164388.P12378960151452098309

`gcd(A020761(n), A199925(A020705(n)))`
-/

namespace A164388.P12378960151452098309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020761 n) (A199925 (A020705 n).toNat)

end

end A164388.P12378960151452098309

namespace A164388

/-- `gcd(A020761(n), A199925(A020705(n)))` -/
def P12378960151452098309.Spec : Prop :=
  ∀ n, (P12378960151452098309.a n : ℤ) = A164388 n

end A164388

/-! ## A164388.P9272677589535320355

`∑[A052972(n)]+A254685(n)-A052972(n)`
-/

namespace A164388.P9272677589535320355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A254685 n - A052972 n)

end

end A164388.P9272677589535320355

namespace A164388

/-- `∑[A052972(n)]+A254685(n)-A052972(n)` -/
def P9272677589535320355.Spec : Prop :=
  ∀ n, P9272677589535320355.a n = A164388 n

end A164388

/-! ## A164388.P15851386135181005465

`A199594(n+4)-A199926(n+4)`
-/

namespace A164388.P15851386135181005465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199594 (n + 4) - A199926 (n + 4)

end

end A164388.P15851386135181005465

namespace A164388

/-- `A199594(n+4)-A199926(n+4)` -/
def P15851386135181005465.Spec : Prop :=
  ∀ n, P15851386135181005465.a n = A164388 n

end A164388

/-! ## A164388.P1550595134563058393

`and(A199925(A020705(n)), A290682(n))`
-/

namespace A164388.P1550595134563058393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199925 (A020705 n).toNat) (A290682 n)

end

end A164388.P1550595134563058393

namespace A164388

/-- `and(A199925(A020705(n)), A290682(n))` -/
def P1550595134563058393.Spec : Prop :=
  ∀ n, P1550595134563058393.a n = A164388 n

end A164388

/-!
# A164389: Number of binary strings of length n with no substrings equal to 0000 or 0101.

The programs for A164389, there is no canonical definition to state claims against.
-/

/-! ## A164389.P15329251375566879905

`∑[A023193(Δ[A214209(n+1)])]`
-/

namespace A164389.P15329251375566879905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214209 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164389.P15329251375566879905

/-! ## A164389.P4532129344552607356

`A193832(A077832(n))`
-/

namespace A164389.P4532129344552607356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A077832 n).toNat

end

end A164389.P4532129344552607356

/-! ## A164389.P18330983754457158746

`A193832(∑[A077840(n)])`
-/

namespace A164389.P18330983754457158746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164389.P18330983754457158746

/-! ## A164389.P12336486550030573828

`∑[A202304(A182267(n))]`
-/

namespace A164389.P12336486550030573828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A182267 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164389.P12336486550030573828

/-! ## A164389.P4474183262935757013

`A100196(A329669(n+1))`
-/

namespace A164389.P4474183262935757013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A329669 (n + 1)).toNat

end

end A164389.P4474183262935757013

/-!
# A164390: Number of binary strings of length n with no substrings equal to 0000 or 0110.

The programs for A164390, there is no canonical definition to state claims against.
-/

/-! ## A164390.P10651218066809729469

`∑[A103128(∑[A080937(n)])]`
-/

namespace A164390.P10651218066809729469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164390.P10651218066809729469

/-! ## A164390.P9973703658336826724

`∑[A257639(A173404(2*n+1))]`
-/

namespace A164390.P9973703658336826724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A173404 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164390.P9973703658336826724

/-! ## A164390.P7672868186739934806

`A010051(A121442(n))+A002843(n+1)`
-/

namespace A164390.P7672868186739934806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A121442 n).toNat + A002843 (n + 1)

end

end A164390.P7672868186739934806

/-! ## A164390.P6716608351161241605

`A164388(n)-A164364(A164362(n+5))`
-/

namespace A164390.P6716608351161241605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164388 n - A164364 (A164362 (n + 5)).toNat

end

end A164390.P6716608351161241605

/-! ## A164390.P18327894038799836461

`A172471(ceil(sqrt(10^n)))`
-/

namespace A164390.P18327894038799836461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ⌈Real.sqrt (10 ^ n : ℝ)⌉.toNat

end

end A164390.P18327894038799836461

/-!
# A164391: Number of binary strings of length n with no substrings equal to 0000 or 0111.

The programs for A164391, the canonical program `A164391.P9179662373154407567` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164391 has offset 0).

The definition of A164391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164391.P9179662373154407567

`∑[A123908(n+1)-a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A164391

/-- `∑[A123908(n+1)-a(n-1)]` -/
def P9179662373154407567.Spec : Prop :=
  ∀ n, P9179662373154407567.a n = A164391 n

theorem P9179662373154407567.correct : P9179662373154407567.Spec := by
  intro n
  simp only [A164391]

end A164391

/-! ## A164391.P9129183484131081353

`A005169(n+3)-A290771(A035337(n))`
-/

namespace A164391.P9129183484131081353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 (n + 3) - A290771 (A035337 n).toNat

end

end A164391.P9129183484131081353

namespace A164391

/-- `A005169(n+3)-A290771(A035337(n))` -/
def P9129183484131081353.Spec : Prop :=
  ∀ n, P9129183484131081353.a n = A164391 n

end A164391

/-! ## A164391.P8537742712051486818

`A005169(A065673(n+3))-1`
-/

namespace A164391.P8537742712051486818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 (A065673 (n + 3)).toNat - 1

end

end A164391.P8537742712051486818

namespace A164391

/-- `A005169(A065673(n+3))-1` -/
def P8537742712051486818.Spec : Prop :=
  ∀ n, P8537742712051486818.a n = A164391 n

end A164391

/-! ## A164391.P7460284724039140952

`(A005169(n+3)-1)%A326891(n+1)`
-/

namespace A164391.P7460284724039140952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005169 (n + 3) - 1) (A326891 (n + 1))

end

end A164391.P7460284724039140952

namespace A164391

/-- `(A005169(n+3)-1)%A326891(n+1)` -/
def P7460284724039140952.Spec : Prop :=
  ∀ n, P7460284724039140952.a n = A164391 n

end A164391

/-! ## A164391.P1303506954711676059

`A005169(n+3)-A344739(record[(n-3)*n/2])`
-/

namespace A164391.P1303506954711676059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 (n + 3) - A344739 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A164391.P1303506954711676059

namespace A164391

/-- `A005169(n+3)-A344739(record[(n-3)*n/2])` -/
def P1303506954711676059.Spec : Prop :=
  ∀ n, P1303506954711676059.a n = A164391 n

end A164391

/-!
# A164392: Number of binary strings of length n with no substrings equal to 0001 or 0010.

The programs for A164392, the canonical program `A164392.P10217645153756178216` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164392 has offset 0).

The definition of A164392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164392.P10217645153756178216

`a(n-1)+a(n-2)+a(n-4)+1` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164392

/-- `a(n-1)+a(n-2)+a(n-4)+1` -/
def P10217645153756178216.Spec : Prop :=
  ∀ n, (P10217645153756178216.a n : ℤ) = A164392 n

theorem P10217645153756178216.correct : P10217645153756178216.Spec := by
  intro n
  simp only [A164392]

end A164392

/-! ## A164392.P12545137528966231315

`A193771(2*n)+A017818(2*(n+1))`
-/

namespace A164392.P12545137528966231315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (2 * n) + A017818 (2 * (n + 1))

end

end A164392.P12545137528966231315

namespace A164392

/-- `A193771(2*n)+A017818(2*(n+1))` -/
def P12545137528966231315.Spec : Prop :=
  ∀ n, P12545137528966231315.a n = A164392 n

end A164392

/-! ## A164392.P3241424829301847562

`∑[A060945(n+1)-A005251(n+1)]+1`
-/

namespace A164392.P3241424829301847562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 1) - A005251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A164392.P3241424829301847562

namespace A164392

/-- `∑[A060945(n+1)-A005251(n+1)]+1` -/
def P3241424829301847562.Spec : Prop :=
  ∀ n, P3241424829301847562.a n = A164392 n

end A164392

/-! ## A164392.P10525449180927476774

`A060945(n+1)+A368299(n)-A181532(n)`
-/

namespace A164392.P10525449180927476774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 1) + (A368299 n - A181532 n)

end

end A164392.P10525449180927476774

namespace A164392

/-- `A060945(n+1)+A368299(n)-A181532(n)` -/
def P10525449180927476774.Spec : Prop :=
  ∀ n, P10525449180927476774.a n = A164392 n

end A164392

/-! ## A164392.P14486734232822573362

`A368299(n+2)-A005314(n+1)`
-/

namespace A164392.P14486734232822573362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368299 (n + 2) - A005314 (n + 1)

end

end A164392.P14486734232822573362

namespace A164392

/-- `A368299(n+2)-A005314(n+1)` -/
def P14486734232822573362.Spec : Prop :=
  ∀ n, P14486734232822573362.a n = A164392 n

end A164392

/-! ## A164392.P17295417014856734911

`A193771(2*n+3)-record[A000931(2*n)]`
-/

namespace A164392.P17295417014856734911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (2 * n + 3) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164392.P17295417014856734911

namespace A164392

/-- `A193771(2*n+3)-record[A000931(2*n)]` -/
def P17295417014856734911.Spec : Prop :=
  ∀ n, P17295417014856734911.a n = A164392 n

end A164392

/-! ## A164392.P12066178228414609890

`A193771(2*n+3)-∑[A000931(2*n+3)]`
-/

namespace A164392.P12066178228414609890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (2 * n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164392.P12066178228414609890

namespace A164392

/-- `A193771(2*n+3)-∑[A000931(2*n+3)]` -/
def P12066178228414609890.Spec : Prop :=
  ∀ n, P12066178228414609890.a n = A164392 n

end A164392

/-! ## A164392.P6072255258418876929

`A274110(n+4)-2*A274110(n+2)`
-/

namespace A164392.P6072255258418876929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274110 (n + 4) - 2 * A274110 (n + 2)

end

end A164392.P6072255258418876929

namespace A164392

/-- `A274110(n+4)-2*A274110(n+2)` -/
def P6072255258418876929.Spec : Prop :=
  ∀ n, P6072255258418876929.a n = A164392 n

end A164392

/-! ## A164392.P11026619579346633329

`record[A193771(2*n+1)-A001608(2*n+1)]`
-/

namespace A164392.P11026619579346633329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (2 * n + 1) - A001608 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164392.P11026619579346633329

namespace A164392

/-- `record[A193771(2*n+1)-A001608(2*n+1)]` -/
def P11026619579346633329.Spec : Prop :=
  ∀ n, P11026619579346633329.a n = A164392 n

end A164392

/-!
# A164393: Number of binary strings of length n with no substrings equal to 0001 or 0011.

The programs for A164393, the canonical program `A164393.P17020941678406421992` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164393 has offset 0).

The definition of A164393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164393.P17020941678406421992

`2*a(n-1)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=14`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164393

/-- `2*a(n-1)-2*a(n-4)+a(n-5)` -/
def P17020941678406421992.Spec : Prop :=
  ∀ n, P17020941678406421992.a n = A164393 n

theorem P17020941678406421992.correct : P17020941678406421992.Spec := by
  intro n
  simp only [A164393]

end A164393

/-! ## A164393.P5341310489241943015

`ogf(1/(1-2x+2x^4-x^5))`
-/

namespace A164393.P5341310489241943015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 0, 2, -1] n

end

end A164393.P5341310489241943015

namespace A164393

/-- `ogf(1/(1-2x+2x^4-x^5))` -/
def P5341310489241943015.Spec : Prop :=
  ∀ n, P5341310489241943015.a n = A164393 n

end A164393

/-! ## A164393.P17608996806791441909

`∑[∑[A052527(n)]]`
-/

namespace A164393.P17608996806791441909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164393.P17608996806791441909

namespace A164393

/-- `∑[∑[A052527(n)]]` -/
def P17608996806791441909.Spec : Prop :=
  ∀ n, P17608996806791441909.a n = A164393 n

end A164393

/-! ## A164393.P5318352456800248023

`∑[A116732(n+3)]`
-/

namespace A164393.P5318352456800248023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164393.P5318352456800248023

namespace A164393

/-- `∑[A116732(n+3)]` -/
def P5318352456800248023.Spec : Prop :=
  ∀ n, P5318352456800248023.a n = A164393 n

end A164393

/-! ## A164393.P7412302122231289203

`A239909(n+3)-1`
-/

namespace A164393.P7412302122231289203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 3) - 1

end

end A164393.P7412302122231289203

namespace A164393

/-- `A239909(n+3)-1` -/
def P7412302122231289203.Spec : Prop :=
  ∀ n, P7412302122231289203.a n = A164393 n

end A164393

/-! ## A164393.P17611030429018543533

`∑[abs(Δ[A239909(n+2)])]`
-/

namespace A164393.P17611030429018543533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164393.P17611030429018543533

namespace A164393

/-- `∑[abs(Δ[A239909(n+2)])]` -/
def P17611030429018543533.Spec : Prop :=
  ∀ n, P17611030429018543533.a n = A164393 n

end A164393

/-! ## A164393.P3540203297205166102

`∑[∑[A116201(n+1)-a(n-1)]]` with `a(0)=1`
-/

namespace A164393.P3540203297205166102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A116201 (n + 1) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164393.P3540203297205166102

namespace A164393

/-- `∑[∑[A116201(n+1)-a(n-1)]]` -/
def P3540203297205166102.Spec : Prop :=
  ∀ n, P3540203297205166102.a n = A164393 n

end A164393

/-!
# A164394: Number of binary strings of length n with no substrings equal to 0001 or 0100.

The programs for A164394, the canonical program `A164394.P14753490943240600791` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164394 has offset 0).

The definition of A164394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164394.P14753490943240600791

`2*a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164394

/-- `2*a(n-1)-a(n-2)+a(n-3)` -/
def P14753490943240600791.Spec : Prop :=
  ∀ n, P14753490943240600791.a n = A164394 n

theorem P14753490943240600791.correct : P14753490943240600791.Spec := by
  intro n
  simp only [A164394]

end A164394

/-! ## A164394.P7050718762846960201

`ogf((1+x^2+x^3)/(1-2x+x^2-x^3))`
-/

namespace A164394.P7050718762846960201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 1] [1, -2, 1, -1] n

end

end A164394.P7050718762846960201

namespace A164394

/-- `ogf((1+x^2+x^3)/(1-2x+x^2-x^3))` -/
def P7050718762846960201.Spec : Prop :=
  ∀ n, P7050718762846960201.a n = A164394 n

end A164394

/-! ## A164394.P6032449809233900066

`record[a(n-2)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A164394.P6032449809233900066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164394.P6032449809233900066

namespace A164394

/-- `record[a(n-2)-a(n-3)]` -/
def P6032449809233900066.Spec : Prop :=
  ∀ n, P6032449809233900066.a n = A164394 n

end A164394

/-! ## A164394.P16748004668302611750

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=14`
-/

namespace A164394.P16748004668302611750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 14] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 4)

end

end A164394.P16748004668302611750

namespace A164394

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P16748004668302611750.Spec : Prop :=
  ∀ n, (P16748004668302611750.a n : ℤ) = A164394 n

end A164394

/-! ## A164394.P13685852079352328982

`A232582(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A164394.P13685852079352328982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A232582 n + a (n - 1)

end

end A164394.P13685852079352328982

namespace A164394

/-- `A232582(n)+a(n-1)` -/
def P13685852079352328982.Spec : Prop :=
  ∀ n, P13685852079352328982.a n = A164394 n

end A164394

/-! ## A164394.P16178397161089375340

`A271827(n)+A157928(n)`
-/

namespace A164394.P16178397161089375340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271827 n + A157928 n

end

end A164394.P16178397161089375340

namespace A164394

/-- `A271827(n)+A157928(n)` -/
def P16178397161089375340.Spec : Prop :=
  ∀ n, P16178397161089375340.a n = A164394 n

end A164394

/-! ## A164394.P18181712660808203330

`record[A040001(n)*A134816(n+1)]`
-/

namespace A164394.P18181712660808203330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A134816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164394.P18181712660808203330

namespace A164394

/-- `record[A040001(n)*A134816(n+1)]` -/
def P18181712660808203330.Spec : Prop :=
  ∀ n, P18181712660808203330.a n = A164394 n

end A164394

/-! ## A164394.P16686587115759152293

`A271827(n)+(1-A354107(n+1))²`
-/

namespace A164394.P16686587115759152293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271827 n + (1 - A354107 (n + 1)) ^ 2

end

end A164394.P16686587115759152293

namespace A164394

/-- `A271827(n)+(1-A354107(n+1))²` -/
def P16686587115759152293.Spec : Prop :=
  ∀ n, P16686587115759152293.a n = A164394 n

end A164394

/-! ## A164394.P16368896181554904493

`A228361(2*n)+A134816(2*n+1)`
-/

namespace A164394.P16368896181554904493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * n) + A134816 (2 * n + 1)

end

end A164394.P16368896181554904493

namespace A164394

/-- `A228361(2*n)+A134816(2*n+1)` -/
def P16368896181554904493.Spec : Prop :=
  ∀ n, P16368896181554904493.a n = A164394 n

end A164394

/-! ## A164394.P10612215058292191883

`A228361(2*n)+A182097(2*(n+1))`
-/

namespace A164394.P10612215058292191883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * n) + A182097 (2 * (n + 1))

end

end A164394.P10612215058292191883

namespace A164394

/-- `A228361(2*n)+A182097(2*(n+1))` -/
def P10612215058292191883.Spec : Prop :=
  ∀ n, P10612215058292191883.a n = A164394 n

end A164394

/-! ## A164394.P15459539652417815684

`2*A134816(2*n+1)-A000007(n)`
-/

namespace A164394.P15459539652417815684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134816 (2 * n + 1) - A000007 n

end

end A164394.P15459539652417815684

namespace A164394

/-- `2*A134816(2*n+1)-A000007(n)` -/
def P15459539652417815684.Spec : Prop :=
  ∀ n, P15459539652417815684.a n = A164394 n

end A164394

/-! ## A164394.P6825463573298489946

`A019590(n+2)+2*A228361(2*n)`
-/

namespace A164394.P6825463573298489946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + 2 * A228361 (2 * n)

end

end A164394.P6825463573298489946

namespace A164394

/-- `A019590(n+2)+2*A228361(2*n)` -/
def P6825463573298489946.Spec : Prop :=
  ∀ n, P6825463573298489946.a n = A164394 n

end A164394

/-! ## A164394.P8778300323675947554

`A040001(2*n)*A134816(2*n+1)`
-/

namespace A164394.P8778300323675947554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A134816 (2 * n + 1)

end

end A164394.P8778300323675947554

namespace A164394

/-- `A040001(2*n)*A134816(2*n+1)` -/
def P8778300323675947554.Spec : Prop :=
  ∀ n, P8778300323675947554.a n = A164394 n

end A164394

/-! ## A164394.P14540294121430777610

`(A157928(n+1)+1)*A134816(2*n+1)`
-/

namespace A164394.P14540294121430777610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157928 (n + 1) + 1) * A134816 (2 * n + 1)

end

end A164394.P14540294121430777610

namespace A164394

/-- `(A157928(n+1)+1)*A134816(2*n+1)` -/
def P14540294121430777610.Spec : Prop :=
  ∀ n, P14540294121430777610.a n = A164394 n

end A164394

/-! ## A164394.P18420600088945942852

`A164001(2*n+1)-A000931(2*n+1)`
-/

namespace A164394.P18420600088945942852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * n + 1) - A000931 (2 * n + 1)

end

end A164394.P18420600088945942852

namespace A164394

/-- `A164001(2*n+1)-A000931(2*n+1)` -/
def P18420600088945942852.Spec : Prop :=
  ∀ n, P18420600088945942852.a n = A164394 n

end A164394

/-! ## A164394.P4323003201922497272

`2*A134816(2*n+1)-A019590(n+2)`
-/

namespace A164394.P4323003201922497272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134816 (2 * n + 1) - A019590 (n + 2)

end

end A164394.P4323003201922497272

namespace A164394

/-- `2*A134816(2*n+1)-A019590(n+2)` -/
def P4323003201922497272.Spec : Prop :=
  ∀ n, P4323003201922497272.a n = A164394 n

end A164394

/-! ## A164394.P15684997605403670155

`A164001(2*n+1)+A124745(2*n+3)`
-/

namespace A164394.P15684997605403670155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * n + 1) + A124745 (2 * n + 3)

end

end A164394.P15684997605403670155

namespace A164394

/-- `A164001(2*n+1)+A124745(2*n+3)` -/
def P15684997605403670155.Spec : Prop :=
  ∀ n, P15684997605403670155.a n = A164394 n

end A164394

/-! ## A164394.P9736358477982769186

`A164001(2*n+1)-A078027(2*n+3)`
-/

namespace A164394.P9736358477982769186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * n + 1) - A078027 (2 * n + 3)

end

end A164394.P9736358477982769186

namespace A164394

/-- `A164001(2*n+1)-A078027(2*n+3)` -/
def P9736358477982769186.Spec : Prop :=
  ∀ n, P9736358477982769186.a n = A164394 n

end A164394

/-! ## A164394.P15593880464271979944

`2*A134816(2*n+1)-A036987(2*n)`
-/

namespace A164394.P15593880464271979944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134816 (2 * n + 1) - A036987 (2 * n)

end

end A164394.P15593880464271979944

namespace A164394

/-- `2*A134816(2*n+1)-A036987(2*n)` -/
def P15593880464271979944.Spec : Prop :=
  ∀ n, P15593880464271979944.a n = A164394 n

end A164394

/-!
# A164395: Number of binary strings of length n with no substrings equal to 0001 or 0101.

The programs for A164395, the canonical program `A164395.P5886134230550187929` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164395 has offset 0).

The definition of A164395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164395.P5886134230550187929

`2*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164395

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P5886134230550187929.Spec : Prop :=
  ∀ n, P5886134230550187929.a n = A164395 n

theorem P5886134230550187929.correct : P5886134230550187929.Spec := by
  intro n
  simp only [A164395]

end A164395

/-! ## A164395.P415318465305698216

`ogf((1+x^2)/(1-2x+x^2-2x^3+2x^4))`
-/

namespace A164395.P415318465305698216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, 1, -2, 2] n

end

end A164395.P415318465305698216

namespace A164395

/-- `ogf((1+x^2)/(1-2x+x^2-2x^3+2x^4))` -/
def P415318465305698216.Spec : Prop :=
  ∀ n, P415318465305698216.a n = A164395 n

end A164395

/-! ## A164395.P276282908014630221

`∑[a(n-1)+2*a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A164395.P276282908014630221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164395.P276282908014630221

namespace A164395

/-- `∑[a(n-1)+2*a(n-3)]` -/
def P276282908014630221.Spec : Prop :=
  ∀ n, (P276282908014630221.a n : ℤ) = A164395 n

end A164395

/-! ## A164395.P7263054722346718561

`a(n-1)+2*(a(n-3)+1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A164395.P7263054722346718561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + 2 * (a (n - 3) + 1)

end

end A164395.P7263054722346718561

namespace A164395

/-- `a(n-1)+2*(a(n-3)+1)` -/
def P7263054722346718561.Spec : Prop :=
  ∀ n, (P7263054722346718561.a n : ℤ) = A164395 n

end A164395

/-! ## A164395.P11085761910062373405

`∑[a(n-3)+a(n-1)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A164395.P11085761910062373405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 3) + (f1 (n - 1) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164395.P11085761910062373405

namespace A164395

/-- `∑[a(n-3)+a(n-1)+a(n-3)]` -/
def P11085761910062373405.Spec : Prop :=
  ∀ n, (P11085761910062373405.a n : ℤ) = A164395 n

end A164395

/-! ## A164395.P7380194529285472853

`a(n-1)+a(n-3)+a(n-3)+2` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A164395.P7380194529285472853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 3) + (a (n - 3) + 2))

end

end A164395.P7380194529285472853

namespace A164395

/-- `a(n-1)+a(n-3)+a(n-3)+2` -/
def P7380194529285472853.Spec : Prop :=
  ∀ n, (P7380194529285472853.a n : ℤ) = A164395 n

end A164395

/-! ## A164395.P16820284539135007711

`∑[A203175(n+1)]`
-/

namespace A164395.P16820284539135007711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164395.P16820284539135007711

namespace A164395

/-- `∑[A203175(n+1)]` -/
def P16820284539135007711.Spec : Prop :=
  ∀ n, P16820284539135007711.a n = A164395 n

end A164395

/-! ## A164395.P11250191544756994686

`A003476(n+2)-1`
-/

namespace A164395.P11250191544756994686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 2) - 1

end

end A164395.P11250191544756994686

namespace A164395

/-- `A003476(n+2)-1` -/
def P11250191544756994686.Spec : Prop :=
  ∀ n, P11250191544756994686.a n = A164395 n

end A164395

/-! ## A164395.P613752031851775578

`∑[abs(Δ[A003476(n+1)])]`
-/

namespace A164395.P613752031851775578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164395.P613752031851775578

namespace A164395

/-- `∑[abs(Δ[A003476(n+1)])]` -/
def P613752031851775578.Spec : Prop :=
  ∀ n, P613752031851775578.a n = A164395 n

end A164395

/-! ## A164395.P11387158947079469874

`∑[abs(A078044(n+1)/2)]`
-/

namespace A164395.P11387158947079469874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A078044 (n + 1) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164395.P11387158947079469874

namespace A164395

/-- `∑[abs(A078044(n+1)/2)]` -/
def P11387158947079469874.Spec : Prop :=
  ∀ n, P11387158947079469874.a n = (A164395 n : ℚ)

end A164395

/-! ## A164395.P7635952253231699366

`A033999(2*n+1)+A003476(n+2)`
-/

namespace A164395.P7635952253231699366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A003476 (n + 2)

end

end A164395.P7635952253231699366

namespace A164395

/-- `A033999(2*n+1)+A003476(n+2)` -/
def P7635952253231699366.Spec : Prop :=
  ∀ n, P7635952253231699366.a n = A164395 n

end A164395

/-! ## A164395.P6022538510205263096

`A227036(n)/2`
-/

namespace A164395.P6022538510205263096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227036 n : ℚ) / 2

end

end A164395.P6022538510205263096

namespace A164395

/-- `A227036(n)/2` -/
def P6022538510205263096.Spec : Prop :=
  ∀ n, P6022538510205263096.a n = (A164395 n : ℚ)

end A164395

/-! ## A164395.P5234553611493291936

`(A003479(n)+∑[A003229(n)])/2`
-/

namespace A164395.P5234553611493291936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003479 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A164395.P5234553611493291936

namespace A164395

/-- `(A003479(n)+∑[A003229(n)])/2` -/
def P5234553611493291936.Spec : Prop :=
  ∀ n, P5234553611493291936.a n = (A164395 n : ℚ)

end A164395

/-!
# A164396: Number of binary strings of length n with no substrings equal to 0001 or 0110.

The programs for A164396, the canonical program `A164396.P3827350684632425851` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164396 has offset 0).

The definition of A164396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164396.P3827350684632425851

`2*a(n-1)-a(n-3)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=14, a(5)=24`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164396

/-- `2*a(n-1)-a(n-3)+a(n-5)-a(n-6)` -/
def P3827350684632425851.Spec : Prop :=
  ∀ n, P3827350684632425851.a n = A164396 n

theorem P3827350684632425851.correct : P3827350684632425851.Spec := by
  intro n
  simp only [A164396]

end A164396

/-! ## A164396.P1863755235902618358

`A020718(n)-(A340217(n+3)+1)`
-/

namespace A164396.P1863755235902618358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 n - (A340217 (n + 3) + 1)

end

end A164396.P1863755235902618358

namespace A164396

/-- `A020718(n)-(A340217(n+3)+1)` -/
def P1863755235902618358.Spec : Prop :=
  ∀ n, P1863755235902618358.a n = A164396 n

end A164396

/-! ## A164396.P15343217545782427061

`A020718(n)-(Δ[A020718(n)]+1)`
-/

namespace A164396.P15343217545782427061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 n - (f1 (n + 1) - f1 n + 1)

end

end A164396.P15343217545782427061

namespace A164396

/-- `A020718(n)-(Δ[A020718(n)]+1)` -/
def P15343217545782427061.Spec : Prop :=
  ∀ n, P15343217545782427061.a n = A164396 n

end A164396

/-! ## A164396.P18346101099613522890

`A020718(n+1)%(Δ[A020718(n)]+1)+1`
-/

namespace A164396.P18346101099613522890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020718 (n + 1)) (f1 (n + 1) - f1 n + 1) + 1

end

end A164396.P18346101099613522890

namespace A164396

/-- `A020718(n+1)%(Δ[A020718(n)]+1)+1` -/
def P18346101099613522890.Spec : Prop :=
  ∀ n, P18346101099613522890.a n = A164396 n

end A164396

/-! ## A164396.P908198478675240081

`A020718(n+5)%A020718(n+3)-A340215(n+7)`
-/

namespace A164396.P908198478675240081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020718 (n + 5)) (A020718 (n + 3)) - A340215 (n + 7)

end

end A164396.P908198478675240081

namespace A164396

/-- `A020718(n+5)%A020718(n+3)-A340215(n+7)` -/
def P908198478675240081.Spec : Prop :=
  ∀ n, P908198478675240081.a n = A164396 n

end A164396

/-! ## A164396.P15198978730657477894

`(A340217(n+8)%A020718(n+4))%A340217(n+3)`
-/

namespace A164396.P15198978730657477894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A340217 (n + 8)) (A020718 (n + 4))) (A340217 (n + 3))

end

end A164396.P15198978730657477894

namespace A164396

/-- `(A340217(n+8)%A020718(n+4))%A340217(n+3)` -/
def P15198978730657477894.Spec : Prop :=
  ∀ n, P15198978730657477894.a n = A164396 n

end A164396

/-!
# A164397: Number of binary strings of length n with no substrings equal to 0001 or 0111.

The programs for A164397, the canonical program `A164397.P4906150684417752222` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164397 has offset 0).

The definition of A164397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164397.P16879796848710181463

`∑[∑[ogf(-1/(-1+x^2+2x^3+x^4))]]`
-/

namespace A164397.P16879796848710181463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, -2, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P16879796848710181463

namespace A164397

/-- `∑[∑[ogf(-1/(-1+x^2+2x^3+x^4))]]` -/
def P16879796848710181463.Spec : Prop :=
  ∀ n, P16879796848710181463.a n = A164397 n

end A164397

/-! ## A164397.P4906150684417752222

`∑[4%gcd(3, n)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164397

/-- `∑[4%gcd(3, n)+a(n-1)+a(n-2)]` -/
def P4906150684417752222.Spec : Prop :=
  ∀ n, (P4906150684417752222.a n : ℤ) = A164397 n

theorem P4906150684417752222.correct : P4906150684417752222.Spec := by
  intro n
  simp only [A164397]

end A164397

/-! ## A164397.P13166702279432700596

`∑[∑[∑[a(n-1)+a(n-2)]-(a(n-1)+a(n-2))]]` with `a(0)=1, a(1)=0`
-/

namespace A164397.P13166702279432700596
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 1) + f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (f2 (n - 1) + f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P13166702279432700596

namespace A164397

/-- `∑[∑[∑[a(n-1)+a(n-2)]-(a(n-1)+a(n-2))]]` -/
def P13166702279432700596.Spec : Prop :=
  ∀ n, P13166702279432700596.a n = A164397 n

end A164397

/-! ## A164397.P974557365506520025

`A178982(n+3)`
-/

namespace A164397.P974557365506520025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178982 (n + 3)

end

end A164397.P974557365506520025

namespace A164397

/-- `A178982(n+3)` -/
def P974557365506520025.Spec : Prop :=
  ∀ n, P974557365506520025.a n = A164397 n

end A164397

/-! ## A164397.P16641845981351409084

`∑[∑[A094686(n)]]`
-/

namespace A164397.P16641845981351409084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P16641845981351409084

namespace A164397

/-- `∑[∑[A094686(n)]]` -/
def P16641845981351409084.Spec : Prop :=
  ∀ n, P16641845981351409084.a n = A164397 n

end A164397

/-! ## A164397.P16524925460677765370

`∑[A004695(n+3)]`
-/

namespace A164397.P16524925460677765370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P16524925460677765370

namespace A164397

/-- `∑[A004695(n+3)]` -/
def P16524925460677765370.Spec : Prop :=
  ∀ n, P16524925460677765370.a n = A164397 n

end A164397

/-! ## A164397.P1253668745576799738

`record[A178982(abs(3-n))]`
-/

namespace A164397.P1253668745576799738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178982 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164397.P1253668745576799738

namespace A164397

/-- `record[A178982(abs(3-n))]` -/
def P1253668745576799738.Spec : Prop :=
  ∀ n, P1253668745576799738.a n = A164397 n

end A164397

/-! ## A164397.P5661510850089529528

`∑[A147997(n+3)-1]`
-/

namespace A164397.P5661510850089529528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P5661510850089529528

namespace A164397

/-- `∑[A147997(n+3)-1]` -/
def P5661510850089529528.Spec : Prop :=
  ∀ n, P5661510850089529528.a n = A164397 n

end A164397

/-! ## A164397.P10673559770416946033

`∑[A173673(2*(n+3))]`
-/

namespace A164397.P10673559770416946033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P10673559770416946033

namespace A164397

/-- `∑[A173673(2*(n+3))]` -/
def P10673559770416946033.Spec : Prop :=
  ∀ n, P10673559770416946033.a n = A164397 n

end A164397

/-! ## A164397.P725470340145235554

`∑[A104221(n+3)/2]`
-/

namespace A164397.P725470340145235554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104221 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P725470340145235554

namespace A164397

/-- `∑[A104221(n+3)/2]` -/
def P725470340145235554.Spec : Prop :=
  ∀ n, P725470340145235554.a n = (A164397 n : ℚ)

end A164397

/-! ## A164397.P10585647249465157345

`∑[floor(A000045(n+3)/2)]`
-/

namespace A164397.P10585647249465157345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 3) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P10585647249465157345

namespace A164397

/-- `∑[floor(A000045(n+3)/2)]` -/
def P10585647249465157345.Spec : Prop :=
  ∀ n, P10585647249465157345.a n = A164397 n

end A164397

/-! ## A164397.P15907210192190896434

`∑[ceil(∑[A000045(n+1)/2])]`
-/

namespace A164397.P15907210192190896434
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P15907210192190896434

namespace A164397

/-- `∑[ceil(∑[A000045(n+1)/2])]` -/
def P15907210192190896434.Spec : Prop :=
  ∀ n, P15907210192190896434.a n = A164397 n

end A164397

/-! ## A164397.P333502657157294256

`∑[round((A020695(n)+1)/2)-1]`
-/

namespace A164397.P333502657157294256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020695 n + 1 : ℚ) / 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P333502657157294256

namespace A164397

/-- `∑[round((A020695(n)+1)/2)-1]` -/
def P333502657157294256.Spec : Prop :=
  ∀ n, P333502657157294256.a n = A164397 n

end A164397

/-! ## A164397.P17934234437328022233

`∑[∑[A174618(A042963(n+1)+1)]]`
-/

namespace A164397.P17934234437328022233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A042963 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P17934234437328022233

namespace A164397

/-- `∑[∑[A174618(A042963(n+1)+1)]]` -/
def P17934234437328022233.Spec : Prop :=
  ∀ n, P17934234437328022233.a n = A164397 n

end A164397

/-! ## A164397.P11793554794219099146

`∑[∑[A124369(∑[n])]]`
-/

namespace A164397.P11793554794219099146
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124369 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164397.P11793554794219099146

namespace A164397

/-- `∑[∑[A124369(∑[n])]]` -/
def P11793554794219099146.Spec : Prop :=
  ∀ n, P11793554794219099146.a n = A164397 n

end A164397

/-!
# A164398: Number of binary strings of length n with no substrings equal to 0001 or 1000.

The programs for A164398, the canonical program `A164398.P12198998561138836564` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164398 has offset 4).

The definition of A164398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164398.P12198998561138836564

`2*a(n-1)-a(n-4)` with `a(0)=14, a(1)=25, a(2)=45, a(3)=82`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164398

/-- `2*a(n-1)-a(n-4)` -/
def P12198998561138836564.Spec : Prop :=
  ∀ n, P12198998561138836564.a n = A164398 (n + 4)

theorem P12198998561138836564.correct : P12198998561138836564.Spec := by
  intro n
  simp only [A164398, Nat.add_sub_cancel]

end A164398

/-! ## A164398.P5450967384327112321

`a(n-1)+a(n-2)+a(n-3)-2` with `a(0)=14, a(1)=25, a(2)=45`
-/

namespace A164398.P5450967384327112321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 25, 45] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - 2

end

end A164398.P5450967384327112321

namespace A164398

/-- `a(n-1)+a(n-2)+a(n-3)-2` -/
def P5450967384327112321.Spec : Prop :=
  ∀ n, P5450967384327112321.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P7040823929000830870

`A301787(n+2)`
-/

namespace A164398.P7040823929000830870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301787 (n + 2)

end

end A164398.P7040823929000830870

namespace A164398

/-- `A301787(n+2)` -/
def P7040823929000830870.Spec : Prop :=
  ∀ n, P7040823929000830870.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P6723243575815073906

`A000073(n+7)+1`
-/

namespace A164398.P6723243575815073906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 7) + 1

end

end A164398.P6723243575815073906

namespace A164398

/-- `A000073(n+7)+1` -/
def P6723243575815073906.Spec : Prop :=
  ∀ n, P6723243575815073906.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P10156750881422453484

`A027114(n+3)+5`
-/

namespace A164398.P10156750881422453484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027114 (n + 3) + 5

end

end A164398.P10156750881422453484

namespace A164398

/-- `A027114(n+3)+5` -/
def P10156750881422453484.Spec : Prop :=
  ∀ n, P10156750881422453484.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P16335446097419197501

`A308189(2*(n+2)+5)+1`
-/

namespace A164398.P16335446097419197501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (2 * (n + 2) + 5) + 1

end

end A164398.P16335446097419197501

namespace A164398

/-- `A308189(2*(n+2)+5)+1` -/
def P16335446097419197501.Spec : Prop :=
  ∀ n, P16335446097419197501.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P1443585978475518729

`A018921(n+1)+A018921(n)+2`
-/

namespace A164398.P1443585978475518729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 (n + 1) + (A018921 n + 2)

end

end A164398.P1443585978475518729

namespace A164398

/-- `A018921(n+1)+A018921(n)+2` -/
def P1443585978475518729.Spec : Prop :=
  ∀ n, P1443585978475518729.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P7265050925061650318

`A145027(n+2)+A001590(n)+A000382(n+5)`
-/

namespace A164398.P7265050925061650318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145027 (n + 2) + (A001590 n + A000382 (n + 5))

end

end A164398.P7265050925061650318

namespace A164398

/-- `A145027(n+2)+A001590(n)+A000382(n+5)` -/
def P7265050925061650318.Spec : Prop :=
  ∀ n, P7265050925061650318.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P11058944751227917366

`Δ[A018921(n+2)]+1`
-/

namespace A164398.P11058944751227917366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164398.P11058944751227917366

namespace A164398

/-- `Δ[A018921(n+2)]+1` -/
def P11058944751227917366.Spec : Prop :=
  ∀ n, P11058944751227917366.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P8654107981626362758

`Δ[A027084(n+5)]+1`
-/

namespace A164398.P8654107981626362758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027084 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164398.P8654107981626362758

namespace A164398

/-- `Δ[A027084(n+5)]+1` -/
def P8654107981626362758.Spec : Prop :=
  ∀ n, P8654107981626362758.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P8933142169071024683

`A225605(n+1)+A225605(n+2)`
-/

namespace A164398.P8933142169071024683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225605 (n + 1) + A225605 (n + 2)

end

end A164398.P8933142169071024683

namespace A164398

/-- `A225605(n+1)+A225605(n+2)` -/
def P8933142169071024683.Spec : Prop :=
  ∀ n, P8933142169071024683.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P8353730254537937009

`Δ[A225605(n+3)]+1`
-/

namespace A164398.P8353730254537937009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225605 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164398.P8353730254537937009

namespace A164398

/-- `Δ[A225605(n+3)]+1` -/
def P8353730254537937009.Spec : Prop :=
  ∀ n, P8353730254537937009.a n = A164398 (n + 4)

end A164398

/-! ## A164398.P11351645840911767694

`A243044(A034856(n+1)+2)+1`
-/

namespace A164398.P11351645840911767694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A034856 (n + 1) + 2).toNat + 1

end

end A164398.P11351645840911767694

namespace A164398

/-- `A243044(A034856(n+1)+2)+1` -/
def P11351645840911767694.Spec : Prop :=
  ∀ n, P11351645840911767694.a n = A164398 (n + 4)

end A164398

/-!
# A164399: Number of binary strings of length n with no substrings equal to 0001 or 1010.

The programs for A164399, the canonical program `A164399.P11409520841760359662` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164399 has offset 4).

The definition of A164399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164399.P11450329109285874709

`A164410(n+4)+A003479(n)`
-/

namespace A164399.P11450329109285874709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164410 (n + 4) + A003479 n

end

end A164399.P11450329109285874709

namespace A164399

/-- `A164410(n+4)+A003479(n)` -/
def P11450329109285874709.Spec : Prop :=
  ∀ n, P11450329109285874709.a n = A164399 (n + 4)

end A164399

/-! ## A164399.P17796074951220513841

`A164410(n+4)+∑[A077949(n)]`
-/

namespace A164399.P17796074951220513841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164410 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164399.P17796074951220513841

namespace A164399

/-- `A164410(n+4)+∑[A077949(n)]` -/
def P17796074951220513841.Spec : Prop :=
  ∀ n, P17796074951220513841.a n = A164399 (n + 4)

end A164399

/-! ## A164399.P13588104998253748285

`A164410(n+4)+∑[∑[A052537(n)]]`
-/

namespace A164399.P13588104998253748285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164410 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164399.P13588104998253748285

namespace A164399

/-- `A164410(n+4)+∑[∑[A052537(n)]]` -/
def P13588104998253748285.Spec : Prop :=
  ∀ n, P13588104998253748285.a n = A164399 (n + 4)

end A164399

/-! ## A164399.P2849419493133021919

`A164471(n+4)+∑[A003476(n+1)]`
-/

namespace A164399.P2849419493133021919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164471 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164399.P2849419493133021919

namespace A164399

/-- `A164471(n+4)+∑[A003476(n+1)]` -/
def P2849419493133021919.Spec : Prop :=
  ∀ n, P2849419493133021919.a n = A164399 (n + 4)

end A164399

/-! ## A164399.P11409520841760359662

`A003479(n+4)+A052537(n+5)+A052537(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A164399

/-- `A003479(n+4)+A052537(n+5)+A052537(n)` -/
def P11409520841760359662.Spec : Prop :=
  ∀ n, P11409520841760359662.a n = A164399 (n + 4)

theorem P11409520841760359662.correct : P11409520841760359662.Spec := by
  intro n
  simp only [A164399, Nat.add_sub_cancel]

end A164399

/-! ## A164399.P15126764418579328903

`(A164395(n+4)+A164395(n+6))/4`
-/

namespace A164399.P15126764418579328903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164395 (n + 4) + A164395 (n + 6) : ℚ) / 4

end

end A164399.P15126764418579328903

namespace A164399

/-- `(A164395(n+4)+A164395(n+6))/4` -/
def P15126764418579328903.Spec : Prop :=
  ∀ n, P15126764418579328903.a n = (A164399 (n + 4) : ℚ)

end A164399

