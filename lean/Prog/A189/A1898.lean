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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B004.C004
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
# A189800: a(n) = 6*a(n-1) + 8*a(n-2), with a(0)=0, a(1)=1.

The programs for A189800, the canonical program `A189800.P12209648975481225686` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189800 has offset 0).

The definition of A189800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+8*a(n-2)` (program `A189800.P12209648975481225686`, by `A189800.P12209648975481225686.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189800.P8562399787142243835

`ogf(x/(1-6x-8x^2))`
-/

namespace A189800.P8562399787142243835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, -8] n

end

end A189800.P8562399787142243835

namespace A189800

/-- `ogf(x/(1-6x-8x^2))` -/
def P8562399787142243835.Spec : Prop :=
  ∀ n, P8562399787142243835.a n = A189800 n

end A189800

/-! ## A189800.P12209648975481225686

`6*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189800

/-- `6*a(n-1)+8*a(n-2)` -/
def P12209648975481225686.Spec : Prop :=
  ∀ n, (P12209648975481225686.a n : ℤ) = A189800 n

theorem P12209648975481225686.correct : P12209648975481225686.Spec := by
  intro n
  simp only [A189800]

end A189800

/-! ## A189800.P10306588071575508511

`2^(n-2)*A106434(n+1)`
-/

namespace A189800.P10306588071575508511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A106434 (n + 1) : ℚ)

end

end A189800.P10306588071575508511

namespace A189800

/-- `2^(n-2)*A106434(n+1)` -/
def P10306588071575508511.Spec : Prop :=
  ∀ n, P10306588071575508511.a n = (A189800 n : ℚ)

end A189800

/-! ## A189800.P13536642296679463324

`A106434(n+1)/2*A131577(n)`
-/

namespace A189800.P13536642296679463324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106434 (n + 1) : ℚ) / 2 * (A131577 n : ℚ)

end

end A189800.P13536642296679463324

namespace A189800

/-- `A106434(n+1)/2*A131577(n)` -/
def P13536642296679463324.Spec : Prop :=
  ∀ n, P13536642296679463324.a n = (A189800 n : ℚ)

end A189800

/-! ## A189800.P3413636898374101431

`A106434(n+1)/4*A000079(n)`
-/

namespace A189800.P3413636898374101431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106434 (n + 1) : ℚ) / 4 * (A000079 n : ℚ)

end

end A189800.P3413636898374101431

namespace A189800

/-- `A106434(n+1)/4*A000079(n)` -/
def P3413636898374101431.Spec : Prop :=
  ∀ n, P3413636898374101431.a n = (A189800 n : ℚ)

end A189800

/-! ## A189800.P1979049683744721090

`A007455(A004275(n))*A131577(n)`
-/

namespace A189800.P1979049683744721090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (A004275 n).toNat * A131577 n

end

end A189800.P1979049683744721090

namespace A189800

/-- `A007455(A004275(n))*A131577(n)` -/
def P1979049683744721090.Spec : Prop :=
  ∀ n, P1979049683744721090.a n = A189800 n

end A189800

/-! ## A189800.P5646922684994036255

`1/34*sqrt(17)*((3+sqrt(17))^n-(3-sqrt(17))^n)`
-/

namespace A189800.P5646922684994036255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 34 : ℝ) * Real.sqrt (17 : ℝ) * ((3 + Real.sqrt (17 : ℝ)) ^ n - (3 - Real.sqrt (17 : ℝ)) ^ n)

end

end A189800.P5646922684994036255

namespace A189800

/-- `1/34*sqrt(17)*((3+sqrt(17))^n-(3-sqrt(17))^n)` -/
def P5646922684994036255.Spec : Prop :=
  ∀ n, P5646922684994036255.a n = (A189800 n : ℝ)

theorem P5646922684994036255.correct : P5646922684994036255.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A189800, Nat.add_sub_cancel, A189800.P5646922684994036255.a, A189800.P12209648975481225686.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A189800, Nat.add_sub_cancel, A189800.P5646922684994036255.a, A189800.P12209648975481225686.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A189800

/-!
# A189801: a(n) = 6*a(n-1) + 9*a(n-2), with a(0)=0, a(1)=1.

The programs for A189801, the canonical program `A189801.P13906518258485343906` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189801 has offset 0).

The definition of A189801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+9*a(n-2)` (program `A189801.P13906518258485343906`, by `A189801.P13906518258485343906.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189801.P12214391566210575267

`ogf(x/(1-6x-9x^2))`
-/

namespace A189801.P12214391566210575267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, -9] n

end

end A189801.P12214391566210575267

namespace A189801

/-- `ogf(x/(1-6x-9x^2))` -/
def P12214391566210575267.Spec : Prop :=
  ∀ n, P12214391566210575267.a n = A189801 n

end A189801

/-! ## A189801.P13906518258485343906

`6*a(n-1)+9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189801

/-- `6*a(n-1)+9*a(n-2)` -/
def P13906518258485343906.Spec : Prop :=
  ∀ n, (P13906518258485343906.a n : ℤ) = A189801 n

theorem P13906518258485343906.correct : P13906518258485343906.Spec := by
  intro n
  simp only [A189801]

end A189801

/-! ## A189801.P11475072492309607402

`3^(n-1)*A000129(n)`
-/

namespace A189801.P11475072492309607402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000129 n : ℚ)

end

end A189801.P11475072492309607402

namespace A189801

/-- `3^(n-1)*A000129(n)` -/
def P11475072492309607402.Spec : Prop :=
  ∀ n, P11475072492309607402.a n = (A189801 n : ℚ)

end A189801

/-! ## A189801.P13859347261701757331

`sqrt(A079291(n))*3^(n-1)`
-/

namespace A189801.P13859347261701757331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A079291 n : ℝ) * ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)

end

end A189801.P13859347261701757331

namespace A189801

/-- `sqrt(A079291(n))*3^(n-1)` -/
def P13859347261701757331.Spec : Prop :=
  ∀ n, P13859347261701757331.a n = (A189801 n : ℝ)

end A189801

/-! ## A189801.P7892551066134726060

`Δ[A171842(n)]/3*3^n`
-/

namespace A189801.P7892551066134726060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3 * (3 ^ n : ℚ)

end

end A189801.P7892551066134726060

namespace A189801

/-- `Δ[A171842(n)]/3*3^n` -/
def P7892551066134726060.Spec : Prop :=
  ∀ n, P7892551066134726060.a n = (A189801 n : ℚ)

end A189801

/-! ## A189801.P9583800050119659814

`3^(n-1)*A135153(2*n)`
-/

namespace A189801.P9583800050119659814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A135153 (2 * n) : ℚ)

end

end A189801.P9583800050119659814

namespace A189801

/-- `3^(n-1)*A135153(2*n)` -/
def P9583800050119659814.Spec : Prop :=
  ∀ n, P9583800050119659814.a n = (A189801 n : ℚ)

end A189801

/-! ## A189801.P5900935146817181493

`3^(n-1)*A249576(3*n)`
-/

namespace A189801.P5900935146817181493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A249576 (3 * n) : ℚ)

end

end A189801.P5900935146817181493

namespace A189801

/-- `3^(n-1)*A249576(3*n)` -/
def P5900935146817181493.Spec : Prop :=
  ∀ n, P5900935146817181493.a n = (A189801 n : ℚ)

end A189801

/-! ## A189801.P17841170345039878167

`A116558(2*n)/3*3^n`
-/

namespace A189801.P17841170345039878167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116558 (2 * n) : ℚ) / 3 * (3 ^ n : ℚ)

end

end A189801.P17841170345039878167

namespace A189801

/-- `A116558(2*n)/3*3^n` -/
def P17841170345039878167.Spec : Prop :=
  ∀ n, P17841170345039878167.a n = (A189801 n : ℚ)

end A189801

/-! ## A189801.P15942717538270186752

`abs(A176981(n+1))*3^(n-1)`
-/

namespace A189801.P15942717538270186752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A176981 (n + 1)| : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A189801.P15942717538270186752

namespace A189801

/-- `abs(A176981(n+1))*3^(n-1)` -/
def P15942717538270186752.Spec : Prop :=
  ∀ n, P15942717538270186752.a n = (A189801 n : ℚ)

end A189801

/-! ## A189801.P15961773067763781973

`A000129(n)*A133494(n)`
-/

namespace A189801.P15961773067763781973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A133494 n

end

end A189801.P15961773067763781973

namespace A189801

/-- `A000129(n)*A133494(n)` -/
def P15961773067763781973.Spec : Prop :=
  ∀ n, P15961773067763781973.a n = A189801 n

end A189801

/-! ## A189801.P14219371497883816715

`A000129(n)*A140429(n)`
-/

namespace A189801.P14219371497883816715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A140429 n

end

end A189801.P14219371497883816715

namespace A189801

/-- `A000129(n)*A140429(n)` -/
def P14219371497883816715.Spec : Prop :=
  ∀ n, P14219371497883816715.a n = A189801 n

end A189801

/-! ## A189801.P5152159870822752888

`A000129(n)*A155734(n)`
-/

namespace A189801.P5152159870822752888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A155734 n

end

end A189801.P5152159870822752888

namespace A189801

/-- `A000129(n)*A155734(n)` -/
def P5152159870822752888.Spec : Prop :=
  ∀ n, P5152159870822752888.a n = A189801 n

end A189801

/-! ## A189801.P2538707889329462043

`A140429(n)*A215928(n)`
-/

namespace A189801.P2538707889329462043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n * A215928 n

end

end A189801.P2538707889329462043

namespace A189801

/-- `A140429(n)*A215928(n)` -/
def P2538707889329462043.Spec : Prop :=
  ∀ n, P2538707889329462043.a n = A189801 n

end A189801

/-! ## A189801.P8531415860009820375

`A000129(n)/3*A000244(n)`
-/

namespace A189801.P8531415860009820375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 n : ℚ) / 3 * (A000244 n : ℚ)

end

end A189801.P8531415860009820375

namespace A189801

/-- `A000129(n)/3*A000244(n)` -/
def P8531415860009820375.Spec : Prop :=
  ∀ n, P8531415860009820375.a n = (A189801 n : ℚ)

end A189801

/-! ## A189801.P10489868483414784315

`A000129(n)*A017913(A004275(n))`
-/

namespace A189801.P10489868483414784315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A017913 (A004275 n).toNat

end

end A189801.P10489868483414784315

namespace A189801

/-- `A000129(n)*A017913(A004275(n))` -/
def P10489868483414784315.Spec : Prop :=
  ∀ n, P10489868483414784315.a n = A189801 n

end A189801

/-! ## A189801.P5607466701971552452

`A000129(n)*A074324(A004273(n))`
-/

namespace A189801.P5607466701971552452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A074324 (A004273 n).toNat

end

end A189801.P5607466701971552452

namespace A189801

/-- `A000129(n)*A074324(A004273(n))` -/
def P5607466701971552452.Spec : Prop :=
  ∀ n, P5607466701971552452.a n = A189801 n

end A189801

/-! ## A189801.P8135414000222413367

`A000129(n)*A155118(A000096(n))`
-/

namespace A189801.P8135414000222413367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A155118 (A000096 n).toNat

end

end A189801.P8135414000222413367

namespace A189801

/-- `A000129(n)*A155118(A000096(n))` -/
def P8135414000222413367.Spec : Prop :=
  ∀ n, P8135414000222413367.a n = A189801 n

end A189801

/-! ## A189801.P4167286836037029018

`1/12*sqrt(2)*((3+3*sqrt(2))^n-(3-3*sqrt(2))^n)`
-/

namespace A189801.P4167286836037029018
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 12 : ℝ) * Real.sqrt (2 : ℝ) * ((3 + 3 * Real.sqrt (2 : ℝ)) ^ n - (3 - 3 * Real.sqrt (2 : ℝ)) ^ n)

end

end A189801.P4167286836037029018

namespace A189801

/-- `1/12*sqrt(2)*((3+3*sqrt(2))^n-(3-3*sqrt(2))^n)` -/
def P4167286836037029018.Spec : Prop :=
  ∀ n, P4167286836037029018.a n = (A189801 n : ℝ)

theorem P4167286836037029018.correct : P4167286836037029018.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A189801, Nat.add_sub_cancel, A189801.P4167286836037029018.a, A189801.P13906518258485343906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A189801, Nat.add_sub_cancel, A189801.P4167286836037029018.a, A189801.P13906518258485343906.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A189801

/-!
# A189803: Composite numbers m such that m'' = m'-1, where m' and m'' are the first and the second arithmetic derivatives of m.

The programs for A189803, there is no canonical definition to state claims against.
-/

/-! ## A189803.P11701358679846011592

`∩[A001358(n+1), A189710(n+1)]`
-/

namespace A189803.P11701358679846011592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189803.P11701358679846011592

/-! ## A189803.P7708094923360885775

`filter[A189710(n+1), A005171(#)]`
-/

namespace A189803.P7708094923360885775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A189803.P7708094923360885775

/-! ## A189803.P272222466645836251

`∩[A189710(n+1), A075026(n)]`
-/

namespace A189803.P272222466645836251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075026 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189803.P272222466645836251

/-! ## A189803.P804845923539738371

`∩[A046337(n+1), A189710(n+1)]`
-/

namespace A189803.P804845923539738371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189803.P804845923539738371

/-!
# A189804: Triangle read by rows: T(n,k) is the number of compositions of set {1, 2, ..., k} into exactly n blocks, each of size 1, 2 or 3 (n >= 0, 0 <= k <= 3*n).

The programs for A189804, there is no canonical definition to state claims against.
-/

/-! ## A189804.P3770691370454380012

`A085141(n)!*A144385(n)`
-/

namespace A189804.P3770691370454380012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A085141 n).toNat : ℤ) * A144385 n

end

end A189804.P3770691370454380012

/-! ## A189804.P2572549624652620600

`A138902(A001935(n))*A144385(n)`
-/

namespace A189804.P2572549624652620600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (A001935 n).toNat * A144385 n

end

end A189804.P2572549624652620600

/-! ## A189804.P5889612851041126235

`A138902(A237752(n+4))*A144385(n)`
-/

namespace A189804.P5889612851041126235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (A237752 (n + 4)).toNat * A144385 n

end

end A189804.P5889612851041126235

/-! ## A189804.P10498946735983499112

`A138902(A003106(2*(n+2)))*A144385(n)`
-/

namespace A189804.P10498946735983499112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (A003106 (2 * (n + 2))).toNat * A144385 n

end

end A189804.P10498946735983499112

/-!
# A189805: Numerators of coefficients in the series expansion of ((2 - m) EllipticK(m) - 2 EllipticE(m))/(Pi * m).

The programs for A189805, there is no canonical definition to state claims against.
-/

/-! ## A189805.P10792974399323387286

`record[A242735(n)]*A098597(n)`
-/

namespace A189805.P10792974399323387286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A098597 n

end

end A189805.P10792974399323387286

/-! ## A189805.P17451870924084868249

`A106609(n*A000265(A000888(n)))`
-/

namespace A189805.P17451870924084868249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 ((n : ℤ) * A000265 (A000888 n).toNat).toNat

end

end A189805.P17451870924084868249

/-!
# A189806: Denominators of coefficients in the series expansion of ((2 - m) EllipticK(m) - 2 EllipticE(m))/(Pi * m).

The programs for A189806, there is no canonical definition to state claims against.
-/

/-! ## A189806.P11300041855943462096

`A001901(n)*A278312(n)`
-/

namespace A189806.P11300041855943462096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 n * A278312 n

end

end A189806.P11300041855943462096

/-! ## A189806.P14107950018814168548

`A161737(n+2)/gcd(n, A161737(n+2))`
-/

namespace A189806.P14107950018814168548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161737 (n + 2) : ℚ) / (Int.gcd (n : ℤ) (A161737 (n + 2)) : ℚ)

end

end A189806.P14107950018814168548

/-! ## A189806.P11775695725790630797

`record[A036065(A090288(n))]`
-/

namespace A189806.P11775695725790630797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036065 (A090288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189806.P11775695725790630797

/-! ## A189806.P12235487804594796950

`A036065(A254527(n+1))`
-/

namespace A189806.P12235487804594796950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036065 (A254527 (n + 1)).toNat

end

end A189806.P12235487804594796950

/-! ## A189806.P10782654950889077637

`A036065(A090288(2*n))`
-/

namespace A189806.P10782654950889077637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036065 (A090288 (2 * n)).toNat

end

end A189806.P10782654950889077637

/-!
# A189807: Number of right triangles on an (n+1) X 3 grid.

The programs for A189807, the canonical program `A189807.P7116673404251398670` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189807 has offset 1).

The definition of A189807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189807.P14548949125716687128

`ogf((14+2x+4x^2-6x^3+2x^4-4x^5)/(1-3x+3x^2-x^3))`
-/

namespace A189807.P14548949125716687128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, 2, 4, -6, 2, -4] [1, -3, 3, -1] n

end

end A189807.P14548949125716687128

namespace A189807

/-- `ogf((14+2x+4x^2-6x^3+2x^4-4x^5)/(1-3x+3x^2-x^3))` -/
def P14548949125716687128.Spec : Prop :=
  ∀ n, P14548949125716687128.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P7116673404251398670

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=14, a(1)=44, a(2)=94, a(3)=158, a(4)=238, a(5)=330`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189807

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7116673404251398670.Spec : Prop :=
  ∀ n, P7116673404251398670.a n = A189807 (n + 1)

theorem P7116673404251398670.correct : P7116673404251398670.Spec := by
  intro n
  simp only [A189807, Nat.add_sub_cancel]

end A189807

/-! ## A189807.P9578361680826362473

`A189814(∑[n+1]+2)`
-/

namespace A189807.P9578361680826362473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A189807.P9578361680826362473

namespace A189807

/-- `A189814(∑[n+1]+2)` -/
def P9578361680826362473.Spec : Prop :=
  ∀ n, P9578361680826362473.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P2185213803456638907

`lcm(2, A189814(A133263(n+1)))`
-/

namespace A189807.P2185213803456638907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189814 (A133263 (n + 1)).toNat)

end

end A189807.P2185213803456638907

namespace A189807

/-- `lcm(2, A189814(A133263(n+1)))` -/
def P2185213803456638907.Spec : Prop :=
  ∀ n, (P2185213803456638907.a n : ℤ) = A189807 (n + 1)

end A189807

/-! ## A189807.P12028106685165511078

`record[A189814(A133263(abs(1-n)))]`
-/

namespace A189807.P12028106685165511078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189807.P12028106685165511078

namespace A189807

/-- `record[A189814(A133263(abs(1-n)))]` -/
def P12028106685165511078.Spec : Prop :=
  ∀ n, P12028106685165511078.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P15242880391211882555

`and(-2, A189814(A152948(n+3)))`
-/

namespace A189807.P15242880391211882555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A189814 (A152948 (n + 3)).toNat)

end

end A189807.P15242880391211882555

namespace A189807

/-- `and(-2, A189814(A152948(n+3)))` -/
def P15242880391211882555.Spec : Prop :=
  ∀ n, P15242880391211882555.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P17278317087872570861

`A189814(A152948(n+3))+A000007(n+1)`
-/

namespace A189807.P17278317087872570861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A152948 (n + 3)).toNat + A000007 (n + 1)

end

end A189807.P17278317087872570861

namespace A189807

/-- `A189814(A152948(n+3))+A000007(n+1)` -/
def P17278317087872570861.Spec : Prop :=
  ∀ n, P17278317087872570861.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P4827496913206701956

`A189814(A152948(n+3))%A001043(n+1)²`
-/

namespace A189807.P4827496913206701956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189814 (A152948 (n + 3)).toNat) (A001043 (n + 1) ^ 2)

end

end A189807.P4827496913206701956

namespace A189807

/-- `A189814(A152948(n+3))%A001043(n+1)²` -/
def P4827496913206701956.Spec : Prop :=
  ∀ n, P4827496913206701956.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P4564636664047534269

`A189814(A000096(n)+3)+char[A000045(n+16)]`
-/

namespace A189807.P4564636664047534269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 16)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000096 n + 3).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189807.P4564636664047534269

namespace A189807

/-- `A189814(A000096(n)+3)+char[A000045(n+16)]` -/
def P4564636664047534269.Spec : Prop :=
  ∀ n, P4564636664047534269.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P1839329055643005728

`A189814(A152948(n+3))+A008683(16*(n+1))`
-/

namespace A189807.P1839329055643005728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A152948 (n + 3)).toNat + A008683 (16 * (n + 1))

end

end A189807.P1839329055643005728

namespace A189807

/-- `A189814(A152948(n+3))+A008683(16*(n+1))` -/
def P1839329055643005728.Spec : Prop :=
  ∀ n, P1839329055643005728.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P14936948496134053187

`(A000010(n+2)%2)!*A189814(A152948(n+3))`
-/

namespace A189807.P14936948496134053187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000010 (n + 2)) 2).toNat : ℤ) * A189814 (A152948 (n + 3)).toNat

end

end A189807.P14936948496134053187

namespace A189807

/-- `(A000010(n+2)%2)!*A189814(A152948(n+3))` -/
def P14936948496134053187.Spec : Prop :=
  ∀ n, P14936948496134053187.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P1782458338544022132

`A001221(A002144(n+1))*A189814(A152948(n+3))`
-/

namespace A189807.P1782458338544022132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002144 (n + 1)).toNat * A189814 (A152948 (n + 3)).toNat

end

end A189807.P1782458338544022132

namespace A189807

/-- `A001221(A002144(n+1))*A189814(A152948(n+3))` -/
def P1782458338544022132.Spec : Prop :=
  ∀ n, P1782458338544022132.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P2340384637442581737

`A001221(A002313(n+1))*A189814(A152948(n+3))`
-/

namespace A189807.P2340384637442581737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002313 (n + 1)).toNat * A189814 (A152948 (n + 3)).toNat

end

end A189807.P2340384637442581737

namespace A189807

/-- `A001221(A002313(n+1))*A189814(A152948(n+3))` -/
def P2340384637442581737.Spec : Prop :=
  ∀ n, P2340384637442581737.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P8792345582381197676

`A001221(A002476(n+1))*A189814(A152948(n+3))`
-/

namespace A189807.P8792345582381197676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002476 (n + 1)).toNat * A189814 (A152948 (n + 3)).toNat

end

end A189807.P8792345582381197676

namespace A189807

/-- `A001221(A002476(n+1))*A189814(A152948(n+3))` -/
def P8792345582381197676.Spec : Prop :=
  ∀ n, P8792345582381197676.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P16135160624477591583

`A001221(A005385(n+1))*A189814(A152948(n+3))`
-/

namespace A189807.P16135160624477591583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005385 (n + 1)).toNat * A189814 (A152948 (n + 3)).toNat

end

end A189807.P16135160624477591583

namespace A189807

/-- `A001221(A005385(n+1))*A189814(A152948(n+3))` -/
def P16135160624477591583.Spec : Prop :=
  ∀ n, P16135160624477591583.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P8832063262760643225

`A001221(A007519(n+1))*A189814(A152948(n+3))`
-/

namespace A189807.P8832063262760643225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007519 (n + 1)).toNat * A189814 (A152948 (n + 3)).toNat

end

end A189807.P8832063262760643225

namespace A189807

/-- `A001221(A007519(n+1))*A189814(A152948(n+3))` -/
def P8832063262760643225.Spec : Prop :=
  ∀ n, P8832063262760643225.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P12935983590515670020

`A001221(A007520(n+1))*A189814(A152948(n+3))`
-/

namespace A189807.P12935983590515670020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007520 (n + 1)).toNat * A189814 (A152948 (n + 3)).toNat

end

end A189807.P12935983590515670020

namespace A189807

/-- `A001221(A007520(n+1))*A189814(A152948(n+3))` -/
def P12935983590515670020.Spec : Prop :=
  ∀ n, P12935983590515670020.a n = A189807 (n + 1)

end A189807

/-! ## A189807.P18341700842576362352

`A001221(A007645(n+1))*A189814(A152948(n+3))`
-/

namespace A189807.P18341700842576362352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007645 (n + 1)).toNat * A189814 (A152948 (n + 3)).toNat

end

end A189807.P18341700842576362352

namespace A189807

/-- `A001221(A007645(n+1))*A189814(A152948(n+3))` -/
def P18341700842576362352.Spec : Prop :=
  ∀ n, P18341700842576362352.a n = A189807 (n + 1)

end A189807

/-!
# A189808: Number of right triangles on a (n+1) X 4 grid.

The programs for A189808, the canonical program `A189808.P17210449932993348686` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189808 has offset 1).

The definition of A189808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189808.P17210449932993348686

`ogf((28+10x+2x^2-4x^3+4x^4-14x^5+6x^6-8x^7+4x^9-4x^10)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189808

/-- `ogf((28+10x+2x^2-4x^3+4x^4-14x^5+6x^6-8x^7+4x^9-4x^10)/(1-3x+3x^2-x^3))` -/
def P17210449932993348686.Spec : Prop :=
  ∀ n, P17210449932993348686.a n = A189808 (n + 1)

theorem P17210449932993348686.correct : P17210449932993348686.Spec := by
  intro n
  simp only [A189808, Nat.add_sub_cancel]

end A189808

/-! ## A189808.P3319692757751791993

`A189814(∑[n+2]+4)`
-/

namespace A189808.P3319692757751791993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189808.P3319692757751791993

namespace A189808

/-- `A189814(∑[n+2]+4)` -/
def P3319692757751791993.Spec : Prop :=
  ∀ n, P3319692757751791993.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P16616932987364361794

`lcm(2, A189814(A167614(n+1)))`
-/

namespace A189808.P16616932987364361794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189814 (A167614 (n + 1)).toNat)

end

end A189808.P16616932987364361794

namespace A189808

/-- `lcm(2, A189814(A167614(n+1)))` -/
def P16616932987364361794.Spec : Prop :=
  ∀ n, (P16616932987364361794.a n : ℤ) = A189808 (n + 1)

end A189808

/-! ## A189808.P10988127918296228201

`record[A189814(A167499(n)-4*n)]`
-/

namespace A189808.P10988127918296228201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167499 n - (4 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189808.P10988127918296228201

namespace A189808

/-- `record[A189814(A167499(n)-4*n)]` -/
def P10988127918296228201.Spec : Prop :=
  ∀ n, P10988127918296228201.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P10676779490171102665

`or(A000038(n)², A189814(A167614(n+1)))`
-/

namespace A189808.P10676779490171102665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n ^ 2) (A189814 (A167614 (n + 1)).toNat)

end

end A189808.P10676779490171102665

namespace A189808

/-- `or(A000038(n)², A189814(A167614(n+1)))` -/
def P10676779490171102665.Spec : Prop :=
  ∀ n, P10676779490171102665.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P1342974502769239420

`A189814(A167614(n+1))+A000007(n+1)`
-/

namespace A189808.P1342974502769239420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A189808.P1342974502769239420

namespace A189808

/-- `A189814(A167614(n+1))+A000007(n+1)` -/
def P1342974502769239420.Spec : Prop :=
  ∀ n, P1342974502769239420.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P5543217603344235152

`A189814(A167614(n+1))+A000038(n+1)`
-/

namespace A189808.P5543217603344235152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A189808.P5543217603344235152

namespace A189808

/-- `A189814(A167614(n+1))+A000038(n+1)` -/
def P5543217603344235152.Spec : Prop :=
  ∀ n, P5543217603344235152.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P14919090006182172958

`A057427(n+1)*A189814(A167614(n+1))`
-/

namespace A189808.P14919090006182172958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A189814 (A167614 (n + 1)).toNat

end

end A189808.P14919090006182172958

namespace A189808

/-- `A057427(n+1)*A189814(A167614(n+1))` -/
def P14919090006182172958.Spec : Prop :=
  ∀ n, P14919090006182172958.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P15814363695782896980

`A189814(A167614(n+1))+A000035(2*n)`
-/

namespace A189808.P15814363695782896980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A189808.P15814363695782896980

namespace A189808

/-- `A189814(A167614(n+1))+A000035(2*n)` -/
def P15814363695782896980.Spec : Prop :=
  ∀ n, P15814363695782896980.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P12787180858571909128

`A189814(A167614(n+1))+A091685(2*n)`
-/

namespace A189808.P12787180858571909128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167614 (n + 1)).toNat + A091685 (2 * n)

end

end A189808.P12787180858571909128

namespace A189808

/-- `A189814(A167614(n+1))+A091685(2*n)` -/
def P12787180858571909128.Spec : Prop :=
  ∀ n, P12787180858571909128.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P3491661118723406260

`A007318(C(2, n))*A189814(A167614(n+1))`
-/

namespace A189808.P3491661118723406260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A189814 (A167614 (n + 1)).toNat

end

end A189808.P3491661118723406260

namespace A189808

/-- `A007318(C(2, n))*A189814(A167614(n+1))` -/
def P3491661118723406260.Spec : Prop :=
  ∀ n, P3491661118723406260.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P12201986474398763106

`A189814(A167614(n+1))%A000332(n+13)`
-/

namespace A189808.P12201986474398763106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189814 (A167614 (n + 1)).toNat) (A000332 (n + 13))

end

end A189808.P12201986474398763106

namespace A189808

/-- `A189814(A167614(n+1))%A000332(n+13)` -/
def P12201986474398763106.Spec : Prop :=
  ∀ n, P12201986474398763106.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P16668874455994530991

`A000041(C(n, n²))*A189814(A167614(n+1))`
-/

namespace A189808.P16668874455994530991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A189814 (A167614 (n + 1)).toNat

end

end A189808.P16668874455994530991

namespace A189808

/-- `A000041(C(n, n²))*A189814(A167614(n+1))` -/
def P16668874455994530991.Spec : Prop :=
  ∀ n, P16668874455994530991.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P12918391899948850811

`A000108(C(n, n²))*A189814(A167614(n+1))`
-/

namespace A189808.P12918391899948850811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * A189814 (A167614 (n + 1)).toNat

end

end A189808.P12918391899948850811

namespace A189808

/-- `A000108(C(n, n²))*A189814(A167614(n+1))` -/
def P12918391899948850811.Spec : Prop :=
  ∀ n, P12918391899948850811.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P6080179096516281095

`A189814(A167614(n+1))+A008683(4*(n+1))`
-/

namespace A189808.P6080179096516281095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167614 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A189808.P6080179096516281095

namespace A189808

/-- `A189814(A167614(n+1))+A008683(4*(n+1))` -/
def P6080179096516281095.Spec : Prop :=
  ∀ n, P6080179096516281095.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P6364873240621276434

`A014963(14*(n+1))*A189814(A167614(n+1))`
-/

namespace A189808.P6364873240621276434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (14 * (n + 1)) * A189814 (A167614 (n + 1)).toNat

end

end A189808.P6364873240621276434

namespace A189808

/-- `A014963(14*(n+1))*A189814(A167614(n+1))` -/
def P6364873240621276434.Spec : Prop :=
  ∀ n, P6364873240621276434.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P12575980767075919877

`A000045(gcd(n, n+1))*A189814(A167614(n+1))`
-/

namespace A189808.P12575980767075919877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A189814 (A167614 (n + 1)).toNat

end

end A189808.P12575980767075919877

namespace A189808

/-- `A000045(gcd(n, n+1))*A189814(A167614(n+1))` -/
def P12575980767075919877.Spec : Prop :=
  ∀ n, P12575980767075919877.a n = A189808 (n + 1)

end A189808

/-! ## A189808.P84076707586118061

`log2(A020639(2*(n+1)))*A189814(A167614(n+1))`
-/

namespace A189808.P84076707586118061
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A189814 (A167614 (n + 1)).toNat : ℝ)

end

end A189808.P84076707586118061

namespace A189808

/-- `log2(A020639(2*(n+1)))*A189814(A167614(n+1))` -/
def P84076707586118061.Spec : Prop :=
  ∀ n, P84076707586118061.a n = (A189808 (n + 1) : ℝ)

end A189808

/-! ## A189808.P12802472362765878806

`A003557(A020639(n+1))*A189814(A167614(n+1))`
-/

namespace A189808.P12802472362765878806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A020639 (n + 1)).toNat * A189814 (A167614 (n + 1)).toNat

end

end A189808.P12802472362765878806

namespace A189808

/-- `A003557(A020639(n+1))*A189814(A167614(n+1))` -/
def P12802472362765878806.Spec : Prop :=
  ∀ n, P12802472362765878806.a n = A189808 (n + 1)

end A189808

/-!
# A189809: Number of right triangles on an (n+1) X 5 grid.

The programs for A189809, the canonical program `A189809.P9688016079547508` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189809 has offset 1).

The definition of A189809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189809.P9688016079547508

`ogf((46+20x+6x^2-2x^3+6x^4-24x^5+12x^6-14x^7-2x^8+4x^9-12x^10+8x^12-8x^13+4x^16-4x^17)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189809

/-- `ogf((46+20x+6x^2-2x^3+6x^4-24x^5+12x^6-14x^7-2x^8+4x^9-12x^10+8x^12-8x^13+4x^16-4x^17)/(1-3x+3x^2-x^3))` -/
def P9688016079547508.Spec : Prop :=
  ∀ n, P9688016079547508.a n = A189809 (n + 1)

theorem P9688016079547508.correct : P9688016079547508.Spec := by
  intro n
  simp only [A189809, Nat.add_sub_cancel]

end A189809

/-! ## A189809.P16866280895600665054

`A189814(∑[n+3]+7)`
-/

namespace A189809.P16866280895600665054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A189809.P16866280895600665054

namespace A189809

/-- `A189814(∑[n+3]+7)` -/
def P16866280895600665054.Spec : Prop :=
  ∀ n, P16866280895600665054.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P1652592408342516160

`lcm(2, A189814(A052905(n)+9))`
-/

namespace A189809.P1652592408342516160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189814 (A052905 n + 9).toNat)

end

end A189809.P1652592408342516160

namespace A189809

/-- `lcm(2, A189814(A052905(n)+9))` -/
def P1652592408342516160.Spec : Prop :=
  ∀ n, (P1652592408342516160.a n : ℤ) = A189809 (n + 1)

end A189809

/-! ## A189809.P15703141120879051012

`and(-2, A189814(A000096(n+2)+5))`
-/

namespace A189809.P15703141120879051012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A189814 (A000096 (n + 2) + 5).toNat)

end

end A189809.P15703141120879051012

namespace A189809

/-- `and(-2, A189814(A000096(n+2)+5))` -/
def P15703141120879051012.Spec : Prop :=
  ∀ n, P15703141120879051012.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P11105435943943478527

`A189814(A052905(n)+9)%Δ[A016947(n)]`
-/

namespace A189809.P11105435943943478527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189814 (A052905 n + 9).toNat) (f1 (n + 1) - f1 n)

end

end A189809.P11105435943943478527

namespace A189809

/-- `A189814(A052905(n)+9)%Δ[A016947(n)]` -/
def P11105435943943478527.Spec : Prop :=
  ∀ n, P11105435943943478527.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P15906080797527435357

`A189814(A052905(n)+9)+A000007(n+1)`
-/

namespace A189809.P15906080797527435357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A052905 n + 9).toNat + A000007 (n + 1)

end

end A189809.P15906080797527435357

namespace A189809

/-- `A189814(A052905(n)+9)+A000007(n+1)` -/
def P15906080797527435357.Spec : Prop :=
  ∀ n, P15906080797527435357.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P1081629640630047294

`A007318(C(2, n))*A189814(A052905(n)+9)`
-/

namespace A189809.P1081629640630047294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A189814 (A052905 n + 9).toNat

end

end A189809.P1081629640630047294

namespace A189809

/-- `A007318(C(2, n))*A189814(A052905(n)+9)` -/
def P1081629640630047294.Spec : Prop :=
  ∀ n, P1081629640630047294.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P5761654154255431004

`A014963(6*(n+1))*A189814(A052905(n)+9)`
-/

namespace A189809.P5761654154255431004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A189814 (A052905 n + 9).toNat

end

end A189809.P5761654154255431004

namespace A189809

/-- `A014963(6*(n+1))*A189814(A052905(n)+9)` -/
def P5761654154255431004.Spec : Prop :=
  ∀ n, P5761654154255431004.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P8168446872764165916

`A189814(A052905(n)+9)+A008683(9*(n+1))`
-/

namespace A189809.P8168446872764165916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A052905 n + 9).toNat + A008683 (9 * (n + 1))

end

end A189809.P8168446872764165916

namespace A189809

/-- `A189814(A052905(n)+9)+A008683(9*(n+1))` -/
def P8168446872764165916.Spec : Prop :=
  ∀ n, P8168446872764165916.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P11405036758337482366

`A189814(A000096(n+2)+5)%A229075(n+1)`
-/

namespace A189809.P11405036758337482366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189814 (A000096 (n + 2) + 5).toNat) (A229075 (n + 1))

end

end A189809.P11405036758337482366

namespace A189809

/-- `A189814(A000096(n+2)+5)%A229075(n+1)` -/
def P11405036758337482366.Spec : Prop :=
  ∀ n, P11405036758337482366.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P16999317706516282911

`A000041(C(2, n+2))*A189814(A052905(n)+9)`
-/

namespace A189809.P16999317706516282911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A189814 (A052905 n + 9).toNat

end

end A189809.P16999317706516282911

namespace A189809

/-- `A000041(C(2, n+2))*A189814(A052905(n)+9)` -/
def P16999317706516282911.Spec : Prop :=
  ∀ n, P16999317706516282911.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P18422463203269022762

`A000108(C(2, n+2))*A189814(A052905(n)+9)`
-/

namespace A189809.P18422463203269022762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A189814 (A052905 n + 9).toNat

end

end A189809.P18422463203269022762

namespace A189809

/-- `A000108(C(2, n+2))*A189814(A052905(n)+9)` -/
def P18422463203269022762.Spec : Prop :=
  ∀ n, P18422463203269022762.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P12917225653497865118

`A000108(gcd(n, n+1))*A189814(A052905(n)+9)`
-/

namespace A189809.P12917225653497865118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A189814 (A052905 n + 9).toNat

end

end A189809.P12917225653497865118

namespace A189809

/-- `A000108(gcd(n, n+1))*A189814(A052905(n)+9)` -/
def P12917225653497865118.Spec : Prop :=
  ∀ n, P12917225653497865118.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P5147169944674271397

`A189814(A000096(n+2)+5)+A008683(8*n+4)`
-/

namespace A189809.P5147169944674271397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000096 (n + 2) + 5).toNat + A008683 (8 * n + 4)

end

end A189809.P5147169944674271397

namespace A189809

/-- `A189814(A000096(n+2)+5)+A008683(8*n+4)` -/
def P5147169944674271397.Spec : Prop :=
  ∀ n, P5147169944674271397.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P18435944298159216515

`A000041(val(n²+1, 2))*A189814(A000096(n+2)+5)`
-/

namespace A189809.P18435944298159216515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n ^ 2 + 1) 2) * A189814 (A000096 (n + 2) + 5).toNat

end

end A189809.P18435944298159216515

namespace A189809

/-- `A000041(val(n²+1, 2))*A189814(A000096(n+2)+5)` -/
def P18435944298159216515.Spec : Prop :=
  ∀ n, P18435944298159216515.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P5920069713153857183

`A105234(A000290(n))*A189814(A052905(n)+9)`
-/

namespace A189809.P5920069713153857183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 (A000290 n).toNat * A189814 (A052905 n + 9).toNat

end

end A189809.P5920069713153857183

namespace A189809

/-- `A105234(A000290(n))*A189814(A052905(n)+9)` -/
def P5920069713153857183.Spec : Prop :=
  ∀ n, P5920069713153857183.a n = A189809 (n + 1)

end A189809

/-! ## A189809.P14614583540893288239

`A105234(A145154(n))*A189814(A052905(n)+9)`
-/

namespace A189809.P14614583540893288239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 (A145154 n).toNat * A189814 (A052905 n + 9).toNat

end

end A189809.P14614583540893288239

namespace A189809

/-- `A105234(A145154(n))*A189814(A052905(n)+9)` -/
def P14614583540893288239.Spec : Prop :=
  ∀ n, P14614583540893288239.a n = A189809 (n + 1)

end A189809

/-!
# A189810: Number of right triangles on a (n+1)X6 grid.

The programs for A189810, there is no canonical definition to state claims against.
-/

/-! ## A189810.P17201255257532767980

`A189814(∑[n+4]+11)`
-/

namespace A189810.P17201255257532767980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A189810.P17201255257532767980

/-! ## A189810.P17456730827508566628

`lcm(2, A189814(A000217(n+4)+5))`
-/

namespace A189810.P17456730827508566628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189814 (A000217 (n + 4) + 5).toNat)

end

end A189810.P17456730827508566628

/-! ## A189810.P12724918068179586102

`A189814(A000217(n+4)+5)%A001546(n)`
-/

namespace A189810.P12724918068179586102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189814 (A000217 (n + 4) + 5).toNat) (A001546 n)

end

end A189810.P12724918068179586102

/-! ## A189810.P1887039156876744329

`A033999(n)²*A189814(A000217(n+4)+5)`
-/

namespace A189810.P1887039156876744329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A189814 (A000217 (n + 4) + 5).toNat

end

end A189810.P1887039156876744329

/-! ## A189810.P777079586344686977

`A189814(A000217(n+4)+5)/A106400(n)²`
-/

namespace A189810.P777079586344686977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189814 (A000217 (n + 4) + 5).toNat : ℚ) / (A106400 n ^ 2 : ℚ)

end

end A189810.P777079586344686977

/-! ## A189810.P9735810010288229708

`A189814(A000217(n+4)+5)+A000007(n+1)`
-/

namespace A189810.P9735810010288229708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000217 (n + 4) + 5).toNat + A000007 (n + 1)

end

end A189810.P9735810010288229708

/-! ## A189810.P6057697393701572421

`A007318(C(2, n))*A189814(A000217(n+4)+5)`
-/

namespace A189810.P6057697393701572421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A189814 (A000217 (n + 4) + 5).toNat

end

end A189810.P6057697393701572421

/-! ## A189810.P4394634873986377694

`abs(A008836(n+1)*A189814(A000217(n+4)+5))`
-/

namespace A189810.P4394634873986377694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008836 (n + 1) * A189814 (A000217 (n + 4) + 5).toNat|

end

end A189810.P4394634873986377694

/-! ## A189810.P11436707350239195071

`A189814(A000217(n+4)+5)+char[A000045(n+16)]`
-/

namespace A189810.P11436707350239195071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 16)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189810.P11436707350239195071

/-! ## A189810.P9300524932775699450

`A189814(A000217(n+4)+5)+A000122(12*n+2)`
-/

namespace A189810.P9300524932775699450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000217 (n + 4) + 5).toNat + A000122 (12 * n + 2)

end

end A189810.P9300524932775699450

/-! ## A189810.P1700312812682287612

`A189814(A000217(n+4)+5)+A008683(8*n+12)`
-/

namespace A189810.P1700312812682287612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000217 (n + 4) + 5).toNat + A008683 (8 * n + 12)

end

end A189810.P1700312812682287612

/-! ## A189810.P9049312238664886394

`A189814(A000217(n+4)+5)/A007318(C(2, n+1))`
-/

namespace A189810.P9049312238664886394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189814 (A000217 (n + 4) + 5).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A189810.P9049312238664886394

/-! ## A189810.P14199940301620856026

`A014963(10*(n+10))*A189814(A000217(n+4)+5)`
-/

namespace A189810.P14199940301620856026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 10)) * A189814 (A000217 (n + 4) + 5).toNat

end

end A189810.P14199940301620856026

/-! ## A189810.P4869933909457607799

`A007318(val(n+2, 5))*A189814(A000217(n+4)+5)`
-/

namespace A189810.P4869933909457607799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 2) 5) * A189814 (A000217 (n + 4) + 5).toNat

end

end A189810.P4869933909457607799

/-! ## A189810.P13672735181277856322

`(A005408(n)-2*n)*A189814(A000217(n+4)+5)`
-/

namespace A189810.P13672735181277856322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (2 * n : ℤ)) * A189814 (A000217 (n + 4) + 5).toNat

end

end A189810.P13672735181277856322

/-! ## A189810.P17400028015765671337

`A000005(gcd(n, n+1))*A189814(A000217(n+4)+5)`
-/

namespace A189810.P17400028015765671337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A189814 (A000217 (n + 4) + 5).toNat

end

end A189810.P17400028015765671337

/-! ## A189810.P12721092113681321206

`A189814(Δ[A023545(n+1)])+A000007(n+1)`
-/

namespace A189810.P12721092113681321206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A189810.P12721092113681321206

/-! ## A189810.P10513283354299453842

`A189814(Δ[A023545(n+1)])%A189813(n+1)`
-/

namespace A189810.P10513283354299453842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189814 (f1 (n + 1) - f1 n).toNat) (A189813 (n + 1))

end

end A189810.P10513283354299453842

/-!
# A189811: Number of right triangles on a (n+1)X7 grid.

The programs for A189811, there is no canonical definition to state claims against.
-/

/-! ## A189811.P4822622506622846736

`A189814(A166136(n+4))`
-/

namespace A189811.P4822622506622846736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A166136 (n + 4)).toNat

end

end A189811.P4822622506622846736

/-! ## A189811.P1144737596299082196

`A189814(A056115(n)+21)`
-/

namespace A189811.P1144737596299082196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A056115 n + 21).toNat

end

end A189811.P1144737596299082196

/-! ## A189811.P6414847114371684419

`A189814(A167499(n+4)+1)`
-/

namespace A189811.P6414847114371684419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167499 (n + 4) + 1).toNat

end

end A189811.P6414847114371684419

/-! ## A189811.P18247868175487948239

`A189814(A167487(n+4)-1)`
-/

namespace A189811.P18247868175487948239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167487 (n + 4) - 1).toNat

end

end A189811.P18247868175487948239

/-! ## A189811.P10882664090203118818

`A189814(A167614(n+4)+3)`
-/

namespace A189811.P10882664090203118818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167614 (n + 4) + 3).toNat

end

end A189811.P10882664090203118818

/-! ## A189811.P7211170986183096918

`A189814(A000124(n+5)+5)`
-/

namespace A189811.P7211170986183096918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000124 (n + 5) + 5).toNat

end

end A189811.P7211170986183096918

/-! ## A189811.P837220892272104215

`A189814(A000096(n+4)+7)`
-/

namespace A189811.P837220892272104215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000096 (n + 4) + 7).toNat

end

end A189811.P837220892272104215

/-! ## A189811.P13105426122137613218

`A189814(A000217(n+5)+6)`
-/

namespace A189811.P13105426122137613218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000217 (n + 5) + 6).toNat

end

end A189811.P13105426122137613218

/-! ## A189811.P1935837109170158323

`A189814(A027379(n+3)+9)`
-/

namespace A189811.P1935837109170158323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A027379 (n + 3) + 9).toNat

end

end A189811.P1935837109170158323

/-! ## A189811.P7544084660267945822

`A189814(A161680(n+6)+6)`
-/

namespace A189811.P7544084660267945822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A161680 (n + 6) + 6).toNat

end

end A189811.P7544084660267945822

/-! ## A189811.P10789330215726961633

`A189814(A046691(n+3)+10)`
-/

namespace A189811.P10789330215726961633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A046691 (n + 3) + 10).toNat

end

end A189811.P10789330215726961633

/-! ## A189811.P17593222779221094626

`A189814(A052905(n+2)+11)`
-/

namespace A189811.P17593222779221094626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A052905 (n + 2) + 11).toNat

end

end A189811.P17593222779221094626

/-! ## A189811.P3395487205765255761

`A189814(Δ[A023545(n+1)]+10)`
-/

namespace A189811.P3395487205765255761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (f1 (n + 1) - f1 n + 10).toNat

end

end A189811.P3395487205765255761

/-! ## A189811.P11580903859862890206

`A189814(A187710(n+5)/2+1)`
-/

namespace A189811.P11580903859862890206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (SequenceMachineLib.roundAway ((A187710 (n + 5) : ℚ) / 2 + 1)).toNat

end

end A189811.P11580903859862890206

/-! ## A189811.P2355016014367093860

`A189814(A374007(n+1))`
-/

namespace A189811.P2355016014367093860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A374007 (n + 1)).toNat

end

end A189811.P2355016014367093860

/-! ## A189811.P9003026286475596975

`A189814(A052905(n+3))`
-/

namespace A189811.P9003026286475596975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A052905 (n + 3)).toNat

end

end A189811.P9003026286475596975

/-! ## A189811.P7699134990538301451

`A189814(Δ[Δ[A006504(n+1)]])`
-/

namespace A189811.P7699134990538301451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (f1 (n + 1) - f1 n).toNat

end

end A189811.P7699134990538301451

/-!
# A189812: Number of right triangles on a (n+1)X8 grid.

The programs for A189812, there is no canonical definition to state claims against.
-/

/-! ## A189812.P14530358148699005410

`A189814(A167487(n+5))`
-/

namespace A189812.P14530358148699005410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167487 (n + 5)).toNat

end

end A189812.P14530358148699005410

/-! ## A189812.P2109860195829753011

`A189814(A167499(n+5)+2)`
-/

namespace A189812.P2109860195829753011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167499 (n + 5) + 2).toNat

end

end A189812.P2109860195829753011

/-! ## A189812.P14704035790247450654

`A189814(A167614(n+5)+4)`
-/

namespace A189812.P14704035790247450654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167614 (n + 5) + 4).toNat

end

end A189812.P14704035790247450654

/-! ## A189812.P12350004875116274013

`A189814(A133263(n+6)+5)`
-/

namespace A189812.P12350004875116274013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A133263 (n + 6) + 5).toNat

end

end A189812.P12350004875116274013

/-! ## A189812.P531001274456369657

`A189814(A000124(n+6)+6)`
-/

namespace A189812.P531001274456369657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000124 (n + 6) + 6).toNat

end

end A189812.P531001274456369657

/-! ## A189812.P13359159034586065723

`A189814(A000096(n+5)+8)`
-/

namespace A189812.P13359159034586065723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000096 (n + 5) + 8).toNat

end

end A189812.P13359159034586065723

/-! ## A189812.P17724141026706591593

`A189814(A000217(n+6)+7)`
-/

namespace A189812.P17724141026706591593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000217 (n + 6) + 7).toNat

end

end A189812.P17724141026706591593

/-! ## A189812.P3951683775535182483

`A189814(A027379(n+4)+10)`
-/

namespace A189812.P3951683775535182483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A027379 (n + 4) + 10).toNat

end

end A189812.P3951683775535182483

/-! ## A189812.P10584869282795173504

`A189814(A161680(n+7)+7)`
-/

namespace A189812.P10584869282795173504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A161680 (n + 7) + 7).toNat

end

end A189812.P10584869282795173504

/-! ## A189812.P17030017746246569040

`A189814(A046691(n+4)+11)`
-/

namespace A189812.P17030017746246569040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A046691 (n + 4) + 11).toNat

end

end A189812.P17030017746246569040

/-! ## A189812.P16975559257436382850

`A189814(A052905(n+5)-A005408(n+1))`
-/

namespace A189812.P16975559257436382850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A052905 (n + 5) - A005408 (n + 1)).toNat

end

end A189812.P16975559257436382850

/-! ## A189812.P7379855515342173275

`A189814(A374008(n+1))`
-/

namespace A189812.P7379855515342173275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A374008 (n + 1)).toNat

end

end A189812.P7379855515342173275

/-! ## A189812.P10494369215914940271

`A189814(A055999(n+4))`
-/

namespace A189812.P10494369215914940271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A055999 (n + 4)).toNat

end

end A189812.P10494369215914940271

/-!
# A189813: Number of right triangles on a (n+1)X9 grid.

The programs for A189813, there is no canonical definition to state claims against.
-/

/-! ## A189813.P2189133730961207389

`A189814(A167499(n+6)+3)`
-/

namespace A189813.P2189133730961207389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A167499 (n + 6) + 3).toNat

end

end A189813.P2189133730961207389

/-! ## A189813.P8240934066921658095

`A189814(A000124(n+7)+7)`
-/

namespace A189813.P8240934066921658095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000124 (n + 7) + 7).toNat

end

end A189813.P8240934066921658095

/-! ## A189813.P15933945458719996920

`A189814(A253145(n+6)+8)`
-/

namespace A189813.P15933945458719996920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A253145 (n + 6) + 8).toNat

end

end A189813.P15933945458719996920

/-! ## A189813.P7059947685370429135

`A189814(A000217(n+7)+8)`
-/

namespace A189813.P7059947685370429135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000217 (n + 7) + 8).toNat

end

end A189813.P7059947685370429135

/-! ## A189813.P1124662630066131029

`A189814(A161680(n+8)+8)`
-/

namespace A189813.P1124662630066131029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A161680 (n + 8) + 8).toNat

end

end A189813.P1124662630066131029

/-! ## A189813.P1325245677216905883

`A189814(Δ[A000292(n+7)]-n)`
-/

namespace A189813.P1325245677216905883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A189813.P1325245677216905883

/-! ## A189813.P2053985541222786918

`A189814(A000096(n+7)-(n-1))`
-/

namespace A189813.P2053985541222786918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A189813.P2053985541222786918

/-! ## A189813.P9365068562654255910

`A189814(A133263(n+8)-(n+2))`
-/

namespace A189813.P9365068562654255910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A133263 (n + 8) - (n + 2 : ℤ)).toNat

end

end A189813.P9365068562654255910

/-! ## A189813.P2385943179585646418

`A189814(A051936(n+9)-2*n)`
-/

namespace A189813.P2385943179585646418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A051936 (n + 9) - (2 * n : ℤ)).toNat

end

end A189813.P2385943179585646418

/-! ## A189813.P8876001734923903978

`A189814(A027379(n+7)-A005843(n+3))`
-/

namespace A189813.P8876001734923903978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A027379 (n + 7) - A005843 (n + 3)).toNat

end

end A189813.P8876001734923903978

/-! ## A189813.P16366040590965232752

`A189814(A374009(n+1))`
-/

namespace A189813.P16366040590965232752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A374009 (n + 1)).toNat

end

end A189813.P16366040590965232752

/-! ## A189813.P18058684383728206864

`A189814(A052905(n+5)-2)`
-/

namespace A189813.P18058684383728206864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189814 (A052905 (n + 5) - 2).toNat

end

end A189813.P18058684383728206864

/-!
# A189815: Expansion of e.g.f. log(1/(1-arcsin(x))).

The programs for A189815, there is no canonical definition to state claims against.
-/

/-! ## A189815.P9031426490895810138

`A011371(A198892(n)+A108411(n))`
-/

namespace A189815.P9031426490895810138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A198892 n + A108411 n).toNat

end

end A189815.P9031426490895810138

/-! ## A189815.P13083228853078833143

`A113534(A258797(n))`
-/

namespace A189815.P13083228853078833143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113534 (A258797 n).toNat

end

end A189815.P13083228853078833143

/-!
# A189816: a(3*k-2)=0, a(3*k-1)=1-a(k), a(3*k)=1-a(k); k>0, a(1)=0.

The programs for A189816, the canonical program `A189816.P3550546103248011916` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189816 has offset 1).

The definition of A189816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189816.P16988005837370775611

`((a(floor(n/3))+1)*n²%3)%2` with `a(0)=0`
-/

namespace A189816.P16988005837370775611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + 1) * (n ^ 2 % 3) % 2

end

end A189816.P16988005837370775611

namespace A189816

/-- `((a(floor(n/3))+1)*n²%3)%2` -/
def P16988005837370775611.Spec : Prop :=
  ∀ n, (P16988005837370775611.a n : ℤ) = A189816 (n + 1)

end A189816

/-! ## A189816.P3550546103248011916

`A215879(n)%2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A189816

/-- `A215879(n)%2` -/
def P3550546103248011916.Spec : Prop :=
  ∀ n, P3550546103248011916.a n = A189816 (n + 1)

theorem P3550546103248011916.correct : P3550546103248011916.Spec := by
  intro n
  simp only [A189816, Nat.add_sub_cancel]

end A189816

/-! ## A189816.P13989112451157398725

`char[A189818(n+1)-1]`
-/

namespace A189816.P13989112451157398725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189818 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189816.P13989112451157398725

namespace A189816

/-- `char[A189818(n+1)-1]` -/
def P13989112451157398725.Spec : Prop :=
  ∀ n, (P13989112451157398725.a n : ℤ) = A189816 (n + 1)

end A189816

/-! ## A189816.P3574029861862037399

`val(A060372(n+1), 3)%2`
-/

namespace A189816.P3574029861862037399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060372 (n + 1)).toNat 3 % 2

end

end A189816.P3574029861862037399

namespace A189816

/-- `val(A060372(n+1), 3)%2` -/
def P3574029861862037399.Spec : Prop :=
  ∀ n, (P3574029861862037399.a n : ℤ) = A189816 (n + 1)

end A189816

/-! ## A189816.P6049735768900047271

`A209229(10*a(floor(n/3))+n%3)` with `a(0)=0`
-/

namespace A189816.P6049735768900047271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A209229 (10 * a ⌊(n : ℚ) / 3⌋.toNat + ((n % 3 : ℕ) : ℤ)).toNat

end

end A189816.P6049735768900047271

namespace A189816

/-- `A209229(10*a(floor(n/3))+n%3)` -/
def P6049735768900047271.Spec : Prop :=
  ∀ n, P6049735768900047271.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P8067433220780951429

`A096268(A289831(n))`
-/

namespace A189816.P8067433220780951429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A289831 n).toNat

end

end A189816.P8067433220780951429

namespace A189816

/-- `A096268(A289831(n))` -/
def P8067433220780951429.Spec : Prop :=
  ∀ n, P8067433220780951429.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P2967687320177987312

`A182581(A060372(n+1))`
-/

namespace A189816.P2967687320177987312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (A060372 (n + 1)).toNat

end

end A189816.P2967687320177987312

namespace A189816

/-- `A182581(A060372(n+1))` -/
def P2967687320177987312.Spec : Prop :=
  ∀ n, P2967687320177987312.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P8983810104286882663

`and(A007664(n), A215879(n))`
-/

namespace A189816.P8983810104286882663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A215879 n)

end

end A189816.P8983810104286882663

namespace A189816

/-- `and(A007664(n), A215879(n))` -/
def P8983810104286882663.Spec : Prop :=
  ∀ n, P8983810104286882663.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P11777376817327804647

`and(A008349(n), A215879(n))`
-/

namespace A189816.P11777376817327804647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A215879 n)

end

end A189816.P11777376817327804647

namespace A189816

/-- `and(A008349(n), A215879(n))` -/
def P11777376817327804647.Spec : Prop :=
  ∀ n, P11777376817327804647.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P16289590174489033940

`and(A008362(n), A215879(n))`
-/

namespace A189816.P16289590174489033940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A215879 n)

end

end A189816.P16289590174489033940

namespace A189816

/-- `and(A008362(n), A215879(n))` -/
def P16289590174489033940.Spec : Prop :=
  ∀ n, P16289590174489033940.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P6117302051000924113

`and(A008417(n), A215879(n))`
-/

namespace A189816.P6117302051000924113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A215879 n)

end

end A189816.P6117302051000924113

namespace A189816

/-- `and(A008417(n), A215879(n))` -/
def P6117302051000924113.Spec : Prop :=
  ∀ n, P6117302051000924113.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P5992685472287523445

`and(A008514(n), A215879(n))`
-/

namespace A189816.P5992685472287523445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A215879 n)

end

end A189816.P5992685472287523445

namespace A189816

/-- `and(A008514(n), A215879(n))` -/
def P5992685472287523445.Spec : Prop :=
  ∀ n, P5992685472287523445.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P2745398631864500233

`and(A010125(n), A215879(n))`
-/

namespace A189816.P2745398631864500233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010125 n) (A215879 n)

end

end A189816.P2745398631864500233

namespace A189816

/-- `and(A010125(n), A215879(n))` -/
def P2745398631864500233.Spec : Prop :=
  ∀ n, P2745398631864500233.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P14596740418277893268

`and(A010142(n), A215879(n))`
-/

namespace A189816.P14596740418277893268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010142 n) (A215879 n)

end

end A189816.P14596740418277893268

namespace A189816

/-- `and(A010142(n), A215879(n))` -/
def P14596740418277893268.Spec : Prop :=
  ∀ n, P14596740418277893268.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P4693881858469014921

`and(A010176(n), A215879(n))`
-/

namespace A189816.P4693881858469014921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010176 n) (A215879 n)

end

end A189816.P4693881858469014921

namespace A189816

/-- `and(A010176(n), A215879(n))` -/
def P4693881858469014921.Spec : Prop :=
  ∀ n, P4693881858469014921.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P16749067944085511284

`and(A010177(n), A215879(n))`
-/

namespace A189816.P16749067944085511284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010177 n) (A215879 n)

end

end A189816.P16749067944085511284

namespace A189816

/-- `and(A010177(n), A215879(n))` -/
def P16749067944085511284.Spec : Prop :=
  ∀ n, P16749067944085511284.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P14680791305046704404

`and(A010225(n), A215879(n))`
-/

namespace A189816.P14680791305046704404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010225 n) (A215879 n)

end

end A189816.P14680791305046704404

namespace A189816

/-- `and(A010225(n), A215879(n))` -/
def P14680791305046704404.Spec : Prop :=
  ∀ n, P14680791305046704404.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P13450369517382549254

`and(A011655(n), A215879(n))`
-/

namespace A189816.P13450369517382549254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011655 n) (A215879 n)

end

end A189816.P13450369517382549254

namespace A189816

/-- `and(A011655(n), A215879(n))` -/
def P13450369517382549254.Spec : Prop :=
  ∀ n, P13450369517382549254.a n = A189816 (n + 1)

end A189816

/-! ## A189816.P6090046296726531032

`and(A014578(n), A215879(n))`
-/

namespace A189816.P6090046296726531032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014578 n) (A215879 n)

end

end A189816.P6090046296726531032

namespace A189816

/-- `and(A014578(n), A215879(n))` -/
def P6090046296726531032.Spec : Prop :=
  ∀ n, P6090046296726531032.a n = A189816 (n + 1)

end A189816

/-!
# A189817: Positions of 0 in A189816; complement of A189818.

The programs for A189817, the canonical program `A189817.P5095028548418174896` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189817 has offset 1).

The definition of A189817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189817.P17032584364129562884

`eq[0, A215879(n)%2]+1`
-/

namespace A189817.P17032584364129562884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215879 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189817.P17032584364129562884

namespace A189817

/-- `eq[0, A215879(n)%2]+1` -/
def P17032584364129562884.Spec : Prop :=
  ∀ n, (P17032584364129562884.a n : ℤ) = A189817 (n + 1)

end A189817

/-! ## A189817.P5095028548418174896

`eq[1, cos(A189816(n+1))]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A189817

/-- `eq[1, cos(A189816(n+1))]+1` -/
def P5095028548418174896.Spec : Prop :=
  ∀ n, (P5095028548418174896.a n : ℤ) = A189817 (n + 1)

theorem P5095028548418174896.correct : P5095028548418174896.Spec := by
  intro n
  simp only [A189817, Nat.add_sub_cancel]

end A189817

/-! ## A189817.P6791497317128419454

`A189818(2*(n+1))/3`
-/

namespace A189817.P6791497317128419454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189818 (2 * (n + 1)) : ℚ) / 3

end

end A189817.P6791497317128419454

namespace A189817

/-- `A189818(2*(n+1))/3` -/
def P6791497317128419454.Spec : Prop :=
  ∀ n, P6791497317128419454.a n = (A189817 (n + 1) : ℚ)

end A189817

/-! ## A189817.P11418791899511673144

`eq[1, A189816(A008486(n))]`
-/

namespace A189817.P11418791899511673144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189816 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189817.P11418791899511673144

namespace A189817

/-- `eq[1, A189816(A008486(n))]` -/
def P11418791899511673144.Spec : Prop :=
  ∀ n, (P11418791899511673144.a n : ℤ) = A189817 (n + 1)

end A189817

/-! ## A189817.P16344769364703209569

`A189631(A189818(2*(n+1)))`
-/

namespace A189817.P16344769364703209569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189631 (A189818 (2 * (n + 1))).toNat

end

end A189817.P16344769364703209569

namespace A189817

/-- `A189631(A189818(2*(n+1)))` -/
def P16344769364703209569.Spec : Prop :=
  ∀ n, P16344769364703209569.a n = A189817 (n + 1)

end A189817

/-! ## A189817.P6569655605380465757

`A189818(2*n+1)-A004396(A189818(2*n+1))`
-/

namespace A189817.P6569655605380465757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189818 (2 * n + 1) - A004396 (A189818 (2 * n + 1)).toNat

end

end A189817.P6569655605380465757

namespace A189817

/-- `A189818(2*n+1)-A004396(A189818(2*n+1))` -/
def P6569655605380465757.Spec : Prop :=
  ∀ n, P6569655605380465757.a n = A189817 (n + 1)

end A189817

/-! ## A189817.P16074055450434392136

`A004526(A026136(A189818(A005843(n+1))))`
-/

namespace A189817.P16074055450434392136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026136 (A189818 (A005843 (n + 1)).toNat).toNat).toNat

end

end A189817.P16074055450434392136

namespace A189817

/-- `A004526(A026136(A189818(A005843(n+1))))` -/
def P16074055450434392136.Spec : Prop :=
  ∀ n, P16074055450434392136.a n = A189817 (n + 1)

end A189817

/-! ## A189817.P232160829525277877

`A189818(A005843(n+1))-A026136(A189818(2*(n+1)))`
-/

namespace A189817.P232160829525277877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189818 (A005843 (n + 1)).toNat - A026136 (A189818 (2 * (n + 1))).toNat

end

end A189817.P232160829525277877

namespace A189817

/-- `A189818(A005843(n+1))-A026136(A189818(2*(n+1)))` -/
def P232160829525277877.Spec : Prop :=
  ∀ n, P232160829525277877.a n = A189817 (n + 1)

end A189817

/-!
# A189818: Positions of 1 in A189816; complement of A189817.

The programs for A189818, there is no canonical definition to state claims against.
-/

/-! ## A189818.P2042111137887987796

`eq[1, A215879(n)%2]+1`
-/

namespace A189818.P2042111137887987796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215879 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189818.P2042111137887987796

/-! ## A189818.P14272178626802973077

`eq[1, A189816(n+1)]+1`
-/

namespace A189818.P14272178626802973077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189818.P14272178626802973077

/-! ## A189818.P7540171599660825218

`record[(n+1)*A189816(n+2)+1]`
-/

namespace A189818.P7540171599660825218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189816 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189818.P7540171599660825218

/-! ## A189818.P14012354646321486645

`filter[A267528(n), A189816(#)]`
-/

namespace A189818.P14012354646321486645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P14012354646321486645

/-! ## A189818.P1193515234775738530

`filter[A344180(n), A189816(#)]`
-/

namespace A189818.P1193515234775738530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P1193515234775738530

/-! ## A189818.P962319096717507688

`filter[A000037(n+1), A189816(#)]`
-/

namespace A189818.P962319096717507688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P962319096717507688

/-! ## A189818.P9042720276037907774

`filter[A007494(n+1), A189816(#)]`
-/

namespace A189818.P9042720276037907774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P9042720276037907774

/-! ## A189818.P15415024407693395554

`filter[A014089(n+1), A189816(#)]`
-/

namespace A189818.P15415024407693395554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P15415024407693395554

/-! ## A189818.P14253988641703454007

`filter[A028966(n+1), A189816(#)]`
-/

namespace A189818.P14253988641703454007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P14253988641703454007

/-! ## A189818.P10211624176201060936

`filter[A064429(n+1), A189816(#)]`
-/

namespace A189818.P10211624176201060936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P10211624176201060936

/-! ## A189818.P674468892204743639

`filter[A099424(n+1), A189816(#)]`
-/

namespace A189818.P674468892204743639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P674468892204743639

/-! ## A189818.P15762745403273675221

`eq[1, val(A285307(n+1), A284880(n+1))]+1`
-/

namespace A189818.P15762745403273675221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A285307 (n + 1)).toNat (A284880 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189818.P15762745403273675221

/-! ## A189818.P8511327712121841297

`filter[A037915(n), A189816(#)]`
-/

namespace A189818.P8511327712121841297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P8511327712121841297

/-! ## A189818.P14452745963515402604

`filter[A092942(n+1), A189816(#)]`
-/

namespace A189818.P14452745963515402604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P14452745963515402604

/-! ## A189818.P4108610797978689735

`eq[4, A249032(A343228(n))]`
-/

namespace A189818.P4108610797978689735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249032 (A343228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189818.P4108610797978689735

/-! ## A189818.P1932889143330185911

`filter[A152271(n), A189816(#)]`
-/

namespace A189818.P1932889143330185911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P1932889143330185911

/-! ## A189818.P16312309366984041868

`filter[A158416(n), A189816(#)]`
-/

namespace A189818.P16312309366984041868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P16312309366984041868

/-! ## A189818.P10865870289043163357

`filter[A038459(n+1), A189816(#)]`
-/

namespace A189818.P10865870289043163357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189816 (f1 j).toNat = 1) n)

end

end A189818.P10865870289043163357

/-!
# A189819: Partial sums of A189816.

The programs for A189819, the canonical program `A189819.P2836240473700621075` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189819 has offset 1).

The definition of A189819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189819.P2836240473700621075

`floor((n+2)/3)-a(floor((n+2)/3)-1)+floor((n+1)/3)-a(floor((n+1)/3)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189819

/-- `floor((n+2)/3)-a(floor((n+2)/3)-1)+floor((n+1)/3)-a(floor((n+1)/3)-1)` -/
def P2836240473700621075.Spec : Prop :=
  ∀ n, P2836240473700621075.a n = A189819 (n + 1)

theorem P2836240473700621075.correct : P2836240473700621075.Spec := by
  intro n
  simp only [A189819, Nat.add_sub_cancel]

end A189819

/-! ## A189819.P8558239924867679748

`∑[A189816(n+1)]`
-/

namespace A189819.P8558239924867679748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P8558239924867679748

namespace A189819

/-- `∑[A189816(n+1)]` -/
def P8558239924867679748.Spec : Prop :=
  ∀ n, P8558239924867679748.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P6059358841341470785

`∑[A215879(n)%2]`
-/

namespace A189819.P6059358841341470785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215879 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P6059358841341470785

namespace A189819

/-- `∑[A215879(n)%2]` -/
def P6059358841341470785.Spec : Prop :=
  ∀ n, P6059358841341470785.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P9994801054427208580

`∑[A209229(10*a(floor(n/3))+n%3)]` with `a(0)=0`
-/

namespace A189819.P9994801054427208580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A209229 (10 * f1 ⌊(n : ℚ) / 3⌋.toNat + ((n % 3 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P9994801054427208580

namespace A189819

/-- `∑[A209229(10*a(floor(n/3))+n%3)]` -/
def P9994801054427208580.Spec : Prop :=
  ∀ n, P9994801054427208580.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P17002105123135883176

`∑[A096268(A289831(n))]`
-/

namespace A189819.P17002105123135883176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A289831 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P17002105123135883176

namespace A189819

/-- `∑[A096268(A289831(n))]` -/
def P17002105123135883176.Spec : Prop :=
  ∀ n, P17002105123135883176.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P2201809408994355379

`∑[A182581(A060372(n+1))]`
-/

namespace A189819.P2201809408994355379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (A060372 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P2201809408994355379

namespace A189819

/-- `∑[A182581(A060372(n+1))]` -/
def P2201809408994355379.Spec : Prop :=
  ∀ n, P2201809408994355379.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P330102400602264979

`∑[val(A189630(n+1), A189666(n+1))]`
-/

namespace A189819.P330102400602264979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A189630 (n + 1)).toNat (A189666 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P330102400602264979

namespace A189819

/-- `∑[val(A189630(n+1), A189666(n+1))]` -/
def P330102400602264979.Spec : Prop :=
  ∀ n, (P330102400602264979.a n : ℤ) = A189819 (n + 1)

end A189819

/-! ## A189819.P3520692376581874972

`∑[val(A285307(n+1), A284880(n+1))]`
-/

namespace A189819.P3520692376581874972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A285307 (n + 1)).toNat (A284880 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P3520692376581874972

namespace A189819

/-- `∑[val(A285307(n+1), A284880(n+1))]` -/
def P3520692376581874972.Spec : Prop :=
  ∀ n, (P3520692376581874972.a n : ℤ) = A189819 (n + 1)

end A189819

/-! ## A189819.P14098755829307183475

`∑[A285305(A284880(n+1))]`
-/

namespace A189819.P14098755829307183475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (A284880 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P14098755829307183475

namespace A189819

/-- `∑[A285305(A284880(n+1))]` -/
def P14098755829307183475.Spec : Prop :=
  ∀ n, P14098755829307183475.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P7083941273347091941

`∑[1-A284775(A284879(n+1)+1)]`
-/

namespace A189819.P7083941273347091941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284775 (A284879 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P7083941273347091941

namespace A189819

/-- `∑[1-A284775(A284879(n+1)+1)]` -/
def P7083941273347091941.Spec : Prop :=
  ∀ n, P7083941273347091941.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P5171654106452097523

`∑[A189664(A189630(n+1))]`
-/

namespace A189819.P5171654106452097523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A189630 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P5171654106452097523

namespace A189819

/-- `∑[A189664(A189630(n+1))]` -/
def P5171654106452097523.Spec : Prop :=
  ∀ n, P5171654106452097523.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P5628259550864575949

`∑[A189628(A189666(n+1))]`
-/

namespace A189819.P5628259550864575949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A189666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P5628259550864575949

namespace A189819

/-- `∑[A189628(A189666(n+1))]` -/
def P5628259550864575949.Spec : Prop :=
  ∀ n, P5628259550864575949.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P9284556682931752835

`∑[A284878(A284794(2*(n+1)))]`
-/

namespace A189819.P9284556682931752835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (A284794 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P9284556682931752835

namespace A189819

/-- `∑[A284878(A284794(2*(n+1)))]` -/
def P9284556682931752835.Spec : Prop :=
  ∀ n, P9284556682931752835.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P12880133647035274671

`∑[A285305(A284884(2*(n+1)))]`
-/

namespace A189819.P12880133647035274671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (A284884 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P12880133647035274671

namespace A189819

/-- `∑[A285305(A284884(2*(n+1)))]` -/
def P12880133647035274671.Spec : Prop :=
  ∀ n, P12880133647035274671.a n = A189819 (n + 1)

end A189819

/-! ## A189819.P10582290851717889647

`∑[A284878(A284795(2*n+1))]`
-/

namespace A189819.P10582290851717889647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (A284795 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189819.P10582290851717889647

namespace A189819

/-- `∑[A284878(A284795(2*n+1))]` -/
def P10582290851717889647.Spec : Prop :=
  ∀ n, P10582290851717889647.a n = A189819 (n + 1)

end A189819

/-!
# A189820: a(3*k-2) = a(k), a(3*k-1) = a(k), a(3*k) = 1 for k >= 1, starting with a(1) = 0.

The programs for A189820, the canonical program `A189820.P633367016770644658` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189820 has offset 1).

The definition of A189820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189820.P135506948934339326

`row(a(floor(n/3))+floor(n%3/2))` with `a(0)=0`
-/

namespace A189820.P135506948934339326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triRow ((a ⌊(n : ℚ) / 3⌋.toNat : ℤ) + ⌊((n % 3 : ℕ) : ℚ) / 2⌋).toNat

end

end A189820.P135506948934339326

namespace A189820

/-- `row(a(floor(n/3))+floor(n%3/2))` -/
def P135506948934339326.Spec : Prop :=
  ∀ n, (P135506948934339326.a n : ℤ) = A189820 (n + 1)

end A189820

/-! ## A189820.P633367016770644658

`floor(sqrt(2*a(floor(n/3))+n-3*floor(n/3)-n²%3))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189820

/-- `floor(sqrt(2*a(floor(n/3))+n-3*floor(n/3)-n²%3))` -/
def P633367016770644658.Spec : Prop :=
  ∀ n, P633367016770644658.a n = A189820 (n + 1)

theorem P633367016770644658.correct : P633367016770644658.Spec := by
  intro n
  simp only [A189820, Nat.add_sub_cancel]

end A189820

/-! ## A189820.P2861219867586638101

`1-A039966(n)`
-/

namespace A189820.P2861219867586638101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039966 n

end

end A189820.P2861219867586638101

namespace A189820

/-- `1-A039966(n)` -/
def P2861219867586638101.Spec : Prop :=
  ∀ n, P2861219867586638101.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P6547621782554056870

`val(A385859(n), 3)`
-/

namespace A189820.P6547621782554056870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A385859 n).toNat 3

end

end A189820.P6547621782554056870

namespace A189820

/-- `val(A385859(n), 3)` -/
def P6547621782554056870.Spec : Prop :=
  ∀ n, (P6547621782554056870.a n : ℤ) = A189820 (n + 1)

end A189820

/-! ## A189820.P865964719379181168

`C(A190592(n), 2)`
-/

namespace A189820.P865964719379181168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A190592 n).toNat 2

end

end A189820.P865964719379181168

namespace A189820

/-- `C(A190592(n), 2)` -/
def P865964719379181168.Spec : Prop :=
  ∀ n, (P865964719379181168.a n : ℤ) = A189820 (n + 1)

end A189820

/-! ## A189820.P11774620975936193348

`round(atan(A081603(n)))`
-/

namespace A189820.P11774620975936193348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A081603 n : ℝ))

end

end A189820.P11774620975936193348

namespace A189820

/-- `round(atan(A081603(n)))` -/
def P11774620975936193348.Spec : Prop :=
  ∀ n, P11774620975936193348.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P8871520177281073956

`log2(gcd(2, A290092(n)))`
-/

namespace A189820.P8871520177281073956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A290092 n) : ℝ)

end

end A189820.P8871520177281073956

namespace A189820

/-- `log2(gcd(2, A290092(n)))` -/
def P8871520177281073956.Spec : Prop :=
  ∀ n, P8871520177281073956.a n = (A189820 (n + 1) : ℝ)

end A189820

/-! ## A189820.P493739759934270510

`char[A074940(n+1)]`
-/

namespace A189820.P493739759934270510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189820.P493739759934270510

namespace A189820

/-- `char[A074940(n+1)]` -/
def P493739759934270510.Spec : Prop :=
  ∀ n, (P493739759934270510.a n : ℤ) = A189820 (n + 1)

end A189820

/-! ## A189820.P4878751373718818533

`1-A088917(2*n)`
-/

namespace A189820.P4878751373718818533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088917 (2 * n)

end

end A189820.P4878751373718818533

namespace A189820

/-- `1-A088917(2*n)` -/
def P4878751373718818533.Spec : Prop :=
  ∀ n, P4878751373718818533.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P2523002583512336126

`and(1, A117592(n)+1)`
-/

namespace A189820.P2523002583512336126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117592 n + 1)

end

end A189820.P2523002583512336126

namespace A189820

/-- `and(1, A117592(n)+1)` -/
def P2523002583512336126.Spec : Prop :=
  ∀ n, P2523002583512336126.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P13026423887118788579

`and(1, A117940(n)+1)`
-/

namespace A189820.P13026423887118788579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117940 n + 1)

end

end A189820.P13026423887118788579

namespace A189820

/-- `and(1, A117940(n)+1)` -/
def P13026423887118788579.Spec : Prop :=
  ∀ n, P13026423887118788579.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P6782036137318141921

`and(1, A120879(n)+1)`
-/

namespace A189820.P6782036137318141921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A120879 n + 1)

end

end A189820.P6782036137318141921

namespace A189820

/-- `and(1, A120879(n)+1)` -/
def P6782036137318141921.Spec : Prop :=
  ∀ n, P6782036137318141921.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P3400073392325044633

`1-C(2, A273515(n))`
-/

namespace A189820.P3400073392325044633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A273515 n).toNat : ℤ)

end

end A189820.P3400073392325044633

namespace A189820

/-- `1-C(2, A273515(n))` -/
def P3400073392325044633.Spec : Prop :=
  ∀ n, P3400073392325044633.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P3868084905298529541

`1-C(A167877(n), n)`
-/

namespace A189820.P3868084905298529541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A167877 n).toNat n : ℤ)

end

end A189820.P3868084905298529541

namespace A189820

/-- `1-C(A167877(n), n)` -/
def P3868084905298529541.Spec : Prop :=
  ∀ n, P3868084905298529541.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P6440934821053054548

`1-floor(sqrt(A006996(n)))`
-/

namespace A189820.P6440934821053054548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.sqrt (A006996 n)

end

end A189820.P6440934821053054548

namespace A189820

/-- `1-floor(sqrt(A006996(n)))` -/
def P6440934821053054548.Spec : Prop :=
  ∀ n, P6440934821053054548.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P9182262466117194787

`1-floor(sqrt(A092037(n)))`
-/

namespace A189820.P9182262466117194787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.sqrt (A092037 n)

end

end A189820.P9182262466117194787

namespace A189820

/-- `1-floor(sqrt(A092037(n)))` -/
def P9182262466117194787.Spec : Prop :=
  ∀ n, P9182262466117194787.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P7760227685955978784

`Δ[A081610(abs(1-n))]`
-/

namespace A189820.P7760227685955978784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081610 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189820.P7760227685955978784

namespace A189820

/-- `Δ[A081610(abs(1-n))]` -/
def P7760227685955978784.Spec : Prop :=
  ∀ n, P7760227685955978784.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P2281205573107619466

`A005087(A006047(n))`
-/

namespace A189820.P2281205573107619466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A006047 n).toNat

end

end A189820.P2281205573107619466

namespace A189820

/-- `A005087(A006047(n))` -/
def P2281205573107619466.Spec : Prop :=
  ∀ n, P2281205573107619466.a n = A189820 (n + 1)

end A189820

/-! ## A189820.P3461407105032331127

`A006084(A060373(n))`
-/

namespace A189820.P3461407105032331127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006084 (A060373 n).toNat

end

end A189820.P3461407105032331127

namespace A189820

/-- `A006084(A060373(n))` -/
def P3461407105032331127.Spec : Prop :=
  ∀ n, P3461407105032331127.a n = A189820 (n + 1)

end A189820

/-!
# A189822: Positions of 1 in A189820; complement of A003278.

The programs for A189822, the canonical program `A189822.P3904107500255008990` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189822 has offset 1).

The definition of A189822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189822.P3904107500255008990

`eq[0, ((n+1)*a(floor(n/3)))%3]+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189822

/-- `eq[0, ((n+1)*a(floor(n/3)))%3]+1` -/
def P3904107500255008990.Spec : Prop :=
  ∀ n, (P3904107500255008990.a n : ℤ) = A189822 (n + 1)

theorem P3904107500255008990.correct : P3904107500255008990.Spec := by
  intro n
  simp only [A189822, Nat.add_sub_cancel]

end A189822

/-! ## A189822.P4652102971009058219

`comp[3*a(floor(n/2))+n-2*floor(n/2)]+1` with `a(0)=0`
-/

namespace A189822.P4652102971009058219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189822.P4652102971009058219

namespace A189822

/-- `comp[3*a(floor(n/2))+n-2*floor(n/2)]+1` -/
def P4652102971009058219.Spec : Prop :=
  ∀ n, (P4652102971009058219.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P17250767993097700975

`lt[0, 2*a(floor(n/3))+n-3*floor(n/3)-n²%3]+1` with `a(0)=0`
-/

namespace A189822.P17250767993097700975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  2 * f2 ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋) - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189822.P17250767993097700975

namespace A189822

/-- `lt[0, 2*a(floor(n/3))+n-3*floor(n/3)-n²%3]+1` -/
def P17250767993097700975.Spec : Prop :=
  ∀ n, (P17250767993097700975.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P6362508643763108954

`A074940(1+n)+1`
-/

namespace A189822.P6362508643763108954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (1 + n) + 1

end

end A189822.P6362508643763108954

namespace A189822

/-- `A074940(1+n)+1` -/
def P6362508643763108954.Spec : Prop :=
  ∀ n, P6362508643763108954.a n = A189822 (n + 1)

end A189822

/-! ## A189822.P3713270487173718300

`A107756(n+1)+2`
-/

namespace A189822.P3713270487173718300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107756 (n + 1) + 2

end

end A189822.P3713270487173718300

namespace A189822

/-- `A107756(n+1)+2` -/
def P3713270487173718300.Spec : Prop :=
  ∀ n, P3713270487173718300.a n = A189822 (n + 1)

theorem P3713270487173718300.correct : P3713270487173718300.Spec := by
  intro n
  simp only [A189822, Nat.add_sub_cancel, A189822.P3713270487173718300.a, A189822.P3904107500255008990.f1, A189822.P3904107500255008990.f2, A189822.P3904107500255008990.a, A107756, A107756.P8154172557650536797.a, A074940, A074940.P6538437615375467476.f1, A074940.P6538437615375467476.f2, A074940.P6538437615375467476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189822

/-! ## A189822.P4570396854814626913

`lt[0, A273514(n)]+1`
-/

namespace A189822.P4570396854814626913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189822.P4570396854814626913

namespace A189822

/-- `lt[0, A273514(n)]+1` -/
def P4570396854814626913.Spec : Prop :=
  ∀ n, (P4570396854814626913.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P9930100371853322895

`lt[0, A273515(n)]+1`
-/

namespace A189822.P9930100371853322895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189822.P9930100371853322895

namespace A189822

/-- `lt[0, A273515(n)]+1` -/
def P9930100371853322895.Spec : Prop :=
  ∀ n, (P9930100371853322895.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P14446342216746232608

`lt[0, A300222(n)]+1`
-/

namespace A189822.P14446342216746232608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189822.P14446342216746232608

namespace A189822

/-- `lt[0, A300222(n)]+1` -/
def P14446342216746232608.Spec : Prop :=
  ∀ n, (P14446342216746232608.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P16642667153900102662

`lt[1, A290092(n)]+1`
-/

namespace A189822.P16642667153900102662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189822.P16642667153900102662

namespace A189822

/-- `lt[1, A290092(n)]+1` -/
def P16642667153900102662.Spec : Prop :=
  ∀ n, (P16642667153900102662.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P15176703082730524956

`lt[A117966(n), n]+1`
-/

namespace A189822.P15176703082730524956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189822.P15176703082730524956

namespace A189822

/-- `lt[A117966(n), n]+1` -/
def P15176703082730524956.Spec : Prop :=
  ∀ n, (P15176703082730524956.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P7883179586759550054

`∑[2*A241759(n)+1]`
-/

namespace A189822.P7883179586759550054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241759 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189822.P7883179586759550054

namespace A189822

/-- `∑[2*A241759(n)+1]` -/
def P7883179586759550054.Spec : Prop :=
  ∀ n, P7883179586759550054.a n = A189822 (n + 1)

end A189822

/-! ## A189822.P2297944571149763823

`comp[A005836(n+1)]+1`
-/

namespace A189822.P2297944571149763823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189822.P2297944571149763823

namespace A189822

/-- `comp[A005836(n+1)]+1` -/
def P2297944571149763823.Spec : Prop :=
  ∀ n, (P2297944571149763823.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P13071939593329967916

`comp[A107681(n+1)]+1`
-/

namespace A189822.P13071939593329967916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189822.P13071939593329967916

namespace A189822

/-- `comp[A107681(n+1)]+1` -/
def P13071939593329967916.Spec : Prop :=
  ∀ n, (P13071939593329967916.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P10632570392166311151

`lt[1, A117942(n)²]+1`
-/

namespace A189822.P10632570392166311151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189822.P10632570392166311151

namespace A189822

/-- `lt[1, A117942(n)²]+1` -/
def P10632570392166311151.Spec : Prop :=
  ∀ n, (P10632570392166311151.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P13906460240549665954

`lt[1, A309890(n+1)]+1`
-/

namespace A189822.P13906460240549665954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189822.P13906460240549665954

namespace A189822

/-- `lt[1, A309890(n+1)]+1` -/
def P13906460240549665954.Spec : Prop :=
  ∀ n, (P13906460240549665954.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P11453918318017276095

`eq[0, A088917(2*n)]+1`
-/

namespace A189822.P11453918318017276095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189822.P11453918318017276095

namespace A189822

/-- `eq[0, A088917(2*n)]+1` -/
def P11453918318017276095.Spec : Prop :=
  ∀ n, (P11453918318017276095.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P512784482202457325

`comp[A033162(n+1)-3]+1`
-/

namespace A189822.P512784482202457325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189822.P512784482202457325

namespace A189822

/-- `comp[A033162(n+1)-3]+1` -/
def P512784482202457325.Spec : Prop :=
  ∀ n, (P512784482202457325.a n : ℤ) = A189822 (n + 1)

end A189822

/-! ## A189822.P4639371943699286872

`filter[A344180(n), A189820(#)]`
-/

namespace A189822.P4639371943699286872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189820 (f1 j).toNat = 1) n)

end

end A189822.P4639371943699286872

namespace A189822

/-- `filter[A344180(n), A189820(#)]` -/
def P4639371943699286872.Spec : Prop :=
  ∀ n, P4639371943699286872.a n = A189822 (n + 1)

end A189822

/-!
# A189823: Decimal expansion of the reduced Champernowne constant.

The programs for A189823, there is no canonical definition to state claims against.
-/

/-! ## A189823.P9932507350076375722

`A007376(∑[A304042(A114324(n))])`
-/

namespace A189823.P9932507350076375722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A114324 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189823.P9932507350076375722

/-! ## A189823.P9499378360973934086

`A007376(∑[A006466(A178301(n))])`
-/

namespace A189823.P9499378360973934086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A178301 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189823.P9499378360973934086

/-! ## A189823.P3713730252469451012

`A007376(∑[A193348(A309876(n))])`
-/

namespace A189823.P3713730252469451012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193348 (A309876 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189823.P3713730252469451012

/-! ## A189823.P12006272420010343403

`A007376(∑[A327502(A309876(n))])`
-/

namespace A189823.P12006272420010343403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327502 (A309876 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189823.P12006272420010343403

/-! ## A189823.P6115599476208937908

`A007376(lt[A305802(n+5), A096852(n)])`
-/

namespace A189823.P6115599476208937908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305802 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A189823.P6115599476208937908

/-!
# A189824: Decimal expansion of Pogson's ratio 100^(1/5).

The programs for A189824, the canonical program `A189824.P12664580951343748584` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189824 has offset 1).

The definition of A189824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189824.P12664580951343748584

`A018141(A016873(n))%10`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189824

/-- `A018141(A016873(n))%10` -/
def P12664580951343748584.Spec : Prop :=
  ∀ n, P12664580951343748584.a n = A189824 (n + 1)

theorem P12664580951343748584.correct : P12664580951343748584.Spec := by
  intro n
  simp only [A189824, Nat.add_sub_cancel]

end A189824

/-!
# A189826: a(n) = (3^n-n)*(n-1) - 2^n*(n-2).

The programs for A189826, the canonical program `A189826.P17840838440103379176` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189826 has offset 1).

The definition of A189826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^(n+1)-(n+1))*n-2^(n+1)*(n-1)` (program `A189826.P17840838440103379176`, by `A189826.P17840838440103379176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189826.P17840838440103379176

`(3^(n+1)-(n+1))*n-2^(n+1)*(n-1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189826

/-- `(3^(n+1)-(n+1))*n-2^(n+1)*(n-1)` -/
def P17840838440103379176.Spec : Prop :=
  ∀ n, P17840838440103379176.a n = A189826 (n + 1)

theorem P17840838440103379176.correct : P17840838440103379176.Spec := by
  intro n
  simp only [A189826, Nat.add_sub_cancel]

end A189826

/-!
# A189827: a(n) = d(n-1) + d(n+1), where d(k) is the number of divisors of k.

The programs for A189827, the canonical program `A189827.P11786162763296381781` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189827 has offset 2).

The definition of A189827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189827.P10953468110286146517

`A000005(n+3)+∏{e}[n+1, #+1]`
-/

namespace A189827.P10953468110286146517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A189827.P10953468110286146517

namespace A189827

/-- `A000005(n+3)+∏{e}[n+1, #+1]` -/
def P10953468110286146517.Spec : Prop :=
  ∀ n, P10953468110286146517.a n = A189827 (n + 2)

end A189827

/-! ## A189827.P3885784035006148988

`∑{d}[n+1, gcd(n, #)]+Δ[A006218(n+2)]`
-/

namespace A189827.P3885784035006148988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A189827.P3885784035006148988

namespace A189827

/-- `∑{d}[n+1, gcd(n, #)]+Δ[A006218(n+2)]` -/
def P3885784035006148988.Spec : Prop :=
  ∀ n, P3885784035006148988.a n = A189827 (n + 2)

end A189827

/-! ## A189827.P14182335125338284121

`Δ[A006218(n+2)+A006218(n)]`
-/

namespace A189827.P14182335125338284121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 2) + A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189827.P14182335125338284121

namespace A189827

/-- `Δ[A006218(n+2)+A006218(n)]` -/
def P14182335125338284121.Spec : Prop :=
  ∀ n, P14182335125338284121.a n = A189827 (n + 2)

end A189827

/-! ## A189827.P14908331556323140950

`A000005(n+3)+Δ[A054519(n)]`
-/

namespace A189827.P14908331556323140950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3) + (f1 (n + 1) - f1 n)

end

end A189827.P14908331556323140950

namespace A189827

/-- `A000005(n+3)+Δ[A054519(n)]` -/
def P14908331556323140950.Spec : Prop :=
  ∀ n, P14908331556323140950.a n = A189827 (n + 2)

end A189827

/-! ## A189827.P4349897106626786777

`A384195(n+2)+A062011(n+1)`
-/

namespace A189827.P4349897106626786777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384195 (n + 2) + A062011 (n + 1)

end

end A189827.P4349897106626786777

namespace A189827

/-- `A384195(n+2)+A062011(n+1)` -/
def P4349897106626786777.Spec : Prop :=
  ∀ n, P4349897106626786777.a n = A189827 (n + 2)

theorem P4349897106626786777.correct : P4349897106626786777.Spec := by
  intro n
  simp only [A189827, Nat.add_sub_cancel, A189827.P4349897106626786777.a, A189827.P11786162763296381781.a, A051950, A051950.P1558606958145203364.a, A062011, A062011.P17525320077853469406.a, A092405, A092405.P13454232516479669845.a, A384195, A384195.P12788916049746499615.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189827

/-! ## A189827.P9587389187118237705

`A000005(n+1)+A000005(n+3)`
-/

namespace A189827.P9587389187118237705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000005 (n + 3)

end

end A189827.P9587389187118237705

namespace A189827

/-- `A000005(n+1)+A000005(n+3)` -/
def P9587389187118237705.Spec : Prop :=
  ∀ n, P9587389187118237705.a n = A189827 (n + 2)

theorem P9587389187118237705.correct : P9587389187118237705.Spec := by
  intro n
  simp only [A189827, Nat.add_sub_cancel, A189827.P9587389187118237705.a, A189827.P11786162763296381781.a, A000005, A000005.P16091521709108585461.a, A051950, A051950.P1558606958145203364.a, A092405, A092405.P13454232516479669845.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189827

/-! ## A189827.P11786162763296381781

`A092405(n+1)+A051950(n+3)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A189827

/-- `A092405(n+1)+A051950(n+3)` -/
def P11786162763296381781.Spec : Prop :=
  ∀ n, P11786162763296381781.a n = A189827 (n + 2)

theorem P11786162763296381781.correct : P11786162763296381781.Spec := by
  intro n
  simp only [A189827, Nat.add_sub_cancel]

end A189827

/-! ## A189827.P9264570178574579966

`A320111(2*(n+3))+A320111(2*(n+1))`
-/

namespace A189827.P9264570178574579966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 3)) + A320111 (2 * (n + 1))

end

end A189827.P9264570178574579966

namespace A189827

/-- `A320111(2*(n+3))+A320111(2*(n+1))` -/
def P9264570178574579966.Spec : Prop :=
  ∀ n, P9264570178574579966.a n = A189827 (n + 2)

end A189827

/-! ## A189827.P10203738319593162983

`∏{e}[n+1, #+1]+sqrt(A035116(n+3))`
-/

namespace A189827.P10203738319593162983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ) + Real.sqrt (A035116 (n + 3) : ℝ)

end

end A189827.P10203738319593162983

namespace A189827

/-- `∏{e}[n+1, #+1]+sqrt(A035116(n+3))` -/
def P10203738319593162983.Spec : Prop :=
  ∀ n, P10203738319593162983.a n = (A189827 (n + 2) : ℝ)

end A189827

/-! ## A189827.P8638308278127244984

`Δ[A054519(n+2)+A054519(n)]`
-/

namespace A189827.P8638308278127244984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 2) + A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189827.P8638308278127244984

namespace A189827

/-- `Δ[A054519(n+2)+A054519(n)]` -/
def P8638308278127244984.Spec : Prop :=
  ∀ n, P8638308278127244984.a n = A189827 (n + 2)

end A189827

/-! ## A189827.P16868465578809665320

`A212356(n+3)+A032741(n+1)`
-/

namespace A189827.P16868465578809665320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212356 (n + 3) + A032741 (n + 1)

end

end A189827.P16868465578809665320

namespace A189827

/-- `A212356(n+3)+A032741(n+1)` -/
def P16868465578809665320.Spec : Prop :=
  ∀ n, P16868465578809665320.a n = A189827 (n + 2)

end A189827

/-! ## A189827.P5513241403028939047

`A334954(n+1)+A032741(n+3)`
-/

namespace A189827.P5513241403028939047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) + A032741 (n + 3)

end

end A189827.P5513241403028939047

namespace A189827

/-- `A334954(n+1)+A032741(n+3)` -/
def P5513241403028939047.Spec : Prop :=
  ∀ n, P5513241403028939047.a n = A189827 (n + 2)

end A189827

/-! ## A189827.P17226561753466817779

`A032741(n+3)+A032741(n+1)+2`
-/

namespace A189827.P17226561753466817779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 3) + (A032741 (n + 1) + 2)

end

end A189827.P17226561753466817779

namespace A189827

/-- `A032741(n+3)+A032741(n+1)+2` -/
def P17226561753466817779.Spec : Prop :=
  ∀ n, P17226561753466817779.a n = A189827 (n + 2)

theorem P17226561753466817779.correct : P17226561753466817779.Spec := by
  intro n
  simp only [A189827, Nat.add_sub_cancel, A189827.P17226561753466817779.a, A189827.P11786162763296381781.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051950, A051950.P1558606958145203364.a, A092405, A092405.P13454232516479669845.a, A000005, A000005.P16091521709108585461.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189827

/-!
# A189828: Numbers k for which d(k-1) + d(k+1) is a record, where d(k) is the number of divisors of k.

The programs for A189828, there is no canonical definition to state claims against.
-/

/-! ## A189828.P3374572076152107695

`A189825(A189829(n+1))`
-/

namespace A189828.P3374572076152107695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189825 (A189829 (n + 1)).toNat

end

end A189828.P3374572076152107695

/-! ## A189828.P16049086085046015286

`A189825(record[A189827(n+2)])`
-/

namespace A189828.P16049086085046015286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189825 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189828.P16049086085046015286

/-! ## A189828.P16272957466273985389

`A347192(lcm(A000926(n+1), A074402(n+1)))`
-/

namespace A189828.P16272957466273985389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347192 (Int.lcm (A000926 (n + 1)) (A074402 (n + 1)))

end

end A189828.P16272957466273985389

/-! ## A189828.P7869024822934960068

`A347192(A033621(n+1))`
-/

namespace A189828.P7869024822934960068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347192 (A033621 (n + 1)).toNat

end

end A189828.P7869024822934960068

/-! ## A189828.P15693677662372497268

`A347192(A249157(n+2))`
-/

namespace A189828.P15693677662372497268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347192 (A249157 (n + 2)).toNat

end

end A189828.P15693677662372497268

/-!
# A189829: Record values of d(n-1) + d(n+1), where d(k) is the number of divisors of k.

The programs for A189829, there is no canonical definition to state claims against.
-/

/-! ## A189829.P16916858047795383412

`record[A000005(n+1)+A000005(n+3)]`
-/

namespace A189829.P16916858047795383412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189829.P16916858047795383412

/-! ## A189829.P7154574877496827132

`A092405(A189828(n+1))-A051950(A189828(n+1))`
-/

namespace A189829.P7154574877496827132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (A189828 (n + 1)).toNat - A051950 (A189828 (n + 1)).toNat

end

end A189829.P7154574877496827132

/-! ## A189829.P8267746848638087731

`record[A189827(n+2)]`
-/

namespace A189829.P8267746848638087731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189829.P8267746848638087731

/-! ## A189829.P1559053663630792925

`A189827(A189828(n+1))`
-/

namespace A189829.P1559053663630792925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A189828 (n + 1)).toNat

end

end A189829.P1559053663630792925

/-! ## A189829.P15059534672575301354

`record[A062249(n+3)-A059292(n+1)]`
-/

namespace A189829.P15059534672575301354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 3) - A059292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189829.P15059534672575301354

/-!
# A189831: Labeled simple graphs with n nodes and n-1 edges that are not trees.

The programs for A189831, the canonical program `A189831.P11267451981388107378` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189831 has offset 1).

The definition of A189831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189831.P7698609047015038974

`A014068(n)-A000272(n+1)`
-/

namespace A189831.P7698609047015038974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014068 n - A000272 (n + 1)

end

end A189831.P7698609047015038974

namespace A189831

/-- `A014068(n)-A000272(n+1)` -/
def P7698609047015038974.Spec : Prop :=
  ∀ n, P7698609047015038974.a n = A189831 (n + 1)

end A189831

/-! ## A189831.P11267451981388107378

`C(C(n+1, 2), n)-(n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189831

/-- `C(C(n+1, 2), n)-(n+1)^(n-1)` -/
def P11267451981388107378.Spec : Prop :=
  ∀ n, P11267451981388107378.a n = (A189831 (n + 1) : ℚ)

end A189831

/-! ## A189831.P12864618363777219458

`A107862(∑[n])-A000272(n+1)`
-/

namespace A189831.P12864618363777219458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 (∑ j ∈ Finset.range (n + 1), f1 j) - A000272 (n + 1)

end

end A189831.P12864618363777219458

namespace A189831

/-- `A107862(∑[n])-A000272(n+1)` -/
def P12864618363777219458.Spec : Prop :=
  ∀ n, P12864618363777219458.a n = A189831 (n + 1)

end A189831

/-! ## A189831.P15324149440733287821

`record[A107862(n)+A049581(n)]-n-A000272(n+1)`
-/

namespace A189831.P15324149440733287821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 n + A049581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ) - A000272 (n + 1)

end

end A189831.P15324149440733287821

namespace A189831

/-- `record[A107862(n)+A049581(n)]-n-A000272(n+1)` -/
def P15324149440733287821.Spec : Prop :=
  ∀ n, P15324149440733287821.a n = A189831 (n + 1)

end A189831

/-! ## A189831.P551394140722411797

`C(∑[n], n)-(n+1)^(n-1)`
-/

namespace A189831.P551394140722411797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n : ℚ) - (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A189831.P551394140722411797

namespace A189831

/-- `C(∑[n], n)-(n+1)^(n-1)` -/
def P551394140722411797.Spec : Prop :=
  ∀ n, P551394140722411797.a n = (A189831 (n + 1) : ℚ)

end A189831

/-! ## A189831.P11917266264910365954

`A176566(∑[n]+n)-A000272(n+1)`
-/

namespace A189831.P11917266264910365954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176566 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A000272 (n + 1)

end

end A189831.P11917266264910365954

namespace A189831

/-- `A176566(∑[n]+n)-A000272(n+1)` -/
def P11917266264910365954.Spec : Prop :=
  ∀ n, P11917266264910365954.a n = A189831 (n + 1)

end A189831

/-!
# A189832: Expansion of 2/((x+3)*sqrt(-3*x^2-2*x+1)+3*x^2+2*x-1).

The programs for A189832, there is no canonical definition to state claims against.
-/

/-! ## A189832.P5618643836798846585

`A165190(A025178(n+1))+A097861(n)`
-/

namespace A189832.P5618643836798846585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A025178 (n + 1)).toNat + A097861 n

end

end A189832.P5618643836798846585

/-! ## A189832.P5096346158396153105

`A262689(xor(A002293(n), A115567(n)))`
-/

namespace A189832.P5096346158396153105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.xor (A002293 n) (A115567 n)).toNat

end

end A189832.P5096346158396153105

/-! ## A189832.P10316347036107143569

`A262689(xor(A002293(n), A025242(n+1)))`
-/

namespace A189832.P10316347036107143569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.xor (A002293 n) (A025242 (n + 1))).toNat

end

end A189832.P10316347036107143569

/-! ## A189832.P6391524132111744521

`A000045(n+1)+A245898(n+1)-A130128(n+1)`
-/

namespace A189832.P6391524132111744521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A245898 (n + 1) - A130128 (n + 1))

end

end A189832.P6391524132111744521

/-!
# A189833: a(n) = n^2 + 8.

The programs for A189833, the canonical program `A189833.P4533563960677249930` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189833 has offset 0).

The definition of A189833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+8` (program `A189833.P4533563960677249930`, by `A189833.P4533563960677249930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189833.P4533563960677249930

`n²+8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189833

/-- `n²+8` -/
def P4533563960677249930.Spec : Prop :=
  ∀ n, (P4533563960677249930.a n : ℤ) = A189833 n

theorem P4533563960677249930.correct : P4533563960677249930.Spec := by
  intro n
  simp only [A189833]

end A189833

/-!
# A189834: a(n) = n^2 + 9.

The programs for A189834, the canonical program `A189834.P10265186452887140531` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189834 has offset 0).

The definition of A189834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+9` (program `A189834.P10265186452887140531`, by `A189834.P10265186452887140531.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189834.P10265186452887140531

`n²+9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189834

/-- `n²+9` -/
def P10265186452887140531.Spec : Prop :=
  ∀ n, (P10265186452887140531.a n : ℤ) = A189834 n

theorem P10265186452887140531.correct : P10265186452887140531.Spec := by
  intro n
  simp only [A189834]

end A189834

/-!
# A189835: Number of representations of n as a*b + b*c + c*d + d*e where a, b, d, e>0, c>=0 are integers.

The programs for A189835, the canonical program `A189835.P10100538785749668856` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189835 has offset 1).

The definition of A189835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189835.P3084619982700224447

`∑{d}[n+1, A344485(#)]`
-/

namespace A189835.P3084619982700224447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344485 d

end

end A189835.P3084619982700224447

namespace A189835

/-- `∑{d}[n+1, A344485(#)]` -/
def P3084619982700224447.Spec : Prop :=
  ∀ n, P3084619982700224447.a n = A189835 (n + 1)

end A189835

/-! ## A189835.P10100538785749668856

`A001157(n+1)-A038040(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A189835

/-- `A001157(n+1)-A038040(n+1)` -/
def P10100538785749668856.Spec : Prop :=
  ∀ n, P10100538785749668856.a n = A189835 (n + 1)

theorem P10100538785749668856.correct : P10100538785749668856.Spec := by
  intro n
  simp only [A189835, Nat.add_sub_cancel]

end A189835

/-! ## A189835.P9882707368714985100

`∑{d}[n+1, #²-(n+1)]`
-/

namespace A189835.P9882707368714985100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - (n + 1 : ℤ))

end

end A189835.P9882707368714985100

namespace A189835

/-- `∑{d}[n+1, #²-(n+1)]` -/
def P9882707368714985100.Spec : Prop :=
  ∀ n, P9882707368714985100.a n = A189835 (n + 1)

end A189835

/-! ## A189835.P4298012311922565554

`∑{d}[n+1, #*(#-1)]-∑{d}[n+1, n+1-#]`
-/

namespace A189835.P4298012311922565554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ((d : ℤ) - 1) - ∑ d ∈ Nat.divisors (f2 n), ((n + 1 : ℤ) - (d : ℤ))

end

end A189835.P4298012311922565554

namespace A189835

/-- `∑{d}[n+1, #*(#-1)]-∑{d}[n+1, n+1-#]` -/
def P4298012311922565554.Spec : Prop :=
  ∀ n, P4298012311922565554.a n = A189835 (n + 1)

end A189835

/-! ## A189835.P15752441598307238674

`A086666(n+1)-∑{d}[n+1, n+1-#]`
-/

namespace A189835.P15752441598307238674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086666 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (d : ℤ))

end

end A189835.P15752441598307238674

namespace A189835

/-- `A086666(n+1)-∑{d}[n+1, n+1-#]` -/
def P15752441598307238674.Spec : Prop :=
  ∀ n, P15752441598307238674.a n = A189835 (n + 1)

end A189835

/-! ## A189835.P4708904948458414077

`A001157(n+1)-∑{d}[n+1, lcm(#, n+1)]`
-/

namespace A189835.P4708904948458414077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℤ)

end

end A189835.P4708904948458414077

namespace A189835

/-- `A001157(n+1)-∑{d}[n+1, lcm(#, n+1)]` -/
def P4708904948458414077.Spec : Prop :=
  ∀ n, P4708904948458414077.a n = A189835 (n + 1)

end A189835

/-! ## A189835.P6571486421002974678

`sqrt(A356533(n+1))-(n+1)*∏{e}[n+1, #+1]`
-/

namespace A189835.P6571486421002974678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356533 (n + 1) : ℝ) - (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℝ)

end

end A189835.P6571486421002974678

namespace A189835

/-- `sqrt(A356533(n+1))-(n+1)*∏{e}[n+1, #+1]` -/
def P6571486421002974678.Spec : Prop :=
  ∀ n, P6571486421002974678.a n = (A189835 (n + 1) : ℝ)

end A189835

/-! ## A189835.P396828508358069531

`∑[(n+1)²]-A276984(n+1)-(n+1)*∏{e}[n+1, #+1]`
-/

namespace A189835.P396828508358069531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A276984 (n + 1) - (((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℕ) : ℤ)

end

end A189835.P396828508358069531

namespace A189835

/-- `∑[(n+1)²]-A276984(n+1)-(n+1)*∏{e}[n+1, #+1]` -/
def P396828508358069531.Spec : Prop :=
  ∀ n, P396828508358069531.a n = A189835 (n + 1)

end A189835

/-! ## A189835.P6060122665480722985

`A086666(n+1)-A094471(n+1)`
-/

namespace A189835.P6060122665480722985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086666 (n + 1) - A094471 (n + 1)

end

end A189835.P6060122665480722985

namespace A189835

/-- `A086666(n+1)-A094471(n+1)` -/
def P6060122665480722985.Spec : Prop :=
  ∀ n, P6060122665480722985.a n = A189835 (n + 1)

theorem P6060122665480722985.correct : P6060122665480722985.Spec := by
  intro n
  simp only [A189835, Nat.add_sub_cancel, A189835.P6060122665480722985.a, A189835.P10100538785749668856.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A038040, A038040.P16512896840577774730.a, A086666, A086666.P3609160851876626108.a, A094471, A094471.P10880822235094612413.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189835

/-! ## A189835.P14375148606228112265

`A330866(n+1)-A303384(n+1)`
-/

namespace A189835.P14375148606228112265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330866 (n + 1) - A303384 (n + 1)

end

end A189835.P14375148606228112265

namespace A189835

/-- `A330866(n+1)-A303384(n+1)` -/
def P14375148606228112265.Spec : Prop :=
  ∀ n, P14375148606228112265.a n = A189835 (n + 1)

theorem P14375148606228112265.correct : P14375148606228112265.Spec := by
  intro n
  simp only [A189835, Nat.add_sub_cancel, A189835.P14375148606228112265.a, A189835.P10100538785749668856.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A038040, A038040.P16512896840577774730.a, A303384, A303384.P10676162683554511722.a, A330866, A330866.P8751946144507611148.a, A000005, A000005.P16091521709108585461.a, A064987, A064987.P14181610018234257040.a, A065608, A065608.P12445239359989980431.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189835

/-! ## A189835.P2598018501558402546

`2*A007437(n+1)-A152211(n+1)`
-/

namespace A189835.P2598018501558402546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007437 (n + 1) - A152211 (n + 1)

end

end A189835.P2598018501558402546

namespace A189835

/-- `2*A007437(n+1)-A152211(n+1)` -/
def P2598018501558402546.Spec : Prop :=
  ∀ n, P2598018501558402546.a n = A189835 (n + 1)

end A189835

/-! ## A189835.P15334489486630664060

`A086666(n+1)-(∑[n]-A362625(n+1))`
-/

namespace A189835.P15334489486630664060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086666 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A362625 (n + 1))

end

end A189835.P15334489486630664060

namespace A189835

/-- `A086666(n+1)-(∑[n]-A362625(n+1))` -/
def P15334489486630664060.Spec : Prop :=
  ∀ n, P15334489486630664060.a n = A189835 (n + 1)

end A189835

/-! ## A189835.P3632558001494850391

`A001157(n+1)-(n+1)*A000005(n+1)`
-/

namespace A189835.P3632558001494850391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - (n + 1 : ℤ) * A000005 (n + 1)

end

end A189835.P3632558001494850391

namespace A189835

/-- `A001157(n+1)-(n+1)*A000005(n+1)` -/
def P3632558001494850391.Spec : Prop :=
  ∀ n, P3632558001494850391.a n = A189835 (n + 1)

end A189835

/-!
# A189836: a(n) = n^2 + 11.

The programs for A189836, the canonical program `A189836.P17684441985641373940` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189836 has offset 0).

The definition of A189836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+11` (program `A189836.P17684441985641373940`, by `A189836.P17684441985641373940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189836.P17684441985641373940

`n²+11`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189836

/-- `n²+11` -/
def P17684441985641373940.Spec : Prop :=
  ∀ n, (P17684441985641373940.a n : ℤ) = A189836 n

theorem P17684441985641373940.correct : P17684441985641373940.Spec := by
  intro n
  simp only [A189836]

end A189836

/-!
# A189838: Number of ways to place n nonattacking composite pieces rook + rider[2,2] on an n X n chessboard.

The programs for A189838, there is no canonical definition to state claims against.
-/

/-! ## A189838.P15599341725271100963

`and(A000027(A126596(n)), A149982(n))`
-/

namespace A189838.P15599341725271100963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (A126596 n).toNat) (A149982 n)

end

end A189838.P15599341725271100963

/-! ## A189838.P11230061225870171722

`A000926(A056971(n))*A181824(n+1)`
-/

namespace A189838.P11230061225870171722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (A056971 n).toNat * A181824 (n + 1)

end

end A189838.P11230061225870171722

/-!
# A189839: Number of ways to place n nonattacking composite pieces rook + rider[3,3] on an n X n chessboard.

The programs for A189839, there is no canonical definition to state claims against.
-/

/-! ## A189839.P3505807160303451491

`A306371(A260881(n))`
-/

namespace A189839.P3505807160303451491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306371 (A260881 n).toNat

end

end A189839.P3505807160303451491

/-! ## A189839.P9872144111043477820

`A005940(Δ[A124384(n)])`
-/

namespace A189839.P9872144111043477820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (f1 (n + 1) - f1 n).toNat

end

end A189839.P9872144111043477820

/-! ## A189839.P17931094254166747456

`A005940(A117574(n+1))`
-/

namespace A189839.P17931094254166747456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A117574 (n + 1)).toNat

end

end A189839.P17931094254166747456

/-!
# A189840: Number of ways to place n nonattacking composite pieces rook + rider[4,4] on an n X n chessboard.

The programs for A189840, there is no canonical definition to state claims against.
-/

/-! ## A189840.P3632591199505349225

`A189255(∑[A007318(C(n, 4))])`
-/

namespace A189840.P3632591199505349225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189255 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189840.P3632591199505349225

/-! ## A189840.P7938010229499598869

`A189255(A099146(n+1)+1)`
-/

namespace A189840.P7938010229499598869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189255 (A099146 (n + 1) + 1).toNat

end

end A189840.P7938010229499598869

/-! ## A189840.P9353351131889153813

`A189255(n+1)%A231574(n+1)`
-/

namespace A189840.P9353351131889153813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189255 (n + 1)) (A231574 (n + 1))

end

end A189840.P9353351131889153813

/-!
# A189841: Number of ways to place n nonattacking composite pieces rook + rider[5,5] on an n X n chessboard.

The programs for A189841, there is no canonical definition to state claims against.
-/

/-! ## A189841.P10757925176681011605

`A189256(n+1)+A112765(A355388(n))`
-/

namespace A189841.P10757925176681011605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189256 (n + 1) + A112765 (A355388 n).toNat

end

end A189841.P10757925176681011605

/-! ## A189841.P9559728180052384409

`A189256(n+1)/A355382(A355383(n))`
-/

namespace A189841.P9559728180052384409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189256 (n + 1) : ℚ) / (A355382 (A355383 n).toNat : ℚ)

end

end A189841.P9559728180052384409

/-! ## A189841.P1590833130409478611

`A189256(n+1)^A291845(A016116(n))`
-/

namespace A189841.P1590833130409478611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189256 (n + 1) : ℚ) ^ (A291845 (A016116 n).toNat : ℤ)

end

end A189841.P1590833130409478611

/-! ## A189841.P6833660955180832810

`A306957(A205590(n+1))+A189256(n+1)`
-/

namespace A189841.P6833660955180832810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306957 (A205590 (n + 1)).toNat + A189256 (n + 1)

end

end A189841.P6833660955180832810

/-! ## A189841.P5209697847887117661

`A244413(A138879(3*n+5))+A189256(n+1)`
-/

namespace A189841.P5209697847887117661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244413 (A138879 (3 * n + 5)).toNat + A189256 (n + 1)

end

end A189841.P5209697847887117661

/-!
# A189842: Number of ways to place n nonattacking composite pieces rook + rider[6,6] on an n X n chessboard.

The programs for A189842, there is no canonical definition to state claims against.
-/

/-! ## A189842.P10463817872051346832

`A189271(n+1)^A117358(A000070(n))`
-/

namespace A189842.P10463817872051346832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189271 (n + 1) : ℚ) ^ (A117358 (A000070 n).toNat : ℤ)

end

end A189842.P10463817872051346832

/-! ## A189842.P995158094058847768

`A189271(n+1)^A008292(A000010(n+1))`
-/

namespace A189842.P995158094058847768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189271 (n + 1) : ℚ) ^ (A008292 (A000010 (n + 1)).toNat : ℤ)

end

end A189842.P995158094058847768

/-! ## A189842.P16641589768272223646

`A189271(n+1)^A008292(A280504(n+1))`
-/

namespace A189842.P16641589768272223646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189271 (n + 1) : ℚ) ^ (A008292 (A280504 (n + 1)).toNat : ℤ)

end

end A189842.P16641589768272223646

/-! ## A189842.P1748206568251284368

`A189271(n+1)^A117358(A284640(n+1))`
-/

namespace A189842.P1748206568251284368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189271 (n + 1) : ℚ) ^ (A117358 (A284640 (n + 1)).toNat : ℤ)

end

end A189842.P1748206568251284368

/-! ## A189842.P11794461389157589605

`A189271(n+1)^A008292(A008292(n+1))`
-/

namespace A189842.P11794461389157589605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189271 (n + 1) : ℚ) ^ (A008292 (A008292 (n + 1)).toNat : ℤ)

end

end A189842.P11794461389157589605

/-!
# A189843: Number of ways to place n nonattacking composite pieces rook + semi-rider[2,2] on an n X n chessboard.

The programs for A189843, there is no canonical definition to state claims against.
-/

/-! ## A189843.P11241337766032268

`A200443(A296275(n))`
-/

namespace A189843.P11241337766032268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A296275 n).toNat

end

end A189843.P11241337766032268

/-! ## A189843.P1052978269341414250

`∑[A330122(A367414(n))]`
-/

namespace A189843.P1052978269341414250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330122 (A367414 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189843.P1052978269341414250

/-!
# A189844: Number of ways to place n nonattacking composite pieces rook + semi-rider[3,3] on an n X n chessboard.

The programs for A189844, there is no canonical definition to state claims against.
-/

/-! ## A189844.P5866918236993323933

`A100143(A099785(n))`
-/

namespace A189844.P5866918236993323933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A099785 n).toNat

end

end A189844.P5866918236993323933

/-! ## A189844.P11567496565368833631

`A237270(A082028(n))`
-/

namespace A189844.P11567496565368833631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (A082028 n).toNat

end

end A189844.P11567496565368833631

/-!
# A189845: Number of length-n restricted growth strings (RGS) [s(0),s(1),...,s(n-1)] where s(0)=0 and s(k)<=3+max(prefix) for k>=1.

The programs for A189845, there is no canonical definition to state claims against.
-/

/-! ## A189845.P12283088606619846183

`A305962(∑[n+3]+n+3)`
-/

namespace A189845.P12283088606619846183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A189845.P12283088606619846183

/-! ## A189845.P5062370179299036120

`A174571(A090753(n+2))`
-/

namespace A189845.P5062370179299036120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A090753 (n + 2)).toNat

end

end A189845.P5062370179299036120

/-!
# A189846: Number of ways to place n nonattacking composite pieces rook + semi-rider[4,4] on an n X n chessboard.

The programs for A189846, there is no canonical definition to state claims against.
-/

/-! ## A189846.P6701434007201547462

`A189283((n+1)^floor(n^(1/3)))`
-/

namespace A189846.P6701434007201547462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ : ℤ))).toNat

end

end A189846.P6701434007201547462

/-! ## A189846.P13752084305551793468

`A052410(A189283(n+1))`
-/

namespace A189846.P13752084305551793468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A189283 (n + 1)).toNat

end

end A189846.P13752084305551793468

/-! ## A189846.P4753785573049103004

`A189283(n+1)*A365297(n!+1)`
-/

namespace A189846.P4753785573049103004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189283 (n + 1) * A365297 (Nat.factorial n + 1)

end

end A189846.P4753785573049103004

/-! ## A189846.P151230161064023713

`A189283(n+1)-A216579(A189283(n))`
-/

namespace A189846.P151230161064023713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189283 (n + 1) - A216579 (A189283 n).toNat

end

end A189846.P151230161064023713

/-!
# A189847: Number of ways to place n nonattacking composite pieces rook + semi-rider[5,5] on an n X n chessboard.

The programs for A189847, there is no canonical definition to state claims against.
-/

/-! ## A189847.P13818018274161098945

`A189284(A156136(∑[n]))`
-/

namespace A189847.P13818018274161098945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189284 (A156136 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A189847.P13818018274161098945

/-! ## A189847.P7953568879136547808

`record[A189284(A190599(n))]`
-/

namespace A189847.P7953568879136547808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189284 (A190599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189847.P7953568879136547808

/-! ## A189847.P10606281424386538331

`A189284(A085908(n+1))`
-/

namespace A189847.P10606281424386538331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189284 (A085908 (n + 1)).toNat

end

end A189847.P10606281424386538331

/-! ## A189847.P3435561887015947451

`A189284(A001222(Δ[3^n]))`
-/

namespace A189847.P3435561887015947451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189284 (A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A189847.P3435561887015947451

/-! ## A189847.P4847355323570463884

`A189284((n+1)^A261675(n))`
-/

namespace A189847.P4847355323570463884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189284 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A261675 n : ℤ))).toNat

end

end A189847.P4847355323570463884

/-!
# A189848: Number of ways to place n nonattacking composite pieces rook + semi-rider[6,6] on an n X n chessboard.

The programs for A189848, there is no canonical definition to state claims against.
-/

/-! ## A189848.P16144156435247670524

`record[A189285(A048881(n))]`
-/

namespace A189848.P16144156435247670524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189285 (A048881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189848.P16144156435247670524

/-! ## A189848.P7062933152155310741

`record[A189285(A332104(n))]`
-/

namespace A189848.P7062933152155310741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189285 (A332104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189848.P7062933152155310741

/-! ## A189848.P9100465481884325419

`A189285(A049872(n)+1)`
-/

namespace A189848.P9100465481884325419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189285 (A049872 n + 1).toNat

end

end A189848.P9100465481884325419

/-! ## A189848.P2239266922109961520

`record[A189285(A334215(n+1))]`
-/

namespace A189848.P2239266922109961520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189285 (A334215 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189848.P2239266922109961520

/-! ## A189848.P17682146357096449292

`record[A189285(A302242(2*n+5))]`
-/

namespace A189848.P17682146357096449292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189285 (A302242 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189848.P17682146357096449292

/-!
# A189849: a(0)=1, a(1)=0, a(n) = 4*n*(n-1)*(a(n-1) + 2*(n-1)*a(n-2)).

The programs for A189849, the canonical program `A189849.P10463127628630960373` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189849 has offset 0).

The definition of A189849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(n-1)*(a(n-1)+2*(n-1)*a(n-2))` (program `A189849.P10463127628630960373`, by `A189849.P10463127628630960373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189849.P10463127628630960373

`4*n*(n-1)*(a(n-1)+2*(n-1)*a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189849

/-- `4*n*(n-1)*(a(n-1)+2*(n-1)*a(n-2))` -/
def P10463127628630960373.Spec : Prop :=
  ∀ n, P10463127628630960373.a n = A189849 n

theorem P10463127628630960373.correct : P10463127628630960373.Spec := by
  intro n
  simp only [A189849]

end A189849

/-! ## A189849.P13657486451323010149

`2^n*n!*A053871(n)`
-/

namespace A189849.P13657486451323010149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℤ) * A053871 n

end

end A189849.P13657486451323010149

namespace A189849

/-- `2^n*n!*A053871(n)` -/
def P13657486451323010149.Spec : Prop :=
  ∀ n, P13657486451323010149.a n = A189849 n

end A189849

/-! ## A189849.P14507760917199383836

`A333706(C(2*n+1, 2)+n)`
-/

namespace A189849.P14507760917199383836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333706 (Nat.choose (2 * n + 1) 2 + n)

end

end A189849.P14507760917199383836

namespace A189849

/-- `A333706(C(2*n+1, 2)+n)` -/
def P14507760917199383836.Spec : Prop :=
  ∀ n, P14507760917199383836.a n = A189849 n

end A189849

/-! ## A189849.P14849175248698538047

`4^n*A001499(n)`
-/

namespace A189849.P14849175248698538047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A001499 n

end

end A189849.P14849175248698538047

namespace A189849

/-- `4^n*A001499(n)` -/
def P14849175248698538047.Spec : Prop :=
  ∀ n, P14849175248698538047.a n = A189849 n

end A189849

/-! ## A189849.P8969393753517699060

`A000165(n)*A053871(n)`
-/

namespace A189849.P8969393753517699060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A053871 n

end

end A189849.P8969393753517699060

namespace A189849

/-- `A000165(n)*A053871(n)` -/
def P8969393753517699060.Spec : Prop :=
  ∀ n, P8969393753517699060.a n = A189849 n

end A189849

/-!
# A189850: Number of ways to place n nonattacking composite pieces rook + rider[1,3] on an n X n chessboard.

The programs for A189850, there is no canonical definition to state claims against.
-/

/-! ## A189850.P1227027300928384378

`A023159(A272417(n))`
-/

namespace A189850.P1227027300928384378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023159 (A272417 n).toNat

end

end A189850.P1227027300928384378

/-! ## A189850.P275573759906621518

`A193024(A230958(n))`
-/

namespace A189850.P275573759906621518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193024 (A230958 n).toNat

end

end A189850.P275573759906621518

/-!
# A189851: Number of ways to place n nonattacking composite pieces rook + rider[1,4] on an n X n chessboard.

The programs for A189851, there is no canonical definition to state claims against.
-/

/-! ## A189851.P6632284529175315752

`A189563(∑[A287022(n)])`
-/

namespace A189851.P6632284529175315752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189563 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189851.P6632284529175315752

/-! ## A189851.P12127914799149193428

`A189563(∑[A290544(n)])`
-/

namespace A189851.P12127914799149193428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189563 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189851.P12127914799149193428

/-! ## A189851.P9240905918631430067

`A189563(A154701(n+1))`
-/

namespace A189851.P9240905918631430067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189563 (A154701 (n + 1)).toNat

end

end A189851.P9240905918631430067

/-! ## A189851.P123806810931179262

`Δ[A028310(∑[A189563(n)])]`
-/

namespace A189851.P123806810931179262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189563 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189851.P123806810931179262

/-!
# A189852: Number of ways to place n nonattacking composite pieces rook + rider[1,5] on an n X n chessboard.

The programs for A189852, there is no canonical definition to state claims against.
-/

/-! ## A189852.P10349514531416132467

`A189564(∑[gcd(11, ∏{p}[n+1, #])])`
-/

namespace A189852.P10349514531416132467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189564 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189852.P10349514531416132467

/-! ## A189852.P6226902586729559884

`A189564(2*n+1-∑{digits}[n, #])`
-/

namespace A189852.P6226902586729559884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189564 (2 * n + 1 - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A189852.P6226902586729559884

/-! ## A189852.P14484756862368277058

`A189564(A216556(n))`
-/

namespace A189852.P14484756862368277058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189564 (A216556 n).toNat

end

end A189852.P14484756862368277058

/-! ## A189852.P1315952963870269722

`record[A189564(A374995(n))]`
-/

namespace A189852.P1315952963870269722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189564 (A374995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189852.P1315952963870269722

/-!
# A189853: Number of ways to place n nonattacking composite pieces rook + rider[1,6] on an n X n chessboard.

The programs for A189853, there is no canonical definition to state claims against.
-/

/-! ## A189853.P15968026337035479475

`record[n!%A112138(n+1)]`
-/

namespace A189853.P15968026337035479475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial n : ℤ) (A112138 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189853.P15968026337035479475

/-! ## A189853.P5142014927395139455

`record[A242603(A274795(n+1))]`
-/

namespace A189853.P5142014927395139455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (A274795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189853.P5142014927395139455

/-! ## A189853.P7593072092505991328

`record[gcd(A177535(n), A177543(n))]`
-/

namespace A189853.P7593072092505991328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A177535 n) (A177543 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189853.P7593072092505991328

/-!
# A189854: Number of ways to place n nonattacking composite pieces rook + rider[2,3] on an n X n chessboard.

The programs for A189854, there is no canonical definition to state claims against.
-/

/-! ## A189854.P15686962774091429691

`A291069(a(n-1))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A189854.P15686962774091429691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A291069 (a (n - 1)).toNat

end

end A189854.P15686962774091429691

/-! ## A189854.P733662043345249915

`∑[A240232(A006153(n))]`
-/

namespace A189854.P733662043345249915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240232 (A006153 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189854.P733662043345249915

/-!
# A189856: Number of ways to place n nonattacking composite pieces rook + rider[2,5] on an n X n chessboard.

The programs for A189856, there is no canonical definition to state claims against.
-/

/-! ## A189856.P3168267975838338665

`A189567(Δ[n²]-∑{digits}[n, #])`
-/

namespace A189856.P3168267975838338665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189567 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A189856.P3168267975838338665

/-! ## A189856.P2386980112183295875

`A189567(∑[gcd(11, ∏{p}[n+1, #])])`
-/

namespace A189856.P2386980112183295875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189567 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189856.P2386980112183295875

/-! ## A189856.P9196423444359477021

`A189567(∑[1-∑{digits}[n, #]+n])`
-/

namespace A189856.P9196423444359477021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189567 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189856.P9196423444359477021

/-! ## A189856.P6945101040799331156

`A189567(1-∑{digits}[n, #]+n+n)`
-/

namespace A189856.P6945101040799331156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189567 (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)).toNat

end

end A189856.P6945101040799331156

/-! ## A189856.P13554612699738129719

`A189567(A002998(n)+1)`
-/

namespace A189856.P13554612699738129719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189567 (A002998 n + 1).toNat

end

end A189856.P13554612699738129719

/-!
# A189857: Number of ways to place n nonattacking composite pieces rook + rider[2,6] on an n X n chessboard.

The programs for A189857, there is no canonical definition to state claims against.
-/

/-! ## A189857.P8082240862513497127

`A003972(A144301(n)+A000982(n))`
-/

namespace A189857.P8082240862513497127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (A144301 n + A000982 n).toNat

end

end A189857.P8082240862513497127

/-! ## A189857.P15702912801496804658

`A257684(A189853(n+1))+A189853(n+1)`
-/

namespace A189857.P15702912801496804658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A189853 (n + 1)).toNat + A189853 (n + 1)

end

end A189857.P15702912801496804658

/-!
# A189858: Number of ways to place n nonattacking composite pieces rook + rider[3,4] on an n X n chessboard.

The programs for A189858, there is no canonical definition to state claims against.
-/

/-! ## A189858.P14733130169126511879

`A189568(gcd((n+1)²/∏{p}[n+1, #], ∑[6*n]))`
-/

namespace A189858.P14733130169126511879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189568 (Int.gcd (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A189858.P14733130169126511879

/-! ## A189858.P9459584423364327042

`A189568(∑[A287022(n)])`
-/

namespace A189858.P9459584423364327042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189858.P9459584423364327042

/-! ## A189858.P13038117826416599128

`A189568(∑[A290544(n)])`
-/

namespace A189858.P13038117826416599128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189858.P13038117826416599128

/-! ## A189858.P4962876988463475147

`A189568(A073789(n)+1)`
-/

namespace A189858.P4962876988463475147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189568 (A073789 n + 1).toNat

end

end A189858.P4962876988463475147

/-!
# A189859: Number of ways to place n nonattacking composite pieces rook + rider[3,5] on an n X n chessboard.

The programs for A189859, there is no canonical definition to state claims against.
-/

/-! ## A189859.P9913546877483454294

`A189569(∑[A139337(n)])`
-/

namespace A189859.P9913546877483454294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189569 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189859.P9913546877483454294

/-! ## A189859.P1793738429784368622

`A189569(∑[A213217(n)])`
-/

namespace A189859.P1793738429784368622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189569 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189859.P1793738429784368622

/-! ## A189859.P4729918937546112261

`A189569(∑[A229889(n)])`
-/

namespace A189859.P4729918937546112261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189569 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189859.P4729918937546112261

/-! ## A189859.P9797280003005835825

`A189569(∑[A260526(n)])`
-/

namespace A189859.P9797280003005835825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189569 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189859.P9797280003005835825

/-! ## A189859.P6001971063874765105

`A189569(A023106(n)+1)`
-/

namespace A189859.P6001971063874765105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189569 (A023106 n + 1).toNat

end

end A189859.P6001971063874765105

/-!
# A189860: Number of ways to place n nonattacking composite pieces rook + rider[3,6] on an n X n chessboard.

The programs for A189860, there is no canonical definition to state claims against.
-/

/-! ## A189860.P12237244047123525952

`A084558(A103820(n))*A189570(n)`
-/

namespace A189860.P12237244047123525952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A103820 n).toNat * A189570 n

end

end A189860.P12237244047123525952

/-! ## A189860.P12948486287326289201

`A084558(A103821(n))*A189570(n)`
-/

namespace A189860.P12948486287326289201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A103821 n).toNat * A189570 n

end

end A189860.P12948486287326289201

/-!
# A189861: Number of ways to place n nonattacking composite pieces rook + rider[4,5] on an n X n chessboard.

The programs for A189861, there is no canonical definition to state claims against.
-/

/-! ## A189861.P17966395793032196116

`A189570(lcm(n+1, ceil(n/8)))`
-/

namespace A189861.P17966395793032196116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189570 (Int.lcm (n + 1 : ℤ) ⌈(n : ℚ) / 8⌉)

end

end A189861.P17966395793032196116

/-! ## A189861.P1836636916400152909

`A189570((n+1)*floor((n+8)/9))`
-/

namespace A189861.P1836636916400152909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189570 ((n + 1 : ℤ) * ⌊(n + 8 : ℚ) / 9⌋).toNat

end

end A189861.P1836636916400152909

/-! ## A189861.P15674610584889927476

`record[A189570(n)%A178587(2*n+5)]`
-/

namespace A189861.P15674610584889927476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189570 n) (A178587 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189861.P15674610584889927476

/-! ## A189861.P10881841416079925255

`A189570(n+1)%A339535(3*n+1)`
-/

namespace A189861.P10881841416079925255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189570 (n + 1)) (A339535 (3 * n + 1))

end

end A189861.P10881841416079925255

/-! ## A189861.P10382023227447511276

`A189570(A080459(n+1))/A055642(n)`
-/

namespace A189861.P10382023227447511276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189570 (A080459 (n + 1)).toNat : ℚ) / (A055642 n : ℚ)

end

end A189861.P10382023227447511276

/-!
# A189862: Number of ways to place n nonattacking composite pieces rook + rider[4,6] on an n X n chessboard.

The programs for A189862, there is no canonical definition to state claims against.
-/

/-! ## A189862.P9424233078439456654

`A154654(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^((n+1)/∏{p}[n+1, #]))`
-/

namespace A189862.P9424233078439456654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154654 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A189862.P9424233078439456654

/-! ## A189862.P9610083314087942984

`record[A242603(A154654(n))]`
-/

namespace A189862.P9610083314087942984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (A154654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189862.P9610083314087942984

/-! ## A189862.P15715478475223162399

`A004180(A154654(n+1))`
-/

namespace A189862.P15715478475223162399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A154654 (n + 1)).toNat

end

end A189862.P15715478475223162399

/-!
# A189863: Number of ways to place n nonattacking composite pieces rook + rider[5,6] on an n X n chessboard.

The programs for A189863, there is no canonical definition to state claims against.
-/

/-! ## A189863.P6125682550879347302

`A265365(A264978((n+1)!))`
-/

namespace A189863.P6125682550879347302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265365 (A264978 (Nat.factorial (n + 1))).toNat

end

end A189863.P6125682550879347302

/-! ## A189863.P12235959519861103990

`A264978(A265366((n+1)!))`
-/

namespace A189863.P12235959519861103990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265366 (Nat.factorial (n + 1))).toNat

end

end A189863.P12235959519861103990

/-! ## A189863.P12919545708244782262

`A265365(A265343((n+1)!))`
-/

namespace A189863.P12919545708244782262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265365 (A265343 (Nat.factorial (n + 1))).toNat

end

end A189863.P12919545708244782262

/-!
# A189864: Number of ways to place n nonattacking composite pieces queen + leaper[1,3] on an n X n chessboard.

The programs for A189864, there is no canonical definition to state claims against.
-/

/-! ## A189864.P11521991955380967255

`and(A063994(A063968(n+1)), A064025(n+2))`
-/

namespace A189864.P11521991955380967255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063994 (A063968 (n + 1)).toNat) (A064025 (n + 2))

end

end A189864.P11521991955380967255

/-! ## A189864.P7615690675361501872

`A247185((a(n-1)+val(n, 3))²)` with `a(0)=1`
-/

namespace A189864.P7615690675361501872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247185 ((a (n - 1) + (SequenceMachineLib.valuation n 3 : ℤ)) ^ 2).toNat

end

end A189864.P7615690675361501872

/-! ## A189864.P17316547557083550957

`C(A099500(a(n-1)+n-1), 3)` with `a(0)=1`
-/

namespace A189864.P17316547557083550957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A099500 ((a (n - 1) : ℤ) + ((n : ℤ) - 1)).toNat).toNat 3

end

end A189864.P17316547557083550957

/-! ## A189864.P18353712436652976979

`A028718(A090826(n))`
-/

namespace A189864.P18353712436652976979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028718 (A090826 n).toNat

end

end A189864.P18353712436652976979

/-! ## A189864.P7660730224145699630

`A089854(A051223(n+1))`
-/

namespace A189864.P7660730224145699630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A051223 (n + 1)).toNat

end

end A189864.P7660730224145699630

/-!
# A189865: Number of ways to place n nonattacking composite pieces queen + leaper[1,4] on an n X n chessboard.

The programs for A189865, there is no canonical definition to state claims against.
-/

/-! ## A189865.P387152729946692294

`and(round(1/acot(∑[n])), A026649(A046469(n+1)))`
-/

namespace A189865.P387152729946692294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))) (A026649 (A046469 (n + 1)).toNat)

end

end A189865.P387152729946692294

/-! ## A189865.P5722482587202685569

`and(A000124(n), A008621(A001117(n)))`
-/

namespace A189865.P5722482587202685569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000124 n) (A008621 (A001117 n).toNat)

end

end A189865.P5722482587202685569

/-! ## A189865.P13693674838656300892

`and(A000124(n), A244522(A151890(n)))`
-/

namespace A189865.P13693674838656300892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000124 n) (A244522 (A151890 n).toNat)

end

end A189865.P13693674838656300892

/-! ## A189865.P3250497399418938714

`and(A102659(A249936(n)), A280908(n))`
-/

namespace A189865.P3250497399418938714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102659 (A249936 n).toNat) (A280908 n)

end

end A189865.P3250497399418938714

/-! ## A189865.P2745341398136939868

`A049419(A000110(n))*A189874(n+1)`
-/

namespace A189865.P2745341398136939868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A000110 n).toNat * A189874 (n + 1)

end

end A189865.P2745341398136939868

/-!
# A189866: Number of ways to place n nonattacking composite pieces queen + leaper[1,5] on an n X n chessboard.

The programs for A189866, there is no canonical definition to state claims against.
-/

/-! ## A189866.P1505839194075975705

`A189875(n+1)+and(A102388(n+1), A189875(2*(n+1)))`
-/

namespace A189866.P1505839194075975705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189875 (n + 1) + Int.land (A102388 (n + 1)) (A189875 (2 * (n + 1)))

end

end A189866.P1505839194075975705

/-! ## A189866.P13619498999641452042

`A189875(C(comp[10*3^n]+1, n))`
-/

namespace A189866.P13619498999641452042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * 3 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189875 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) n)

end

end A189866.P13619498999641452042

/-! ## A189866.P4968221752919446687

`A189875(∑[A213217(n)])`
-/

namespace A189866.P4968221752919446687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189875 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189866.P4968221752919446687

/-! ## A189866.P5324406936217250978

`A189875(∑[A260527(n)])`
-/

namespace A189866.P5324406936217250978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189875 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189866.P5324406936217250978

/-! ## A189866.P5477833153226488148

`A189875(∑[A260529(n)])`
-/

namespace A189866.P5477833153226488148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189875 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189866.P5477833153226488148

/-!
# A189867: Number of ways to place n nonattacking composite pieces queen + leaper[2,3] on an n X n chessboard.

The programs for A189867, there is no canonical definition to state claims against.
-/

/-! ## A189867.P17553334514520657297

`and(A189875(n+1), A189882(A032867(n+1)))`
-/

namespace A189867.P17553334514520657297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189875 (n + 1)) (A189882 (A032867 (n + 1)).toNat)

end

end A189867.P17553334514520657297

/-! ## A189867.P4058011640315605371

`and(A189875(n+1), A189882(A032901(n+1)))`
-/

namespace A189867.P4058011640315605371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189875 (n + 1)) (A189882 (A032901 (n + 1)).toNat)

end

end A189867.P4058011640315605371

/-! ## A189867.P13123210015602703411

`A106749(A007716(n))*A189876(n+1)`
-/

namespace A189867.P13123210015602703411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106749 (A007716 n).toNat * A189876 (n + 1)

end

end A189867.P13123210015602703411

/-! ## A189867.P9842963069774623098

`lcm(A053827(A143815(n)), A189876(n+1))`
-/

namespace A189867.P9842963069774623098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053827 (A143815 n).toNat) (A189876 (n + 1))

end

end A189867.P9842963069774623098

/-! ## A189867.P7216894400189459440

`A189876(n+1)*A316716(A189866(n+1))`
-/

namespace A189867.P7216894400189459440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189876 (n + 1) * A316716 (A189866 (n + 1)).toNat

end

end A189867.P7216894400189459440

/-!
# A189868: Number of ways to place n nonattacking composite pieces queen + leaper[2,4] on an n X n chessboard.

The programs for A189868, there is no canonical definition to state claims against.
-/

/-! ## A189868.P9387659692537053238

`A309524(A310855(n))`
-/

namespace A189868.P9387659692537053238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309524 (A310855 n).toNat

end

end A189868.P9387659692537053238

/-! ## A189868.P15084134213129565400

`A107499(n^A226048(n))`
-/

namespace A189868.P15084134213129565400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107499 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A226048 n : ℤ))).toNat

end

end A189868.P15084134213129565400

/-! ## A189868.P8907061511277580062

`A107499(n^A211009(n+1))`
-/

namespace A189868.P8907061511277580062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107499 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A211009 (n + 1) : ℤ))).toNat

end

end A189868.P8907061511277580062

/-! ## A189868.P18223177098678715758

`and(∑[n+2]-3, A002262(A120430(n+1)))`
-/

namespace A189868.P18223177098678715758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) (A002262 (A120430 (n + 1)).toNat)

end

end A189868.P18223177098678715758

/-! ## A189868.P14329047745339172843

`A107499(n)^A333381(A000045(n))`
-/

namespace A189868.P14329047745339172843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107499 n : ℚ) ^ (A333381 (A000045 n).toNat : ℤ)

end

end A189868.P14329047745339172843

/-!
# A189869: Number of ways to place n nonattacking composite pieces queen + leaper[2,5] on an n X n chessboard.

The programs for A189869, there is no canonical definition to state claims against.
-/

/-! ## A189869.P5608105182208857888

`A189878(∑[A213217(n)])`
-/

namespace A189869.P5608105182208857888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189878 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189869.P5608105182208857888

/-! ## A189869.P3692257451649926972

`A189878(∑[A260527(n)])`
-/

namespace A189869.P3692257451649926972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189878 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189869.P3692257451649926972

/-! ## A189869.P2376174299118323217

`A189878(∑[A260529(n)])`
-/

namespace A189869.P2376174299118323217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189878 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189869.P2376174299118323217

/-! ## A189869.P7385623303917629638

`A189878(A002998(n)+1)`
-/

namespace A189869.P7385623303917629638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189878 (A002998 n + 1).toNat

end

end A189869.P7385623303917629638

/-! ## A189869.P850748576151412688

`A189878(A085908(n+1))`
-/

namespace A189869.P850748576151412688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189878 (A085908 (n + 1)).toNat

end

end A189869.P850748576151412688

/-!
# A189870: Number of ways to place n nonattacking composite pieces queen + leaper[3,4] on an n X n chessboard.

The programs for A189870, there is no canonical definition to state claims against.
-/

/-! ## A189870.P3962673883112050333

`gcd(A189875(n+1), A189879(A327453(n+1)))`
-/

namespace A189870.P3962673883112050333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189875 (n + 1)) (A189879 (A327453 (n + 1)).toNat)

end

end A189870.P3962673883112050333

/-!
# A189871: Number of ways to place n nonattacking composite pieces queen + leaper[3,5] on an n X n chessboard.

The programs for A189871, there is no canonical definition to state claims against.
-/

/-! ## A189871.P9417839026801703755

`A189880(∑[A213217(n)])`
-/

namespace A189871.P9417839026801703755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189880 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189871.P9417839026801703755

/-! ## A189871.P14903564588153436214

`A189880(∑[A260527(n)])`
-/

namespace A189871.P14903564588153436214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189880 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189871.P14903564588153436214

/-! ## A189871.P4562775382367947196

`A189880(A002998(n)+1)`
-/

namespace A189871.P4562775382367947196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189880 (A002998 n + 1).toNat

end

end A189871.P4562775382367947196

/-! ## A189871.P1135537851768165748

`A189880(A023106(n)+1)`
-/

namespace A189871.P1135537851768165748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189880 (A023106 n + 1).toNat

end

end A189871.P1135537851768165748

/-! ## A189871.P3322339510443687233

`A189880(A046469(n)+1)`
-/

namespace A189871.P3322339510443687233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189880 (A046469 n + 1).toNat

end

end A189871.P3322339510443687233

/-!
# A189872: Number of ways to place n nonattacking composite pieces queen + leaper[4,5] on an n X n chessboard.

The programs for A189872, there is no canonical definition to state claims against.
-/

/-! ## A189872.P10715272238836000864

`A189881(n+1)%p?[floor(2^n+3^(n-1))]`
-/

namespace A189872.P10715272238836000864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189881 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A189872.P10715272238836000864

/-! ## A189872.P16026579526923347261

`A189881(∑[A213217(n)])`
-/

namespace A189872.P16026579526923347261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189881 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189872.P16026579526923347261

/-! ## A189872.P13644672219834917357

`A189881(∑[A260526(n)])`
-/

namespace A189872.P13644672219834917357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189881 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189872.P13644672219834917357

/-! ## A189872.P6904274105731623834

`A189881(∑[A260527(n)])`
-/

namespace A189872.P6904274105731623834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189881 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189872.P6904274105731623834

/-! ## A189872.P4569784501400756731

`A189881(A023106(n)+1)`
-/

namespace A189872.P4569784501400756731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189881 (A023106 n + 1).toNat

end

end A189872.P4569784501400756731

/-!
# A189877: Number of ways to place n nonattacking composite pieces queen + rider[2,4] on an n X n chessboard.

The programs for A189877, there is no canonical definition to state claims against.
-/

/-! ## A189877.P2037758546596233495

`Δ[A061142(∑[A307788(n)])]`
-/

namespace A189877.P2037758546596233495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307788 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189877.P2037758546596233495

/-! ## A189877.P11352273598090812161

`Δ[∏[A016016(A065047(n+1))]]`
-/

namespace A189877.P11352273598090812161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A065047 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189877.P11352273598090812161

/-! ## A189877.P15037420675885464146

`and(A058071(n)!, A242808(n+1))`
-/

namespace A189877.P15037420675885464146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A058071 n).toNat : ℤ) (A242808 (n + 1))

end

end A189877.P15037420675885464146

/-! ## A189877.P9278232788681529606

`and(A228482(n+1)!, A242808(n+1))`
-/

namespace A189877.P9278232788681529606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A228482 (n + 1)).toNat : ℤ) (A242808 (n + 1))

end

end A189877.P9278232788681529606

/-! ## A189877.P9344567181306937390

`A028718(A090826(n)-A184616(n))`
-/

namespace A189877.P9344567181306937390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028718 (A090826 n - A184616 n).toNat

end

end A189877.P9344567181306937390

/-!
# A189882: Smallest k such that sopf(k)<=sopf(k+1)<=...<=sopf(k+n).

The programs for A189882, there is no canonical definition to state claims against.
-/

/-! ## A189882.P1525439793582547820

`A108954((1-∑[n])²²+1)`
-/

namespace A189882.P1525439793582547820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (((1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2) ^ 2 + 1).toNat

end

end A189882.P1525439793582547820

/-!
# A189883: Numbers k such that the square part of k is one greater than the squarefree part of k.

The programs for A189883, the canonical program `A189883.P14118951556328521303` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189883 has offset 1).

The definition of A189883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189883.P14118951556328521303

`A047928(A069977(n+1)+2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A189883

/-- `A047928(A069977(n+1)+2)` -/
def P14118951556328521303.Spec : Prop :=
  ∀ n, P14118951556328521303.a n = A189883 (n + 1)

theorem P14118951556328521303.correct : P14118951556328521303.Spec := by
  intro n
  simp only [A189883, Nat.add_sub_cancel]

end A189883

/-! ## A189883.P2242974051766089848

`6*A008911(A067874(n+1))`
-/

namespace A189883.P2242974051766089848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008911 (A067874 (n + 1)).toNat

end

end A189883.P2242974051766089848

namespace A189883

/-- `6*A008911(A067874(n+1))` -/
def P2242974051766089848.Spec : Prop :=
  ∀ n, P2242974051766089848.a n = A189883 (n + 1)

end A189883

/-! ## A189883.P17382994246228092347

`∩[A069186(n+1), A188660(n+1)]`
-/

namespace A189883.P17382994246228092347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189883.P17382994246228092347

namespace A189883

/-- `∩[A069186(n+1), A188660(n+1)]` -/
def P17382994246228092347.Spec : Prop :=
  ∀ n, (P17382994246228092347.a n : ℤ) = A189883 (n + 1)

end A189883

/-! ## A189883.P6314476292036087506

`∩[A069186(n+1), A047928(n+2)]`
-/

namespace A189883.P6314476292036087506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047928 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189883.P6314476292036087506

namespace A189883

/-- `∩[A069186(n+1), A047928(n+2)]` -/
def P6314476292036087506.Spec : Prop :=
  ∀ n, (P6314476292036087506.a n : ℤ) = A189883 (n + 1)

end A189883

/-! ## A189883.P7189154845269279237

`record[A091278(n+1)²-A091278(n+1)]`
-/

namespace A189883.P7189154845269279237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091278 (n + 1) ^ 2 - A091278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189883.P7189154845269279237

namespace A189883

/-- `record[A091278(n+1)²-A091278(n+1)]` -/
def P7189154845269279237.Spec : Prop :=
  ∀ n, P7189154845269279237.a n = A189883 (n + 1)

end A189883

/-! ## A189883.P17383114549844451282

`record[A068310(n+2)+A068310(n+2)²]`
-/

namespace A189883.P17383114549844451282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068310 (n + 2) + A068310 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189883.P17383114549844451282

namespace A189883

/-- `record[A068310(n+2)+A068310(n+2)²]` -/
def P17383114549844451282.Spec : Prop :=
  ∀ n, P17383114549844451282.a n = A189883 (n + 1)

end A189883

/-! ## A189883.P3109203101997315586

`record[A049457(2*(n+1))+A049457(2*(n+1))²]`
-/

namespace A189883.P3109203101997315586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049457 (2 * (n + 1)) + A049457 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189883.P3109203101997315586

namespace A189883

/-- `record[A049457(2*(n+1))+A049457(2*(n+1))²]` -/
def P3109203101997315586.Spec : Prop :=
  ∀ n, P3109203101997315586.a n = A189883 (n + 1)

end A189883

/-! ## A189883.P10656717608875507340

`record[(2*(n+1))²*A033314(2*(n+1))]`
-/

namespace A189883.P10656717608875507340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 : ℤ) * A033314 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189883.P10656717608875507340

namespace A189883

/-- `record[(2*(n+1))²*A033314(2*(n+1))]` -/
def P10656717608875507340.Spec : Prop :=
  ∀ n, P10656717608875507340.a n = A189883 (n + 1)

end A189883

/-! ## A189883.P3303784880557890048

`record[A033314(n+2)+A033314(n+2)²]`
-/

namespace A189883.P3303784880557890048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033314 (n + 2) + A033314 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189883.P3303784880557890048

namespace A189883

/-- `record[A033314(n+2)+A033314(n+2)²]` -/
def P3303784880557890048.Spec : Prop :=
  ∀ n, P3303784880557890048.a n = A189883 (n + 1)

end A189883

/-! ## A189883.P962327889812037805

`∩[A069186(n+1), A104188(n)]`
-/

namespace A189883.P962327889812037805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104188 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189883.P962327889812037805

namespace A189883

/-- `∩[A069186(n+1), A104188(n)]` -/
def P962327889812037805.Spec : Prop :=
  ∀ n, (P962327889812037805.a n : ℤ) = A189883 (n + 1)

end A189883

/-!
# A189884: Number of 1:4:sqrt(17) proportioned triangles on a (n+1) X (n+1) grid.

The programs for A189884, there is no canonical definition to state claims against.
-/

/-! ## A189884.P5434175302009388633

`A189885(∑[4*n]+1)`
-/

namespace A189884.P5434175302009388633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189885 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189884.P5434175302009388633

/-! ## A189884.P16999900994887015765

`lcm(2, A189885(A001844(n)))`
-/

namespace A189884.P16999900994887015765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189885 (A001844 n).toNat)

end

end A189884.P16999900994887015765

/-! ## A189884.P10848780082464230037

`A189885(A001844(n))%A212741(n)`
-/

namespace A189884.P10848780082464230037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189885 (A001844 n).toNat) (A212741 n)

end

end A189884.P10848780082464230037

/-! ## A189884.P3662618620988041457

`A189885(A001844(n))+A005843(n)%2`
-/

namespace A189884.P3662618620988041457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189885 (A001844 n).toNat + Int.tmod (A005843 n) 2

end

end A189884.P3662618620988041457

/-! ## A189884.P2801081901591608798

`A007318(C(2, n))*A189885(A001844(n))`
-/

namespace A189884.P2801081901591608798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A189885 (A001844 n).toNat

end

end A189884.P2801081901591608798

/-! ## A189884.P2760845259377979508

`A189885(A001844(n))+C(n, A017185(n))`
-/

namespace A189884.P2760845259377979508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189885 (A001844 n).toNat + (Nat.choose n (A017185 n).toNat : ℤ)

end

end A189884.P2760845259377979508

/-! ## A189884.P34571511825267761

`A189885(A001844(n))/A014963(∑[n+1])`
-/

namespace A189884.P34571511825267761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189885 (A001844 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A189884.P34571511825267761

/-! ## A189884.P6842547507617239793

`A189885(A001844(n))+A008683(9*(n+1))`
-/

namespace A189884.P6842547507617239793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189885 (A001844 n).toNat + A008683 (9 * (n + 1))

end

end A189884.P6842547507617239793

/-! ## A189884.P8504485056341694580

`A000040(n+1)%2*A189885(A001844(n))`
-/

namespace A189884.P8504485056341694580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A189885 (A001844 n).toNat

end

end A189884.P8504485056341694580

/-! ## A189884.P11395659987200109853

`A189885(A001844(n))^A007318(C(2, n+2))`
-/

namespace A189884.P11395659987200109853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189885 (A001844 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n + 2)) : ℤ)

end

end A189884.P11395659987200109853

/-!
# A189885: T(n,k) = number of 1:4:sqrt(17) proportioned triangles on a (n+1) X (k+1) grid.

The programs for A189885, there is no canonical definition to state claims against.
-/

/-! ## A189885.P18198216139908785240

`4*A023416(A218319(n+1))`
-/

namespace A189885.P18198216139908785240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023416 (A218319 (n + 1)).toNat

end

end A189885.P18198216139908785240

/-! ## A189885.P8775406869976111580

`A001414(A080100(A218319(n+1))²)`
-/

namespace A189885.P8775406869976111580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A080100 (A218319 (n + 1)).toNat ^ 2).toNat

end

end A189885.P8775406869976111580

/-! ## A189885.P18146771535949931404

`∑{e}[A080100(A218319(n+1)), A008574(#)]`
-/

namespace A189885.P18146771535949931404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A218319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008574 (Nat.factorization (f1 n).natAbs p)

end

end A189885.P18146771535949931404

/-!
# A189886: a(n) is the number of compositions of the set {1, 2, ..., n} into blocks, each of size 1, 2 or 3 (n >= 0).

The programs for A189886, there is no canonical definition to state claims against.
-/

/-! ## A189886.P2433793050821145236

`A276921(∑[n+3]+n+3)`
-/

namespace A189886.P2433793050821145236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A189886.P2433793050821145236

/-! ## A189886.P2317248641197860662

`A057427(n+4)*A276921(A046691(n+2))`
-/

namespace A189886.P2317248641197860662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) * A276921 (A046691 (n + 2)).toNat

end

end A189886.P2317248641197860662

/-! ## A189886.P13338036201166528657

`A276921(A046691(n+2))+A010051(2*(n+2))`
-/

namespace A189886.P13338036201166528657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A046691 (n + 2)).toNat + A010051 (2 * (n + 2))

end

end A189886.P13338036201166528657

/-! ## A189886.P3460826298306140172

`A040728(2*n+1)+A276921(A046691(n+2))-2`
-/

namespace A189886.P3460826298306140172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040728 (2 * n + 1) + (A276921 (A046691 (n + 2)).toNat - 2)

end

end A189886.P3460826298306140172

/-! ## A189886.P14688221697909471195

`A339661(A340081(n+1)+1)+A276921(A046691(n+2))`
-/

namespace A189886.P14688221697909471195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339661 (A340081 (n + 1) + 1).toNat + A276921 (A046691 (n + 2)).toNat

end

end A189886.P14688221697909471195

/-!
# A189887: Dimension of homogeneous component of degree n in x in the Malcev-Poisson superalgebra S^tilde(M).

The programs for A189887, the canonical program `A189887.P3434154899278045080` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189887 has offset 1).

The definition of A189887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189887.P17430301284557206208

`ogf((1-x+2x^2-x^3+x^4+x^5+x^6)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A189887.P17430301284557206208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, -1, 1, 1, 1] [1, -2, 2, -2, 1] n

end

end A189887.P17430301284557206208

namespace A189887

/-- `ogf((1-x+2x^2-x^3+x^4+x^5+x^6)/(1-2x+2x^2-2x^3+x^4))` -/
def P17430301284557206208.Spec : Prop :=
  ∀ n, P17430301284557206208.a n = A189887 (n + 1)

end A189887

/-! ## A189887.P3434154899278045080

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189887

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P3434154899278045080.Spec : Prop :=
  ∀ n, P3434154899278045080.a n = A189887 (n + 1)

theorem P3434154899278045080.correct : P3434154899278045080.Spec := by
  intro n
  simp only [A189887, Nat.add_sub_cancel]

end A189887

/-! ## A189887.P17694933495315817233

`a(n-4)+8` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=9`
-/

namespace A189887.P17694933495315817233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 6, 9] fun n a =>
  a (n - 4) + 8

end

end A189887.P17694933495315817233

namespace A189887

/-- `a(n-4)+8` -/
def P17694933495315817233.Spec : Prop :=
  ∀ n, (P17694933495315817233.a n : ℤ) = A189887 (n + 1)

end A189887

/-! ## A189887.P8868370042381900801

`∑[4-a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A189887.P8868370042381900801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 1, 2] fun n f1 =>
  4 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189887.P8868370042381900801

namespace A189887

/-- `∑[4-a(n-2)]` -/
def P8868370042381900801.Spec : Prop :=
  ∀ n, P8868370042381900801.a n = A189887 (n + 1)

end A189887

/-! ## A189887.P8564411836724447379

`1-xor(and(1, n)-2, a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A189887.P8564411836724447379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  1 - Int.xor ((Nat.land 1 n : ℤ) - 2) (a (n - 1))

end

end A189887.P8564411836724447379

namespace A189887

/-- `1-xor(and(1, n)-2, a(n-1))` -/
def P8564411836724447379.Spec : Prop :=
  ∀ n, P8564411836724447379.a n = A189887 (n + 1)

end A189887

/-! ## A189887.P4809750352073455610

`A004273(A289207(n))+A000034(A004526(n))`
-/

namespace A189887.P4809750352073455610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A289207 n).toNat + A000034 (A004526 n).toNat

end

end A189887.P4809750352073455610

namespace A189887

/-- `A004273(A289207(n))+A000034(A004526(n))` -/
def P4809750352073455610.Spec : Prop :=
  ∀ n, P4809750352073455610.a n = A189887 (n + 1)

end A189887

/-! ## A189887.P7615321603962506493

`∑[(n+1)%(A092533(n+1)+A092533(n))]`
-/

namespace A189887.P7615321603962506493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A092533 (n + 1) + A092533 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189887.P7615321603962506493

namespace A189887

/-- `∑[(n+1)%(A092533(n+1)+A092533(n))]` -/
def P7615321603962506493.Spec : Prop :=
  ∀ n, P7615321603962506493.a n = A189887 (n + 1)

end A189887

/-! ## A189887.P10888787889197257078

`record[A195013(n+1)]-A098180(n)`
-/

namespace A189887.P10888787889197257078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A098180 n

end

end A189887.P10888787889197257078

namespace A189887

/-- `record[A195013(n+1)]-A098180(n)` -/
def P10888787889197257078.Spec : Prop :=
  ∀ n, P10888787889197257078.a n = A189887 (n + 1)

end A189887

/-! ## A189887.P13443604555632848921

`A021913(n)+A004275(A065033(A004275(n)))`
-/

namespace A189887.P13443604555632848921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n + A004275 (A065033 (A004275 n).toNat).toNat

end

end A189887.P13443604555632848921

namespace A189887

/-- `A021913(n)+A004275(A065033(A004275(n)))` -/
def P13443604555632848921.Spec : Prop :=
  ∀ n, P13443604555632848921.a n = A189887 (n + 1)

end A189887

/-! ## A189887.P2276290945676114165

`record[A063914(n+1)]-A004526(A047454(n+1))`
-/

namespace A189887.P2276290945676114165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004526 (A047454 (n + 1)).toNat

end

end A189887.P2276290945676114165

namespace A189887

/-- `record[A063914(n+1)]-A004526(A047454(n+1))` -/
def P2276290945676114165.Spec : Prop :=
  ∀ n, P2276290945676114165.a n = A189887 (n + 1)

end A189887

/-! ## A189887.P11593434086286114407

`A008619(∑[A131295(A340632(n))])`
-/

namespace A189887.P11593434086286114407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131295 (A340632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189887.P11593434086286114407

namespace A189887

/-- `A008619(∑[A131295(A340632(n))])` -/
def P11593434086286114407.Spec : Prop :=
  ∀ n, P11593434086286114407.a n = A189887 (n + 1)

end A189887

/-! ## A189887.P11404779530141324148

`xor(A021913(n), A204154(A238531(n)))`
-/

namespace A189887.P11404779530141324148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A021913 n) (A204154 (A238531 n).toNat)

end

end A189887.P11404779530141324148

namespace A189887

/-- `xor(A021913(n), A204154(A238531(n)))` -/
def P11404779530141324148.Spec : Prop :=
  ∀ n, P11404779530141324148.a n = A189887 (n + 1)

end A189887

/-!
# A189888: a(n) = A139602(m) such that for any k>m, A139602(k) > A139602(m).

The programs for A189888, there is no canonical definition to state claims against.
-/

/-! ## A189888.P10490272829729088887

`A139602(record[A078611(n+5)/6])`
-/

namespace A189888.P10490272829729088887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078611 (n + 5) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139602 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A189888.P10490272829729088887

/-! ## A189888.P16145143042822164017

`A139602(record[A268914(n+5)/12])`
-/

namespace A189888.P16145143042822164017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268914 (n + 5) : ℚ) / 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139602 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A189888.P16145143042822164017

/-! ## A189888.P13763613221434783979

`p?[A129302(n+2)%A129327(n+1)]`
-/

namespace A189888.P13763613221434783979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129302 (n + 2)) (A129327 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189888.P13763613221434783979

/-!
# A189889: Maximum number of nonattacking kings on an n X n toroidal board.

The programs for A189889, the canonical program `A189889.P3934441475546530016` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189889 has offset 1).

The definition of A189889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189889.P3934441475546530016

`ogf((1-x^2+3x^3+x^5+x^6-x^7)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189889

/-- `ogf((1-x^2+3x^3+x^5+x^6-x^7)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))` -/
def P3934441475546530016.Spec : Prop :=
  ∀ n, P3934441475546530016.a n = A189889 (n + 1)

theorem P3934441475546530016.correct : P3934441475546530016.Spec := by
  intro n
  simp only [A189889, Nat.add_sub_cancel]

end A189889

/-! ## A189889.P18269256057915018019

`ceil(abs((n+1)*ceil(n/2)-1)/2)`
-/

namespace A189889.P18269256057915018019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|(n + 1 : ℤ) * ⌈(n : ℚ) / 2⌉ - 1| : ℚ) / 2⌉

end

end A189889.P18269256057915018019

namespace A189889

/-- `ceil(abs((n+1)*ceil(n/2)-1)/2)` -/
def P18269256057915018019.Spec : Prop :=
  ∀ n, P18269256057915018019.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P14255832887594889405

`floor(∑[n]-(a(n-1)+a(n-1)/n))` with `a(0)=1, a(1)=1`
-/

namespace A189889.P14255832887594889405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((a (n - 1) : ℚ) + (a (n - 1) : ℚ) / (n : ℚ))⌋

end

end A189889.P14255832887594889405

namespace A189889

/-- `floor(∑[n]-(a(n-1)+a(n-1)/n))` -/
def P14255832887594889405.Spec : Prop :=
  ∀ n, P14255832887594889405.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P16691668954449304738

`floor(∑[n]-a(n-1)/n-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A189889.P16691668954449304738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A189889.P16691668954449304738

namespace A189889

/-- `floor(∑[n]-a(n-1)/n-a(n-1))` -/
def P16691668954449304738.Spec : Prop :=
  ∀ n, P16691668954449304738.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P4540240798140458350

`floor((n-sqrt(a(n-1)-a(n-1)/n))²)` with `a(0)=1`
-/

namespace A189889.P4540240798140458350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n : ℝ) - Real.sqrt ((a (n - 1) : ℚ) - (a (n - 1) : ℚ) / (n : ℚ) : ℝ)) ^ 2⌋

end

end A189889.P4540240798140458350

namespace A189889

/-- `floor((n-sqrt(a(n-1)-a(n-1)/n))²)` -/
def P4540240798140458350.Spec : Prop :=
  ∀ n, P4540240798140458350.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P6639935475728616131

`a(n-2)-a(n-1)%gcd(2, n)+n` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A189889.P6639935475728616131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) - Int.tmod (a (n - 1)) (Nat.gcd 2 n : ℤ) + (n : ℤ)

end

end A189889.P6639935475728616131

namespace A189889

/-- `a(n-2)-a(n-1)%gcd(2, n)+n` -/
def P6639935475728616131.Spec : Prop :=
  ∀ n, P6639935475728616131.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P10900394299790767342

`A123108(A057979(n+1))+A123108(n+1)²`
-/

namespace A189889.P10900394299790767342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A057979 (n + 1)).toNat + A123108 (n + 1) ^ 2

end

end A189889.P10900394299790767342

namespace A189889

/-- `A123108(A057979(n+1))+A123108(n+1)²` -/
def P10900394299790767342.Spec : Prop :=
  ∀ n, P10900394299790767342.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P18272861380327325500

`A130519(n+1)+A000217(A123108(xor(1, n+1)))`
-/

namespace A189889.P18272861380327325500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 1) + A000217 (A123108 (Nat.xor 1 (n + 1))).toNat

end

end A189889.P18272861380327325500

namespace A189889

/-- `A130519(n+1)+A000217(A123108(xor(1, n+1)))` -/
def P18272861380327325500.Spec : Prop :=
  ∀ n, P18272861380327325500.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P17795093728204611576

`∑[A002265((n+1)*A256263(n)%4+4)]-n`
-/

namespace A189889.P17795093728204611576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n + 1 : ℤ) * Int.tmod (A256263 n) 4 + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A189889.P17795093728204611576

namespace A189889

/-- `∑[A002265((n+1)*A256263(n)%4+4)]-n` -/
def P17795093728204611576.Spec : Prop :=
  ∀ n, P17795093728204611576.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P13866658810913604017

`A053188(a(n-1)+n+1)+A011848(n+1)` with `a(0)=1`
-/

namespace A189889.P13866658810913604017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053188 (a (n - 1) + (n + 1 : ℤ)).toNat + A011848 (n + 1)

end

end A189889.P13866658810913604017

namespace A189889

/-- `A053188(a(n-1)+n+1)+A011848(n+1)` -/
def P13866658810913604017.Spec : Prop :=
  ∀ n, P13866658810913604017.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P7025151051137777920

`A123108(A093353(n))`
-/

namespace A189889.P7025151051137777920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A093353 n).toNat

end

end A189889.P7025151051137777920

namespace A189889

/-- `A123108(A093353(n))` -/
def P7025151051137777920.Spec : Prop :=
  ∀ n, P7025151051137777920.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P3650066185202030704

`A123108((n+1)*A110654(n))`
-/

namespace A189889.P3650066185202030704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ((n + 1 : ℤ) * A110654 n).toNat

end

end A189889.P3650066185202030704

namespace A189889

/-- `A123108((n+1)*A110654(n))` -/
def P3650066185202030704.Spec : Prop :=
  ∀ n, P3650066185202030704.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P1362645987603875627

`A008619(∑[A014682(n-char[1])])`
-/

namespace A189889.P1362645987603875627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189889.P1362645987603875627

namespace A189889

/-- `A008619(∑[A014682(n-char[1])])` -/
def P1362645987603875627.Spec : Prop :=
  ∀ n, P1362645987603875627.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P6636935083557781446

`A123108((n+1)*A004526(n+1))`
-/

namespace A189889.P6636935083557781446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ((n + 1 : ℤ) * A004526 (n + 1)).toNat

end

end A189889.P6636935083557781446

namespace A189889

/-- `A123108((n+1)*A004526(n+1))` -/
def P6636935083557781446.Spec : Prop :=
  ∀ n, P6636935083557781446.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P9999811375049477378

`A123108((n+1)*A123108(n+1))`
-/

namespace A189889.P9999811375049477378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ((n + 1 : ℤ) * A123108 (n + 1)).toNat

end

end A189889.P9999811375049477378

namespace A189889

/-- `A123108((n+1)*A123108(n+1))` -/
def P9999811375049477378.Spec : Prop :=
  ∀ n, P9999811375049477378.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P1728191562976143550

`A065033((n+1)*A065033(n)-1)`
-/

namespace A189889.P1728191562976143550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((n + 1 : ℤ) * A065033 n - 1).toNat

end

end A189889.P1728191562976143550

namespace A189889

/-- `A065033((n+1)*A065033(n)-1)` -/
def P1728191562976143550.Spec : Prop :=
  ∀ n, P1728191562976143550.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P9200785694575925795

`A080513((n+3)*A140106(n+1))`
-/

namespace A189889.P9200785694575925795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 ((n + 3 : ℤ) * A140106 (n + 1)).toNat

end

end A189889.P9200785694575925795

namespace A189889

/-- `A080513((n+3)*A140106(n+1))` -/
def P9200785694575925795.Spec : Prop :=
  ∀ n, P9200785694575925795.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P703205927800427269

`A110654(abs(1-(n+1)*A110654(n)))`
-/

namespace A189889.P703205927800427269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 |1 - (n + 1 : ℤ) * A110654 n|.toNat

end

end A189889.P703205927800427269

namespace A189889

/-- `A110654(abs(1-(n+1)*A110654(n)))` -/
def P703205927800427269.Spec : Prop :=
  ∀ n, P703205927800427269.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P204381991667178366

`A004526(abs(∑[n]+n-A026741(n+1))+1)`
-/

namespace A189889.P204381991667178366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (|((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - A026741 (n + 1)| + 1).toNat

end

end A189889.P204381991667178366

namespace A189889

/-- `A004526(abs(∑[n]+n-A026741(n+1))+1)` -/
def P204381991667178366.Spec : Prop :=
  ∀ n, P204381991667178366.a n = A189889 (n + 1)

end A189889

/-! ## A189889.P6275134572222541317

`A065033(A014681(n)*A065033(n+1))`
-/

namespace A189889.P6275134572222541317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A014681 n * A065033 (n + 1)).toNat

end

end A189889.P6275134572222541317

namespace A189889

/-- `A065033(A014681(n)*A065033(n+1))` -/
def P6275134572222541317.Spec : Prop :=
  ∀ n, P6275134572222541317.a n = A189889 (n + 1)

end A189889

/-!
# A189890: a(n) = (n^3 - 2*n^2 + 3*n + 2)/2.

The programs for A189890, the canonical program `A189890.P16624331401325566475` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189890 has offset 0).

The definition of A189890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3-2*n²+3*n+2)/2` (program `A189890.P7640817159123899542`, by `A189890.P7640817159123899542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189890.P9376971656054965723

`ogf((1-2x+2x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A189890.P9376971656054965723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, 2] [1, -4, 6, -4, 1] n

end

end A189890.P9376971656054965723

namespace A189890

/-- `ogf((1-2x+2x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P9376971656054965723.Spec : Prop :=
  ∀ n, P9376971656054965723.a n = A189890 n

end A189890

/-! ## A189890.P16624331401325566475

`3*C(n, 3)+C(n, 2)+n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A189890

/-- `3*C(n, 3)+C(n, 2)+n+1` -/
def P16624331401325566475.Spec : Prop :=
  ∀ n, (P16624331401325566475.a n : ℤ) = A189890 n

theorem P16624331401325566475.correct : P16624331401325566475.Spec := by
  intro n
  simp only [A189890]

end A189890

/-! ## A189890.P7640817159123899542

`(n^3-2*n²+3*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A189890.P7640817159123899542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 : ℤ) - (2 * n ^ 2 : ℤ) + (3 * n : ℤ) + 2 : ℚ) / 2

end

end A189890.P7640817159123899542

namespace A189890

/-- `(n^3-2*n²+3*n+2)/2` -/
def P7640817159123899542.Spec : Prop :=
  ∀ n, P7640817159123899542.a n = (A189890 n : ℚ)

theorem P7640817159123899542.correct : P7640817159123899542.Spec := by
  intro n
  simp only [A189890, Nat.add_sub_cancel, A189890.P7640817159123899542.a, A189890.P16624331401325566475.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189890

/-! ## A189890.P12966410706298582240

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=10`
-/

namespace A189890.P12966410706298582240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 10] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A189890.P12966410706298582240

namespace A189890

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12966410706298582240.Spec : Prop :=
  ∀ n, P12966410706298582240.a n = A189890 n

end A189890

/-! ## A189890.P8635816127285808450

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A189890.P8635816127285808450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189890.P8635816127285808450

namespace A189890

/-- `∑[∑[a(n-1)+3]]` -/
def P8635816127285808450.Spec : Prop :=
  ∀ n, (P8635816127285808450.a n : ℤ) = A189890 n

end A189890

/-! ## A189890.P14385312449807691853

`(C(n, 2)+1)*(n-1)+2`
-/

namespace A189890.P14385312449807691853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1 : ℤ) * ((n : ℤ) - 1) + 2

end

end A189890.P14385312449807691853

namespace A189890

/-- `(C(n, 2)+1)*(n-1)+2` -/
def P14385312449807691853.Spec : Prop :=
  ∀ n, P14385312449807691853.a n = A189890 n

theorem P14385312449807691853.correct : P14385312449807691853.Spec := by
  intro n
  simp only [A189890, Nat.add_sub_cancel, A189890.P14385312449807691853.a, A189890.P16624331401325566475.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189890

/-! ## A189890.P12559526896766378825

`lcm(n, (1-n)²)/2+n+1`
-/

namespace A189890.P12559526896766378825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2) : ℚ) / 2 + (n + 1 : ℚ)

end

end A189890.P12559526896766378825

namespace A189890

/-- `lcm(n, (1-n)²)/2+n+1` -/
def P12559526896766378825.Spec : Prop :=
  ∀ n, P12559526896766378825.a n = (A189890 n : ℚ)

end A189890

/-! ## A189890.P11926264496227320673

`∑[3*n-(5-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A189890.P11926264496227320673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (3 * n : ℤ) - (5 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189890.P11926264496227320673

namespace A189890

/-- `∑[3*n-(5-a(n-1))]` -/
def P11926264496227320673.Spec : Prop :=
  ∀ n, P11926264496227320673.a n = A189890 n

end A189890

/-! ## A189890.P12415038952260233810

`A006001(n)-(n²+n)`
-/

namespace A189890.P12415038952260233810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006001 n - (n ^ 2 + n : ℤ)

end

end A189890.P12415038952260233810

namespace A189890

/-- `A006001(n)-(n²+n)` -/
def P12415038952260233810.Spec : Prop :=
  ∀ n, P12415038952260233810.a n = A189890 n

end A189890

/-! ## A189890.P3936717110030891860

`∑[A139482(n+1)]-n²`
-/

namespace A189890.P3936717110030891860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A189890.P3936717110030891860

namespace A189890

/-- `∑[A139482(n+1)]-n²` -/
def P3936717110030891860.Spec : Prop :=
  ∀ n, P3936717110030891860.a n = A189890 n

end A189890

/-! ## A189890.P9438471651401266520

`A007290(n)+A000125(n)`
-/

namespace A189890.P9438471651401266520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + A000125 n

end

end A189890.P9438471651401266520

namespace A189890

/-- `A007290(n)+A000125(n)` -/
def P9438471651401266520.Spec : Prop :=
  ∀ n, P9438471651401266520.a n = A189890 n

theorem P9438471651401266520.correct : P9438471651401266520.Spec := by
  intro n
  simp only [A189890, Nat.add_sub_cancel, A189890.P9438471651401266520.a, A189890.P16624331401325566475.a, A000125, A000125.P10762125132202112265.a, A007290, A007290.P9295456119697579818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189890

/-! ## A189890.P16595490787644217300

`A057566(n)+A008619(n)`
-/

namespace A189890.P16595490787644217300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057566 n + A008619 n

end

end A189890.P16595490787644217300

namespace A189890

/-- `A057566(n)+A008619(n)` -/
def P16595490787644217300.Spec : Prop :=
  ∀ n, P16595490787644217300.a n = A189890 n

end A189890

/-! ## A189890.P17048516670660176489

`A110325(n)+A006002(n)`
-/

namespace A189890.P17048516670660176489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110325 n + A006002 n

end

end A189890.P17048516670660176489

namespace A189890

/-- `A110325(n)+A006002(n)` -/
def P17048516670660176489.Spec : Prop :=
  ∀ n, P17048516670660176489.a n = A189890 n

end A189890

/-! ## A189890.P15260109771276243722

`A162607(n)+A002061(n)`
-/

namespace A189890.P15260109771276243722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162607 n + A002061 n

end

end A189890.P15260109771276243722

namespace A189890

/-- `A162607(n)+A002061(n)` -/
def P15260109771276243722.Spec : Prop :=
  ∀ n, P15260109771276243722.a n = A189890 n

theorem P15260109771276243722.correct : P15260109771276243722.Spec := by
  intro n
  simp only [A189890, Nat.add_sub_cancel, A189890.P15260109771276243722.a, A189890.P16624331401325566475.a, A002061, A002061.P13016590216674735232.a, A162607, A162607.P10646844411000667440.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189890

/-! ## A189890.P2214671407212359636

`A258837(n)+A229183(n)`
-/

namespace A189890.P2214671407212359636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 n + A229183 n

end

end A189890.P2214671407212359636

namespace A189890

/-- `A258837(n)+A229183(n)` -/
def P2214671407212359636.Spec : Prop :=
  ∀ n, P2214671407212359636.a n = A189890 n

end A189890

/-! ## A189890.P3493942333218852955

`A006000(n)-A001105(n)`
-/

namespace A189890.P3493942333218852955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n - A001105 n

end

end A189890.P3493942333218852955

namespace A189890

/-- `A006000(n)-A001105(n)` -/
def P3493942333218852955.Spec : Prop :=
  ∀ n, P3493942333218852955.a n = A189890 n

end A189890

/-! ## A189890.P9212220073872445442

`A064808(n)-A000326(n)`
-/

namespace A189890.P9212220073872445442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 n - A000326 n

end

end A189890.P9212220073872445442

namespace A189890

/-- `A064808(n)-A000326(n)` -/
def P9212220073872445442.Spec : Prop :=
  ∀ n, P9212220073872445442.a n = A189890 n

end A189890

/-! ## A189890.P941151776886100688

`A139488(n)-A000292(n)`
-/

namespace A189890.P941151776886100688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139488 n - A000292 n

end

end A189890.P941151776886100688

namespace A189890

/-- `A139488(n)-A000292(n)` -/
def P941151776886100688.Spec : Prop :=
  ∀ n, P941151776886100688.a n = A189890 n

end A189890

/-! ## A189890.P4637176067903787770

`A006003(n)-A165900(n)`
-/

namespace A189890.P4637176067903787770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n - A165900 n

end

end A189890.P4637176067903787770

namespace A189890

/-- `A006003(n)-A165900(n)` -/
def P4637176067903787770.Spec : Prop :=
  ∀ n, P4637176067903787770.a n = A189890 n

end A189890

/-! ## A189890.P1477370371066331469

`A154560(n)-A033954(n)`
-/

namespace A189890.P1477370371066331469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154560 n - A033954 n

end

end A189890.P1477370371066331469

namespace A189890

/-- `A154560(n)-A033954(n)` -/
def P1477370371066331469.Spec : Prop :=
  ∀ n, P1477370371066331469.a n = A189890 n

end A189890

/-!
# A189891: Complement of A085104.

The programs for A189891, there is no canonical definition to state claims against.
-/

/-! ## A189891.P13159787139091145306

`comp[∑[lcm(2, 3*(n+1))]]+1`
-/

namespace A189891.P13159787139091145306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (3 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A189891.P13159787139091145306

/-! ## A189891.P5600241000334088715

`comp[p?[ceil((n/2)²)]%(8^n)]`
-/

namespace A189891.P5600241000334088715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) (8 ^ n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189891.P5600241000334088715

/-! ## A189891.P942196006993417471

`comp[(gcd(3, n)+n)*(n+2)]+1`
-/

namespace A189891.P942196006993417471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n + n) * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A189891.P942196006993417471

/-! ## A189891.P3216123653267039822

`comp[ceil(n/63)*p?[ceil((n/2)²)]]`
-/

namespace A189891.P3216123653267039822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 63⌉ * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189891.P3216123653267039822

/-! ## A189891.P8250143824903067863

`comp[lcm(ceil(sin(n)²), p?[ceil((n/2)²)])]`
-/

namespace A189891.P8250143824903067863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈Real.sin (n : ℝ) ^ 2⌉ (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A189891.P8250143824903067863

/-! ## A189891.P2034002264418412631

`comp[and(floor(acot(n))-1, p?[ceil((n/2)²)])]`
-/

namespace A189891.P2034002264418412631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189891.P2034002264418412631

/-! ## A189891.P15274511809707225068

`comp[p?[(n+2)*(n+3)+1]-1]+1`
-/

namespace A189891.P15274511809707225068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n + 3) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189891.P15274511809707225068

/-! ## A189891.P5532662799014866689

`comp[A108154(n+3)]`
-/

namespace A189891.P5532662799014866689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189891.P5532662799014866689

/-! ## A189891.P13173159295101749475

`comp[floor((A000040(n+3)/2)²)]+1`
-/

namespace A189891.P13173159295101749475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000040 (n + 3) : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189891.P13173159295101749475

/-! ## A189891.P2377404975782427810

`comp[record[A000010(n*(n+5)+7)]]+1`
-/

namespace A189891.P2377404975782427810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n * (n + 5) + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189891.P2377404975782427810

/-!
# A189892: a(n) = n*prime(n) - sum_{i=1..n-1} prime(i).

The programs for A189892, the canonical program `A189892.P11745447332243219839` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189892 has offset 1).

The definition of A189892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189892.P11745447332243219839

`A033286(n+1)-A007504(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A189892

/-- `A033286(n+1)-A007504(n)` -/
def P11745447332243219839.Spec : Prop :=
  ∀ n, P11745447332243219839.a n = A189892 (n + 1)

theorem P11745447332243219839.correct : P11745447332243219839.Spec := by
  intro n
  simp only [A189892, Nat.add_sub_cancel]

end A189892

/-! ## A189892.P17652889085217474722

`∑[(n+1)*A054541(n+1)]`
-/

namespace A189892.P17652889085217474722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189892.P17652889085217474722

namespace A189892

/-- `∑[(n+1)*A054541(n+1)]` -/
def P17652889085217474722.Spec : Prop :=
  ∀ n, P17652889085217474722.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P14765753112230147229

`∑[A075526(n)*(n+1)]+1`
-/

namespace A189892.P14765753112230147229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A189892.P14765753112230147229

namespace A189892

/-- `∑[A075526(n)*(n+1)]+1` -/
def P14765753112230147229.Spec : Prop :=
  ∀ n, P14765753112230147229.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P1278466355705040695

`∑[(n+1)*Δ[A028815(n)]]+1`
-/

namespace A189892.P1278466355705040695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A189892.P1278466355705040695

namespace A189892

/-- `∑[(n+1)*Δ[A028815(n)]]+1` -/
def P1278466355705040695.Spec : Prop :=
  ∀ n, P1278466355705040695.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P1116011835084347042

`∑[(n+1)*A125266(n+1)]-1`
-/

namespace A189892.P1116011835084347042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A189892.P1116011835084347042

namespace A189892

/-- `∑[(n+1)*A125266(n+1)]-1` -/
def P1116011835084347042.Spec : Prop :=
  ∀ n, P1116011835084347042.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P13481083447805696788

`A152535(n+1)+A000040(n+1)`
-/

namespace A189892.P13481083447805696788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1) + A000040 (n + 1)

end

end A189892.P13481083447805696788

namespace A189892

/-- `A152535(n+1)+A000040(n+1)` -/
def P13481083447805696788.Spec : Prop :=
  ∀ n, P13481083447805696788.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P653400269277326280

`A152535(n+1)+sqrt(A001248(n+1))`
-/

namespace A189892.P653400269277326280
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A152535 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A189892.P653400269277326280

namespace A189892

/-- `A152535(n+1)+sqrt(A001248(n+1))` -/
def P653400269277326280.Spec : Prop :=
  ∀ n, P653400269277326280.a n = (A189892 (n + 1) : ℝ)

end A189892

/-! ## A189892.P11965243961502490496

`A152535(n+1)+∑[A054541(n+1)]`
-/

namespace A189892.P11965243961502490496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189892.P11965243961502490496

namespace A189892

/-- `A152535(n+1)+∑[A054541(n+1)]` -/
def P11965243961502490496.Spec : Prop :=
  ∀ n, P11965243961502490496.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P18230420292865314693

`A033286(n+1)-∑[A182986(n+1)]`
-/

namespace A189892.P18230420292865314693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189892.P18230420292865314693

namespace A189892

/-- `A033286(n+1)-∑[A182986(n+1)]` -/
def P18230420292865314693.Spec : Prop :=
  ∀ n, P18230420292865314693.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P6302357788170630274

`A000040(n+1)*(n+1)-A007504(n)`
-/

namespace A189892.P6302357788170630274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (n + 1 : ℤ) - A007504 n

end

end A189892.P6302357788170630274

namespace A189892

/-- `A000040(n+1)*(n+1)-A007504(n)` -/
def P6302357788170630274.Spec : Prop :=
  ∀ n, P6302357788170630274.a n = A189892 (n + 1)

theorem P6302357788170630274.correct : P6302357788170630274.Spec := by
  intro n
  simp only [A189892, Nat.add_sub_cancel, A189892.P6302357788170630274.a, A189892.P11745447332243219839.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P14310834286015847203.a, A033286, A033286.P2794343547372572705.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189892

/-! ## A189892.P7305348781975037645

`A033286(n+1)+1-∑[A008578(n+1)]`
-/

namespace A189892.P7305348781975037645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189892.P7305348781975037645

namespace A189892

/-- `A033286(n+1)+1-∑[A008578(n+1)]` -/
def P7305348781975037645.Spec : Prop :=
  ∀ n, P7305348781975037645.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P11819241571101656836

`A007504(n+1)+A152535(n+1)-A007504(n)`
-/

namespace A189892.P11819241571101656836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A152535 (n + 1) - A007504 n)

end

end A189892.P11819241571101656836

namespace A189892

/-- `A007504(n+1)+A152535(n+1)-A007504(n)` -/
def P11819241571101656836.Spec : Prop :=
  ∀ n, P11819241571101656836.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P14724197547269977252

`A001248(n+1)-(A161522(n+1)+A007504(n))`
-/

namespace A189892.P14724197547269977252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (A161522 (n + 1) + A007504 n)

end

end A189892.P14724197547269977252

namespace A189892

/-- `A001248(n+1)-(A161522(n+1)+A007504(n))` -/
def P14724197547269977252.Spec : Prop :=
  ∀ n, P14724197547269977252.a n = A189892 (n + 1)

theorem P14724197547269977252.correct : P14724197547269977252.Spec := by
  intro n
  simp only [A189892, Nat.add_sub_cancel, A189892.P14724197547269977252.a, A189892.P11745447332243219839.a, A001248, A001248.P16278241061688229202.a, A007504, A007504.P14310834286015847203.a, A033286, A033286.P2794343547372572705.a, A161522, A161522.P3302247049362693296.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189892

/-! ## A189892.P6623048432567145778

`A000040(n+1)+A240568(n+1)+A007504(n+1)`
-/

namespace A189892.P6623048432567145778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A240568 (n + 1) + A007504 (n + 1))

end

end A189892.P6623048432567145778

namespace A189892

/-- `A000040(n+1)+A240568(n+1)+A007504(n+1)` -/
def P6623048432567145778.Spec : Prop :=
  ∀ n, P6623048432567145778.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P15370172399205388546

`A033286(n+1)+A152535(n+1)-A117495(n+1)`
-/

namespace A189892.P15370172399205388546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + (A152535 (n + 1) - A117495 (n + 1))

end

end A189892.P15370172399205388546

namespace A189892

/-- `A033286(n+1)+A152535(n+1)-A117495(n+1)` -/
def P15370172399205388546.Spec : Prop :=
  ∀ n, P15370172399205388546.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P2388599225652801442

`A152535(n+1)+A291463(n+1)/A001223(n+1)`
-/

namespace A189892.P2388599225652801442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152535 (n + 1) : ℚ) + (A291463 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)

end

end A189892.P2388599225652801442

namespace A189892

/-- `A152535(n+1)+A291463(n+1)/A001223(n+1)` -/
def P2388599225652801442.Spec : Prop :=
  ∀ n, P2388599225652801442.a n = (A189892 (n + 1) : ℚ)

end A189892

/-! ## A189892.P18191108061568141147

`A000040(n+1)+A033286(n+1)-∑[A000040(n+1)]`
-/

namespace A189892.P18191108061568141147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A033286 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189892.P18191108061568141147

namespace A189892

/-- `A000040(n+1)+A033286(n+1)-∑[A000040(n+1)]` -/
def P18191108061568141147.Spec : Prop :=
  ∀ n, P18191108061568141147.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P14640414193865554855

`A000040(n+1)+∑[A090942(n+1)-A000040(n+1)]`
-/

namespace A189892.P14640414193865554855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189892.P14640414193865554855

namespace A189892

/-- `A000040(n+1)+∑[A090942(n+1)-A000040(n+1)]` -/
def P14640414193865554855.Spec : Prop :=
  ∀ n, P14640414193865554855.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P11585311954173431894

`A152535(n+1)+A008578(n+2)`
-/

namespace A189892.P11585311954173431894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1) + A008578 (n + 2)

end

end A189892.P11585311954173431894

namespace A189892

/-- `A152535(n+1)+A008578(n+2)` -/
def P11585311954173431894.Spec : Prop :=
  ∀ n, P11585311954173431894.a n = A189892 (n + 1)

end A189892

/-! ## A189892.P5115997614107952112

`A182986(n+2)+A152535(n+1)`
-/

namespace A189892.P5115997614107952112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A152535 (n + 1)

end

end A189892.P5115997614107952112

namespace A189892

/-- `A182986(n+2)+A152535(n+1)` -/
def P5115997614107952112.Spec : Prop :=
  ∀ n, P5115997614107952112.a n = A189892 (n + 1)

end A189892

/-!
# A189893: Recurrence sequence derived from the digits of the square root of 5 after its decimal point.

The programs for A189893, there is no canonical definition to state claims against.
-/

/-! ## A189893.P6740703370519504428

`A329296(A315107(n))`
-/

namespace A189893.P6740703370519504428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329296 (A315107 n).toNat

end

end A189893.P6740703370519504428

/-!
# A189894: Number of isosceles right triangles on a 2n X (n+1) grid.

The programs for A189894, the canonical program `A189894.P18078749706703020444` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189894 has offset 1).

The definition of A189894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189894.P18078749706703020444

`∑[∑[∑[A000035(n)+33*n+4]]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189894

/-- `∑[∑[∑[A000035(n)+33*n+4]]]` -/
def P18078749706703020444.Spec : Prop :=
  ∀ n, P18078749706703020444.a n = A189894 (n + 1)

theorem P18078749706703020444.correct : P18078749706703020444.Spec := by
  intro n
  simp only [A189894, Nat.add_sub_cancel]

end A189894

/-! ## A189894.P5735043790826562424

`A189895(∑[10*n-1]+2-∑[n])`
-/

namespace A189894.P5735043790826562424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189895 (∑ j ∈ Finset.range (n + 1), f1 j + 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A189894.P5735043790826562424

namespace A189894

/-- `A189895(∑[10*n-1]+2-∑[n])` -/
def P5735043790826562424.Spec : Prop :=
  ∀ n, P5735043790826562424.a n = A189894 (n + 1)

end A189894

/-! ## A189894.P14322587433865436000

`A272626(A022267(n+1))`
-/

namespace A189894.P14322587433865436000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (A022267 (n + 1)).toNat

end

end A189894.P14322587433865436000

namespace A189894

/-- `A272626(A022267(n+1))` -/
def P14322587433865436000.Spec : Prop :=
  ∀ n, P14322587433865436000.a n = A189894 (n + 1)

end A189894

/-! ## A189894.P7838796239098215494

`A272626(A276819(n+1))`
-/

namespace A189894.P7838796239098215494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (A276819 (n + 1)).toNat

end

end A189894.P7838796239098215494

namespace A189894

/-- `A272626(A276819(n+1))` -/
def P7838796239098215494.Spec : Prop :=
  ∀ n, P7838796239098215494.a n = A189894 (n + 1)

end A189894

/-! ## A189894.P11336864857431182186

`A272626(A000096(3*n+2)-n)`
-/

namespace A189894.P11336864857431182186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (A000096 (3 * n + 2) - (n : ℤ)).toNat

end

end A189894.P11336864857431182186

namespace A189894

/-- `A272626(A000096(3*n+2)-n)` -/
def P11336864857431182186.Spec : Prop :=
  ∀ n, P11336864857431182186.a n = A189894 (n + 1)

end A189894

/-!
# A189895: T(n,k) = Number of isosceles right triangles on a (n+1) X (k+1) grid.

The programs for A189895, there is no canonical definition to state claims against.
-/

/-! ## A189895.P11598067008755224512

`A272626(lt[1, A007318(n)]+1)`
-/

namespace A189895.P11598067008755224512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A189895.P11598067008755224512

/-! ## A189895.P9537227152293467396

`A272626(lt[0, A272626(n+1)]+1)`
-/

namespace A189895.P9537227152293467396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A189895.P9537227152293467396

/-! ## A189895.P11032310919927443744

`A272626(eq[3, log2(A278545(n+1))]+1)`
-/

namespace A189895.P11032310919927443744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A278545 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1)

end

end A189895.P11032310919927443744

/-! ## A189895.P5600719935009992160

`A272626(2*A003057(n+2)+n+1)`
-/

namespace A189895.P5600719935009992160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (2 * A003057 (n + 2) + (n : ℤ) + 1).toNat

end

end A189895.P5600719935009992160

/-! ## A189895.P4080770181755192091

`A272626(A014132(n+1)+A014132(n+1)-n+1)`
-/

namespace A189895.P4080770181755192091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ)) + 1).toNat

end

end A189895.P4080770181755192091

/-! ## A189895.P18331580473978987069

`filter[A272626(n+1), A091247(#)]`
-/

namespace A189895.P18331580473978987069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A189895.P18331580473978987069

/-! ## A189895.P2440617117332406824

`filter[A272626(n+1), A178226(#)]`
-/

namespace A189895.P2440617117332406824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A189895.P2440617117332406824

/-! ## A189895.P4715322159549085768

`filter[A272626(n+1), A381735(#)]`
-/

namespace A189895.P4715322159549085768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381735 (f1 j).toNat = 1) n)

end

end A189895.P4715322159549085768

/-! ## A189895.P9436912782791556239

`filter[A272626(n+1), A043545(#)]`
-/

namespace A189895.P9436912782791556239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A189895.P9436912782791556239

/-! ## A189895.P2239056095156605324

`filter[A272626(n+1), A252744(#)]`
-/

namespace A189895.P2239056095156605324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252744 (f1 j).toNat = 1) n)

end

end A189895.P2239056095156605324

/-!
# A189897: E.g.f.: A(x) = exp(x*exp(x*exp(2*x*exp(3*x*exp(...exp(n*x*exp(...))...))))).

The programs for A189897, there is no canonical definition to state claims against.
-/

/-! ## A189897.P18104279337848292236

`A075834(n)*A157271(A115082(n))`
-/

namespace A189897.P18104279337848292236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075834 n * A157271 (A115082 n).toNat

end

end A189897.P18104279337848292236

/-!
# A189898: Triangular array read by rows. T(n,k) is the number of digraphs with n labeled nodes having exactly k undirected (or weak) components, n >= 1, 1 <= k <= n.

The programs for A189898, there is no canonical definition to state claims against.
-/

/-! ## A189898.P17318137167321673506

`A191249(n+1)/∏[char[∑[n]]+1]`
-/

namespace A189898.P17318137167321673506
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191249 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A189898.P17318137167321673506

/-! ## A189898.P2484082553172281780

`1/A140513(n)*A191249(n+1)`
-/

namespace A189898.P2484082553172281780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A140513 n : ℚ) * (A191249 (n + 1) : ℚ)

end

end A189898.P2484082553172281780

/-!
# A189899: Number of n X n binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189899, there is no canonical definition to state claims against.
-/

/-! ## A189899.P13300714812344550984

`A189905(∑[4*n]+1)`
-/

namespace A189899.P13300714812344550984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189899.P13300714812344550984

/-! ## A189899.P10127072944632264153

`record[A189905(A330613(n+1))]`
-/

namespace A189899.P10127072944632264153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189899.P10127072944632264153

/-! ## A189899.P14548385787170906159

`A189905(A001844(n))+char[8]`
-/

namespace A189899.P14548385787170906159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A189899.P14548385787170906159

/-! ## A189899.P12294206141549177579

`record[A003982(n)*A189905(n+1)]`
-/

namespace A189899.P12294206141549177579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A189905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189899.P12294206141549177579

