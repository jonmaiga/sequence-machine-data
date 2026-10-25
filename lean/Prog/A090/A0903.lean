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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A090300: a(n) = 14*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 14.

The programs for A090300, the canonical program `A090300.P10503886842109298905` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090300 has offset 0).

The definition of A090300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)+a(n-2)` (program `A090300.P10503886842109298905`, by `A090300.P10503886842109298905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090300.P10503886842109298905

`14*a(n-1)+a(n-2)` with `a(0)=2, a(1)=14`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090300

/-- `14*a(n-1)+a(n-2)` -/
def P10503886842109298905.Spec : Prop :=
  ∀ n, (P10503886842109298905.a n : ℤ) = A090300 n

theorem P10503886842109298905.correct : P10503886842109298905.Spec := by
  intro n
  simp only [A090300]

end A090300

/-! ## A090300.P10278789756349890000

`(7+sqrt(50))^n+(7-sqrt(50))^n`
-/

namespace A090300.P10278789756349890000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 + Real.sqrt (50 : ℝ)) ^ n + (7 - Real.sqrt (50 : ℝ)) ^ n

end

end A090300.P10278789756349890000

namespace A090300

/-- `(7+sqrt(50))^n+(7-sqrt(50))^n` -/
def P10278789756349890000.Spec : Prop :=
  ∀ n, P10278789756349890000.a n = (A090300 n : ℝ)

theorem P10278789756349890000.correct : P10278789756349890000.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090300, Nat.add_sub_cancel, A090300.P10278789756349890000.a, A090300.P10503886842109298905.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090300, Nat.add_sub_cancel, A090300.P10278789756349890000.a, A090300.P10503886842109298905.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090300

/-! ## A090300.P12262692515519708273

`ogf((-2+14x)/(-1+14x+x^2))`
-/

namespace A090300.P12262692515519708273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -14] [1, -14, -1] n

end

end A090300.P12262692515519708273

namespace A090300

/-- `ogf((-2+14x)/(-1+14x+x^2))` -/
def P12262692515519708273.Spec : Prop :=
  ∀ n, P12262692515519708273.a n = A090300 n

end A090300

/-! ## A090300.P7809262906174717503

`A002203(3*n)`
-/

namespace A090300.P7809262906174717503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (3 * n)

end

end A090300.P7809262906174717503

namespace A090300

/-- `A002203(3*n)` -/
def P7809262906174717503.Spec : Prop :=
  ∀ n, P7809262906174717503.a n = A090300 n

end A090300

/-! ## A090300.P12559186244612864948

`2*A001333(3*n)`
-/

namespace A090300.P12559186244612864948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 (3 * n)

end

end A090300.P12559186244612864948

namespace A090300

/-- `2*A001333(3*n)` -/
def P12559186244612864948.Spec : Prop :=
  ∀ n, P12559186244612864948.a n = A090300 n

end A090300

/-! ## A090300.P7381083040420389652

`A099425(floor(2/acot(n))+n)`
-/

namespace A090300.P7381083040420389652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A090300.P7381083040420389652

namespace A090300

/-- `A099425(floor(2/acot(n))+n)` -/
def P7381083040420389652.Spec : Prop :=
  ∀ n, P7381083040420389652.a n = A090300 n

end A090300

/-! ## A090300.P6263836687505189290

`A099425(A008486(n))`
-/

namespace A090300.P6263836687505189290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 (A008486 n).toNat

end

end A090300.P6263836687505189290

namespace A090300

/-- `A099425(A008486(n))` -/
def P6263836687505189290.Spec : Prop :=
  ∀ n, P6263836687505189290.a n = A090300 n

end A090300

/-! ## A090300.P3006975961646027480

`2*A002965(A016921(n))`
-/

namespace A090300.P3006975961646027480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002965 (A016921 n).toNat

end

end A090300.P3006975961646027480

namespace A090300

/-- `2*A002965(A016921(n))` -/
def P3006975961646027480.Spec : Prop :=
  ∀ n, P3006975961646027480.a n = A090300 n

end A090300

/-! ## A090300.P193842112099088800

`2*A082766(A008458(n))`
-/

namespace A090300.P193842112099088800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082766 (A008458 n).toNat

end

end A090300.P193842112099088800

namespace A090300

/-- `2*A082766(A008458(n))` -/
def P193842112099088800.Spec : Prop :=
  ∀ n, P193842112099088800.a n = A090300 n

end A090300

/-! ## A090300.P11816255554820609033

`2*A097564(A017173(n))`
-/

namespace A090300.P11816255554820609033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097564 (A017173 n).toNat

end

end A090300.P11816255554820609033

namespace A090300

/-- `2*A097564(A017173(n))` -/
def P11816255554820609033.Spec : Prop :=
  ∀ n, P11816255554820609033.a n = A090300 n

end A090300

/-!
# A090301: a(n) = 15*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 15.

The programs for A090301, the canonical program `A090301.P14321936033646852545` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090301 has offset 0).

The definition of A090301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*a(n-1)+a(n-2)` (program `A090301.P14321936033646852545`, by `A090301.P14321936033646852545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090301.P14321936033646852545

`15*a(n-1)+a(n-2)` with `a(0)=2, a(1)=15`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090301

/-- `15*a(n-1)+a(n-2)` -/
def P14321936033646852545.Spec : Prop :=
  ∀ n, (P14321936033646852545.a n : ℤ) = A090301 n

theorem P14321936033646852545.correct : P14321936033646852545.Spec := by
  intro n
  simp only [A090301]

end A090301

/-! ## A090301.P1659311350334543116

`ogf((-2+15x)/(-1+15x+x^2))`
-/

namespace A090301.P1659311350334543116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -15] [1, -15, -1] n

end

end A090301.P1659311350334543116

namespace A090301

/-- `ogf((-2+15x)/(-1+15x+x^2))` -/
def P1659311350334543116.Spec : Prop :=
  ∀ n, P1659311350334543116.a n = A090301 n

end A090301

/-! ## A090301.P165084348632163055

`16*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=2, a(1)=15`
-/

namespace A090301.P165084348632163055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 15] fun n a =>
  16 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A090301.P165084348632163055

namespace A090301

/-- `16*a(n-1)-(a(n-1)-a(n-2))` -/
def P165084348632163055.Spec : Prop :=
  ∀ n, P165084348632163055.a n = A090301 n

end A090301

/-! ## A090301.P2647284697807674449

`a(n-2)+15*a(A023443(n))` with `a(0)=2, a(1)=15`
-/

namespace A090301.P2647284697807674449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 15] fun n a =>
  a (n - 2) + 15 * a (A023443 n).toNat

end

end A090301.P2647284697807674449

namespace A090301

/-- `a(n-2)+15*a(A023443(n))` -/
def P2647284697807674449.Spec : Prop :=
  ∀ n, (P2647284697807674449.a n : ℤ) = A090301 n

end A090301

/-!
# A090302: Begin with n and consider numbers obtained by successively subtracting 0, 1, 2, 3, ...; a(n) = largest prime that arises in the process, i.e., largest prime of the form n - T(r), where T(r) is the r-th triangular number; or 0 if no such number exists.

The programs for A090302, there is no canonical definition to state claims against.
-/

/-! ## A090302.P14941132787651310862

`A006530(A130089(n+2))%A016779(n)`
-/

namespace A090302.P14941132787651310862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A130089 (n + 2)).toNat) (A016779 n)

end

end A090302.P14941132787651310862

/-! ## A090302.P4526379529824825588

`A006530(A130089(n+2))-A304819(2*n+1)`
-/

namespace A090302.P4526379529824825588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A130089 (n + 2)).toNat - A304819 (2 * n + 1)

end

end A090302.P4526379529824825588

/-!
# A090303: Begin with n and consider numbers obtained by successively subtracting 2,3,5,7,11,...; a(n) = largest prime that arises, i.e., largest prime of the form n - sum prime(r), or 0 if no such prime exists.

The programs for A090303, there is no canonical definition to state claims against.
-/

/-! ## A090303.P11715760291528806933

`A336469(A017927(n*A267621(n)))`
-/

namespace A090303.P11715760291528806933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (A017927 ((n : ℤ) * A267621 n).toNat).toNat

end

end A090303.P11715760291528806933

/-!
# A090304: Indices of 0's in A090303.

The programs for A090304, there is no canonical definition to state claims against.
-/

/-! ## A090304.P12033985458533623795

`eq[0, A090303(n+1)]+1`
-/

namespace A090304.P12033985458533623795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090303 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090304.P12033985458533623795

/-! ## A090304.P18415045757633432965

`record[gcd(n+1, A090303(A000027(n+1)))]`
-/

namespace A090304.P18415045757633432965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A090303 (A000027 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090304.P18415045757633432965

/-! ## A090304.P12989444550883157310

`record[gcd(A090303(n+1), A130446(n+1))]`
-/

namespace A090304.P12989444550883157310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090303 (n + 1)) (A130446 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090304.P12989444550883157310

/-! ## A090304.P5242021116676168996

`lt[A090303(n+1), A307608(n+1)]+1`
-/

namespace A090304.P5242021116676168996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A090304.P5242021116676168996

/-! ## A090304.P13682246013773425480

`lt[A090303(n+1), A014963(6*(n+2))]+1`
-/

namespace A090304.P13682246013773425480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A090304.P13682246013773425480

/-!
# A090305: a(n) = 16*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 16.

The programs for A090305, the canonical program `A090305.P10733376927956433401` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090305 has offset 0).

The definition of A090305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)+a(n-2)` (program `A090305.P10733376927956433401`, by `A090305.P10733376927956433401.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090305.P10733376927956433401

`16*a(n-1)+a(n-2)` with `a(0)=2, a(1)=16`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090305

/-- `16*a(n-1)+a(n-2)` -/
def P10733376927956433401.Spec : Prop :=
  ∀ n, (P10733376927956433401.a n : ℤ) = A090305 n

theorem P10733376927956433401.correct : P10733376927956433401.Spec := by
  intro n
  simp only [A090305]

end A090305

/-! ## A090305.P3049757544716746605

`ogf((-2+16x)/(-1+16x+x^2))`
-/

namespace A090305.P3049757544716746605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -16] [1, -16, -1] n

end

end A090305.P3049757544716746605

namespace A090305

/-- `ogf((-2+16x)/(-1+16x+x^2))` -/
def P3049757544716746605.Spec : Prop :=
  ∀ n, P3049757544716746605.a n = A090305 n

end A090305

/-! ## A090305.P3768653238781963279

`(8+sqrt(65))^n+(8-sqrt(65))^n`
-/

namespace A090305.P3768653238781963279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (8 + Real.sqrt (65 : ℝ)) ^ n + (8 - Real.sqrt (65 : ℝ)) ^ n

end

end A090305.P3768653238781963279

namespace A090305

/-- `(8+sqrt(65))^n+(8-sqrt(65))^n` -/
def P3768653238781963279.Spec : Prop :=
  ∀ n, P3768653238781963279.a n = (A090305 n : ℝ)

theorem P3768653238781963279.correct : P3768653238781963279.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090305, Nat.add_sub_cancel, A090305.P3768653238781963279.a, A090305.P10733376927956433401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090305, Nat.add_sub_cancel, A090305.P3768653238781963279.a, A090305.P10733376927956433401.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090305

/-!
# A090306: a(n) = 17*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 17.

The programs for A090306, the canonical program `A090306.P9007041342053541693` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090306 has offset 0).

The definition of A090306 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*a(n-1)+a(n-2)` (program `A090306.P9007041342053541693`, by `A090306.P9007041342053541693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090306.P9007041342053541693

`17*a(n-1)+a(n-2)` with `a(0)=2, a(1)=17`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090306

/-- `17*a(n-1)+a(n-2)` -/
def P9007041342053541693.Spec : Prop :=
  ∀ n, (P9007041342053541693.a n : ℤ) = A090306 n

theorem P9007041342053541693.correct : P9007041342053541693.Spec := by
  intro n
  simp only [A090306]

end A090306

/-! ## A090306.P4686720397556916428

`((17+sqrt(293))/2)^n+((17-sqrt(293))/2)^n`
-/

namespace A090306.P4686720397556916428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((17 + Real.sqrt (293 : ℝ)) / 2) ^ n + ((17 - Real.sqrt (293 : ℝ)) / 2) ^ n

end

end A090306.P4686720397556916428

namespace A090306

/-- `((17+sqrt(293))/2)^n+((17-sqrt(293))/2)^n` -/
def P4686720397556916428.Spec : Prop :=
  ∀ n, P4686720397556916428.a n = (A090306 n : ℝ)

theorem P4686720397556916428.correct : P4686720397556916428.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090306, Nat.add_sub_cancel, A090306.P4686720397556916428.a, A090306.P9007041342053541693.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090306, Nat.add_sub_cancel, A090306.P4686720397556916428.a, A090306.P9007041342053541693.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090306

/-! ## A090306.P18028527787127142786

`ogf((-2+17x)/(-1+17x+x^2))`
-/

namespace A090306.P18028527787127142786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -17] [1, -17, -1] n

end

end A090306.P18028527787127142786

namespace A090306

/-- `ogf((-2+17x)/(-1+17x+x^2))` -/
def P18028527787127142786.Spec : Prop :=
  ∀ n, P18028527787127142786.a n = A090306 n

end A090306

/-!
# A090307: a(n) = 18*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 18.

The programs for A090307, the canonical program `A090307.P6801341768619518071` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090307 has offset 0).

The definition of A090307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)+a(n-2)` (program `A090307.P6801341768619518071`, by `A090307.P6801341768619518071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090307.P6801341768619518071

`18*a(n-1)+a(n-2)` with `a(0)=2, a(1)=18`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090307

/-- `18*a(n-1)+a(n-2)` -/
def P6801341768619518071.Spec : Prop :=
  ∀ n, (P6801341768619518071.a n : ℤ) = A090307 n

theorem P6801341768619518071.correct : P6801341768619518071.Spec := by
  intro n
  simp only [A090307]

end A090307

/-! ## A090307.P13784664789458692849

`(9+sqrt(82))^n+(9-sqrt(82))^n`
-/

namespace A090307.P13784664789458692849
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (9 + Real.sqrt (82 : ℝ)) ^ n + (9 - Real.sqrt (82 : ℝ)) ^ n

end

end A090307.P13784664789458692849

namespace A090307

/-- `(9+sqrt(82))^n+(9-sqrt(82))^n` -/
def P13784664789458692849.Spec : Prop :=
  ∀ n, P13784664789458692849.a n = (A090307 n : ℝ)

theorem P13784664789458692849.correct : P13784664789458692849.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090307, Nat.add_sub_cancel, A090307.P13784664789458692849.a, A090307.P6801341768619518071.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090307, Nat.add_sub_cancel, A090307.P13784664789458692849.a, A090307.P6801341768619518071.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090307

/-! ## A090307.P15499811886196892700

`ogf((-2+18x)/(-1+18x+x^2))`
-/

namespace A090307.P15499811886196892700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -18] [1, -18, -1] n

end

end A090307.P15499811886196892700

namespace A090307

/-- `ogf((-2+18x)/(-1+18x+x^2))` -/
def P15499811886196892700.Spec : Prop :=
  ∀ n, P15499811886196892700.a n = A090307 n

end A090307

/-! ## A090307.P1971076027973826387

`2*A041144(A004442(n))%A041144(n)`
-/

namespace A090307.P1971076027973826387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A041144 (A004442 n).toNat) (A041144 n)

end

end A090307.P1971076027973826387

namespace A090307

/-- `2*A041144(A004442(n))%A041144(n)` -/
def P1971076027973826387.Spec : Prop :=
  ∀ n, P1971076027973826387.a n = A090307 n

end A090307

/-! ## A090307.P3673679739409346310

`lcm(2, A041618(A004442(n))%A041618(n))`
-/

namespace A090307.P3673679739409346310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.tmod (A041618 (A004442 n).toNat) (A041618 n))

end

end A090307.P3673679739409346310

namespace A090307

/-- `lcm(2, A041618(A004442(n))%A041618(n))` -/
def P3673679739409346310.Spec : Prop :=
  ∀ n, (P3673679739409346310.a n : ℤ) = A090307 n

end A090307

/-!
# A090308: a(n) = 19*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 19.

The programs for A090308, the canonical program `A090308.P1588608907177116908` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090308 has offset 0).

The definition of A090308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*a(n-1)+a(n-2)` (program `A090308.P1588608907177116908`, by `A090308.P1588608907177116908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090308.P1588608907177116908

`19*a(n-1)+a(n-2)` with `a(0)=2, a(1)=19`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090308

/-- `19*a(n-1)+a(n-2)` -/
def P1588608907177116908.Spec : Prop :=
  ∀ n, (P1588608907177116908.a n : ℤ) = A090308 n

theorem P1588608907177116908.correct : P1588608907177116908.Spec := by
  intro n
  simp only [A090308]

end A090308

/-! ## A090308.P13131717810525269080

`ogf((-2+19x)/(-1+19x+x^2))`
-/

namespace A090308.P13131717810525269080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -19] [1, -19, -1] n

end

end A090308.P13131717810525269080

namespace A090308

/-- `ogf((-2+19x)/(-1+19x+x^2))` -/
def P13131717810525269080.Spec : Prop :=
  ∀ n, P13131717810525269080.a n = A090308 n

end A090308

/-!
# A090309: a(n) = 20*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 20.

The programs for A090309, the canonical program `A090309.P11567161007435875914` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090309 has offset 0).

The definition of A090309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)+a(n-2)` (program `A090309.P11567161007435875914`, by `A090309.P11567161007435875914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090309.P11567161007435875914

`20*a(n-1)+a(n-2)` with `a(0)=2, a(1)=20`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090309

/-- `20*a(n-1)+a(n-2)` -/
def P11567161007435875914.Spec : Prop :=
  ∀ n, (P11567161007435875914.a n : ℤ) = A090309 n

theorem P11567161007435875914.correct : P11567161007435875914.Spec := by
  intro n
  simp only [A090309]

end A090309

/-! ## A090309.P15904755601469194430

`ogf((-2+20x)/(-1+20x+x^2))`
-/

namespace A090309.P15904755601469194430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -20] [1, -20, -1] n

end

end A090309.P15904755601469194430

namespace A090309

/-- `ogf((-2+20x)/(-1+20x+x^2))` -/
def P15904755601469194430.Spec : Prop :=
  ∀ n, P15904755601469194430.a n = A090309 n

end A090309

/-! ## A090309.P2829616668658457908

`round(sqrt(8*(A227152(n)+1)))/2`
-/

namespace A090309.P2829616668658457908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (8 * (A227152 n + 1) : ℝ)) : ℚ) / 2

end

end A090309.P2829616668658457908

namespace A090309

/-- `round(sqrt(8*(A227152(n)+1)))/2` -/
def P2829616668658457908.Spec : Prop :=
  ∀ n, P2829616668658457908.a n = (A090309 n : ℚ)

end A090309

/-!
# A090310: a(n) = 21*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 21.

The programs for A090310, the canonical program `A090310.P11087848222742281813` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090310 has offset 0).

The definition of A090310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*a(n-1)+a(n-2)` (program `A090310.P11087848222742281813`, by `A090310.P11087848222742281813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090310.P11087848222742281813

`21*a(n-1)+a(n-2)` with `a(0)=2, a(1)=21`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090310

/-- `21*a(n-1)+a(n-2)` -/
def P11087848222742281813.Spec : Prop :=
  ∀ n, (P11087848222742281813.a n : ℤ) = A090310 n

theorem P11087848222742281813.correct : P11087848222742281813.Spec := by
  intro n
  simp only [A090310]

end A090310

/-! ## A090310.P1337987646486651332

`ogf((-2+21x)/(-1+21x+x^2))`
-/

namespace A090310.P1337987646486651332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -21] [1, -21, -1] n

end

end A090310.P1337987646486651332

namespace A090310

/-- `ogf((-2+21x)/(-1+21x+x^2))` -/
def P1337987646486651332.Spec : Prop :=
  ∀ n, P1337987646486651332.a n = A090310 n

end A090310

/-! ## A090310.P8271770260938386812

`22*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=2, a(1)=21`
-/

namespace A090310.P8271770260938386812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 21] fun n a =>
  22 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A090310.P8271770260938386812

namespace A090310

/-- `22*a(n-1)-(a(n-1)-a(n-2))` -/
def P8271770260938386812.Spec : Prop :=
  ∀ n, P8271770260938386812.a n = A090310 n

end A090310

/-!
# A090311: Concatenation of two distinct primes p and q, p < q.

The programs for A090311, there is no canonical definition to state claims against.
-/

/-! ## A090311.P12889222588588003935

`A037276(A339116(n+2))`
-/

namespace A090311.P12889222588588003935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A339116 (n + 2)).toNat

end

end A090311.P12889222588588003935

/-! ## A090311.P1199998487738948556

`A080670(A339116(n+2)%A208294(n+1))`
-/

namespace A090311.P1199998487738948556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (Int.tmod (A339116 (n + 2)) (A208294 (n + 1))).toNat

end

end A090311.P1199998487738948556

/-! ## A090311.P4926517831886092066

`A049201(A339116(n+2))%A000056(n+3)`
-/

namespace A090311.P4926517831886092066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049201 (A339116 (n + 2)).toNat) (A000056 (n + 3))

end

end A090311.P4926517831886092066

/-! ## A090311.P17318633017122670472

`A080670(A339116(n+2))%A178138(n+4)`
-/

namespace A090311.P17318633017122670472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080670 (A339116 (n + 2)).toNat) (A178138 (n + 4))

end

end A090311.P17318633017122670472

/-! ## A090311.P15201892753449524222

`A080670(and(A083420(n+1), A339116(n+2)))`
-/

namespace A090311.P15201892753449524222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (Int.land (A083420 (n + 1)) (A339116 (n + 2))).toNat

end

end A090311.P15201892753449524222

/-! ## A090311.P37559923692386958

`A037276(A019565(A018900(n+1)))`
-/

namespace A090311.P37559923692386958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A019565 (A018900 (n + 1)).toNat).toNat

end

end A090311.P37559923692386958

/-!
# A090312: Primes in A090311.

The programs for A090312, there is no canonical definition to state claims against.
-/

/-! ## A090312.P18053670394900277570

`p?[A090311(n+1)]`
-/

namespace A090312.P18053670394900277570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090312.P18053670394900277570

/-! ## A090312.P17112537940775077997

`p?[A037276(A087112(n+1))]`
-/

namespace A090312.P17112537940775077997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A087112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090312.P17112537940775077997

/-! ## A090312.P16512112953702786669

`p?[A037276(A339116(n+2))]`
-/

namespace A090312.P16512112953702786669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A339116 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090312.P16512112953702786669

/-! ## A090312.P13172039679336276474

`filter[A090311(n+1), A010051(#)]`
-/

namespace A090312.P13172039679336276474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A090312.P13172039679336276474

/-! ## A090312.P13117482619053389068

`filter[A090311(n+1), A080339(#)]`
-/

namespace A090312.P13117482619053389068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A090312.P13117482619053389068

/-!
# A090313: a(n) = 22*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 22.

The programs for A090313, the canonical program `A090313.P8971501391275500649` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090313 has offset 0).

The definition of A090313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*a(n-1)+a(n-2)` (program `A090313.P8971501391275500649`, by `A090313.P8971501391275500649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090313.P8971501391275500649

`22*a(n-1)+a(n-2)` with `a(0)=2, a(1)=22`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090313

/-- `22*a(n-1)+a(n-2)` -/
def P8971501391275500649.Spec : Prop :=
  ∀ n, (P8971501391275500649.a n : ℤ) = A090313 n

theorem P8971501391275500649.correct : P8971501391275500649.Spec := by
  intro n
  simp only [A090313]

end A090313

/-! ## A090313.P16510130294758419957

`(11+sqrt(122))^n+(11-sqrt(122))^n`
-/

namespace A090313.P16510130294758419957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (11 + Real.sqrt (122 : ℝ)) ^ n + (11 - Real.sqrt (122 : ℝ)) ^ n

end

end A090313.P16510130294758419957

namespace A090313

/-- `(11+sqrt(122))^n+(11-sqrt(122))^n` -/
def P16510130294758419957.Spec : Prop :=
  ∀ n, P16510130294758419957.a n = (A090313 n : ℝ)

theorem P16510130294758419957.correct : P16510130294758419957.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090313, Nat.add_sub_cancel, A090313.P16510130294758419957.a, A090313.P8971501391275500649.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090313, Nat.add_sub_cancel, A090313.P16510130294758419957.a, A090313.P8971501391275500649.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090313

/-! ## A090313.P12005609084317465979

`ogf((-2+22x)/(-1+22x+x^2))`
-/

namespace A090313.P12005609084317465979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -22] [1, -22, -1] n

end

end A090313.P12005609084317465979

namespace A090313

/-- `ogf((-2+22x)/(-1+22x+x^2))` -/
def P12005609084317465979.Spec : Prop :=
  ∀ n, P12005609084317465979.a n = A090313 n

end A090313

/-!
# A090314: a(n) = 23*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 23.

The programs for A090314, the canonical program `A090314.P13662152582924432790` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090314 has offset 0).

The definition of A090314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23*a(n-1)+a(n-2)` (program `A090314.P13662152582924432790`, by `A090314.P13662152582924432790.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090314.P13662152582924432790

`23*a(n-1)+a(n-2)` with `a(0)=2, a(1)=23`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090314

/-- `23*a(n-1)+a(n-2)` -/
def P13662152582924432790.Spec : Prop :=
  ∀ n, (P13662152582924432790.a n : ℤ) = A090314 n

theorem P13662152582924432790.correct : P13662152582924432790.Spec := by
  intro n
  simp only [A090314]

end A090314

/-! ## A090314.P9818472568779892293

`((23+sqrt(533))/2)^n+((23-sqrt(533))/2)^n`
-/

namespace A090314.P9818472568779892293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((23 + Real.sqrt (533 : ℝ)) / 2) ^ n + ((23 - Real.sqrt (533 : ℝ)) / 2) ^ n

end

end A090314.P9818472568779892293

namespace A090314

/-- `((23+sqrt(533))/2)^n+((23-sqrt(533))/2)^n` -/
def P9818472568779892293.Spec : Prop :=
  ∀ n, P9818472568779892293.a n = (A090314 n : ℝ)

theorem P9818472568779892293.correct : P9818472568779892293.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090314, Nat.add_sub_cancel, A090314.P9818472568779892293.a, A090314.P13662152582924432790.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090314, Nat.add_sub_cancel, A090314.P9818472568779892293.a, A090314.P13662152582924432790.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090314

/-! ## A090314.P6575520029614557405

`ogf((-2+23x)/(-1+23x+x^2))`
-/

namespace A090314.P6575520029614557405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -23] [1, -23, -1] n

end

end A090314.P6575520029614557405

namespace A090314

/-- `ogf((-2+23x)/(-1+23x+x^2))` -/
def P6575520029614557405.Spec : Prop :=
  ∀ n, P6575520029614557405.a n = A090314 n

end A090314

/-!
# A090316: a(n) = 24*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 24.

The programs for A090316, the canonical program `A090316.P8294252785946216393` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090316 has offset 0).

The definition of A090316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*a(n-1)+a(n-2)` (program `A090316.P8294252785946216393`, by `A090316.P8294252785946216393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090316.P8294252785946216393

`24*a(n-1)+a(n-2)` with `a(0)=2, a(1)=24`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090316

/-- `24*a(n-1)+a(n-2)` -/
def P8294252785946216393.Spec : Prop :=
  ∀ n, (P8294252785946216393.a n : ℤ) = A090316 n

theorem P8294252785946216393.correct : P8294252785946216393.Spec := by
  intro n
  simp only [A090316]

end A090316

/-! ## A090316.P14603052981566532354

`(12+sqrt(145))^n+(12-sqrt(145))^n`
-/

namespace A090316.P14603052981566532354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (12 + Real.sqrt (145 : ℝ)) ^ n + (12 - Real.sqrt (145 : ℝ)) ^ n

end

end A090316.P14603052981566532354

namespace A090316

/-- `(12+sqrt(145))^n+(12-sqrt(145))^n` -/
def P14603052981566532354.Spec : Prop :=
  ∀ n, P14603052981566532354.a n = (A090316 n : ℝ)

theorem P14603052981566532354.correct : P14603052981566532354.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090316, Nat.add_sub_cancel, A090316.P14603052981566532354.a, A090316.P8294252785946216393.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090316, Nat.add_sub_cancel, A090316.P14603052981566532354.a, A090316.P8294252785946216393.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090316

/-! ## A090316.P16833683667253407777

`ogf((-2+24x)/(-1+24x+x^2))`
-/

namespace A090316.P16833683667253407777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -24] [1, -24, -1] n

end

end A090316.P16833683667253407777

namespace A090316

/-- `ogf((-2+24x)/(-1+24x+x^2))` -/
def P16833683667253407777.Spec : Prop :=
  ∀ n, P16833683667253407777.a n = A090316 n

end A090316

/-! ## A090316.P8181573315229518439

`2*A041264(n+1)%A041264(n)`
-/

namespace A090316.P8181573315229518439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A041264 (n + 1)) (A041264 n)

end

end A090316.P8181573315229518439

namespace A090316

/-- `2*A041264(n+1)%A041264(n)` -/
def P8181573315229518439.Spec : Prop :=
  ∀ n, P8181573315229518439.a n = A090316 n

end A090316

/-! ## A090316.P14089811409959226860

`lcm(2, A042110(n+1)%A042110(n))`
-/

namespace A090316.P14089811409959226860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.tmod (A042110 (n + 1)) (A042110 n))

end

end A090316.P14089811409959226860

namespace A090316

/-- `lcm(2, A042110(n+1)%A042110(n))` -/
def P14089811409959226860.Spec : Prop :=
  ∀ n, (P14089811409959226860.a n : ℤ) = A090316 n

end A090316

/-! ## A090316.P17812438676390775691

`(A041265(n+2)+A041265(n))%A041264(n)`
-/

namespace A090316.P17812438676390775691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041265 (n + 2) + A041265 n) (A041264 n)

end

end A090316.P17812438676390775691

namespace A090316

/-- `(A041265(n+2)+A041265(n))%A041264(n)` -/
def P17812438676390775691.Spec : Prop :=
  ∀ n, P17812438676390775691.a n = A090316 n

end A090316

/-!
# A090317: Row sums of triangle in A090285.

The programs for A090317, there is no canonical definition to state claims against.
-/

/-! ## A090317.P1167322556213985293

`(A007854(n)+A000108(n))/2`
-/

namespace A090317.P1167322556213985293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007854 n + A000108 n : ℚ) / 2

end

end A090317.P1167322556213985293

/-! ## A090317.P5857673356716832628

`2*A007854(n)-A049027(n+1)`
-/

namespace A090317.P5857673356716832628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007854 n - A049027 (n + 1)

end

end A090317.P5857673356716832628

/-! ## A090317.P10726991092468805444

`A049027(n+1)+A000108(n)-A007854(n)`
-/

namespace A090317.P10726991092468805444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049027 (n + 1) + (A000108 n - A007854 n)

end

end A090317.P10726991092468805444

/-! ## A090317.P7357319857426310333

`A067336(n)-A049027(n+1)%A049027(n)`
-/

namespace A090317.P7357319857426310333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067336 n - Int.tmod (A049027 (n + 1)) (A049027 n)

end

end A090317.P7357319857426310333

/-! ## A090317.P17619038162442333175

`A128308((n+1)²+n²)`
-/

namespace A090317.P17619038162442333175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128308 ((n + 1) ^ 2 + n ^ 2)

end

end A090317.P17619038162442333175

/-!
# A090319: Fifth column (k=4) of triangle A084938.

The programs for A090319, there is no canonical definition to state claims against.
-/

/-! ## A090319.P18327012386823952906

`A084938(A155212(n)+12)`
-/

namespace A090319.P18327012386823952906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A155212 n + 12).toNat

end

end A090319.P18327012386823952906

/-! ## A090319.P9835348123872025629

`A084938(eq[4, A002262(n)])`
-/

namespace A090319.P9835348123872025629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090319.P9835348123872025629

/-! ## A090319.P5670045474415830215

`A084938(A167499(n+3)-1)`
-/

namespace A090319.P5670045474415830215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A167499 (n + 3) - 1).toNat

end

end A090319.P5670045474415830215

/-! ## A090319.P13420063011159297370

`A084938(A134869(n+4)+3)`
-/

namespace A090319.P13420063011159297370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A134869 (n + 4) + 3).toNat

end

end A090319.P13420063011159297370

/-! ## A090319.P11114008109596265114

`A084938(A000096(n+3)+5)`
-/

namespace A090319.P11114008109596265114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000096 (n + 3) + 5).toNat

end

end A090319.P11114008109596265114

/-! ## A090319.P12803357867933451266

`A084938(A052905(n+1)+9)`
-/

namespace A090319.P12803357867933451266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A052905 (n + 1) + 9).toNat

end

end A090319.P12803357867933451266

/-! ## A090319.P999574020838404543

`A084938(eq[5, A002260(n+1)])`
-/

namespace A090319.P999574020838404543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090319.P999574020838404543

/-! ## A090319.P17297098017679906679

`record[A084938((n+1)%A009766(n))]`
-/

namespace A090319.P17297098017679906679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (Int.tmod (n + 1 : ℤ) (A009766 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090319.P17297098017679906679

/-! ## A090319.P6714264984515004082

`A084938(A166136(n+2)+n+2)`
-/

namespace A090319.P6714264984515004082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A166136 (n + 2) + (n + 2 : ℤ)).toNat

end

end A090319.P6714264984515004082

/-! ## A090319.P13567756395024890155

`A084938(A000217(n+5)-(n+1))`
-/

namespace A090319.P13567756395024890155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A090319.P13567756395024890155

/-!
# A090321: T(n,k) = prime(n+1) - prime(n-k+1), 1<=k<=n, triangular array read by rows.

The programs for A090321, the canonical program `A090321.P15512568863388855327` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090321 has offset 1).

The definition of A090321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090321.P15049081914709012218

`A389809(n+1)-A104887(n+1)`
-/

namespace A090321.P15049081914709012218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (n + 1) - A104887 (n + 1)

end

end A090321.P15049081914709012218

namespace A090321

/-- `A389809(n+1)-A104887(n+1)` -/
def P15049081914709012218.Spec : Prop :=
  ∀ n, P15049081914709012218.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P4535815768963102240

`A000040(comp[∑[n]]-n)-A104887(n+1)`
-/

namespace A090321.P4535815768963102240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A104887 (n + 1)

end

end A090321.P4535815768963102240

namespace A090321

/-- `A000040(comp[∑[n]]-n)-A104887(n+1)` -/
def P4535815768963102240.Spec : Prop :=
  ∀ n, P4535815768963102240.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P15512568863388855327

`A000040(A003057(n+2))-A000040(A004736(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A090321

/-- `A000040(A003057(n+2))-A000040(A004736(n+1))` -/
def P15512568863388855327.Spec : Prop :=
  ∀ n, P15512568863388855327.a n = A090321 (n + 1)

theorem P15512568863388855327.correct : P15512568863388855327.Spec := by
  intro n
  simp only [A090321, Nat.add_sub_cancel]

end A090321

/-! ## A090321.P4539137559843386022

`A000040(A002024(n+1)+1)-A000040(A004736(n+1))`
-/

namespace A090321.P4539137559843386022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1) + 1).toNat - A000040 (A004736 (n + 1)).toNat

end

end A090321.P4539137559843386022

namespace A090321

/-- `A000040(A002024(n+1)+1)-A000040(A004736(n+1))` -/
def P4539137559843386022.Spec : Prop :=
  ∀ n, P4539137559843386022.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P3730971933408149867

`A204890(∑[char[∑[n]]]²-n)`
-/

namespace A090321.P3730971933408149867
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A090321.P3730971933408149867

namespace A090321

/-- `A204890(∑[char[∑[n]]]²-n)` -/
def P3730971933408149867.Spec : Prop :=
  ∀ n, P3730971933408149867.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P399837387053134165

`abs(1-A204890(A038722(n+1)))+1`
-/

namespace A090321.P399837387053134165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A204890 (A038722 (n + 1)).toNat| + 1

end

end A090321.P399837387053134165

namespace A090321

/-- `abs(1-A204890(A038722(n+1)))+1` -/
def P399837387053134165.Spec : Prop :=
  ∀ n, P399837387053134165.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P4156346531844791733

`∑{d}[A204890(A038722(n+1)), A000010(#)]`
-/

namespace A090321.P4156346531844791733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A090321.P4156346531844791733

namespace A090321

/-- `∑{d}[A204890(A038722(n+1)), A000010(#)]` -/
def P4156346531844791733.Spec : Prop :=
  ∀ n, P4156346531844791733.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P4105492751953533475

`A007318(C(2, n))*A204890(A038722(n+1))`
-/

namespace A090321.P4105492751953533475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A204890 (A038722 (n + 1)).toNat

end

end A090321.P4105492751953533475

namespace A090321

/-- `A007318(C(2, n))*A204890(A038722(n+1))` -/
def P4105492751953533475.Spec : Prop :=
  ∀ n, P4105492751953533475.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P13705276720320974736

`A086800(2*(C(comp[∑[n]]-n, 2)-n)+n)`
-/

namespace A090321.P13705276720320974736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) + (n : ℤ)).toNat

end

end A090321.P13705276720320974736

namespace A090321

/-- `A086800(2*(C(comp[∑[n]]-n, 2)-n)+n)` -/
def P13705276720320974736.Spec : Prop :=
  ∀ n, P13705276720320974736.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P9188234417220875734

`A086800(A099375(n)+1+n)`
-/

namespace A090321.P9188234417220875734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (A099375 n + 1 + (n : ℤ)).toNat

end

end A090321.P9188234417220875734

namespace A090321

/-- `A086800(A099375(n)+1+n)` -/
def P9188234417220875734.Spec : Prop :=
  ∀ n, P9188234417220875734.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P11617826972468386287

`A086800(2*A004736(n+1)+n)`
-/

namespace A090321.P11617826972468386287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A090321.P11617826972468386287

namespace A090321

/-- `A086800(2*A004736(n+1)+n)` -/
def P11617826972468386287.Spec : Prop :=
  ∀ n, P11617826972468386287.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P4302811055799058988

`A086800(2*A025581(n)+n+2)`
-/

namespace A090321.P4302811055799058988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (2 * A025581 n + (n + 2 : ℤ)).toNat

end

end A090321.P4302811055799058988

namespace A090321

/-- `A086800(2*A025581(n)+n+2)` -/
def P4302811055799058988.Spec : Prop :=
  ∀ n, P4302811055799058988.a n = A090321 (n + 1)

end A090321

/-! ## A090321.P1627870852759911372

`A086800(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A090321.P1627870852759911372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A090321.P1627870852759911372

namespace A090321

/-- `A086800(A004736(n+1)+A004736(n+1)+n)` -/
def P1627870852759911372.Spec : Prop :=
  ∀ n, P1627870852759911372.a n = A090321 (n + 1)

end A090321

/-!
# A090323: Concatenation of terms in each row of A124832.

The programs for A090323, there is no canonical definition to state claims against.
-/

/-! ## A090323.P4794756253300128392

`A037916(A025487(n+2))`
-/

namespace A090323.P4794756253300128392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A025487 (n + 2)).toNat

end

end A090323.P4794756253300128392

/-! ## A090323.P4787084383784611872

`A127668(A181820(n+2))`
-/

namespace A090323.P4787084383784611872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127668 (A181820 (n + 2)).toNat

end

end A090323.P4787084383784611872

/-! ## A090323.P712695554334933636

`A037916(record[A046523(n+2)])`
-/

namespace A090323.P712695554334933636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090323.P712695554334933636

/-! ## A090323.P7070239252095714249

`A037916(∑[A178799(n+1)]+1)`
-/

namespace A090323.P7070239252095714249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A090323.P7070239252095714249

/-! ## A090323.P6145254776007154640

`A037916(record[A089247(A071364(2*(n+1)))])`
-/

namespace A090323.P6145254776007154640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090323.P6145254776007154640

/-! ## A090323.P15453317610381986743

`A037916(record[A181821(A181819(2*(n+1)))])`
-/

namespace A090323.P15453317610381986743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090323.P15453317610381986743

/-!
# A090324: Second in a series of triangular arrays generating the natural numbers (cf. A079946).

The programs for A090324, there is no canonical definition to state claims against.
-/

/-! ## A090324.P15404957289772958982

`A083329(C(comp[∑[n]]-n, 2)-n)+2^(comp[∑[n]]-n)`
-/

namespace A090324.P15404957289772958982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083329 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ) + (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

end

end A090324.P15404957289772958982

/-! ## A090324.P4053176674034558925

`A359194(A175332(n+1))`
-/

namespace A090324.P4053176674034558925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359194 (A175332 (n + 1)).toNat

end

end A090324.P4053176674034558925

/-! ## A090324.P5504625051884432776

`A059894(eq[1, A079071(n)])`
-/

namespace A090324.P5504625051884432776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090324.P5504625051884432776

/-! ## A090324.P13804670163983157399

`A298847(eq[1, A079071(n)])`
-/

namespace A090324.P13804670163983157399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090324.P13804670163983157399

/-! ## A090324.P8820279922316516436

`A359194(A164874(n+1)+1)`
-/

namespace A090324.P8820279922316516436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359194 (A164874 (n + 1) + 1).toNat

end

end A090324.P8820279922316516436

/-!
# A090326: Number of rules of a context-free grammar in Chomsky normal form that generates all permutations of n symbols.

The programs for A090326, the canonical program `A090326.P5790845981437162756` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090326 has offset 1).

The definition of A090326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090326.P5790845981437162756

`3^(n+1)-2^(n+2)+n+1+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090326

/-- `3^(n+1)-2^(n+2)+n+1+1` -/
def P5790845981437162756.Spec : Prop :=
  ∀ n, P5790845981437162756.a n = A090326 (n + 1)

theorem P5790845981437162756.correct : P5790845981437162756.Spec := by
  intro n
  simp only [A090326, Nat.add_sub_cancel]

end A090326

/-! ## A090326.P9360303126151318362

`∑[∑[ogf((1-3x+4x^2)/(1-5x+6x^2))]]`
-/

namespace A090326.P9360303126151318362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -5, 6] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090326.P9360303126151318362

namespace A090326

/-- `∑[∑[ogf((1-3x+4x^2)/(1-5x+6x^2))]]` -/
def P9360303126151318362.Spec : Prop :=
  ∀ n, P9360303126151318362.a n = A090326 (n + 1)

end A090326

/-! ## A090326.P736105701600325153

`∑[A002783(n)]`
-/

namespace A090326.P736105701600325153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090326.P736105701600325153

namespace A090326

/-- `∑[A002783(n)]` -/
def P736105701600325153.Spec : Prop :=
  ∀ n, P736105701600325153.a n = A090326 (n + 1)

end A090326

/-! ## A090326.P1865442256237189169

`∑[A056182(n)+1]`
-/

namespace A090326.P1865442256237189169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056182 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090326.P1865442256237189169

namespace A090326

/-- `∑[A056182(n)+1]` -/
def P1865442256237189169.Spec : Prop :=
  ∀ n, P1865442256237189169.a n = A090326 (n + 1)

end A090326

/-! ## A090326.P6691464372004272213

`record[ratio[A176428(n)]]`
-/

namespace A090326.P6691464372004272213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176428 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090326.P6691464372004272213

namespace A090326

/-- `record[ratio[A176428(n)]]` -/
def P6691464372004272213.Spec : Prop :=
  ∀ n, P6691464372004272213.a n = (A090326 (n + 1) : ℚ)

end A090326

/-!
# A090327: Number of rules of a context-free grammar in Chomsky normal form that generates all permutations of n symbols.

The programs for A090327, the canonical program `A090327.P16952469586221601951` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090327 has offset 1).

The definition of A090327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090327.P16952469586221601951

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=30`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090327

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P16952469586221601951.Spec : Prop :=
  ∀ n, P16952469586221601951.a n = A090327 (n + 1)

theorem P16952469586221601951.correct : P16952469586221601951.Spec := by
  intro n
  simp only [A090327, Nat.add_sub_cancel]

end A090327

/-! ## A090327.P4333331847978938824

`∑[ogf((1-2x-2x^2+2x^3)/(1-5x+6x^2))]`
-/

namespace A090327.P4333331847978938824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2, 2] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090327.P4333331847978938824

namespace A090327

/-- `∑[ogf((1-2x-2x^2+2x^3)/(1-5x+6x^2))]` -/
def P4333331847978938824.Spec : Prop :=
  ∀ n, P4333331847978938824.a n = A090327 (n + 1)

end A090327

/-! ## A090327.P3373104598658287103

`∑[3*a(n-1)]+2^n` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A090327.P3373104598658287103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A090327.P3373104598658287103

namespace A090327

/-- `∑[3*a(n-1)]+2^n` -/
def P3373104598658287103.Spec : Prop :=
  ∀ n, (P3373104598658287103.a n : ℤ) = A090327 (n + 1)

end A090327

/-! ## A090327.P8027781860728282789

`2^n+3^n-ceil(∑[3^(n-2)])`
-/

namespace A090327.P8027781860728282789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 3 ^ n : ℤ) - ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A090327.P8027781860728282789

namespace A090327

/-- `2^n+3^n-ceil(∑[3^(n-2)])` -/
def P8027781860728282789.Spec : Prop :=
  ∀ n, P8027781860728282789.a n = A090327 (n + 1)

end A090327

/-! ## A090327.P11329159308033486282

`abs(ceil(∑[3^(n-2)])-A007689(n))`
-/

namespace A090327.P11329159308033486282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - A007689 n|

end

end A090327.P11329159308033486282

namespace A090327

/-- `abs(ceil(∑[3^(n-2)])-A007689(n))` -/
def P11329159308033486282.Spec : Prop :=
  ∀ n, P11329159308033486282.a n = A090327 (n + 1)

end A090327

/-! ## A090327.P13504422887472774885

`abs(2^n+∑[3^n]+1-A052919(n))`
-/

namespace A090327.P13504422887472774885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 ^ n + (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) - A052919 n|

end

end A090327.P13504422887472774885

namespace A090327

/-- `abs(2^n+∑[3^n]+1-A052919(n))` -/
def P13504422887472774885.Spec : Prop :=
  ∀ n, P13504422887472774885.a n = A090327 (n + 1)

end A090327

/-! ## A090327.P5804327817886325819

`(A168605(n+3)+A134067(n))/2`
-/

namespace A090327.P5804327817886325819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168605 (n + 3) + A134067 n : ℚ) / 2

end

end A090327.P5804327817886325819

namespace A090327

/-- `(A168605(n+3)+A134067(n))/2` -/
def P5804327817886325819.Spec : Prop :=
  ∀ n, P5804327817886325819.a n = (A090327 (n + 1) : ℚ)

end A090327

/-!
# A090328: Number of rules of a context-free grammar in Chomsky normal form that generates all permutations of n symbols.

The programs for A090328, the canonical program `A090328.P5762566011654285797` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090328 has offset 1).

The definition of A090328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090328.P5762566011654285797

`5*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=4, a(2)=12`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090328

/-- `5*a(n-1)-7*a(n-2)+3*a(n-3)` -/
def P5762566011654285797.Spec : Prop :=
  ∀ n, P5762566011654285797.a n = A090328 (n + 1)

theorem P5762566011654285797.correct : P5762566011654285797.Spec := by
  intro n
  simp only [A090328, Nat.add_sub_cancel]

end A090328

/-! ## A090328.P2188089194279766945

`5*3^(n+1)/12+(n+1)/2-3/4`
-/

namespace A090328.P2188089194279766945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 3 ^ (n + 1) : ℚ) / 12 + (n + 1 : ℚ) / 2 - (3 : ℚ) / 4

end

end A090328.P2188089194279766945

namespace A090328

/-- `5*3^(n+1)/12+(n+1)/2-3/4` -/
def P2188089194279766945.Spec : Prop :=
  ∀ n, P2188089194279766945.a n = (A090328 (n + 1) : ℚ)

theorem P2188089194279766945.correct : P2188089194279766945.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A090328, Nat.add_sub_cancel, A090328.P2188089194279766945.a, A090328.P5762566011654285797.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A090328, Nat.add_sub_cancel, A090328.P2188089194279766945.a, A090328.P5762566011654285797.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A090328

/-! ## A090328.P16257718010231649997

`∑[∑[ogf((-1+x+x^2)/(-1+3x))]]`
-/

namespace A090328.P16257718010231649997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P16257718010231649997

namespace A090328

/-- `∑[∑[ogf((-1+x+x^2)/(-1+3x))]]` -/
def P16257718010231649997.Spec : Prop :=
  ∀ n, P16257718010231649997.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P12409608366653663545

`ogf((-1+x+x^2)/(-1+5x-7x^2+3x^3))`
-/

namespace A090328.P12409608366653663545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -5, 7, -3] n

end

end A090328.P12409608366653663545

namespace A090328

/-- `ogf((-1+x+x^2)/(-1+5x-7x^2+3x^3))` -/
def P12409608366653663545.Spec : Prop :=
  ∀ n, P12409608366653663545.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P12078595343300713276

`∑[3*a(n-1)-1]` with `a(0)=1, a(1)=3`
-/

namespace A090328.P12078595343300713276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P12078595343300713276

namespace A090328

/-- `∑[3*a(n-1)-1]` -/
def P12078595343300713276.Spec : Prop :=
  ∀ n, P12078595343300713276.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P904536664844038820

`∑[a(n-1)/cot(atan(3))-1]` with `a(0)=1, a(1)=3`
-/

namespace A090328.P904536664844038820
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) / Real.cot (Real.arctan (3 : ℝ)) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P904536664844038820

namespace A090328

/-- `∑[a(n-1)/cot(atan(3))-1]` -/
def P904536664844038820.Spec : Prop :=
  ∀ n, P904536664844038820.a n = (A090328 (n + 1) : ℝ)

end A090328

/-! ## A090328.P4286047408866197196

`∑[a(n-1)/sqrt(1/9)-1]` with `a(0)=1, a(1)=3`
-/

namespace A090328.P4286047408866197196
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P4286047408866197196

namespace A090328

/-- `∑[a(n-1)/sqrt(1/9)-1]` -/
def P4286047408866197196.Spec : Prop :=
  ∀ n, P4286047408866197196.a n = (A090328 (n + 1) : ℝ)

end A090328

/-! ## A090328.P9628603160238684101

`∑[a(n-1)+a(n-1)+a(n-1)-1]` with `a(0)=1, a(1)=3`
-/

namespace A090328.P9628603160238684101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P9628603160238684101

namespace A090328

/-- `∑[a(n-1)+a(n-1)+a(n-1)-1]` -/
def P9628603160238684101.Spec : Prop :=
  ∀ n, P9628603160238684101.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P7435327169282101912

`∑[a(n-1)-(1-a(n-1)-a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A090328.P7435327169282101912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P7435327169282101912

namespace A090328

/-- `∑[a(n-1)-(1-a(n-1)-a(n-1))]` -/
def P7435327169282101912.Spec : Prop :=
  ∀ n, P7435327169282101912.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P4407879687537215442

`∑[A246360(2*n+1)]`
-/

namespace A090328.P4407879687537215442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246360 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P4407879687537215442

namespace A090328

/-- `∑[A246360(2*n+1)]` -/
def P4407879687537215442.Spec : Prop :=
  ∀ n, P4407879687537215442.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P15189892579587637599

`floor(A060925(n)+n/2)`
-/

namespace A090328.P15189892579587637599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060925 n : ℚ) + (n : ℚ) / 2⌋

end

end A090328.P15189892579587637599

namespace A090328

/-- `floor(A060925(n)+n/2)` -/
def P15189892579587637599.Spec : Prop :=
  ∀ n, P15189892579587637599.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P17213241771484066516

`∑[A007051(n)+floor(3^(n-1))]`
-/

namespace A090328.P17213241771484066516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P17213241771484066516

namespace A090328

/-- `∑[A007051(n)+floor(3^(n-1))]` -/
def P17213241771484066516.Spec : Prop :=
  ∀ n, P17213241771484066516.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P5094579151891327111

`∑[A140429(n)+A007051(n)]`
-/

namespace A090328.P5094579151891327111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P5094579151891327111

namespace A090328

/-- `∑[A140429(n)+A007051(n)]` -/
def P5094579151891327111.Spec : Prop :=
  ∀ n, P5094579151891327111.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P16020037312103510904

`∑[∑[A154992(n)+A094388(n)]]`
-/

namespace A090328.P16020037312103510904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 n + A094388 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P16020037312103510904

namespace A090328

/-- `∑[∑[A154992(n)+A094388(n)]]` -/
def P16020037312103510904.Spec : Prop :=
  ∀ n, P16020037312103510904.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P11682599864150081796

`∑[∑[A080923(n)-A140429(n)]]`
-/

namespace A090328.P11682599864150081796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 n - A140429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P11682599864150081796

namespace A090328

/-- `∑[∑[A080923(n)-A140429(n)]]` -/
def P11682599864150081796.Spec : Prop :=
  ∀ n, P11682599864150081796.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P16857084869430065129

`∑[A289521(n+1)-(A025192(n)+2)]`
-/

namespace A090328.P16857084869430065129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289521 (n + 1) - (A025192 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090328.P16857084869430065129

namespace A090328

/-- `∑[A289521(n+1)-(A025192(n)+2)]` -/
def P16857084869430065129.Spec : Prop :=
  ∀ n, P16857084869430065129.a n = A090328 (n + 1)

end A090328

/-! ## A090328.P5951191863411093186

`(Δ[A244762(n)]+n)/2`
-/

namespace A090328.P5951191863411093186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244762 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ) : ℚ) / 2

end

end A090328.P5951191863411093186

namespace A090328

/-- `(Δ[A244762(n)]+n)/2` -/
def P5951191863411093186.Spec : Prop :=
  ∀ n, P5951191863411093186.a n = (A090328 (n + 1) : ℚ)

end A090328

/-! ## A090328.P3259840509890685386

`(A060816(n+1)+n)/2`
-/

namespace A090328.P3259840509890685386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060816 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A090328.P3259840509890685386

namespace A090328

/-- `(A060816(n+1)+n)/2` -/
def P3259840509890685386.Spec : Prop :=
  ∀ n, P3259840509890685386.a n = (A090328 (n + 1) : ℚ)

end A090328

/-! ## A090328.P3026641755757842453

`(A134931(n)+n+1)/2`
-/

namespace A090328.P3026641755757842453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134931 n + (n + 1 : ℤ) : ℚ) / 2

end

end A090328.P3026641755757842453

namespace A090328

/-- `(A134931(n)+n+1)/2` -/
def P3026641755757842453.Spec : Prop :=
  ∀ n, P3026641755757842453.a n = (A090328 (n + 1) : ℚ)

end A090328

/-!
# A090329: Number of divisors of n that are prefixes of other divisors of n in binary representation.

The programs for A090329, there is no canonical definition to state claims against.
-/

/-! ## A090329.P4214093466117196807

`ceil(A090330(n+1)+abs(sin(n)))`
-/

namespace A090329.P4214093466117196807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090330 (n + 1) : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A090329.P4214093466117196807

/-! ## A090329.P6221507061106723134

`A090330(n+1)+A057427(n)`
-/

namespace A090329.P6221507061106723134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + A057427 n

end

end A090329.P6221507061106723134

/-! ## A090329.P15337367939942750205

`A178334(n)+A090330(n+1)`
-/

namespace A090329.P15337367939942750205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A090330 (n + 1)

end

end A090329.P15337367939942750205

/-! ## A090329.P14353022188949661511

`A090330(n+1)-A057428(n)`
-/

namespace A090329.P14353022188949661511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) - A057428 n

end

end A090329.P14353022188949661511

/-! ## A090329.P16817417901596661031

`A090330(n+1)+A002828(n²)`
-/

namespace A090329.P16817417901596661031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + A002828 (n ^ 2)

end

end A090329.P16817417901596661031

/-! ## A090329.P14775741472882668868

`A090330(n+1)+char[A000174(n)]`
-/

namespace A090329.P14775741472882668868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090329.P14775741472882668868

/-! ## A090329.P12108862672103209910

`A090330(n+1)+char[A007306(n)]`
-/

namespace A090329.P12108862672103209910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090329.P12108862672103209910

/-! ## A090329.P15200237901948289032

`A090330(n+1)+1-A000007(n)`
-/

namespace A090329.P15200237901948289032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + (1 - A000007 n)

end

end A090329.P15200237901948289032

/-! ## A090329.P3267677934543966539

`A090330(n+1)+A000040(n+1)%2`
-/

namespace A090329.P3267677934543966539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A090329.P3267677934543966539

/-! ## A090329.P15880083199108062436

`A090330(n+1)--1%A000203(n+1)`
-/

namespace A090329.P15880083199108062436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) - Int.tmod (-1) (A000203 (n + 1))

end

end A090329.P15880083199108062436

/-! ## A090329.P3690458709363450362

`A090330(n+1)+A000045(2-C(2, n+1))`
-/

namespace A090329.P3690458709363450362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + A000045 (2 - Nat.choose 2 (n + 1))

end

end A090329.P3690458709363450362

/-! ## A090329.P4747400071450195538

`A090330(n+1)+A001221(A001316(n))`
-/

namespace A090329.P4747400071450195538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + A001221 (A001316 n).toNat

end

end A090329.P4747400071450195538

/-! ## A090329.P17031830359069271461

`A090330(n+1)+A000035(A000040(n+1))`
-/

namespace A090329.P17031830359069271461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + A000035 (A000040 (n + 1)).toNat

end

end A090329.P17031830359069271461

/-! ## A090329.P15716651311984214869

`A090330(n+1)+A001221(A000015(n+1))`
-/

namespace A090329.P15716651311984214869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + A001221 (A000015 (n + 1)).toNat

end

end A090329.P15716651311984214869

/-! ## A090329.P8567367290303401489

`A090330(n+1)+A001221(A020639(n+1))`
-/

namespace A090329.P8567367290303401489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + A001221 (A020639 (n + 1)).toNat

end

end A090329.P8567367290303401489

/-! ## A090329.P10419464262891315727

`A090330(n+1)+A020639(A000010(n+2))-1`
-/

namespace A090329.P10419464262891315727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + (A020639 (A000010 (n + 2)).toNat - 1)

end

end A090329.P10419464262891315727

/-! ## A090329.P6473212138707395043

`A090330(n+1)+A008683(2*A000040(n+1))`
-/

namespace A090329.P6473212138707395043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + A008683 (2 * A000040 (n + 1)).toNat

end

end A090329.P6473212138707395043

/-! ## A090329.P14129552654812974360

`A090330(n+1)+A001221(A000032(C(2, n+2)))`
-/

namespace A090329.P14129552654812974360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090330 (n + 1) + A001221 (A000032 (Nat.choose 2 (n + 2))).toNat

end

end A090329.P14129552654812974360

/-!
# A090330: Number of divisors >1 of n that are prefixes of other divisors of n in binary representation.

The programs for A090330, there is no canonical definition to state claims against.
-/

/-! ## A090330.P15449290806376147023

`floor(log(cosh(A090329(n+1))))`
-/

namespace A090330.P15449290806376147023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A090329 (n + 1) : ℝ))⌋

end

end A090330.P15449290806376147023

/-! ## A090330.P3912356290974307666

`A090329(round(sqrt(n²+1))+1)-1`
-/

namespace A090330.P3912356290974307666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090329 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat - 1

end

end A090330.P3912356290974307666

/-! ## A090330.P5281253461674921143

`A259361(A090329(n+1)²)`
-/

namespace A090330.P5281253461674921143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A090329 (n + 1) ^ 2).toNat

end

end A090330.P5281253461674921143

/-! ## A090330.P1675461530877357871

`A005358(A090329(n+1)+4)`
-/

namespace A090330.P1675461530877357871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005358 (A090329 (n + 1) + 4).toNat

end

end A090330.P1675461530877357871

/-! ## A090330.P15988803852700297844

`A032615(3*A090329(n+1))`
-/

namespace A090330.P15988803852700297844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (3 * A090329 (n + 1)).toNat

end

end A090330.P15988803852700297844

/-! ## A090330.P564722976287817971

`A048105(2^A090329(n+1))`
-/

namespace A090330.P564722976287817971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A090329 (n + 1) : ℤ))).toNat

end

end A090330.P564722976287817971

/-! ## A090330.P6721775552500858557

`val(A000217(2^A090329(n+1)), 2)`
-/

namespace A090330.P6721775552500858557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000217 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A090329 (n + 1) : ℤ))).toNat).toNat 2

end

end A090330.P6721775552500858557

/-! ## A090330.P16956904563574517841

`(1-A090329(n+1))*A057428(n)`
-/

namespace A090330.P16956904563574517841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A090329 (n + 1)) * A057428 n

end

end A090330.P16956904563574517841

/-! ## A090330.P10976617996284246688

`(A090329(n+1)-1)*A057427(n)`
-/

namespace A090330.P10976617996284246688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090329 (n + 1) - 1) * A057427 n

end

end A090330.P10976617996284246688

/-! ## A090330.P15638857978806601466

`(A090329(n+1)-1)%A000041(n)`
-/

namespace A090330.P15638857978806601466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090329 (n + 1) - 1) (A000041 n)

end

end A090330.P15638857978806601466

/-! ## A090330.P859612925736544487

`A001222(A000010(2^A090329(n+1)))`
-/

namespace A090330.P859612925736544487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A090329 (n + 1) : ℤ))).toNat).toNat

end

end A090330.P859612925736544487

/-! ## A090330.P448414988617440653

`∑{d}[2^A090329(n+1), A001221(A000010(#))]`
-/

namespace A090330.P448414988617440653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A090329 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 (A000010 d).toNat

end

end A090330.P448414988617440653

/-!
# A090331: Largest proper divisor of n that is also a prefix of n in binary.

The programs for A090331, there is no canonical definition to state claims against.
-/

/-! ## A090331.P5084730125273944457

`gcd(n+2, A028310(A135157(n)))`
-/

namespace A090331.P5084730125273944457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A028310 (A135157 n).toNat)

end

end A090331.P5084730125273944457

/-! ## A090331.P5256033838412802641

`gcd(A004277(A135157(n)), A145051(n+1))`
-/

namespace A090331.P5256033838412802641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004277 (A135157 n).toNat) (A145051 (n + 1))

end

end A090331.P5256033838412802641

/-! ## A090331.P14203506284013263253

`gcd(A052938(n), A316355(A052120(n+1)))`
-/

namespace A090331.P14203506284013263253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052938 n) (A316355 (A052120 (n + 1)).toNat)

end

end A090331.P14203506284013263253

/-! ## A090331.P17693081151130519019

`gcd(A319998(n+1)%A167662(2*n+1), A026741(n+2))`
-/

namespace A090331.P17693081151130519019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A319998 (n + 1)) (A167662 (2 * n + 1))) (A026741 (n + 2))

end

end A090331.P17693081151130519019

/-! ## A090331.P1316878072001679732

`gcd((n+2)², A000005(A208887(n)))`
-/

namespace A090331.P1316878072001679732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 2) ^ 2 : ℤ) (A000005 (A208887 n).toNat)

end

end A090331.P1316878072001679732

/-!
# A090332: Numbers with no divisors >1 that are prefixes of other divisors in binary representation.

The programs for A090332, there is no canonical definition to state claims against.
-/

/-! ## A090332.P11480781588329218605

`∪[A000040(n+1), A090333(n+1)]`
-/

namespace A090332.P11480781588329218605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090332.P11480781588329218605

/-! ## A090332.P16618212332255479896

`∪[A008578(n+1), A090333(n+1)]`
-/

namespace A090332.P16618212332255479896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090332.P16618212332255479896

/-! ## A090332.P7627116852161879728

`∪[A033946(n+1), A090333(n+1)]`
-/

namespace A090332.P7627116852161879728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090332.P7627116852161879728

/-! ## A090332.P13976367129844565128

`∪[A070159(n+1), A090333(n+1)]`
-/

namespace A090332.P13976367129844565128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090332.P13976367129844565128

/-! ## A090332.P2752971193293365611

`∪[A040976(n+1)+2, A090333(n+1)]`
-/

namespace A090332.P2752971193293365611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090332.P2752971193293365611

/-!
# A090333: Nonprimes with no divisors >1 that are prefixes of other divisors in binary representation.

The programs for A090333, there is no canonical definition to state claims against.
-/

/-! ## A090333.P13981812567088719896

`filter[A090332(n+1), A005171(#)]`
-/

namespace A090333.P13981812567088719896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A090333.P13981812567088719896

/-! ## A090333.P6894567755981761150

`filter[A090332(n+1), A292438(#)]`
-/

namespace A090333.P6894567755981761150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A090333.P6894567755981761150

/-! ## A090333.P12205093888367632880

`∩[A067800(n+1), A090332(n+1)]`
-/

namespace A090333.P12205093888367632880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090333.P12205093888367632880

/-! ## A090333.P283517166695011957

`∩[A014076(n+1), A090332(n+1)]`
-/

namespace A090333.P283517166695011957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090333.P283517166695011957

/-! ## A090333.P18344394060822166124

`∩[A090332(n+1), A264828(n+1)]`
-/

namespace A090333.P18344394060822166124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090333.P18344394060822166124

/-! ## A090333.P3504751556204313266

`∩[A018252(n+1), A090332(n+1)]`
-/

namespace A090333.P3504751556204313266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090333.P3504751556204313266

/-! ## A090333.P14695181768974411483

`∩[A090332(n+1), A141468(n+1)]`
-/

namespace A090333.P14695181768974411483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090333.P14695181768974411483

/-! ## A090333.P4050313420386767215

`∩[A090332(n+1), A164276(n+1)]`
-/

namespace A090333.P4050313420386767215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090333.P4050313420386767215

/-! ## A090333.P6376074615761160712

`∩[A056653(n+1), A090332(n+1)]`
-/

namespace A090333.P6376074615761160712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090333.P6376074615761160712

/-! ## A090333.P15705298637430065505

`record[A191558(A090332(n+1))]`
-/

namespace A090333.P15705298637430065505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A090332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090333.P15705298637430065505

/-! ## A090333.P6746279655599642868

`A026234(p?[A026234(A090332(n+1))])`
-/

namespace A090333.P6746279655599642868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A090332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090333.P6746279655599642868

/-!
# A090334: Numbers with at least one divisor >1 that is a prefix of another divisor in binary representation.

The programs for A090334, there is no canonical definition to state claims against.
-/

/-! ## A090334.P5102316538479440277

`comp[A090332(n+1)-1]+1`
-/

namespace A090334.P5102316538479440277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A090334.P5102316538479440277

/-! ## A090334.P15728610684569511863

`A326178(comp[A090332(n+1)-1])`
-/

namespace A090334.P15728610684569511863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A090334.P15728610684569511863

/-! ## A090334.P16127732492313069624

`eq[char[A090332(n+1)], A000007(n)]`
-/

namespace A090334.P16127732492313069624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A090334.P16127732492313069624

/-! ## A090334.P5311297614905660405

`eq[char[A090332(n+1)], A000038(n)]`
-/

namespace A090334.P5311297614905660405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A090334.P5311297614905660405

/-! ## A090334.P13867291180994088363

`eq[char[A090332(n+1)], A130706(n)]`
-/

namespace A090334.P13867291180994088363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A090334.P13867291180994088363

/-! ## A090334.P5607794262247159445

`lt[1, A090329(n+1)]+1`
-/

namespace A090334.P5607794262247159445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A090334.P5607794262247159445

/-! ## A090334.P12880493391997423087

`eq[2, A010240(a(A090330(n)))]` with `a(0)=1`
-/

namespace A090334.P12880493391997423087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A010240 (f2 (A090330 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090334.P12880493391997423087

/-! ## A090334.P7080529529087404403

`eq[2, A000005(a(A090330(n)))]` with `a(0)=4`
-/

namespace A090334.P7080529529087404403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A090330 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090334.P7080529529087404403

/-! ## A090334.P413876308166953794

`eq[2, A001083(a(A090330(n)))]` with `a(0)=4`
-/

namespace A090334.P413876308166953794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A001083 (f2 (A090330 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090334.P413876308166953794

/-! ## A090334.P253346282278493094

`eq[2, A002024(a(A090330(n)))]` with `a(0)=4`
-/

namespace A090334.P253346282278493094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A002024 (f2 (A090330 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090334.P253346282278493094

/-!
# A090336: Odd-indexed terms of the first binomial transform equals 1 and the even-indexed terms of the third binomial transform equals 1, with a(0)=1.

The programs for A090336, there is no canonical definition to state claims against.
-/

/-! ## A090336.P4737699296316869972

`A122803(n)*A217714(n)`
-/

namespace A090336.P4737699296316869972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A217714 n

end

end A090336.P4737699296316869972

/-! ## A090336.P8381026173315887127

`(A155585(n)-A009832(n))*A122803(n)`
-/

namespace A090336.P8381026173315887127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155585 n - A009832 n) * A122803 n

end

end A090336.P8381026173315887127

/-! ## A090336.P3351674416185240993

`xor(A033999(n), A163747(n))*A122803(n)`
-/

namespace A090336.P3351674416185240993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n) (A163747 n) * A122803 n

end

end A090336.P3351674416185240993

/-! ## A090336.P5751555445570519174

`(A122045(n)+A155585(n)-1)*A122803(n)`
-/

namespace A090336.P5751555445570519174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122045 n + (A155585 n - 1)) * A122803 n

end

end A090336.P5751555445570519174

/-! ## A090336.P7141585639616334200

`xor(A062157(n+1), A163747(n))*A122803(n)`
-/

namespace A090336.P7141585639616334200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062157 (n + 1)) (A163747 n) * A122803 n

end

end A090336.P7141585639616334200

/-!
# A090337: Let b(0) = 1, b(n) = b(n-1) + (-1)^(n-1)*b(n-1)/10; sequence gives numerator of b(n).

The programs for A090337, the canonical program `A090337.P5585682778361183875` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090337 has offset 0).

The definition of A090337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090337.P5585682778361183875

`99*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090337

/-- `99*a(n-2)` -/
def P5585682778361183875.Spec : Prop :=
  ∀ n, (P5585682778361183875.a n : ℤ) = A090337 n

theorem P5585682778361183875.correct : P5585682778361183875.Spec := by
  intro n
  simp only [A090337]

end A090337

/-! ## A090337.P9084409891590196075

`∏[xor(10, a(n-1)%4)]` with `a(0)=1`
-/

namespace A090337.P9084409891590196075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 10 (f1 (n - 1) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090337.P9084409891590196075

namespace A090337

/-- `∏[xor(10, a(n-1)%4)]` -/
def P9084409891590196075.Spec : Prop :=
  ∀ n, (P9084409891590196075.a n : ℤ) = A090337 n

end A090337

/-! ## A090337.P2969973060483008661

`∏[and(7, -a(n-1))+4]` with `a(0)=1`
-/

namespace A090337.P2969973060483008661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land 7 (-f1 (n - 1)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090337.P2969973060483008661

namespace A090337

/-- `∏[and(7, -a(n-1))+4]` -/
def P2969973060483008661.Spec : Prop :=
  ∀ n, P2969973060483008661.a n = A090337 n

end A090337

/-! ## A090337.P1680358117330337128

`∏[and(11, A016150(n))]`
-/

namespace A090337.P1680358117330337128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 11 (A016150 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090337.P1680358117330337128

namespace A090337

/-- `∏[and(11, A016150(n))]` -/
def P1680358117330337128.Spec : Prop :=
  ∀ n, P1680358117330337128.a n = A090337 n

end A090337

/-! ## A090337.P5758388035626664659

`∏[xor(2, a(n-1))]/9` with `a(0)=9`
-/

namespace A090337.P5758388035626664659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  Nat.xor 2 (f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9

end

end A090337.P5758388035626664659

namespace A090337

/-- `∏[xor(2, a(n-1))]/9` -/
def P5758388035626664659.Spec : Prop :=
  ∀ n, P5758388035626664659.a n = (A090337 n : ℚ)

end A090337

/-!
# A090338: Number of ways of arranging n straight lines in general position in the (affine) plane.

The programs for A090338, there is no canonical definition to state claims against.
-/

/-! ## A090338.P11880656359087980153

`A090339(n^gcd((n+1)/and(n+1, -(n+1)), ∑{p}[n+1, (n+1)/#]))`
-/

namespace A090338.P11880656359087980153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090339 (n ^ Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A090338.P11880656359087980153

/-! ## A090338.P9785114667419815341

`A090339(A007094(n))`
-/

namespace A090338.P9785114667419815341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090339 (A007094 n).toNat

end

end A090338.P9785114667419815341

/-! ## A090338.P926607167342607288

`A090339(A010754(n))`
-/

namespace A090338.P926607167342607288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090339 (A010754 n).toNat

end

end A090338.P926607167342607288

/-! ## A090338.P15286196652401960605

`A028310(A090339(n))`
-/

namespace A090338.P15286196652401960605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A090339 n).toNat

end

end A090338.P15286196652401960605

/-!
# A090340: Difference between the sums of the prime factors, including multiplicity, of n and those of n + 1.

The programs for A090340, the canonical program `A090340.P8106175153213061609` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090340 has offset 1).

The definition of A090340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090340.P8106175153213061609

`Δ[-A001414(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090340

/-- `Δ[-A001414(n+1)]` -/
def P8106175153213061609.Spec : Prop :=
  ∀ n, P8106175153213061609.a n = A090340 (n + 1)

theorem P8106175153213061609.correct : P8106175153213061609.Spec := by
  intro n
  simp only [A090340, Nat.add_sub_cancel]

end A090340

/-! ## A090340.P10386058790835216760

`A001414(n+1)-A001414(n+2)`
-/

namespace A090340.P10386058790835216760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001414 (n + 2)

end

end A090340.P10386058790835216760

namespace A090340

/-- `A001414(n+1)-A001414(n+2)` -/
def P10386058790835216760.Spec : Prop :=
  ∀ n, P10386058790835216760.a n = A090340 (n + 1)

theorem P10386058790835216760.correct : P10386058790835216760.Spec := by
  intro n
  simp only [A090340, Nat.add_sub_cancel, A090340.P10386058790835216760.a, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A090340

/-! ## A090340.P18049377526120387239

`Δ[-A036288(n+1)]`
-/

namespace A090340.P18049377526120387239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A036288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090340.P18049377526120387239

namespace A090340

/-- `Δ[-A036288(n+1)]` -/
def P18049377526120387239.Spec : Prop :=
  ∀ n, P18049377526120387239.a n = A090340 (n + 1)

theorem P18049377526120387239.correct : P18049377526120387239.Spec := by
  intro n
  simp only [A090340, Nat.add_sub_cancel, A090340.P18049377526120387239.f1, A090340.P18049377526120387239.a, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090340

/-! ## A090340.P6305356227530559002

`Δ[-A100006(n+1)]`
-/

namespace A090340.P6305356227530559002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A100006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090340.P6305356227530559002

namespace A090340

/-- `Δ[-A100006(n+1)]` -/
def P6305356227530559002.Spec : Prop :=
  ∀ n, P6305356227530559002.a n = A090340 (n + 1)

theorem P6305356227530559002.correct : P6305356227530559002.Spec := by
  intro n
  simp only [A090340, Nat.add_sub_cancel, A090340.P6305356227530559002.f1, A090340.P6305356227530559002.a, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A100006, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090340

/-! ## A090340.P13833060644299957902

`Δ[Δ[n-A025281(n)]]`
-/

namespace A090340.P13833060644299957902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A025281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090340.P13833060644299957902

namespace A090340

/-- `Δ[Δ[n-A025281(n)]]` -/
def P13833060644299957902.Spec : Prop :=
  ∀ n, P13833060644299957902.a n = A090340 (n + 1)

end A090340

/-! ## A090340.P3829312888030030419

`1-Δ[A075254(n+1)]`
-/

namespace A090340.P3829312888030030419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A090340.P3829312888030030419

namespace A090340

/-- `1-Δ[A075254(n+1)]` -/
def P3829312888030030419.Spec : Prop :=
  ∀ n, P3829312888030030419.a n = A090340 (n + 1)

theorem P3829312888030030419.correct : P3829312888030030419.Spec := by
  intro n
  simp only [A090340, Nat.add_sub_cancel, A090340.P3829312888030030419.f1, A090340.P3829312888030030419.a, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A075254, A075254.P6422447875050144596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090340

/-! ## A090340.P16293181694040465178

`Δ[A075255(n+1)]-1`
-/

namespace A090340.P16293181694040465178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A090340.P16293181694040465178

namespace A090340

/-- `Δ[A075255(n+1)]-1` -/
def P16293181694040465178.Spec : Prop :=
  ∀ n, P16293181694040465178.a n = A090340 (n + 1)

theorem P16293181694040465178.correct : P16293181694040465178.Spec := by
  intro n
  simp only [A090340, Nat.add_sub_cancel, A090340.P16293181694040465178.f1, A090340.P16293181694040465178.a, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A075255, A075255.P12137973761347593222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090340

/-! ## A090340.P9786255248963279113

`Δ[-sqrt(A074373(n+1))]`
-/

namespace A090340.P9786255248963279113
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.sqrt (A074373 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090340.P9786255248963279113

namespace A090340

/-- `Δ[-sqrt(A074373(n+1))]` -/
def P9786255248963279113.Spec : Prop :=
  ∀ n, P9786255248963279113.a n = (A090340 (n + 1) : ℝ)

end A090340

/-! ## A090340.P9247576440387658410

`A036288(n+1)-A036288(n+2)`
-/

namespace A090340.P9247576440387658410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A036288 (n + 2)

end

end A090340.P9247576440387658410

namespace A090340

/-- `A036288(n+1)-A036288(n+2)` -/
def P9247576440387658410.Spec : Prop :=
  ∀ n, P9247576440387658410.a n = A090340 (n + 1)

theorem P9247576440387658410.correct : P9247576440387658410.Spec := by
  intro n
  simp only [A090340, Nat.add_sub_cancel, A090340.P9247576440387658410.a, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090340

/-! ## A090340.P9504650257157231753

`A090342(n+1)-A090341(n+2)`
-/

namespace A090340.P9504650257157231753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090342 (n + 1) - A090341 (n + 2)

end

end A090340.P9504650257157231753

namespace A090340

/-- `A090342(n+1)-A090341(n+2)` -/
def P9504650257157231753.Spec : Prop :=
  ∀ n, P9504650257157231753.a n = A090340 (n + 1)

theorem P9504650257157231753.correct : P9504650257157231753.Spec := by
  intro n
  simp only [A090340, Nat.add_sub_cancel, A090340.P9504650257157231753.a, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A090341, A090341.P7917850924027615993.a, A090342, A090342.P3390152840688326759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090340

/-! ## A090340.P14818767629345788848

`A090343(n+1)-A090342(n+2)`
-/

namespace A090340.P14818767629345788848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090343 (n + 1) - A090342 (n + 2)

end

end A090340.P14818767629345788848

namespace A090340

/-- `A090343(n+1)-A090342(n+2)` -/
def P14818767629345788848.Spec : Prop :=
  ∀ n, P14818767629345788848.a n = A090340 (n + 1)

theorem P14818767629345788848.correct : P14818767629345788848.Spec := by
  intro n
  simp only [A090340, Nat.add_sub_cancel, A090340.P14818767629345788848.a, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A090342, A090342.P3390152840688326759.a, A090343, A090343.P16771865766798184148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090340

/-! ## A090340.P16515173282108835778

`A100006(n+1)-A100006(n+2)`
-/

namespace A090340.P16515173282108835778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - A100006 (n + 2)

end

end A090340.P16515173282108835778

namespace A090340

/-- `A100006(n+1)-A100006(n+2)` -/
def P16515173282108835778.Spec : Prop :=
  ∀ n, P16515173282108835778.a n = A090340 (n + 1)

theorem P16515173282108835778.correct : P16515173282108835778.Spec := by
  intro n
  simp only [A090340, Nat.add_sub_cancel, A090340.P16515173282108835778.a, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A100006, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090340

/-! ## A090340.P3050469025173805570

`A090341(2*(n+1))`
-/

namespace A090340.P3050469025173805570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090341 (2 * (n + 1))

end

end A090340.P3050469025173805570

namespace A090340

/-- `A090341(2*(n+1))` -/
def P3050469025173805570.Spec : Prop :=
  ∀ n, P3050469025173805570.a n = A090340 (n + 1)

end A090340

/-! ## A090340.P11697954183504044147

`A090343(2*(n+1))+Δ[A001414(n+2)]`
-/

namespace A090340.P11697954183504044147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090343 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A090340.P11697954183504044147

namespace A090340

/-- `A090343(2*(n+1))+Δ[A001414(n+2)]` -/
def P11697954183504044147.Spec : Prop :=
  ∀ n, P11697954183504044147.a n = A090340 (n + 1)

end A090340

/-! ## A090340.P17614792042098427241

`A090343(2*(n+1))+Δ[A036288(n+2)]`
-/

namespace A090340.P17614792042098427241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090343 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A090340.P17614792042098427241

namespace A090340

/-- `A090343(2*(n+1))+Δ[A036288(n+2)]` -/
def P17614792042098427241.Spec : Prop :=
  ∀ n, P17614792042098427241.a n = A090340 (n + 1)

end A090340

/-! ## A090340.P15707664216146547416

`A090342(3*(n+1))`
-/

namespace A090340.P15707664216146547416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090342 (3 * (n + 1))

end

end A090340.P15707664216146547416

namespace A090340

/-- `A090342(3*(n+1))` -/
def P15707664216146547416.Spec : Prop :=
  ∀ n, P15707664216146547416.a n = A090340 (n + 1)

end A090340

/-! ## A090340.P10947102730660426198

`A090343(4*(n+1))`
-/

namespace A090340.P10947102730660426198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090343 (4 * (n + 1))

end

end A090340.P10947102730660426198

namespace A090340

/-- `A090343(4*(n+1))` -/
def P10947102730660426198.Spec : Prop :=
  ∀ n, P10947102730660426198.a n = A090340 (n + 1)

end A090340

/-!
# A090341: Difference between the sums of the prime factors, including multiplicity, of n and those of n + 2.

The programs for A090341, the canonical program `A090341.P7917850924027615993` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090341 has offset 1).

The definition of A090341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090341.P7917850924027615993

`A001414(n+1)-A001414(n+3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090341

/-- `A001414(n+1)-A001414(n+3)` -/
def P7917850924027615993.Spec : Prop :=
  ∀ n, P7917850924027615993.a n = A090341 (n + 1)

theorem P7917850924027615993.correct : P7917850924027615993.Spec := by
  intro n
  simp only [A090341, Nat.add_sub_cancel]

end A090341

/-! ## A090341.P16270912577131359905

`Δ[-A274140(n+1)]`
-/

namespace A090341.P16270912577131359905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A274140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090341.P16270912577131359905

namespace A090341

/-- `Δ[-A274140(n+1)]` -/
def P16270912577131359905.Spec : Prop :=
  ∀ n, P16270912577131359905.a n = A090341 (n + 1)

end A090341

/-! ## A090341.P15890984803938591814

`A090340(n+1)+A090340(n+2)`
-/

namespace A090341.P15890984803938591814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090340 (n + 1) + A090340 (n + 2)

end

end A090341.P15890984803938591814

namespace A090341

/-- `A090340(n+1)+A090340(n+2)` -/
def P15890984803938591814.Spec : Prop :=
  ∀ n, P15890984803938591814.a n = A090341 (n + 1)

theorem P15890984803938591814.correct : P15890984803938591814.Spec := by
  intro n
  simp only [A090341, Nat.add_sub_cancel, A090341.P15890984803938591814.a, A090341.P7917850924027615993.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A090340, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090341

/-! ## A090341.P8306118713513351096

`A274140(n+1)-A274140(n+2)`
-/

namespace A090341.P8306118713513351096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274140 (n + 1) - A274140 (n + 2)

end

end A090341.P8306118713513351096

namespace A090341

/-- `A274140(n+1)-A274140(n+2)` -/
def P8306118713513351096.Spec : Prop :=
  ∀ n, P8306118713513351096.a n = A090341 (n + 1)

end A090341

/-! ## A090341.P13836561628957855800

`Δ[A025281(n)-A025281(n+2)]`
-/

namespace A090341.P13836561628957855800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n - A025281 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090341.P13836561628957855800

namespace A090341

/-- `Δ[A025281(n)-A025281(n+2)]` -/
def P13836561628957855800.Spec : Prop :=
  ∀ n, P13836561628957855800.a n = A090341 (n + 1)

end A090341

/-! ## A090341.P279013775907326852

`A036288(n+1)-A036288(n+3)`
-/

namespace A090341.P279013775907326852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A036288 (n + 3)

end

end A090341.P279013775907326852

namespace A090341

/-- `A036288(n+1)-A036288(n+3)` -/
def P279013775907326852.Spec : Prop :=
  ∀ n, P279013775907326852.a n = A090341 (n + 1)

theorem P279013775907326852.correct : P279013775907326852.Spec := by
  intro n
  simp only [A090341, Nat.add_sub_cancel, A090341.P279013775907326852.a, A090341.P7917850924027615993.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090341

/-! ## A090341.P14132337094967768482

`A100006(n+1)-A100006(n+3)`
-/

namespace A090341.P14132337094967768482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - A100006 (n + 3)

end

end A090341.P14132337094967768482

namespace A090341

/-- `A100006(n+1)-A100006(n+3)` -/
def P14132337094967768482.Spec : Prop :=
  ∀ n, P14132337094967768482.a n = A090341 (n + 1)

theorem P14132337094967768482.correct : P14132337094967768482.Spec := by
  intro n
  simp only [A090341, Nat.add_sub_cancel, A090341.P14132337094967768482.a, A090341.P7917850924027615993.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A100006, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090341

/-! ## A090341.P4062561863722648930

`Δ[A075255(n+1)-A075254(n+2)]`
-/

namespace A090341.P4062561863722648930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) - A075254 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090341.P4062561863722648930

namespace A090341

/-- `Δ[A075255(n+1)-A075254(n+2)]` -/
def P4062561863722648930.Spec : Prop :=
  ∀ n, P4062561863722648930.a n = A090341 (n + 1)

theorem P4062561863722648930.correct : P4062561863722648930.Spec := by
  intro n
  simp only [A090341, Nat.add_sub_cancel, A090341.P4062561863722648930.f1, A090341.P4062561863722648930.a, A090341.P7917850924027615993.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A075254, A075254.P6422447875050144596.a, A075255, A075255.P12137973761347593222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090341

/-! ## A090341.P345922763334291927

`A090343(2*(n+1))`
-/

namespace A090341.P345922763334291927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090343 (2 * (n + 1))

end

end A090341.P345922763334291927

namespace A090341

/-- `A090343(2*(n+1))` -/
def P345922763334291927.Spec : Prop :=
  ∀ n, P345922763334291927.a n = A090341 (n + 1)

end A090341

/-! ## A090341.P18149253264025814733

`Δ[-A001414(∑[n+1])]`
-/

namespace A090341.P18149253264025814733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001414 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090341.P18149253264025814733

namespace A090341

/-- `Δ[-A001414(∑[n+1])]` -/
def P18149253264025814733.Spec : Prop :=
  ∀ n, P18149253264025814733.a n = A090341 (n + 1)

end A090341

/-! ## A090341.P7151165858770358474

`Δ[-A036288(C(n+2, 2))]`
-/

namespace A090341.P7151165858770358474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A036288 (Nat.choose (n + 2) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090341.P7151165858770358474

namespace A090341

/-- `Δ[-A036288(C(n+2, 2))]` -/
def P7151165858770358474.Spec : Prop :=
  ∀ n, P7151165858770358474.a n = A090341 (n + 1)

end A090341

/-! ## A090341.P584043467670947624

`Δ[-∑{d}[∑[n+1], A000203(A014963(#))-1]]`
-/

namespace A090341.P584043467670947624
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f2 n), (A000203 (A014963 d).toNat - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090341.P584043467670947624

namespace A090341

/-- `Δ[-∑{d}[∑[n+1], A000203(A014963(#))-1]]` -/
def P584043467670947624.Spec : Prop :=
  ∀ n, P584043467670947624.a n = A090341 (n + 1)

end A090341

/-!
# A090342: Difference between the sums of the prime factors, including multiplicity, of n and those of n + 3.

The programs for A090342, the canonical program `A090342.P3390152840688326759` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090342 has offset 1).

The definition of A090342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090342.P3390152840688326759

`A001414(n+1)-A001414(n+4)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090342

/-- `A001414(n+1)-A001414(n+4)` -/
def P3390152840688326759.Spec : Prop :=
  ∀ n, P3390152840688326759.a n = A090342 (n + 1)

theorem P3390152840688326759.correct : P3390152840688326759.Spec := by
  intro n
  simp only [A090342, Nat.add_sub_cancel]

end A090342

/-! ## A090342.P16266147466290471059

`Δ[A025281(n)]-A001414(n+4)`
-/

namespace A090342.P16266147466290471059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001414 (n + 4)

end

end A090342.P16266147466290471059

namespace A090342

/-- `Δ[A025281(n)]-A001414(n+4)` -/
def P16266147466290471059.Spec : Prop :=
  ∀ n, P16266147466290471059.a n = A090342 (n + 1)

end A090342

/-! ## A090342.P8500082568932557078

`A090343(n+1)+Δ[A001414(n+4)]`
-/

namespace A090342.P8500082568932557078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090343 (n + 1) + (f1 (n + 1) - f1 n)

end

end A090342.P8500082568932557078

namespace A090342

/-- `A090343(n+1)+Δ[A001414(n+4)]` -/
def P8500082568932557078.Spec : Prop :=
  ∀ n, P8500082568932557078.a n = A090342 (n + 1)

theorem P8500082568932557078.correct : P8500082568932557078.Spec := by
  intro n
  simp only [A090342, Nat.add_sub_cancel, A090342.P8500082568932557078.f1, A090342.P8500082568932557078.a, A090342.P3390152840688326759.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A090343, A090343.P16771865766798184148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090342

/-! ## A090342.P11150690914147828467

`A090341(n+2)+A090340(n+1)`
-/

namespace A090342.P11150690914147828467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090341 (n + 2) + A090340 (n + 1)

end

end A090342.P11150690914147828467

namespace A090342

/-- `A090341(n+2)+A090340(n+1)` -/
def P11150690914147828467.Spec : Prop :=
  ∀ n, P11150690914147828467.a n = A090342 (n + 1)

theorem P11150690914147828467.correct : P11150690914147828467.Spec := by
  intro n
  simp only [A090342, Nat.add_sub_cancel, A090342.P11150690914147828467.a, A090342.P3390152840688326759.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A090340, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, A090341, A090341.P7917850924027615993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090342

/-! ## A090342.P9404942346440549889

`A036288(n+1)+A090341(n+2)-A036288(n+2)`
-/

namespace A090342.P9404942346440549889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) + (A090341 (n + 2) - A036288 (n + 2))

end

end A090342.P9404942346440549889

namespace A090342

/-- `A036288(n+1)+A090341(n+2)-A036288(n+2)` -/
def P9404942346440549889.Spec : Prop :=
  ∀ n, P9404942346440549889.a n = A090342 (n + 1)

theorem P9404942346440549889.correct : P9404942346440549889.Spec := by
  intro n
  simp only [A090342, Nat.add_sub_cancel, A090342.P9404942346440549889.a, A090342.P3390152840688326759.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A090341, A090341.P7917850924027615993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090342

/-! ## A090342.P2892986761738034355

`Δ[A025281(n)-A025281(n+3)]`
-/

namespace A090342.P2892986761738034355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n - A025281 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090342.P2892986761738034355

namespace A090342

/-- `Δ[A025281(n)-A025281(n+3)]` -/
def P2892986761738034355.Spec : Prop :=
  ∀ n, P2892986761738034355.a n = A090342 (n + 1)

end A090342

/-! ## A090342.P12514671518788184435

`A036288(n+1)-A036288(n+4)`
-/

namespace A090342.P12514671518788184435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A036288 (n + 4)

end

end A090342.P12514671518788184435

namespace A090342

/-- `A036288(n+1)-A036288(n+4)` -/
def P12514671518788184435.Spec : Prop :=
  ∀ n, P12514671518788184435.a n = A090342 (n + 1)

theorem P12514671518788184435.correct : P12514671518788184435.Spec := by
  intro n
  simp only [A090342, Nat.add_sub_cancel, A090342.P12514671518788184435.a, A090342.P3390152840688326759.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090342

/-! ## A090342.P17054876399971894047

`A075254(n+1)+3-A075254(n+4)`
-/

namespace A090342.P17054876399971894047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) + (3 - A075254 (n + 4))

end

end A090342.P17054876399971894047

namespace A090342

/-- `A075254(n+1)+3-A075254(n+4)` -/
def P17054876399971894047.Spec : Prop :=
  ∀ n, P17054876399971894047.a n = A090342 (n + 1)

theorem P17054876399971894047.correct : P17054876399971894047.Spec := by
  intro n
  simp only [A090342, Nat.add_sub_cancel, A090342.P17054876399971894047.a, A090342.P3390152840688326759.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A075254, A075254.P6422447875050144596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090342

/-! ## A090342.P12603284696290419647

`A075255(n+4)-(A075255(n+1)+3)`
-/

namespace A090342.P12603284696290419647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 4) - (A075255 (n + 1) + 3)

end

end A090342.P12603284696290419647

namespace A090342

/-- `A075255(n+4)-(A075255(n+1)+3)` -/
def P12603284696290419647.Spec : Prop :=
  ∀ n, P12603284696290419647.a n = A090342 (n + 1)

theorem P12603284696290419647.correct : P12603284696290419647.Spec := by
  intro n
  simp only [A090342, Nat.add_sub_cancel, A090342.P12603284696290419647.a, A090342.P3390152840688326759.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A075255, A075255.P12137973761347593222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090342

/-! ## A090342.P12799038666417586854

`A090343(n+1)+Δ[A036288(n+4)]`
-/

namespace A090342.P12799038666417586854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090343 (n + 1) + (f1 (n + 1) - f1 n)

end

end A090342.P12799038666417586854

namespace A090342

/-- `A090343(n+1)+Δ[A036288(n+4)]` -/
def P12799038666417586854.Spec : Prop :=
  ∀ n, P12799038666417586854.a n = A090342 (n + 1)

theorem P12799038666417586854.correct : P12799038666417586854.Spec := by
  intro n
  simp only [A090342, Nat.add_sub_cancel, A090342.P12799038666417586854.f1, A090342.P12799038666417586854.a, A090342.P3390152840688326759.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A090343, A090343.P16771865766798184148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090342

/-! ## A090342.P9906125621537451150

`A090341(2*(n+1))+A090341(n+2)`
-/

namespace A090342.P9906125621537451150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090341 (2 * (n + 1)) + A090341 (n + 2)

end

end A090342.P9906125621537451150

namespace A090342

/-- `A090341(2*(n+1))+A090341(n+2)` -/
def P9906125621537451150.Spec : Prop :=
  ∀ n, P9906125621537451150.a n = A090342 (n + 1)

end A090342

/-! ## A090342.P1108548602053207486

`A090343(2*(n+1))+A090340(n+3)`
-/

namespace A090342.P1108548602053207486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090343 (2 * (n + 1)) + A090340 (n + 3)

end

end A090342.P1108548602053207486

namespace A090342

/-- `A090343(2*(n+1))+A090340(n+3)` -/
def P1108548602053207486.Spec : Prop :=
  ∀ n, P1108548602053207486.a n = A090342 (n + 1)

end A090342

/-!
# A090343: Difference between the sums of the prime factors, including multiplicity, of n and those of n + 4.

The programs for A090343, the canonical program `A090343.P16771865766798184148` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090343 has offset 1).

The definition of A090343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090343.P16771865766798184148

`A001414(n+1)-A001414(n+5)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090343

/-- `A001414(n+1)-A001414(n+5)` -/
def P16771865766798184148.Spec : Prop :=
  ∀ n, P16771865766798184148.a n = A090343 (n + 1)

theorem P16771865766798184148.correct : P16771865766798184148.Spec := by
  intro n
  simp only [A090343, Nat.add_sub_cancel]

end A090343

/-! ## A090343.P15886188734114915119

`A090342(n+2)+A090340(n+1)`
-/

namespace A090343.P15886188734114915119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090342 (n + 2) + A090340 (n + 1)

end

end A090343.P15886188734114915119

namespace A090343

/-- `A090342(n+2)+A090340(n+1)` -/
def P15886188734114915119.Spec : Prop :=
  ∀ n, P15886188734114915119.a n = A090343 (n + 1)

theorem P15886188734114915119.correct : P15886188734114915119.Spec := by
  intro n
  simp only [A090343, Nat.add_sub_cancel, A090343.P15886188734114915119.a, A090343.P16771865766798184148.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A090340, A090340.P8106175153213061609.f1, A090340.P8106175153213061609.a, A090342, A090342.P3390152840688326759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090343

/-! ## A090343.P8856413954921826923

`A036288(n+1)+A090342(n+2)-A036288(n+2)`
-/

namespace A090343.P8856413954921826923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) + (A090342 (n + 2) - A036288 (n + 2))

end

end A090343.P8856413954921826923

namespace A090343

/-- `A036288(n+1)+A090342(n+2)-A036288(n+2)` -/
def P8856413954921826923.Spec : Prop :=
  ∀ n, P8856413954921826923.a n = A090343 (n + 1)

theorem P8856413954921826923.correct : P8856413954921826923.Spec := by
  intro n
  simp only [A090343, Nat.add_sub_cancel, A090343.P8856413954921826923.a, A090343.P16771865766798184148.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A090342, A090342.P3390152840688326759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090343

/-! ## A090343.P4919719790506285337

`A090341(n+1)+A090341(n+3)`
-/

namespace A090343.P4919719790506285337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090341 (n + 1) + A090341 (n + 3)

end

end A090343.P4919719790506285337

namespace A090343

/-- `A090341(n+1)+A090341(n+3)` -/
def P4919719790506285337.Spec : Prop :=
  ∀ n, P4919719790506285337.a n = A090343 (n + 1)

theorem P4919719790506285337.correct : P4919719790506285337.Spec := by
  intro n
  simp only [A090343, Nat.add_sub_cancel, A090343.P4919719790506285337.a, A090343.P16771865766798184148.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A090341, A090341.P7917850924027615993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090343

/-! ## A090343.P13640600223106613827

`∑{p}[n+1, #*val(n+1, #)]-sqrt(A074373(n+5))`
-/

namespace A090343.P13640600223106613827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℝ) - Real.sqrt (A074373 (n + 5) : ℝ)

end

end A090343.P13640600223106613827

namespace A090343

/-- `∑{p}[n+1, #*val(n+1, #)]-sqrt(A074373(n+5))` -/
def P13640600223106613827.Spec : Prop :=
  ∀ n, P13640600223106613827.a n = (A090343 (n + 1) : ℝ)

end A090343

/-! ## A090343.P17868061285395280609

`∑{p}[n+1, #*val(n+1, #)]-Δ[A025281(n+4)]`
-/

namespace A090343.P17868061285395280609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A090343.P17868061285395280609

namespace A090343

/-- `∑{p}[n+1, #*val(n+1, #)]-Δ[A025281(n+4)]` -/
def P17868061285395280609.Spec : Prop :=
  ∀ n, P17868061285395280609.a n = A090343 (n + 1)

end A090343

/-! ## A090343.P7263792490538174821

`∑{p}[n+1, #*val(n+1, #)]+1-A036288(n+5)`
-/

namespace A090343.P7263792490538174821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) + (1 - A036288 (n + 5))

end

end A090343.P7263792490538174821

namespace A090343

/-- `∑{p}[n+1, #*val(n+1, #)]+1-A036288(n+5)` -/
def P7263792490538174821.Spec : Prop :=
  ∀ n, P7263792490538174821.a n = A090343 (n + 1)

theorem P7263792490538174821.correct : P7263792490538174821.Spec := by
  intro n
  simp only [A090343, Nat.add_sub_cancel, A090343.P7263792490538174821.f1, A090343.P7263792490538174821.a, A090343.P16771865766798184148.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090343

/-! ## A090343.P15281049980691319704

`Δ[A025281(n)-A025281(n+4)]`
-/

namespace A090343.P15281049980691319704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n - A025281 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090343.P15281049980691319704

namespace A090343

/-- `Δ[A025281(n)-A025281(n+4)]` -/
def P15281049980691319704.Spec : Prop :=
  ∀ n, P15281049980691319704.a n = A090343 (n + 1)

end A090343

/-! ## A090343.P9908515659945378317

`A036288(n+1)-A036288(n+5)`
-/

namespace A090343.P9908515659945378317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A036288 (n + 5)

end

end A090343.P9908515659945378317

namespace A090343

/-- `A036288(n+1)-A036288(n+5)` -/
def P9908515659945378317.Spec : Prop :=
  ∀ n, P9908515659945378317.a n = A090343 (n + 1)

theorem P9908515659945378317.correct : P9908515659945378317.Spec := by
  intro n
  simp only [A090343, Nat.add_sub_cancel, A090343.P9908515659945378317.a, A090343.P16771865766798184148.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090343

/-!
# A090344: Number of Motzkin paths of length n with no level steps at odd level.

The programs for A090344, there is no canonical definition to state claims against.
-/

/-! ## A090344.P6136775523391904645

`2*A026569(n)+A026569(n+1)/2-A026569(n+2)/2`
-/

namespace A090344.P6136775523391904645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A026569 n : ℚ) + (A026569 (n + 1) : ℚ) / 2 - (A026569 (n + 2) : ℚ) / 2

end

end A090344.P6136775523391904645

/-! ## A090344.P17890267595382708163

`∑[A090345(n)]`
-/

namespace A090344.P17890267595382708163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090344.P17890267595382708163

/-! ## A090344.P13810310444320741898

`A185087(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A090344.P13810310444320741898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A185087 (n - 2) + a (n - 1)

end

end A090344.P13810310444320741898

/-! ## A090344.P7167231061814081373

`A090345(n-char[3])+a(n-1)` with `a(0)=1`
-/

namespace A090344.P7167231061814081373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090345 (n - (if ∃ j, f1 j = n then 1 else 0)) + a (n - 1)

end

end A090344.P7167231061814081373

/-! ## A090344.P9388952892025666781

`A124329(A028310(n))+1`
-/

namespace A090344.P9388952892025666781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124329 (A028310 n).toNat + 1

end

end A090344.P9388952892025666781

/-! ## A090344.P12525311591687941672

`A124329(A004277(n)-n)+1`
-/

namespace A090344.P12525311591687941672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124329 (A004277 n - (n : ℤ)).toNat + 1

end

end A090344.P12525311591687941672

/-! ## A090344.P11523859970097298471

`∑[A060576(n)*A185087(A289207(n))]`
-/

namespace A090344.P11523859970097298471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A185087 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090344.P11523859970097298471

/-! ## A090344.P13322252628848341912

`A157928(n)+A124329(A233583(n+1))`
-/

namespace A090344.P13322252628848341912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A124329 (A233583 (n + 1)).toNat

end

end A090344.P13322252628848341912

/-! ## A090344.P10540672065437264972

`2*A026569(n)-A026570(n+1)`
-/

namespace A090344.P10540672065437264972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026569 n - A026570 (n + 1)

end

end A090344.P10540672065437264972

/-!
# A090345: Number of Motzkin paths of length n with no level steps at even level.

The programs for A090345, there is no canonical definition to state claims against.
-/

/-! ## A090345.P5328940994270378772

`A060576(n)*A185087(A289207(n))`
-/

namespace A090345.P5328940994270378772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A185087 (A289207 n).toNat

end

end A090345.P5328940994270378772

/-! ## A090345.P927953720857216937

`A060576(A005599(n))+A185087(A289207(n))-1`
-/

namespace A090345.P927953720857216937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A005599 n).toNat + (A185087 (A289207 n).toNat - 1)

end

end A090345.P927953720857216937

/-! ## A090345.P15686170807079439386

`A060576(A128280(n+1))+A185087(A289207(n))-1`
-/

namespace A090345.P15686170807079439386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A128280 (n + 1)).toNat + (A185087 (A289207 n).toNat - 1)

end

end A090345.P15686170807079439386

/-! ## A090345.P16127126210401001788

`A060576(A276664(n+1))+A185087(A289207(n))-1`
-/

namespace A090345.P16127126210401001788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A276664 (n + 1)).toNat + (A185087 (A289207 n).toNat - 1)

end

end A090345.P16127126210401001788

/-! ## A090345.P11146214922399162850

`A060576(A255056(n)/2)+A185087(A289207(n))-1`
-/

namespace A090345.P11146214922399162850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (SequenceMachineLib.roundAway ((A255056 n : ℚ) / 2)).toNat + (A185087 (A289207 n).toNat - 1)

end

end A090345.P11146214922399162850

/-! ## A090345.P12852078626597057359

`A060576(∑[n])+A185087(A289207(n))-1`
-/

namespace A090345.P12852078626597057359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (∑ j ∈ Finset.range (n + 1), f1 j) + (A185087 (A289207 n).toNat - 1)

end

end A090345.P12852078626597057359

/-!
# A090346: Number of divisors of prime(n) + prime(n+1).

The programs for A090346, the canonical program `A090346.P12809804946488414554` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090346 has offset 1).

The definition of A090346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090346.P12809804946488414554

`∏{e}[record[A006530(n+2)]+A000040(n+2), #+1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A090346

/-- `∏{e}[record[A006530(n+2)]+A000040(n+2), #+1]` -/
def P12809804946488414554.Spec : Prop :=
  ∀ n, (P12809804946488414554.a n : ℤ) = A090346 (n + 1)

theorem P12809804946488414554.correct : P12809804946488414554.Spec := by
  intro n
  simp only [A090346, Nat.add_sub_cancel]

end A090346

/-! ## A090346.P12234649702224439419

`A099777(A162735(n+1))`
-/

namespace A090346.P12234649702224439419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A162735 (n + 1)).toNat

end

end A090346.P12234649702224439419

namespace A090346

/-- `A099777(A162735(n+1))` -/
def P12234649702224439419.Spec : Prop :=
  ∀ n, P12234649702224439419.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P6310500949050749914

`A000005(Δ[A061802(n)])`
-/

namespace A090346.P6310500949050749914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A090346.P6310500949050749914

namespace A090346

/-- `A000005(Δ[A061802(n)])` -/
def P6310500949050749914.Spec : Prop :=
  ∀ n, P6310500949050749914.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P2355949505903665400

`A000005(A001043(n+1))`
-/

namespace A090346.P2355949505903665400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001043 (n + 1)).toNat

end

end A090346.P2355949505903665400

namespace A090346

/-- `A000005(A001043(n+1))` -/
def P2355949505903665400.Spec : Prop :=
  ∀ n, P2355949505903665400.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P184934774930939583

`A000005(A011974(n+2))`
-/

namespace A090346.P184934774930939583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011974 (n + 2)).toNat

end

end A090346.P184934774930939583

namespace A090346

/-- `A000005(A011974(n+2))` -/
def P184934774930939583.Spec : Prop :=
  ∀ n, P184934774930939583.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P10795977974565869368

`A000005(A164653(n+3))`
-/

namespace A090346.P10795977974565869368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A164653 (n + 3)).toNat

end

end A090346.P10795977974565869368

namespace A090346

/-- `A000005(A164653(n+3))` -/
def P10795977974565869368.Spec : Prop :=
  ∀ n, P10795977974565869368.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P887094468982833828

`A000005(A076273(n+2)+1)`
-/

namespace A090346.P887094468982833828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076273 (n + 2) + 1).toNat

end

end A090346.P887094468982833828

namespace A090346

/-- `A000005(A076273(n+2)+1)` -/
def P887094468982833828.Spec : Prop :=
  ∀ n, P887094468982833828.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P4325236763288921308

`A000005(2*A162735(n+1))`
-/

namespace A090346.P4325236763288921308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A162735 (n + 1)).toNat

end

end A090346.P4325236763288921308

namespace A090346

/-- `A000005(2*A162735(n+1))` -/
def P4325236763288921308.Spec : Prop :=
  ∀ n, P4325236763288921308.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P17381776603523344106

`A000005(p?[2*n+1]+record[A006530(n+2)])`
-/

namespace A090346.P17381776603523344106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A090346.P17381776603523344106

namespace A090346

/-- `A000005(p?[2*n+1]+record[A006530(n+2)])` -/
def P17381776603523344106.Spec : Prop :=
  ∀ n, P17381776603523344106.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P13534537662915391640

`A000005(p?[2*n+1]+record[A020639(n+2)])`
-/

namespace A090346.P13534537662915391640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A090346.P13534537662915391640

namespace A090346

/-- `A000005(p?[2*n+1]+record[A020639(n+2)])` -/
def P13534537662915391640.Spec : Prop :=
  ∀ n, P13534537662915391640.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P10872485629370273771

`A000005(p?[2*n+1]+record[A000010(n+1)+1])`
-/

namespace A090346.P10872485629370273771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A090346.P10872485629370273771

namespace A090346

/-- `A000005(p?[2*n+1]+record[A000010(n+1)+1])` -/
def P10872485629370273771.Spec : Prop :=
  ∀ n, P10872485629370273771.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P15936749688474717612

`A000005(p?[2*n+1]+eq[n+2, A000203(n+1)]+1)`
-/

namespace A090346.P15936749688474717612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1))

end

end A090346.P15936749688474717612

namespace A090346

/-- `A000005(p?[2*n+1]+eq[n+2, A000203(n+1)]+1)` -/
def P15936749688474717612.Spec : Prop :=
  ∀ n, P15936749688474717612.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P4574798746426925717

`A000005(A065091(n+1)+A000040(n+1))`
-/

namespace A090346.P4574798746426925717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065091 (n + 1) + A000040 (n + 1)).toNat

end

end A090346.P4574798746426925717

namespace A090346

/-- `A000005(A065091(n+1)+A000040(n+1))` -/
def P4574798746426925717.Spec : Prop :=
  ∀ n, P4574798746426925717.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P14880763870260578410

`A000005(A000040(n+1)+A000040(n+2))`
-/

namespace A090346.P14880763870260578410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A090346.P14880763870260578410

namespace A090346

/-- `A000005(A000040(n+1)+A000040(n+2))` -/
def P14880763870260578410.Spec : Prop :=
  ∀ n, P14880763870260578410.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P4046629884479154312

`A000005(A069482(n+1)/A001223(n+1))`
-/

namespace A090346.P4046629884479154312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A069482 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ))).toNat

end

end A090346.P4046629884479154312

namespace A090346

/-- `A000005(A069482(n+1)/A001223(n+1))` -/
def P4046629884479154312.Spec : Prop :=
  ∀ n, P4046629884479154312.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P11960532669024386016

`A000005(A013634(A000040(n+1)))`
-/

namespace A090346.P11960532669024386016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A013634 (A000040 (n + 1)).toNat).toNat

end

end A090346.P11960532669024386016

namespace A090346

/-- `A000005(A013634(A000040(n+1)))` -/
def P11960532669024386016.Spec : Prop :=
  ∀ n, P11960532669024386016.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P7918549479651492277

`A000005(A013635(p?[2*n+1]))`
-/

namespace A090346.P7918549479651492277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A013635 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A090346.P7918549479651492277

namespace A090346

/-- `A000005(A013635(p?[2*n+1]))` -/
def P7918549479651492277.Spec : Prop :=
  ∀ n, P7918549479651492277.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P6452668275556212656

`A000005(A013635(A000040(n+2)))`
-/

namespace A090346.P6452668275556212656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A013635 (A000040 (n + 2)).toNat).toNat

end

end A090346.P6452668275556212656

namespace A090346

/-- `A000005(A013635(A000040(n+2)))` -/
def P6452668275556212656.Spec : Prop :=
  ∀ n, P6452668275556212656.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P13471032876287250466

`A339147(A092949(n+1))`
-/

namespace A090346.P13471032876287250466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339147 (A092949 (n + 1)).toNat

end

end A090346.P13471032876287250466

namespace A090346

/-- `A339147(A092949(n+1))` -/
def P13471032876287250466.Spec : Prop :=
  ∀ n, P13471032876287250466.a n = A090346 (n + 1)

end A090346

/-! ## A090346.P16401635648503219918

`A069157(2*A001043(n+1))`
-/

namespace A090346.P16401635648503219918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * A001043 (n + 1)).toNat

end

end A090346.P16401635648503219918

namespace A090346

/-- `A069157(2*A001043(n+1))` -/
def P16401635648503219918.Spec : Prop :=
  ∀ n, P16401635648503219918.a n = A090346 (n + 1)

end A090346

/-!
# A090347: Number of labeled trees with n nodes and even number of leaves minus number of labeled trees with n nodes and odd number of leaves.

The programs for A090347, there is no canonical definition to state claims against.
-/

/-! ## A090347.P13613173898269717367

`A334918(3*n+5)-(A327059(n)+2)`
-/

namespace A090347.P13613173898269717367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (3 * n + 5) - (A327059 n + 2)

end

end A090347.P13613173898269717367

/-!
# A090348: Norms of prime elements in the ring of integers of Q(sqrt(-7)).

The programs for A090348, there is no canonical definition to state claims against.
-/

/-! ## A090348.P10318841942616732566

`∪[A045373(n+1), p?[gcd(n, ((n+1)%7)%2)]²]`
-/

namespace A090348.P10318841942616732566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n ((n + 1) % 7 % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A090348.P10318841942616732566

/-! ## A090348.P13133600483500241104

`∪[A003625(n+1)², A045373(n+1)]`
-/

namespace A090348.P13133600483500241104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090348.P13133600483500241104

/-! ## A090348.P2479800014748802921

`∪[A045373(n+1), A045411(n+1)²]`
-/

namespace A090348.P2479800014748802921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090348.P2479800014748802921

/-! ## A090348.P13145818443598441933

`∪[p?[A035248(n+1)], A045411(n+1)²]`
-/

namespace A090348.P13145818443598441933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A090348.P13145818443598441933

/-! ## A090348.P13742742614063199600

`∪[A045373(n+1), p?[A047329(n+1)]²]`
-/

namespace A090348.P13742742614063199600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090348.P13742742614063199600

/-! ## A090348.P3126111012332003791

`∪[A045373(n+1), p?[A047379(n+1)+1]²]`
-/

namespace A090348.P3126111012332003791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047379 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090348.P3126111012332003791

/-! ## A090348.P14259433496236429868

`∪[A045373(n+1), p?[A047450(n+2)+n]²]`
-/

namespace A090348.P14259433496236429868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047450 (n + 2) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090348.P14259433496236429868

/-! ## A090348.P13111128430446474579

`∪[A045373(n+1), p?[2*A047279(n+1)+1]²]`
-/

namespace A090348.P13111128430446474579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047279 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090348.P13111128430446474579

/-! ## A090348.P11771435916446595665

`∪[A045373(n+1), p?[2*A047361(n+1)-1]²]`
-/

namespace A090348.P11771435916446595665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047361 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090348.P11771435916446595665

/-! ## A090348.P8981798260195500942

`∪[A045373(n+1), p?[A047498(n+1)+1+n]²]`
-/

namespace A090348.P8981798260195500942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090348.P8981798260195500942

/-!
# A090349: Pascal-like triangle read by rows. Number of nonterminal symbols (which generate strings of length k) in a certain "divide-and-conquer" context-free grammar in Chomsky normal form that generates all permutations of n symbols.

The programs for A090349, there is no canonical definition to state claims against.
-/

/-! ## A090349.P12038342110933459326

`A135278(n)%A008514(A331567(n))`
-/

namespace A090349.P12038342110933459326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135278 n) (A008514 (A331567 n).toNat)

end

end A090349.P12038342110933459326

/-! ## A090349.P13597789935158562016

`A074909(n+1)%A008514(A331567(n))`
-/

namespace A090349.P13597789935158562016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (n + 1)) (A008514 (A331567 n).toNat)

end

end A090349.P13597789935158562016

/-! ## A090349.P12251686519804487880

`A098800(A275062(n))*A135278(n)`
-/

namespace A090349.P12251686519804487880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098800 (A275062 n).toNat * A135278 n

end

end A090349.P12251686519804487880

/-! ## A090349.P11170862099391464520

`A000035(A275062(n)²)*A135278(n)`
-/

namespace A090349.P11170862099391464520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A275062 n ^ 2).toNat * A135278 n

end

end A090349.P11170862099391464520

/-! ## A090349.P9559608645503989630

`A074909(n+1)*A098800(A275062(n))`
-/

namespace A090349.P9559608645503989630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A098800 (A275062 n).toNat

end

end A090349.P9559608645503989630

/-!
# A090350: a(n) = Floor[(n-PrimePi[n])/(2-PrimePi[n]+PrimePi[n-1])].

The programs for A090350, the canonical program `A090350.P9527209610901398862` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090350 has offset 1).

The definition of A090350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090350.P9527209610901398862

`floor(A062298(n+1)/(2-A010051(n+1)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090350

/-- `floor(A062298(n+1)/(2-A010051(n+1)))` -/
def P9527209610901398862.Spec : Prop :=
  ∀ n, P9527209610901398862.a n = A090350 (n + 1)

theorem P9527209610901398862.correct : P9527209610901398862.Spec := by
  intro n
  simp only [A090350, Nat.add_sub_cancel]

end A090350

/-! ## A090350.P16485129514888119649

`∑[∏{p}[n+1, #%(n+1)/#]]-A110654(A239968(n+1))`
-/

namespace A090350.P16485129514888119649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p % (n + 1) : ℕ) : ℚ) / (p : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A110654 (A239968 (n + 1)).toNat : ℚ)

end

end A090350.P16485129514888119649

namespace A090350

/-- `∑[∏{p}[n+1, #%(n+1)/#]]-A110654(A239968(n+1))` -/
def P16485129514888119649.Spec : Prop :=
  ∀ n, P16485129514888119649.a n = (A090350 (n + 1) : ℚ)

end A090350

/-! ## A090350.P7559669300932957297

`A062298(n+1)-A110654(A239968(n+1))`
-/

namespace A090350.P7559669300932957297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A110654 (A239968 (n + 1)).toNat

end

end A090350.P7559669300932957297

namespace A090350

/-- `A062298(n+1)-A110654(A239968(n+1))` -/
def P7559669300932957297.Spec : Prop :=
  ∀ n, P7559669300932957297.a n = A090350 (n + 1)

end A090350

/-! ## A090350.P4326295499797671311

`∑[A005171(n+1)]-A110654(A239968(n+1))`
-/

namespace A090350.P4326295499797671311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 (A239968 (n + 1)).toNat

end

end A090350.P4326295499797671311

namespace A090350

/-- `∑[A005171(n+1)]-A110654(A239968(n+1))` -/
def P4326295499797671311.Spec : Prop :=
  ∀ n, P4326295499797671311.a n = A090350 (n + 1)

end A090350

/-! ## A090350.P10636842870247368650

`n+1-(A110654(A239968(n+1))+A000720(n+1))`
-/

namespace A090350.P10636842870247368650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A110654 (A239968 (n + 1)).toNat + A000720 (n + 1))

end

end A090350.P10636842870247368650

namespace A090350

/-- `n+1-(A110654(A239968(n+1))+A000720(n+1))` -/
def P10636842870247368650.Spec : Prop :=
  ∀ n, P10636842870247368650.a n = A090350 (n + 1)

end A090350

/-! ## A090350.P10499349012500165702

`n+1-(A110654(A239968(n+1))+∑[A010051(n+1)])`
-/

namespace A090350.P10499349012500165702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A110654 (A239968 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090350.P10499349012500165702

namespace A090350

/-- `n+1-(A110654(A239968(n+1))+∑[A010051(n+1)])` -/
def P10499349012500165702.Spec : Prop :=
  ∀ n, P10499349012500165702.a n = A090350 (n + 1)

end A090350

/-! ## A090350.P2487447166917043056

`A004526(Δ[A095117(n)]*A062298(n+1))`
-/

namespace A090350.P2487447166917043056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((f1 (n + 1) - f1 n) * A062298 (n + 1)).toNat

end

end A090350.P2487447166917043056

namespace A090350

/-- `A004526(Δ[A095117(n)]*A062298(n+1))` -/
def P2487447166917043056.Spec : Prop :=
  ∀ n, P2487447166917043056.a n = A090350 (n + 1)

end A090350

/-! ## A090350.P12197916582637936669

`floor(A062298(n+1)/A000005(A259175(n+1)))`
-/

namespace A090350.P12197916582637936669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062298 (n + 1) : ℚ) / (A000005 (A259175 (n + 1)).toNat : ℚ)⌋

end

end A090350.P12197916582637936669

namespace A090350

/-- `floor(A062298(n+1)/A000005(A259175(n+1)))` -/
def P12197916582637936669.Spec : Prop :=
  ∀ n, P12197916582637936669.a n = A090350 (n + 1)

end A090350

/-!
# A090351: G.f. satisfies A^3 = BINOMIAL(A^2).

The programs for A090351, there is no canonical definition to state claims against.
-/

/-! ## A090351.P14195945978197660205

`A276798(A051818(n+1))`
-/

namespace A090351.P14195945978197660205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A051818 (n + 1)).toNat

end

end A090351.P14195945978197660205

/-! ## A090351.P914473939672837452

`A166719(A161391(n+1)/(n+1))`
-/

namespace A090351.P914473939672837452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166719 (SequenceMachineLib.roundAway ((A161391 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A090351.P914473939672837452

/-!
# A090352: G.f. satisfies A^3 = BINOMIAL(A)^2, where A = A090351^2.

The programs for A090352, there is no canonical definition to state claims against.
-/

/-! ## A090352.P18052705750794176762

`∑[A313686(A239910(n+1))]`
-/

namespace A090352.P18052705750794176762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313686 (A239910 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090352.P18052705750794176762

/-! ## A090352.P17051263268151604156

`A005130(n)+A004523(A190818(n))`
-/

namespace A090352.P17051263268151604156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n + A004523 (A190818 n).toNat

end

end A090352.P17051263268151604156

/-!
# A090353: G.f. satisfies A^4 = BINOMIAL(A^3).

The programs for A090353, there is no canonical definition to state claims against.
-/

/-! ## A090353.P17238333397060769155

`A201595(n)-A320322(A196196(n))`
-/

namespace A090353.P17238333397060769155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201595 n - A320322 (A196196 n).toNat

end

end A090353.P17238333397060769155

/-! ## A090353.P18012482068365048745

`A032766(or(A090354(n), A305877(n)))`
-/

namespace A090353.P18012482068365048745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (Int.lor (A090354 n) (A305877 n)).toNat

end

end A090353.P18012482068365048745

/-!
# A090354: Self-convolution equals the binomial transform of A090353: A^2 = BINOMIAL(A090353).

The programs for A090354, there is no canonical definition to state claims against.
-/

/-! ## A090354.P16937089009406002681

`A268671(∑[∑[A249927(n)]])`
-/

namespace A090354.P16937089009406002681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249927 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268671 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090354.P16937089009406002681

/-! ## A090354.P14930956830957943032

`A097508(n)+A128329(n)-A097508(A128329(n))`
-/

namespace A090354.P14930956830957943032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + (A128329 n - A097508 (A128329 n).toNat)

end

end A090354.P14930956830957943032

/-!
# A090355: G.f. satisfies A^4 = BINOMIAL(A)^3.

The programs for A090355, there is no canonical definition to state claims against.
-/

/-! ## A090355.P5945271829193431447

`A008611(∑[∑[∑[(n+3)^n]]]+1)`
-/

namespace A090355.P5945271829193431447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A090355.P5945271829193431447

/-!
# A090356: G.f. A(x) satisfies A(x)^5 = BINOMIAL(A(x)^4); that is, the binomial transform of the coefficients in A(x)^4 yields the coefficients in A(x)^5.

The programs for A090356, there is no canonical definition to state claims against.
-/

/-! ## A090356.P15090405250069018585

`A318661(C(n²+1, n))`
-/

namespace A090356.P15090405250069018585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318661 (Nat.choose (n ^ 2 + 1) n)

end

end A090356.P15090405250069018585

/-!
# A090357: G.f. satisfies A^5 = BINOMIAL(A)^4; also equals A090356^4.

The programs for A090357, there is no canonical definition to state claims against.
-/

/-! ## A090357.P607748771700394637

`A047201(n*((n+1)^n+1)+1)`
-/

namespace A090357.P607748771700394637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n * ((n + 1) ^ n + 1) + 1)

end

end A090357.P607748771700394637

/-!
# A090358: G.f. satisfies A^6 = BINOMIAL(A^5).

The programs for A090358, there is no canonical definition to state claims against.
-/

/-! ## A090358.P1026065737352651278

`A113233(A145088(n))`
-/

namespace A090358.P1026065737352651278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A145088 n).toNat

end

end A090358.P1026065737352651278

/-!
# A090359: Self-convolution equals the binomial transform of A090358: A^2 = BINOMIAL(A090358), where A090358^6 = BINOMIAL(A090358^5).

The programs for A090359, there is no canonical definition to state claims against.
-/

/-! ## A090359.P2837864454226147378

`∏{p}[(2*n)!, 3*#-5]`
-/

namespace A090359.P2837864454226147378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((3 * p : ℤ) - 5)

end

end A090359.P2837864454226147378

/-!
# A090360: Satisfies A^3 = BINOMIAL(A090358^2), where A090358^6 = BINOMIAL(A090358^5).

The programs for A090360, there is no canonical definition to state claims against.
-/

/-! ## A090360.P6096424340962441485

`or(1, A108459(n*(n*(n-5)+5)²))`
-/

namespace A090360.P6096424340962441485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108459 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat)

end

end A090360.P6096424340962441485

/-!
# A090361: Satisfies A^2 = BINOMIAL(A090358^3), where A090358^6 = BINOMIAL(A090358^5).

The programs for A090361, there is no canonical definition to state claims against.
-/

/-! ## A090361.P16200704718884000098

`A310218(n*a(n-1))-n` with `a(0)=1`
-/

namespace A090361.P16200704718884000098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A310218 ((n : ℤ) * a (n - 1)).toNat - (n : ℤ)

end

end A090361.P16200704718884000098

/-!
# A090363: Shifts 1 place left under the BINOMIAL transform of the self-convolution of this sequence.

The programs for A090363, there is no canonical definition to state claims against.
-/

/-! ## A090363.P11934808201802920457

`A059292(n!*∑[1/n!])-A157011(n+1)`
-/

namespace A090363.P11934808201802920457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat - A157011 (n + 1)

end

end A090363.P11934808201802920457

/-! ## A090363.P10457848018336127644

`and(A115086(n), A208766(A115086(n)))`
-/

namespace A090363.P10457848018336127644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115086 n) (A208766 (A115086 n).toNat)

end

end A090363.P10457848018336127644

/-! ## A090363.P18426762514682368527

`A028310(A115086(n)-A277999(n+1))`
-/

namespace A090363.P18426762514682368527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A115086 n - A277999 (n + 1)).toNat

end

end A090363.P18426762514682368527

/-!
# A090364: Convolution of this sequence with its binomial transform equals the second iteration of the binomial transform upon this sequence.

The programs for A090364, there is no canonical definition to state claims against.
-/

/-! ## A090364.P5215928660117622923

`or(comp[2*(n+1)], A353396(∑[n²]))`
-/

namespace A090364.P5215928660117622923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A353396 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A090364.P5215928660117622923

/-! ## A090364.P9526054317151720409

`A001147(n)-A062610(A001147(n))`
-/

namespace A090364.P9526054317151720409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A062610 (A001147 n).toNat

end

end A090364.P9526054317151720409

/-!
# A090365: Shifts 1 place left under the INVERT transform of the BINOMIAL transform of this sequence.

The programs for A090365, there is no canonical definition to state claims against.
-/

/-! ## A090365.P3979231969620188643

`floor(A324840(3*n+2)/A001402(2*n+1))`
-/

namespace A090365.P3979231969620188643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324840 (3 * n + 2) : ℚ) / (A001402 (2 * n + 1) : ℚ)⌋

end

end A090365.P3979231969620188643

/-! ## A090365.P18411799020756709111

`A004525(A183146(n)+A000108(n))`
-/

namespace A090365.P18411799020756709111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A183146 n + A000108 n).toNat

end

end A090365.P18411799020756709111

/-!
# A090366: Shifts 1 place left under the INVERT transform of the BINOMIAL transform of the self-convolution of this sequence.

The programs for A090366, there is no canonical definition to state claims against.
-/

/-! ## A090366.P11299040180037607110

`A316628(A069271(n)-n)`
-/

namespace A090366.P11299040180037607110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316628 (A069271 n - (n : ℤ)).toNat

end

end A090366.P11299040180037607110

/-! ## A090366.P16095335465834335840

`A306203(A055010(n)+(-1)^∑[n])`
-/

namespace A090366.P16095335465834335840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306203 (A055010 n + (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A090366.P16095335465834335840

/-!
# A090367: Shifts 1 place left under the INVERT transform of the BINOMIAL transform of the self-convolution cube of this sequence.

The programs for A090367, there is no canonical definition to state claims against.
-/

/-! ## A090367.P975277145132746401

`A005843(A348803(n))+∏{e}[and(n+1, -n), #]`
-/

namespace A090367.P975277145132746401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A348803 n).toNat + ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A090367.P975277145132746401

/-! ## A090367.P5208867733930408757

`A193739(n)+A005843(A348803(n))`
-/

namespace A090367.P5208867733930408757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n + A005843 (A348803 n).toNat

end

end A090367.P5208867733930408757

/-!
# A090368: a(1) = 1; for n > 1, smallest divisor > 1 of 2n-1.

The programs for A090368, there is no canonical definition to state claims against.
-/

/-! ## A090368.P599167909561709513

`A020639(Δ[n²])`
-/

namespace A090368.P599167909561709513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A090368.P599167909561709513

/-! ## A090368.P10769254515312873748

`A374196(Δ[n²])`
-/

namespace A090368.P10769254515312873748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374196 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A090368.P10769254515312873748

/-! ## A090368.P8724036407288123002

`or(1, A020639(comp[2*n]))`
-/

namespace A090368.P8724036407288123002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A090368.P8724036407288123002

/-! ## A090368.P6903207218840845176

`or(1, A057237(2*n+1))`
-/

namespace A090368.P6903207218840845176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057237 (2 * n + 1))

end

end A090368.P6903207218840845176

/-! ## A090368.P16746827518504668123

`∏{d}[A020639(2*n+1), #]`
-/

namespace A090368.P16746827518504668123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A090368.P16746827518504668123

/-! ## A090368.P11833303799029073347

`∏{p}[A020639(n+1+n), #]`
-/

namespace A090368.P11833303799029073347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A090368.P11833303799029073347

/-! ## A090368.P11914960688296100427

`A006530(A020639(2*n+1))`
-/

namespace A090368.P11914960688296100427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020639 (2 * n + 1)).toNat

end

end A090368.P11914960688296100427

/-! ## A090368.P7311992658469305497

`∑{d}[A020639(comp[2*n]), A000010(#)]`
-/

namespace A090368.P7311992658469305497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A090368.P7311992658469305497

/-! ## A090368.P6257004258877957917

`A006530(∏{d}[A020639(comp[2*n]), #])`
-/

namespace A090368.P6257004258877957917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A090368.P6257004258877957917

/-! ## A090368.P13817659031706944402

`filter[A020639(2*n+1), A008966(#)]`
-/

namespace A090368.P13817659031706944402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A090368.P13817659031706944402

/-! ## A090368.P7588050095656404511

`filter[A020639(2*n+1), A035263(#)]`
-/

namespace A090368.P7588050095656404511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A090368.P7588050095656404511

/-! ## A090368.P11089247711709690081

`filter[A020639(2*n+1), A039982(#)]`
-/

namespace A090368.P11089247711709690081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A090368.P11089247711709690081

/-! ## A090368.P1192941418433223526

`filter[A020639(2*n+1), A091862(#)]`
-/

namespace A090368.P1192941418433223526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A090368.P1192941418433223526

/-! ## A090368.P14479652316435597554

`filter[A020639(2*n+1), A093719(#)]`
-/

namespace A090368.P14479652316435597554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A090368.P14479652316435597554

/-! ## A090368.P15222796203568404833

`filter[A020639(2*n+1), A097325(#)]`
-/

namespace A090368.P15222796203568404833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A090368.P15222796203568404833

/-! ## A090368.P7999895837014142739

`filter[A020639(2*n+1), A098725(#)]`
-/

namespace A090368.P7999895837014142739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A090368.P7999895837014142739

/-! ## A090368.P14479710991456695804

`or(A020639(2*n+1), char[A000032(n)])`
-/

namespace A090368.P14479710991456695804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (2 * n + 1)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090368.P14479710991456695804

/-! ## A090368.P248047014531282194

`or(A020639(2*n+1), char[A000045(n)])`
-/

namespace A090368.P248047014531282194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (2 * n + 1)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090368.P248047014531282194

/-! ## A090368.P15647584211143499808

`or(A020639(2*n+1), char[A000010(n+1)])`
-/

namespace A090368.P15647584211143499808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (2 * n + 1)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090368.P15647584211143499808

/-!
# A090369: Smallest divisor of 2n that is > 2, or 0 if no such divisor exists.

The programs for A090369, there is no canonical definition to state claims against.
-/

/-! ## A090369.P15274198747154677087

`A001414(A292269(2*(n+1)))`
-/

namespace A090369.P15274198747154677087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A292269 (2 * (n + 1))).toNat

end

end A090369.P15274198747154677087

/-! ## A090369.P14717948435251309358

`A292269(2*(n+1))-A000007(n)`
-/

namespace A090369.P14717948435251309358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * (n + 1)) - A000007 n

end

end A090369.P14717948435251309358

/-! ## A090369.P5732329759612723305

`A292269(2*(n+1))%A002624(n)²`
-/

namespace A090369.P5732329759612723305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292269 (2 * (n + 1))) (A002624 n ^ 2)

end

end A090369.P5732329759612723305

/-! ## A090369.P4657291185601500196

`A292269(2*(n+1))-A010051(2*(n+1))`
-/

namespace A090369.P4657291185601500196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * (n + 1)) - A010051 (2 * (n + 1))

end

end A090369.P4657291185601500196

/-! ## A090369.P6843356652520613702

`A292269(2*(n+1))-A080339(2*(n+1))`
-/

namespace A090369.P6843356652520613702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * (n + 1)) - A080339 (2 * (n + 1))

end

end A090369.P6843356652520613702

/-! ## A090369.P6545920534867972020

`A005171(2*(n+1))*A292269(2*(n+1))`
-/

namespace A090369.P6545920534867972020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 1)) * A292269 (2 * (n + 1))

end

end A090369.P6545920534867972020

/-! ## A090369.P11317569644471047913

`(2*n+1-A028310(2*n))*A292269(2*(n+1))`
-/

namespace A090369.P11317569644471047913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A028310 (2 * n)) * A292269 (2 * (n + 1))

end

end A090369.P11317569644471047913

/-! ## A090369.P16038513306126058524

`A246960(A003817(n))*A292269(2*(n+1))`
-/

namespace A090369.P16038513306126058524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 (A003817 n).toNat * A292269 (2 * (n + 1))

end

end A090369.P16038513306126058524

/-! ## A090369.P8639307193608023948

`A292269(2*(n+1))+A003817(2*n)-A003817(2*n+1)`
-/

namespace A090369.P8639307193608023948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * (n + 1)) + (A003817 (2 * n) - A003817 (2 * n + 1))

end

end A090369.P8639307193608023948

/-! ## A090369.P16342861628244149462

`A284259(A292269(2*(n+1))²)*A292269(2*(n+1))`
-/

namespace A090369.P16342861628244149462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (A292269 (2 * (n + 1)) ^ 2).toNat * A292269 (2 * (n + 1))

end

end A090369.P16342861628244149462

/-!
# A090370: Least m > 3 such that gcd(n-1, m*n - 1) = m-1.

The programs for A090370, there is no canonical definition to state claims against.
-/

/-! ## A090370.P874547058046975941

`A090369(A145051(n+2))+1`
-/

namespace A090370.P874547058046975941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A145051 (n + 2)).toNat + 1

end

end A090370.P874547058046975941

/-! ## A090370.P16488119608926281567

`A090369(A026741(n+3))+1`
-/

namespace A090370.P16488119608926281567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A026741 (n + 3)).toNat + 1

end

end A090370.P16488119608926281567

/-! ## A090370.P15621552895370638730

`A292269((n+3)*gcd(2, n))+1`
-/

namespace A090370.P15621552895370638730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 ((n + 3) * Nat.gcd 2 n) + 1

end

end A090370.P15621552895370638730

/-! ## A090370.P17672129615675574321

`A327721(n+3)-char[A087445(n+1)]`
-/

namespace A090370.P17672129615675574321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327721 (n + 3) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090370.P17672129615675574321

/-! ## A090370.P18100639543688132845

`ceil((n+4)/A355249(n+3))`
-/

namespace A090370.P18100639543688132845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 4 : ℚ) / (A355249 (n + 3) : ℚ)⌉

end

end A090370.P18100639543688132845

/-!
# A090371: Number of unrooted planar 2-constellations with n digons. Also number of n-edge unrooted planar Eulerian maps with bicolored faces.

The programs for A090371, there is no canonical definition to state claims against.
-/

/-! ## A090371.P17070471086482395561

`A069727(n+1)+A069727(n+1)-A090375(n+1)`
-/

namespace A090371.P17070471086482395561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069727 (n + 1) + (A069727 (n + 1) - A090375 (n + 1))

end

end A090371.P17070471086482395561

/-! ## A090371.P10017665359857567135

`A380453(A025700(n))`
-/

namespace A090371.P10017665359857567135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380453 (A025700 n).toNat

end

end A090371.P10017665359857567135

/-! ## A090371.P6878966005797634982

`A380453(A033638(n+1))`
-/

namespace A090371.P6878966005797634982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380453 (A033638 (n + 1)).toNat

end

end A090371.P6878966005797634982

/-! ## A090371.P14173031010444704579

`A380453(A075353(n+1))`
-/

namespace A090371.P14173031010444704579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380453 (A075353 (n + 1)).toNat

end

end A090371.P14173031010444704579

/-! ## A090371.P11845529121210746945

`A380453(A132278(n+2))`
-/

namespace A090371.P11845529121210746945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380453 (A132278 (n + 2)).toNat

end

end A090371.P11845529121210746945

/-!
# A090372: Number of unrooted planar 3-constellations with n triangles.

The programs for A090372, there is no canonical definition to state claims against.
-/

/-! ## A090372.P179703846111463347

`A028310(A249642(n)+A056115(n))`
-/

namespace A090372.P179703846111463347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A249642 n + A056115 n).toNat

end

end A090372.P179703846111463347

/-!
# A090374: Number of rooted planar 4-constellations with n quadrangles: rooted planar maps with bicolored faces having n black quadrangular faces and an arbitrary number of white faces of degrees multiple to 4.

The programs for A090374, the canonical program `A090374.P15315344646199198653` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090374 has offset 1).

The definition of A090374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090374.P15315344646199198653

`5*4^n*C(4*(n+1), n+1)/((3*(n+1)+1)*(3*(n+1)+2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090374

/-- `5*4^n*C(4*(n+1), n+1)/((3*(n+1)+1)*(3*(n+1)+2))` -/
def P15315344646199198653.Spec : Prop :=
  ∀ n, P15315344646199198653.a n = (A090374 (n + 1) : ℚ)

end A090374

/-!
# A090375: Number of unrooted Eulerian maps with bicolored faces which are self-isomorphic under reversing the colors.

The programs for A090375, there is no canonical definition to state claims against.
-/

/-! ## A090375.P10357116955633319080

`2*A069727(n+1)-A090371(n+1)`
-/

namespace A090375.P10357116955633319080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069727 (n + 1) - A090371 (n + 1)

end

end A090375.P10357116955633319080

/-! ## A090375.P10423125460183811705

`A226762(A217896(n+1))`
-/

namespace A090375.P10423125460183811705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A217896 (n + 1)).toNat

end

end A090375.P10423125460183811705

/-! ## A090375.P10131422903179458678

`A001462(A090345(n)+A044045(n))`
-/

namespace A090375.P10131422903179458678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A090345 n + A044045 n).toNat

end

end A090375.P10131422903179458678

/-! ## A090375.P16682360096276474993

`A171854(n)+A000194(A216174(n))`
-/

namespace A090375.P16682360096276474993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171854 n + A000194 (A216174 n).toNat

end

end A090375.P16682360096276474993

/-! ## A090375.P11234344200790935602

`A289971(n)-A135661(A121689(n))`
-/

namespace A090375.P11234344200790935602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289971 n - A135661 (A121689 n).toNat

end

end A090375.P11234344200790935602

/-!
# A090376: Number of rooted generalized quadrangular dissections of weight n of a closed disk: planar maps having the external face bounded by a polygon and all internal faces of size 4.

The programs for A090376, there is no canonical definition to state claims against.
-/

/-! ## A090376.P11005274446480074995

`A170899(∑[10*a(n-1)])` with `a(0)=8, a(1)=2`
-/

namespace A090376.P11005274446480074995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 2] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170899 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090376.P11005274446480074995

/-!
# A090377: Number of configurations that require a minimum of n moves to be reached, starting with the empty square in one of the corners of an infinitely large extension of Sam Loyd's sliding block 15-puzzle.

The programs for A090377, there is no canonical definition to state claims against.
-/

/-! ## A090377.P14526027352683177373

`A100196(A150762(n)+A148191(n))`
-/

namespace A090377.P14526027352683177373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A150762 n + A148191 n).toNat

end

end A090377.P14526027352683177373

/-! ## A090377.P1542521419954796442

`A001462(A150864(n))`
-/

namespace A090377.P1542521419954796442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A150864 n).toNat

end

end A090377.P1542521419954796442

/-!
# A090378: Number of configurations that require a minimum of n moves to be reached, starting with the empty square at mid-side of a boundary of an infinitely large extension of Sam Loyd's sliding block 15-puzzle.

The programs for A090378, there is no canonical definition to state claims against.
-/

/-! ## A090378.P4411872681626784888

`A027052((n+3)²-4)+A004736(A090339(n))`
-/

namespace A090378.P4411872681626784888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 ((n + 3) ^ 2 - 4) + A004736 (A090339 n).toNat

end

end A090378.P4411872681626784888

/-! ## A090378.P11680688180850806212

`or(1, A008647(A251319(n+1)))`
-/

namespace A090378.P11680688180850806212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008647 (A251319 (n + 1)).toNat)

end

end A090378.P11680688180850806212

/-! ## A090378.P5102846847468972403

`A286294(A283967(a(n-1)))` with `a(0)=1`
-/

namespace A090378.P5102846847468972403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286294 (A283967 (a (n - 1)).toNat).toNat

end

end A090378.P5102846847468972403

/-!
# A090379: a(n) = abs(floor((pi(n)-2)/(2-pi(n)+pi(n-1)))), where pi(n) is A000720(n).

The programs for A090379, there is no canonical definition to state claims against.
-/

/-! ## A090379.P16366570843918595290

`A325224(n+1)-A033999(A203175(n+1))`
-/

namespace A090379.P16366570843918595290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325224 (n + 1) - A033999 (A203175 (n + 1)).toNat

end

end A090379.P16366570843918595290

/-! ## A090379.P4896539606384296695

`A325224(n+1)+A033999(A203175(n+1)+1)`
-/

namespace A090379.P4896539606384296695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325224 (n + 1) + A033999 (A203175 (n + 1) + 1).toNat

end

end A090379.P4896539606384296695

/-! ## A090379.P7984812477819047360

`A136167(3^A325224(n+1))`
-/

namespace A090379.P7984812477819047360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136167 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A325224 (n + 1) : ℤ))).toNat

end

end A090379.P7984812477819047360

/-! ## A090379.P18252261866274792648

`abs(1-dr(A358580(A300121(n+1))+1))`
-/

namespace A090379.P18252261866274792648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.digitalRoot (A358580 (A300121 (n + 1)).toNat + 1) : ℤ)|

end

end A090379.P18252261866274792648

/-! ## A090379.P6601015344539335902

`A123108(A001222(A107324(n+1)!))`
-/

namespace A090379.P6601015344539335902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A001222 (Nat.factorial (A107324 (n + 1)).toNat)).toNat

end

end A090379.P6601015344539335902

/-!
# A090381: Expansion of (1+4x+7x^2)/((1-x)^2*(1-x^2)).

The programs for A090381, the canonical program `A090381.P16103734298228809191` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090381 has offset 0).

The definition of A090381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+7x^2)/(1-2x+2x^3-x^4))` (program `A090381.P16103734298228809191`, by `A090381.P16103734298228809191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090381.P16103734298228809191

`ogf((1+4x+7x^2)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090381

/-- `ogf((1+4x+7x^2)/(1-2x+2x^3-x^4))` -/
def P16103734298228809191.Spec : Prop :=
  ∀ n, P16103734298228809191.a n = A090381 n

theorem P16103734298228809191.correct : P16103734298228809191.Spec := by
  intro n
  simp only [A090381]

end A090381

/-! ## A090381.P14358812950544071419

`3*n*(n+1)+(1+(-1)^n)/2`
-/

namespace A090381.P14358812950544071419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n * (n + 1) : ℚ) + (1 + (-1) ^ n : ℚ) / 2

end

end A090381.P14358812950544071419

namespace A090381

/-- `3*n*(n+1)+(1+(-1)^n)/2` -/
def P14358812950544071419.Spec : Prop :=
  ∀ n, P14358812950544071419.a n = (A090381 n : ℚ)

end A090381

/-! ## A090381.P1568927870572418686

`∑[or(2, 6*n)-1]`
-/

namespace A090381.P1568927870572418686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (6 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P1568927870572418686

namespace A090381

/-- `∑[or(2, 6*n)-1]` -/
def P1568927870572418686.Spec : Prop :=
  ∀ n, P1568927870572418686.a n = A090381 n

end A090381

/-! ## A090381.P9091345401872500590

`∑[xor(1, 5*n)+n]`
-/

namespace A090381.P9091345401872500590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P9091345401872500590

namespace A090381

/-- `∑[xor(1, 5*n)+n]` -/
def P9091345401872500590.Spec : Prop :=
  ∀ n, (P9091345401872500590.a n : ℤ) = A090381 n

end A090381

/-! ## A090381.P2995710216106065289

`∑[a(n-2)+12]` with `a(0)=1, a(1)=5`
-/

namespace A090381.P2995710216106065289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P2995710216106065289

namespace A090381

/-- `∑[a(n-2)+12]` -/
def P2995710216106065289.Spec : Prop :=
  ∀ n, (P2995710216106065289.a n : ℤ) = A090381 n

end A090381

/-! ## A090381.P2020375650938023898

`∑[∑[12-a(n-1)]]` with `a(0)=1, a(1)=4`
-/

namespace A090381.P2020375650938023898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  12 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P2020375650938023898

namespace A090381

/-- `∑[∑[12-a(n-1)]]` -/
def P2020375650938023898.Spec : Prop :=
  ∀ n, P2020375650938023898.a n = A090381 n

end A090381

/-! ## A090381.P17355640916591650753

`xor(1, a(n-1)+6*n)` with `a(0)=1`
-/

namespace A090381.P17355640916591650753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (a (n - 1) + 6 * n)

end

end A090381.P17355640916591650753

namespace A090381

/-- `xor(1, a(n-1)+6*n)` -/
def P17355640916591650753.Spec : Prop :=
  ∀ n, (P17355640916591650753.a n : ℤ) = A090381 n

end A090381

/-! ## A090381.P15975156091903380395

`∑[A087445(n+1)]`
-/

namespace A090381.P15975156091903380395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P15975156091903380395

namespace A090381

/-- `∑[A087445(n+1)]` -/
def P15975156091903380395.Spec : Prop :=
  ∀ n, P15975156091903380395.a n = A090381 n

end A090381

/-! ## A090381.P13921143307919899901

`∑[A092259(n+1)-3]`
-/

namespace A090381.P13921143307919899901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P13921143307919899901

namespace A090381

/-- `∑[A092259(n+1)-3]` -/
def P13921143307919899901.Spec : Prop :=
  ∀ n, P13921143307919899901.a n = A090381 n

end A090381

/-! ## A090381.P6712515561053103397

`∑[A271508(n+1)+n]`
-/

namespace A090381.P6712515561053103397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P6712515561053103397

namespace A090381

/-- `∑[A271508(n+1)+n]` -/
def P6712515561053103397.Spec : Prop :=
  ∀ n, P6712515561053103397.a n = A090381 n

end A090381

/-! ## A090381.P8816942657059888125

`xor(A000035(n), A003215(n))`
-/

namespace A090381.P8816942657059888125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A003215 n)

end

end A090381.P8816942657059888125

namespace A090381

/-- `xor(A000035(n), A003215(n))` -/
def P8816942657059888125.Spec : Prop :=
  ∀ n, P8816942657059888125.a n = A090381 n

end A090381

/-! ## A090381.P10191721891691112824

`xor(A028896(n), A059841(n))`
-/

namespace A090381.P10191721891691112824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028896 n) (A059841 n)

end

end A090381.P10191721891691112824

namespace A090381

/-- `xor(A028896(n), A059841(n))` -/
def P10191721891691112824.Spec : Prop :=
  ∀ n, P10191721891691112824.a n = A090381 n

end A090381

/-! ## A090381.P3936839528834556881

`∑[A092899(n+1)-2]`
-/

namespace A090381.P3936839528834556881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P3936839528834556881

namespace A090381

/-- `∑[A092899(n+1)-2]` -/
def P3936839528834556881.Spec : Prop :=
  ∀ n, P3936839528834556881.a n = A090381 n

end A090381

/-! ## A090381.P9211239050653266084

`∑[eq[gcd(n+3, (2*n)²)+n-1, n+3]]`
-/

namespace A090381.P9211239050653266084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 3) ((2 * n) ^ 2) : ℤ) + ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P9211239050653266084

namespace A090381

/-- `∑[eq[gcd(n+3, (2*n)²)+n-1, n+3]]` -/
def P9211239050653266084.Spec : Prop :=
  ∀ n, (P9211239050653266084.a n : ℤ) = A090381 n

end A090381

/-! ## A090381.P10116899583285780445

`∑[record[A093544(n+1)]]`
-/

namespace A090381.P10116899583285780445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093544 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P10116899583285780445

namespace A090381

/-- `∑[record[A093544(n+1)]]` -/
def P10116899583285780445.Spec : Prop :=
  ∀ n, P10116899583285780445.a n = A090381 n

end A090381

/-! ## A090381.P7683784526144435779

`∑[A174398(2*n+1)]`
-/

namespace A090381.P7683784526144435779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P7683784526144435779

namespace A090381

/-- `∑[A174398(2*n+1)]` -/
def P7683784526144435779.Spec : Prop :=
  ∀ n, P7683784526144435779.a n = A090381 n

end A090381

/-! ## A090381.P15552567997527458572

`∑[record[A329494(2*n)]]`
-/

namespace A090381.P15552567997527458572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329494 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P15552567997527458572

namespace A090381

/-- `∑[record[A329494(2*n)]]` -/
def P15552567997527458572.Spec : Prop :=
  ∀ n, P15552567997527458572.a n = A090381 n

end A090381

/-! ## A090381.P7692798897090628282

`∑[record[A098486(2*n+1)]]`
-/

namespace A090381.P7692798897090628282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098486 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P7692798897090628282

namespace A090381

/-- `∑[record[A098486(2*n+1)]]` -/
def P7692798897090628282.Spec : Prop :=
  ∀ n, P7692798897090628282.a n = A090381 n

end A090381

/-! ## A090381.P5584462950075506909

`∑[record[A146535(2*n+1)]]`
-/

namespace A090381.P5584462950075506909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090381.P5584462950075506909

namespace A090381

/-- `∑[record[A146535(2*n+1)]]` -/
def P5584462950075506909.Spec : Prop :=
  ∀ n, P5584462950075506909.a n = A090381 n

end A090381

/-! ## A090381.P18224450908929548067

`A079811(A047461(n+1))`
-/

namespace A090381.P18224450908929548067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079811 (A047461 (n + 1)).toNat

end

end A090381.P18224450908929548067

namespace A090381

/-- `A079811(A047461(n+1))` -/
def P18224450908929548067.Spec : Prop :=
  ∀ n, P18224450908929548067.a n = A090381 n

end A090381

/-!
# A090385: Maximal number of vertices of polytope P_T associated with any tree having n nodes.

The programs for A090385, there is no canonical definition to state claims against.
-/

/-! ## A090385.P538014545165752827

`lt[A121817(A121842(3*(n+1))), A121829(n+1)]`
-/

namespace A090385.P538014545165752827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121817 (A121842 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090385.P538014545165752827

/-!
# A090386: Fifth diagonal (m=4) of triangle A084938; a(n) = A084938(n+4,n) = (n^4 + 18*n^3 + 131*n^2 + 426*n)/24.

The programs for A090386, the canonical program `A090386.P97909343805779606` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090386 has offset 0).

The definition of A090386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4+18*n^3+131*n²+426*n)/24` (program `A090386.P10319903964749386011`, by `A090386.P10319903964749386011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090386.P10319903964749386011

`(n^4+18*n^3+131*n²+426*n)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090386.P10319903964749386011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + 18 * n ^ 3 + 131 * n ^ 2 + 426 * n : ℚ) / 24

end

end A090386.P10319903964749386011

namespace A090386

/-- `(n^4+18*n^3+131*n²+426*n)/24` -/
def P10319903964749386011.Spec : Prop :=
  ∀ n, P10319903964749386011.a n = (A090386 n : ℚ)

theorem P10319903964749386011.correct : P10319903964749386011.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A090386, Nat.add_sub_cancel, A090386.P10319903964749386011.a, A090386.P97909343805779606.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A090386, Nat.add_sub_cancel, A090386.P10319903964749386011.a, A090386.P97909343805779606.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A090386

/-! ## A090386.P97909343805779606

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=24, a(2)=64, a(3)=126, a(4)=217`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090386

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P97909343805779606.Spec : Prop :=
  ∀ n, P97909343805779606.a n = A090386 n

theorem P97909343805779606.correct : P97909343805779606.Spec := by
  intro n
  simp only [A090386]

end A090386

/-! ## A090386.P3471077820521176559

`A028569(n)+A005587(n)`
-/

namespace A090386.P3471077820521176559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 n + A005587 n

end

end A090386.P3471077820521176559

namespace A090386

/-- `A028569(n)+A005587(n)` -/
def P3471077820521176559.Spec : Prop :=
  ∀ n, P3471077820521176559.a n = A090386 n

end A090386

/-! ## A090386.P10573903544088217115

`A005587(n)+2*A056000(n)`
-/

namespace A090386.P10573903544088217115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 n + 2 * A056000 n

end

end A090386.P10573903544088217115

namespace A090386

/-- `A005587(n)+2*A056000(n)` -/
def P10573903544088217115.Spec : Prop :=
  ∀ n, P10573903544088217115.a n = A090386 n

end A090386

/-! ## A090386.P2343934309896111996

`A051744(n+3)-21`
-/

namespace A090386.P2343934309896111996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 3) - 21

end

end A090386.P2343934309896111996

namespace A090386

/-- `A051744(n+3)-21` -/
def P2343934309896111996.Spec : Prop :=
  ∀ n, P2343934309896111996.a n = A090386 n

end A090386

/-! ## A090386.P7820334650573167930

`A223718(n+3)-22`
-/

namespace A090386.P7820334650573167930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 3) - 22

end

end A090386.P7820334650573167930

namespace A090386

/-- `A223718(n+3)-22` -/
def P7820334650573167930.Spec : Prop :=
  ∀ n, P7820334650573167930.a n = A090386 n

end A090386

/-! ## A090386.P8212013072060764617

`Δ[A257890(n+1)]-22`
-/

namespace A090386.P8212013072060764617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 22

end

end A090386.P8212013072060764617

namespace A090386

/-- `Δ[A257890(n+1)]-22` -/
def P8212013072060764617.Spec : Prop :=
  ∀ n, P8212013072060764617.a n = A090386 n

end A090386

/-! ## A090386.P14926755184811844812

`∑[A003600(n+3)]-13`
-/

namespace A090386.P14926755184811844812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 13

end

end A090386.P14926755184811844812

namespace A090386

/-- `∑[A003600(n+3)]-13` -/
def P14926755184811844812.Spec : Prop :=
  ∀ n, P14926755184811844812.a n = A090386 n

end A090386

/-! ## A090386.P4058038085066684314

`A000332(n+6)+(n+8)²-A000124(n+12)`
-/

namespace A090386.P4058038085066684314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 6) + (((n + 8) ^ 2 : ℤ) - A000124 (n + 12))

end

end A090386.P4058038085066684314

namespace A090386

/-- `A000332(n+6)+(n+8)²-A000124(n+12)` -/
def P4058038085066684314.Spec : Prop :=
  ∀ n, P4058038085066684314.a n = A090386 n

end A090386

/-! ## A090386.P16119537638463963126

`A005843(A056000(n))+A005587(n)`
-/

namespace A090386.P16119537638463963126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A056000 n).toNat + A005587 n

end

end A090386.P16119537638463963126

namespace A090386

/-- `A005843(A056000(n))+A005587(n)` -/
def P16119537638463963126.Spec : Prop :=
  ∀ n, P16119537638463963126.a n = A090386 n

end A090386

/-!
# A090387: Numerator of d(n)/n, where d(n) (A000005) is the number of divisors of n.

The programs for A090387, the canonical program `A090387.P16854048901003584850` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090387 has offset 1).

The definition of A090387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090387.P16854048901003584850

`A009230(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090387

/-- `A009230(n+1)/(n+1)` -/
def P16854048901003584850.Spec : Prop :=
  ∀ n, P16854048901003584850.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P7254157020298848843

`lcm(n+1, A000005(n+1))/(n+1)`
-/

namespace A090387.P7254157020298848843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000005 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A090387.P7254157020298848843

namespace A090387

/-- `lcm(n+1, A000005(n+1))/(n+1)` -/
def P7254157020298848843.Spec : Prop :=
  ∀ n, P7254157020298848843.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P9999119103292651809

`Δ[A006218(n)]/A009191(n+1)`
-/

namespace A090387.P9999119103292651809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A009191 (n + 1) : ℚ)

end

end A090387.P9999119103292651809

namespace A090387

/-- `Δ[A006218(n)]/A009191(n+1)` -/
def P9999119103292651809.Spec : Prop :=
  ∀ n, P9999119103292651809.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P4986888751632082854

`Δ[A054519(n)]/A009191(n+1)`
-/

namespace A090387.P4986888751632082854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A009191 (n + 1) : ℚ)

end

end A090387.P4986888751632082854

namespace A090387

/-- `Δ[A054519(n)]/A009191(n+1)` -/
def P4986888751632082854.Spec : Prop :=
  ∀ n, P4986888751632082854.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P17867518210050532519

`A000005(n+1)/A009191(n+1)`
-/

namespace A090387.P17867518210050532519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ)

end

end A090387.P17867518210050532519

namespace A090387

/-- `A000005(n+1)/A009191(n+1)` -/
def P17867518210050532519.Spec : Prop :=
  ∀ n, P17867518210050532519.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P16269473899645180749

`Δ[A006218(n)]/(A303781(n+1)+char[1])`
-/

namespace A090387.P16269473899645180749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A303781 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A090387.P16269473899645180749

namespace A090387

/-- `Δ[A006218(n)]/(A303781(n+1)+char[1])` -/
def P16269473899645180749.Spec : Prop :=
  ∀ n, P16269473899645180749.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P5462549958078798773

`A000005(n+1)/(A303781(n+1)+char[1])`
-/

namespace A090387.P5462549958078798773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A303781 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A090387.P5462549958078798773

namespace A090387

/-- `A000005(n+1)/(A303781(n+1)+char[1])` -/
def P5462549958078798773.Spec : Prop :=
  ∀ n, P5462549958078798773.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P9740828314284139876

`A000005(n+1)/gcd(n+1, Δ[A006218(n)])`
-/

namespace A090387.P9740828314284139876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n) : ℚ)

end

end A090387.P9740828314284139876

namespace A090387

/-- `A000005(n+1)/gcd(n+1, Δ[A006218(n)])` -/
def P9740828314284139876.Spec : Prop :=
  ∀ n, P9740828314284139876.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P1132910082223273301

`A038040(n+1)/gcd((n+1)², A038040(n+1))`
-/

namespace A090387.P1132910082223273301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A038040 (n + 1)) : ℚ)

end

end A090387.P1132910082223273301

namespace A090387

/-- `A038040(n+1)/gcd((n+1)², A038040(n+1))` -/
def P1132910082223273301.Spec : Prop :=
  ∀ n, P1132910082223273301.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P7407301568525684227

`(A006218(n+1)-A006218(n))/A009191(n+1)`
-/

namespace A090387.P7407301568525684227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) - A006218 n : ℚ) / (A009191 (n + 1) : ℚ)

end

end A090387.P7407301568525684227

namespace A090387

/-- `(A006218(n+1)-A006218(n))/A009191(n+1)` -/
def P7407301568525684227.Spec : Prop :=
  ∀ n, P7407301568525684227.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P16802058979301521837

`A000005(n+1)/gcd(A000005(n+1), A131738(n))`
-/

namespace A090387.P16802058979301521837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A131738 n) : ℚ)

end

end A090387.P16802058979301521837

namespace A090387

/-- `A000005(n+1)/gcd(A000005(n+1), A131738(n))` -/
def P16802058979301521837.Spec : Prop :=
  ∀ n, P16802058979301521837.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P2811954328505811580

`(A134156(n+1)+A049820(n+1))/A009191(n+1)`
-/

namespace A090387.P2811954328505811580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134156 (n + 1) + A049820 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ)

end

end A090387.P2811954328505811580

namespace A090387

/-- `(A134156(n+1)+A049820(n+1))/A009191(n+1)` -/
def P2811954328505811580.Spec : Prop :=
  ∀ n, P2811954328505811580.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P15346866718923488215

`(A007503(n+1)-A000203(n+1))/A009191(n+1)`
-/

namespace A090387.P15346866718923488215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007503 (n + 1) - A000203 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ)

end

end A090387.P15346866718923488215

namespace A090387

/-- `(A007503(n+1)-A000203(n+1))/A009191(n+1)` -/
def P15346866718923488215.Spec : Prop :=
  ∀ n, P15346866718923488215.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P11901080202403021834

`A064840(n+1)/(A000203(n+1)*A009191(n+1))`
-/

namespace A090387.P11901080202403021834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A000203 (n + 1) * A009191 (n + 1) : ℚ)

end

end A090387.P11901080202403021834

namespace A090387

/-- `A064840(n+1)/(A000203(n+1)*A009191(n+1))` -/
def P11901080202403021834.Spec : Prop :=
  ∀ n, P11901080202403021834.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P12418833764242693107

`A009205(n+1)/A009191(n+1)*A057021(n+1)`
-/

namespace A090387.P12418833764242693107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009205 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ) * (A057021 (n + 1) : ℚ)

end

end A090387.P12418833764242693107

namespace A090387

/-- `A009205(n+1)/A009191(n+1)*A057021(n+1)` -/
def P12418833764242693107.Spec : Prop :=
  ∀ n, P12418833764242693107.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P3979507937681095509

`A009278(n+1)/(A009191(n+1)*A057020(n+1))`
-/

namespace A090387.P3979507937681095509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / (A009191 (n + 1) * A057020 (n + 1) : ℚ)

end

end A090387.P3979507937681095509

namespace A090387

/-- `A009278(n+1)/(A009191(n+1)*A057020(n+1))` -/
def P3979507937681095509.Spec : Prop :=
  ∀ n, P3979507937681095509.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P16372808474569201616

`A388270(n+1)/(A009191(n+1)*A009194(n+1))`
-/

namespace A090387.P16372808474569201616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388270 (n + 1) : ℚ) / (A009191 (n + 1) * A009194 (n + 1) : ℚ)

end

end A090387.P16372808474569201616

namespace A090387

/-- `A388270(n+1)/(A009191(n+1)*A009194(n+1))` -/
def P16372808474569201616.Spec : Prop :=
  ∀ n, P16372808474569201616.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P11872102076507610865

`A183063(2*(n+1))/A009191(n+1)`
-/

namespace A090387.P11872102076507610865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183063 (2 * (n + 1)) : ℚ) / (A009191 (n + 1) : ℚ)

end

end A090387.P11872102076507610865

namespace A090387

/-- `A183063(2*(n+1))/A009191(n+1)` -/
def P11872102076507610865.Spec : Prop :=
  ∀ n, P11872102076507610865.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P15463113184877868730

`A183063(2*n+2)/gcd(A008619(2*n), A183063(2*n+2))`
-/

namespace A090387.P15463113184877868730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183063 (2 * n + 2) : ℚ) / (Int.gcd (A008619 (2 * n)) (A183063 (2 * n + 2)) : ℚ)

end

end A090387.P15463113184877868730

namespace A090387

/-- `A183063(2*n+2)/gcd(A008619(2*n), A183063(2*n+2))` -/
def P15463113184877868730.Spec : Prop :=
  ∀ n, P15463113184877868730.a n = (A090387 (n + 1) : ℚ)

end A090387

/-! ## A090387.P4079965278098792097

`A320111(2*(n+1))/gcd(A252463(2*(n+1)), A320111(2*(n+1)))`
-/

namespace A090387.P4079965278098792097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320111 (2 * (n + 1)) : ℚ) / (Int.gcd (A252463 (2 * (n + 1))) (A320111 (2 * (n + 1))) : ℚ)

end

end A090387.P4079965278098792097

namespace A090387

/-- `A320111(2*(n+1))/gcd(A252463(2*(n+1)), A320111(2*(n+1)))` -/
def P4079965278098792097.Spec : Prop :=
  ∀ n, P4079965278098792097.a n = (A090387 (n + 1) : ℚ)

end A090387

/-!
# A090388: Decimal expansion of 1 + sqrt(3).

The programs for A090388, there is no canonical definition to state claims against.
-/

/-! ## A090388.P478758016592394188

`A019973(C(3, (n+1)²)+n)`
-/

namespace A090388.P478758016592394188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (Nat.choose 3 ((n + 1) ^ 2) + n + 1)

end

end A090388.P478758016592394188

/-! ## A090388.P7851890913844285517

`A002194(n)+A000007(n)`
-/

namespace A090388.P7851890913844285517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + A000007 n

end

end A090388.P7851890913844285517

/-! ## A090388.P15711510763309485932

`A019973(n)-A000007(n)`
-/

namespace A090388.P15711510763309485932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) - A000007 n

end

end A090388.P15711510763309485932

/-! ## A090388.P3510642712077157887

`A147612(2*n)+A002194(n)`
-/

namespace A090388.P3510642712077157887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n) + A002194 (n + 1)

end

end A090388.P3510642712077157887

/-! ## A090388.P1949114567743623323

`A002194(n)+A000038(n)/2`
-/

namespace A090388.P1949114567743623323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002194 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A090388.P1949114567743623323

/-! ## A090388.P912419053500722863

`A019973(3*A000007(n)+n)`
-/

namespace A090388.P912419053500722863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 ((3 * A000007 n + (n : ℤ)).toNat + 1)

end

end A090388.P912419053500722863

/-! ## A090388.P730145943617067293

`(A019973(n)+A002194(n))/2`
-/

namespace A090388.P730145943617067293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019973 (n + 1) + A002194 (n + 1) : ℚ) / 2

end

end A090388.P730145943617067293

/-! ## A090388.P12532921083233795446

`A019973(n)-A000038(n)/2`
-/

namespace A090388.P12532921083233795446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019973 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A090388.P12532921083233795446

/-! ## A090388.P16649996562111774900

`A002194(8*A000038(n)+n)`
-/

namespace A090388.P16649996562111774900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((8 * A000038 n + (n : ℤ)).toNat + 1)

end

end A090388.P16649996562111774900

/-! ## A090388.P18001232575335761003

`A019973(8*A000038(n)+n)`
-/

namespace A090388.P18001232575335761003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 ((8 * A000038 n + (n : ℤ)).toNat + 1)

end

end A090388.P18001232575335761003

/-! ## A090388.P4543395611056547599

`A002194(A000038(n)²²+n)`
-/

namespace A090388.P4543395611056547599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (((A000038 n ^ 2) ^ 2 + (n : ℤ)).toNat + 1)

end

end A090388.P4543395611056547599

/-! ## A090388.P17177339307559874332

`A019973(A000038(n)²²+n)`
-/

namespace A090388.P17177339307559874332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (((A000038 n ^ 2) ^ 2 + (n : ℤ)).toNat + 1)

end

end A090388.P17177339307559874332

/-! ## A090388.P9464977161755925209

`A002194(n)+A014176(n)-A002193(n)`
-/

namespace A090388.P9464977161755925209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + (A014176 (n + 1) - A002193 (n + 1))

end

end A090388.P9464977161755925209

/-! ## A090388.P8901803608986012543

`A002194(A165663(n)+n-A002194(n))`
-/

namespace A090388.P8901803608986012543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((A165663 (n + 1) + ((n : ℤ) - A002194 (n + 1))).toNat + 1)

end

end A090388.P8901803608986012543

/-! ## A090388.P15085730086810488100

`A019973(n)+A104457(n)-A296184(n)`
-/

namespace A090388.P15085730086810488100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) + (A104457 (n + 1) - A296184 (n + 1))

end

end A090388.P15085730086810488100

/-! ## A090388.P2987035223569004971

`A000038(n)-(A000007(n)-A002194(n))`
-/

namespace A090388.P2987035223569004971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - (A000007 n - A002194 (n + 1))

end

end A090388.P2987035223569004971

/-! ## A090388.P14361149171607109715

`A002194(n-(A002194(n)-A165663(n)))`
-/

namespace A090388.P14361149171607109715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (((n : ℤ) - (A002194 (n + 1) - A165663 (n + 1))).toNat + 1)

end

end A090388.P14361149171607109715

/-! ## A090388.P820230259560019229

`A007318(A007318(a(n-1)))*A002194(n)` with `a(0)=2`
-/

namespace A090388.P820230259560019229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007318 (A007318 (a (n - 1)).toNat).toNat * A002194 (n + 1)

end

end A090388.P820230259560019229

/-! ## A090388.P8940181522087665877

`A000034(n+1)+A002194(n)-A040001(n)`
-/

namespace A090388.P8940181522087665877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) + (A002194 (n + 1) - A040001 n)

end

end A090388.P8940181522087665877

/-! ## A090388.P13552202357724331278

`A084642(n+1)+A002194(n)-A000034(n+1)`
-/

namespace A090388.P13552202357724331278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (n + 1) + (A002194 (n + 1) - A000034 (n + 1))

end

end A090388.P13552202357724331278

/-!
# A090390: Repeatedly multiply (1,0,0) by ([1,2,2],[2,1,2],[2,2,3]); sequence gives leading entry.

The programs for A090390, the canonical program `A090390.P4279728042905661139` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090390 has offset 0).

The definition of A090390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090390.P4279728042905661139

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090390

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P4279728042905661139.Spec : Prop :=
  ∀ n, P4279728042905661139.a n = A090390 n

theorem P4279728042905661139.correct : P4279728042905661139.Spec := by
  intro n
  simp only [A090390]

end A090390

/-! ## A090390.P17642109082226309895

`A001333(n)²`
-/

namespace A090390.P17642109082226309895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n ^ 2

end

end A090390.P17642109082226309895

namespace A090390

/-- `A001333(n)²` -/
def P17642109082226309895.Spec : Prop :=
  ∀ n, P17642109082226309895.a n = A090390 n

end A090390

/-! ## A090390.P14350990857977753658

`(A001541(n)+(-1)^n)/2`
-/

namespace A090390.P14350990857977753658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001541 n + (-1) ^ n : ℚ) / 2

end

end A090390.P14350990857977753658

namespace A090390

/-- `(A001541(n)+(-1)^n)/2` -/
def P14350990857977753658.Spec : Prop :=
  ∀ n, P14350990857977753658.a n = (A090390 n : ℚ)

end A090390

/-! ## A090390.P9550552545252938165

`ogf((-1+4x+x^2)/(-1+5x+5x^2-x^3))`
-/

namespace A090390.P9550552545252938165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -1] [1, -5, -5, 1] n

end

end A090390.P9550552545252938165

namespace A090390

/-- `ogf((-1+4x+x^2)/(-1+5x+5x^2-x^3))` -/
def P9550552545252938165.Spec : Prop :=
  ∀ n, P9550552545252938165.a n = A090390 n

end A090390

/-! ## A090390.P11467268962289524788

`(lcm(2, round((sqrt(2)+1)^n))/2)²`
-/

namespace A090390.P11467268962289524788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℚ) / 2) ^ 2

end

end A090390.P11467268962289524788

namespace A090390

/-- `(lcm(2, round((sqrt(2)+1)^n))/2)²` -/
def P11467268962289524788.Spec : Prop :=
  ∀ n, P11467268962289524788.a n = (A090390 n : ℚ)

end A090390

/-! ## A090390.P14736168138114074699

`Δ[a(n-2)+2*a(n-1)]²` with `a(0)=0, a(1)=1`
-/

namespace A090390.P14736168138114074699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A090390.P14736168138114074699

namespace A090390

/-- `Δ[a(n-2)+2*a(n-1)]²` -/
def P14736168138114074699.Spec : Prop :=
  ∀ n, P14736168138114074699.a n = A090390 n

end A090390

/-! ## A090390.P14644921702338585491

`∑[a(n-2)+2*a(n-1)]²` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A090390.P14644921702338585491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A090390.P14644921702338585491

namespace A090390

/-- `∑[a(n-2)+2*a(n-1)]²` -/
def P14644921702338585491.Spec : Prop :=
  ∀ n, (P14644921702338585491.a n : ℤ) = A090390 n

end A090390

/-! ## A090390.P15105379900606512928

`∏[ratio[a(n-2)-2*a(n-1)]²]` with `a(0)=1, a(1)=1`
-/

namespace A090390.P15105379900606512928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) - 2 * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090390.P15105379900606512928

namespace A090390

/-- `∏[ratio[a(n-2)-2*a(n-1)]²]` -/
def P15105379900606512928.Spec : Prop :=
  ∀ n, P15105379900606512928.a n = (A090390 n : ℚ)

end A090390

/-! ## A090390.P7768778117433235464

`Δ[a(n-2)-a(n-1)-a(n-1)]²` with `a(0)=1, a(1)=0`
-/

namespace A090390.P7768778117433235464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A090390.P7768778117433235464

namespace A090390

/-- `Δ[a(n-2)-a(n-1)-a(n-1)]²` -/
def P7768778117433235464.Spec : Prop :=
  ∀ n, P7768778117433235464.a n = A090390 n

end A090390

/-! ## A090390.P1345764203833368509

`∑[a(n-1)+a(n-1)+a(n-2)]²` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A090390.P1345764203833368509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A090390.P1345764203833368509

namespace A090390

/-- `∑[a(n-1)+a(n-1)+a(n-2)]²` -/
def P1345764203833368509.Spec : Prop :=
  ∀ n, (P1345764203833368509.a n : ℤ) = A090390 n

end A090390

/-! ## A090390.P17782460407770170422

`A123335(n)²`
-/

namespace A090390.P17782460407770170422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n ^ 2

end

end A090390.P17782460407770170422

namespace A090390

/-- `A123335(n)²` -/
def P17782460407770170422.Spec : Prop :=
  ∀ n, P17782460407770170422.a n = A090390 n

end A090390

/-! ## A090390.P7428402666351920326

`or(1, A001108(n))`
-/

namespace A090390.P7428402666351920326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001108 n)

end

end A090390.P7428402666351920326

namespace A090390

/-- `or(1, A001108(n))` -/
def P7428402666351920326.Spec : Prop :=
  ∀ n, P7428402666351920326.a n = A090390 n

end A090390

/-! ## A090390.P11065022779975377924

`A210636(∑[n])²`
-/

namespace A090390.P11065022779975377924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210636 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A090390.P11065022779975377924

namespace A090390

/-- `A210636(∑[n])²` -/
def P11065022779975377924.Spec : Prop :=
  ∀ n, P11065022779975377924.a n = A090390 n

end A090390

/-! ## A090390.P532502569691110093

`A367564(∑[n])²`
-/

namespace A090390.P532502569691110093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367564 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A090390.P532502569691110093

namespace A090390

/-- `A367564(∑[n])²` -/
def P532502569691110093.Spec : Prop :=
  ∀ n, P532502569691110093.a n = A090390 n

end A090390

/-! ## A090390.P17554272887667676688

`Δ[A000129(n)]²`
-/

namespace A090390.P17554272887667676688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A090390.P17554272887667676688

namespace A090390

/-- `Δ[A000129(n)]²` -/
def P17554272887667676688.Spec : Prop :=
  ∀ n, P17554272887667676688.a n = A090390 n

end A090390

/-! ## A090390.P4404236016571725423

`Δ[A174191(n)]²`
-/

namespace A090390.P4404236016571725423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A090390.P4404236016571725423

namespace A090390

/-- `Δ[A174191(n)]²` -/
def P4404236016571725423.Spec : Prop :=
  ∀ n, P4404236016571725423.a n = A090390 n

end A090390

/-! ## A090390.P16298690714837118184

`(A293004(n)+1)²`
-/

namespace A090390.P16298690714837118184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293004 n + 1) ^ 2

end

end A090390.P16298690714837118184

namespace A090390

/-- `(A293004(n)+1)²` -/
def P16298690714837118184.Spec : Prop :=
  ∀ n, P16298690714837118184.a n = A090390 n

end A090390

/-! ## A090390.P37293500172334832

`A119016(2*n)²`
-/

namespace A090390.P37293500172334832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n) ^ 2

end

end A090390.P37293500172334832

namespace A090390

/-- `A119016(2*n)²` -/
def P37293500172334832.Spec : Prop :=
  ∀ n, P37293500172334832.a n = A090390 n

end A090390

/-! ## A090390.P15167696726860180547

`(A002203(n)/2)²`
-/

namespace A090390.P15167696726860180547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002203 n : ℚ) / 2) ^ 2

end

end A090390.P15167696726860180547

namespace A090390

/-- `(A002203(n)/2)²` -/
def P15167696726860180547.Spec : Prop :=
  ∀ n, P15167696726860180547.a n = (A090390 n : ℚ)

end A090390

/-! ## A090390.P8051011500993767375

`or(1, A265278(n))²`
-/

namespace A090390.P8051011500993767375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A265278 n) ^ 2

end

end A090390.P8051011500993767375

namespace A090390

/-- `or(1, A265278(n))²` -/
def P8051011500993767375.Spec : Prop :=
  ∀ n, P8051011500993767375.a n = A090390 n

end A090390

/-!
# A090391: a(n) = n*(n^4 + 30*n^3 + 395*n^2 + 2910*n + 11064)/120.

The programs for A090391, there is no canonical definition to state claims against.
-/

/-! ## A090391.P4799578246562726601

`A084938(A055999(n+3))`
-/

namespace A090391.P4799578246562726601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A055999 (n + 3)).toNat

end

end A090391.P4799578246562726601

/-! ## A090391.P4506456976508201531

`A084938(eq[5, A025581(n)])`
-/

namespace A090391.P4506456976508201531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090391.P4506456976508201531

/-! ## A090391.P2346778548396902189

`A084938(Δ[A026054(n+3)])`
-/

namespace A090391.P2346778548396902189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (f1 (n + 1) - f1 n).toNat

end

end A090391.P2346778548396902189

/-! ## A090391.P13356395568259679549

`A084938(A155212(n+2)+2)`
-/

namespace A090391.P13356395568259679549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A155212 (n + 2) + 2).toNat

end

end A090391.P13356395568259679549

/-! ## A090391.P831194431339113055

`A084938(A052905(n+3)-1)`
-/

namespace A090391.P831194431339113055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A052905 (n + 3) - 1).toNat

end

end A090391.P831194431339113055

/-! ## A090391.P10076362280759820787

`A084938(A000096(n+5)-5)`
-/

namespace A090391.P10076362280759820787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000096 (n + 5) - 5).toNat

end

end A090391.P10076362280759820787

/-! ## A090391.P14164371942770858762

`A084938(A000217(n+6)-6)`
-/

namespace A090391.P14164371942770858762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000217 (n + 6) - 6).toNat

end

end A090391.P14164371942770858762

/-! ## A090391.P10482238273809626694

`A084938(eq[6, A004736(n+1)])`
-/

namespace A090391.P10482238273809626694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090391.P10482238273809626694

/-! ## A090391.P16040312210627171028

`A084938(A055998(n+3)+n+3)`
-/

namespace A090391.P16040312210627171028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A055998 (n + 3) + (n + 3 : ℤ)).toNat

end

end A090391.P16040312210627171028

/-! ## A090391.P4292339444120128666

`A084938(A000124(n+5)+n-1)`
-/

namespace A090391.P4292339444120128666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A090391.P4292339444120128666

/-!
# A090392: Seventh diagonal (m=6) of triangle A084938; a(n) = A084938(n+6,n) = (n^6 + 45*n^5 + 925*n^4 + 11475*n^3 + 92314*n^2 + 413640*n)/720.

The programs for A090392, there is no canonical definition to state claims against.
-/

/-! ## A090392.P16907620254803886326

`A084938(eq[6, A025581(n)])`
-/

namespace A090392.P16907620254803886326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090392.P16907620254803886326

/-! ## A090392.P11639348127078197811

`A084938(eq[7, A193739(n)])`
-/

namespace A090392.P11639348127078197811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090392.P11639348127078197811

/-! ## A090392.P4518821653887803132

`A084938(eq[13, A099375(n)])`
-/

namespace A090392.P4518821653887803132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090392.P4518821653887803132

/-! ## A090392.P16319503017174679314

`A084938(A052905(n+4)-2)`
-/

namespace A090392.P16319503017174679314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A052905 (n + 4) - 2).toNat

end

end A090392.P16319503017174679314

/-! ## A090392.P15949226702008038606

`A084938(A046691(n+5)-3)`
-/

namespace A090392.P15949226702008038606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A046691 (n + 5) - 3).toNat

end

end A090392.P15949226702008038606

/-! ## A090392.P584075080421198233

`A084938(A000217(n+7)-7)`
-/

namespace A090392.P584075080421198233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000217 (n + 7) - 7).toNat

end

end A090392.P584075080421198233

/-! ## A090392.P5746713573525626641

`A084938(eq[7, A004736(n+1)])`
-/

namespace A090392.P5746713573525626641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090392.P5746713573525626641

/-! ## A090392.P10890725637355107379

`A084938(Δ[A026054(n+4)]-1)`
-/

namespace A090392.P10890725637355107379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (f1 (n + 1) - f1 n - 1).toNat

end

end A090392.P10890725637355107379

/-! ## A090392.P3911567027792934968

`A084938(A167614(n+4)+2*n+3)`
-/

namespace A090392.P3911567027792934968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A167614 (n + 4) + (2 * n + 3 : ℤ)).toNat

end

end A090392.P3911567027792934968

/-! ## A090392.P15843179985956075086

`A084938(2*n+A000217(n+5)+6)`
-/

namespace A090392.P15843179985956075086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 ((2 * n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A090392.P15843179985956075086

/-!
# A090393: Eighth diagonal (m=7) of triangle A084938; a(n) = A084938(n+7,n) = (n^7 + 63*n^6 + 1855*n^5 + 34125*n^4 + 438424*n^3 + 3980172*n^2 + 20946960*n)/5040.

The programs for A090393, there is no canonical definition to state claims against.
-/

/-! ## A090393.P16277049827372117499

`A084938(A155212(n+4))`
-/

namespace A090393.P16277049827372117499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A155212 (n + 4)).toNat

end

end A090393.P16277049827372117499

/-! ## A090393.P17395812983885946334

`A084938(eq[7, A025581(n)])`
-/

namespace A090393.P17395812983885946334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090393.P17395812983885946334

/-! ## A090393.P97391781043691202

`A084938(eq[15, A099375(n)])`
-/

namespace A090393.P97391781043691202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090393.P97391781043691202

/-! ## A090393.P12235777974572986532

`A084938(A000217(n+8)-8)`
-/

namespace A090393.P12235777974572986532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000217 (n + 8) - 8).toNat

end

end A090393.P12235777974572986532

/-! ## A090393.P15424803951379981481

`A084938(eq[8, A004736(n+1)])`
-/

namespace A090393.P15424803951379981481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090393.P15424803951379981481

/-!
# A090394: Ninth diagonal (m=8) of triangle A084938; a(n) = A084938(n+8,n) = (n^8 + 84*n^7 + 3346*n^6 + 84840*n^5 + 1550689*n^4 + 21632436*n^3 + 224782284*n^2 + 1377648720*n)/40320.

The programs for A090394, there is no canonical definition to state claims against.
-/

/-! ## A090394.P2688336947246277446

`A084938(eq[7, A116598(n)])`
-/

namespace A090394.P2688336947246277446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090394.P2688336947246277446

/-! ## A090394.P18333313756650980945

`A084938(eq[8, A025581(n)])`
-/

namespace A090394.P18333313756650980945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090394.P18333313756650980945

/-! ## A090394.P5974076887684190477

`A084938(eq[8, A195664(n)])`
-/

namespace A090394.P5974076887684190477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090394.P5974076887684190477

/-! ## A090394.P15534810336891058640

`A084938(eq[9, A193739(n)])`
-/

namespace A090394.P15534810336891058640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090394.P15534810336891058640

/-! ## A090394.P18270467476992806744

`A084938(eq[9, A195663(n)])`
-/

namespace A090394.P18270467476992806744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090394.P18270467476992806744

/-! ## A090394.P6843497854741779845

`A084938(eq[17, A099375(n)])`
-/

namespace A090394.P6843497854741779845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090394.P6843497854741779845

/-! ## A090394.P16485809168896160540

`A084938(eq[9, A004736(n+1)])`
-/

namespace A090394.P16485809168896160540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090394.P16485809168896160540

/-! ## A090394.P14627550670063957577

`A084938(eq[9, A243070(n+1)])`
-/

namespace A090394.P14627550670063957577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090394.P14627550670063957577

/-! ## A090394.P689460936071189259

`A084938(A000096(n+7)+n+1)`
-/

namespace A090394.P689460936071189259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A090394.P689460936071189259

/-!
# A090395: Denominator of d(n)/n, where d(n) is the number of divisors of n (A000005).

The programs for A090395, the canonical program `A090395.P17053832850949546132` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090395 has offset 1).

The definition of A090395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090395.P17053832850949546132

`(n+1)/A009191(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090395

/-- `(n+1)/A009191(n+1)` -/
def P17053832850949546132.Spec : Prop :=
  ∀ n, P17053832850949546132.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P17609987611249849194

`(n+1)/(A303781(n+1)+char[1])`
-/

namespace A090395.P17609987611249849194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A303781 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A090395.P17609987611249849194

namespace A090395

/-- `(n+1)/(A303781(n+1)+char[1])` -/
def P17609987611249849194.Spec : Prop :=
  ∀ n, P17609987611249849194.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P16375556157106901777

`(n+1)/gcd(n+1, Δ[A006218(n)])`
-/

namespace A090395.P16375556157106901777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n) : ℚ)

end

end A090395.P16375556157106901777

namespace A090395

/-- `(n+1)/gcd(n+1, Δ[A006218(n)])` -/
def P16375556157106901777.Spec : Prop :=
  ∀ n, P16375556157106901777.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P7578356255602729651

`A009230(n+1)/A000005(n+1)`
-/

namespace A090395.P7578356255602729651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A090395.P7578356255602729651

namespace A090395

/-- `A009230(n+1)/A000005(n+1)` -/
def P7578356255602729651.Spec : Prop :=
  ∀ n, P7578356255602729651.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P18109674330072024263

`lcm((n+1)², A038040(n+1))/A038040(n+1)`
-/

namespace A090395.P18109674330072024263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A038040 (n + 1)) : ℚ) / (A038040 (n + 1) : ℚ)

end

end A090395.P18109674330072024263

namespace A090395

/-- `lcm((n+1)², A038040(n+1))/A038040(n+1)` -/
def P18109674330072024263.Spec : Prop :=
  ∀ n, P18109674330072024263.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P1991503647397155903

`lcm(n+1, A000005(2*n+1-n))/A000005(n+1)`
-/

namespace A090395.P1991503647397155903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000005 (2 * n + 1 - n)) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A090395.P1991503647397155903

namespace A090395

/-- `lcm(n+1, A000005(2*n+1-n))/A000005(n+1)` -/
def P1991503647397155903.Spec : Prop :=
  ∀ n, P1991503647397155903.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P11986768486279738084

`A000027(n+1)/gcd(A000005(n+1), A000027(n+1))`
-/

namespace A090395.P11986768486279738084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A000027 (n + 1)) : ℚ)

end

end A090395.P11986768486279738084

namespace A090395

/-- `A000027(n+1)/gcd(A000005(n+1), A000027(n+1))` -/
def P11986768486279738084.Spec : Prop :=
  ∀ n, P11986768486279738084.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P3797633061781632161

`A009230(n+1)/A183063(2*(n+1))`
-/

namespace A090395.P3797633061781632161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (A183063 (2 * (n + 1)) : ℚ)

end

end A090395.P3797633061781632161

namespace A090395

/-- `A009230(n+1)/A183063(2*(n+1))` -/
def P3797633061781632161.Spec : Prop :=
  ∀ n, P3797633061781632161.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P15564878731425875626

`A008619(2*n)/gcd(A008619(2*n), A183063(2*n+2))`
-/

namespace A090395.P15564878731425875626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (Int.gcd (A008619 (2 * n)) (A183063 (2 * n + 2)) : ℚ)

end

end A090395.P15564878731425875626

namespace A090395

/-- `A008619(2*n)/gcd(A008619(2*n), A183063(2*n+2))` -/
def P15564878731425875626.Spec : Prop :=
  ∀ n, P15564878731425875626.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P997332894135557863

`A252463(2*(n+1))/gcd(A252463(2*(n+1)), A320111(2*(n+1)))`
-/

namespace A090395.P997332894135557863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252463 (2 * (n + 1)) : ℚ) / (Int.gcd (A252463 (2 * (n + 1))) (A320111 (2 * (n + 1))) : ℚ)

end

end A090395.P997332894135557863

namespace A090395

/-- `A252463(2*(n+1))/gcd(A252463(2*(n+1)), A320111(2*(n+1)))` -/
def P997332894135557863.Spec : Prop :=
  ∀ n, P997332894135557863.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P14595170635468583415

`(n+1)/A002260(A286591(n+1))`
-/

namespace A090395.P14595170635468583415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002260 (A286591 (n + 1)).toNat : ℚ)

end

end A090395.P14595170635468583415

namespace A090395

/-- `(n+1)/A002260(A286591(n+1))` -/
def P14595170635468583415.Spec : Prop :=
  ∀ n, P14595170635468583415.a n = (A090395 (n + 1) : ℚ)

end A090395

/-! ## A090395.P2359484906826349901

`A054531(∏{e}[n+1, #+1]+∑[n])`
-/

namespace A090395.P2359484906826349901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A090395.P2359484906826349901

namespace A090395

/-- `A054531(∏{e}[n+1, #+1]+∑[n])` -/
def P2359484906826349901.Spec : Prop :=
  ∀ n, P2359484906826349901.a n = A090395 (n + 1)

end A090395

/-!
# A090396: Remainder when the sum of the first n primes is divided by n.

The programs for A090396, the canonical program `A090396.P14342691533600740330` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090396 has offset 1).

The definition of A090396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090396.P10428628598971152108

`A007504(n+1)%(n+1)`
-/

namespace A090396.P10428628598971152108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n + 1)) (n + 1 : ℤ)

end

end A090396.P10428628598971152108

namespace A090396

/-- `A007504(n+1)%(n+1)` -/
def P10428628598971152108.Spec : Prop :=
  ∀ n, P10428628598971152108.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P14342691533600740330

`A060939(n+1)%(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A090396

/-- `A060939(n+1)%(n+1)` -/
def P14342691533600740330.Spec : Prop :=
  ∀ n, P14342691533600740330.a n = A090396 (n + 1)

theorem P14342691533600740330.correct : P14342691533600740330.Spec := by
  intro n
  simp only [A090396, Nat.add_sub_cancel]

end A090396

/-! ## A090396.P937341731431004444

`A101301(n+1)%(n+1)`
-/

namespace A090396.P937341731431004444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101301 (n + 1)) (n + 1 : ℤ)

end

end A090396.P937341731431004444

namespace A090396

/-- `A101301(n+1)%(n+1)` -/
def P937341731431004444.Spec : Prop :=
  ∀ n, P937341731431004444.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P11485837534102850270

`A103976(n+1)%(n+1)`
-/

namespace A090396.P11485837534102850270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103976 (n + 1)) (n + 1 : ℤ)

end

end A090396.P11485837534102850270

namespace A090396

/-- `A103976(n+1)%(n+1)` -/
def P11485837534102850270.Spec : Prop :=
  ∀ n, P11485837534102850270.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P8877111230212623040

`A108754(n+1)%(n+1)`
-/

namespace A090396.P8877111230212623040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108754 (n + 1)) (n + 1 : ℤ)

end

end A090396.P8877111230212623040

namespace A090396

/-- `A108754(n+1)%(n+1)` -/
def P8877111230212623040.Spec : Prop :=
  ∀ n, P8877111230212623040.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P11988433765091771333

`A131425(n+1)%(n+1)`
-/

namespace A090396.P11988433765091771333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131425 (n + 1)) (n + 1 : ℤ)

end

end A090396.P11988433765091771333

namespace A090396

/-- `A131425(n+1)%(n+1)` -/
def P11988433765091771333.Spec : Prop :=
  ∀ n, P11988433765091771333.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P29190249798898866

`A162867(n+1)%(n+1)`
-/

namespace A090396.P29190249798898866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162867 (n + 1)) (n + 1 : ℤ)

end

end A090396.P29190249798898866

namespace A090396

/-- `A162867(n+1)%(n+1)` -/
def P29190249798898866.Spec : Prop :=
  ∀ n, P29190249798898866.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P13303705840211247252

`∑[A000040(n+1)]%(n+1)`
-/

namespace A090396.P13303705840211247252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A090396.P13303705840211247252

namespace A090396

/-- `∑[A000040(n+1)]%(n+1)` -/
def P13303705840211247252.Spec : Prop :=
  ∀ n, P13303705840211247252.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P12578849176582018068

`∑[A040976(n+1)+2]%(n+1)`
-/

namespace A090396.P12578849176582018068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A090396.P12578849176582018068

namespace A090396

/-- `∑[A040976(n+1)+2]%(n+1)` -/
def P12578849176582018068.Spec : Prop :=
  ∀ n, P12578849176582018068.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P12436125764255954897

`∑[record[A000010(n+1)]]%(n+1)`
-/

namespace A090396.P12436125764255954897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A090396.P12436125764255954897

namespace A090396

/-- `∑[record[A000010(n+1)]]%(n+1)` -/
def P12436125764255954897.Spec : Prop :=
  ∀ n, P12436125764255954897.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P1904304592352004196

`∑[record[A006530(n+2)]]%(n+1)`
-/

namespace A090396.P1904304592352004196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A090396.P1904304592352004196

namespace A090396

/-- `∑[record[A006530(n+2)]]%(n+1)` -/
def P1904304592352004196.Spec : Prop :=
  ∀ n, P1904304592352004196.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P12493831762486886041

`∑[record[A020639(n+2)]]%(n+1)`
-/

namespace A090396.P12493831762486886041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A090396.P12493831762486886041

namespace A090396

/-- `∑[record[A020639(n+2)]]%(n+1)` -/
def P12493831762486886041.Spec : Prop :=
  ∀ n, P12493831762486886041.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P15725754598238006252

`A160793(2*(n+1))%(n+1)`
-/

namespace A090396.P15725754598238006252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160793 (2 * (n + 1))) (n + 1 : ℤ)

end

end A090396.P15725754598238006252

namespace A090396

/-- `A160793(2*(n+1))%(n+1)` -/
def P15725754598238006252.Spec : Prop :=
  ∀ n, P15725754598238006252.a n = A090396 (n + 1)

end A090396

/-! ## A090396.P17287905960536389970

`∑[record[A014963(n+2)]]%(n+1)`
-/

namespace A090396.P17287905960536389970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A090396.P17287905960536389970

namespace A090396

/-- `∑[record[A014963(n+2)]]%(n+1)` -/
def P17287905960536389970.Spec : Prop :=
  ∀ n, P17287905960536389970.a n = A090396 (n + 1)

end A090396

/-!
# A090397: Number of terms in simple continued fraction for (3/2)^n.

The programs for A090397, there is no canonical definition to state claims against.
-/

/-! ## A090397.P13237793983957702312

`A071315(A028310(n))+A057427(n)`
-/

namespace A090397.P13237793983957702312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071315 (A028310 n).toNat + A057427 n

end

end A090397.P13237793983957702312

/-! ## A090397.P5464022332086980532

`A071315(A233583(n+1))+A057427(n)`
-/

namespace A090397.P5464022332086980532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071315 (A233583 (n + 1)).toNat + A057427 n

end

end A090397.P5464022332086980532

/-! ## A090397.P1516036729340978253

`A071315(A233583(n+1))+char[A029579(n)]`
-/

namespace A090397.P1516036729340978253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071315 (A233583 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090397.P1516036729340978253

/-! ## A090397.P4004241416583741496

`A071315(A233583(n+1))+char[A324346(n)]`
-/

namespace A090397.P4004241416583741496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324346 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071315 (A233583 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090397.P4004241416583741496

/-! ## A090397.P699093439660363717

`A071315(A233583(n+1))+char[A344180(n)]`
-/

namespace A090397.P699093439660363717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071315 (A233583 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090397.P699093439660363717

/-! ## A090397.P10248438306517557047

`A071315(A233583(n+1))+char[A026741(n+1)]`
-/

namespace A090397.P10248438306517557047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071315 (A233583 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090397.P10248438306517557047

/-!
# A090398: a(n) = Floor[(2*Pi/E)*n^2].

The programs for A090398, the canonical program `A090398.P17481472632732544332` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090398 has offset 1).

The definition of A090398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*π/e*(n+1)²)` (program `A090398.P17481472632732544332`, by `A090398.P17481472632732544332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090398.P17481472632732544332

`floor(2*π/e*(n+1)²)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090398

/-- `floor(2*π/e*(n+1)²)` -/
def P17481472632732544332.Spec : Prop :=
  ∀ n, P17481472632732544332.a n = A090398 (n + 1)

theorem P17481472632732544332.correct : P17481472632732544332.Spec := by
  intro n
  simp only [A090398, Nat.add_sub_cancel]

end A090398

/-!
# A090399: Expansion of 1/(1-2x+2x^4).

The programs for A090399, the canonical program `A090399.P10212813921181685184` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090399 has offset 0).

The definition of A090399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^4))` (program `A090399.P10212813921181685184`, by `A090399.P10212813921181685184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090399.P10212813921181685184

`ogf(1/(1-2x+2x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090399

/-- `ogf(1/(1-2x+2x^4))` -/
def P10212813921181685184.Spec : Prop :=
  ∀ n, P10212813921181685184.a n = A090399 n

theorem P10212813921181685184.correct : P10212813921181685184.Spec := by
  intro n
  simp only [A090399]

end A090399

/-! ## A090399.P17541085993172707122

`2*a(n-1)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A090399.P17541085993172707122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  2 * a (n - 1) - 2 * a (n - 4)

end

end A090399.P17541085993172707122

namespace A090399

/-- `2*a(n-1)-2*a(n-4)` -/
def P17541085993172707122.Spec : Prop :=
  ∀ n, P17541085993172707122.a n = A090399 n

end A090399

/-! ## A090399.P7044337008805704778

`2*(a(n-1)-a(n-4))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A090399.P7044337008805704778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  2 * (a (n - 1) - a (n - 4))

end

end A090399.P7044337008805704778

namespace A090399

/-- `2*(a(n-1)-a(n-4))` -/
def P7044337008805704778.Spec : Prop :=
  ∀ n, P7044337008805704778.a n = A090399 n

end A090399

/-! ## A090399.P10422999637184405541

`A015128(n)-A137579(A342532(n))`
-/

namespace A090399.P10422999637184405541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A137579 (A342532 n).toNat

end

end A090399.P10422999637184405541

namespace A090399

/-- `A015128(n)-A137579(A342532(n))` -/
def P10422999637184405541.Spec : Prop :=
  ∀ n, P10422999637184405541.a n = A090399 n

end A090399

/-! ## A090399.P16958635355292913526

`and(-A020639(A148478(n)), A069251(n))`
-/

namespace A090399.P16958635355292913526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A020639 (A148478 n).toNat) (A069251 n)

end

end A090399.P16958635355292913526

namespace A090399

/-- `and(-A020639(A148478(n)), A069251(n))` -/
def P16958635355292913526.Spec : Prop :=
  ∀ n, P16958635355292913526.a n = A090399 n

end A090399

