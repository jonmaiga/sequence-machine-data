import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
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
# A096500: Let f(n) = smallest prime > n; a(n) = f(n+1) - f(n).

The programs for A096500, the canonical program `A096500.P16442061898091781287` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096500 has offset 1).

The definition of A096500 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096500.P16442061898091781287

`A151800(n+2)-A151800(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A096500

/-- `A151800(n+2)-A151800(n+1)` -/
def P16442061898091781287.Spec : Prop :=
  ∀ n, P16442061898091781287.a n = A096500 (n + 1)

theorem P16442061898091781287.correct : P16442061898091781287.Spec := by
  intro n
  simp only [A096500, Nat.add_sub_cancel]

end A096500

/-! ## A096500.P15664419558908039682

`A010051(1+n+1)*A001223(A000720(1+n+1))`
-/

namespace A096500.P15664419558908039682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (1 + (n + 1)) * A001223 (A000720 (1 + (n + 1))).toNat

end

end A096500.P15664419558908039682

namespace A096500

/-- `A010051(1+n+1)*A001223(A000720(1+n+1))` -/
def P15664419558908039682.Spec : Prop :=
  ∀ n, P15664419558908039682.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P13781294088656404482

`Δ[A151800(n+1)]`
-/

namespace A096500.P13781294088656404482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096500.P13781294088656404482

namespace A096500

/-- `Δ[A151800(n+1)]` -/
def P13781294088656404482.Spec : Prop :=
  ∀ n, P13781294088656404482.a n = A096500 (n + 1)

theorem P13781294088656404482.correct : P13781294088656404482.Spec := by
  intro n
  simp only [A096500, Nat.add_sub_cancel, A096500.P13781294088656404482.f1, A096500.P13781294088656404482.a, A096500.P16442061898091781287.a, SequenceMachineLib.memo_apply]

end A096500

/-! ## A096500.P3987803911622431846

`Δ[A000040(A000720(n+1)+1)]`
-/

namespace A096500.P3987803911622431846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096500.P3987803911622431846

namespace A096500

/-- `Δ[A000040(A000720(n+1)+1)]` -/
def P3987803911622431846.Spec : Prop :=
  ∀ n, P3987803911622431846.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P7083771535524557160

`Δ[A006093(A000720(n+1)+1)]`
-/

namespace A096500.P7083771535524557160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096500.P7083771535524557160

namespace A096500

/-- `Δ[A006093(A000720(n+1)+1)]` -/
def P7083771535524557160.Spec : Prop :=
  ∀ n, P7083771535524557160.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P11561166368974367024

`Δ[A008864(A000720(n+1)+1)]`
-/

namespace A096500.P11561166368974367024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096500.P11561166368974367024

namespace A096500

/-- `Δ[A008864(A000720(n+1)+1)]` -/
def P11561166368974367024.Spec : Prop :=
  ∀ n, P11561166368974367024.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P5030482205886086593

`Δ[A028815(A000720(n+1)+1)]`
-/

namespace A096500.P5030482205886086593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096500.P5030482205886086593

namespace A096500

/-- `Δ[A028815(A000720(n+1)+1)]` -/
def P5030482205886086593.Spec : Prop :=
  ∀ n, P5030482205886086593.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P18083157216496262599

`Δ[A040976(A000720(n+1)+1)]`
-/

namespace A096500.P18083157216496262599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A000720 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096500.P18083157216496262599

namespace A096500

/-- `Δ[A040976(A000720(n+1)+1)]` -/
def P18083157216496262599.Spec : Prop :=
  ∀ n, P18083157216496262599.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P11741596491851518461

`Δ[A008578(A000720(n+1)+2)]`
-/

namespace A096500.P11741596491851518461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096500.P11741596491851518461

namespace A096500

/-- `Δ[A008578(A000720(n+1)+2)]` -/
def P11741596491851518461.Spec : Prop :=
  ∀ n, P11741596491851518461.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P11441751826480076457

`A166597(n+2)-A072680(n+2)`
-/

namespace A096500.P11441751826480076457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (n + 2) - A072680 (n + 2)

end

end A096500.P11441751826480076457

namespace A096500

/-- `A166597(n+2)-A072680(n+2)` -/
def P11441751826480076457.Spec : Prop :=
  ∀ n, P11441751826480076457.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P16460213615261617225

`A010051(n+2)*A347100(n+2)`
-/

namespace A096500.P16460213615261617225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) * A347100 (n + 2)

end

end A096500.P16460213615261617225

namespace A096500

/-- `A010051(n+2)*A347100(n+2)` -/
def P16460213615261617225.Spec : Prop :=
  ∀ n, P16460213615261617225.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P4154522839193742153

`A010051(n+2)*A349387(n+2)`
-/

namespace A096500.P4154522839193742153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) * A349387 (n + 2)

end

end A096500.P4154522839193742153

namespace A096500

/-- `A010051(n+2)*A349387(n+2)` -/
def P4154522839193742153.Spec : Prop :=
  ∀ n, P4154522839193742153.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P14360359236513213972

`A001223(A000720(n+2))*A010051(n+2)`
-/

namespace A096500.P14360359236513213972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (n + 2)).toNat * A010051 (n + 2)

end

end A096500.P14360359236513213972

namespace A096500

/-- `A001223(A000720(n+2))*A010051(n+2)` -/
def P14360359236513213972.Spec : Prop :=
  ∀ n, P14360359236513213972.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P7314258871344030712

`A010051(n+2)*A096501(A151800(n+2))`
-/

namespace A096500.P7314258871344030712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) * A096501 (A151800 (n + 2)).toNat

end

end A096500.P7314258871344030712

namespace A096500

/-- `A010051(n+2)*A096501(A151800(n+2))` -/
def P7314258871344030712.Spec : Prop :=
  ∀ n, P7314258871344030712.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P3440063633851832538

`A010051(n+2)+A010051(n+2)*A286385(n+2)`
-/

namespace A096500.P3440063633851832538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) + A010051 (n + 2) * A286385 (n + 2)

end

end A096500.P3440063633851832538

namespace A096500

/-- `A010051(n+2)+A010051(n+2)*A286385(n+2)` -/
def P3440063633851832538.Spec : Prop :=
  ∀ n, P3440063633851832538.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P10936496625279137634

`(A000720(n+2)-A000720(n+1))*A336853(n+2)`
-/

namespace A096500.P10936496625279137634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) - A000720 (n + 1)) * A336853 (n + 2)

end

end A096500.P10936496625279137634

namespace A096500

/-- `(A000720(n+2)-A000720(n+1))*A336853(n+2)` -/
def P10936496625279137634.Spec : Prop :=
  ∀ n, P10936496625279137634.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P4232227068816640061

`(A000720(n+2)-A000720(n+1))*A347100(n+2)`
-/

namespace A096500.P4232227068816640061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) - A000720 (n + 1)) * A347100 (n + 2)

end

end A096500.P4232227068816640061

namespace A096500

/-- `(A000720(n+2)-A000720(n+1))*A347100(n+2)` -/
def P4232227068816640061.Spec : Prop :=
  ∀ n, P4232227068816640061.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P4403924284574506044

`A109578(n+1)/A001223(n+1)*A347100(n+2)`
-/

namespace A096500.P4403924284574506044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109578 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ) * (A347100 (n + 2) : ℚ)

end

end A096500.P4403924284574506044

namespace A096500

/-- `A109578(n+1)/A001223(n+1)*A347100(n+2)` -/
def P4403924284574506044.Spec : Prop :=
  ∀ n, P4403924284574506044.a n = (A096500 (n + 1) : ℚ)

end A096500

/-! ## A096500.P7221928465550739373

`2-Δ[A033558(n+1)]`
-/

namespace A096500.P7221928465550739373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A096500.P7221928465550739373

namespace A096500

/-- `2-Δ[A033558(n+1)]` -/
def P7221928465550739373.Spec : Prop :=
  ∀ n, P7221928465550739373.a n = A096500 (n + 1)

end A096500

/-! ## A096500.P7155923976279086297

`A096501(A064802(n+2))`
-/

namespace A096500.P7155923976279086297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A064802 (n + 2)).toNat

end

end A096500.P7155923976279086297

namespace A096500

/-- `A096501(A064802(n+2))` -/
def P7155923976279086297.Spec : Prop :=
  ∀ n, P7155923976279086297.a n = A096500 (n + 1)

end A096500

/-!
# A096501: Difference between primes preceding n+1 and n.

The programs for A096501, the canonical program `A096501.P6057643749581904713` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096501 has offset 1).

The definition of A096501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096501.P6057643749581904713

`Δ[∑{d}[A136548(n+1), #+2]]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A096501

/-- `Δ[∑{d}[A136548(n+1), #+2]]` -/
def P6057643749581904713.Spec : Prop :=
  ∀ n, P6057643749581904713.a n = A096501 (n + 1)

theorem P6057643749581904713.correct : P6057643749581904713.Spec := by
  intro n
  simp only [A096501, Nat.add_sub_cancel]

end A096501

/-! ## A096501.P5192153332978040002

`A306671(n+1)²*Δ[A136548(n+1)]`
-/

namespace A096501.P5192153332978040002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A096501.P5192153332978040002

namespace A096501

/-- `A306671(n+1)²*Δ[A136548(n+1)]` -/
def P5192153332978040002.Spec : Prop :=
  ∀ n, P5192153332978040002.a n = A096501 (n + 1)

end A096501

/-! ## A096501.P9807684775974218194

`∑[A106400(n+1)]²*Δ[A136548(n+1)]`
-/

namespace A096501.P9807684775974218194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (f2 (n + 1) - f2 n)

end

end A096501.P9807684775974218194

namespace A096501

/-- `∑[A106400(n+1)]²*Δ[A136548(n+1)]` -/
def P9807684775974218194.Spec : Prop :=
  ∀ n, P9807684775974218194.a n = A096501 (n + 1)

end A096501

/-! ## A096501.P10211231713442524155

`A014963(2*(n+1))²*Δ[A136548(n+1)]`
-/

namespace A096501.P10211231713442524155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1)) ^ 2 * (f1 (n + 1) - f1 n)

end

end A096501.P10211231713442524155

namespace A096501

/-- `A014963(2*(n+1))²*Δ[A136548(n+1)]` -/
def P10211231713442524155.Spec : Prop :=
  ∀ n, P10211231713442524155.a n = A096501 (n + 1)

end A096501

/-! ## A096501.P12365358360359914981

`A066043(A136548(n+2)+1)-(A136548(n+1)+1)`
-/

namespace A096501.P12365358360359914981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066043 (A136548 (n + 2) + 1).toNat - (A136548 (n + 1) + 1)

end

end A096501.P12365358360359914981

namespace A096501

/-- `A066043(A136548(n+2)+1)-(A136548(n+1)+1)` -/
def P12365358360359914981.Spec : Prop :=
  ∀ n, P12365358360359914981.a n = A096501 (n + 1)

end A096501

/-! ## A096501.P12617339878909427125

`Δ[(A136548(n+1)+2)%A001644(n+1)]`
-/

namespace A096501.P12617339878909427125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136548 (n + 1) + 2) (A001644 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096501.P12617339878909427125

namespace A096501

/-- `Δ[(A136548(n+1)+2)%A001644(n+1)]` -/
def P12617339878909427125.Spec : Prop :=
  ∀ n, P12617339878909427125.a n = A096501 (n + 1)

end A096501

/-!
# A096502: a(n) = k is the smallest exponent k such that 2^k - (2n+1) is a prime number, or 0 if no such k exists.

The programs for A096502, there is no canonical definition to state claims against.
-/

/-! ## A096502.P17136831361924068035

`ceil(log2(A096822(n+1)+n))`
-/

namespace A096502.P17136831361924068035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A096822 (n + 1) + (n : ℤ) : ℝ)⌉

end

end A096502.P17136831361924068035

/-! ## A096502.P13624435325941015911

`log2(A096822(n+1)+A005408(n))`
-/

namespace A096502.P13624435325941015911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A096822 (n + 1) + A005408 n : ℝ)

end

end A096502.P13624435325941015911

/-! ## A096502.P6672082234941577343

`floor(log2(A096822(n+1)+A008574(n)))`
-/

namespace A096502.P6672082234941577343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A096822 (n + 1) + A008574 n).toNat

end

end A096502.P6672082234941577343

/-! ## A096502.P1098068501063155247

`round(log2(A096822(n+1)+A004273(n)))`
-/

namespace A096502.P1098068501063155247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A096822 (n + 1) + A004273 n : ℝ))

end

end A096502.P1098068501063155247

/-! ## A096502.P17707485708309468911

`round(log2(A096822(n+1)+A004277(n)))`
-/

namespace A096502.P17707485708309468911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A096822 (n + 1) + A004277 n : ℝ))

end

end A096502.P17707485708309468911

/-! ## A096502.P12417454233517553772

`round(log2(A096822(n+1)+A005843(n)))`
-/

namespace A096502.P12417454233517553772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A096822 (n + 1) + A005843 n : ℝ))

end

end A096502.P12417454233517553772

/-! ## A096502.P11332265543861081579

`log2(A096822(n+1)+Δ[A000290(n)])`
-/

namespace A096502.P11332265543861081579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A096822 (n + 1) + (f1 (n + 1) - f1 n) : ℝ)

end

end A096502.P11332265543861081579

/-! ## A096502.P11775371293500507245

`log2(A096822(n+1)+Δ[A002522(n)])`
-/

namespace A096502.P11775371293500507245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A096822 (n + 1) + (f1 (n + 1) - f1 n) : ℝ)

end

end A096502.P11775371293500507245

/-! ## A096502.P13673780290492272013

`log2(A096822(n+1)+Δ[A189834(n)])`
-/

namespace A096502.P13673780290492272013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189834 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A096822 (n + 1) + (f1 (n + 1) - f1 n) : ℝ)

end

end A096502.P13673780290492272013

/-! ## A096502.P7148723558024851671

`log2(A096822(n+1)+record[A004442(n)])`
-/

namespace A096502.P7148723558024851671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A096822 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A096502.P7148723558024851671

/-! ## A096502.P9951631241186784175

`log2(A096822(n+1)+record[A099375(n)])`
-/

namespace A096502.P9951631241186784175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A096822 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A096502.P9951631241186784175

/-! ## A096502.P2566342430419644265

`log2(A096822(n+1)+Δ[A002620(2*n)])`
-/

namespace A096502.P2566342430419644265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A096822 (n + 1) + (f1 (n + 1) - f1 n) : ℝ)

end

end A096502.P2566342430419644265

/-!
# A096503: Euler-phi of these numbers is a decimal repdigit.

The programs for A096503, there is no canonical definition to state claims against.
-/

/-! ## A096503.P7970691562913461972

`eq[1, A043537(A000010(n+1))]+1`
-/

namespace A096503.P7970691562913461972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096503.P7970691562913461972

/-! ## A096503.P11156820191175885452

`record[A008619(2*n)/A043537(A000010(n+1))]`
-/

namespace A096503.P11156820191175885452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A043537 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096503.P11156820191175885452

/-! ## A096503.P9319212439014726480

`eq[A000007(n), A037904(A225530(n))]`
-/

namespace A096503.P9319212439014726480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096503.P9319212439014726480

/-! ## A096503.P15963715489038990826

`eq[A000038(n), A151949(A225530(n))]`
-/

namespace A096503.P15963715489038990826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096503.P15963715489038990826

/-! ## A096503.P15666346440068631185

`A117296(n+1)%A096518(n+1)`
-/

namespace A096503.P15666346440068631185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117296 (n + 1)) (A096518 (n + 1))

end

end A096503.P15666346440068631185

/-!
# A096504: Euler-phi applied to A096503 results in these decimal repdigits.

The programs for A096504, there is no canonical definition to state claims against.
-/

/-! ## A096504.P11057689483363911189

`A000010(A096503(n+1))`
-/

namespace A096504.P11057689483363911189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A096503 (n + 1)).toNat

end

end A096504.P11057689483363911189

/-! ## A096504.P8663145217664268046

`A055034(lcm(2, A096503(n+1)))`
-/

namespace A096504.P8663145217664268046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Int.lcm 2 (A096503 (n + 1)))

end

end A096504.P8663145217664268046

/-! ## A096504.P14009529978996273892

`filter[A000010(n+1), A202022(#)]`
-/

namespace A096504.P14009529978996273892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A096504.P14009529978996273892

/-! ## A096504.P18432383931136916101

`filter[A372677(n+1), A202022(#)]`
-/

namespace A096504.P18432383931136916101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A096504.P18432383931136916101

/-! ## A096504.P6734998320612809555

`filter[A372681(n+1), A202022(#)]`
-/

namespace A096504.P6734998320612809555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A096504.P6734998320612809555

/-!
# A096505: Primes of the form 1 + repdigit. Primes whose totient is a repdigit.

The programs for A096505, there is no canonical definition to state claims against.
-/

/-! ## A096505.P1584596225148330654

`A028988(n+2)+1`
-/

namespace A096505.P1584596225148330654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028988 (n + 2) + 1

end

end A096505.P1584596225148330654

/-! ## A096505.P15621767090775212510

`∩[A096503(n+1), A320256(n+1)]`
-/

namespace A096505.P15621767090775212510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096505.P15621767090775212510

/-! ## A096505.P9910648787225531069

`∩[A096503(n+1), A062353(n+2)]`
-/

namespace A096505.P9910648787225531069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096505.P9910648787225531069

/-! ## A096505.P392589004249492050

`∩[A320256(n+1), A378774(n+1)]`
-/

namespace A096505.P392589004249492050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096505.P392589004249492050

/-!
# A096506: Numbers n for which 2*R_n + 1 is a prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A096506, there is no canonical definition to state claims against.
-/

/-! ## A096506.P7063027407654478478

`A056656(n+1)+1`
-/

namespace A096506.P7063027407654478478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056656 (n + 1) + 1

end

end A096506.P7063027407654478478

/-! ## A096506.P17754231079650079594

`lt[A069841(n+1), 2]+1`
-/

namespace A096506.P17754231079650079594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069841 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096506.P17754231079650079594

/-! ## A096506.P16862779653428980310

`eq[A001876(n), A069841(n+1)]+1`
-/

namespace A096506.P16862779653428980310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A096506.P16862779653428980310

/-! ## A096506.P11000733354918939214

`eq[A011655(n), A069841(n+1)]+1`
-/

namespace A096506.P11000733354918939214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A096506.P11000733354918939214

/-! ## A096506.P17238912173653936469

`eq[A014578(n), A069841(n+1)]+1`
-/

namespace A096506.P17238912173653936469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A096506.P17238912173653936469

/-!
# A096507: Numbers k such that 6*R_k + 1 is a prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A096507, there is no canonical definition to state claims against.
-/

/-! ## A096507.P15981248414269696353

`A056657(n+1)+1`
-/

namespace A096507.P15981248414269696353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056657 (n + 1) + 1

end

end A096507.P15981248414269696353

/-! ## A096507.P7947121344019625243

`eq[1, A105971(n)]+1`
-/

namespace A096507.P7947121344019625243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096507.P7947121344019625243

/-! ## A096507.P12376006306032303406

`lt[A105971(A028310(n)), 2]+1`
-/

namespace A096507.P12376006306032303406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105971 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096507.P12376006306032303406

/-! ## A096507.P15985695693647836680

`A028242(2*eq[1, A105971(n)])`
-/

namespace A096507.P15985695693647836680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096507.P15985695693647836680

/-! ## A096507.P7065754932412429655

`A158416(2*eq[1, A105971(n)])`
-/

namespace A096507.P7065754932412429655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096507.P7065754932412429655

/-!
# A096508: Numbers k for which 8*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A096508, there is no canonical definition to state claims against.
-/

/-! ## A096508.P8190547846860139837

`A056663(n+1)+1`
-/

namespace A096508.P8190547846860139837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056663 (n + 1) + 1

end

end A096508.P8190547846860139837

/-! ## A096508.P5037121311529448666

`A020725(A056663(n+1))`
-/

namespace A096508.P5037121311529448666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056663 (n + 1)).toNat

end

end A096508.P5037121311529448666

/-!
# A096513: Numbers k such that A096509(k) = 2; i.e., the number of prime powers (including primes) in the neighborhood of k with radius ceiling(log(k)) is 2.

The programs for A096513, there is no canonical definition to state claims against.
-/

/-! ## A096513.P15582410691062970939

`eq[2, A096509(n+1)]+1`
-/

namespace A096513.P15582410691062970939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096513.P15582410691062970939

/-! ## A096513.P3218121201378696812

`eq[2, A096509(A028310(n))]`
-/

namespace A096513.P3218121201378696812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096513.P3218121201378696812

/-! ## A096513.P7007525221884490117

`A020725(eq[2, A096509(n+1)])`
-/

namespace A096513.P7007525221884490117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096513.P7007525221884490117

/-! ## A096513.P1787772861829148861

`eq[2, A096509(A065033(2*n))]`
-/

namespace A096513.P1787772861829148861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096513.P1787772861829148861

/-! ## A096513.P4534448430595298319

`eq[2, A096509(A123108(2*n))]`
-/

namespace A096513.P4534448430595298319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096513.P4534448430595298319

/-!
# A096514: Solutions to A096509[x]=3; number of prime-powers [including primes] in the neighborhood of x with Ceiling[Log[x]] radius equals 3.

The programs for A096514, there is no canonical definition to state claims against.
-/

/-! ## A096514.P1953544187410376978

`eq[3, A096509(n+1)]+1`
-/

namespace A096514.P1953544187410376978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096514.P1953544187410376978

/-! ## A096514.P3979752227476534715

`eq[3, A096509(A028310(n))]`
-/

namespace A096514.P3979752227476534715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096514.P3979752227476534715

/-! ## A096514.P17168181913879678522

`A020725(eq[3, A096509(n+1)])`
-/

namespace A096514.P17168181913879678522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096514.P17168181913879678522

/-! ## A096514.P9381447297814147982

`A065475(eq[3, A096509(n+1)])`
-/

namespace A096514.P9381447297814147982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096514.P9381447297814147982

/-! ## A096514.P6680689555390509842

`eq[3, A096509(A233583(n+1))]`
-/

namespace A096514.P6680689555390509842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096514.P6680689555390509842

/-!
# A096515: Solutions to A096509[x]=4; number of prime-powers [including primes] in the neighborhood of x with Ceiling[Log[x]] radius equals 4.

The programs for A096515, there is no canonical definition to state claims against.
-/

/-! ## A096515.P9116566105993181681

`eq[4, A096509(n+1)]+1`
-/

namespace A096515.P9116566105993181681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096515.P9116566105993181681

/-! ## A096515.P2040544622499615572

`eq[4, A096509(A028310(n))]`
-/

namespace A096515.P2040544622499615572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096515.P2040544622499615572

/-! ## A096515.P14795001294464530053

`A020725(eq[4, A096509(n+1)])`
-/

namespace A096515.P14795001294464530053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096515.P14795001294464530053

/-! ## A096515.P10314543694179527990

`A065475(eq[4, A096509(n+1)])`
-/

namespace A096515.P10314543694179527990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096515.P10314543694179527990

/-! ## A096515.P2127977291706479028

`eq[4, A096509(A233583(n+1))]`
-/

namespace A096515.P2127977291706479028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096509 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096515.P2127977291706479028

/-!
# A096520: Number of primes in the neighborhood of center=2^n and radius=Ceiling[Log[2^n]].

The programs for A096520, there is no canonical definition to state claims against.
-/

/-! ## A096520.P3228011267517473932

`A036584(A065727(n+1)+A006886(n+2))`
-/

namespace A096520.P3228011267517473932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 (A065727 (n + 1) + A006886 (n + 2)).toNat

end

end A096520.P3228011267517473932

/-! ## A096520.P6057738906518023478

`A105083(A119937(n+2)-A205002(n+1))`
-/

namespace A096520.P6057738906518023478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 (A119937 (n + 2) - A205002 (n + 1)).toNat

end

end A096520.P6057738906518023478

/-! ## A096520.P4423826967895719727

`A001222(or(A145954(n+1), A252293(n+1)))`
-/

namespace A096520.P4423826967895719727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A145954 (n + 1)) (A252293 (n + 1))).toNat

end

end A096520.P4423826967895719727

/-! ## A096520.P11785916690762589243

`A010882(or(A222747(n+1), A240951(n+1)))`
-/

namespace A096520.P11785916690762589243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (Int.lor (A222747 (n + 1)) (A240951 (n + 1))).toNat

end

end A096520.P11785916690762589243

/-!
# A096522: Solutions to A096520[x]=0, that is in neighborhood with c=2^x center and r=Ceiling[Log[2^x]] no prime occurs.

The programs for A096522, there is no canonical definition to state claims against.
-/

/-! ## A096522.P13674346625502004432

`lt[A000124(n), A059959(n)²]`
-/

namespace A096522.P13674346625502004432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096522.P13674346625502004432

/-! ## A096522.P9357902935172887991

`lt[A152950(n+1), A059959(n)²]`
-/

namespace A096522.P9357902935172887991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096522.P9357902935172887991

/-! ## A096522.P11082670567599398583

`lt[A179865(n+1), A059959(n)²]`
-/

namespace A096522.P11082670567599398583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096522.P11082670567599398583

/-! ## A096522.P1654144918419287116

`lt[A256885(n+1), A059959(n)²]`
-/

namespace A096522.P1654144918419287116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096522.P1654144918419287116

/-! ## A096522.P9977484529459406289

`lt[A152950(A028310(n)), A059959(n)²-1]`
-/

namespace A096522.P9977484529459406289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n ^ 2 - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096522.P9977484529459406289

/-!
# A096526: Initial values for f(x)=phi(sigma(x)) such that iteration of f ends in a cycle of length 4.

The programs for A096526, there is no canonical definition to state claims against.
-/

/-! ## A096526.P12562444223061476296

`eq[4, A095955(A028310(n))]`
-/

namespace A096526.P12562444223061476296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096526.P12562444223061476296

/-! ## A096526.P3348857601500944183

`A020725(eq[4, A095955(n+1)])`
-/

namespace A096526.P3348857601500944183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096526.P3348857601500944183

/-! ## A096526.P16345486196057057041

`A065475(eq[4, A095955(n+1)])`
-/

namespace A096526.P16345486196057057041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096526.P16345486196057057041

/-! ## A096526.P1123471831878743381

`A020725(eq[8, A082991(n+1)])`
-/

namespace A096526.P1123471831878743381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096526.P1123471831878743381

/-! ## A096526.P12504677893536140781

`eq[4, A095955(A233583(n+1))]`
-/

namespace A096526.P12504677893536140781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096526.P12504677893536140781

/-!
# A096527: Number of permutations of divisors of n such that all sums of triple adjacent divisors are primes.

The programs for A096527, there is no canonical definition to state claims against.
-/

/-! ## A096527.P4717272528908491359

`2*A096528(n+1)`
-/

namespace A096527.P4717272528908491359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096528 (n + 1)

end

end A096527.P4717272528908491359

/-! ## A096527.P367573136064827935

`6*A096528(Δ[n²]-n)/3`
-/

namespace A096527.P367573136064827935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A096528 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 3)

end

end A096527.P367573136064827935

/-! ## A096527.P14378587906579366467

`A005843(A096528(n+1))`
-/

namespace A096527.P14378587906579366467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A096528 (n + 1)).toNat

end

end A096527.P14378587906579366467

/-! ## A096527.P3115600261278980308

`A004525(4*A096528(Δ[n²]-n))`
-/

namespace A096527.P3115600261278980308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (4 * A096528 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A096527.P3115600261278980308

/-! ## A096527.P8475575820772773418

`A004526(4*A096528(Δ[n²]-n))`
-/

namespace A096527.P8475575820772773418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (4 * A096528 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A096527.P8475575820772773418

/-! ## A096527.P16157324754199771700

`A096528(C(n+1, n))+A096528(n+1)`
-/

namespace A096527.P16157324754199771700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096528 (Nat.choose (n + 1) n) + A096528 (n + 1)

end

end A096527.P16157324754199771700

/-! ## A096527.P4783301615513364581

`A096528(n+1)+A096528(abs(xor(n, -1)))`
-/

namespace A096527.P4783301615513364581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096528 (n + 1) + A096528 |Int.xor (n : ℤ) (-1)|.toNat

end

end A096527.P4783301615513364581

/-! ## A096527.P2647340014845243709

`A096528(n+1)+A096528(Δ[n²]-n)`
-/

namespace A096527.P2647340014845243709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096528 (n + 1) + A096528 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A096527.P2647340014845243709

/-! ## A096527.P11636726058295562086

`lcm(A096528(n+1)+A096528(n+1), A000038(n)!)`
-/

namespace A096527.P11636726058295562086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096528 (n + 1) + A096528 (n + 1)) (Nat.factorial (A000038 n).toNat : ℤ)

end

end A096527.P11636726058295562086

/-! ## A096527.P6532193418750367970

`A096528(n+1)+A096528(n+1)%∑[A000096(n+2)]`
-/

namespace A096527.P6532193418750367970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096528 (n + 1) + Int.tmod (A096528 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096527.P6532193418750367970

/-!
# A096528: A096527(n) / 2.

The programs for A096528, there is no canonical definition to state claims against.
-/

/-! ## A096528.P6204308003702308707

`A096527(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096528.P6204308003702308707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096527 (n + 1) : ℚ) / 2

end

end A096528.P6204308003702308707

/-! ## A096528.P13116697834285770412

`A001281(A096527(n+1))`
-/

namespace A096528.P13116697834285770412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A096527 (n + 1)).toNat

end

end A096528.P13116697834285770412

/-! ## A096528.P8070882071327806839

`A004524(A096527(n+1)+1)`
-/

namespace A096528.P8070882071327806839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A096527 (n + 1) + 1).toNat

end

end A096528.P8070882071327806839

/-! ## A096528.P2187053626027833286

`A004526(A096527(n+1)+1)`
-/

namespace A096528.P2187053626027833286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A096527 (n + 1) + 1).toNat

end

end A096528.P2187053626027833286

/-! ## A096528.P74588026256734382

`A028242(A096527(n+1)+1)`
-/

namespace A096528.P74588026256734382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A096527 (n + 1) + 1).toNat

end

end A096528.P74588026256734382

/-! ## A096528.P5411860592753756364

`A123108(A096527(n+1)+1)`
-/

namespace A096528.P5411860592753756364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A096527 (n + 1) + 1).toNat

end

end A096528.P5411860592753756364

/-! ## A096528.P11839346898436105757

`A002265(2*A096527(n+1))`
-/

namespace A096528.P11839346898436105757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A096527 (n + 1)).toNat

end

end A096528.P11839346898436105757

/-! ## A096528.P8164474181255945251

`A004525(and(-2, A096527(n+1)))`
-/

namespace A096528.P8164474181255945251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.land (-2) (A096527 (n + 1))).toNat

end

end A096528.P8164474181255945251

/-! ## A096528.P9911330203135241554

`A026741(and(-2, A096527(n+1)))`
-/

namespace A096528.P9911330203135241554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.land (-2) (A096527 (n + 1))).toNat

end

end A096528.P9911330203135241554

/-! ## A096528.P11860692501855168859

`A026741(A096527(n+1)+2)-1`
-/

namespace A096528.P11860692501855168859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A096527 (n + 1) + 2).toNat - 1

end

end A096528.P11860692501855168859

/-!
# A096529: Numbers whose divisors can be permuted so that all sums of triple adjacent divisors are primes.

The programs for A096529, there is no canonical definition to state claims against.
-/

/-! ## A096529.P14294841707460662892

`lt[0, A096528(n+1)]+1`
-/

namespace A096529.P14294841707460662892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A096529.P14294841707460662892

/-! ## A096529.P1835975550875564491

`lt[0, A096528(A028310(n))]`
-/

namespace A096529.P1835975550875564491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096528 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096529.P1835975550875564491

/-! ## A096529.P1207618781765900347

`A020725(lt[0, A096528(n+1)])`
-/

namespace A096529.P1207618781765900347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A096529.P1207618781765900347

/-! ## A096529.P13255211105379251357

`lt[0, A096528(A233583(n+1))]`
-/

namespace A096529.P13255211105379251357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096528 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096529.P13255211105379251357

/-! ## A096529.P9183051097243657791

`lt[0, A096527(n+1)]+1`
-/

namespace A096529.P9183051097243657791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A096529.P9183051097243657791

/-!
# A096530: Numbers whose divisors cannot be permuted so that all sums of triple adjacent divisors are primes.

The programs for A096530, there is no canonical definition to state claims against.
-/

/-! ## A096530.P8240143735918331944

`comp[A096529(n+1)-1]+1`
-/

namespace A096530.P8240143735918331944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096529 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A096530.P8240143735918331944

/-! ## A096530.P4748005604218134972

`comp[A233583(A096529(n+1))]+1`
-/

namespace A096530.P4748005604218134972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A096529 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A096530.P4748005604218134972

/-! ## A096530.P10996157732861401557

`eq[0, A096528(n+1)]+1`
-/

namespace A096530.P10996157732861401557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096530.P10996157732861401557

/-! ## A096530.P15609842994398774063

`lt[n*A096528(round(acot(n)+n)), n]`
-/

namespace A096530.P15609842994398774063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A096528 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A096530.P15609842994398774063

/-! ## A096530.P4877192762852633838

`record[gcd(n+1, A096528(C(n+1, n)))]`
-/

namespace A096530.P4877192762852633838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A096528 (Nat.choose (n + 1) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096530.P4877192762852633838

/-!
# A096531: Number of different squares created when a square sheet of paper is folded n times, the first time by one of the diagonal of the square and after by the median of the triangle.

The programs for A096531, the canonical program `A096531.P2964781092352097587` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096531 has offset 1).

The definition of A096531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096531.P2964781092352097587

`ogf((4x^2+5x^3-31x^4-33x^5+48x^6+60x^7-32x^9)/(1-x-14x^2+14x^3+56x^4-56x^5-64x^6+64x^7))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096531

/-- `ogf((4x^2+5x^3-31x^4-33x^5+48x^6+60x^7-32x^9)/(1-x-14x^2+14x^3+56x^4-56x^5-64x^6+64x^7))` -/
def P2964781092352097587.Spec : Prop :=
  ∀ n, P2964781092352097587.a n = A096531 (n + 1)

theorem P2964781092352097587.correct : P2964781092352097587.Spec := by
  intro n
  simp only [A096531, Nat.add_sub_cancel]

end A096531

/-! ## A096531.P248945949561908317

`A066454(n+2)-A077267(A127821(n+1))`
-/

namespace A096531.P248945949561908317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066454 (n + 2) - A077267 (A127821 (n + 1)).toNat

end

end A096531.P248945949561908317

namespace A096531

/-- `A066454(n+2)-A077267(A127821(n+1))` -/
def P248945949561908317.Spec : Prop :=
  ∀ n, P248945949561908317.a n = A096531 (n + 1)

end A096531

/-!
# A096532: Number of composite numbers not greater than the n-th composite number that do not divide any number not greater than the n-th composite number.

The programs for A096532, there is no canonical definition to state claims against.
-/

/-! ## A096532.P5515814838601996311

`1-A096533(n+1)+n`
-/

namespace A096532.P5515814838601996311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096533 (n + 1) + (n : ℤ)

end

end A096532.P5515814838601996311

/-! ## A096532.P930187575872632097

`n-(A096533(Δ[n²]-n)-1)`
-/

namespace A096532.P930187575872632097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A096533 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1)

end

end A096532.P930187575872632097

/-! ## A096532.P4671261156076421792

`abs(A096533(ϕ²-(ϕ-n))-1-n)`
-/

namespace A096532.P4671261156076421792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096533 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - 1 - (n : ℤ)|

end

end A096532.P4671261156076421792

/-! ## A096532.P13782273351723176007

`∑[A135528(A213514(n+1))]`
-/

namespace A096532.P13782273351723176007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A213514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096532.P13782273351723176007

/-! ## A096532.P10422494945070815010

`∑[A266719(A161003(n+1))]`
-/

namespace A096532.P10422494945070815010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (A161003 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096532.P10422494945070815010

/-! ## A096532.P12099170661786196307

`A024000(A096533(n+1))+n`
-/

namespace A096532.P12099170661786196307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A096533 (n + 1)).toNat + (n : ℤ)

end

end A096532.P12099170661786196307

/-! ## A096532.P8635049524107130817

`∑[A266246(A161003(n+1)²)]`
-/

namespace A096532.P8635049524107130817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266246 (A161003 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096532.P8635049524107130817

/-! ## A096532.P4196357172660855266

`∑[A266246(A161003(n+1)+2)]`
-/

namespace A096532.P4196357172660855266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266246 (A161003 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096532.P4196357172660855266

/-! ## A096532.P1609324746266294625

`∑[1-A266669(A213514(n+1)²)]`
-/

namespace A096532.P1609324746266294625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266669 (A213514 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096532.P1609324746266294625

/-! ## A096532.P8930141461482337133

`abs(A096533(n+1)+A001478(n+1))`
-/

namespace A096532.P8930141461482337133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096533 (n + 1) + A001478 (n + 1)|

end

end A096532.P8930141461482337133

/-!
# A096533: Number of composite numbers not greater than the n-th composite number that divide at least one other number not greater than the n-th composite number.

The programs for A096533, there is no canonical definition to state claims against.
-/

/-! ## A096533.P10878390076037068884

`∑[A267043(A161003(n+1))]`
-/

namespace A096533.P10878390076037068884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 (A161003 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096533.P10878390076037068884

/-! ## A096533.P3522754828296200633

`∑[A266669(A213514(n+1)²)]`
-/

namespace A096533.P3522754828296200633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266669 (A213514 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096533.P3522754828296200633

/-! ## A096533.P1602272766333339832

`A065855(floor(A002808(n+1)/2))`
-/

namespace A096533.P1602272766333339832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 ⌊(A002808 (n + 1) : ℚ) / 2⌋.toNat

end

end A096533.P1602272766333339832

/-! ## A096533.P11638884396521337892

`A065855(floor(lt[0, A107393(n)]/2))`
-/

namespace A096533.P11638884396521337892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2⌋.toNat

end

end A096533.P11638884396521337892

/-! ## A096533.P16966185085471389493

`∑[1-A266246(A161003(n+1)²)]`
-/

namespace A096533.P16966185085471389493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266246 (A161003 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096533.P16966185085471389493

/-! ## A096533.P14901229045955525685

`∑[1-A266246(A161003(n+1)+2)]`
-/

namespace A096533.P14901229045955525685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266246 (A161003 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096533.P14901229045955525685

/-! ## A096533.P10075417781826804831

`∑[1-A135528(A213514(C(n+1, n)))]`
-/

namespace A096533.P10075417781826804831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A135528 (A213514 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096533.P10075417781826804831

/-! ## A096533.P11113004751124051114

`A065855(∑[char[A065855(2*n+1)]]+1)`
-/

namespace A096533.P11113004751124051114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A096533.P11113004751124051114

/-! ## A096533.P1818883073461864868

`A065855(∑[and(1, A002808(n+1)+1)]+1)`
-/

namespace A096533.P1818883073461864868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002808 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A096533.P1818883073461864868

/-! ## A096533.P9529079369821331698

`A065855(A004526(A002808(n+1)))`
-/

namespace A096533.P9529079369821331698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A004526 (A002808 (n + 1)).toNat).toNat

end

end A096533.P9529079369821331698

/-!
# A096534: a(1) = 0; a(2) = 1; a(n) = (a(n-1) + a(n-2)) mod n.

The programs for A096534, the canonical program `A096534.P15806187201365784891` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096534 has offset 1).

The definition of A096534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+a(n-2))%(n+1)` (program `A096534.P15806187201365784891`, by `A096534.P15806187201365784891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096534.P15806187201365784891

`(a(n-1)+a(n-2))%(n+1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096534

/-- `(a(n-1)+a(n-2))%(n+1)` -/
def P15806187201365784891.Spec : Prop :=
  ∀ n, (P15806187201365784891.a n : ℤ) = A096534 (n + 1)

theorem P15806187201365784891.correct : P15806187201365784891.Spec := by
  intro n
  simp only [A096534, Nat.add_sub_cancel]

end A096534

/-! ## A096534.P16316403292606514785

`(a(n-1)-floor(-a(n-2)))%xor(n, -1)` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A096534.P16316403292606514785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Int.tmod (a (n - 1) - (-a (n - 2))) (Int.xor (n : ℤ) (-1))

end

end A096534.P16316403292606514785

namespace A096534

/-- `(a(n-1)-floor(-a(n-2)))%xor(n, -1)` -/
def P16316403292606514785.Spec : Prop :=
  ∀ n, P16316403292606514785.a n = A096534 (n + 1)

end A096534

/-! ## A096534.P4679306018396124681

`A072987(n+1)%(n+1)`
-/

namespace A096534.P4679306018396124681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072987 (n + 1)) (n + 1 : ℤ)

end

end A096534.P4679306018396124681

namespace A096534

/-- `A072987(n+1)%(n+1)` -/
def P4679306018396124681.Spec : Prop :=
  ∀ n, P4679306018396124681.a n = A096534 (n + 1)

end A096534

/-! ## A096534.P15021999482020881818

`(a(n-1)-round(-a(n-2)))%A131738(n)` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A096534.P15021999482020881818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (a (n - 1) - (-a (n - 2))) (A131738 n)

end

end A096534.P15021999482020881818

namespace A096534

/-- `(a(n-1)-round(-a(n-2)))%A131738(n)` -/
def P15021999482020881818.Spec : Prop :=
  ∀ n, P15021999482020881818.a n = A096534 (n + 1)

end A096534

/-! ## A096534.P17177070289954201370

`(a(n-1)-(char[1]-a(n-2)))%A028242(2*n)` with `a(0)=0, a(1)=1`
-/

namespace A096534.P17177070289954201370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))) (A028242 (2 * n))

end

end A096534.P17177070289954201370

namespace A096534

/-- `(a(n-1)-(char[1]-a(n-2)))%A028242(2*n)` -/
def P17177070289954201370.Spec : Prop :=
  ∀ n, P17177070289954201370.a n = A096534 (n + 1)

end A096534

/-! ## A096534.P8529597979322161611

`A002262(C(n+1, 2)+a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A096534.P8529597979322161611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A002262 ((Nat.choose (n + 1) 2 : ℤ) + (a (n - 1) + a (n - 2))).toNat

end

end A096534.P8529597979322161611

namespace A096534

/-- `A002262(C(n+1, 2)+a(n-1)+a(n-2))` -/
def P8529597979322161611.Spec : Prop :=
  ∀ n, P8529597979322161611.a n = A096534 (n + 1)

end A096534

/-! ## A096534.P13906567101343439904

`A002262(A072987(n+1)+∑[n])`
-/

namespace A096534.P13906567101343439904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072987 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A096534.P13906567101343439904

namespace A096534

/-- `A002262(A072987(n+1)+∑[n])` -/
def P13906567101343439904.Spec : Prop :=
  ∀ n, P13906567101343439904.a n = A096534 (n + 1)

end A096534

/-!
# A096535: a(0) = a(1) = 1; a(n) = (a(n-1) + a(n-2)) mod n.

The programs for A096535, the canonical program `A096535.P6716721430726769045` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096535 has offset 0).

The definition of A096535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+a(n-2))%n` (program `A096535.P6716721430726769045`, by `A096535.P6716721430726769045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096535.P6716721430726769045

`(a(n-1)+a(n-2))%n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096535

/-- `(a(n-1)+a(n-2))%n` -/
def P6716721430726769045.Spec : Prop :=
  ∀ n, (P6716721430726769045.a n : ℤ) = A096535 n

theorem P6716721430726769045.correct : P6716721430726769045.Spec := by
  intro n
  simp only [A096535]

end A096535

/-! ## A096535.P7881966603288093706

`(a(n-1)-floor(-a(n-2)))%n` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A096535.P7881966603288093706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a (n - 1) - (-a (n - 2))) (n : ℤ)

end

end A096535.P7881966603288093706

namespace A096535

/-- `(a(n-1)-floor(-a(n-2)))%n` -/
def P7881966603288093706.Spec : Prop :=
  ∀ n, P7881966603288093706.a n = A096535 n

end A096535

/-! ## A096535.P13923044311815532237

`(a(n-1)-ceil(-a(n-2)))%n` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A096535.P13923044311815532237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a (n - 1) - (-a (n - 2))) (n : ℤ)

end

end A096535.P13923044311815532237

namespace A096535

/-- `(a(n-1)-ceil(-a(n-2)))%n` -/
def P13923044311815532237.Spec : Prop :=
  ∀ n, P13923044311815532237.a n = A096535 n

end A096535

/-! ## A096535.P12900649023189480675

`(a(n-1)-round(-a(n-2)))%n` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A096535.P12900649023189480675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a (n - 1) - (-a (n - 2))) (n : ℤ)

end

end A096535.P12900649023189480675

namespace A096535

/-- `(a(n-1)-round(-a(n-2)))%n` -/
def P12900649023189480675.Spec : Prop :=
  ∀ n, P12900649023189480675.a n = A096535 n

end A096535

/-! ## A096535.P2762170053574246552

`(a(n-1)-(char[1]-a(n-2)))%n` with `a(0)=1, a(1)=1`
-/

namespace A096535.P2762170053574246552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))) (n : ℤ)

end

end A096535.P2762170053574246552

namespace A096535

/-- `(a(n-1)-(char[1]-a(n-2)))%n` -/
def P2762170053574246552.Spec : Prop :=
  ∀ n, P2762170053574246552.a n = A096535 n

end A096535

/-! ## A096535.P8132804301087419742

`(a(n-1)--a(n-2)%n)%n` with `a(0)=1, a(1)=1`
-/

namespace A096535.P8132804301087419742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a (n - 1) - Int.tmod (-a (n - 2)) (n : ℤ)) (n : ℤ)

end

end A096535.P8132804301087419742

namespace A096535

/-- `(a(n-1)--a(n-2)%n)%n` -/
def P8132804301087419742.Spec : Prop :=
  ∀ n, P8132804301087419742.a n = A096535 n

end A096535

/-! ## A096535.P17516190154993437974

`(a(n-1)-(n-a(n-2)-n²))%n` with `a(0)=1, a(1)=1`
-/

namespace A096535.P17516190154993437974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a (n - 1) - ((n : ℤ) - a (n - 2) - (n ^ 2 : ℤ))) (n : ℤ)

end

end A096535.P17516190154993437974

namespace A096535

/-- `(a(n-1)-(n-a(n-2)-n²))%n` -/
def P17516190154993437974.Spec : Prop :=
  ∀ n, P17516190154993437974.a n = A096535 n

end A096535

/-! ## A096535.P16527252242407564319

`(1-(1-a(n-1)-a(n-2))%n)%n` with `a(0)=1, a(1)=1`
-/

namespace A096535.P16527252242407564319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (1 - Int.tmod (1 - a (n - 1) - a (n - 2)) (n : ℤ)) (n : ℤ)

end

end A096535.P16527252242407564319

namespace A096535

/-- `(1-(1-a(n-1)-a(n-2))%n)%n` -/
def P16527252242407564319.Spec : Prop :=
  ∀ n, P16527252242407564319.a n = A096535 n

end A096535

/-!
# A096537: E.g.f.: A(x) = exp(x*exp(2*x*exp(3*x*exp(...exp(n*x*exp(...))...)))), for n>=1.

The programs for A096537, there is no canonical definition to state claims against.
-/

/-! ## A096537.P1556851224092466837

`A099188(n*(n*a(n-1)-1))+1` with `a(0)=1`
-/

namespace A096537.P1556851224092466837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099188 ((n : ℤ) * ((n : ℤ) * a (n - 1) - 1)).toNat + 1

end

end A096537.P1556851224092466837

/-!
# A096538: E.g.f.: A(x) = exp(x*exp(2*x*exp(2^2*x*exp(...exp(2^n*x*exp(...))...)))), for n>=0.

The programs for A096538, there is no canonical definition to state claims against.
-/

/-! ## A096538.P283385803704754534

`A273330(A328593(n!))`
-/

namespace A096538.P283385803704754534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273330 (A328593 (Nat.factorial n)).toNat

end

end A096538.P283385803704754534

/-!
# A096539: Delete first column (index 0) and all rows having nonprime index of triangle T(p,k) defined in A034807 (coefficients of Lucas polynomials). Sequence gives resulting sub-triangle read by rows.

The programs for A096539, there is no canonical definition to state claims against.
-/

/-! ## A096539.P7110208957171391465

`p?[A027434(n+1)]*A096540(n+1)`
-/

namespace A096539.P7110208957171391465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A096540 (n + 1)

end

end A096539.P7110208957171391465

/-! ## A096539.P3275141923621678912

`p?[A094192(n+1)]*A096540(n+1)`
-/

namespace A096539.P3275141923621678912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A096540 (n + 1)

end

end A096539.P3275141923621678912

/-! ## A096539.P2527127624344633408

`A049419(A000110(n))*A115732(n+1)`
-/

namespace A096539.P2527127624344633408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A000110 n).toNat * A115732 (n + 1)

end

end A096539.P2527127624344633408

/-!
# A096540: Quotients T(p,k)/p, where T(p,k) is the sub-triangle defined in A096539 of the triangle of coefficients of Lucas polynomials (cf. A034807).

The programs for A096540, there is no canonical definition to state claims against.
-/

/-! ## A096540.P11861358968281646455

`A096539(n+1)/p?[A027434(n+1)]`
-/

namespace A096540.P11861358968281646455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096539 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A096540.P11861358968281646455

/-! ## A096540.P5304194404749875513

`A096539(n+1)/p?[A094192(n+1)]`
-/

namespace A096540.P5304194404749875513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096539 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A096540.P5304194404749875513

/-! ## A096540.P13606484549066404183

`A302776(A096539(n+1))`
-/

namespace A096540.P13606484549066404183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302776 (A096539 (n + 1)).toNat

end

end A096540.P13606484549066404183

/-! ## A096540.P16222672960011148331

`A051119(A096539(n+1))`
-/

namespace A096540.P16222672960011148331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A096539 (n + 1)).toNat

end

end A096540.P16222672960011148331

/-! ## A096540.P12099955945666089789

`A052126(A096539(n+1)%A084661(n+1))`
-/

namespace A096540.P12099955945666089789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.tmod (A096539 (n + 1)) (A084661 (n + 1))).toNat

end

end A096540.P12099955945666089789

/-!
# A096541: Number of parts unequal to 1 in all partitions of the integer n. Also the difference between the labeled and the unlabeled case of one-element transitions from the partitions of n to the partitions of n+1.

The programs for A096541, there is no canonical definition to state claims against.
-/

/-! ## A096541.P15929187650965000777

`A093694(n)-A000070(n)`
-/

namespace A096541.P15929187650965000777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000070 n

end

end A096541.P15929187650965000777

/-! ## A096541.P12340839479736183543

`∑{#}[n-1, (A000005(#+1)-1)*A000041(n-(#+1))]`
-/

namespace A096541.P12340839479736183543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (A000005 (k + 1) - 1) * A000041 (n - (k + 1))

end

end A096541.P12340839479736183543

/-! ## A096541.P4085467805280013811

`A138135(n)+a(n-1)` with `a(0)=0`
-/

namespace A096541.P4085467805280013811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A138135 n + a (n - 1)

end

end A096541.P4085467805280013811

/-! ## A096541.P15384464086634144965

`∑[A138135(A028310(n))]`
-/

namespace A096541.P15384464086634144965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096541.P15384464086634144965

/-! ## A096541.P9740789038995000867

`A198381(n)+A000065(n)`
-/

namespace A096541.P9740789038995000867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198381 n + A000065 n

end

end A096541.P9740789038995000867

/-! ## A096541.P6625041076584655768

`A000041(n)+A198381(n)-1`
-/

namespace A096541.P6625041076584655768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A198381 n - 1)

end

end A096541.P6625041076584655768

/-! ## A096541.P14983910953939494077

`∑[A138135(n+1)]-A138135(n+1)`
-/

namespace A096541.P14983910953939494077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A138135 (n + 1)

end

end A096541.P14983910953939494077

/-! ## A096541.P5293283049149364056

`A000041(n)+A194452(n)-A024786(n+2)`
-/

namespace A096541.P5293283049149364056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A194452 n - A024786 (n + 2))

end

end A096541.P5293283049149364056

/-! ## A096541.P13614295493435462495

`A093694(n)-∑[A000041(n)]`
-/

namespace A096541.P13614295493435462495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096541.P13614295493435462495

/-! ## A096541.P1299558092825430573

`A093694(n)-∑[∑[A002865(n)]]`
-/

namespace A096541.P1299558092825430573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096541.P1299558092825430573

/-! ## A096541.P11453121210548384719

`A093694(n)-∑[A139582(n)/2]`
-/

namespace A096541.P11453121210548384719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093694 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096541.P11453121210548384719

/-! ## A096541.P12309068977786744452

`A000041(n)+A006128(n)-A000070(n)`
-/

namespace A096541.P12309068977786744452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A006128 n - A000070 n)

end

end A096541.P12309068977786744452

/-! ## A096541.P16790277760343820535

`A093694(n)-∑[A047967(n)+A000009(n)]`
-/

namespace A096541.P16790277760343820535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096541.P16790277760343820535

/-! ## A096541.P1579459241552165948

`A093694(n)+∑[A006128(n)-A093694(n)]`
-/

namespace A096541.P1579459241552165948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A093694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096541.P1579459241552165948

/-! ## A096541.P3988268345175039877

`A093694(n)-∑[A295341(n)+A000726(n)]`
-/

namespace A096541.P3988268345175039877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096541.P3988268345175039877

/-! ## A096541.P11889158016266902802

`A002865(n)+A006128(n)-A120452(n+1)`
-/

namespace A096541.P11889158016266902802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (A006128 n - A120452 (n + 1))

end

end A096541.P11889158016266902802

/-! ## A096541.P7629798718394329805

`A000065(n+1)+A093694(n)-A026905(n+1)`
-/

namespace A096541.P7629798718394329805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (A093694 n - A026905 (n + 1))

end

end A096541.P7629798718394329805

/-! ## A096541.P16706873099059681275

`A006128(n+1)-(A182699(n+1)+A120452(n+2))`
-/

namespace A096541.P16706873099059681275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A182699 (n + 1) + A120452 (n + 2))

end

end A096541.P16706873099059681275

/-! ## A096541.P9918612647560418365

`A093694(n)+A093695(n)-A135348(n+1)`
-/

namespace A096541.P9918612647560418365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + (A093695 n - A135348 (n + 1))

end

end A096541.P9918612647560418365

/-! ## A096541.P4144522984620609318

`A284870(n)-A339011(n)`
-/

namespace A096541.P4144522984620609318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284870 n - A339011 n

end

end A096541.P4144522984620609318

/-!
# A096543: Formed from a secondary diagonal of triangle A096542 where a(n) = A096542(n,n-2)/3.

The programs for A096543, there is no canonical definition to state claims against.
-/

/-! ## A096543.P14207325861474379412

`∑[A025439(Δ[A151214(n)])]`
-/

namespace A096543.P14207325861474379412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096543.P14207325861474379412

/-!
# A096544: Formed from a secondary diagonal of triangle A096542 where a(n) = A096542(n,n-3)/4.

The programs for A096544, there is no canonical definition to state claims against.
-/

/-! ## A096544.P14417150400417048667

`Δ[A057363(A347003(n)²)]`
-/

namespace A096544.P14417150400417048667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A347003 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096544.P14417150400417048667

/-! ## A096544.P15294297662905722231

`Δ[A057363(A354390(n)²)]`
-/

namespace A096544.P15294297662905722231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A354390 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096544.P15294297662905722231

/-!
# A096547: Primes p such that primorial(p)/2 - 2 is prime.

The programs for A096547, there is no canonical definition to state claims against.
-/

/-! ## A096547.P13325084026398796329

`A000040(A067026(n+1))`
-/

namespace A096547.P13325084026398796329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067026 (n + 1)).toNat

end

end A096547.P13325084026398796329

/-! ## A096547.P15090619903413638044

`A008578(A067026(n+1)+1)`
-/

namespace A096547.P15090619903413638044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A067026 (n + 1) + 1).toNat

end

end A096547.P15090619903413638044

/-! ## A096547.P3456503055161061026

`A182986(A067026(n+1)+1)`
-/

namespace A096547.P3456503055161061026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A067026 (n + 1) + 1).toNat

end

end A096547.P3456503055161061026

/-! ## A096547.P13465380949977989103

`A046022(A067026(n+1)+2)`
-/

namespace A096547.P13465380949977989103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A067026 (n + 1) + 2).toNat

end

end A096547.P13465380949977989103

/-! ## A096547.P16477369840645768052

`A065091(A067026(n+1)-1)`
-/

namespace A096547.P16477369840645768052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A067026 (n + 1) - 1).toNat

end

end A096547.P16477369840645768052

/-!
# A096548: Difference between the smallest 10^n-digit prime and 10^(10^n-1).

The programs for A096548, there is no canonical definition to state claims against.
-/

/-! ## A096548.P15141614417892131759

`A033873(A062397(n)-2)`
-/

namespace A096548.P15141614417892131759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 (A062397 n - 2).toNat

end

end A096548.P15141614417892131759

/-!
# A096567: First digit to appear n times in the base-10 expansion of Pi.

The programs for A096567, there is no canonical definition to state claims against.
-/

/-! ## A096567.P9496312429596534565

`A000796(A361131(n+1)-1)`
-/

namespace A096567.P9496312429596534565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A361131 (n + 1) - 1).toNat + 1)

end

end A096567.P9496312429596534565

/-! ## A096567.P16727966312962229458

`A123152(A361131(n+1))-A010684(2*n)`
-/

namespace A096567.P16727966312962229458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (A361131 (n + 1)).toNat - A010684 (2 * n)

end

end A096567.P16727966312962229458

/-! ## A096567.P14366388730741054430

`A166931(n+1)%A123152(A361131(n+1))`
-/

namespace A096567.P14366388730741054430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A123152 (A361131 (n + 1)).toNat)

end

end A096567.P14366388730741054430

/-! ## A096567.P2731787679176461979

`A123152(A361131(n+1))+A033999(2*n+3)`
-/

namespace A096567.P2731787679176461979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (A361131 (n + 1)).toNat + A033999 (2 * n + 3)

end

end A096567.P2731787679176461979

/-! ## A096567.P6034619354186365138

`A176028(A361131(n+1))`
-/

namespace A096567.P6034619354186365138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176028 (A361131 (n + 1)).toNat

end

end A096567.P6034619354186365138

/-! ## A096567.P5157662234805749380

`floor(A096566(n+1)/A050278(n+1))`
-/

namespace A096567.P5157662234805749380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096566 (n + 1) : ℚ) / (A050278 (n + 1) : ℚ)⌋

end

end A096567.P5157662234805749380

/-!
# A096568: By rows, array T(n,k)=number of compositions of n with first part k and no equal adjacent parts.

The programs for A096568, there is no canonical definition to state claims against.
-/

/-! ## A096568.P7942362360855005725

`and(A165621(n), A165670(2*n+7))`
-/

namespace A096568.P7942362360855005725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165621 n) (A165670 (2 * n + 7))

end

end A096568.P7942362360855005725

/-! ## A096568.P5067481318325687341

`A302110(A008862(n))+A059881(n+1)`
-/

namespace A096568.P5067481318325687341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A008862 n).toNat + A059881 (n + 1)

end

end A096568.P5067481318325687341

/-! ## A096568.P14648759136919994713

`or(A059841(A036378(n)), A059881(n+1))`
-/

namespace A096568.P14648759136919994713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A036378 n).toNat) (A059881 (n + 1))

end

end A096568.P14648759136919994713

/-! ## A096568.P2474245516705076242

`A086075(A383034(n+1))+A059881(n+1)`
-/

namespace A096568.P2474245516705076242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086075 (A383034 (n + 1)).toNat + A059881 (n + 1)

end

end A096568.P2474245516705076242

/-!
# A096569: Number of compositions of n with first part 1 and no equal adjacent parts; this is column 1 of the array in A096568.

The programs for A096569, there is no canonical definition to state claims against.
-/

/-! ## A096569.P2415985934665195513

`A096568(∑[n]+1)`
-/

namespace A096569.P2415985934665195513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096568 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A096569.P2415985934665195513

/-! ## A096569.P14050492940384200985

`A003242(n)-a(n-1)` with `a(0)=1`
-/

namespace A096569.P14050492940384200985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003242 n - a (n - 1)

end

end A096569.P14050492940384200985

/-! ## A096569.P2932984882308552990

`A214249(2*n²)-a(n-1)` with `a(0)=1`
-/

namespace A096569.P2932984882308552990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214249 (2 * n ^ 2) - a (n - 1)

end

end A096569.P2932984882308552990

/-! ## A096569.P12221224533061787651

`A214268(2*n²)-a(n-1)` with `a(0)=1`
-/

namespace A096569.P12221224533061787651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214268 (2 * n ^ 2) - a (n - 1)

end

end A096569.P12221224533061787651

/-! ## A096569.P8899320474985623174

`A373949(∑[n]+n)-a(n-1)` with `a(0)=1`
-/

namespace A096569.P8899320474985623174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A373949 (∑ j ∈ Finset.range (n + 1), f1 j + n) - a (n - 1)

end

end A096569.P8899320474985623174

/-!
# A096570: Number of compositions of n with first part 2 and no equal adjacent parts; this is column 2 of the array in A096568.

The programs for A096570, there is no canonical definition to state claims against.
-/

/-! ## A096570.P2779414007869915233

`A096568(∑[n]+2)`
-/

namespace A096570.P2779414007869915233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096568 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A096570.P2779414007869915233

/-! ## A096570.P14856540248899887188

`A003242(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A096570.P14856540248899887188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A003242 (n - 1) - a (n - 2)

end

end A096570.P14856540248899887188

/-! ## A096570.P11411264784136219629

`A096568(A133263(n))%(2^n)`
-/

namespace A096570.P11411264784136219629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096568 (A133263 n).toNat) (2 ^ n : ℤ)

end

end A096570.P11411264784136219629

/-! ## A096570.P15606321230646186359

`A096568(A133263(n))-A000007(n)`
-/

namespace A096570.P15606321230646186359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096568 (A133263 n).toNat - A000007 n

end

end A096570.P15606321230646186359

/-! ## A096570.P15258850348534228349

`A096568(A133263(n))-A151622(n)`
-/

namespace A096570.P15258850348534228349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096568 (A133263 n).toNat - A151622 n

end

end A096570.P15258850348534228349

/-!
# A096571: Number of compositions of n with first part 3 and no equal adjacent parts; this is column 3 of the array in A096568.

The programs for A096571, there is no canonical definition to state claims against.
-/

/-! ## A096571.P10079215740067807536

`A096568(∑[n]+3)%n!`
-/

namespace A096571.P10079215740067807536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096568 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (Nat.factorial n : ℤ)

end

end A096571.P10079215740067807536

/-! ## A096571.P15592562087084857205

`A096568(∑[n]+3)*A157928(n)`
-/

namespace A096571.P15592562087084857205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096568 (∑ j ∈ Finset.range (n + 1), f1 j + 3) * A157928 n

end

end A096571.P15592562087084857205

/-! ## A096571.P11100667895668515289

`A096568(∑[n]+3)-char[A000541(n)]`
-/

namespace A096571.P11100667895668515289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096568 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A096571.P11100667895668515289

/-! ## A096571.P9152961672863741384

`A096568(∑[n]+3)-char[A001014(n)]`
-/

namespace A096571.P9152961672863741384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096568 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A096571.P9152961672863741384

/-!
# A096572: Number of compositions of n with first part 4 and no equal adjacent parts; this is column 4 of the array in A096568.

The programs for A096572, there is no canonical definition to state claims against.
-/

/-! ## A096572.P9449406844819758579

`A096568(∑[n]+4)%∑[2^n-2*n]`
-/

namespace A096572.P9449406844819758579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096568 (∑ j ∈ Finset.range (n + 1), f1 j + 4)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A096572.P9449406844819758579

/-! ## A096572.P15986472650488515035

`A000027(A096568(∑[n]+4))%A000108(n)`
-/

namespace A096572.P15986472650488515035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A096568 (∑ j ∈ Finset.range (n + 1), f1 j + 4)).toNat) (A000108 n)

end

end A096572.P15986472650488515035

/-! ## A096572.P2951641117630977278

`A096568(∑[n]+4)*A252743(A252745(n))`
-/

namespace A096572.P2951641117630977278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096568 (∑ j ∈ Finset.range (n + 1), f1 j + 4) * A252743 (A252745 n).toNat

end

end A096572.P2951641117630977278

/-!
# A096573: Number of fixed points of mirroring operation on solid partitions.

The programs for A096573, there is no canonical definition to state claims against.
-/

/-! ## A096573.P443456970769959261

`A000293(n+1)-2*A096574(n+1)`
-/

namespace A096573.P443456970769959261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000293 (n + 1) - 2 * A096574 (n + 1)

end

end A096573.P443456970769959261

/-! ## A096573.P1931641759457800061

`A006777(n+1)-A108611(A052952(n))`
-/

namespace A096573.P1931641759457800061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006777 (n + 1) - A108611 (A052952 n).toNat

end

end A096573.P1931641759457800061

/-! ## A096573.P7377654421131787379

`A123578(A292549(n)-A086479(n+1))`
-/

namespace A096573.P7377654421131787379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A292549 n - A086479 (n + 1)).toNat

end

end A096573.P7377654421131787379

/-! ## A096573.P17288493160238014598

`A069623(A196690(n+1)+A067147(3*n))`
-/

namespace A096573.P17288493160238014598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A196690 (n + 1) + A067147 (3 * n)).toNat

end

end A096573.P17288493160238014598

/-!
# A096574: Number of asymmetric solid partitions under mirroring operation.

The programs for A096574, there is no canonical definition to state claims against.
-/

/-! ## A096574.P6951642348344842768

`(A000293(n+1)-A096573(n+1))/2`
-/

namespace A096574.P6951642348344842768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000293 (n + 1) - A096573 (n + 1) : ℚ) / 2

end

end A096574.P6951642348344842768

/-! ## A096574.P4276562574948656688

`A336516(n)-A031286(A018315(n+1))`
-/

namespace A096574.P4276562574948656688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336516 n - A031286 (A018315 (n + 1)).toNat

end

end A096574.P4276562574948656688

/-! ## A096574.P14944490793949218426

`∑[A232463(A094616(n)+1)]`
-/

namespace A096574.P14944490793949218426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232463 (A094616 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096574.P14944490793949218426

/-!
# A096575: Number of fixed points of solid partitions under rotation operation.

The programs for A096575, there is no canonical definition to state claims against.
-/

/-! ## A096575.P9716143499315930733

`A002722(n+1)%(n+3)²`
-/

namespace A096575.P9716143499315930733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002722 (n + 1)) ((n + 3) ^ 2 : ℤ)

end

end A096575.P9716143499315930733

/-! ## A096575.P10691961106397241681

`A002722(A348553(n))`
-/

namespace A096575.P10691961106397241681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002722 (A348553 n).toNat

end

end A096575.P10691961106397241681

/-! ## A096575.P14611880264089710447

`A002722(A387051(n))`
-/

namespace A096575.P14611880264089710447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002722 (A387051 n).toNat

end

end A096575.P14611880264089710447

/-! ## A096575.P11599950429608738152

`A002722(A387108(n))`
-/

namespace A096575.P11599950429608738152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002722 (A387108 n).toNat

end

end A096575.P11599950429608738152

/-! ## A096575.P10409813849631624695

`A002722(A387109(n))`
-/

namespace A096575.P10409813849631624695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002722 (A387109 n).toNat

end

end A096575.P10409813849631624695

/-!
# A096576: Number of solid partitions asymmetric under rotation operation.

The programs for A096576, there is no canonical definition to state claims against.
-/

/-! ## A096576.P1415822986113679251

`(A000293(n+1)-A096575(n+1))/3`
-/

namespace A096576.P1415822986113679251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000293 (n + 1) - A096575 (n + 1) : ℚ) / 3

end

end A096576.P1415822986113679251

/-! ## A096576.P6181615606198046140

`∑[A280951(∑[3*n-2]+3+n)]-A119842(n+1)`
-/

namespace A096576.P6181615606198046140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f2 j + 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119842 (n + 1)

end

end A096576.P6181615606198046140

/-! ## A096576.P18406244588673503882

`A080019(n+2)-A013595(A154638(n))`
-/

namespace A096576.P18406244588673503882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080019 (n + 2) - A013595 (A154638 n).toNat

end

end A096576.P18406244588673503882

/-!
# A096577: Number of fixed points of solid partitions under 'time-lapse' operation.

The programs for A096577, there is no canonical definition to state claims against.
-/

/-! ## A096577.P12542904143327706544

`A103921(A296122(n))-A290090(n+1)`
-/

namespace A096577.P12542904143327706544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A296122 n).toNat - A290090 (n + 1)

end

end A096577.P12542904143327706544

/-! ## A096577.P3065624637827366993

`A368857(C(A158380(n), A368811(n+7)))`
-/

namespace A096577.P3065624637827366993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368857 (Nat.choose (A158380 n).toNat (A368811 (n + 7)).toNat)

end

end A096577.P3065624637827366993

/-! ## A096577.P874817415540974335

`A355741(A058142(2*n+3)*A235872(n+1))`
-/

namespace A096577.P874817415540974335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A058142 (2 * n + 3) * A235872 (n + 1)).toNat

end

end A096577.P874817415540974335

/-! ## A096577.P11171408209751615726

`and(A256232(2*(n+2)), A320015(A233447(n+1)))`
-/

namespace A096577.P11171408209751615726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256232 (2 * (n + 2))) (A320015 (A233447 (n + 1)).toNat)

end

end A096577.P11171408209751615726

/-! ## A096577.P636281695250014106

`A163901(3*n+1)%((-1)^n+2)`
-/

namespace A096577.P636281695250014106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163901 (3 * n + 1)) ((-1) ^ n + 2)

end

end A096577.P636281695250014106

/-!
# A096579: Number of partitions of an n-set with exactly one even block.

The programs for A096579, there is no canonical definition to state claims against.
-/

/-! ## A096579.P14315233360250080246

`Δ[A003724(n+1)]`
-/

namespace A096579.P14315233360250080246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096579.P14315233360250080246

/-! ## A096579.P11335473031515451989

`record[Δ[A003724(floor(n/2))]]`
-/

namespace A096579.P11335473031515451989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096579.P11335473031515451989

/-! ## A096579.P4173405425837124079

`Δ[ratio[A003724(n)]*A003724(n)]`
-/

namespace A096579.P4173405425837124079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A003724 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096579.P4173405425837124079

/-! ## A096579.P11217372172422761531

`A003724(n+2)-A003724(n+1)`
-/

namespace A096579.P11217372172422761531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 (n + 2) - A003724 (n + 1)

end

end A096579.P11217372172422761531

/-! ## A096579.P3114004240154244638

`Δ[A124322(A002620(n+2))]`
-/

namespace A096579.P3114004240154244638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A002620 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096579.P3114004240154244638

/-! ## A096579.P8466996498005894915

`Δ[A009224(n+2)/(n+2)]`
-/

namespace A096579.P8466996498005894915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009224 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096579.P8466996498005894915

/-!
# A096581: Number of solid partitions non-symmetric under L^2 (L= 'time-lapse' symmetry operation) on solid partitions.

The programs for A096581, there is no canonical definition to state claims against.
-/

/-! ## A096581.P12334389188048491215

`A096580(n)+2*a(n)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=12, a(4)=28, a(5)=68, a(6)=150`
-/

namespace A096581.P12334389188048491215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 12, 28, 68, 150] fun n a =>
  A096580 n + 2 * a n

end

end A096581.P12334389188048491215

/-! ## A096581.P5931552763645286304

`A257839(A022813(n+1))`
-/

namespace A096581.P5931552763645286304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A022813 (n + 1)).toNat

end

end A096581.P5931552763645286304

/-! ## A096581.P14065260285424494078

`2*A071626(A359914(n))`
-/

namespace A096581.P14065260285424494078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071626 (A359914 n).toNat

end

end A096581.P14065260285424494078

/-!
# A096582: From the "100 Green Bottles" song.

The programs for A096582, the canonical program `A096582.P1355751272739503633` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096582 has offset 1).

The definition of A096582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096582.P1355751272739503633

`100-n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096582

/-- `100-n` -/
def P1355751272739503633.Spec : Prop :=
  ∀ n, P1355751272739503633.a n = A096582 (n + 1)

theorem P1355751272739503633.correct : P1355751272739503633.Spec := by
  intro n
  simp only [A096582, Nat.add_sub_cancel]

end A096582

/-!
# A096583: Symmetric square array T(n,k)=T(k,n), read by antidiagonals, such that the n-th diagonal equals the convolution of the n-th row with the antidiagonal sums, with T(0,n)=1, for n>=0.

The programs for A096583, there is no canonical definition to state claims against.
-/

/-! ## A096583.P17018314843392328013

`A167489(A005187(A099594(n)²))`
-/

namespace A096583.P17018314843392328013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A005187 (A099594 n ^ 2).toNat).toNat

end

end A096583.P17018314843392328013

/-! ## A096583.P4137766105692579097

`A109042(n)+A000120(A059328(n))`
-/

namespace A096583.P4137766105692579097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109042 n + A000120 (A059328 n).toNat

end

end A096583.P4137766105692579097

/-! ## A096583.P6330960947440510265

`A331852(A099594(n))+A004247(n)`
-/

namespace A096583.P6330960947440510265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A099594 n).toNat + A004247 n

end

end A096583.P6330960947440510265

/-! ## A096583.P9505436813727162611

`A331852(A328887(n))+A004247(n)`
-/

namespace A096583.P9505436813727162611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A328887 n).toNat + A004247 n

end

end A096583.P9505436813727162611

/-! ## A096583.P6373450978104155923

`∑{d}[A328887(n), A020639(A157477(#))]`
-/

namespace A096583.P6373450978104155923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020639 (A157477 d).toNat

end

end A096583.P6373450978104155923

/-!
# A096585: Main diagonal of the square array A096583, in which the n-th diagonal equals the convolution of the n-th row with the antidiagonal sums (A096584).

The programs for A096585, there is no canonical definition to state claims against.
-/

/-! ## A096585.P13369257234187107775

`∑[A096584(n)]`
-/

namespace A096585.P13369257234187107775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096585.P13369257234187107775

/-! ## A096585.P1318725461972405627

`∑[∑[A209279(A307940(n+2))]]`
-/

namespace A096585.P1318725461972405627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A307940 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096585.P1318725461972405627

/-!
# A096586: Number of one-element transitions among all integer partitions of the integers from m=0 to m=n in the unlabeled case.

The programs for A096586, there is no canonical definition to state claims against.
-/

/-! ## A096586.P11443073004704863420

`2*(A029859(n)-A000070(n))`
-/

namespace A096586.P11443073004704863420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029859 n - A000070 n)

end

end A096586.P11443073004704863420

/-! ## A096586.P13217205896238403642

`A093695(n)+∑[A093695(n+1)]`
-/

namespace A096586.P13217205896238403642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096586.P13217205896238403642

/-! ## A096586.P17637860137489375651

`∑[A135348(n+1)+A058884(n)]`
-/

namespace A096586.P17637860137489375651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135348 (n + 1) + A058884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096586.P17637860137489375651

/-! ## A096586.P16663725172370252337

`∑[2*(A000097(n)-A000041(n))]`
-/

namespace A096586.P16663725172370252337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000097 n - A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096586.P16663725172370252337

/-! ## A096586.P11787384349218501127

`2*(∑[A000097(n)]-A000070(n))`
-/

namespace A096586.P11787384349218501127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A000070 n)

end

end A096586.P11787384349218501127

/-! ## A096586.P15909283789923777174

`2*(∑[A000291(n)]-A082775(n+2))`
-/

namespace A096586.P15909283789923777174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A082775 (n + 2))

end

end A096586.P15909283789923777174

/-!
# A096587: Triangle read by rows: T(n,k)=number of Catalan knight paths in Quadrant I from (0,0) to (n,k), for 0 <= k <= 2*n, n >= 0. A Catalan knight moves (1 right and 2 up) or (1 right and 2 down) or (2 right and 1 up) or (2 right and 1 down).

The programs for A096587, there is no canonical definition to state claims against.
-/

/-! ## A096587.P12866960758570014651

`A054845(∑[A164168(A323529(n))])`
-/

namespace A096587.P12866960758570014651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164168 (A323529 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096587.P12866960758570014651

/-! ## A096587.P2074378416216020142

`A055640(A096608(n)^A007318(n))`
-/

namespace A096587.P2074378416216020142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A096608 n : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A096587.P2074378416216020142

/-! ## A096587.P17935259476970478795

`A178489(A096608(n)^A007318(n))`
-/

namespace A096587.P17935259476970478795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (SequenceMachineLib.roundAway ((A096608 n : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A096587.P17935259476970478795

/-! ## A096587.P5259277172271630952

`A055640(A096608(n)^A172263(n))`
-/

namespace A096587.P5259277172271630952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A096608 n : ℚ) ^ (A172263 n : ℤ))).toNat

end

end A096587.P5259277172271630952

/-! ## A096587.P7798469678796656045

`A055640(A096608(n)^A323529(n))`
-/

namespace A096587.P7798469678796656045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A096608 n : ℚ) ^ (A323529 n : ℤ))).toNat

end

end A096587.P7798469678796656045

/-!
# A096588: a(n)=number of Catalan knight paths in Quadrant I from (0,0) to points on the vertical line x=n. A Catalan knight moves (2 right and 1 up) or (1 right and 1 down).

The programs for A096588, there is no canonical definition to state claims against.
-/

/-! ## A096588.P4135300868399062785

`A203302(A092684(n))`
-/

namespace A096588.P4135300868399062785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203302 (A092684 n).toNat

end

end A096588.P4135300868399062785

/-! ## A096588.P14383928521417362692

`A203302(A113409(n))`
-/

namespace A096588.P14383928521417362692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203302 (A113409 n).toNat

end

end A096588.P14383928521417362692

/-! ## A096588.P10538920275573060738

`A203302(A302017(n))`
-/

namespace A096588.P10538920275573060738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203302 (A302017 n).toNat

end

end A096588.P10538920275573060738

/-! ## A096588.P15374367661551290407

`A203302(A001629(n)+1)`
-/

namespace A096588.P15374367661551290407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203302 (A001629 n + 1).toNat

end

end A096588.P15374367661551290407

/-!
# A096589: Symmetric square array T(n,k)=T(k,n), read by antidiagonals, such that T(n,k) equals the dot product of the k-th antidiagonal with the initial terms of the (n-k)-th row when n>=k, with T(n,0)=1.

The programs for A096589, there is no canonical definition to state claims against.
-/

/-! ## A096589.P2185970744413652680

`A123610(n)%A030545(A050186(n))`
-/

namespace A096589.P2185970744413652680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123610 n) (A030545 (A050186 n).toNat)

end

end A096589.P2185970744413652680

/-! ## A096589.P10239831316234691741

`A346018(A362242(n))`
-/

namespace A096589.P10239831316234691741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346018 (A362242 n).toNat

end

end A096589.P10239831316234691741

/-! ## A096589.P4590509477524199856

`A328447(A167040(n))%13`
-/

namespace A096589.P4590509477524199856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328447 (A167040 n).toNat) 13

end

end A096589.P4590509477524199856

/-! ## A096589.P11128337226301242289

`A176427(n)%A277116(A176428(n))`
-/

namespace A096589.P11128337226301242289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176427 n) (A277116 (A176428 n).toNat)

end

end A096589.P11128337226301242289

/-! ## A096589.P6139446874700836736

`A076622(A034802(n))`
-/

namespace A096589.P6139446874700836736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076622 (A034802 n).toNat

end

end A096589.P6139446874700836736

/-!
# A096591: Triangle T, read by rows, such that the matrix square shifts T one place diagonally left and upward, with T(n,0)=T(n,n)=1 for n>=0.

The programs for A096591, there is no canonical definition to state claims against.
-/

/-! ## A096591.P5883223749633375635

`A282711(A369227(n+1))`
-/

namespace A096591.P5883223749633375635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282711 (A369227 (n + 1)).toNat

end

end A096591.P5883223749633375635

/-! ## A096591.P10096492943876480891

`A217096(A096669(3*(n+1)))+A096669(n+1)`
-/

namespace A096591.P10096492943876480891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A096669 (3 * (n + 1))).toNat + A096669 (n + 1)

end

end A096591.P10096492943876480891

/-! ## A096591.P17405463094908077007

`A358123(A096669(n+1)%A345911(2*n+3))`
-/

namespace A096591.P17405463094908077007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358123 (Int.tmod (A096669 (n + 1)) (A345911 (2 * n + 3))).toNat

end

end A096591.P17405463094908077007

/-! ## A096591.P6087770195198888307

`A117707(A090182(n)+1)`
-/

namespace A096591.P6087770195198888307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A090182 n + 1).toNat

end

end A096591.P6087770195198888307

/-! ## A096591.P13871894653889970970

`A151982(A384134(n+1))`
-/

namespace A096591.P13871894653889970970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151982 (A384134 (n + 1)).toNat

end

end A096591.P13871894653889970970

/-!
# A096592: Row sums of triangle A096591, which shifts one place diagonally left and upward under the matrix square operation.

The programs for A096592, there is no canonical definition to state claims against.
-/

/-! ## A096592.P9223933161252081681

`A096591(∑[n+2]+2)`
-/

namespace A096592.P9223933161252081681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096591 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A096592.P9223933161252081681

/-! ## A096592.P7531752987928214281

`record[A096591(A106247(n))]`
-/

namespace A096592.P7531752987928214281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096591 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096592.P7531752987928214281

/-! ## A096592.P16716886504821996848

`record[A096591(∑[A057979(n)])]`
-/

namespace A096592.P16716886504821996848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096591 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096592.P16716886504821996848

/-! ## A096592.P10148445822681441872

`record[A096591(A056534(n+1))]`
-/

namespace A096592.P10148445822681441872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096591 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096592.P10148445822681441872

/-! ## A096592.P6616049924673801429

`record[A096591(A056536(n+1))]`
-/

namespace A096592.P6616049924673801429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096591 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096592.P6616049924673801429

/-!
# A096594: Numbers n such that 100^n + 10^n - 1 is prime.

The programs for A096594, there is no canonical definition to state claims against.
-/

/-! ## A096594.P14178363252325681501

`record[floor(A227950(n+1)/A227951(n+1))]`
-/

namespace A096594.P14178363252325681501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227950 (n + 1) : ℚ) / (A227951 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096594.P14178363252325681501

/-! ## A096594.P18408080514356414374

`∑[A274888(∑[A136220(n)])]`
-/

namespace A096594.P18408080514356414374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274888 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096594.P18408080514356414374

/-!
# A096596: a(n) = A060178(n) - A060015(n).

The programs for A096596, there is no canonical definition to state claims against.
-/

/-! ## A096596.P354418076314902868

`A060178(n+1)-A060015(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096596.P354418076314902868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060178 (n + 1) - A060015 (n + 1)

end

end A096596.P354418076314902868

/-! ## A096596.P1293097479946268872

`A060014(n+1)-2*A060015(n+1)`
-/

namespace A096596.P1293097479946268872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060014 (n + 1) - 2 * A060015 (n + 1)

end

end A096596.P1293097479946268872

/-! ## A096596.P10129074972355132192

`A060178(n+1)+A060178(n+1)-A060014(n+1)`
-/

namespace A096596.P10129074972355132192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060178 (n + 1) + (A060178 (n + 1) - A060014 (n + 1))

end

end A096596.P10129074972355132192

/-!
# A096597: Triangle read by rows: T[n,m] = number of plane partitions of n whose 3-dimensional Ferrers plot just fits inside an m X m X m box, i.e., with Max[parts, rows, columns] = m.

The programs for A096597, there is no canonical definition to state claims against.
-/

/-! ## A096597.P16766041910475765092

`A001222(A048495(n+1))*A097805(n)`
-/

namespace A096597.P16766041910475765092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048495 (n + 1)).toNat * A097805 n

end

end A096597.P16766041910475765092

/-! ## A096597.P2596637520030072125

`A000120(A005126(n)*A206735(n))`
-/

namespace A096597.P2596637520030072125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005126 n * A206735 n).toNat

end

end A096597.P2596637520030072125

/-! ## A096597.P10473831817500026830

`A097805(n)*A256911(A155192(n))`
-/

namespace A096597.P10473831817500026830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A256911 (A155192 n).toNat

end

end A096597.P10473831817500026830

/-! ## A096597.P10263733744834016751

`A213888(n)*A335465(A000695(n))`
-/

namespace A096597.P10263733744834016751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213888 n * A335465 (A000695 n).toNat

end

end A096597.P10263733744834016751

/-! ## A096597.P10798119805954981622

`A091935(A365044(n))*A097805(n)`
-/

namespace A096597.P10798119805954981622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091935 (A365044 n).toNat * A097805 n

end

end A096597.P10798119805954981622

/-!
# A096598: Squares such that some permutation of digits is also a square (in decimal representation).

The programs for A096598, there is no canonical definition to state claims against.
-/

/-! ## A096598.P16375647380004395544

`record[A008833(A109881(n+1))]`
-/

namespace A096598.P16375647380004395544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A109881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096598.P16375647380004395544

/-! ## A096598.P3129131095270345010

`filter[A109881(n+1), A145377(#)]`
-/

namespace A096598.P3129131095270345010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145377 (f1 j).toNat = 1) n)

end

end A096598.P3129131095270345010

/-! ## A096598.P16411015505834797280

`filter[A109881(n+1), A353374(#)]`
-/

namespace A096598.P16411015505834797280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A096598.P16411015505834797280

/-!
# A096599: Squares k^2 with property that A062892(k^2) = 1.

The programs for A096599, there is no canonical definition to state claims against.
-/

/-! ## A096599.P6843211736928036755

`eq[1, A062892(n²)]²`
-/

namespace A096599.P6843211736928036755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A096599.P6843211736928036755

/-! ## A096599.P14822653381139238153

`eq[A062745(n), A062892(n)]`
-/

namespace A096599.P14822653381139238153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062745 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096599.P14822653381139238153

/-! ## A096599.P3043246776634613346

`eq[A062892(n), A084600(n)]`
-/

namespace A096599.P3043246776634613346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096599.P3043246776634613346

/-! ## A096599.P16824198017679104833

`eq[A062892(n), A084602(n)]`
-/

namespace A096599.P16824198017679104833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096599.P16824198017679104833

/-! ## A096599.P794282769567090476

`eq[A062892(n), A084604(n)]`
-/

namespace A096599.P794282769567090476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096599.P794282769567090476

/-! ## A096599.P3726751056686847524

`eq[A062892(n), A084606(n)]`
-/

namespace A096599.P3726751056686847524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096599.P3726751056686847524

/-! ## A096599.P10194427892766051333

`eq[A062892(n), A084608(n)]`
-/

namespace A096599.P10194427892766051333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096599.P10194427892766051333

/-! ## A096599.P8995617152052707882

`eq[A062892(n), A191521(n)]`
-/

namespace A096599.P8995617152052707882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191521 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096599.P8995617152052707882

/-! ## A096599.P7936202915200947989

`lt[A062892(A000290(n)), 2]²`
-/

namespace A096599.P7936202915200947989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 (A000290 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A096599.P7936202915200947989

/-! ## A096599.P774567279619966160

`eq[A062892(n), A090452(n+1)]`
-/

namespace A096599.P774567279619966160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096599.P774567279619966160

