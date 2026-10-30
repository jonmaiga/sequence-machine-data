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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A201200: Total number of round trips of length n on the closed Laguerre graph Lc_4 divided by 4.

The programs for A201200, the canonical program `A201200.P3867769479825131730` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201200 has offset 0).

The definition of A201200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201200.P6084809814617611591

`ogf((1-12x+34x^2-16x^3)/(1-16x+68x^2-64x^3-44x^4))`
-/

namespace A201200.P6084809814617611591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -12, 34, -16] [1, -16, 68, -64, -44] n

end

end A201200.P6084809814617611591

namespace A201200

/-- `ogf((1-12x+34x^2-16x^3)/(1-16x+68x^2-64x^3-44x^4))` -/
def P6084809814617611591.Spec : Prop :=
  ∀ n, P6084809814617611591.a n = A201200 n

end A201200

/-! ## A201200.P3867769479825131730

`16*a(n-1)-68*a(n-2)+64*a(n-3)+44*a(n-4)` with `a(0)=1, a(1)=4, a(2)=30, a(3)=256`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201200

/-- `16*a(n-1)-68*a(n-2)+64*a(n-3)+44*a(n-4)` -/
def P3867769479825131730.Spec : Prop :=
  ∀ n, P3867769479825131730.a n = A201200 n

theorem P3867769479825131730.correct : P3867769479825131730.Spec := by
  intro n
  simp only [A201200]

end A201200

/-! ## A201200.P9154591160528675713

`((2-sqrt(6))^n+(2+sqrt(6))^n+(6-sqrt(14))^n+(6+sqrt(14))^n)/4`
-/

namespace A201200.P9154591160528675713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (6 : ℝ)) ^ n + (2 + Real.sqrt (6 : ℝ)) ^ n + (6 - Real.sqrt (14 : ℝ)) ^ n + (6 + Real.sqrt (14 : ℝ)) ^ n) / 4

end

end A201200.P9154591160528675713

namespace A201200

/-- `((2-sqrt(6))^n+(2+sqrt(6))^n+(6-sqrt(14))^n+(6+sqrt(14))^n)/4` -/
def P9154591160528675713.Spec : Prop :=
  ∀ n, P9154591160528675713.a n = (A201200 n : ℝ)

theorem P9154591160528675713.correct : P9154591160528675713.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A201200, Nat.add_sub_cancel, A201200.P9154591160528675713.a, A201200.P3867769479825131730.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A201200, Nat.add_sub_cancel, A201200.P9154591160528675713.a, A201200.P3867769479825131730.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A201200

/-!
# A201203: Alternating row sums of triangle A201201: first associated monic Laguerre-Sonin(e) polynomials with parameter alpha=1 evaluated at x=-1.

The programs for A201203, there is no canonical definition to state claims against.
-/

/-! ## A201203.P17708969021262686447

`∑{#}[n, (-1)^#*A201201(C(n+1, 2)+#)]`
-/

namespace A201203.P17708969021262686447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A201201 (Nat.choose (n + 1) 2 + k)

end

end A201203.P17708969021262686447

/-!
# A201204: Half-convolution of Catalan sequence A000108 with itself.

The programs for A201204, the canonical program `A201204.P3911575188572852415` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201204 has offset 0).

The definition of A201204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201204.P3911575188572852415

`∑{#}[floor(n/2), A000108(n-#)*A000108(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A201204

/-- `∑{#}[floor(n/2), A000108(n-#)*A000108(#)]` -/
def P3911575188572852415.Spec : Prop :=
  ∀ n, P3911575188572852415.a n = A201204 n

theorem P3911575188572852415.correct : P3911575188572852415.Spec := by
  intro n
  simp only [A201204]

end A201204

/-! ## A201204.P10489705284372086379

`A028378(A099392(n+1))`
-/

namespace A201204.P10489705284372086379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (A099392 (n + 1)).toNat

end

end A201204.P10489705284372086379

namespace A201204

/-- `A028378(A099392(n+1))` -/
def P10489705284372086379.Spec : Prop :=
  ∀ n, P10489705284372086379.a n = A201204 n

end A201204

/-! ## A201204.P7244213429077838508

`A028364(floor(n²/2)+n)`
-/

namespace A201204.P7244213429077838508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ)).toNat

end

end A201204.P7244213429077838508

namespace A201204

/-- `A028364(floor(n²/2)+n)` -/
def P7244213429077838508.Spec : Prop :=
  ∀ n, P7244213429077838508.a n = A201204 n

end A201204

/-! ## A201204.P12489815237424664407

`A067323(A007590(n+1))`
-/

namespace A201204.P12489815237424664407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A007590 (n + 1)).toNat

end

end A201204.P12489815237424664407

namespace A201204

/-- `A067323(A007590(n+1))` -/
def P12489815237424664407.Spec : Prop :=
  ∀ n, P12489815237424664407.a n = A201204 n

end A201204

/-! ## A201204.P7237920026382536609

`A067323(A000982(n)+n)`
-/

namespace A201204.P7237920026382536609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A000982 n + (n : ℤ)).toNat

end

end A201204.P7237920026382536609

namespace A201204

/-- `A067323(A000982(n)+n)` -/
def P7237920026382536609.Spec : Prop :=
  ∀ n, P7237920026382536609.a n = A201204 n

end A201204

/-! ## A201204.P10685810745794134904

`A067323(A005843(∑[n])-A007590(n))`
-/

namespace A201204.P10685810745794134904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j) - A007590 n).toNat

end

end A201204.P10685810745794134904

namespace A201204

/-- `A067323(A005843(∑[n])-A007590(n))` -/
def P10685810745794134904.Spec : Prop :=
  ∀ n, P10685810745794134904.a n = A201204 n

end A201204

/-! ## A201204.P17578188650303634723

`A028376(A080476(n+2))`
-/

namespace A201204.P17578188650303634723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (A080476 (n + 2)).toNat

end

end A201204.P17578188650303634723

namespace A201204

/-- `A028376(A080476(n+2))` -/
def P17578188650303634723.Spec : Prop :=
  ∀ n, P17578188650303634723.a n = A201204 n

end A201204

/-! ## A201204.P1569550065059351180

`A067323(A002264(∑[A047235(n+1)]))`
-/

namespace A201204.P1569550065059351180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A201204.P1569550065059351180

namespace A201204

/-- `A067323(A002264(∑[A047235(n+1)]))` -/
def P1569550065059351180.Spec : Prop :=
  ∀ n, P1569550065059351180.a n = A201204 n

end A201204

/-! ## A201204.P3311101112313461824

`A071201(A051890(n+1))`
-/

namespace A201204.P3311101112313461824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071201 (A051890 (n + 1)).toNat

end

end A201204.P3311101112313461824

namespace A201204

/-- `A071201(A051890(n+1))` -/
def P3311101112313461824.Spec : Prop :=
  ∀ n, P3311101112313461824.a n = A201204 n

end A201204

/-!
# A201205: Bisection of half-convolution of Catalan sequence A000108; even part.

The programs for A201205, the canonical program `A201205.P16689278603628282264` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201205 has offset 0).

The definition of A201205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201205.P16689278603628282264

`(A000108(2*n+1)+A000108(n)²)/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A201205

/-- `(A000108(2*n+1)+A000108(n)²)/2` -/
def P16689278603628282264.Spec : Prop :=
  ∀ n, P16689278603628282264.a n = (A201205 n : ℚ)

end A201205

/-! ## A201205.P15258954846379239376

`A028364(C(2*n+1, 2)+n)`
-/

namespace A201205.P15258954846379239376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (Nat.choose (2 * n + 1) 2 + n)

end

end A201205.P15258954846379239376

namespace A201205

/-- `A028364(C(2*n+1, 2)+n)` -/
def P15258954846379239376.Spec : Prop :=
  ∀ n, P15258954846379239376.a n = A201205 n

end A201205

/-! ## A201205.P17182316269919575715

`A067323(C(2*n+1, 2)+n)`
-/

namespace A201205.P17182316269919575715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (Nat.choose (2 * n + 1) 2 + n)

end

end A201205.P17182316269919575715

namespace A201205

/-- `A067323(C(2*n+1, 2)+n)` -/
def P17182316269919575715.Spec : Prop :=
  ∀ n, P17182316269919575715.a n = A201205 n

end A201205

/-! ## A201205.P222319519210943251

`A201204(2*n)`
-/

namespace A201205.P222319519210943251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 (2 * n)

end

end A201205.P222319519210943251

namespace A201205

/-- `A201204(2*n)` -/
def P222319519210943251.Spec : Prop :=
  ∀ n, P222319519210943251.a n = A201205 n

end A201205

/-! ## A201205.P11473105454422360872

`record[A201204(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A201205.P11473105454422360872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A201204 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201205.P11473105454422360872

namespace A201205

/-- `record[A201204(C(n, a(n-1)))]` -/
def P11473105454422360872.Spec : Prop :=
  ∀ n, P11473105454422360872.a n = A201205 n

end A201205

/-! ## A201205.P8746316280432565123

`record[A201204(A014681(n))]`
-/

namespace A201205.P8746316280432565123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201205.P8746316280432565123

namespace A201205

/-- `record[A201204(A014681(n))]` -/
def P8746316280432565123.Spec : Prop :=
  ∀ n, P8746316280432565123.a n = A201205 n

end A201205

/-! ## A201205.P2364537627893856159

`record[gcd(A097331(n), A201204(n))]`
-/

namespace A201205.P2364537627893856159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 n) (A201204 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201205.P2364537627893856159

namespace A201205

/-- `record[gcd(A097331(n), A201204(n))]` -/
def P2364537627893856159.Spec : Prop :=
  ∀ n, (P2364537627893856159.a n : ℤ) = A201205 n

end A201205

/-! ## A201205.P1086342611802899583

`(A024492(n)+A000108(n)²)/2`
-/

namespace A201205.P1086342611802899583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024492 n + A000108 n ^ 2 : ℚ) / 2

end

end A201205.P1086342611802899583

namespace A201205

/-- `(A024492(n)+A000108(n)²)/2` -/
def P1086342611802899583.Spec : Prop :=
  ∀ n, P1086342611802899583.a n = (A201205 n : ℚ)

end A201205

/-! ## A201205.P13360211992322950580

`record[A201204(A008611(A000265(n+1)))]`
-/

namespace A201205.P13360211992322950580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 (A008611 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201205.P13360211992322950580

namespace A201205

/-- `record[A201204(A008611(A000265(n+1)))]` -/
def P13360211992322950580.Spec : Prop :=
  ∀ n, P13360211992322950580.a n = A201205 n

end A201205

/-! ## A201205.P15563301774155157356

`A028364(∑[4*n])`
-/

namespace A201205.P15563301774155157356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201205.P15563301774155157356

namespace A201205

/-- `A028364(∑[4*n])` -/
def P15563301774155157356.Spec : Prop :=
  ∀ n, P15563301774155157356.a n = A201205 n

end A201205

/-!
# A201206: Number of successive decreasing values of round(n^(2/3))^3 - n^2.

The programs for A201206, the canonical program `A201206.P17108121643463047009` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201206 has offset 1).

The definition of A201206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201206.P17108121643463047009

`floor((n+1+1/2)^(3/2))-floor((n+1-1/2)^(3/2))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201206

/-- `floor((n+1+1/2)^(3/2))-floor((n+1-1/2)^(3/2))` -/
def P17108121643463047009.Spec : Prop :=
  ∀ n, P17108121643463047009.a n = A201206 (n + 1)

theorem P17108121643463047009.correct : P17108121643463047009.Spec := by
  intro n
  simp only [A201206, Nat.add_sub_cancel]

end A201206

/-! ## A201206.P12616535689427552080

`-Δ[-floor(sqrt(A219085(n)))]`
-/

namespace A201206.P12616535689427552080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.sqrt (A219085 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A201206.P12616535689427552080

namespace A201206

/-- `-Δ[-floor(sqrt(A219085(n)))]` -/
def P12616535689427552080.Spec : Prop :=
  ∀ n, P12616535689427552080.a n = A201206 (n + 1)

end A201206

/-! ## A201206.P11795023353622328061

`runs[round(root(n+1, 3)²)]`
-/

namespace A201206.P11795023353622328061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (3 : ℝ))) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A201206.P11795023353622328061

namespace A201206

/-- `runs[round(root(n+1, 3)²)]` -/
def P11795023353622328061.Spec : Prop :=
  ∀ n, (P11795023353622328061.a n : ℤ) = A201206 (n + 1)

end A201206

/-! ## A201206.P6712515096242030976

`A051903(A000079(runs[round((n+1)^(2/3))]))`
-/

namespace A201206.P6712515096242030976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((2 : ℚ) / 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000079 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)).toNat

end

end A201206.P6712515096242030976

namespace A201206

/-- `A051903(A000079(runs[round((n+1)^(2/3))]))` -/
def P6712515096242030976.Spec : Prop :=
  ∀ n, P6712515096242030976.a n = A201206 (n + 1)

end A201206

/-! ## A201206.P16521941851561223426

`A028310(Δ[A203302(A028310(n))])`
-/

namespace A201206.P16521941851561223426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203302 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A201206.P16521941851561223426

namespace A201206

/-- `A028310(Δ[A203302(A028310(n))])` -/
def P16521941851561223426.Spec : Prop :=
  ∀ n, P16521941851561223426.a n = A201206 (n + 1)

end A201206

/-!
# A201207: Half-convolution of sequence A000032 (Lucas) with itself.

The programs for A201207, the canonical program `A201207.P12572751980179177172` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201207 has offset 0).

The definition of A201207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201207.P12572751980179177172

`ogf((4-2x-7x^2+6x^3-x^4+3x^5)/(1-x-3x^2+2x^3+2x^5+3x^6-x^7-x^8))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201207

/-- `ogf((4-2x-7x^2+6x^3-x^4+3x^5)/(1-x-3x^2+2x^3+2x^5+3x^6-x^7-x^8))` -/
def P12572751980179177172.Spec : Prop :=
  ∀ n, P12572751980179177172.a n = A201207 n

theorem P12572751980179177172.correct : P12572751980179177172.Spec := by
  intro n
  simp only [A201207]

end A201207

/-!
# A201208: One 1, two 2's, three 1's, four 2's, five 1's, ...

The programs for A201208, the canonical program `A201208.P11775252334027749297` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201208 has offset 1).

The definition of A201208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201208.P11775252334027749297

`A057212(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A201208

/-- `A057212(n+1)+1` -/
def P11775252334027749297.Spec : Prop :=
  ∀ n, P11775252334027749297.a n = A201208 (n + 1)

theorem P11775252334027749297.correct : P11775252334027749297.Spec := by
  intro n
  simp only [A201208, Nat.add_sub_cancel]

end A201208

/-! ## A201208.P15238383049508098180

`∑[-T(n-1,k)]` with `a(0)=1, a(1)=1`
-/

namespace A201208.P15238383049508098180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -SequenceMachineLib.triUp f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201208.P15238383049508098180

namespace A201208

/-- `∑[-T(n-1,k)]` -/
def P15238383049508098180.Spec : Prop :=
  ∀ n, P15238383049508098180.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P6348431657869739492

`gcd(2, ∑[char[∑[n]]])`
-/

namespace A201208.P6348431657869739492
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201208.P6348431657869739492

namespace A201208

/-- `gcd(2, ∑[char[∑[n]]])` -/
def P6348431657869739492.Spec : Prop :=
  ∀ n, (P6348431657869739492.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P11055962901051249959

`1+row(n)%2`
-/

namespace A201208.P11055962901051249959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.triRow n % 2

end

end A201208.P11055962901051249959

namespace A201208

/-- `1+row(n)%2` -/
def P11055962901051249959.Spec : Prop :=
  ∀ n, (P11055962901051249959.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P6610842195383620241

`and(1, row(n))+1`
-/

namespace A201208.P6610842195383620241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.triRow n) + 1

end

end A201208.P6610842195383620241

namespace A201208

/-- `and(1, row(n))+1` -/
def P6610842195383620241.Spec : Prop :=
  ∀ n, (P6610842195383620241.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P15055811600237919492

`(2^row(n))%3`
-/

namespace A201208.P15055811600237919492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triRow n % 3

end

end A201208.P15055811600237919492

namespace A201208

/-- `(2^row(n))%3` -/
def P15055811600237919492.Spec : Prop :=
  ∀ n, (P15055811600237919492.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P17172061988578488180

`2^and(1, row(n))`
-/

namespace A201208.P17172061988578488180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 (SequenceMachineLib.triRow n)

end

end A201208.P17172061988578488180

namespace A201208

/-- `2^and(1, row(n))` -/
def P17172061988578488180.Spec : Prop :=
  ∀ n, (P17172061988578488180.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P1859565837624660993

`and(3, row(n)²-3)`
-/

namespace A201208.P1859565837624660993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((SequenceMachineLib.triRow n ^ 2 : ℤ) - 3)

end

end A201208.P1859565837624660993

namespace A201208

/-- `and(3, row(n)²-3)` -/
def P1859565837624660993.Spec : Prop :=
  ∀ n, P1859565837624660993.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P12308936688612194466

`C(2, row(n)²%2)`
-/

namespace A201208.P12308936688612194466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.triRow n ^ 2 % 2)

end

end A201208.P12308936688612194466

namespace A201208

/-- `C(2, row(n)²%2)` -/
def P12308936688612194466.Spec : Prop :=
  ∀ n, (P12308936688612194466.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P423905821821035626

`-or(∑[char[∑[n]]], -2)`
-/

namespace A201208.P423905821821035626
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)

end

end A201208.P423905821821035626

namespace A201208

/-- `-or(∑[char[∑[n]]], -2)` -/
def P423905821821035626.Spec : Prop :=
  ∀ n, P423905821821035626.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P10204779547425164377

`2-∑[char[∑[n]]]%2`
-/

namespace A201208.P10204779547425164377
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A201208.P10204779547425164377

namespace A201208

/-- `2-∑[char[∑[n]]]%2` -/
def P10204779547425164377.Spec : Prop :=
  ∀ n, P10204779547425164377.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P13334836816512307459

`2-and(1, ∑[char[∑[n]]])`
-/

namespace A201208.P13334836816512307459
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A201208.P13334836816512307459

namespace A201208

/-- `2-and(1, ∑[char[∑[n]]])` -/
def P13334836816512307459.Spec : Prop :=
  ∀ n, P13334836816512307459.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P11617619802689966009

`val(3^row(n)+1, 2)`
-/

namespace A201208.P11617619802689966009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 ^ SequenceMachineLib.triRow n + 1) 2

end

end A201208.P11617619802689966009

namespace A201208

/-- `val(3^row(n)+1, 2)` -/
def P11617619802689966009.Spec : Prop :=
  ∀ n, (P11617619802689966009.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P10622876005816513541

`(comp[∑[n]]+n)%2+1`
-/

namespace A201208.P10622876005816513541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 2 + 1

end

end A201208.P10622876005816513541

namespace A201208

/-- `(comp[∑[n]]+n)%2+1` -/
def P10622876005816513541.Spec : Prop :=
  ∀ n, (P10622876005816513541.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P11132632236827451492

`(2^(comp[∑[n]]-n))%3`
-/

namespace A201208.P11132632236827451492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))) 3

end

end A201208.P11132632236827451492

namespace A201208

/-- `(2^(comp[∑[n]]-n))%3` -/
def P11132632236827451492.Spec : Prop :=
  ∀ n, P11132632236827451492.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P12328479383466311372

`2-((1-row(n))%2)²`
-/

namespace A201208.P12328479383466311372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (1 - (SequenceMachineLib.triRow n : ℤ)) 2 ^ 2

end

end A201208.P12328479383466311372

namespace A201208

/-- `2-((1-row(n))%2)²` -/
def P12328479383466311372.Spec : Prop :=
  ∀ n, P12328479383466311372.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P9228937259452106298

`(2*row(n)²²%2)!`
-/

namespace A201208.P9228937259452106298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * ((SequenceMachineLib.triRow n ^ 2) ^ 2 % 2))

end

end A201208.P9228937259452106298

namespace A201208

/-- `(2*row(n)²²%2)!` -/
def P9228937259452106298.Spec : Prop :=
  ∀ n, (P9228937259452106298.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P18036499261740650168

`3-gcd(row(n)-2, row(n))`
-/

namespace A201208.P18036499261740650168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Int.gcd ((SequenceMachineLib.triRow n : ℤ) - 2) (SequenceMachineLib.triRow n : ℤ) : ℤ)

end

end A201208.P18036499261740650168

namespace A201208

/-- `3-gcd(row(n)-2, row(n))` -/
def P18036499261740650168.Spec : Prop :=
  ∀ n, P18036499261740650168.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P10982030607717127196

`or(1, row(n)+1)-row(n)`
-/

namespace A201208.P10982030607717127196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triRow n : ℤ)

end

end A201208.P10982030607717127196

namespace A201208

/-- `or(1, row(n)+1)-row(n)` -/
def P10982030607717127196.Spec : Prop :=
  ∀ n, P10982030607717127196.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P2555123473631893063

`row(n)-or(1, row(n)-2)`
-/

namespace A201208.P2555123473631893063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - Int.lor 1 ((SequenceMachineLib.triRow n : ℤ) - 2)

end

end A201208.P2555123473631893063

namespace A201208

/-- `row(n)-or(1, row(n)-2)` -/
def P2555123473631893063.Spec : Prop :=
  ∀ n, P2555123473631893063.a n = A201208 (n + 1)

end A201208

/-!
# A201209: Number of n X n 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201209, there is no canonical definition to state claims against.
-/

/-! ## A201209.P17957186158874733942

`A201216(∑[4*n]+1)`
-/

namespace A201209.P17957186158874733942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201209.P17957186158874733942

/-! ## A201209.P1979100979433192864

`record[A201216(record[A326657(n)])]`
-/

namespace A201209.P1979100979433192864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201209.P1979100979433192864

/-! ## A201209.P10776195309398243835

`and(-1, A201216(A001844(n)))`
-/

namespace A201209.P10776195309398243835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A201216 (A001844 n).toNat)

end

end A201209.P10776195309398243835

/-!
# A201210: Number of nX2 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201210, there is no canonical definition to state claims against.
-/

/-! ## A201210.P110652664093845992

`A202162(n+1)+A201830(n+1)`
-/

namespace A201210.P110652664093845992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202162 (n + 1) + A201830 (n + 1)

end

end A201210.P110652664093845992

/-! ## A201210.P9924237958382295416

`A201216(∑[n+1]+2)`
-/

namespace A201210.P9924237958382295416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201210.P9924237958382295416

/-! ## A201210.P13376498870318125856

`record[root(A201216(n+2), A059268(n))]`
-/

namespace A201210.P13376498870318125856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201216 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201210.P13376498870318125856

/-! ## A201210.P10892686260202261833

`A202168(∑[n+1]+2)+A201830(n+1)`
-/

namespace A201210.P10892686260202261833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A201830 (n + 1)

end

end A201210.P10892686260202261833

/-! ## A201210.P12805800337533988173

`A202162(n+1)+A201836(∑[n+1]+2)`
-/

namespace A201210.P12805800337533988173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202162 (n + 1) + A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201210.P12805800337533988173

/-!
# A201211: Number of n X 3 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201211, there is no canonical definition to state claims against.
-/

/-! ## A201211.P4193032404819844547

`A202163(n+1)+A201831(n+1)`
-/

namespace A201211.P4193032404819844547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202163 (n + 1) + A201831 (n + 1)

end

end A201211.P4193032404819844547

/-! ## A201211.P12466633911331799923

`A201216(∑[n+2]+4)`
-/

namespace A201211.P12466633911331799923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201211.P12466633911331799923

/-! ## A201211.P4784209124801953642

`lcm(1-and(2, n), A201216(A167614(n+1)))`
-/

namespace A201211.P4784209124801953642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A201216 (A167614 (n + 1)).toNat)

end

end A201211.P4784209124801953642

/-! ## A201211.P8694201786634739869

`A202163(n+1)+A201836(∑[n+2]+4)`
-/

namespace A201211.P8694201786634739869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202163 (n + 1) + A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201211.P8694201786634739869

/-! ## A201211.P2344460789846236410

`A202168(∑[n+2]+4)+A201831(n+1)`
-/

namespace A201211.P2344460789846236410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + A201831 (n + 1)

end

end A201211.P2344460789846236410

/-!
# A201212: Number of nX4 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201212, there is no canonical definition to state claims against.
-/

/-! ## A201212.P15550834665678559363

`A202164(n+1)+A201832(n+1)`
-/

namespace A201212.P15550834665678559363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202164 (n + 1) + A201832 (n + 1)

end

end A201212.P15550834665678559363

/-! ## A201212.P6975905029285330860

`A201216(∑[n+3]+7)`
-/

namespace A201212.P6975905029285330860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201212.P6975905029285330860

/-! ## A201212.P10057997135392314655

`A202164(n+1)+A201836(∑[n+3]+7)`
-/

namespace A201212.P10057997135392314655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202164 (n + 1) + A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201212.P10057997135392314655

/-! ## A201212.P15496892160841840366

`A202168(∑[n+3]+7)+A201832(n+1)`
-/

namespace A201212.P15496892160841840366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 7) + A201832 (n + 1)

end

end A201212.P15496892160841840366

/-! ## A201212.P5412369623606829961

`A202164(n+1)+A201836(A167614(n+2)+1)-A326679(n)`
-/

namespace A201212.P5412369623606829961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202164 (n + 1) + (A201836 (A167614 (n + 2) + 1).toNat - A326679 n)

end

end A201212.P5412369623606829961

/-!
# A201213: Number of nX5 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201213, there is no canonical definition to state claims against.
-/

/-! ## A201213.P10452677071513049658

`A202165(n+1)+A201833(n+1)`
-/

namespace A201213.P10452677071513049658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202165 (n + 1) + A201833 (n + 1)

end

end A201213.P10452677071513049658

/-! ## A201213.P6283562283474989948

`A201216(A374005(n+1))`
-/

namespace A201213.P6283562283474989948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A374005 (n + 1)).toNat

end

end A201213.P6283562283474989948

/-! ## A201213.P9498683890349985517

`A201216(A167499(n+3))`
-/

namespace A201213.P9498683890349985517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A167499 (n + 3)).toNat

end

end A201213.P9498683890349985517

/-! ## A201213.P9323909415254729146

`A201216(A155212(n)+13)`
-/

namespace A201213.P9323909415254729146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A155212 n + 13).toNat

end

end A201213.P9323909415254729146

/-! ## A201213.P6409797919241163750

`A201216(A056000(n)+15)`
-/

namespace A201213.P6409797919241163750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A056000 n + 15).toNat

end

end A201213.P6409797919241163750

/-!
# A201214: Number of nX6 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201214, there is no canonical definition to state claims against.
-/

/-! ## A201214.P13633913277312442307

`A201216(C(n+7, 2)-n)`
-/

namespace A201214.P13633913277312442307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (Nat.choose (n + 7) 2 - n)

end

end A201214.P13633913277312442307

/-! ## A201214.P13432827250192969993

`A201216(A374007(n+1))`
-/

namespace A201214.P13432827250192969993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A374007 (n + 1)).toNat

end

end A201214.P13432827250192969993

/-! ## A201214.P2317810500355439498

`A201216(A166136(n+4))`
-/

namespace A201214.P2317810500355439498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A166136 (n + 4)).toNat

end

end A201214.P2317810500355439498

/-! ## A201214.P8515112998572944712

`A201216(A056115(n)+21)`
-/

namespace A201214.P8515112998572944712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A056115 n + 21).toNat

end

end A201214.P8515112998572944712

/-! ## A201214.P14281990925774118322

`A201216(eq[7, A131818(n+1)])`
-/

namespace A201214.P14281990925774118322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201214.P14281990925774118322

/-!
# A201215: Number of nX7 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201215, there is no canonical definition to state claims against.
-/

/-! ## A201215.P17374047339361509418

`A201216(A374008(n+1))`
-/

namespace A201215.P17374047339361509418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A374008 (n + 1)).toNat

end

end A201215.P17374047339361509418

/-! ## A201215.P12352978585321034210

`A201216(A055999(n+4))`
-/

namespace A201215.P12352978585321034210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A055999 (n + 4)).toNat

end

end A201215.P12352978585321034210

/-! ## A201215.P17228652993766403872

`A201216(A056121(n)+22)`
-/

namespace A201215.P17228652993766403872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A056121 n + 22).toNat

end

end A201215.P17228652993766403872

/-! ## A201215.P7940082554276013033

`A201216(A056119(n)+28)`
-/

namespace A201215.P7940082554276013033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A056119 n + 28).toNat

end

end A201215.P7940082554276013033

/-!
# A201216: T(n,k)=Number of nXk 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201216, there is no canonical definition to state claims against.
-/

/-! ## A201216.P11038434397893750157

`A202168(n+1)+A201836(n+1)`
-/

namespace A201216.P11038434397893750157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (n + 1) + A201836 (n + 1)

end

end A201216.P11038434397893750157

/-! ## A201216.P381145662360683945

`A201836(n+1)+A097073(A144074(n)!)`
-/

namespace A201216.P381145662360683945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (n + 1) + A097073 (Nat.factorial (A144074 n).toNat)

end

end A201216.P381145662360683945

/-! ## A201216.P6090427628044713503

`A245492(A174036(n)+3)+A201836(n+1)`
-/

namespace A201216.P6090427628044713503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245492 (A174036 n + 3).toNat + A201836 (n + 1)

end

end A201216.P6090427628044713503

/-! ## A201216.P4998612653098297288

`A201836(n+1)+A085857(A176627(n)+4)`
-/

namespace A201216.P4998612653098297288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (n + 1) + A085857 (A176627 n + 4).toNat

end

end A201216.P4998612653098297288

/-! ## A201216.P11194887295720636942

`A201836(n+1)+4*A195827(A157147(n))`
-/

namespace A201216.P11194887295720636942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (n + 1) + 4 * A195827 (A157147 n).toNat

end

end A201216.P11194887295720636942

/-!
# A201217: Numbers such that (closest square) = (closest cube).

The programs for A201217, the canonical program `A201217.P11583434772116086358` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201217 has offset 1).

The definition of A201217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201217.P11583434772116086358

`lt[0, A010057(round(sqrt(n)))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A201217

/-- `lt[0, A010057(round(sqrt(n)))]` -/
def P11583434772116086358.Spec : Prop :=
  ∀ n, (P11583434772116086358.a n : ℤ) = A201217 (n + 1)

theorem P11583434772116086358.correct : P11583434772116086358.Spec := by
  intro n
  simp only [A201217, Nat.add_sub_cancel]

end A201217

/-! ## A201217.P4897686075598027470

`lt[A055401(round(sqrt(n))), 2]`
-/

namespace A201217.P4897686075598027470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A201217.P4897686075598027470

namespace A201217

/-- `lt[A055401(round(sqrt(n))), 2]` -/
def P4897686075598027470.Spec : Prop :=
  ∀ n, (P4897686075598027470.a n : ℤ) = A201217 (n + 1)

end A201217

/-! ## A201217.P6716601177995692409

`eq[0, A061023(n)]`
-/

namespace A201217.P6716601177995692409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201217.P6716601177995692409

namespace A201217

/-- `eq[0, A061023(n)]` -/
def P6716601177995692409.Spec : Prop :=
  ∀ n, (P6716601177995692409.a n : ℤ) = A201217 (n + 1)

end A201217

/-! ## A201217.P7015618125532316437

`eq[1, A010057(A000194(n))]`
-/

namespace A201217.P7015618125532316437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A000194 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201217.P7015618125532316437

namespace A201217

/-- `eq[1, A010057(A000194(n))]` -/
def P7015618125532316437.Spec : Prop :=
  ∀ n, (P7015618125532316437.a n : ℤ) = A201217 (n + 1)

end A201217

/-! ## A201217.P14291493142311245826

`eq[1, A010057(A053187(n))]`
-/

namespace A201217.P14291493142311245826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A053187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201217.P14291493142311245826

namespace A201217

/-- `eq[1, A010057(A053187(n))]` -/
def P14291493142311245826.Spec : Prop :=
  ∀ n, (P14291493142311245826.a n : ℤ) = A201217 (n + 1)

end A201217

/-! ## A201217.P15291810691445904691

`eq[A000194(n), A037213(A201053(n))]`
-/

namespace A201217.P15291810691445904691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A201053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201217.P15291810691445904691

namespace A201217

/-- `eq[A000194(n), A037213(A201053(n))]` -/
def P15291810691445904691.Spec : Prop :=
  ∀ n, (P15291810691445904691.a n : ℤ) = A201217 (n + 1)

end A201217

/-!
# A201219: a(1) = 0; for n>1, a(n) = 1 if n is a power of 2, otherwise a(n) = 2.

The programs for A201219, the canonical program `A201219.P4174117013781790206` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201219 has offset 1).

The definition of A201219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201219.P17656910526213141118

`ceil(atan(∑{p}[n+1, sqrt(#)]))`
-/

namespace A201219.P17656910526213141118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (∑ p ∈ Nat.primeFactors (f1 n), Real.sqrt (p : ℝ))⌉

end

end A201219.P17656910526213141118

namespace A201219

/-- `ceil(atan(∑{p}[n+1, sqrt(#)]))` -/
def P17656910526213141118.Spec : Prop :=
  ∀ n, P17656910526213141118.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P10899738712798433688

`round(atan(∑{p}[n+1, #])²)`
-/

namespace A201219.P10899738712798433688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ 2)

end

end A201219.P10899738712798433688

namespace A201219

/-- `round(atan(∑{p}[n+1, #])²)` -/
def P10899738712798433688.Spec : Prop :=
  ∀ n, P10899738712798433688.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P11470915687417455627

`ceil(atan(log2(∏{p}[n+1, #])))`
-/

namespace A201219.P11470915687417455627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ))⌉

end

end A201219.P11470915687417455627

namespace A201219

/-- `ceil(atan(log2(∏{p}[n+1, #])))` -/
def P11470915687417455627.Spec : Prop :=
  ∀ n, P11470915687417455627.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P10454363994230336492

`round(sinh(atan(∑{p}[n+1, #])))`
-/

namespace A201219.P10454363994230336492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ)))

end

end A201219.P10454363994230336492

namespace A201219

/-- `round(sinh(atan(∑{p}[n+1, #])))` -/
def P10454363994230336492.Spec : Prop :=
  ∀ n, P10454363994230336492.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P4174117013781790206

`2-C(2, ∏{p}[n+1, #])`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201219

/-- `2-C(2, ∏{p}[n+1, #])` -/
def P4174117013781790206.Spec : Prop :=
  ∀ n, P4174117013781790206.a n = A201219 (n + 1)

theorem P4174117013781790206.correct : P4174117013781790206.Spec := by
  intro n
  simp only [A201219, Nat.add_sub_cancel]

end A201219

/-! ## A201219.P316486752349747894

`ceil(atan(∏{p}[n+1, #]-1))`
-/

namespace A201219.P316486752349747894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - 1 : ℝ)⌉

end

end A201219.P316486752349747894

namespace A201219

/-- `ceil(atan(∏{p}[n+1, #]-1))` -/
def P316486752349747894.Spec : Prop :=
  ∀ n, P316486752349747894.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P3809678265489769425

`2-Δ[ceil(log2(2*n+1))]`
-/

namespace A201219.P3809678265489769425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A201219.P3809678265489769425

namespace A201219

/-- `2-Δ[ceil(log2(2*n+1))]` -/
def P3809678265489769425.Spec : Prop :=
  ∀ n, P3809678265489769425.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P9113463956239143034

`floor(or(n, 2*n)/(n+1))`
-/

namespace A201219.P9113463956239143034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor n (2 * n) : ℚ) / (n + 1 : ℚ)⌋

end

end A201219.P9113463956239143034

namespace A201219

/-- `floor(or(n, 2*n)/(n+1))` -/
def P9113463956239143034.Spec : Prop :=
  ∀ n, P9113463956239143034.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P16024981554418570146

`ceil(2*n/or(n, n+1))`
-/

namespace A201219.P16024981554418570146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℚ) / (Nat.lor n (n + 1) : ℚ))⌉

end

end A201219.P16024981554418570146

namespace A201219

/-- `ceil(2*n/or(n, n+1))` -/
def P16024981554418570146.Spec : Prop :=
  ∀ n, P16024981554418570146.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P9742136230800664551

`ceil(atan(and(n, -(2*n+1))))`
-/

namespace A201219.P9742136230800664551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Int.land (n : ℤ) (-(2 * n + 1 : ℤ)) : ℝ)⌉

end

end A201219.P9742136230800664551

namespace A201219

/-- `ceil(atan(and(n, -(2*n+1))))` -/
def P9742136230800664551.Spec : Prop :=
  ∀ n, P9742136230800664551.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P11536486501176024

`round(acot(Δ[ceil(log2(2*n+1))]))`
-/

namespace A201219.P11536486501176024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ))

end

end A201219.P11536486501176024

namespace A201219

/-- `round(acot(Δ[ceil(log2(2*n+1))]))` -/
def P11536486501176024.Spec : Prop :=
  ∀ n, P11536486501176024.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P11030013148735658697

`ceil(ϕ-ϕ/∏{p}[n+1, #])`
-/

namespace A201219.P11030013148735658697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio - Real.goldenRatio / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ)⌉

end

end A201219.P11030013148735658697

namespace A201219

/-- `ceil(ϕ-ϕ/∏{p}[n+1, #])` -/
def P11030013148735658697.Spec : Prop :=
  ∀ n, P11030013148735658697.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P8042221297591604009

`gcd(2, n*a(floor(n/2)))` with `a(0)=0, a(1)=1`
-/

namespace A201219.P8042221297591604009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.gcd 2 (n * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A201219.P8042221297591604009

namespace A201219

/-- `gcd(2, n*a(floor(n/2)))` -/
def P8042221297591604009.Spec : Prop :=
  ∀ n, (P8042221297591604009.a n : ℤ) = A201219 (n + 1)

end A201219

/-! ## A201219.P6906769808939156062

`ceil(and(2*n, -n)/(n+1))`
-/

namespace A201219.P6906769808939156062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land (2 * n : ℤ) (-(n : ℤ)) : ℚ) / (n + 1 : ℚ)⌉

end

end A201219.P6906769808939156062

namespace A201219

/-- `ceil(and(2*n, -n)/(n+1))` -/
def P6906769808939156062.Spec : Prop :=
  ∀ n, P6906769808939156062.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P12822761522562791688

`ceil((and(n, n+1)+n)/(n+1))`
-/

namespace A201219.P12822761522562791688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land n (n + 1) + n : ℚ) / (n + 1 : ℚ)⌉

end

end A201219.P12822761522562791688

namespace A201219

/-- `ceil((and(n, n+1)+n)/(n+1))` -/
def P12822761522562791688.Spec : Prop :=
  ∀ n, P12822761522562791688.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P11825165823005438662

`ceil(2*n/(xor(n, n+1)+n))`
-/

namespace A201219.P11825165823005438662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) / (Nat.xor n (n + 1) + n : ℚ)⌉

end

end A201219.P11825165823005438662

namespace A201219

/-- `ceil(2*n/(xor(n, n+1)+n))` -/
def P11825165823005438662.Spec : Prop :=
  ∀ n, P11825165823005438662.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P15538051430641090333

`ceil((∑{p}[n+1, #]+n)/(n+2))`
-/

namespace A201219.P15538051430641090333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (f1 n), p + n : ℕ) : ℚ) / (n + 2 : ℚ)⌉

end

end A201219.P15538051430641090333

namespace A201219

/-- `ceil((∑{p}[n+1, #]+n)/(n+2))` -/
def P15538051430641090333.Spec : Prop :=
  ∀ n, P15538051430641090333.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P11528508029362162745

`floor((and(n, n+1)+2*n)/(n+1))`
-/

namespace A201219.P11528508029362162745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land n (n + 1) + 2 * n : ℚ) / (n + 1 : ℚ)⌋

end

end A201219.P11528508029362162745

namespace A201219

/-- `floor((and(n, n+1)+2*n)/(n+1))` -/
def P11528508029362162745.Spec : Prop :=
  ∀ n, P11528508029362162745.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P1373260493832631245

`round((or(n, 2*n)+n)/(2*n+1))`
-/

namespace A201219.P1373260493832631245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor n (2 * n) + n : ℚ) / (2 * n + 1 : ℚ))

end

end A201219.P1373260493832631245

namespace A201219

/-- `round((or(n, 2*n)+n)/(2*n+1))` -/
def P1373260493832631245.Spec : Prop :=
  ∀ n, P1373260493832631245.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P1500069797880847654

`ceil((∏{p}[n+1, #]+n-1)/(n+1))`
-/

namespace A201219.P1500069797880847654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + ((n : ℤ) - 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A201219.P1500069797880847654

namespace A201219

/-- `ceil((∏{p}[n+1, #]+n-1)/(n+1))` -/
def P1500069797880847654.Spec : Prop :=
  ∀ n, P1500069797880847654.a n = A201219 (n + 1)

end A201219

/-!
# A201220: Numbers m such that m, m-1, m-2 and m-3 are 1,2,3,4-almost primes respectively.

The programs for A201220, there is no canonical definition to state claims against.
-/

/-! ## A201220.P6280306008486677235

`∩[A144396(A063640(n+1)), A063642(n+1)]`
-/

namespace A201220.P6280306008486677235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A063640 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201220.P6280306008486677235

/-! ## A201220.P5377501983687368772

`∩[A144396(A063640(n+1)), A201147(n+1)]`
-/

namespace A201220.P5377501983687368772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A063640 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201220.P5377501983687368772

/-!
# A201222: Number of ways to place k non-attacking knights on a 2 X n horizontal cylinder, summed over all k>=0.

The programs for A201222, there is no canonical definition to state claims against.
-/

/-! ## A201222.P1123643053909133208

`A208982(A020641(n+2))`
-/

namespace A201222.P1123643053909133208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208982 (A020641 (n + 2)).toNat

end

end A201222.P1123643053909133208

/-!
# A201224: E.g.f.: -log(cos(x) - x).

The programs for A201224, there is no canonical definition to state claims against.
-/

/-! ## A201224.P13794215221357782706

`∑[A175018(A175935(n))]`
-/

namespace A201224.P13794215221357782706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175018 (A175935 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201224.P13794215221357782706

/-! ## A201224.P13387489278786401428

`A130497(A005315(n+1))+n`
-/

namespace A201224.P13387489278786401428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A005315 (n + 1)).toNat + (n : ℤ)

end

end A201224.P13387489278786401428

/-!
# A201228: Number of n X n 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201228, there is no canonical definition to state claims against.
-/

/-! ## A201228.P408252208906136549

`A201235(∑[4*n]+1)`
-/

namespace A201228.P408252208906136549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201228.P408252208906136549

/-! ## A201228.P17583300681374660236

`A201235(A001844(n))+char[7]`
-/

namespace A201228.P17583300681374660236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201228.P17583300681374660236

/-! ## A201228.P7110881480110781810

`A308930(n)+A201235(A001844(n))`
-/

namespace A201228.P7110881480110781810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308930 n + A201235 (A001844 n).toNat

end

end A201228.P7110881480110781810

/-!
# A201229: Number of nX2 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201229, there is no canonical definition to state claims against.
-/

/-! ## A201229.P2314356367205288678

`A201235(∑[n+1]+2)`
-/

namespace A201229.P2314356367205288678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201229.P2314356367205288678

/-! ## A201229.P1239781430490108080

`lcm(A201235(A000096(n)+3), A219208(n))`
-/

namespace A201229.P1239781430490108080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A201235 (A000096 n + 3).toNat) (A219208 n)

end

end A201229.P1239781430490108080

/-! ## A201229.P17192084906393689703

`A201235(A000096(n)+3)%A219216(n+1)`
-/

namespace A201229.P17192084906393689703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201235 (A000096 n + 3).toNat) (A219216 (n + 1))

end

end A201229.P17192084906393689703

/-! ## A201229.P5771602618958745509

`A335446(2*n+1)+A201235(A000096(n)+3)`
-/

namespace A201229.P5771602618958745509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (2 * n + 1) + A201235 (A000096 n + 3).toNat

end

end A201229.P5771602618958745509

/-! ## A201229.P10483078907554209303

`A201235(A000096(n+1))+A014083(n)`
-/

namespace A201229.P10483078907554209303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A000096 (n + 1)).toNat + A014083 n

end

end A201229.P10483078907554209303

/-!
# A201230: Number of nX3 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201230, there is no canonical definition to state claims against.
-/

/-! ## A201230.P4833465550271799722

`A201235(∑[n+2]+4)`
-/

namespace A201230.P4833465550271799722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201230.P4833465550271799722

/-! ## A201230.P719998698483948140

`lcm(1-and(2, n), A201235(A167614(n+1)))`
-/

namespace A201230.P719998698483948140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A201235 (A167614 (n + 1)).toNat)

end

end A201230.P719998698483948140

/-! ## A201230.P7184453834135281503

`A201235(A167614(n+1))+A014083(n)`
-/

namespace A201230.P7184453834135281503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167614 (n + 1)).toNat + A014083 n

end

end A201230.P7184453834135281503

/-! ## A201230.P9457506708896677761

`A201235(A167614(n+1))+A025439(n)`
-/

namespace A201230.P9457506708896677761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167614 (n + 1)).toNat + A025439 n

end

end A201230.P9457506708896677761

/-! ## A201230.P2078953851702928213

`A201235(A167614(n+1))+A025466(n)`
-/

namespace A201230.P2078953851702928213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167614 (n + 1)).toNat + A025466 n

end

end A201230.P2078953851702928213

/-!
# A201231: Number of nX4 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201231, there is no canonical definition to state claims against.
-/

/-! ## A201231.P4606768463539514387

`A201235(A374004(n+1))`
-/

namespace A201231.P4606768463539514387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A374004 (n + 1)).toNat

end

end A201231.P4606768463539514387

/-! ## A201231.P16888008665679790854

`A201235(A141214(n)+7)`
-/

namespace A201231.P16888008665679790854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A141214 n + 7).toNat

end

end A201231.P16888008665679790854

/-! ## A201231.P3192924514750121834

`A201235(A052905(n)+9)`
-/

namespace A201231.P3192924514750121834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A052905 n + 9).toNat

end

end A201231.P3192924514750121834

/-! ## A201231.P6888092195642860192

`A201235(A055999(n)+10)`
-/

namespace A201231.P6888092195642860192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A055999 n + 10).toNat

end

end A201231.P6888092195642860192

/-! ## A201231.P4593535498210329695

`A201235(eq[5, A066657(n)])`
-/

namespace A201231.P4593535498210329695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201231.P4593535498210329695

/-!
# A201232: Number of n X 5 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201232, there is no canonical definition to state claims against.
-/

/-! ## A201232.P16487568659841125208

`A201235(A374005(n+1))`
-/

namespace A201232.P16487568659841125208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A374005 (n + 1)).toNat

end

end A201232.P16487568659841125208

/-! ## A201232.P6359137738799374092

`A201235(A167499(n+3))`
-/

namespace A201232.P6359137738799374092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167499 (n + 3)).toNat

end

end A201232.P6359137738799374092

/-! ## A201232.P17296354523260929100

`A201235(A155212(n)+13)`
-/

namespace A201232.P17296354523260929100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A155212 n + 13).toNat

end

end A201232.P17296354523260929100

/-! ## A201232.P11755197517300581786

`A201235(eq[7, A066657(n)])`
-/

namespace A201232.P11755197517300581786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201232.P11755197517300581786

/-! ## A201232.P8156186169680903663

`A201235(A000217(n+4)+5)`
-/

namespace A201232.P8156186169680903663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A000217 (n + 4) + 5).toNat

end

end A201232.P8156186169680903663

/-!
# A201233: Number of nX6 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201233, there is no canonical definition to state claims against.
-/

/-! ## A201233.P3122512985647560899

`A201235(A374007(n+1))`
-/

namespace A201233.P3122512985647560899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A374007 (n + 1)).toNat

end

end A201233.P3122512985647560899

/-! ## A201233.P10642160255830202279

`A201235(A166136(n+4))`
-/

namespace A201233.P10642160255830202279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A166136 (n + 4)).toNat

end

end A201233.P10642160255830202279

/-! ## A201233.P6260591176706259023

`A201235(A056115(n)+21)`
-/

namespace A201233.P6260591176706259023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A056115 n + 21).toNat

end

end A201233.P6260591176706259023

/-! ## A201233.P4559861748735311262

`A201235(A167499(n+4)+1)`
-/

namespace A201233.P4559861748735311262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167499 (n + 4) + 1).toNat

end

end A201233.P4559861748735311262

/-! ## A201233.P13367089431809161247

`A201235(A167614(n+4)+3)`
-/

namespace A201233.P13367089431809161247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167614 (n + 4) + 3).toNat

end

end A201233.P13367089431809161247

/-!
# A201234: Number of n X 7 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201234, there is no canonical definition to state claims against.
-/

/-! ## A201234.P879364140210573563

`A201235(A374008(n+1))`
-/

namespace A201234.P879364140210573563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A374008 (n + 1)).toNat

end

end A201234.P879364140210573563

/-! ## A201234.P16261398535542425579

`A201235(A055999(n+4))`
-/

namespace A201234.P16261398535542425579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A055999 (n + 4)).toNat

end

end A201234.P16261398535542425579

/-! ## A201234.P15930697648008419882

`A201235(A056119(n)+28)`
-/

namespace A201234.P15930697648008419882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A056119 n + 28).toNat

end

end A201234.P15930697648008419882

/-! ## A201234.P6163090625790696425

`A201235(eq[4, A219347(n)])`
-/

namespace A201234.P6163090625790696425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201234.P6163090625790696425

/-!
# A201236: Number of ways to place 2 non-attacking wazirs on an n X n toroidal board.

The programs for A201236, the canonical program `A201236.P7747582269266164753` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201236 has offset 1).

The definition of A201236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201236.P7747582269266164753

`ogf((2x+8x^2+18x^3-30x^4+18x^5-4x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201236

/-- `ogf((2x+8x^2+18x^3-30x^4+18x^5-4x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P7747582269266164753.Spec : Prop :=
  ∀ n, P7747582269266164753.a n = A201236 (n + 1)

theorem P7747582269266164753.correct : P7747582269266164753.Spec := by
  intro n
  simp only [A201236, Nat.add_sub_cancel]

end A201236

/-! ## A201236.P15099139375137482487

`abs(abs(C((n+1)², 2)-(n+1)²)-(n+1)²)`
-/

namespace A201236.P15099139375137482487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(Nat.choose ((n + 1) ^ 2) 2 : ℤ) - ((n + 1) ^ 2 : ℤ)| - ((n + 1) ^ 2 : ℤ))|

end

end A201236.P15099139375137482487

namespace A201236

/-- `abs(abs(C((n+1)², 2)-(n+1)²)-(n+1)²)` -/
def P15099139375137482487.Spec : Prop :=
  ∀ n, P15099139375137482487.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P508849111097795593

`(A289207(n)+n²/2)*(n+1)²`
-/

namespace A201236.P508849111097795593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A289207 n : ℚ) + (n ^ 2 : ℚ) / 2) * ((n + 1) ^ 2 : ℚ)

end

end A201236.P508849111097795593

namespace A201236

/-- `(A289207(n)+n²/2)*(n+1)²` -/
def P508849111097795593.Spec : Prop :=
  ∀ n, P508849111097795593.a n = (A201236 (n + 1) : ℚ)

end A201236

/-! ## A201236.P15424462073453370972

`abs(abs(A172225(n+1)-(n+1))-(n+1))`
-/

namespace A201236.P15424462073453370972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A172225 (n + 1) - (n + 1 : ℤ)| - (n + 1 : ℤ))|

end

end A201236.P15424462073453370972

namespace A201236

/-- `abs(abs(A172225(n+1)-(n+1))-(n+1))` -/
def P15424462073453370972.Spec : Prop :=
  ∀ n, P15424462073453370972.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P7855011031271145408

`A194650(n+1)+record[A014107(n)]`
-/

namespace A201236.P7855011031271145408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194650 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201236.P7855011031271145408

namespace A201236

/-- `A194650(n+1)+record[A014107(n)]` -/
def P7855011031271145408.Spec : Prop :=
  ∀ n, P7855011031271145408.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P6913853551685333327

`A194650(n+1)+A000096(comp[2*(n+1)])`
-/

namespace A201236.P6913853551685333327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194650 (n + 1) + A000096 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A201236.P6913853551685333327

namespace A201236

/-- `A194650(n+1)+A000096(comp[2*(n+1)])` -/
def P6913853551685333327.Spec : Prop :=
  ∀ n, P6913853551685333327.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P2410035804148995100

`abs(abs(A000217(abs(1-(n+1)²))-(n+1)²)-(n+1)²)`
-/

namespace A201236.P2410035804148995100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(A000217 |1 - ((n + 1) ^ 2 : ℤ)|.toNat - ((n + 1) ^ 2 : ℤ))| - ((n + 1) ^ 2 : ℤ))|

end

end A201236.P2410035804148995100

namespace A201236

/-- `abs(abs(A000217(abs(1-(n+1)²))-(n+1)²)-(n+1)²)` -/
def P2410035804148995100.Spec : Prop :=
  ∀ n, P2410035804148995100.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P3908509307517656922

`(n+1)*Δ[A022856(A000124(n))]`
-/

namespace A201236.P3908509307517656922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A201236.P3908509307517656922

namespace A201236

/-- `(n+1)*Δ[A022856(A000124(n))]` -/
def P3908509307517656922.Spec : Prop :=
  ∀ n, P3908509307517656922.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P15938434877319041108

`Δ[A022856(A000124(n))]*A008619(2*n)`
-/

namespace A201236.P15938434877319041108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 (2 * n)

end

end A201236.P15938434877319041108

namespace A201236

/-- `Δ[A022856(A000124(n))]*A008619(2*n)` -/
def P15938434877319041108.Spec : Prop :=
  ∀ n, P15938434877319041108.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P6017183610380754547

`Δ[A022856(A000124(n))]*A008611(3*n)`
-/

namespace A201236.P6017183610380754547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008611 (3 * n)

end

end A201236.P6017183610380754547

namespace A201236

/-- `Δ[A022856(A000124(n))]*A008611(3*n)` -/
def P6017183610380754547.Spec : Prop :=
  ∀ n, P6017183610380754547.a n = A201236 (n + 1)

end A201236

/-!
# A201237: Number of ways to place 3 non-attacking wazirs on an n X n toroidal board.

The programs for A201237, the canonical program `A201237.P16957327194066367592` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201237 has offset 1).

The definition of A201237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201237.P16957327194066367592

`ogf((6x^2+166x^3-30x^4-34x^5-14x^6+50x^7-30x^8+6x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201237

/-- `ogf((6x^2+166x^3-30x^4-34x^5-14x^6+50x^7-30x^8+6x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P16957327194066367592.Spec : Prop :=
  ∀ n, P16957327194066367592.a n = A201237 (n + 1)

theorem P16957327194066367592.correct : P16957327194066367592.Spec := by
  intro n
  simp only [A201237, Nat.add_sub_cancel]

end A201237

/-!
# A201238: Number of ways to place 4 non-attacking wazirs on an n X n toroidal board.

The programs for A201238, there is no canonical definition to state claims against.
-/

/-! ## A201238.P7840404320255790852

`xor(3, A351561(A281312(n+1)))`
-/

namespace A201238.P7840404320255790852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A351561 (A281312 (n + 1)).toNat)

end

end A201238.P7840404320255790852

/-!
# A201239: Number of ways to place 5 non-attacking wazirs on an n X n toroidal board.

The programs for A201239, there is no canonical definition to state claims against.
-/

/-! ## A201239.P9926438373150301006

`Δ[A279403(A112527(n+1))²]`
-/

namespace A201239.P9926438373150301006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279403 (A112527 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201239.P9926438373150301006

/-!
# A201240: Number of ways to place 6 non-attacking wazirs on an n X n toroidal board.

The programs for A201240, there is no canonical definition to state claims against.
-/

/-! ## A201240.P3030407079272541805

`A336866(A219653(n)²-n)`
-/

namespace A201240.P3030407079272541805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336866 (A219653 n ^ 2 - (n : ℤ)).toNat

end

end A201240.P3030407079272541805

/-!
# A201241: Number of ways to place 7 non-attacking wazirs on an n X n toroidal board.

The programs for A201241, there is no canonical definition to state claims against.
-/

/-! ## A201241.P15577198286298594963

`A022479(Δ[record[∏{digits}[2^n, #]]])`
-/

namespace A201241.P15577198286298594963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022479 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A201241.P15577198286298594963

/-!
# A201242: Number of ways to place 8 non-attacking wazirs on an n X n toroidal board.

The programs for A201242, there is no canonical definition to state claims against.
-/

/-! ## A201242.P5653070672410666298

`floor(A030246(n)/32)`
-/

namespace A201242.P5653070672410666298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030246 n : ℚ) / 32⌋

end

end A201242.P5653070672410666298

/-!
# A201243: Number of ways to place 2 non-attacking ferses on an n X n board.

The programs for A201243, the canonical program `A201243.P7871613985086963161` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201243 has offset 1).

The definition of A201243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201243.P395168179665130155

`ogf((4x+8x^2+2x^3-2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A201243.P395168179665130155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 8, 2, -2] [1, -5, 10, -10, 5, -1] n

end

end A201243.P395168179665130155

namespace A201243

/-- `ogf((4x+8x^2+2x^3-2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P395168179665130155.Spec : Prop :=
  ∀ n, P395168179665130155.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P2851002178408954505

`n*((n+1)^3+(n+1)²-4*(n+1)+4)/2`
-/

namespace A201243.P2851002178408954505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (((n + 1) ^ 3 + (n + 1) ^ 2 : ℤ) - (4 * (n + 1) : ℤ) + 4) : ℚ) / 2

end

end A201243.P2851002178408954505

namespace A201243

/-- `n*((n+1)^3+(n+1)²-4*(n+1)+4)/2` -/
def P2851002178408954505.Spec : Prop :=
  ∀ n, P2851002178408954505.a n = (A201243 (n + 1) : ℚ)

theorem P2851002178408954505.correct : P2851002178408954505.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A201243, Nat.add_sub_cancel, A201243.P2851002178408954505.a, A201243.P7871613985086963161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A201243, Nat.add_sub_cancel, A201243.P2851002178408954505.a, A201243.P7871613985086963161.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A201243

/-! ## A201243.P7871613985086963161

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=28, a(3)=102, a(4)=268`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201243

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7871613985086963161.Spec : Prop :=
  ∀ n, P7871613985086963161.a n = A201243 (n + 1)

theorem P7871613985086963161.correct : P7871613985086963161.Spec := by
  intro n
  simp only [A201243, Nat.add_sub_cancel]

end A201243

/-! ## A201243.P18246665941338472023

`C((n+1)², 2)-2*n²`
-/

namespace A201243.P18246665941338472023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℤ) - (2 * n ^ 2 : ℤ)

end

end A201243.P18246665941338472023

namespace A201243

/-- `C((n+1)², 2)-2*n²` -/
def P18246665941338472023.Spec : Prop :=
  ∀ n, P18246665941338472023.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P17430234214944423236

`n*(A393231(n+1)+1)`
-/

namespace A201243.P17430234214944423236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A393231 (n + 1) + 1)

end

end A201243.P17430234214944423236

namespace A201243

/-- `n*(A393231(n+1)+1)` -/
def P17430234214944423236.Spec : Prop :=
  ∀ n, P17430234214944423236.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P16344478853543012305

`A172225(n+1)+2*n`
-/

namespace A201243.P16344478853543012305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172225 (n + 1) + (2 * n : ℤ)

end

end A201243.P16344478853543012305

namespace A201243

/-- `A172225(n+1)+2*n` -/
def P16344478853543012305.Spec : Prop :=
  ∀ n, P16344478853543012305.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P9837421029528549854

`A083374(n+1)-2*n²`
-/

namespace A201243.P9837421029528549854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) - (2 * n ^ 2 : ℤ)

end

end A201243.P9837421029528549854

namespace A201243

/-- `A083374(n+1)-2*n²` -/
def P9837421029528549854.Spec : Prop :=
  ∀ n, P9837421029528549854.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P9110611789489541923

`A061317(n)+A037270(n)`
-/

namespace A201243.P9110611789489541923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061317 n + A037270 n

end

end A201243.P9110611789489541923

namespace A201243

/-- `A061317(n)+A037270(n)` -/
def P9110611789489541923.Spec : Prop :=
  ∀ n, P9110611789489541923.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P12654863366001993308

`A163102(n)+A034262(n)`
-/

namespace A201243.P12654863366001993308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n + A034262 n

end

end A201243.P12654863366001993308

namespace A201243

/-- `A163102(n)+A034262(n)` -/
def P12654863366001993308.Spec : Prop :=
  ∀ n, P12654863366001993308.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P465557045839302064

`A101374(n)+A099721(n)`
-/

namespace A201243.P465557045839302064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 n + A099721 n

end

end A201243.P465557045839302064

namespace A201243

/-- `A101374(n)+A099721(n)` -/
def P465557045839302064.Spec : Prop :=
  ∀ n, P465557045839302064.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P4419153087221121369

`A255499(n)+A027444(n)`
-/

namespace A201243.P4419153087221121369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n + A027444 n

end

end A201243.P4419153087221121369

namespace A201243

/-- `A255499(n)+A027444(n)` -/
def P4419153087221121369.Spec : Prop :=
  ∀ n, P4419153087221121369.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P1537062170113835913

`A058310(n)-A005891(n)`
-/

namespace A201243.P1537062170113835913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058310 n - A005891 n

end

end A201243.P1537062170113835913

namespace A201243

/-- `A058310(n)-A005891(n)` -/
def P1537062170113835913.Spec : Prop :=
  ∀ n, P1537062170113835913.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P17013514011869298419

`A147875(n)+A135916(n+1)`
-/

namespace A201243.P17013514011869298419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n + A135916 (n + 1)

end

end A201243.P17013514011869298419

namespace A201243

/-- `A147875(n)+A135916(n+1)` -/
def P17013514011869298419.Spec : Prop :=
  ∀ n, P17013514011869298419.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P6146476201084160994

`A289223(n+2)+A016742(n)`
-/

namespace A201243.P6146476201084160994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289223 (n + 2) + A016742 n

end

end A201243.P6146476201084160994

namespace A201243

/-- `A289223(n+2)+A016742(n)` -/
def P6146476201084160994.Spec : Prop :=
  ∀ n, P6146476201084160994.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P9721167078047509237

`A034262(n)+2*A000217(n)²`
-/

namespace A201243.P9721167078047509237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + 2 * A000217 n ^ 2

end

end A201243.P9721167078047509237

namespace A201243

/-- `A034262(n)+2*A000217(n)²` -/
def P9721167078047509237.Spec : Prop :=
  ∀ n, P9721167078047509237.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P11870874095582791244

`A085740(n+1)+A085740(n)-n²`
-/

namespace A201243.P11870874095582791244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085740 (n + 1) + (A085740 n - (n ^ 2 : ℤ))

end

end A201243.P11870874095582791244

namespace A201243

/-- `A085740(n+1)+A085740(n)-n²` -/
def P11870874095582791244.Spec : Prop :=
  ∀ n, P11870874095582791244.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P4217696711689840875

`A034262(n)+A000217(n)*A002378(n)`
-/

namespace A201243.P4217696711689840875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + A000217 n * A002378 n

end

end A201243.P4217696711689840875

namespace A201243

/-- `A034262(n)+A000217(n)*A002378(n)` -/
def P4217696711689840875.Spec : Prop :=
  ∀ n, P4217696711689840875.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P11903024174739882337

`A085740(n+1)+A085740(n)-A000290(n)`
-/

namespace A201243.P11903024174739882337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085740 (n + 1) + A085740 n - A000290 n

end

end A201243.P11903024174739882337

namespace A201243

/-- `A085740(n+1)+A085740(n)-A000290(n)` -/
def P11903024174739882337.Spec : Prop :=
  ∀ n, P11903024174739882337.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P15386486182375621639

`2*(A239352(n+1)+n)`
-/

namespace A201243.P15386486182375621639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A239352 (n + 1) + (n : ℤ))

end

end A201243.P15386486182375621639

namespace A201243

/-- `2*(A239352(n+1)+n)` -/
def P15386486182375621639.Spec : Prop :=
  ∀ n, P15386486182375621639.a n = A201243 (n + 1)

end A201243

/-!
# A201244: Number of ways to place 3 non-attacking ferses on an n X n board.

The programs for A201244, the canonical program `A201244.P5822018082911817711` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201244 has offset 1).

The definition of A201244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201244.P5822018082911817711

`ogf((38x^2+74x^3+48x^4-48x^5+6x^6+2x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201244

/-- `ogf((38x^2+74x^3+48x^4-48x^5+6x^6+2x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P5822018082911817711.Spec : Prop :=
  ∀ n, P5822018082911817711.a n = A201244 (n + 1)

theorem P5822018082911817711.correct : P5822018082911817711.Spec := by
  intro n
  simp only [A201244, Nat.add_sub_cancel]

end A201244

/-!
# A201247: Number of ways to place 6 non-attacking ferses on an n X n board.

The programs for A201247, there is no canonical definition to state claims against.
-/

/-! ## A201247.P4820335539469497821

`A002620(A001372(∑[lcm(2, n)/2]))`
-/

namespace A201247.P4820335539469497821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A001372 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A201247.P4820335539469497821

/-!
# A201248: Number of ways to place 7 non-attacking ferses on an n X n board.

The programs for A201248, there is no canonical definition to state claims against.
-/

/-! ## A201248.P3960356778425749902

`A000217(A353651(n+1))*A379720(A000162(n+1))`
-/

namespace A201248.P3960356778425749902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A353651 (n + 1)).toNat * A379720 (A000162 (n + 1)).toNat

end

end A201248.P3960356778425749902

/-!
# A201249: Initial primes in prime septuplets (p, p+2, p+6, p+8, p+12, p+18, p+20) preceding the maximal gaps in A201051.

The programs for A201249, there is no canonical definition to state claims against.
-/

/-! ## A201249.P11871710706081564168

`A233425(n+1)-A201051(n+1)`
-/

namespace A201249.P11871710706081564168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233425 (n + 1) - A201051 (n + 1)

end

end A201249.P11871710706081564168

/-! ## A201249.P6088498881958449786

`A233425(n+1)-record[Δ[A022009(n+1)]]`
-/

namespace A201249.P6088498881958449786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233425 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201249.P6088498881958449786

/-! ## A201249.P2057680182430471554

`A233425(n+1)-record[A022009(n+2)-A022009(n+1)]`
-/

namespace A201249.P2057680182430471554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 2) - A022009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233425 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201249.P2057680182430471554

/-!
# A201251: Record (maximal) gaps between prime septuplets (p, p+2, p+8, p+12, p+14, p+18, p+20).

The programs for A201251, there is no canonical definition to state claims against.
-/

/-! ## A201251.P1014110774776217400

`A233038(n+1)-A201252(n+1)`
-/

namespace A201251.P1014110774776217400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233038 (n + 1) - A201252 (n + 1)

end

end A201251.P1014110774776217400

/-! ## A201251.P16717261703668939401

`record[Δ[A022010(n+1)]]`
-/

namespace A201251.P16717261703668939401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201251.P16717261703668939401

/-! ## A201251.P15491540297843605641

`record[A022010(n+2)-A022010(n+1)]`
-/

namespace A201251.P15491540297843605641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 2) - A022010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201251.P15491540297843605641

/-!
# A201252: Initial primes in prime septuplets (p, p+2, p+8, p+12, p+14, p+18, p+20) preceding the maximal gaps in A201251.

The programs for A201252, there is no canonical definition to state claims against.
-/

/-! ## A201252.P6083831931098674012

`A233038(n+1)-A201251(n+1)`
-/

namespace A201252.P6083831931098674012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233038 (n + 1) - A201251 (n + 1)

end

end A201252.P6083831931098674012

/-! ## A201252.P15363030901161879465

`A233038(n+1)-record[Δ[A022010(n+1)]]`
-/

namespace A201252.P15363030901161879465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233038 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201252.P15363030901161879465

/-! ## A201252.P16748789266143475436

`A233038(n+1)-record[A022010(n+2)-A022010(n+1)]`
-/

namespace A201252.P16748789266143475436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 2) - A022010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233038 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201252.P16748789266143475436

/-!
# A201254: Primes of the form 7n^3+5.

The programs for A201254, there is no canonical definition to state claims against.
-/

/-! ## A201254.P10198699041972535896

`p?[7*n^3+5]`
-/

namespace A201254.P10198699041972535896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201254.P10198699041972535896

/-!
# A201256: Primes of the form 7k^3+8.

The programs for A201256, there is no canonical definition to state claims against.
-/

/-! ## A201256.P6498896384330636657

`p?[7*n^3+8]`
-/

namespace A201256.P6498896384330636657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201256.P6498896384330636657

/-!
# A201257: Primes of the form 7n^3+9.

The programs for A201257, there is no canonical definition to state claims against.
-/

/-! ## A201257.P11311748965815780079

`p?[7*n^3+9]`
-/

namespace A201257.P11311748965815780079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201257.P11311748965815780079

/-!
# A201258: Primes of the form 7*n^3 + 10.

The programs for A201258, there is no canonical definition to state claims against.
-/

/-! ## A201258.P2752888146192090626

`p?[7*n^3+10]`
-/

namespace A201258.P2752888146192090626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201258.P2752888146192090626

/-! ## A201258.P11958466932748049831

`round(sqrt(p?[7*n*n²+10]²+1))`
-/

namespace A201258.P11958466932748049831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n * n ^ 2) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A201258.P11958466932748049831

/-!
# A201259: Primes of the form n^3+3.

The programs for A201259, the canonical program `A201259.P16614551536758072838` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201259 has offset 1).

The definition of A201259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201259.P16614551536758072838

`A049441(1+n)^3+3`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A201259

/-- `A049441(1+n)^3+3` -/
def P16614551536758072838.Spec : Prop :=
  ∀ n, P16614551536758072838.a n = A201259 (n + 1)

theorem P16614551536758072838.correct : P16614551536758072838.Spec := by
  intro n
  simp only [A201259, Nat.add_sub_cancel]

end A201259

/-! ## A201259.P5227868289963520558

`A084378(A049441(n+1))`
-/

namespace A201259.P5227868289963520558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084378 (A049441 (n + 1)).toNat

end

end A201259.P5227868289963520558

namespace A201259

/-- `A084378(A049441(n+1))` -/
def P5227868289963520558.Spec : Prop :=
  ∀ n, P5227868289963520558.a n = A201259 (n + 1)

end A201259

/-! ## A201259.P1004421278726490646

`xor(3, A000578(A049441(1-(n-2*n))))`
-/

namespace A201259.P1004421278726490646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A000578 (A049441 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat)

end

end A201259.P1004421278726490646

namespace A201259

/-- `xor(3, A000578(A049441(1-(n-2*n))))` -/
def P1004421278726490646.Spec : Prop :=
  ∀ n, P1004421278726490646.a n = A201259 (n + 1)

end A201259

/-! ## A201259.P8385536255027442082

`A084378(eq[A121842(n), A157532(n+1)])`
-/

namespace A201259.P8385536255027442082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084378 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A201259.P8385536255027442082

namespace A201259

/-- `A084378(eq[A121842(n), A157532(n+1)])` -/
def P8385536255027442082.Spec : Prop :=
  ∀ n, P8385536255027442082.a n = A201259 (n + 1)

end A201259

/-! ## A201259.P3875666905858526435

`A084381(eq[A121842(n), A157532(n+1)])-2`
-/

namespace A201259.P3875666905858526435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084381 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 2

end

end A201259.P3875666905858526435

namespace A201259

/-- `A084381(eq[A121842(n), A157532(n+1)])-2` -/
def P3875666905858526435.Spec : Prop :=
  ∀ n, P3875666905858526435.a n = A201259 (n + 1)

end A201259

/-!
# A201260: Primes of the form k^3 + 5.

The programs for A201260, there is no canonical definition to state claims against.
-/

/-! ## A201260.P13432246822399981968

`p?[n^3+5]`
-/

namespace A201260.P13432246822399981968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201260.P13432246822399981968

/-! ## A201260.P6570446566655874891

`or(1, p?[n*n²+5])`
-/

namespace A201260.P6570446566655874891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201260.P6570446566655874891

/-! ## A201260.P9547791545642488795

`or(1, p?[xor(5, n^3)]-1)`
-/

namespace A201260.P9547791545642488795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A201260.P9547791545642488795

/-! ## A201260.P3833852810605008792

`record[A020639(A084381(n))]`
-/

namespace A201260.P3833852810605008792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084381 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201260.P3833852810605008792

/-!
# A201261: Primes of the form n^3 + 7.

The programs for A201261, there is no canonical definition to state claims against.
-/

/-! ## A201261.P2809586707866206411

`p?[n^3+7]`
-/

namespace A201261.P2809586707866206411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201261.P2809586707866206411

/-! ## A201261.P14291454429940415209

`or(1, p?[xor(7, n^3)])`
-/

namespace A201261.P14291454429940415209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201261.P14291454429940415209

/-! ## A201261.P13485195566605979232

`or(2, p?[n*n²+7])`
-/

namespace A201261.P13485195566605979232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201261.P13485195566605979232

/-! ## A201261.P4474694135804483328

`xor(1, p?[n*n²+7])+1`
-/

namespace A201261.P4474694135804483328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A201261.P4474694135804483328

/-!
# A201262: Primes of the form n^3 + 9.

The programs for A201262, there is no canonical definition to state claims against.
-/

/-! ## A201262.P16849194136640779740

`p?[n^3+9]`
-/

namespace A201262.P16849194136640779740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201262.P16849194136640779740

/-! ## A201262.P6230075466666146239

`or(1, p?[n*n²+9])`
-/

namespace A201262.P6230075466666146239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201262.P6230075466666146239

/-! ## A201262.P17289871954078126344

`xor(1, p?[n*n²+9])+1`
-/

namespace A201262.P17289871954078126344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A201262.P17289871954078126344

/-! ## A201262.P9217058723405261482

`record[p?[A109595(n+1)+9]]`
-/

namespace A201262.P9217058723405261482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (n + 1) + 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201262.P9217058723405261482

/-!
# A201263: Primes of the form 9*n^3 + 1.

The programs for A201263, there is no canonical definition to state claims against.
-/

/-! ## A201263.P18360232702499324325

`p?[9*n^3+1]`
-/

namespace A201263.P18360232702499324325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201263.P18360232702499324325

/-! ## A201263.P15491075091166226439

`or(1, p?[n*(3*n)²+1])`
-/

namespace A201263.P15491075091166226439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201263.P15491075091166226439

/-! ## A201263.P16464622535219373104

`xor(2, p?[n*(3*n)²+1]+1)+1`
-/

namespace A201263.P16464622535219373104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) + 1

end

end A201263.P16464622535219373104

/-!
# A201264: Primes of the form 9n^3+2.

The programs for A201264, there is no canonical definition to state claims against.
-/

/-! ## A201264.P11994558534784467932

`p?[9*n^3+2]`
-/

namespace A201264.P11994558534784467932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201264.P11994558534784467932

/-! ## A201264.P10422284740068878587

`p?[n*(3*n)²+2]-A308920(n)`
-/

namespace A201264.P10422284740068878587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A308920 n

end

end A201264.P10422284740068878587

/-! ## A201264.P10094622748276063077

`p?[A244728(n)+2]^A007318(∑[n])`
-/

namespace A201264.P10094622748276063077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244728 n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A201264.P10094622748276063077

/-!
# A201265: Primes of the form 9n^3+4.

The programs for A201265, there is no canonical definition to state claims against.
-/

/-! ## A201265.P3154987056780304590

`p?[9*n^3+4]`
-/

namespace A201265.P3154987056780304590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201265.P3154987056780304590

/-!
# A201268: Distances d=x^3-y^2 for primary extremal points {x,y} of Mordell elliptic curves with quadratic extensions over rationals.

The programs for A201268, there is no canonical definition to state claims against.
-/

/-! ## A201268.P2506470774765456742

`A201047(n+1)^3-A201269(n+1)²`
-/

namespace A201268.P2506470774765456742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201047 (n + 1) ^ 3 - A201269 (n + 1) ^ 2

end

end A201268.P2506470774765456742

/-! ## A201268.P4788629391571514118

`A200658(∑[A055151(n)])`
-/

namespace A201268.P4788629391571514118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201268.P4788629391571514118

/-! ## A201268.P155463520195468974

`A200658(∑[A143953(n)])`
-/

namespace A201268.P155463520195468974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201268.P155463520195468974

/-!
# A201269: Coordinates y of points {x,y} of Mordell elliptic curves x^3-y^2 for primary extremal points with quadratic extensions over rationals.

The programs for A201269, there is no canonical definition to state claims against.
-/

/-! ## A201269.P10995214550005866140

`sqrt(A201047(n+1)^3-A201268(n+1))`
-/

namespace A201269.P10995214550005866140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A201047 (n + 1) ^ 3 - A201268 (n + 1) : ℝ)

end

end A201269.P10995214550005866140

/-! ## A201269.P5489962543581602091

`round(sqrt(A201047(n+1))^3)`
-/

namespace A201269.P5489962543581602091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A201047 (n + 1) : ℝ) ^ 3)

end

end A201269.P5489962543581602091

/-! ## A201269.P16176328652385631990

`A200657(comp[a(n-2)+7])` with `a(0)=0, a(1)=6`
-/

namespace A201269.P16176328652385631990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200657 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A201269.P16176328652385631990

/-!
# A201271: Number of n X 2 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201271, the canonical program `A201271.P5458963224366856193` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201271 has offset 0).

The definition of A201271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201271.P1149265669926518776

`ogf((1+3x+5x^2+x^3+3x^4+x^5)/(1-3x^3+3x^6-x^9))`
-/

namespace A201271.P1149265669926518776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 1, 3, 1] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] n

end

end A201271.P1149265669926518776

namespace A201271

/-- `ogf((1+3x+5x^2+x^3+3x^4+x^5)/(1-3x^3+3x^6-x^9))` -/
def P1149265669926518776.Spec : Prop :=
  ∀ n, P1149265669926518776.a n = A201271 n

end A201271

/-! ## A201271.P5458963224366856193

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=4, a(4)=12, a(5)=16, a(6)=9, a(7)=27, a(8)=33`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201271

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P5458963224366856193.Spec : Prop :=
  ∀ n, P5458963224366856193.a n = A201271 n

theorem P5458963224366856193.correct : P5458963224366856193.Spec := by
  intro n
  simp only [A201271]

end A201271

/-! ## A201271.P7399342545235457459

`ceil((lcm(n, n+3)+n+2)/3)`
-/

namespace A201271.P7399342545235457459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm n (n + 3) + (n + 2) : ℚ) / 3⌉

end

end A201271.P7399342545235457459

namespace A201271

/-- `ceil((lcm(n, n+3)+n+2)/3)` -/
def P7399342545235457459.Spec : Prop :=
  ∀ n, P7399342545235457459.a n = A201271 n

end A201271

/-! ## A201271.P14891510597985250468

`A002264(A046163(n+1)+A008619(2*(n+1)))`
-/

namespace A201271.P14891510597985250468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A046163 (n + 1) + A008619 (2 * (n + 1))).toNat

end

end A201271.P14891510597985250468

namespace A201271

/-- `A002264(A046163(n+1)+A008619(2*(n+1)))` -/
def P14891510597985250468.Spec : Prop :=
  ∀ n, P14891510597985250468.a n = A201271 n

end A201271

/-! ## A201271.P6951071621320531817

`A002264(A110654(2*(n+2))+A046163(n+1))`
-/

namespace A201271.P6951071621320531817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A110654 (2 * (n + 2)) + A046163 (n + 1)).toNat

end

end A201271.P6951071621320531817

namespace A201271

/-- `A002264(A110654(2*(n+2))+A046163(n+1))` -/
def P6951071621320531817.Spec : Prop :=
  ∀ n, P6951071621320531817.a n = A201271 n

end A201271

/-!
# A201272: Number of n X 3 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201272, the canonical program `A201272.P3658195903552328020` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201272 has offset 0).

The definition of A201272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201272.P3658195903552328020

`ogf((1+x+2x^2+3x^3+5x^4+4x^5+7x^6+5x^7+2x^8+x^9+x^10)/(1-2x^2-2x^3+x^4+4x^5-2x^7+2x^9-4x^11-x^12+2x^13+2x^14-x^16))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201272

/-- `ogf((1+x+2x^2+3x^3+5x^4+4x^5+7x^6+5x^7+2x^8+x^9+x^10)/(1-2x^2-2x^3+x^4+4x^5-2x^7+2x^9-4x^11-x^12+2x^13+2x^14-x^16))` -/
def P3658195903552328020.Spec : Prop :=
  ∀ n, P3658195903552328020.a n = A201272 n

theorem P3658195903552328020.correct : P3658195903552328020.Spec := by
  intro n
  simp only [A201272]

end A201272

/-! ## A201272.P18033586955289435975

`A201277(∑[n+1]+3)`
-/

namespace A201272.P18033586955289435975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A201272.P18033586955289435975

namespace A201272

/-- `A201277(∑[n+1]+3)` -/
def P18033586955289435975.Spec : Prop :=
  ∀ n, P18033586955289435975.a n = A201272 n

end A201272

/-! ## A201272.P13814837450996145170

`A265005(∑[n+1]+3)`
-/

namespace A201272.P13814837450996145170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A201272.P13814837450996145170

namespace A201272

/-- `A265005(∑[n+1]+3)` -/
def P13814837450996145170.Spec : Prop :=
  ∀ n, P13814837450996145170.a n = A201272 n

end A201272

/-!
# A201273: Number of n X 4 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201273, there is no canonical definition to state claims against.
-/

/-! ## A201273.P5866931070858599038

`A201277(A077169(n+3)-1)`
-/

namespace A201273.P5866931070858599038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A077169 (n + 3) - 1).toNat

end

end A201273.P5866931070858599038

/-! ## A201273.P7925069498822645756

`A201277(A167614(n+1)-A057428(n))`
-/

namespace A201273.P7925069498822645756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A167614 (n + 1) - A057428 n).toNat

end

end A201273.P7925069498822645756

/-! ## A201273.P11644900979988502201

`A201277(A167614(n+1)+A057428(n)²)`
-/

namespace A201273.P11644900979988502201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A167614 (n + 1) + A057428 n ^ 2).toNat

end

end A201273.P11644900979988502201

/-!
# A201274: Number of n X 5 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201274, there is no canonical definition to state claims against.
-/

/-! ## A201274.P14612314253957293844

`A201277(eq[3, A025581(n)])`
-/

namespace A201274.P14612314253957293844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201274.P14612314253957293844

/-! ## A201274.P11538417961428676287

`A201277(A000217(n+4)-4)`
-/

namespace A201274.P11538417961428676287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A000217 (n + 4) - 4).toNat

end

end A201274.P11538417961428676287

/-! ## A201274.P3549277746841767060

`A201277(eq[4, A004736(n+1)])`
-/

namespace A201274.P3549277746841767060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201274.P3549277746841767060

/-! ## A201274.P11637205273565538445

`A201277(lt[A023531(n), A023531(n+3)])`
-/

namespace A201274.P11637205273565538445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201274.P11637205273565538445

/-! ## A201274.P15193489579561831354

`A201277(eq[3, A122285(n)])`
-/

namespace A201274.P15193489579561831354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201274.P15193489579561831354

/-!
# A201275: Number of n X 6 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201275, there is no canonical definition to state claims against.
-/

/-! ## A201275.P6190293354545696451

`A201277(A167499(n+3)+1)`
-/

namespace A201275.P6190293354545696451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A167499 (n + 3) + 1).toNat

end

end A201275.P6190293354545696451

/-! ## A201275.P12645135158644274287

`A201277(A152950(n+5)+3)`
-/

namespace A201275.P12645135158644274287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A152950 (n + 5) + 3).toNat

end

end A201275.P12645135158644274287

/-!
# A201276: Number of n X 7 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201276, there is no canonical definition to state claims against.
-/

/-! ## A201276.P7795581583280027830

`A013597(n+1)*A054346(A255612(n))`
-/

namespace A201276.P7795581583280027830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (n + 1) * A054346 (A255612 n).toNat

end

end A201276.P7795581583280027830

/-!
# A201278: a(n) specifies the quadratic extension sqrt(a(n)) for A201047(n).

The programs for A201278, there is no canonical definition to state claims against.
-/

/-! ## A201278.P12541340534831542662

`A239630(a(n-1))` with `a(0)=10, a(1)=2, a(2)=2, a(3)=5, a(4)=5`
-/

namespace A201278.P12541340534831542662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 2, 2, 5, 5] fun n a =>
  A239630 (a (n - 1)).toNat

end

end A201278.P12541340534831542662

/-! ## A201278.P8597887189424540691

`A093101(A235772(n+1)+A067912(n+2))`
-/

namespace A201278.P8597887189424540691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (A235772 (n + 1) + A067912 (n + 2)).toNat

end

end A201278.P8597887189424540691

/-!
# A201279: a(n) = 6*n^2 + 10*n + 5.

The programs for A201279, the canonical program `A201279.P16312239377750251695` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201279 has offset 0).

The definition of A201279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²+10*n+5` (program `A201279.P16312239377750251695`, by `A201279.P16312239377750251695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A201279.P4138902207679937137

`ogf((5+6x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A201279.P4138902207679937137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 6, 1] [1, -3, 3, -1] n

end

end A201279.P4138902207679937137

namespace A201279

/-- `ogf((5+6x+x^2)/(1-3x+3x^2-x^3))` -/
def P4138902207679937137.Spec : Prop :=
  ∀ n, P4138902207679937137.a n = A201279 n

end A201279

/-! ## A201279.P16312239377750251695

`6*n²+10*n+5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201279

/-- `6*n²+10*n+5` -/
def P16312239377750251695.Spec : Prop :=
  ∀ n, (P16312239377750251695.a n : ℤ) = A201279 n

theorem P16312239377750251695.correct : P16312239377750251695.Spec := by
  intro n
  simp only [A201279]

end A201279

/-! ## A201279.P9359969084484662103

`or(1, ∑[12*n+4])`
-/

namespace A201279.P9359969084484662103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201279.P9359969084484662103

namespace A201279

/-- `or(1, ∑[12*n+4])` -/
def P9359969084484662103.Spec : Prop :=
  ∀ n, (P9359969084484662103.a n : ℤ) = A201279 n

end A201279

/-! ## A201279.P7728367516030077152

`xor(1, ∑[12*n+4])`
-/

namespace A201279.P7728367516030077152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201279.P7728367516030077152

namespace A201279

/-- `xor(1, ∑[12*n+4])` -/
def P7728367516030077152.Spec : Prop :=
  ∀ n, (P7728367516030077152.a n : ℤ) = A201279 n

end A201279

/-! ## A201279.P6599767664470643295

`∑[a(n-1)+12]` with `a(0)=5, a(1)=16`
-/

namespace A201279.P6599767664470643295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 16] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201279.P6599767664470643295

namespace A201279

/-- `∑[a(n-1)+12]` -/
def P6599767664470643295.Spec : Prop :=
  ∀ n, (P6599767664470643295.a n : ℤ) = A201279 n

end A201279

/-! ## A201279.P5833544563116293278

`Δ[Δ[C(n², 2)]-n²]`
-/

namespace A201279.P5833544563116293278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201279.P5833544563116293278

namespace A201279

/-- `Δ[Δ[C(n², 2)]-n²]` -/
def P5833544563116293278.Spec : Prop :=
  ∀ n, P5833544563116293278.a n = A201279 n

theorem P5833544563116293278.correct : P5833544563116293278.Spec := by
  intro n
  simp only [A201279, Nat.add_sub_cancel, A201279.P5833544563116293278.f2, A201279.P5833544563116293278.f1, A201279.P5833544563116293278.a, A201279.P16312239377750251695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A201279

/-! ## A201279.P15576991255985517983

`∑[ogf((5+6x+x^2)/(1-2x+x^2))]`
-/

namespace A201279.P15576991255985517983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 6, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201279.P15576991255985517983

namespace A201279

/-- `∑[ogf((5+6x+x^2)/(1-2x+x^2))]` -/
def P15576991255985517983.Spec : Prop :=
  ∀ n, P15576991255985517983.a n = A201279 n

end A201279

/-! ## A201279.P2140449697966575718

`Δ[lcm(n, (n+1)²+n²)]`
-/

namespace A201279.P2140449697966575718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) ^ 2 + n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P2140449697966575718

namespace A201279

/-- `Δ[lcm(n, (n+1)²+n²)]` -/
def P2140449697966575718.Spec : Prop :=
  ∀ n, P2140449697966575718.a n = A201279 n

end A201279

/-! ## A201279.P10325089504573503956

`Δ[n*or(1, (n+1)*2*n)]`
-/

namespace A201279.P10325089504573503956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 ((n + 1) * (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P10325089504573503956

namespace A201279

/-- `Δ[n*or(1, (n+1)*2*n)]` -/
def P10325089504573503956.Spec : Prop :=
  ∀ n, P10325089504573503956.a n = A201279 n

end A201279

/-! ## A201279.P13866202638680180168

`Δ[n*xor(1, (n+1)*2*n)]`
-/

namespace A201279.P13866202638680180168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 ((n + 1) * (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P13866202638680180168

namespace A201279

/-- `Δ[n*xor(1, (n+1)*2*n)]` -/
def P13866202638680180168.Spec : Prop :=
  ∀ n, P13866202638680180168.a n = A201279 n

end A201279

/-! ## A201279.P10731553939849045716

`Δ[lcm(∑[2*n]+1, 2*n)-n]`
-/

namespace A201279.P10731553939849045716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (∑ j ∈ Finset.range (n + 1), f2 j + 1) (2 * n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201279.P10731553939849045716

namespace A201279

/-- `Δ[lcm(∑[2*n]+1, 2*n)-n]` -/
def P10731553939849045716.Spec : Prop :=
  ∀ n, P10731553939849045716.a n = A201279 n

end A201279

/-! ## A201279.P6824548756966988586

`Δ[2*n*lcm(2, ∑[2*n])+n]`
-/

namespace A201279.P6824548756966988586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P6824548756966988586

namespace A201279

/-- `Δ[2*n*lcm(2, ∑[2*n])+n]` -/
def P6824548756966988586.Spec : Prop :=
  ∀ n, P6824548756966988586.a n = A201279 n

end A201279

/-! ## A201279.P14879789665479251994

`Δ[(C(2*n, 2)+n+1)*(n+1)]`
-/

namespace A201279.P14879789665479251994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 + (n + 1)) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P14879789665479251994

namespace A201279

/-- `Δ[(C(2*n, 2)+n+1)*(n+1)]` -/
def P14879789665479251994.Spec : Prop :=
  ∀ n, P14879789665479251994.a n = A201279 n

theorem P14879789665479251994.correct : P14879789665479251994.Spec := by
  intro n
  simp only [A201279, Nat.add_sub_cancel, A201279.P14879789665479251994.f1, A201279.P14879789665479251994.a, A201279.P16312239377750251695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A201279

/-! ## A201279.P6773802594904646313

`Δ[n*(lcm(2*n+1, n+1)-n)]`
-/

namespace A201279.P6773802594904646313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lcm (2 * n + 1) (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201279.P6773802594904646313

namespace A201279

/-- `Δ[n*(lcm(2*n+1, n+1)-n)]` -/
def P6773802594904646313.Spec : Prop :=
  ∀ n, P6773802594904646313.a n = A201279 n

end A201279

/-! ## A201279.P14000089814392512032

`Δ[gcd(n, 2*n)+2*n*∑[2*n]]`
-/

namespace A201279.P14000089814392512032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n) + 2 * n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P14000089814392512032

namespace A201279

/-- `Δ[gcd(n, 2*n)+2*n*∑[2*n]]` -/
def P14000089814392512032.Spec : Prop :=
  ∀ n, P14000089814392512032.a n = A201279 n

end A201279

/-! ## A201279.P9870901320294969565

`Δ[and(2*n+1, 2*n)*∑[2*n]+n]`
-/

namespace A201279.P9870901320294969565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) * (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P9870901320294969565

namespace A201279

/-- `Δ[and(2*n+1, 2*n)*∑[2*n]+n]` -/
def P9870901320294969565.Spec : Prop :=
  ∀ n, P9870901320294969565.a n = A201279 n

end A201279

/-! ## A201279.P9193826324878447317

`Δ[A048395(n)]`
-/

namespace A201279.P9193826324878447317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201279.P9193826324878447317

namespace A201279

/-- `Δ[A048395(n)]` -/
def P9193826324878447317.Spec : Prop :=
  ∀ n, P9193826324878447317.a n = A201279 n

theorem P9193826324878447317.correct : P9193826324878447317.Spec := by
  intro n
  simp only [A201279, Nat.add_sub_cancel, A201279.P9193826324878447317.f1, A201279.P9193826324878447317.a, A201279.P16312239377750251695.a, A048395, A048395.P3571630861933578872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A201279

/-! ## A201279.P8109149341327045515

`∑[Δ[A005897(n)]-2]`
-/

namespace A201279.P8109149341327045515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201279.P8109149341327045515

namespace A201279

/-- `∑[Δ[A005897(n)]-2]` -/
def P8109149341327045515.Spec : Prop :=
  ∀ n, P8109149341327045515.a n = A201279 n

end A201279

/-! ## A201279.P6572218994690663200

`∑[record[A019429(n+1)]]`
-/

namespace A201279.P6572218994690663200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201279.P6572218994690663200

namespace A201279

/-- `∑[record[A019429(n+1)]]` -/
def P6572218994690663200.Spec : Prop :=
  ∀ n, P6572218994690663200.a n = A201279 n

end A201279

/-! ## A201279.P4752017580529888083

`∑[A063098(n+1)+2]`
-/

namespace A201279.P4752017580529888083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063098 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201279.P4752017580529888083

namespace A201279

/-- `∑[A063098(n+1)+2]` -/
def P4752017580529888083.Spec : Prop :=
  ∀ n, P4752017580529888083.a n = A201279 n

end A201279

