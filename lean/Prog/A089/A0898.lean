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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A089800: Expansion of Jacobi theta function theta_2(q)/q^(1/4).

The programs for A089800, the canonical program `A089800.P1400056330218484811` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089800 has offset 0).

The definition of A089800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089800.P1400056330218484811

`2*(floor(sqrt(n+1)+1/2)-floor(sqrt(n)+1/2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089800

/-- `2*(floor(sqrt(n+1)+1/2)-floor(sqrt(n)+1/2))` -/
def P1400056330218484811.Spec : Prop :=
  ∀ n, P1400056330218484811.a n = A089800 n

theorem P1400056330218484811.correct : P1400056330218484811.Spec := by
  intro n
  simp only [A089800]

end A089800

/-! ## A089800.P14230294592337249626

`lcm(2, Δ[round(sqrt(n))])`
-/

namespace A089800.P14230294592337249626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (n + 1) - f1 n)

end

end A089800.P14230294592337249626

namespace A089800

/-- `lcm(2, Δ[round(sqrt(n))])` -/
def P14230294592337249626.Spec : Prop :=
  ∀ n, (P14230294592337249626.a n : ℤ) = A089800 n

end A089800

/-! ## A089800.P14896599006010989853

`ceil(tan(Δ[round(sqrt(n))]))`
-/

namespace A089800.P14896599006010989853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (f1 (n + 1) - f1 n : ℝ)⌉

end

end A089800.P14896599006010989853

namespace A089800

/-- `ceil(tan(Δ[round(sqrt(n))]))` -/
def P14896599006010989853.Spec : Prop :=
  ∀ n, P14896599006010989853.a n = A089800 n

end A089800

/-! ## A089800.P16782448199688593612

`round(tan(Δ[round(sqrt(n))]))`
-/

namespace A089800.P16782448199688593612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (f1 (n + 1) - f1 n : ℝ))

end

end A089800.P16782448199688593612

namespace A089800

/-- `round(tan(Δ[round(sqrt(n))]))` -/
def P16782448199688593612.Spec : Prop :=
  ∀ n, P16782448199688593612.a n = A089800 n

end A089800

/-! ## A089800.P12157615772596457436

`ceil(asin(Δ[round(sqrt(n))]))`
-/

namespace A089800.P12157615772596457436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin (f1 (n + 1) - f1 n : ℝ)⌉

end

end A089800.P12157615772596457436

namespace A089800

/-- `ceil(asin(Δ[round(sqrt(n))]))` -/
def P12157615772596457436.Spec : Prop :=
  ∀ n, P12157615772596457436.a n = A089800 n

end A089800

/-! ## A089800.P15802026466807319815

`round(asin(Δ[round(sqrt(n))]))`
-/

namespace A089800.P15802026466807319815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin (f1 (n + 1) - f1 n : ℝ))

end

end A089800.P15802026466807319815

namespace A089800

/-- `round(asin(Δ[round(sqrt(n))]))` -/
def P15802026466807319815.Spec : Prop :=
  ∀ n, P15802026466807319815.a n = A089800 n

end A089800

/-! ## A089800.P15316798606872542729

`ceil(sinh(Δ[round(sqrt(n))]))`
-/

namespace A089800.P15316798606872542729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (f1 (n + 1) - f1 n : ℝ)⌉

end

end A089800.P15316798606872542729

namespace A089800

/-- `ceil(sinh(Δ[round(sqrt(n))]))` -/
def P15316798606872542729.Spec : Prop :=
  ∀ n, P15316798606872542729.a n = A089800 n

end A089800

/-! ## A089800.P13603589299711458587

`dr(2*char[∑[2*n]])`
-/

namespace A089800.P13603589299711458587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A089800.P13603589299711458587

namespace A089800

/-- `dr(2*char[∑[2*n]])` -/
def P13603589299711458587.Spec : Prop :=
  ∀ n, (P13603589299711458587.a n : ℤ) = A089800 n

end A089800

/-! ## A089800.P15388816326953757646

`and(2, -char[∑[2*n]])`
-/

namespace A089800.P15388816326953757646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A089800.P15388816326953757646

namespace A089800

/-- `and(2, -char[∑[2*n]])` -/
def P15388816326953757646.Spec : Prop :=
  ∀ n, P15388816326953757646.a n = A089800 n

end A089800

/-! ## A089800.P11551184727464262715

`∑{p}[Δ[comp[(n+1)²]], #]`
-/

namespace A089800.P11551184727464262715
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089800.P11551184727464262715

namespace A089800

/-- `∑{p}[Δ[comp[(n+1)²]], #]` -/
def P11551184727464262715.Spec : Prop :=
  ∀ n, (P11551184727464262715.a n : ℤ) = A089800 n

end A089800

/-! ## A089800.P8844648363159016274

`ceil(abs(tan(char[∑[2*n]])))`
-/

namespace A089800.P8844648363159016274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)|⌉

end

end A089800.P8844648363159016274

namespace A089800

/-- `ceil(abs(tan(char[∑[2*n]])))` -/
def P8844648363159016274.Spec : Prop :=
  ∀ n, P8844648363159016274.a n = A089800 n

end A089800

/-! ## A089800.P10615416702621144666

`round(abs(tan(char[∑[2*n]])))`
-/

namespace A089800.P10615416702621144666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)|

end

end A089800.P10615416702621144666

namespace A089800

/-- `round(abs(tan(char[∑[2*n]])))` -/
def P10615416702621144666.Spec : Prop :=
  ∀ n, P10615416702621144666.a n = A089800 n

end A089800

/-! ## A089800.P8325280669619918275

`floor(tan(char[∑[2*n]])²)`
-/

namespace A089800.P8325280669619918275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2⌋

end

end A089800.P8325280669619918275

namespace A089800

/-- `floor(tan(char[∑[2*n]])²)` -/
def P8325280669619918275.Spec : Prop :=
  ∀ n, P8325280669619918275.a n = A089800 n

end A089800

/-! ## A089800.P8948737537492805712

`round(tan(char[∑[2*n]])²)`
-/

namespace A089800.P8948737537492805712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2)

end

end A089800.P8948737537492805712

namespace A089800

/-- `round(tan(char[∑[2*n]])²)` -/
def P8948737537492805712.Spec : Prop :=
  ∀ n, P8948737537492805712.a n = A089800 n

end A089800

/-! ## A089800.P7770619422420058954

`ceil(sqrt(tan(char[∑[2*n]])))`
-/

namespace A089800.P7770619422420058954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A089800.P7770619422420058954

namespace A089800

/-- `ceil(sqrt(tan(char[∑[2*n]])))` -/
def P7770619422420058954.Spec : Prop :=
  ∀ n, P7770619422420058954.a n = A089800 n

end A089800

/-! ## A089800.P1509066613735184187

`floor(asin(char[∑[2*n]])²)`
-/

namespace A089800.P1509066613735184187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2⌋

end

end A089800.P1509066613735184187

namespace A089800

/-- `floor(asin(char[∑[2*n]])²)` -/
def P1509066613735184187.Spec : Prop :=
  ∀ n, P1509066613735184187.a n = A089800 n

end A089800

/-! ## A089800.P9264898269292955835

`round(asin(char[∑[2*n]])²)`
-/

namespace A089800.P9264898269292955835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2)

end

end A089800.P9264898269292955835

namespace A089800

/-- `round(asin(char[∑[2*n]])²)` -/
def P9264898269292955835.Spec : Prop :=
  ∀ n, P9264898269292955835.a n = A089800 n

end A089800

/-! ## A089800.P5962490988408062338

`ceil(sqrt(asin(char[∑[2*n]])))`
-/

namespace A089800.P5962490988408062338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A089800.P5962490988408062338

namespace A089800

/-- `ceil(sqrt(asin(char[∑[2*n]])))` -/
def P5962490988408062338.Spec : Prop :=
  ∀ n, P5962490988408062338.a n = A089800 n

end A089800

/-! ## A089800.P17915649491918840760

`ceil(sinh(char[∑[2*n]])²)`
-/

namespace A089800.P17915649491918840760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2⌉

end

end A089800.P17915649491918840760

namespace A089800

/-- `ceil(sinh(char[∑[2*n]])²)` -/
def P17915649491918840760.Spec : Prop :=
  ∀ n, P17915649491918840760.a n = A089800 n

end A089800

/-! ## A089800.P17333620016524516763

`ceil(sqrt(sinh(char[∑[2*n]])))`
-/

namespace A089800.P17333620016524516763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A089800.P17333620016524516763

namespace A089800

/-- `ceil(sqrt(sinh(char[∑[2*n]])))` -/
def P17333620016524516763.Spec : Prop :=
  ∀ n, P17333620016524516763.a n = A089800 n

end A089800

/-!
# A089801: a(n) = 0 unless n = 3j^2 + 2j or 3j^2 + 4j + 1 for some j >= 0, in which case a(n) = 1.

The programs for A089801, the canonical program `A089801.P7513188891248060037` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089801 has offset 0).

The definition of A089801 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033684, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089801.P7513188891248060037

`A033684(3*n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089801

/-- `A033684(3*n+1)` -/
def P7513188891248060037.Spec : Prop :=
  ∀ n, P7513188891248060037.a n = A089801 n

theorem P7513188891248060037.correct : P7513188891248060037.Spec := by
  intro n
  simp only [A089801]

end A089801

/-! ## A089801.P2633485407361496006

`(-1)^n*A089802(n)`
-/

namespace A089801.P2633485407361496006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A089802 n

end

end A089801.P2633485407361496006

namespace A089801

/-- `(-1)^n*A089802(n)` -/
def P2633485407361496006.Spec : Prop :=
  ∀ n, P2633485407361496006.a n = A089801 n

end A089801

/-! ## A089801.P4335029830995222834

`A010052(3*n+1)`
-/

namespace A089801.P4335029830995222834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (3 * n + 1)

end

end A089801.P4335029830995222834

namespace A089801

/-- `A010052(3*n+1)` -/
def P4335029830995222834.Spec : Prop :=
  ∀ n, P4335029830995222834.a n = A089801 n

end A089801

/-! ## A089801.P6995083277498393237

`char[∑[n*gcd(2, n)]]`
-/

namespace A089801.P6995083277498393237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A089801.P6995083277498393237

namespace A089801

/-- `char[∑[n*gcd(2, n)]]` -/
def P6995083277498393237.Spec : Prop :=
  ∀ n, (P6995083277498393237.a n : ℤ) = A089801 n

end A089801

/-! ## A089801.P2614388463215389843

`∑{d}[3*n+1, #]%2`
-/

namespace A089801.P2614388463215389843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 2

end

end A089801.P2614388463215389843

namespace A089801

/-- `∑{d}[3*n+1, #]%2` -/
def P2614388463215389843.Spec : Prop :=
  ∀ n, (P2614388463215389843.a n : ℤ) = A089801 n

end A089801

/-! ## A089801.P8099966133031327867

`and(1, ∑{d}[3*n+1, #])`
-/

namespace A089801.P8099966133031327867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A089801.P8099966133031327867

namespace A089801

/-- `and(1, ∑{d}[3*n+1, #])` -/
def P8099966133031327867.Spec : Prop :=
  ∀ n, (P8099966133031327867.a n : ℤ) = A089801 n

end A089801

/-! ## A089801.P6640556035583565351

`char[floor(comp[3*n]²/3)]`
-/

namespace A089801.P6640556035583565351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2 : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089801.P6640556035583565351

namespace A089801

/-- `char[floor(comp[3*n]²/3)]` -/
def P6640556035583565351.Spec : Prop :=
  ∀ n, (P6640556035583565351.a n : ℤ) = A089801 n

end A089801

/-! ## A089801.P1869851315663280054

`abs(A089802(n))`
-/

namespace A089801.P1869851315663280054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A089802 n|

end

end A089801.P1869851315663280054

namespace A089801

/-- `abs(A089802(n))` -/
def P1869851315663280054.Spec : Prop :=
  ∀ n, P1869851315663280054.a n = A089801 n

end A089801

/-! ## A089801.P9807161682978279114

`abs(A185124(n))`
-/

namespace A089801.P9807161682978279114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185124 n|

end

end A089801.P9807161682978279114

namespace A089801

/-- `abs(A185124(n))` -/
def P9807161682978279114.Spec : Prop :=
  ∀ n, P9807161682978279114.a n = A089801 n

end A089801

/-! ## A089801.P11437267091432336202

`abs(A185125(n))`
-/

namespace A089801.P11437267091432336202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185125 n|

end

end A089801.P11437267091432336202

namespace A089801

/-- `abs(A185125(n))` -/
def P11437267091432336202.Spec : Prop :=
  ∀ n, P11437267091432336202.a n = A089801 n

end A089801

/-! ## A089801.P2338521777526055158

`abs(A290739(n))`
-/

namespace A089801.P2338521777526055158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290739 n|

end

end A089801.P2338521777526055158

namespace A089801

/-- `abs(A290739(n))` -/
def P2338521777526055158.Spec : Prop :=
  ∀ n, P2338521777526055158.a n = A089801 n

end A089801

/-! ## A089801.P6492719134072976414

`A005882(n)%2`
-/

namespace A089801.P6492719134072976414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005882 n) 2

end

end A089801.P6492719134072976414

namespace A089801

/-- `A005882(n)%2` -/
def P6492719134072976414.Spec : Prop :=
  ∀ n, P6492719134072976414.a n = A089801 n

end A089801

/-! ## A089801.P14126291073909619347

`A033687(n)%2`
-/

namespace A089801.P14126291073909619347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033687 n) 2

end

end A089801.P14126291073909619347

namespace A089801

/-- `A033687(n)%2` -/
def P14126291073909619347.Spec : Prop :=
  ∀ n, P14126291073909619347.a n = A089801 n

end A089801

/-! ## A089801.P637589504086243361

`A092342(n)%2`
-/

namespace A089801.P637589504086243361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092342 n) 2

end

end A089801.P637589504086243361

namespace A089801

/-- `A092342(n)%2` -/
def P637589504086243361.Spec : Prop :=
  ∀ n, P637589504086243361.a n = A089801 n

end A089801

/-! ## A089801.P14296611088445088406

`A122865(n)%2`
-/

namespace A089801.P14296611088445088406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122865 n) 2

end

end A089801.P14296611088445088406

namespace A089801

/-- `A122865(n)%2` -/
def P14296611088445088406.Spec : Prop :=
  ∀ n, P14296611088445088406.a n = A089801 n

end A089801

/-! ## A089801.P9558814397448036818

`A129576(n)%2`
-/

namespace A089801.P9558814397448036818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129576 n) 2

end

end A089801.P9558814397448036818

namespace A089801

/-- `A129576(n)%2` -/
def P9558814397448036818.Spec : Prop :=
  ∀ n, P9558814397448036818.a n = A089801 n

end A089801

/-! ## A089801.P2094991244701785002

`A144614(n)%2`
-/

namespace A089801.P2094991244701785002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144614 n) 2

end

end A089801.P2094991244701785002

namespace A089801

/-- `A144614(n)%2` -/
def P2094991244701785002.Spec : Prop :=
  ∀ n, P2094991244701785002.a n = A089801 n

end A089801

/-! ## A089801.P17752210901559149177

`A213056(n)%2`
-/

namespace A089801.P17752210901559149177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213056 n) 2

end

end A089801.P17752210901559149177

namespace A089801

/-- `A213056(n)%2` -/
def P17752210901559149177.Spec : Prop :=
  ∀ n, P17752210901559149177.a n = A089801 n

end A089801

/-! ## A089801.P9889894734320313181

`A213592(n)%2`
-/

namespace A089801.P9889894734320313181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213592 n) 2

end

end A089801.P9889894734320313181

namespace A089801

/-- `A213592(n)%2` -/
def P9889894734320313181.Spec : Prop :=
  ∀ n, P9889894734320313181.a n = A089801 n

end A089801

/-! ## A089801.P13945202824991358541

`A246926(n)%2`
-/

namespace A089801.P13945202824991358541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246926 n) 2

end

end A089801.P13945202824991358541

namespace A089801

/-- `A246926(n)%2` -/
def P13945202824991358541.Spec : Prop :=
  ∀ n, P13945202824991358541.a n = A089801 n

end A089801

/-!
# A089802: Expansion of q^(-1/3) * (theta_4(q^3) - theta_4(q^(1/3))) / 2 in powers of q.

The programs for A089802, the canonical program `A089802.P8029284349685483497` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089802 has offset 0).

The definition of A089802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089801, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089802.P8029284349685483497

`(-1)^n*A089801(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089802

/-- `(-1)^n*A089801(n)` -/
def P8029284349685483497.Spec : Prop :=
  ∀ n, P8029284349685483497.a n = A089802 n

theorem P8029284349685483497.correct : P8029284349685483497.Spec := by
  intro n
  simp only [A089802]

end A089802

/-! ## A089802.P14095047424169755101

`(-1)^n*A010052(3*n+1)`
-/

namespace A089802.P14095047424169755101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A010052 (3 * n + 1)

end

end A089802.P14095047424169755101

namespace A089802

/-- `(-1)^n*A010052(3*n+1)` -/
def P14095047424169755101.Spec : Prop :=
  ∀ n, P14095047424169755101.a n = A089802 n

end A089802

/-! ## A089802.P15349971410165580197

`(-char[∑[n*gcd(2, n)]])^n`
-/

namespace A089802.P15349971410165580197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ n

end

end A089802.P15349971410165580197

namespace A089802

/-- `(-char[∑[n*gcd(2, n)]])^n` -/
def P15349971410165580197.Spec : Prop :=
  ∀ n, P15349971410165580197.a n = A089802 n

end A089802

/-! ## A089802.P6944902598010349979

`((-1)^n*val(n+2-n%2, 2))%Δ[n+1+floor(sqrt(3*(n+1)-3))]`
-/

namespace A089802.P6944902598010349979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + Int.sqrt ((3 * (n + 1) : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ n * (SequenceMachineLib.valuation ((n + 2 : ℤ) - ((n % 2 : ℕ) : ℤ)).toNat 2 : ℤ)) (f1 (n + 1) - f1 n)

end

end A089802.P6944902598010349979

namespace A089802

/-- `((-1)^n*val(n+2-n%2, 2))%Δ[n+1+floor(sqrt(3*(n+1)-3))]` -/
def P6944902598010349979.Spec : Prop :=
  ∀ n, P6944902598010349979.a n = A089802 n

end A089802

/-! ## A089802.P16389236468130905284

`A122861(n)%2`
-/

namespace A089802.P16389236468130905284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122861 n) 2

end

end A089802.P16389236468130905284

namespace A089802

/-- `A122861(n)%2` -/
def P16389236468130905284.Spec : Prop :=
  ∀ n, P16389236468130905284.a n = A089802 n

end A089802

/-! ## A089802.P16101337973091991707

`A224833(n)%2`
-/

namespace A089802.P16101337973091991707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224833 n) 2

end

end A089802.P16101337973091991707

namespace A089802

/-- `A224833(n)%2` -/
def P16101337973091991707.Spec : Prop :=
  ∀ n, P16101337973091991707.a n = A089802 n

end A089802

/-! ## A089802.P17827876279715567541

`A227696(n)%2`
-/

namespace A089802.P17827876279715567541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227696 n) 2

end

end A089802.P17827876279715567541

namespace A089802

/-- `A227696(n)%2` -/
def P17827876279715567541.Spec : Prop :=
  ∀ n, P17827876279715567541.a n = A089802 n

end A089802

/-! ## A089802.P1138116600887393340

`A258277(n)%2`
-/

namespace A089802.P1138116600887393340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258277 n) 2

end

end A089802.P1138116600887393340

namespace A089802

/-- `A258277(n)%2` -/
def P1138116600887393340.Spec : Prop :=
  ∀ n, P1138116600887393340.a n = A089802 n

end A089802

/-! ## A089802.P15023394647637695584

`A258747(n)%2`
-/

namespace A089802.P15023394647637695584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258747 n) 2

end

end A089802.P15023394647637695584

namespace A089802

/-- `A258747(n)%2` -/
def P15023394647637695584.Spec : Prop :=
  ∀ n, P15023394647637695584.a n = A089802 n

end A089802

/-! ## A089802.P1596043537699753630

`A260574(n)%2`
-/

namespace A089802.P1596043537699753630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260574 n) 2

end

end A089802.P1596043537699753630

namespace A089802

/-- `A260574(n)%2` -/
def P1596043537699753630.Spec : Prop :=
  ∀ n, P1596043537699753630.a n = A089802 n

end A089802

/-! ## A089802.P6844646159275094106

`A279261(n)%2`
-/

namespace A089802.P6844646159275094106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279261 n) 2

end

end A089802.P6844646159275094106

namespace A089802

/-- `A279261(n)%2` -/
def P6844646159275094106.Spec : Prop :=
  ∀ n, P6844646159275094106.a n = A089802 n

end A089802

/-! ## A089802.P9566073850134917772

`A279947(n)%2`
-/

namespace A089802.P9566073850134917772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279947 n) 2

end

end A089802.P9566073850134917772

namespace A089802

/-- `A279947(n)%2` -/
def P9566073850134917772.Spec : Prop :=
  ∀ n, P9566073850134917772.a n = A089802 n

end A089802

/-! ## A089802.P802766848625336958

`A329956(n)%2`
-/

namespace A089802.P802766848625336958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329956 n) 2

end

end A089802.P802766848625336958

namespace A089802

/-- `A329956(n)%2` -/
def P802766848625336958.Spec : Prop :=
  ∀ n, P802766848625336958.a n = A089802 n

end A089802

/-! ## A089802.P9852644103649519766

`(-(A000005(3*n+1)%2))^n`
-/

namespace A089802.P9852644103649519766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A000005 (3 * n + 1)) 2) ^ n

end

end A089802.P9852644103649519766

namespace A089802

/-- `(-(A000005(3*n+1)%2))^n` -/
def P9852644103649519766.Spec : Prop :=
  ∀ n, P9852644103649519766.a n = A089802 n

end A089802

/-! ## A089802.P12127074491747779140

`(-(A000203(3*n+1)%2))^n`
-/

namespace A089802.P12127074491747779140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A000203 (3 * n + 1)) 2) ^ n

end

end A089802.P12127074491747779140

namespace A089802

/-- `(-(A000203(3*n+1)%2))^n` -/
def P12127074491747779140.Spec : Prop :=
  ∀ n, P12127074491747779140.a n = A089802 n

end A089802

/-! ## A089802.P9975564129815110499

`A143259(A165355(n))`
-/

namespace A089802.P9975564129815110499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A165355 n).toNat

end

end A089802.P9975564129815110499

namespace A089802

/-- `A143259(A165355(n))` -/
def P9975564129815110499.Spec : Prop :=
  ∀ n, P9975564129815110499.a n = A089802 n

end A089802

/-! ## A089802.P16182970208917485436

`A143259(A166138(n))`
-/

namespace A089802.P16182970208917485436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A166138 n).toNat

end

end A089802.P16182970208917485436

namespace A089802

/-- `A143259(A166138(n))` -/
def P16182970208917485436.Spec : Prop :=
  ∀ n, P16182970208917485436.a n = A089802 n

end A089802

/-! ## A089802.P18089379911021736170

`A101455(A259884(n))`
-/

namespace A089802.P18089379911021736170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A259884 n).toNat

end

end A089802.P18089379911021736170

namespace A089802

/-- `A101455(A259884(n))` -/
def P18089379911021736170.Spec : Prop :=
  ∀ n, P18089379911021736170.a n = A089802 n

end A089802

/-! ## A089802.P16233820588739381306

`A089801(n)*A094267(n)`
-/

namespace A089802.P16233820588739381306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 n * A094267 n

end

end A089802.P16233820588739381306

namespace A089802

/-- `A089801(n)*A094267(n)` -/
def P16233820588739381306.Spec : Prop :=
  ∀ n, P16233820588739381306.a n = A089802 n

end A089802

/-! ## A089802.P2297576252349318503

`A089801(n)*A219977(n)`
-/

namespace A089802.P2297576252349318503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 n * A219977 n

end

end A089802.P2297576252349318503

namespace A089802

/-- `A089801(n)*A219977(n)` -/
def P2297576252349318503.Spec : Prop :=
  ∀ n, P2297576252349318503.a n = A089802 n

end A089802

/-!
# A089803: Expansion of Jacobi theta function theta_4(q^5).

The programs for A089803, the canonical program `A089803.P18032128666622257258` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089803 has offset 0).

The definition of A089803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089803.P6152615458501800099

`A089804(n)%4`
-/

namespace A089803.P6152615458501800099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089804 n) 4

end

end A089803.P6152615458501800099

namespace A089803

/-- `A089804(n)%4` -/
def P6152615458501800099.Spec : Prop :=
  ∀ n, P6152615458501800099.a n = A089803 n

end A089803

/-! ## A089803.P8272361691517285414

`A010873(A169784(n))*A033999(n)`
-/

namespace A089803.P8272361691517285414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A169784 n).toNat * A033999 n

end

end A089803.P8272361691517285414

namespace A089803

/-- `A010873(A169784(n))*A033999(n)` -/
def P8272361691517285414.Spec : Prop :=
  ∀ n, P8272361691517285414.a n = A089803 n

end A089803

/-! ## A089803.P18032128666622257258

`A089798(A117451(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A089803

/-- `A089798(A117451(n+1))` -/
def P18032128666622257258.Spec : Prop :=
  ∀ n, P18032128666622257258.a n = A089803 n

theorem P18032128666622257258.correct : P18032128666622257258.Spec := by
  intro n
  simp only [A089803]

end A089803

/-! ## A089803.P10909891306521945145

`A089798(A315213(n)%A250120(n))`
-/

namespace A089803.P10909891306521945145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 (Int.tmod (A315213 n) (A250120 n)).toNat

end

end A089803.P10909891306521945145

namespace A089803

/-- `A089798(A315213(n)%A250120(n))` -/
def P10909891306521945145.Spec : Prop :=
  ∀ n, P10909891306521945145.a n = A089803 n

end A089803

/-! ## A089803.P12004193496527105328

`A002448(5*n)`
-/

namespace A089803.P12004193496527105328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (5 * n)

end

end A089803.P12004193496527105328

namespace A089803

/-- `A002448(5*n)` -/
def P12004193496527105328.Spec : Prop :=
  ∀ n, P12004193496527105328.a n = A089803 n

end A089803

/-! ## A089803.P13131479610183410154

`(-1)^n*A000122(5*n)`
-/

namespace A089803.P13131479610183410154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000122 (5 * n)

end

end A089803.P13131479610183410154

namespace A089803

/-- `(-1)^n*A000122(5*n)` -/
def P13131479610183410154.Spec : Prop :=
  ∀ n, P13131479610183410154.a n = A089803 n

end A089803

/-! ## A089803.P600345330309001488

`A002448(A008587(n))%7`
-/

namespace A089803.P600345330309001488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002448 (A008587 n).toNat) 7

end

end A089803.P600345330309001488

namespace A089803

/-- `A002448(A008587(n))%7` -/
def P600345330309001488.Spec : Prop :=
  ∀ n, P600345330309001488.a n = A089803 n

end A089803

/-! ## A089803.P3973059463029637776

`A000122(5*n)*A094267(n)`
-/

namespace A089803.P3973059463029637776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (5 * n) * A094267 n

end

end A089803.P3973059463029637776

namespace A089803

/-- `A000122(5*n)*A094267(n)` -/
def P3973059463029637776.Spec : Prop :=
  ∀ n, P3973059463029637776.a n = A089803 n

end A089803

/-! ## A089803.P7227852020036112219

`A089798(10*n)`
-/

namespace A089803.P7227852020036112219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 (10 * n)

end

end A089803.P7227852020036112219

namespace A089803

/-- `A089798(10*n)` -/
def P7227852020036112219.Spec : Prop :=
  ∀ n, P7227852020036112219.a n = A089803 n

end A089803

/-!
# A089804: Expansion of Jacobi theta function theta_4^3(q^5).

The programs for A089804, there is no canonical definition to state claims against.
-/

/-! ## A089804.P9265409784691833264

`A079998(n)*A213384(A283442(n))`
-/

namespace A089804.P9265409784691833264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 n * A213384 (A283442 n).toNat

end

end A089804.P9265409784691833264

/-!
# A089805: Expansion of Jacobi theta function (theta_4(q^6) - theta_4(q^(2/3)))/2/q^(2/3).

The programs for A089805, the canonical program `A089805.P10188225100685804719` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089805 has offset 0).

The definition of A089805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089805.P17323637546022552437

`A258764(n)%2`
-/

namespace A089805.P17323637546022552437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258764 n) 2

end

end A089805.P17323637546022552437

namespace A089805

/-- `A258764(n)%2` -/
def P17323637546022552437.Spec : Prop :=
  ∀ n, P17323637546022552437.a n = A089805 n

end A089805

/-! ## A089805.P17242866620618444710

`A263398(n)%2`
-/

namespace A089805.P17242866620618444710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263398 n) 2

end

end A089805.P17242866620618444710

namespace A089805

/-- `A263398(n)%2` -/
def P17242866620618444710.Spec : Prop :=
  ∀ n, P17242866620618444710.a n = A089805 n

end A089805

/-! ## A089805.P11699713252243847571

`A204843(6*n+4)`
-/

namespace A089805.P11699713252243847571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (6 * n + 4)

end

end A089805.P11699713252243847571

namespace A089805

/-- `A204843(6*n+4)` -/
def P11699713252243847571.Spec : Prop :=
  ∀ n, P11699713252243847571.a n = A089805 n

end A089805

/-! ## A089805.P10188225100685804719

`Δ[xor(n, floor(n/2))]*A053866(3*n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A089805

/-- `Δ[xor(n, floor(n/2))]*A053866(3*n+2)` -/
def P10188225100685804719.Spec : Prop :=
  ∀ n, P10188225100685804719.a n = A089805 n

theorem P10188225100685804719.correct : P10188225100685804719.Spec := by
  intro n
  simp only [A089805]

end A089805

/-! ## A089805.P5543810617646953505

`A143259(A302773(n))`
-/

namespace A089805.P5543810617646953505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A302773 n).toNat

end

end A089805.P5543810617646953505

namespace A089805

/-- `A143259(A302773(n))` -/
def P5543810617646953505.Spec : Prop :=
  ∀ n, P5543810617646953505.a n = A089805 n

end A089805

/-! ## A089805.P10132767840664353262

`A053866(3*n+2)*A056594(n)`
-/

namespace A089805.P10132767840664353262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (3 * n + 2) * A056594 n

end

end A089805.P10132767840664353262

namespace A089805

/-- `A053866(3*n+2)*A056594(n)` -/
def P10132767840664353262.Spec : Prop :=
  ∀ n, P10132767840664353262.a n = A089805 n

end A089805

/-! ## A089805.P14565161664400477263

`A089810(∑[log2(gcd(2, n))]+n)`
-/

namespace A089805.P14565161664400477263
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ))).toNat

end

end A089805.P14565161664400477263

namespace A089805

/-- `A089810(∑[log2(gcd(2, n))]+n)` -/
def P14565161664400477263.Spec : Prop :=
  ∀ n, P14565161664400477263.a n = A089805 n

end A089805

/-! ## A089805.P361515842386766371

`A089810(A001651(n+1))`
-/

namespace A089805.P361515842386766371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (A001651 (n + 1)).toNat

end

end A089805.P361515842386766371

namespace A089805

/-- `A089810(A001651(n+1))` -/
def P361515842386766371.Spec : Prop :=
  ∀ n, P361515842386766371.a n = A089805 n

end A089805

/-! ## A089805.P4553903482224954686

`A089810(A166517(n+1))`
-/

namespace A089805.P4553903482224954686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (A166517 (n + 1)).toNat

end

end A089805.P4553903482224954686

namespace A089805

/-- `A089810(A166517(n+1))` -/
def P4553903482224954686.Spec : Prop :=
  ∀ n, P4553903482224954686.a n = A089805 n

end A089805

/-! ## A089805.P134685732428123496

`A089802(A064680(n))`
-/

namespace A089805.P134685732428123496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 (A064680 n).toNat

end

end A089805.P134685732428123496

namespace A089805

/-- `A089802(A064680(n))` -/
def P134685732428123496.Spec : Prop :=
  ∀ n, P134685732428123496.a n = A089805 n

end A089805

/-! ## A089805.P14188843331802152488

`A089810(A057353(2*n)+1)`
-/

namespace A089805.P14188843331802152488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (A057353 (2 * n) + 1).toNat

end

end A089805.P14188843331802152488

namespace A089805

/-- `A089810(A057353(2*n)+1)` -/
def P14188843331802152488.Spec : Prop :=
  ∀ n, P14188843331802152488.a n = A089805 n

end A089805

/-! ## A089805.P2406428924854032790

`A185124(Δ[n²])`
-/

namespace A089805.P2406428924854032790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A089805.P2406428924854032790

namespace A089805

/-- `A185124(Δ[n²])` -/
def P2406428924854032790.Spec : Prop :=
  ∀ n, P2406428924854032790.a n = A089805 n

end A089805

/-! ## A089805.P5516810119729403579

`-A185125(2*n+1)`
-/

namespace A089805.P5516810119729403579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A185125 (2 * n + 1)

end

end A089805.P5516810119729403579

namespace A089805

/-- `-A185125(2*n+1)` -/
def P5516810119729403579.Spec : Prop :=
  ∀ n, P5516810119729403579.a n = A089805 n

end A089805

/-! ## A089805.P3377512790897314971

`A185124(2*n+1)^3`
-/

namespace A089805.P3377512790897314971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 (2 * n + 1) ^ 3

end

end A089805.P3377512790897314971

namespace A089805

/-- `A185124(2*n+1)^3` -/
def P3377512790897314971.Spec : Prop :=
  ∀ n, P3377512790897314971.a n = A089805 n

end A089805

/-! ## A089805.P5691711665032472601

`A246650(2*n+1)%2`
-/

namespace A089805.P5691711665032472601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246650 (2 * n + 1)) 2

end

end A089805.P5691711665032472601

namespace A089805

/-- `A246650(2*n+1)%2` -/
def P5691711665032472601.Spec : Prop :=
  ∀ n, P5691711665032472601.a n = A089805 n

end A089805

/-! ## A089805.P13511664661429954430

`A087960(n)*A089801(2*n+1)`
-/

namespace A089805.P13511664661429954430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A089801 (2 * n + 1)

end

end A089805.P13511664661429954430

namespace A089805

/-- `A087960(n)*A089801(2*n+1)` -/
def P13511664661429954430.Spec : Prop :=
  ∀ n, P13511664661429954430.a n = A089805 n

end A089805

/-! ## A089805.P17652233510760721458

`A033999(n)*A185124(2*n+1)`
-/

namespace A089805.P17652233510760721458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A185124 (2 * n + 1)

end

end A089805.P17652233510760721458

namespace A089805

/-- `A033999(n)*A185124(2*n+1)` -/
def P17652233510760721458.Spec : Prop :=
  ∀ n, P17652233510760721458.a n = A089805 n

end A089805

/-! ## A089805.P15278533466332447433

`A089802(2*n+1)²*A057077(n)`
-/

namespace A089805.P15278533466332447433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 (2 * n + 1) ^ 2 * A057077 n

end

end A089805.P15278533466332447433

namespace A089805

/-- `A089802(2*n+1)²*A057077(n)` -/
def P15278533466332447433.Spec : Prop :=
  ∀ n, P15278533466332447433.a n = A089805 n

end A089805

/-! ## A089805.P18082903952546546452

`A185124(2*n+1)²*A057077(n)`
-/

namespace A089805.P18082903952546546452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 (2 * n + 1) ^ 2 * A057077 n

end

end A089805.P18082903952546546452

namespace A089805

/-- `A185124(2*n+1)²*A057077(n)` -/
def P18082903952546546452.Spec : Prop :=
  ∀ n, P18082903952546546452.a n = A089805 n

end A089805

/-! ## A089805.P12811099402262976674

`A185124(2*n+1)²*A087960(n)`
-/

namespace A089805.P12811099402262976674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 (2 * n + 1) ^ 2 * A087960 n

end

end A089805.P12811099402262976674

namespace A089805

/-- `A185124(2*n+1)²*A087960(n)` -/
def P12811099402262976674.Spec : Prop :=
  ∀ n, P12811099402262976674.a n = A089805 n

end A089805

/-!
# A089806: Expansion of Jacobi theta function (theta_3(q^(1/3))-theta_2(q^3))/2/q^(1/12).

The programs for A089806, the canonical program `A089806.P3876625318160560543` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089806 has offset 0).

The definition of A089806 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089806.P3876625318160560543

`A010052(12*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089806

/-- `A010052(12*n+1)` -/
def P3876625318160560543.Spec : Prop :=
  ∀ n, P3876625318160560543.a n = A089806 n

theorem P3876625318160560543.correct : P3876625318160560543.Spec := by
  intro n
  simp only [A089806]

end A089806

/-! ## A089806.P4301654409148593451

`char[∑[lcm(2, n)]]`
-/

namespace A089806.P4301654409148593451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A089806.P4301654409148593451

namespace A089806

/-- `char[∑[lcm(2, n)]]` -/
def P4301654409148593451.Spec : Prop :=
  ∀ n, (P4301654409148593451.a n : ℤ) = A089806 n

end A089806

/-! ## A089806.P12409265423107685992

`char[∑[2*gcd(n, ∑[n])]]`
-/

namespace A089806.P12409265423107685992
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A089806.P12409265423107685992

namespace A089806

/-- `char[∑[2*gcd(n, ∑[n])]]` -/
def P12409265423107685992.Spec : Prop :=
  ∀ n, (P12409265423107685992.a n : ℤ) = A089806 n

end A089806

/-! ## A089806.P17140237374513290256

`char[∑[(1+n%2)*n]]`
-/

namespace A089806.P17140237374513290256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n % 2) * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A089806.P17140237374513290256

namespace A089806

/-- `char[∑[(1+n%2)*n]]` -/
def P17140237374513290256.Spec : Prop :=
  ∀ n, (P17140237374513290256.a n : ℤ) = A089806 n

end A089806

/-! ## A089806.P5240466705345137723

`char[∑[(and(1, n)+1)*n]]`
-/

namespace A089806.P5240466705345137723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A089806.P5240466705345137723

namespace A089806

/-- `char[∑[(and(1, n)+1)*n]]` -/
def P5240466705345137723.Spec : Prop :=
  ∀ n, (P5240466705345137723.a n : ℤ) = A089806 n

end A089806

/-! ## A089806.P15079969193880941719

`char[ceil(n/2)*comp[3*n]]`
-/

namespace A089806.P15079969193880941719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089806.P15079969193880941719

namespace A089806

/-- `char[ceil(n/2)*comp[3*n]]` -/
def P15079969193880941719.Spec : Prop :=
  ∀ n, (P15079969193880941719.a n : ℤ) = A089806 n

end A089806

/-! ## A089806.P15435903454159761929

`abs(A274719(n))`
-/

namespace A089806.P15435903454159761929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274719 n|

end

end A089806.P15435903454159761929

namespace A089806

/-- `abs(A274719(n))` -/
def P15435903454159761929.Spec : Prop :=
  ∀ n, P15435903454159761929.a n = A089806 n

end A089806

/-! ## A089806.P10778416609619685068

`A003982(6*n)`
-/

namespace A089806.P10778416609619685068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (6 * n)

end

end A089806.P10778416609619685068

namespace A089806

/-- `A003982(6*n)` -/
def P10778416609619685068.Spec : Prop :=
  ∀ n, P10778416609619685068.a n = A089806 n

end A089806

/-! ## A089806.P8244816814859993559

`A214505(6*n)`
-/

namespace A089806.P8244816814859993559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 (6 * n)

end

end A089806.P8244816814859993559

namespace A089806

/-- `A214505(6*n)` -/
def P8244816814859993559.Spec : Prop :=
  ∀ n, P8244816814859993559.a n = A089806 n

end A089806

/-! ## A089806.P7488396409452445737

`A002175(n)%2`
-/

namespace A089806.P7488396409452445737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002175 n) 2

end

end A089806.P7488396409452445737

namespace A089806

/-- `A002175(n)%2` -/
def P7488396409452445737.Spec : Prop :=
  ∀ n, P7488396409452445737.a n = A089806 n

end A089806

/-! ## A089806.P7752105535417349843

`A035457(n)%2`
-/

namespace A089806.P7752105535417349843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035457 n) 2

end

end A089806.P7752105535417349843

namespace A089806

/-- `A035457(n)%2` -/
def P7752105535417349843.Spec : Prop :=
  ∀ n, P7752105535417349843.a n = A089806 n

end A089806

/-! ## A089806.P10323342579576057780

`A096920(n)%2`
-/

namespace A089806.P10323342579576057780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096920 n) 2

end

end A089806.P10323342579576057780

namespace A089806

/-- `A096920(n)%2` -/
def P10323342579576057780.Spec : Prop :=
  ∀ n, P10323342579576057780.a n = A089806 n

end A089806

/-! ## A089806.P10756281871237883905

`A123884(n)%2`
-/

namespace A089806.P10756281871237883905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123884 n) 2

end

end A089806.P10756281871237883905

namespace A089806

/-- `A123884(n)%2` -/
def P10756281871237883905.Spec : Prop :=
  ∀ n, P10756281871237883905.a n = A089806 n

end A089806

/-! ## A089806.P802798512877020989

`A248886(n)%2`
-/

namespace A089806.P802798512877020989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248886 n) 2

end

end A089806.P802798512877020989

namespace A089806

/-- `A248886(n)%2` -/
def P802798512877020989.Spec : Prop :=
  ∀ n, P802798512877020989.a n = A089806 n

end A089806

/-! ## A089806.P15710963957060834353

`A262368(n)%2`
-/

namespace A089806.P15710963957060834353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262368 n) 2

end

end A089806.P15710963957060834353

namespace A089806

/-- `A262368(n)%2` -/
def P15710963957060834353.Spec : Prop :=
  ∀ n, P15710963957060834353.a n = A089806 n

end A089806

/-! ## A089806.P18345954094085992253

`A293182(n)%2`
-/

namespace A089806.P18345954094085992253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293182 n) 2

end

end A089806.P18345954094085992253

namespace A089806

/-- `A293182(n)%2` -/
def P18345954094085992253.Spec : Prop :=
  ∀ n, P18345954094085992253.a n = A089806 n

end A089806

/-! ## A089806.P7419734182173960855

`and(1, A002107(n))`
-/

namespace A089806.P7419734182173960855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002107 n)

end

end A089806.P7419734182173960855

namespace A089806

/-- `and(1, A002107(n))` -/
def P7419734182173960855.Spec : Prop :=
  ∀ n, P7419734182173960855.a n = A089806 n

end A089806

/-! ## A089806.P5745671456120465026

`and(1, A208845(n))`
-/

namespace A089806.P5745671456120465026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A208845 n)

end

end A089806.P5745671456120465026

namespace A089806

/-- `and(1, A208845(n))` -/
def P5745671456120465026.Spec : Prop :=
  ∀ n, P5745671456120465026.a n = A089806 n

end A089806

/-! ## A089806.P3504907193165966484

`A290739(4*n)²`
-/

namespace A089806.P3504907193165966484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 (4 * n) ^ 2

end

end A089806.P3504907193165966484

namespace A089806

/-- `A290739(4*n)²` -/
def P3504907193165966484.Spec : Prop :=
  ∀ n, P3504907193165966484.a n = A089806 n

end A089806

/-! ## A089806.P8737339297812944044

`A000035(A002175(n))`
-/

namespace A089806.P8737339297812944044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002175 n).toNat

end

end A089806.P8737339297812944044

namespace A089806

/-- `A000035(A002175(n))` -/
def P8737339297812944044.Spec : Prop :=
  ∀ n, P8737339297812944044.a n = A089806 n

end A089806

/-!
# A089807: Expansion of Jacobi theta function (3theta_3(q^9)-theta_3(q))/2.

The programs for A089807, the canonical program `A089807.P3156789895362518730` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089807 has offset 0).

The definition of A089807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089807.P12382260384298769471

`(-1)^n*A089810(n)`
-/

namespace A089807.P12382260384298769471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A089810 n

end

end A089807.P12382260384298769471

namespace A089807

/-- `(-1)^n*A089810(n)` -/
def P12382260384298769471.Spec : Prop :=
  ∀ n, P12382260384298769471.a n = A089807 n

end A089807

/-! ## A089807.P864164073430916661

`(char[(n+1)²]+char[n²])/(-2)^(∑[n]%3)`
-/

namespace A089807.P864164073430916661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℚ) / ((-2) ^ ((∑ j ∈ Finset.range (n + 1), f3 j) % 3) : ℚ)

end

end A089807.P864164073430916661

namespace A089807

/-- `(char[(n+1)²]+char[n²])/(-2)^(∑[n]%3)` -/
def P864164073430916661.Spec : Prop :=
  ∀ n, P864164073430916661.a n = (A089807 n : ℚ)

end A089807

/-! ## A089807.P7448013653328801367

`A246927(n)%4`
-/

namespace A089807.P7448013653328801367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246927 n) 4

end

end A089807.P7448013653328801367

namespace A089807

/-- `A246927(n)%4` -/
def P7448013653328801367.Spec : Prop :=
  ∀ n, P7448013653328801367.a n = A089807 n

end A089807

/-! ## A089807.P9168312757474373829

`char[n²]*A099837(n)`
-/

namespace A089807.P9168312757474373829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A099837 n

end

end A089807.P9168312757474373829

namespace A089807

/-- `char[n²]*A099837(n)` -/
def P9168312757474373829.Spec : Prop :=
  ∀ n, P9168312757474373829.a n = A089807 n

end A089807

/-! ## A089807.P17741659175267823198

`floor(A000122(n)/(-2)^(∑[n]%3))`
-/

namespace A089807.P17741659175267823198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000122 n : ℚ) / ((-2) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℚ)⌋

end

end A089807.P17741659175267823198

namespace A089807

/-- `floor(A000122(n)/(-2)^(∑[n]%3))` -/
def P17741659175267823198.Spec : Prop :=
  ∀ n, P17741659175267823198.a n = A089807 n

end A089807

/-! ## A089807.P17361533410324247656

`A089810(n)*A094267(n)`
-/

namespace A089807.P17361533410324247656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n * A094267 n

end

end A089807.P17361533410324247656

namespace A089807

/-- `A089810(n)*A094267(n)` -/
def P17361533410324247656.Spec : Prop :=
  ∀ n, P17361533410324247656.a n = A089807 n

end A089807

/-! ## A089807.P1020574683747537322

`A089810(n)*A115714(n)`
-/

namespace A089807.P1020574683747537322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n * A115714 n

end

end A089807.P1020574683747537322

namespace A089807

/-- `A089810(n)*A115714(n)` -/
def P1020574683747537322.Spec : Prop :=
  ∀ n, P1020574683747537322.a n = A089807 n

end A089807

/-! ## A089807.P3384662541717275862

`A089810(n)*A115953(n)`
-/

namespace A089807.P3384662541717275862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n * A115953 n

end

end A089807.P3384662541717275862

namespace A089807

/-- `A089810(n)*A115953(n)` -/
def P3384662541717275862.Spec : Prop :=
  ∀ n, P3384662541717275862.a n = A089807 n

end A089807

/-! ## A089807.P13632509288668348837

`A089810(n)*A137307(n)`
-/

namespace A089807.P13632509288668348837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n * A137307 n

end

end A089807.P13632509288668348837

namespace A089807

/-- `A089810(n)*A137307(n)` -/
def P13632509288668348837.Spec : Prop :=
  ∀ n, P13632509288668348837.a n = A089807 n

end A089807

/-! ## A089807.P13800899023837918288

`A089810(n)*A214507(n)`
-/

namespace A089807.P13800899023837918288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n * A214507 n

end

end A089807.P13800899023837918288

namespace A089807

/-- `A089810(n)*A214507(n)` -/
def P13800899023837918288.Spec : Prop :=
  ∀ n, P13800899023837918288.a n = A089807 n

end A089807

/-! ## A089807.P1008831967317783801

`A089810(n)*A219977(n)`
-/

namespace A089807.P1008831967317783801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n * A219977 n

end

end A089807.P1008831967317783801

namespace A089807

/-- `A089810(n)*A219977(n)` -/
def P1008831967317783801.Spec : Prop :=
  ∀ n, P1008831967317783801.a n = A089807 n

end A089807

/-! ## A089807.P2779555895149465262

`A089810(n)*A339265(n)`
-/

namespace A089807.P2779555895149465262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n * A339265 n

end

end A089807.P2779555895149465262

namespace A089807

/-- `A089810(n)*A339265(n)` -/
def P2779555895149465262.Spec : Prop :=
  ∀ n, P2779555895149465262.a n = A089807 n

end A089807

/-! ## A089807.P11245745248345197760

`A002448(n)/A057079(n)`
-/

namespace A089807.P11245745248345197760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 n : ℚ) / (A057079 n : ℚ)

end

end A089807.P11245745248345197760

namespace A089807

/-- `A002448(n)/A057079(n)` -/
def P11245745248345197760.Spec : Prop :=
  ∀ n, P11245745248345197760.a n = (A089807 n : ℚ)

end A089807

/-! ## A089807.P12887092797114737018

`A000122(n)/A131713(n)`
-/

namespace A089807.P12887092797114737018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n : ℚ) / (A131713 n : ℚ)

end

end A089807.P12887092797114737018

namespace A089807

/-- `A000122(n)/A131713(n)` -/
def P12887092797114737018.Spec : Prop :=
  ∀ n, P12887092797114737018.a n = (A089807 n : ℚ)

end A089807

/-! ## A089807.P5228548337135077330

`A002448(n)/A132954(n)`
-/

namespace A089807.P5228548337135077330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 n : ℚ) / (A132954 n : ℚ)

end

end A089807.P5228548337135077330

namespace A089807

/-- `A002448(n)/A132954(n)` -/
def P5228548337135077330.Spec : Prop :=
  ∀ n, P5228548337135077330.a n = (A089807 n : ℚ)

end A089807

/-! ## A089807.P6048899364173725873

`A089810(n)*A112299(n+1)`
-/

namespace A089807.P6048899364173725873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n * A112299 (n + 1)

end

end A089807.P6048899364173725873

namespace A089807

/-- `A089810(n)*A112299(n+1)` -/
def P6048899364173725873.Spec : Prop :=
  ∀ n, P6048899364173725873.a n = A089807 n

end A089807

/-! ## A089807.P3626773793135589297

`A089810(n)*A209615(n+1)`
-/

namespace A089807.P3626773793135589297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n * A209615 (n + 1)

end

end A089807.P3626773793135589297

namespace A089807

/-- `A089810(n)*A209615(n+1)` -/
def P3626773793135589297.Spec : Prop :=
  ∀ n, P3626773793135589297.a n = A089807 n

end A089807

/-! ## A089807.P3156789895362518730

`A000122(n)-3*A033684(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089807

/-- `A000122(n)-3*A033684(n)` -/
def P3156789895362518730.Spec : Prop :=
  ∀ n, P3156789895362518730.a n = A089807 n

theorem P3156789895362518730.correct : P3156789895362518730.Spec := by
  intro n
  simp only [A089807]

end A089807

/-! ## A089807.P4374003737587251377

`A094267(n)*A204843(4*n)`
-/

namespace A089807.P4374003737587251377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A204843 (4 * n)

end

end A089807.P4374003737587251377

namespace A089807

/-- `A094267(n)*A204843(4*n)` -/
def P4374003737587251377.Spec : Prop :=
  ∀ n, P4374003737587251377.a n = A089807 n

end A089807

/-! ## A089807.P14865763345476150060

`A000122(n)/(2-A057079(n)²)`
-/

namespace A089807.P14865763345476150060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A089807.P14865763345476150060

namespace A089807

/-- `A000122(n)/(2-A057079(n)²)` -/
def P14865763345476150060.Spec : Prop :=
  ∀ n, P14865763345476150060.a n = (A089807 n : ℚ)

end A089807

/-!
# A089808: a(n) = floor(1/((n*r) mod 1)), where r = phi^(-2) = (3 - sqrt(5))/2.

The programs for A089808, the canonical program `A089808.P14606562235981014760` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089808 has offset 1).

The definition of A089808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089808.P14606562235981014760

`floor(floor((n+1)*sqrt(5))/(n+1)²%ceil((n+1)*ϕ²))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089808

/-- `floor(floor((n+1)*sqrt(5))/(n+1)²%ceil((n+1)*ϕ²))` -/
def P14606562235981014760.Spec : Prop :=
  ∀ n, P14606562235981014760.a n = A089808 (n + 1)

theorem P14606562235981014760.correct : P14606562235981014760.Spec := by
  intro n
  simp only [A089808, Nat.add_sub_cancel]

end A089808

/-! ## A089808.P4867046978505346880

`floor(1/(1-∑[ϕ-A001468(n)]))`
-/

namespace A089808.P4867046978505346880
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (1 - ∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A089808.P4867046978505346880

namespace A089808

/-- `floor(1/(1-∑[ϕ-A001468(n)]))` -/
def P4867046978505346880.Spec : Prop :=
  ∀ n, P4867046978505346880.a n = A089808 (n + 1)

end A089808

/-! ## A089808.P751801970873076375

`floor(A022839(n+1)/A120868(n+1))`
-/

namespace A089808.P751801970873076375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022839 (n + 1) : ℚ) / (A120868 (n + 1) : ℚ)⌋

end

end A089808.P751801970873076375

namespace A089808

/-- `floor(A022839(n+1)/A120868(n+1))` -/
def P751801970873076375.Spec : Prop :=
  ∀ n, P751801970873076375.a n = A089808 (n + 1)

end A089808

/-! ## A089808.P5488029138001345473

`floor(A054770(A019446(n+1))/A120868(n+1))`
-/

namespace A089808.P5488029138001345473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054770 (A019446 (n + 1)).toNat : ℚ) / (A120868 (n + 1) : ℚ)⌋

end

end A089808.P5488029138001345473

namespace A089808

/-- `floor(A054770(A019446(n+1))/A120868(n+1))` -/
def P5488029138001345473.Spec : Prop :=
  ∀ n, P5488029138001345473.a n = A089808 (n + 1)

end A089808

/-! ## A089808.P5126226988119821901

`floor(A276886(n+2)/A005752(comp[floor(ϕ*n)]-n))`
-/

namespace A089808.P5126226988119821901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276886 (n + 2) : ℚ) / (A005752 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) : ℚ)⌋

end

end A089808.P5126226988119821901

namespace A089808

/-- `floor(A276886(n+2)/A005752(comp[floor(ϕ*n)]-n))` -/
def P5126226988119821901.Spec : Prop :=
  ∀ n, P5126226988119821901.a n = A089808 (n + 1)

end A089808

/-! ## A089808.P5804387327828775132

`floor(A276886(n+2)/A028310((∑[10*n]+1)%floor((ϕ+2)*(n+1))))`
-/

namespace A089808.P5804387327828775132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276886 (n + 2) : ℚ) / (A028310 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) ⌊(Real.goldenRatio + 2) * (n + 1 : ℝ)⌋).toNat : ℚ)⌋

end

end A089808.P5804387327828775132

namespace A089808

/-- `floor(A276886(n+2)/A028310((∑[10*n]+1)%floor((ϕ+2)*(n+1))))` -/
def P5804387327828775132.Spec : Prop :=
  ∀ n, P5804387327828775132.a n = A089808 (n + 1)

end A089808

/-! ## A089808.P6378470017004174626

`floor(A276886(n+2)/A193592(A022344(n)+A005891(n)))`
-/

namespace A089808.P6378470017004174626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276886 (n + 2) : ℚ) / (A193592 (A022344 n + A005891 n).toNat : ℚ)⌋

end

end A089808.P6378470017004174626

namespace A089808

/-- `floor(A276886(n+2)/A193592(A022344(n)+A005891(n)))` -/
def P6378470017004174626.Spec : Prop :=
  ∀ n, P6378470017004174626.a n = A089808 (n + 1)

end A089808

/-!
# A089809: Complement of A078588.

The programs for A089809, the canonical program `A089809.P658396964107344117` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089809 has offset 1).

The definition of A089809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089809.P14138652035388442097

`and(1, floor(∑[2*(n-ϕ)]))`
-/

namespace A089809.P14138652035388442097
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℝ) - Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A089809.P14138652035388442097

namespace A089809

/-- `and(1, floor(∑[2*(n-ϕ)]))` -/
def P14138652035388442097.Spec : Prop :=
  ∀ n, P14138652035388442097.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P15899605091453965226

`log2(gcd(2, comp[floor(2*n/ϕ)]))`
-/

namespace A089809.P15899605091453965226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℝ)

end

end A089809.P15899605091453965226

namespace A089809

/-- `log2(gcd(2, comp[floor(2*n/ϕ)]))` -/
def P15899605091453965226.Spec : Prop :=
  ∀ n, P15899605091453965226.a n = (A089809 (n + 1) : ℝ)

end A089809

/-! ## A089809.P2020295603381984326

`floor((5-sqrt(5))*(n+1))%2`
-/

namespace A089809.P2020295603381984326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(5 - Real.sqrt (5 : ℝ)) * (n + 1 : ℝ)⌋ 2

end

end A089809.P2020295603381984326

namespace A089809

/-- `floor((5-sqrt(5))*(n+1))%2` -/
def P2020295603381984326.Spec : Prop :=
  ∀ n, P2020295603381984326.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P15784411461634177992

`((1-floor(2*(n+1)/ϕ))%2)²`
-/

namespace A089809.P15784411461634177992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋) 2 ^ 2

end

end A089809.P15784411461634177992

namespace A089809

/-- `((1-floor(2*(n+1)/ϕ))%2)²` -/
def P15784411461634177992.Spec : Prop :=
  ∀ n, P15784411461634177992.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P12100697442456731229

`and(1, floor(ϕ*(2*n+1+ϕ)))²`
-/

namespace A089809.P12100697442456731229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.goldenRatio * ((2 * n + 1 : ℝ) + Real.goldenRatio)⌋ ^ 2

end

end A089809.P12100697442456731229

namespace A089809

/-- `and(1, floor(ϕ*(2*n+1+ϕ)))²` -/
def P12100697442456731229.Spec : Prop :=
  ∀ n, P12100697442456731229.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P10754491519677193366

`round(floor((n+1)/ϕ)/floor(2*(n+1)/ϕ))`
-/

namespace A089809.P10754491519677193366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌊(n + 1 : ℝ) / Real.goldenRatio⌋ : ℚ) / (⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋ : ℚ))

end

end A089809.P10754491519677193366

namespace A089809

/-- `round(floor((n+1)/ϕ)/floor(2*(n+1)/ϕ))` -/
def P10754491519677193366.Spec : Prop :=
  ∀ n, P10754491519677193366.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P2826021603473569523

`C(floor(4*ϕ*(n+1))%4, (floor(4*ϕ*(n+1))%4)²)`
-/

namespace A089809.P2826021603473569523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod ⌊4 * (Real.goldenRatio * (n + 1 : ℝ))⌋ 4).toNat (Int.tmod ⌊4 * (Real.goldenRatio * (n + 1 : ℝ))⌋ 4 ^ 2).toNat

end

end A089809.P2826021603473569523

namespace A089809

/-- `C(floor(4*ϕ*(n+1))%4, (floor(4*ϕ*(n+1))%4)²)` -/
def P2826021603473569523.Spec : Prop :=
  ∀ n, (P2826021603473569523.a n : ℤ) = A089809 (n + 1)

end A089809

/-! ## A089809.P658396964107344117

`gcd(2, A001961(n+1))-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089809

/-- `gcd(2, A001961(n+1))-1` -/
def P658396964107344117.Spec : Prop :=
  ∀ n, P658396964107344117.a n = A089809 (n + 1)

theorem P658396964107344117.correct : P658396964107344117.Spec := by
  intro n
  simp only [A089809, Nat.add_sub_cancel]

end A089809

/-! ## A089809.P5600832525945646397

`C(2, 2*A190440(n+1))`
-/

namespace A089809.P5600832525945646397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A190440 (n + 1)).toNat

end

end A089809.P5600832525945646397

namespace A089809

/-- `C(2, 2*A190440(n+1))` -/
def P5600832525945646397.Spec : Prop :=
  ∀ n, (P5600832525945646397.a n : ℤ) = A089809 (n + 1)

end A089809

/-! ## A089809.P9274466715819251010

`A078796(n+1)-(n+1)`
-/

namespace A089809.P9274466715819251010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (n + 1) - (n + 1 : ℤ)

end

end A089809.P9274466715819251010

namespace A089809

/-- `A078796(n+1)-(n+1)` -/
def P9274466715819251010.Spec : Prop :=
  ∀ n, P9274466715819251010.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P11889237224471238816

`1-char[A005652(n+1)-1]`
-/

namespace A089809.P11889237224471238816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089809.P11889237224471238816

namespace A089809

/-- `1-char[A005652(n+1)-1]` -/
def P11889237224471238816.Spec : Prop :=
  ∀ n, P11889237224471238816.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P14610530757539252873

`1-A191329(2*(n+1))/2`
-/

namespace A089809.P14610530757539252873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A191329 (2 * (n + 1)) : ℚ) / 2

end

end A089809.P14610530757539252873

namespace A089809

/-- `1-A191329(2*(n+1))/2` -/
def P14610530757539252873.Spec : Prop :=
  ∀ n, P14610530757539252873.a n = (A089809 (n + 1) : ℚ)

end A089809

/-! ## A089809.P15346193895573871829

`A060576(A024569(n+1))`
-/

namespace A089809.P15346193895573871829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A024569 (n + 1)).toNat

end

end A089809.P15346193895573871829

namespace A089809

/-- `A060576(A024569(n+1))` -/
def P15346193895573871829.Spec : Prop :=
  ∀ n, P15346193895573871829.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P12210695826567626369

`A039982(A120867(n+1))`
-/

namespace A089809.P12210695826567626369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A120867 (n + 1)).toNat

end

end A089809.P12210695826567626369

namespace A089809

/-- `A039982(A120867(n+1))` -/
def P12210695826567626369.Spec : Prop :=
  ∀ n, P12210695826567626369.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P16434545402340133515

`A327174(A007067(n)+1)`
-/

namespace A089809.P16434545402340133515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (A007067 n + 1).toNat

end

end A089809.P16434545402340133515

namespace A089809

/-- `A327174(A007067(n)+1)` -/
def P16434545402340133515.Spec : Prop :=
  ∀ n, P16434545402340133515.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P15285754663836678440

`A000035(A195172(n+1)+1)`
-/

namespace A089809.P15285754663836678440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195172 (n + 1) + 1).toNat

end

end A089809.P15285754663836678440

namespace A089809

/-- `A000035(A195172(n+1)+1)` -/
def P15285754663836678440.Spec : Prop :=
  ∀ n, P15285754663836678440.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P13842690694119716660

`A387348(n+1)+A339824(n)`
-/

namespace A089809.P13842690694119716660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387348 (n + 1) + A339824 n

end

end A089809.P13842690694119716660

namespace A089809

/-- `A387348(n+1)+A339824(n)` -/
def P13842690694119716660.Spec : Prop :=
  ∀ n, P13842690694119716660.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P9904093995146807905

`A004956(n+1)-A007067(n+1)`
-/

namespace A089809.P9904093995146807905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1) - A007067 (n + 1)

end

end A089809.P9904093995146807905

namespace A089809

/-- `A004956(n+1)-A007067(n+1)` -/
def P9904093995146807905.Spec : Prop :=
  ∀ n, P9904093995146807905.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P2534598334434635066

`A026351(n+1)-A007067(n+1)`
-/

namespace A089809.P2534598334434635066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1) - A007067 (n + 1)

end

end A089809.P2534598334434635066

namespace A089809

/-- `A026351(n+1)-A007067(n+1)` -/
def P2534598334434635066.Spec : Prop :=
  ∀ n, P2534598334434635066.a n = A089809 (n + 1)

end A089809

/-! ## A089809.P16517597265785105883

`A000201(n+1)-A184656(n+1)`
-/

namespace A089809.P16517597265785105883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A184656 (n + 1)

end

end A089809.P16517597265785105883

namespace A089809

/-- `A000201(n+1)-A184656(n+1)` -/
def P16517597265785105883.Spec : Prop :=
  ∀ n, P16517597265785105883.a n = A089809 (n + 1)

end A089809

/-!
# A089810: Expansion of Jacobi theta function theta_3(Pi/6, q) in powers of q.

The programs for A089810, the canonical program `A089810.P10610905400910132793` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089810 has offset 0).

The definition of A089810 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089807, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089810.P14055065339000419183

`A204843(4*n)`
-/

namespace A089810.P14055065339000419183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (4 * n)

end

end A089810.P14055065339000419183

namespace A089810

/-- `A204843(4*n)` -/
def P14055065339000419183.Spec : Prop :=
  ∀ n, P14055065339000419183.a n = A089810 n

end A089810

/-! ## A089810.P10610905400910132793

`(-1)^n*A089807(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089810

/-- `(-1)^n*A089807(n)` -/
def P10610905400910132793.Spec : Prop :=
  ∀ n, P10610905400910132793.a n = A089810 n

theorem P10610905400910132793.correct : P10610905400910132793.Spec := by
  intro n
  simp only [A089810]

end A089810

/-! ## A089810.P4625745169881815683

`A204853(4*n)`
-/

namespace A089810.P4625745169881815683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 (4 * n)

end

end A089810.P4625745169881815683

namespace A089810

/-- `A204853(4*n)` -/
def P4625745169881815683.Spec : Prop :=
  ∀ n, P4625745169881815683.a n = A089810 n

end A089810

/-! ## A089810.P9651170248556016350

`(char[(n+1)²]+char[n²])*(-1)^n/(-2)^(∑[n]%3)`
-/

namespace A089810.P9651170248556016350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) * (-1) ^ n : ℚ) / ((-2) ^ ((∑ j ∈ Finset.range (n + 1), f3 j) % 3) : ℚ)

end

end A089810.P9651170248556016350

namespace A089810

/-- `(char[(n+1)²]+char[n²])*(-1)^n/(-2)^(∑[n]%3)` -/
def P9651170248556016350.Spec : Prop :=
  ∀ n, P9651170248556016350.a n = (A089810 n : ℚ)

end A089810

/-! ## A089810.P2485764304066205746

`(char[(n+1)²]+char[n²])/A132954(n)`
-/

namespace A089810.P2485764304066205746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℚ) / (A132954 n : ℚ)

end

end A089810.P2485764304066205746

namespace A089810

/-- `(char[(n+1)²]+char[n²])/A132954(n)` -/
def P2485764304066205746.Spec : Prop :=
  ∀ n, P2485764304066205746.a n = (A089810 n : ℚ)

end A089810

/-! ## A089810.P13863103668871300943

`A010052(n)*A100051(n)`
-/

namespace A089810.P13863103668871300943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n * A100051 n

end

end A089810.P13863103668871300943

namespace A089810

/-- `A010052(n)*A100051(n)` -/
def P13863103668871300943.Spec : Prop :=
  ∀ n, P13863103668871300943.a n = A089810 n

end A089810

/-! ## A089810.P16002993120984916534

`A089807(n)*A094267(n)`
-/

namespace A089810.P16002993120984916534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n * A094267 n

end

end A089810.P16002993120984916534

namespace A089810

/-- `A089807(n)*A094267(n)` -/
def P16002993120984916534.Spec : Prop :=
  ∀ n, P16002993120984916534.a n = A089810 n

end A089810

/-! ## A089810.P1335576694309297235

`A089807(n)*A115714(n)`
-/

namespace A089810.P1335576694309297235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n * A115714 n

end

end A089810.P1335576694309297235

namespace A089810

/-- `A089807(n)*A115714(n)` -/
def P1335576694309297235.Spec : Prop :=
  ∀ n, P1335576694309297235.a n = A089810 n

end A089810

/-! ## A089810.P6881362032311045490

`A089807(n)*A115953(n)`
-/

namespace A089810.P6881362032311045490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n * A115953 n

end

end A089810.P6881362032311045490

namespace A089810

/-- `A089807(n)*A115953(n)` -/
def P6881362032311045490.Spec : Prop :=
  ∀ n, P6881362032311045490.a n = A089810 n

end A089810

/-! ## A089810.P13037657080411593439

`A089807(n)*A137307(n)`
-/

namespace A089810.P13037657080411593439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n * A137307 n

end

end A089810.P13037657080411593439

namespace A089810

/-- `A089807(n)*A137307(n)` -/
def P13037657080411593439.Spec : Prop :=
  ∀ n, P13037657080411593439.a n = A089810 n

end A089810

/-! ## A089810.P2559238529025546483

`A089807(n)*A214507(n)`
-/

namespace A089810.P2559238529025546483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n * A214507 n

end

end A089810.P2559238529025546483

namespace A089810

/-- `A089807(n)*A214507(n)` -/
def P2559238529025546483.Spec : Prop :=
  ∀ n, P2559238529025546483.a n = A089810 n

end A089810

/-! ## A089810.P3394297168538843990

`A089807(n)*A219977(n)`
-/

namespace A089810.P3394297168538843990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n * A219977 n

end

end A089810.P3394297168538843990

namespace A089810

/-- `A089807(n)*A219977(n)` -/
def P3394297168538843990.Spec : Prop :=
  ∀ n, P3394297168538843990.a n = A089810 n

end A089810

/-! ## A089810.P11243331058310079537

`A089807(n)*A339265(n)`
-/

namespace A089810.P11243331058310079537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n * A339265 n

end

end A089810.P11243331058310079537

namespace A089810

/-- `A089807(n)*A339265(n)` -/
def P11243331058310079537.Spec : Prop :=
  ∀ n, P11243331058310079537.a n = A089810 n

end A089810

/-! ## A089810.P175165659185297127

`A000122(n)/A057079(n)`
-/

namespace A089810.P175165659185297127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n : ℚ) / (A057079 n : ℚ)

end

end A089810.P175165659185297127

namespace A089810

/-- `A000122(n)/A057079(n)` -/
def P175165659185297127.Spec : Prop :=
  ∀ n, P175165659185297127.a n = (A089810 n : ℚ)

end A089810

/-! ## A089810.P13914101368924486233

`A002448(n)/A131713(n)`
-/

namespace A089810.P13914101368924486233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 n : ℚ) / (A131713 n : ℚ)

end

end A089810.P13914101368924486233

namespace A089810

/-- `A002448(n)/A131713(n)` -/
def P13914101368924486233.Spec : Prop :=
  ∀ n, P13914101368924486233.a n = (A089810 n : ℚ)

end A089810

/-! ## A089810.P8436675785124311516

`A089807(n)*A112299(n+1)`
-/

namespace A089810.P8436675785124311516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n * A112299 (n + 1)

end

end A089810.P8436675785124311516

namespace A089810

/-- `A089807(n)*A112299(n+1)` -/
def P8436675785124311516.Spec : Prop :=
  ∀ n, P8436675785124311516.a n = A089810 n

end A089810

/-! ## A089810.P11107070551383226363

`A089807(n)*A209615(n+1)`
-/

namespace A089810.P11107070551383226363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n * A209615 (n + 1)

end

end A089810.P11107070551383226363

namespace A089810

/-- `A089807(n)*A209615(n+1)` -/
def P11107070551383226363.Spec : Prop :=
  ∀ n, P11107070551383226363.a n = A089810 n

end A089810

/-! ## A089810.P10897599575230370975

`A089807(n)*A309873(n+1)`
-/

namespace A089810.P10897599575230370975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n * A309873 (n + 1)

end

end A089810.P10897599575230370975

namespace A089810

/-- `A089807(n)*A309873(n+1)` -/
def P10897599575230370975.Spec : Prop :=
  ∀ n, P10897599575230370975.a n = A089810 n

end A089810

/-! ## A089810.P14718682184815198541

`A002448(n)/(2-A057079(n)²)`
-/

namespace A089810.P14718682184815198541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A089810.P14718682184815198541

namespace A089810

/-- `A002448(n)/(2-A057079(n)²)` -/
def P14718682184815198541.Spec : Prop :=
  ∀ n, P14718682184815198541.a n = (A089810 n : ℚ)

end A089810

/-! ## A089810.P8560721674188753928

`A000122(n)/(A128834(n+1)+A128834(n))`
-/

namespace A089810.P8560721674188753928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n : ℚ) / (A128834 (n + 1) + A128834 n : ℚ)

end

end A089810.P8560721674188753928

namespace A089810

/-- `A000122(n)/(A128834(n+1)+A128834(n))` -/
def P8560721674188753928.Spec : Prop :=
  ∀ n, P8560721674188753928.a n = (A089810 n : ℚ)

end A089810

/-!
# A089811: Expansion of Jacobi theta function (3*theta_4(q^18) - theta_4(q^2))/2.

The programs for A089811, the canonical program `A089811.P3805665720252983519` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089811 has offset 0).

The definition of A089811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1717 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089811.P1197455915243205863

`A204843(2*n)`
-/

namespace A089811.P1197455915243205863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (2 * n)

end

end A089811.P1197455915243205863

namespace A089811

/-- `A204843(2*n)` -/
def P1197455915243205863.Spec : Prop :=
  ∀ n, P1197455915243205863.a n = A089811 n

end A089811

/-! ## A089811.P2258457015410088958

`A204853(2*n)`
-/

namespace A089811.P2258457015410088958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 (2 * n)

end

end A089811.P2258457015410088958

namespace A089811

/-- `A204853(2*n)` -/
def P2258457015410088958.Spec : Prop :=
  ∀ n, P2258457015410088958.a n = A089811 n

end A089811

/-! ## A089811.P14143535086800608383

`A204843(n+n)%3`
-/

namespace A089811.P14143535086800608383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204843 (n + n)) 3

end

end A089811.P14143535086800608383

namespace A089811

/-- `A204843(n+n)%3` -/
def P14143535086800608383.Spec : Prop :=
  ∀ n, P14143535086800608383.a n = A089811 n

end A089811

/-! ## A089811.P9320106441656758352

`A089810(∑[-(n*(-1)^n)]+n)`
-/

namespace A089811.P9320106441656758352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A089811.P9320106441656758352

namespace A089811

/-- `A089810(∑[-(n*(-1)^n)]+n)` -/
def P9320106441656758352.Spec : Prop :=
  ∀ n, P9320106441656758352.a n = A089811 n

end A089811

/-! ## A089811.P8744855763285513721

`Δ[xor(2*n, n)]%2*A089810(2*n)`
-/

namespace A089811.P8744855763285513721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * A089810 (2 * n)

end

end A089811.P8744855763285513721

namespace A089811

/-- `Δ[xor(2*n, n)]%2*A089810(2*n)` -/
def P8744855763285513721.Spec : Prop :=
  ∀ n, P8744855763285513721.a n = A089811 n

end A089811

/-! ## A089811.P534546903952876644

`A089810(((2*n)^3)%(4*n+1))%3`
-/

namespace A089811.P534546903952876644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089810 ((2 * n) ^ 3 % (4 * n + 1))) 3

end

end A089811.P534546903952876644

namespace A089811

/-- `A089810(((2*n)^3)%(4*n+1))%3` -/
def P534546903952876644.Spec : Prop :=
  ∀ n, P534546903952876644.a n = A089811 n

end A089811

/-! ## A089811.P10880133251744053101

`A089810(A014682(n))%10`
-/

namespace A089811.P10880133251744053101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089810 (A014682 n).toNat) 10

end

end A089811.P10880133251744053101

namespace A089811

/-- `A089810(A014682(n))%10` -/
def P10880133251744053101.Spec : Prop :=
  ∀ n, P10880133251744053101.a n = A089811 n

end A089811

/-! ## A089811.P3805665720252983519

`A089798(n)/A132419(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A089811

/-- `A089798(n)/A132419(n)` -/
def P3805665720252983519.Spec : Prop :=
  ∀ n, P3805665720252983519.a n = (A089811 n : ℚ)

end A089811

/-! ## A089811.P4831424235523973471

`A089798(n)/A061347(n+1)`
-/

namespace A089811.P4831424235523973471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089798 n : ℚ) / (A061347 (n + 1) : ℚ)

end

end A089811.P4831424235523973471

namespace A089811

/-- `A089798(n)/A061347(n+1)` -/
def P4831424235523973471.Spec : Prop :=
  ∀ n, P4831424235523973471.a n = (A089811 n : ℚ)

end A089811

/-! ## A089811.P13021340522390031401

`A089798(n)/A163659(n+1)`
-/

namespace A089811.P13021340522390031401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089798 n : ℚ) / (A163659 (n + 1) : ℚ)

end

end A089811.P13021340522390031401

namespace A089811

/-- `A089798(n)/A163659(n+1)` -/
def P13021340522390031401.Spec : Prop :=
  ∀ n, P13021340522390031401.a n = (A089811 n : ℚ)

end A089811

/-! ## A089811.P10688155605769258075

`A089798(n)/A195587(n+1)`
-/

namespace A089811.P10688155605769258075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089798 n : ℚ) / (A195587 (n + 1) : ℚ)

end

end A089811.P10688155605769258075

namespace A089811

/-- `A089798(n)/A195587(n+1)` -/
def P10688155605769258075.Spec : Prop :=
  ∀ n, P10688155605769258075.a n = (A089811 n : ℚ)

end A089811

/-! ## A089811.P10933467979198929063

`A089798(n)/A237649(n+1)`
-/

namespace A089811.P10933467979198929063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089798 n : ℚ) / (A237649 (n + 1) : ℚ)

end

end A089811.P10933467979198929063

namespace A089811

/-- `A089798(n)/A237649(n+1)` -/
def P10933467979198929063.Spec : Prop :=
  ∀ n, P10933467979198929063.a n = (A089811 n : ℚ)

end A089811

/-! ## A089811.P14220069751237145079

`A087960(n)*A089807(2*n)`
-/

namespace A089811.P14220069751237145079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A089807 (2 * n)

end

end A089811.P14220069751237145079

namespace A089811

/-- `A087960(n)*A089807(2*n)` -/
def P14220069751237145079.Spec : Prop :=
  ∀ n, P14220069751237145079.a n = A089811 n

end A089811

/-! ## A089811.P10463715630465019697

`A087960(n)*A089810(2*n)`
-/

namespace A089811.P10463715630465019697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A089810 (2 * n)

end

end A089811.P10463715630465019697

namespace A089811

/-- `A087960(n)*A089810(2*n)` -/
def P10463715630465019697.Spec : Prop :=
  ∀ n, P10463715630465019697.a n = A089811 n

end A089811

/-! ## A089811.P643468482823544466

`A089807(2*n)*A214507(n)`
-/

namespace A089811.P643468482823544466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 (2 * n) * A214507 n

end

end A089811.P643468482823544466

namespace A089811

/-- `A089807(2*n)*A214507(n)` -/
def P643468482823544466.Spec : Prop :=
  ∀ n, P643468482823544466.a n = A089811 n

end A089811

/-! ## A089811.P16446348827774980103

`A089810(2*n)*A214507(n)`
-/

namespace A089811.P16446348827774980103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (2 * n) * A214507 n

end

end A089811.P16446348827774980103

namespace A089811

/-- `A089810(2*n)*A214507(n)` -/
def P16446348827774980103.Spec : Prop :=
  ∀ n, P16446348827774980103.a n = A089811 n

end A089811

/-! ## A089811.P9902010875880096133

`A089807(2*n)*A112299(n+1)`
-/

namespace A089811.P9902010875880096133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 (2 * n) * A112299 (n + 1)

end

end A089811.P9902010875880096133

namespace A089811

/-- `A089807(2*n)*A112299(n+1)` -/
def P9902010875880096133.Spec : Prop :=
  ∀ n, P9902010875880096133.a n = A089811 n

end A089811

/-! ## A089811.P18171209000290053528

`A089807(2*n)*A209615(n+1)`
-/

namespace A089811.P18171209000290053528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 (2 * n) * A209615 (n + 1)

end

end A089811.P18171209000290053528

namespace A089811

/-- `A089807(2*n)*A209615(n+1)` -/
def P18171209000290053528.Spec : Prop :=
  ∀ n, P18171209000290053528.a n = A089811 n

end A089811

/-! ## A089811.P1933237474570338235

`A089807(2*n)*A089807(A050605(n))`
-/

namespace A089811.P1933237474570338235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 (2 * n) * A089807 (A050605 n).toNat

end

end A089811.P1933237474570338235

namespace A089811

/-- `A089807(2*n)*A089807(A050605(n))` -/
def P1933237474570338235.Spec : Prop :=
  ∀ n, P1933237474570338235.a n = A089811 n

end A089811

/-!
# A089812: Expansion of Jacobi theta function q^(-1/8) * (theta_2(q^(1/2)) - 3 * theta_2(q^(9/2))) / 2 in powers of q.

The programs for A089812, the canonical program `A089812.P18210242556349192129` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089812 has offset 0).

The definition of A089812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089812.P18210242556349192129

`A010052(8*n+1)*(1-3*n%3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089812

/-- `A010052(8*n+1)*(1-3*n%3)` -/
def P18210242556349192129.Spec : Prop :=
  ∀ n, P18210242556349192129.a n = A089812 n

theorem P18210242556349192129.correct : P18210242556349192129.Spec := by
  intro n
  simp only [A089812]

end A089812

/-! ## A089812.P1408215763310769410

`Δ[(round(sqrt(2*n))+1)%3]`
-/

namespace A089812.P1408215763310769410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089812.P1408215763310769410

namespace A089812

/-- `Δ[(round(sqrt(2*n))+1)%3]` -/
def P1408215763310769410.Spec : Prop :=
  ∀ n, P1408215763310769410.a n = A089812 n

end A089812

/-! ## A089812.P8254954094998374316

`(-2)^(∑[n]%3)*char[∑[n]]`
-/

namespace A089812.P8254954094998374316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089812.P8254954094998374316

namespace A089812

/-- `(-2)^(∑[n]%3)*char[∑[n]]` -/
def P8254954094998374316.Spec : Prop :=
  ∀ n, P8254954094998374316.a n = A089812 n

end A089812

/-! ## A089812.P2496548754063403762

`A263501(n)%3`
-/

namespace A089812.P2496548754063403762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263501 n) 3

end

end A089812.P2496548754063403762

namespace A089812

/-- `A263501(n)%3` -/
def P2496548754063403762.Spec : Prop :=
  ∀ n, P2496548754063403762.a n = A089812 n

end A089812

/-! ## A089812.P10049767854514487035

`char[∑[n]]*A131713(n)`
-/

namespace A089812.P10049767854514487035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A131713 n

end

end A089812.P10049767854514487035

namespace A089812

/-- `char[∑[n]]*A131713(n)` -/
def P10049767854514487035.Spec : Prop :=
  ∀ n, P10049767854514487035.a n = A089812 n

end A089812

/-! ## A089812.P14872349829035468609

`Δ[A102283(round(sqrt(2*n)))]`
-/

namespace A089812.P14872349829035468609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089812.P14872349829035468609

namespace A089812

/-- `Δ[A102283(round(sqrt(2*n)))]` -/
def P14872349829035468609.Spec : Prop :=
  ∀ n, P14872349829035468609.a n = A089812 n

end A089812

/-! ## A089812.P6231438416364953241

`(xor(n, char[∑[n]])-n)*A133988(n)`
-/

namespace A089812.P6231438416364953241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (if ∃ j, f1 j = n then 1 else 0) : ℤ) - (n : ℤ)) * A133988 n

end

end A089812.P6231438416364953241

namespace A089812

/-- `(xor(n, char[∑[n]])-n)*A133988(n)` -/
def P6231438416364953241.Spec : Prop :=
  ∀ n, P6231438416364953241.a n = A089812 n

end A089812

/-! ## A089812.P8078303863316886875

`A098554(A198954(n))`
-/

namespace A089812.P8078303863316886875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098554 (A198954 n).toNat

end

end A089812.P8078303863316886875

namespace A089812

/-- `A098554(A198954(n))` -/
def P8078303863316886875.Spec : Prop :=
  ∀ n, P8078303863316886875.a n = A089812 n

end A089812

/-! ## A089812.P14201474040276465316

`A057079(n)*A106459(n)`
-/

namespace A089812.P14201474040276465316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A106459 n

end

end A089812.P14201474040276465316

namespace A089812

/-- `A057079(n)*A106459(n)` -/
def P14201474040276465316.Spec : Prop :=
  ∀ n, P14201474040276465316.a n = A089812 n

end A089812

/-! ## A089812.P9368438944064537455

`A033999(n)*A133988(n)`
-/

namespace A089812.P9368438944064537455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133988 n

end

end A089812.P9368438944064537455

namespace A089812

/-- `A033999(n)*A133988(n)` -/
def P9368438944064537455.Spec : Prop :=
  ∀ n, P9368438944064537455.a n = A089812 n

end A089812

/-! ## A089812.P18239528295771616570

`A106459(n)*A132954(n)`
-/

namespace A089812.P18239528295771616570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n * A132954 n

end

end A089812.P18239528295771616570

namespace A089812

/-- `A106459(n)*A132954(n)` -/
def P18239528295771616570.Spec : Prop :=
  ∀ n, P18239528295771616570.a n = A089812 n

end A089812

/-! ## A089812.P5343197589667449155

`A106459(n)*A133988(n)`
-/

namespace A089812.P5343197589667449155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n * A133988 n

end

end A089812.P5343197589667449155

namespace A089812

/-- `A106459(n)*A133988(n)` -/
def P5343197589667449155.Spec : Prop :=
  ∀ n, P5343197589667449155.a n = A089812 n

end A089812

/-! ## A089812.P5780486200205242269

`A108086(n)*A133988(n)`
-/

namespace A089812.P5780486200205242269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n * A133988 n

end

end A089812.P5780486200205242269

namespace A089812

/-- `A108086(n)*A133988(n)` -/
def P5780486200205242269.Spec : Prop :=
  ∀ n, P5780486200205242269.a n = A089812 n

end A089812

/-! ## A089812.P119355895345290443

`A130777(n)*A133988(n)`
-/

namespace A089812.P119355895345290443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 n * A133988 n

end

end A089812.P119355895345290443

namespace A089812

/-- `A130777(n)*A133988(n)` -/
def P119355895345290443.Spec : Prop :=
  ∀ n, P119355895345290443.a n = A089812 n

end A089812

/-! ## A089812.P1702271468594351871

`A089799(n)/A131756(n)`
-/

namespace A089812.P1702271468594351871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089799 n : ℚ) / (A131756 n : ℚ)

end

end A089812.P1702271468594351871

namespace A089812

/-- `A089799(n)/A131756(n)` -/
def P1702271468594351871.Spec : Prop :=
  ∀ n, P1702271468594351871.a n = (A089812 n : ℚ)

end A089812

/-! ## A089812.P16593765449743305290

`A133988(n)*A204172(n+1)`
-/

namespace A089812.P16593765449743305290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133988 n * A204172 (n + 1)

end

end A089812.P16593765449743305290

namespace A089812

/-- `A133988(n)*A204172(n+1)` -/
def P16593765449743305290.Spec : Prop :=
  ∀ n, P16593765449743305290.a n = A089812 n

end A089812

/-! ## A089812.P14451467101844270955

`(2-A057079(n)²)*A010054(n)`
-/

namespace A089812.P14451467101844270955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A010054 n

end

end A089812.P14451467101844270955

namespace A089812

/-- `(2-A057079(n)²)*A010054(n)` -/
def P14451467101844270955.Spec : Prop :=
  ∀ n, P14451467101844270955.a n = A089812 n

end A089812

/-! ## A089812.P6739189275915349817

`(2-A132954(n)²)*A010054(n)`
-/

namespace A089812.P6739189275915349817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A010054 n

end

end A089812.P6739189275915349817

namespace A089812

/-- `(2-A132954(n)²)*A010054(n)` -/
def P6739189275915349817.Spec : Prop :=
  ∀ n, P6739189275915349817.a n = A089812 n

end A089812

/-! ## A089812.P176981444463633776

`ratio[A057077(n)]*A133988(n)`
-/

namespace A089812.P176981444463633776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A133988 n : ℚ)

end

end A089812.P176981444463633776

namespace A089812

/-- `ratio[A057077(n)]*A133988(n)` -/
def P176981444463633776.Spec : Prop :=
  ∀ n, P176981444463633776.a n = (A089812 n : ℚ)

end A089812

/-! ## A089812.P14963229718066302852

`A089813(2*n)`
-/

namespace A089812.P14963229718066302852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089813 (2 * n)

end

end A089812.P14963229718066302852

namespace A089812

/-- `A089813(2*n)` -/
def P14963229718066302852.Spec : Prop :=
  ∀ n, P14963229718066302852.a n = A089812 n

end A089812

/-!
# A089813: Expansion of Jacobi theta function (theta_2(q) - 3*theta_2(q^9))/(2 q^(1/4)) in powers of q.

The programs for A089813, the canonical program `A089813.P17051657947873600064` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089813 has offset 0).

The definition of A089813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089813.P10170741665435275407

`Δ[(round(sqrt(n))+1)%3]`
-/

namespace A089813.P10170741665435275407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089813.P10170741665435275407

namespace A089813

/-- `Δ[(round(sqrt(n))+1)%3]` -/
def P10170741665435275407.Spec : Prop :=
  ∀ n, P10170741665435275407.a n = A089813 n

end A089813

/-! ## A089813.P616182729286674009

`Δ[A102283(round(sqrt(n)))]`
-/

namespace A089813.P616182729286674009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089813.P616182729286674009

namespace A089813

/-- `Δ[A102283(round(sqrt(n)))]` -/
def P616182729286674009.Spec : Prop :=
  ∀ n, P616182729286674009.a n = A089813 n

end A089813

/-! ## A089813.P11050683268129899632

`Δ[round(sqrt(n))]*A101675(n)`
-/

namespace A089813.P11050683268129899632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A101675 n

end

end A089813.P11050683268129899632

namespace A089813

/-- `Δ[round(sqrt(n))]*A101675(n)` -/
def P11050683268129899632.Spec : Prop :=
  ∀ n, P11050683268129899632.a n = A089813 n

end A089813

/-! ## A089813.P632911988122911330

`char[∑[2*n]]*A100219(n)`
-/

namespace A089813.P632911988122911330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A100219 n

end

end A089813.P632911988122911330

namespace A089813

/-- `char[∑[2*n]]*A100219(n)` -/
def P632911988122911330.Spec : Prop :=
  ∀ n, P632911988122911330.a n = A089813 n

end A089813

/-! ## A089813.P17978281264739617793

`char[∑[2*n]]*A061347(n+1)`
-/

namespace A089813.P17978281264739617793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A061347 (n + 1)

end

end A089813.P17978281264739617793

namespace A089813

/-- `char[∑[2*n]]*A061347(n+1)` -/
def P17978281264739617793.Spec : Prop :=
  ∀ n, P17978281264739617793.a n = A089813 n

end A089813

/-! ## A089813.P6774199571385502893

`A098554(A245552(n+1))`
-/

namespace A089813.P6774199571385502893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098554 (A245552 (n + 1)).toNat

end

end A089813.P6774199571385502893

namespace A089813

/-- `A098554(A245552(n+1))` -/
def P6774199571385502893.Spec : Prop :=
  ∀ n, P6774199571385502893.a n = A089813 n

end A089813

/-! ## A089813.P17051657947873600064

`A005369(n)*A079757(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089813

/-- `A005369(n)*A079757(n)` -/
def P17051657947873600064.Spec : Prop :=
  ∀ n, P17051657947873600064.a n = A089813 n

theorem P17051657947873600064.correct : P17051657947873600064.Spec := by
  intro n
  simp only [A089813]

end A089813

/-! ## A089813.P17346400992472139548

`A005369(n)*A101676(n)`
-/

namespace A089813.P17346400992472139548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A101676 n

end

end A089813.P17346400992472139548

namespace A089813

/-- `A005369(n)*A101676(n)` -/
def P17346400992472139548.Spec : Prop :=
  ∀ n, P17346400992472139548.a n = A089813 n

end A089813

/-! ## A089813.P5358650967499897397

`A005369(n)*A117188(n)`
-/

namespace A089813.P5358650967499897397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A117188 n

end

end A089813.P5358650967499897397

namespace A089813

/-- `A005369(n)*A117188(n)` -/
def P5358650967499897397.Spec : Prop :=
  ∀ n, P5358650967499897397.a n = A089813 n

end A089813

/-! ## A089813.P8420004516723613775

`A005369(n)*A132419(n)`
-/

namespace A089813.P8420004516723613775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A132419 n

end

end A089813.P8420004516723613775

namespace A089813

/-- `A005369(n)*A132419(n)` -/
def P8420004516723613775.Spec : Prop :=
  ∀ n, P8420004516723613775.a n = A089813 n

end A089813

/-! ## A089813.P7979722938569651614

`A079757(n)*A127693(n)`
-/

namespace A089813.P7979722938569651614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079757 n * A127693 n

end

end A089813.P7979722938569651614

namespace A089813

/-- `A079757(n)*A127693(n)` -/
def P7979722938569651614.Spec : Prop :=
  ∀ n, P7979722938569651614.a n = A089813 n

end A089813

/-! ## A089813.P3480646590348655031

`A100219(n)*A127693(n)`
-/

namespace A089813.P3480646590348655031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100219 n * A127693 n

end

end A089813.P3480646590348655031

namespace A089813

/-- `A100219(n)*A127693(n)` -/
def P3480646590348655031.Spec : Prop :=
  ∀ n, P3480646590348655031.a n = A089813 n

end A089813

/-! ## A089813.P16533149092913157486

`A101676(n)*A127693(n)`
-/

namespace A089813.P16533149092913157486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101676 n * A127693 n

end

end A089813.P16533149092913157486

namespace A089813

/-- `A101676(n)*A127693(n)` -/
def P16533149092913157486.Spec : Prop :=
  ∀ n, P16533149092913157486.a n = A089813 n

end A089813

/-! ## A089813.P12116475211313829981

`A117188(n)*A127693(n)`
-/

namespace A089813.P12116475211313829981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 n * A127693 n

end

end A089813.P12116475211313829981

namespace A089813

/-- `A117188(n)*A127693(n)` -/
def P12116475211313829981.Spec : Prop :=
  ∀ n, P12116475211313829981.a n = A089813 n

end A089813

/-! ## A089813.P12309513999284251434

`A079757(n)*A214960(n)`
-/

namespace A089813.P12309513999284251434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079757 n * A214960 n

end

end A089813.P12309513999284251434

namespace A089813

/-- `A079757(n)*A214960(n)` -/
def P12309513999284251434.Spec : Prop :=
  ∀ n, P12309513999284251434.a n = A089813 n

end A089813

/-! ## A089813.P4861315382750162119

`A100219(n)*A214960(n)`
-/

namespace A089813.P4861315382750162119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100219 n * A214960 n

end

end A089813.P4861315382750162119

namespace A089813

/-- `A100219(n)*A214960(n)` -/
def P4861315382750162119.Spec : Prop :=
  ∀ n, P4861315382750162119.a n = A089813 n

end A089813

/-! ## A089813.P16942001332218622428

`A101676(n)*A214960(n)`
-/

namespace A089813.P16942001332218622428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101676 n * A214960 n

end

end A089813.P16942001332218622428

namespace A089813

/-- `A101676(n)*A214960(n)` -/
def P16942001332218622428.Spec : Prop :=
  ∀ n, P16942001332218622428.a n = A089813 n

end A089813

/-! ## A089813.P15414097957118651976

`A117188(n)*A214960(n)`
-/

namespace A089813.P15414097957118651976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 n * A214960 n

end

end A089813.P15414097957118651976

namespace A089813

/-- `A117188(n)*A214960(n)` -/
def P15414097957118651976.Spec : Prop :=
  ∀ n, P15414097957118651976.a n = A089813 n

end A089813

/-! ## A089813.P8992566184214806487

`A089800(n)/A087204(n)`
-/

namespace A089813.P8992566184214806487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089800 n : ℚ) / (A087204 n : ℚ)

end

end A089813.P8992566184214806487

namespace A089813

/-- `A089800(n)/A087204(n)` -/
def P8992566184214806487.Spec : Prop :=
  ∀ n, P8992566184214806487.a n = (A089813 n : ℚ)

end A089813

/-! ## A089813.P3241490604530903675

`A005369(n)*A163659(n+1)`
-/

namespace A089813.P3241490604530903675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A163659 (n + 1)

end

end A089813.P3241490604530903675

namespace A089813

/-- `A005369(n)*A163659(n+1)` -/
def P3241490604530903675.Spec : Prop :=
  ∀ n, P3241490604530903675.a n = A089813 n

end A089813

/-!
# A089814: Expansion of Product_{k>=1} (1 - q^(10k-5))^2.

The programs for A089814, there is no canonical definition to state claims against.
-/

/-! ## A089814.P8717791072456890124

`A112166(A047248(n+1))`
-/

namespace A089814.P8717791072456890124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 (A047248 (n + 1)).toNat

end

end A089814.P8717791072456890124

/-! ## A089814.P1125340613357023790

`A112167(A047248(char[1]+1+n))`
-/

namespace A089814.P1125340613357023790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 (A047248 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat

end

end A089814.P1125340613357023790

/-! ## A089814.P9760977769829124737

`A112166(ceil(n²/A090771(n+1)+n))`
-/

namespace A089814.P9760977769829124737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 ⌈(n ^ 2 : ℚ) / (A090771 (n + 1) : ℚ) + (n : ℚ)⌉.toNat

end

end A089814.P9760977769829124737

/-! ## A089814.P12022757809299973422

`A112167(A076312(2*n)+n)`
-/

namespace A089814.P12022757809299973422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 (A076312 (2 * n) + (n : ℤ)).toNat

end

end A089814.P12022757809299973422

/-! ## A089814.P7629130750055556827

`A112167(A076312(12*n))`
-/

namespace A089814.P7629130750055556827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 (A076312 (12 * n)).toNat

end

end A089814.P7629130750055556827

/-!
# A089815: a(n) = floor((n+2)^(n+2)/((n+2)^2-1)).

The programs for A089815, the canonical program `A089815.P12558201237276849353` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089815 has offset 0).

The definition of A089815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)^(n+2)/((n+2)²-1))` (program `A089815.P12558201237276849353`, by `A089815.P12558201237276849353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089815.P12558201237276849353

`floor((n+2)^(n+2)/((n+2)²-1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089815

/-- `floor((n+2)^(n+2)/((n+2)²-1))` -/
def P12558201237276849353.Spec : Prop :=
  ∀ n, P12558201237276849353.a n = A089815 n

theorem P12558201237276849353.correct : P12558201237276849353.Spec := by
  intro n
  simp only [A089815]

end A089815

/-! ## A089815.P2433352868138498168

`record[A215159(n)]/(n+1)`
-/

namespace A089815.P2433352868138498168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215159 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A089815.P2433352868138498168

namespace A089815

/-- `record[A215159(n)]/(n+1)` -/
def P2433352868138498168.Spec : Prop :=
  ∀ n, P2433352868138498168.a n = (A089815 n : ℚ)

end A089815

/-! ## A089815.P4763372407406748751

`A215159(n+2)/(n+1)`
-/

namespace A089815.P4763372407406748751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215159 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A089815.P4763372407406748751

namespace A089815

/-- `A215159(n+2)/(n+1)` -/
def P4763372407406748751.Spec : Prop :=
  ∀ n, P4763372407406748751.a n = (A089815 n : ℚ)

end A089815

/-! ## A089815.P18421627305132374353

`round(A023037(n+2)/(n+3))`
-/

namespace A089815.P18421627305132374353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023037 (n + 2) : ℚ) / (n + 3 : ℚ))

end

end A089815.P18421627305132374353

namespace A089815

/-- `round(A023037(n+2)/(n+3))` -/
def P18421627305132374353.Spec : Prop :=
  ∀ n, P18421627305132374353.a n = A089815 n

end A089815

/-! ## A089815.P9511919751926725711

`record[floor(n^n/(n+1))]/(n+1)`
-/

namespace A089815.P9511919751926725711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ n : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A089815.P9511919751926725711

namespace A089815

/-- `record[floor(n^n/(n+1))]/(n+1)` -/
def P9511919751926725711.Spec : Prop :=
  ∀ n, P9511919751926725711.a n = (A089815 n : ℚ)

end A089815

/-!
# A089816: a(n) = floor((n+3)^(n+2)/((n+3)^2-1)).

The programs for A089816, the canonical program `A089816.P17429098013946811960` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089816 has offset 0).

The definition of A089816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+3)^(n+2)/((n+3)²-1))` (program `A089816.P17429098013946811960`, by `A089816.P17429098013946811960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089816.P17429098013946811960

`floor((n+3)^(n+2)/((n+3)²-1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089816

/-- `floor((n+3)^(n+2)/((n+3)²-1))` -/
def P17429098013946811960.Spec : Prop :=
  ∀ n, P17429098013946811960.a n = A089816 n

theorem P17429098013946811960.correct : P17429098013946811960.Spec := by
  intro n
  simp only [A089816]

end A089816

/-! ## A089816.P9409897778477898469

`round(A083062(n+2)/(n+2))`
-/

namespace A089816.P9409897778477898469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083062 (n + 2) : ℚ) / (n + 2 : ℚ))

end

end A089816.P9409897778477898469

namespace A089816

/-- `round(A083062(n+2)/(n+2))` -/
def P9409897778477898469.Spec : Prop :=
  ∀ n, P9409897778477898469.a n = A089816 n

end A089816

/-! ## A089816.P13079474977765359485

`A059848(A084849(n+2)+n)`
-/

namespace A089816.P13079474977765359485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059848 (A084849 (n + 2) + (n : ℤ)).toNat

end

end A089816.P13079474977765359485

namespace A089816

/-- `A059848(A084849(n+2)+n)` -/
def P13079474977765359485.Spec : Prop :=
  ∀ n, P13079474977765359485.a n = A089816 n

end A089816

/-! ## A089816.P17309500509570277823

`A059848(A046691(2*n+3)-n)`
-/

namespace A089816.P17309500509570277823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059848 (A046691 (2 * n + 3) - (n : ℤ)).toNat

end

end A089816.P17309500509570277823

namespace A089816

/-- `A059848(A046691(2*n+3)-n)` -/
def P17309500509570277823.Spec : Prop :=
  ∀ n, P17309500509570277823.a n = A089816 n

end A089816

/-! ## A089816.P6419431228087226021

`A059848(A140144(2*n+3)+A002378(n+2))`
-/

namespace A089816.P6419431228087226021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059848 (A140144 (2 * n + 3) + A002378 (n + 2)).toNat

end

end A089816.P6419431228087226021

namespace A089816

/-- `A059848(A140144(2*n+3)+A002378(n+2))` -/
def P6419431228087226021.Spec : Prop :=
  ∀ n, P6419431228087226021.a n = A089816 n

end A089816

/-!
# A089817: a(n) = 5*a(n-1) - a(n-2) + 1 with a(0)=1, a(1)=6.

The programs for A089817, the canonical program `A089817.P11210339008094989033` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089817 has offset 0).

The definition of A089817 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)+1` (program `A089817.P11210339008094989033`, by `A089817.P11210339008094989033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089817.P7830514541067107232

`ogf(1/(1-6x+6x^2-x^3))`
-/

namespace A089817.P7830514541067107232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 6, -1] n

end

end A089817.P7830514541067107232

namespace A089817

/-- `ogf(1/(1-6x+6x^2-x^3))` -/
def P7830514541067107232.Spec : Prop :=
  ∀ n, P7830514541067107232.a n = A089817 n

end A089817

/-! ## A089817.P11210339008094989033

`5*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089817

/-- `5*a(n-1)-a(n-2)+1` -/
def P11210339008094989033.Spec : Prop :=
  ∀ n, P11210339008094989033.a n = A089817 n

theorem P11210339008094989033.correct : P11210339008094989033.Spec := by
  intro n
  simp only [A089817]

end A089817

/-! ## A089817.P10523017110468491558

`∑[ogf(1/(1-5x+x^2))]`
-/

namespace A089817.P10523017110468491558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089817.P10523017110468491558

namespace A089817

/-- `∑[ogf(1/(1-5x+x^2))]` -/
def P10523017110468491558.Spec : Prop :=
  ∀ n, P10523017110468491558.a n = A089817 n

end A089817

/-! ## A089817.P6721177759228699880

`∑[5*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A089817.P6721177759228699880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  5 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089817.P6721177759228699880

namespace A089817

/-- `∑[5*a(n-1)-a(n-2)]` -/
def P6721177759228699880.Spec : Prop :=
  ∀ n, P6721177759228699880.a n = A089817 n

end A089817

/-! ## A089817.P17052555965693104361

`5*a(n-1)+1-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A089817.P17052555965693104361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 * a (n - 1) + 1 - a (n - 2)

end

end A089817.P17052555965693104361

namespace A089817

/-- `5*a(n-1)+1-a(n-2)` -/
def P17052555965693104361.Spec : Prop :=
  ∀ n, P17052555965693104361.a n = A089817 n

theorem P17052555965693104361.correct : P17052555965693104361.Spec := by
  intro n
  simp only [A089817, Nat.add_sub_cancel, A089817.P17052555965693104361.a, A089817.P11210339008094989033.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A089817

/-! ## A089817.P16113085326142587485

`1-(a(n-2)-5*a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A089817.P16113085326142587485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  1 - (a (n - 2) - 5 * a (n - 1))

end

end A089817.P16113085326142587485

namespace A089817

/-- `1-(a(n-2)-5*a(n-1))` -/
def P16113085326142587485.Spec : Prop :=
  ∀ n, P16113085326142587485.a n = A089817 n

end A089817

/-! ## A089817.P3175573048690155456

`∑[A004254(n+1)]`
-/

namespace A089817.P3175573048690155456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089817.P3175573048690155456

namespace A089817

/-- `∑[A004254(n+1)]` -/
def P3175573048690155456.Spec : Prop :=
  ∀ n, P3175573048690155456.a n = A089817 n

end A089817

/-! ## A089817.P2673157433060986864

`∑[A290902(n)/3]`
-/

namespace A089817.P2673157433060986864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290902 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089817.P2673157433060986864

namespace A089817

/-- `∑[A290902(n)/3]` -/
def P2673157433060986864.Spec : Prop :=
  ∀ n, P2673157433060986864.a n = (A089817 n : ℚ)

end A089817

/-! ## A089817.P17219427523128641134

`∑[∑[A004253(n+1)]]`
-/

namespace A089817.P17219427523128641134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089817.P17219427523128641134

namespace A089817

/-- `∑[∑[A004253(n+1)]]` -/
def P17219427523128641134.Spec : Prop :=
  ∀ n, P17219427523128641134.a n = A089817 n

end A089817

/-! ## A089817.P15121584528569155827

`∑[A136211(2*n+1)]`
-/

namespace A089817.P15121584528569155827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089817.P15121584528569155827

namespace A089817

/-- `∑[A136211(2*n+1)]` -/
def P15121584528569155827.Spec : Prop :=
  ∀ n, P15121584528569155827.a n = A089817 n

end A089817

/-! ## A089817.P7140365939320617924

`∑[∑[abs(A101463(2*n))]]`
-/

namespace A089817.P7140365939320617924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101463 (2 * n)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089817.P7140365939320617924

namespace A089817

/-- `∑[∑[abs(A101463(2*n))]]` -/
def P7140365939320617924.Spec : Prop :=
  ∀ n, P7140365939320617924.a n = A089817 n

end A089817

/-! ## A089817.P9985362146937982096

`(A101368(n+3)-1)/2`
-/

namespace A089817.P9985362146937982096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101368 (n + 3) - 1 : ℚ) / 2

end

end A089817.P9985362146937982096

namespace A089817

/-- `(A101368(n+3)-1)/2` -/
def P9985362146937982096.Spec : Prop :=
  ∀ n, P9985362146937982096.a n = (A089817 n : ℚ)

end A089817

/-! ## A089817.P7103825803994299094

`A054493(n)-a(n-1)` with `a(0)=1`
-/

namespace A089817.P7103825803994299094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054493 n - a (n - 1)

end

end A089817.P7103825803994299094

namespace A089817

/-- `A054493(n)-a(n-1)` -/
def P7103825803994299094.Spec : Prop :=
  ∀ n, P7103825803994299094.a n = A089817 n

end A089817

/-! ## A089817.P14785557260439496627

`∑[∑[A136210(2*n+1)]]`
-/

namespace A089817.P14785557260439496627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136210 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089817.P14785557260439496627

namespace A089817

/-- `∑[∑[A136210(2*n+1)]]` -/
def P14785557260439496627.Spec : Prop :=
  ∀ n, P14785557260439496627.a n = A089817 n

end A089817

/-! ## A089817.P6280662184387798446

`∑[∑[A217787(3*(n+1))]]`
-/

namespace A089817.P6280662184387798446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089817.P6280662184387798446

namespace A089817

/-- `∑[∑[A217787(3*(n+1))]]` -/
def P6280662184387798446.Spec : Prop :=
  ∀ n, P6280662184387798446.a n = A089817 n

end A089817

/-! ## A089817.P10961885110622416940

`∑[Δ[A101368(n+2)]/2]`
-/

namespace A089817.P10961885110622416940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089817.P10961885110622416940

namespace A089817

/-- `∑[Δ[A101368(n+2)]/2]` -/
def P10961885110622416940.Spec : Prop :=
  ∀ n, P10961885110622416940.a n = (A089817 n : ℚ)

end A089817

/-! ## A089817.P14258594390344874844

`A030221(n)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A089817.P14258594390344874844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A030221 n + a (n - 2)

end

end A089817.P14258594390344874844

namespace A089817

/-- `A030221(n)+a(n-2)` -/
def P14258594390344874844.Spec : Prop :=
  ∀ n, P14258594390344874844.a n = A089817 n

end A089817

/-! ## A089817.P5960713468113618636

`∑[2*A099025(n)]-A099025(n)`
-/

namespace A089817.P5960713468113618636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099025 n

end

end A089817.P5960713468113618636

namespace A089817

/-- `∑[2*A099025(n)]-A099025(n)` -/
def P5960713468113618636.Spec : Prop :=
  ∀ n, P5960713468113618636.a n = A089817 n

end A089817

/-! ## A089817.P18285532251826964625

`A002310(n+1)-A101368(n+2)`
-/

namespace A089817.P18285532251826964625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 (n + 1) - A101368 (n + 2)

end

end A089817.P18285532251826964625

namespace A089817

/-- `A002310(n+1)-A101368(n+2)` -/
def P18285532251826964625.Spec : Prop :=
  ∀ n, P18285532251826964625.a n = A089817 n

end A089817

/-! ## A089817.P15597149450245652740

`A004253(n+2)-A101368(n+3)`
-/

namespace A089817.P15597149450245652740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) - A101368 (n + 3)

end

end A089817.P15597149450245652740

namespace A089817

/-- `A004253(n+2)-A101368(n+3)` -/
def P15597149450245652740.Spec : Prop :=
  ∀ n, P15597149450245652740.a n = A089817 n

end A089817

/-!
# A089818: T(n,k) = number of subsets of {1,..., n} containing exactly k primes, triangle read by rows, 0<=k<n.

The programs for A089818, the canonical program `A089818.P2458715705030053356` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089818 has offset 1).

The definition of A089818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089818.P2458715705030053356

`C(A000720(row(n)+1), col(n))*2^(row(n)+1-A000720(row(n)+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089818

/-- `C(A000720(row(n)+1), col(n))*2^(row(n)+1-A000720(row(n)+1))` -/
def P2458715705030053356.Spec : Prop :=
  ∀ n, P2458715705030053356.a n = (A089818 (n + 1) : ℚ)

end A089818

/-!
# A089819: Number of subsets of {1,2,...,n} containing no primes.

The programs for A089819, the canonical program `A089819.P6058747411464055795` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089819 has offset 1).

The definition of A089819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089819.P1659297318742920459

`2^(n+1-A000720(n+1))`
-/

namespace A089819.P1659297318742920459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A000720 (n + 1) : ℤ)

end

end A089819.P1659297318742920459

namespace A089819

/-- `2^(n+1-A000720(n+1))` -/
def P1659297318742920459.Spec : Prop :=
  ∀ n, P1659297318742920459.a n = (A089819 (n + 1) : ℚ)

end A089819

/-! ## A089819.P6058747411464055795

`2^(1-A010051(n+1))*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089819

/-- `2^(1-A010051(n+1))*a(n-1)` -/
def P6058747411464055795.Spec : Prop :=
  ∀ n, P6058747411464055795.a n = (A089819 (n + 1) : ℚ)

end A089819

/-! ## A089819.P12086997237065552873

`A000079(n+1)-A089820(n+1)`
-/

namespace A089819.P12086997237065552873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A089820 (n + 1)

end

end A089819.P12086997237065552873

namespace A089819

/-- `A000079(n+1)-A089820(n+1)` -/
def P12086997237065552873.Spec : Prop :=
  ∀ n, P12086997237065552873.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P15719840927359572518

`∏[2-char[eq[1, ∑{e}[n+1, #]]]]`
-/

namespace A089819.P15719840927359572518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P15719840927359572518

namespace A089819

/-- `∏[2-char[eq[1, ∑{e}[n+1, #]]]]` -/
def P15719840927359572518.Spec : Prop :=
  ∀ n, P15719840927359572518.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P2797721486212449346

`∏[2-char[lt[n, ∑{p}[n+1, #]]]]`
-/

namespace A089819.P2797721486212449346
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P2797721486212449346

namespace A089819

/-- `∏[2-char[lt[n, ∑{p}[n+1, #]]]]` -/
def P2797721486212449346.Spec : Prop :=
  ∀ n, P2797721486212449346.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P986617198718881977

`∏[ceil(atan(A013632(n)))]`
-/

namespace A089819.P986617198718881977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A013632 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P986617198718881977

namespace A089819

/-- `∏[ceil(atan(A013632(n)))]` -/
def P986617198718881977.Spec : Prop :=
  ∀ n, P986617198718881977.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P16501167835885288797

`2*A357214(n+1)`
-/

namespace A089819.P16501167835885288797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A357214 (n + 1)

end

end A089819.P16501167835885288797

namespace A089819

/-- `2*A357214(n+1)` -/
def P16501167835885288797.Spec : Prop :=
  ∀ n, P16501167835885288797.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P2512796769139879863

`2^A062298(n+1)`
-/

namespace A089819.P2512796769139879863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A062298 (n + 1) : ℤ)

end

end A089819.P2512796769139879863

namespace A089819

/-- `2^A062298(n+1)` -/
def P2512796769139879863.Spec : Prop :=
  ∀ n, P2512796769139879863.a n = (A089819 (n + 1) : ℚ)

end A089819

/-! ## A089819.P17905297640131055560

`∏[3-Δ[A095117(n)]]`
-/

namespace A089819.P17905297640131055560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P17905297640131055560

namespace A089819

/-- `∏[3-Δ[A095117(n)]]` -/
def P17905297640131055560.Spec : Prop :=
  ∀ n, P17905297640131055560.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P6187612179984627309

`∏[Δ[A282029(2*n)]]`
-/

namespace A089819.P6187612179984627309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282029 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P6187612179984627309

namespace A089819

/-- `∏[Δ[A282029(2*n)]]` -/
def P6187612179984627309.Spec : Prop :=
  ∀ n, P6187612179984627309.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P5792588389048617523

`∏[A005171(n+1)+1]`
-/

namespace A089819.P5792588389048617523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P5792588389048617523

namespace A089819

/-- `∏[A005171(n+1)+1]` -/
def P5792588389048617523.Spec : Prop :=
  ∀ n, P5792588389048617523.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P1781581547618416834

`∏[2-A010051(n+1)]`
-/

namespace A089819.P1781581547618416834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P1781581547618416834

namespace A089819

/-- `∏[2-A010051(n+1)]` -/
def P1781581547618416834.Spec : Prop :=
  ∀ n, P1781581547618416834.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P781382177504390234

`2^(A065855(n+1)+1)`
-/

namespace A089819.P781382177504390234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A065855 (n + 1) + 1 : ℤ)

end

end A089819.P781382177504390234

namespace A089819

/-- `2^(A065855(n+1)+1)` -/
def P781382177504390234.Spec : Prop :=
  ∀ n, P781382177504390234.a n = (A089819 (n + 1) : ℚ)

end A089819

/-! ## A089819.P3598951882534445379

`2*∏[Δ[A171511(n+1)]]`
-/

namespace A089819.P3598951882534445379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171511 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A089819.P3598951882534445379

namespace A089819

/-- `2*∏[Δ[A171511(n+1)]]` -/
def P3598951882534445379.Spec : Prop :=
  ∀ n, P3598951882534445379.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P5313496853527529322

`∏[2/Δ[A064427(n+1)]]`
-/

namespace A089819.P5313496853527529322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P5313496853527529322

namespace A089819

/-- `∏[2/Δ[A064427(n+1)]]` -/
def P5313496853527529322.Spec : Prop :=
  ∀ n, P5313496853527529322.a n = (A089819 (n + 1) : ℚ)

end A089819

/-! ## A089819.P5405018916436198440

`∏[2-A064911(2*(n+1))]`
-/

namespace A089819.P5405018916436198440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A064911 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P5405018916436198440

namespace A089819

/-- `∏[2-A064911(2*(n+1))]` -/
def P5405018916436198440.Spec : Prop :=
  ∀ n, P5405018916436198440.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P6385443661354285873

`∏[2-A303337(2*(n+1))]`
-/

namespace A089819.P6385443661354285873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A303337 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P6385443661354285873

namespace A089819

/-- `∏[2-A303337(2*(n+1))]` -/
def P6385443661354285873.Spec : Prop :=
  ∀ n, P6385443661354285873.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P4281987480257379834

`∏[gcd(2, C(2, A000005(n+1)))]`
-/

namespace A089819.P4281987480257379834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose 2 (A000005 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P4281987480257379834

namespace A089819

/-- `∏[gcd(2, C(2, A000005(n+1)))]` -/
def P4281987480257379834.Spec : Prop :=
  ∀ n, (P4281987480257379834.a n : ℤ) = A089819 (n + 1)

end A089819

/-! ## A089819.P8552354624703728791

`∏[2-char[record[A000010(n+1)]]]`
-/

namespace A089819.P8552354624703728791
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P8552354624703728791

namespace A089819

/-- `∏[2-char[record[A000010(n+1)]]]` -/
def P8552354624703728791.Spec : Prop :=
  ∀ n, P8552354624703728791.a n = A089819 (n + 1)

end A089819

/-! ## A089819.P9168295040980292594

`2^(n+1-A230980(n+1))`
-/

namespace A089819.P9168295040980292594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A230980 (n + 1) : ℤ)

end

end A089819.P9168295040980292594

namespace A089819

/-- `2^(n+1-A230980(n+1))` -/
def P9168295040980292594.Spec : Prop :=
  ∀ n, P9168295040980292594.a n = (A089819 (n + 1) : ℚ)

end A089819

/-!
# A089820: Number of subsets of {1,..,n} containing at least one prime.

The programs for A089820, the canonical program `A089820.P7267568569505307005` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089820 has offset 1).

The definition of A089820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089820.P7267568569505307005

`2^(n+1)-2^(n+1-A000720(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089820

/-- `2^(n+1)-2^(n+1-A000720(n+1))` -/
def P7267568569505307005.Spec : Prop :=
  ∀ n, P7267568569505307005.a n = (A089820 (n + 1) : ℚ)

end A089820

/-! ## A089820.P16018739911247489937

`2^(n+1)-A089819(n+1)`
-/

namespace A089820.P16018739911247489937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A089819 (n + 1)

end

end A089820.P16018739911247489937

namespace A089820

/-- `2^(n+1)-A089819(n+1)` -/
def P16018739911247489937.Spec : Prop :=
  ∀ n, P16018739911247489937.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P8172623120272134165

`A089819(n+1)*A357215(n+1)`
-/

namespace A089820.P8172623120272134165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089819 (n + 1) * A357215 (n + 1)

end

end A089820.P8172623120272134165

namespace A089820

/-- `A089819(n+1)*A357215(n+1)` -/
def P8172623120272134165.Spec : Prop :=
  ∀ n, P8172623120272134165.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P12314842875936050256

`A000051(n+1)-A000051(A062298(n+1))`
-/

namespace A089820.P12314842875936050256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - A000051 (A062298 (n + 1)).toNat

end

end A089820.P12314842875936050256

namespace A089820

/-- `A000051(n+1)-A000051(A062298(n+1))` -/
def P12314842875936050256.Spec : Prop :=
  ∀ n, P12314842875936050256.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P14337683580541442134

`A000079(n+1)-A000079(A062298(n+1))`
-/

namespace A089820.P14337683580541442134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A000079 (A062298 (n + 1)).toNat

end

end A089820.P14337683580541442134

namespace A089820

/-- `A000079(n+1)-A000079(A062298(n+1))` -/
def P14337683580541442134.Spec : Prop :=
  ∀ n, P14337683580541442134.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P14315408495119577915

`A000225(A000720(n+1))*A089819(n+1)`
-/

namespace A089820.P14315408495119577915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000720 (n + 1)).toNat * A089819 (n + 1)

end

end A089820.P14315408495119577915

namespace A089820

/-- `A000225(A000720(n+1))*A089819(n+1)` -/
def P14315408495119577915.Spec : Prop :=
  ∀ n, P14315408495119577915.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P10625998079025786293

`A126646(n)-A126646(A062298(n+1)-1)`
-/

namespace A089820.P10625998079025786293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A126646 (A062298 (n + 1) - 1).toNat

end

end A089820.P10625998079025786293

namespace A089820

/-- `A126646(n)-A126646(A062298(n+1)-1)` -/
def P10625998079025786293.Spec : Prop :=
  ∀ n, P10625998079025786293.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P8493349800724996516

`2*(A000051(n)-A000051(A065855(n+1)))`
-/

namespace A089820.P8493349800724996516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000051 n - A000051 (A065855 (n + 1)).toNat)

end

end A089820.P8493349800724996516

namespace A089820

/-- `2*(A000051(n)-A000051(A065855(n+1)))` -/
def P8493349800724996516.Spec : Prop :=
  ∀ n, P8493349800724996516.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P12382490778047067835

`2*(A000079(n)-A000079(A065855(n+1)))`
-/

namespace A089820.P12382490778047067835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n - A000079 (A065855 (n + 1)).toNat)

end

end A089820.P12382490778047067835

namespace A089820

/-- `2*(A000079(n)-A000079(A065855(n+1)))` -/
def P12382490778047067835.Spec : Prop :=
  ∀ n, P12382490778047067835.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P6505180770695155285

`A126646(n)-A126646(n-A000720(n+1))`
-/

namespace A089820.P6505180770695155285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A126646 ((n : ℤ) - A000720 (n + 1)).toNat

end

end A089820.P6505180770695155285

namespace A089820

/-- `A126646(n)-A126646(n-A000720(n+1))` -/
def P6505180770695155285.Spec : Prop :=
  ∀ n, P6505180770695155285.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P10857953063920088173

`(A048656(n+1)-1)*A048656(A065308(n+1))`
-/

namespace A089820.P10857953063920088173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048656 (n + 1) - 1) * A048656 (A065308 (n + 1)).toNat

end

end A089820.P10857953063920088173

namespace A089820

/-- `(A048656(n+1)-1)*A048656(A065308(n+1))` -/
def P10857953063920088173.Spec : Prop :=
  ∀ n, P10857953063920088173.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P753555611332369220

`A000079(n+1)-A000079(n+1-A000720(n+1))`
-/

namespace A089820.P753555611332369220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A000079 ((n + 1 : ℤ) - A000720 (n + 1)).toNat

end

end A089820.P753555611332369220

namespace A089820

/-- `A000079(n+1)-A000079(n+1-A000720(n+1))` -/
def P753555611332369220.Spec : Prop :=
  ∀ n, P753555611332369220.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P451786183681503211

`(A357214(n+1)+A357214(n+1))*A357215(n+1)`
-/

namespace A089820.P451786183681503211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A357214 (n + 1) + A357214 (n + 1)) * A357215 (n + 1)

end

end A089820.P451786183681503211

namespace A089820

/-- `(A357214(n+1)+A357214(n+1))*A357215(n+1)` -/
def P451786183681503211.Spec : Prop :=
  ∀ n, P451786183681503211.a n = A089820 (n + 1)

end A089820

/-! ## A089820.P9258095605135606320

`A023758(A000720(n+1)+A000124(n))`
-/

namespace A089820.P9258095605135606320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A000720 (n + 1) + A000124 n).toNat

end

end A089820.P9258095605135606320

namespace A089820

/-- `A023758(A000720(n+1)+A000124(n))` -/
def P9258095605135606320.Spec : Prop :=
  ∀ n, P9258095605135606320.a n = A089820 (n + 1)

end A089820

/-!
# A089821: Number of subsets of {1,.., n} containing exactly one prime.

The programs for A089821, the canonical program `A089821.P1761871828032168591` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089821 has offset 1).

The definition of A089821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089821.P1761871828032168591

`A000720(n+1)*A089819(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089821

/-- `A000720(n+1)*A089819(n+1)` -/
def P1761871828032168591.Spec : Prop :=
  ∀ n, P1761871828032168591.a n = A089821 (n + 1)

theorem P1761871828032168591.correct : P1761871828032168591.Spec := by
  intro n
  simp only [A089821, Nat.add_sub_cancel]

end A089821

/-! ## A089821.P3315652726088509109

`∑[A010051(n+1)]*A089819(n+1)`
-/

namespace A089821.P3315652726088509109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A089819 (n + 1)

end

end A089821.P3315652726088509109

namespace A089821

/-- `∑[A010051(n+1)]*A089819(n+1)` -/
def P3315652726088509109.Spec : Prop :=
  ∀ n, P3315652726088509109.a n = A089821 (n + 1)

end A089821

/-! ## A089821.P9943623344721661632

`(A036234(n+1)-1)*A089819(n+1)`
-/

namespace A089821.P9943623344721661632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036234 (n + 1) - 1) * A089819 (n + 1)

end

end A089821.P9943623344721661632

namespace A089821

/-- `(A036234(n+1)-1)*A089819(n+1)` -/
def P9943623344721661632.Spec : Prop :=
  ∀ n, P9943623344721661632.a n = A089821 (n + 1)

theorem P9943623344721661632.correct : P9943623344721661632.Spec := by
  intro n
  simp only [A089821, Nat.add_sub_cancel, A089821.P9943623344721661632.a, A089821.P1761871828032168591.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A089819, A089819.P6058747411464055795.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A089821

/-! ## A089821.P17808607051194685515

`(n-A065855(n+1))*A089819(n+1)`
-/

namespace A089821.P17808607051194685515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A065855 (n + 1)) * A089819 (n + 1)

end

end A089821.P17808607051194685515

namespace A089821

/-- `(n-A065855(n+1))*A089819(n+1)` -/
def P17808607051194685515.Spec : Prop :=
  ∀ n, P17808607051194685515.a n = A089821 (n + 1)

theorem P17808607051194685515.correct : P17808607051194685515.Spec := by
  intro n
  simp only [A089821, Nat.add_sub_cancel, A089821.P17808607051194685515.a, A089821.P1761871828032168591.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A089819, A089819.P6058747411464055795.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A089821

/-! ## A089821.P8537478130149716668

`A000079(A062298(n+1))*A000720(n+1)`
-/

namespace A089821.P8537478130149716668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A062298 (n + 1)).toNat * A000720 (n + 1)

end

end A089821.P8537478130149716668

namespace A089821

/-- `A000079(A062298(n+1))*A000720(n+1)` -/
def P8537478130149716668.Spec : Prop :=
  ∀ n, P8537478130149716668.a n = A089821 (n + 1)

end A089821

/-! ## A089821.P11018245858468290139

`(A000720(n+1)+A000720(n+1))*A357214(n+1)`
-/

namespace A089821.P11018245858468290139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 1) + A000720 (n + 1)) * A357214 (n + 1)

end

end A089821.P11018245858468290139

namespace A089821

/-- `(A000720(n+1)+A000720(n+1))*A357214(n+1)` -/
def P11018245858468290139.Spec : Prop :=
  ∀ n, P11018245858468290139.a n = A089821 (n + 1)

end A089821

/-! ## A089821.P12845358492178783813

`(A000079(n+1)-A089820(n+1))*A000720(n+1)`
-/

namespace A089821.P12845358492178783813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A089820 (n + 1)) * A000720 (n + 1)

end

end A089821.P12845358492178783813

namespace A089821

/-- `(A000079(n+1)-A089820(n+1))*A000720(n+1)` -/
def P12845358492178783813.Spec : Prop :=
  ∀ n, P12845358492178783813.a n = A089821 (n + 1)

end A089821

/-!
# A089822: Number of subsets of {1,.., n} containing exactly two primes.

The programs for A089822, the canonical program `A089822.P1646824932215610982` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089822 has offset 1).

The definition of A089822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089822.P1646824932215610982

`A000720(n+1)*(A000720(n+1)-1)*2^(n-A000720(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089822

/-- `A000720(n+1)*(A000720(n+1)-1)*2^(n-A000720(n+1))` -/
def P1646824932215610982.Spec : Prop :=
  ∀ n, P1646824932215610982.a n = (A089822 (n + 1) : ℚ)

end A089822

/-! ## A089822.P12825481705648736533

`C(A000720(n+1), 2)*A089819(n+1)`
-/

namespace A089822.P12825481705648736533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000720 (n + 1)).toNat 2 : ℤ) * A089819 (n + 1)

end

end A089822.P12825481705648736533

namespace A089822

/-- `C(A000720(n+1), 2)*A089819(n+1)` -/
def P12825481705648736533.Spec : Prop :=
  ∀ n, P12825481705648736533.a n = A089822 (n + 1)

end A089822

/-! ## A089822.P4169949727800120308

`A000217(A033270(n+1))*A089819(n+1)`
-/

namespace A089822.P4169949727800120308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033270 (n + 1)).toNat * A089819 (n + 1)

end

end A089822.P4169949727800120308

namespace A089822

/-- `A000217(A033270(n+1))*A089819(n+1)` -/
def P4169949727800120308.Spec : Prop :=
  ∀ n, P4169949727800120308.a n = A089822 (n + 1)

end A089822

/-! ## A089822.P4627761694890547761

`A089819(n+1)*A161680(A000720(n+1))`
-/

namespace A089822.P4627761694890547761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089819 (n + 1) * A161680 (A000720 (n + 1)).toNat

end

end A089822.P4627761694890547761

namespace A089822

/-- `A089819(n+1)*A161680(A000720(n+1))` -/
def P4627761694890547761.Spec : Prop :=
  ∀ n, P4627761694890547761.a n = A089822 (n + 1)

end A089822

/-! ## A089822.P6059928402441613178

`A089819(n+1)*A161680(∑[A010051(n+1)])`
-/

namespace A089822.P6059928402441613178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089819 (n + 1) * A161680 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089822.P6059928402441613178

namespace A089822

/-- `A089819(n+1)*A161680(∑[A010051(n+1)])` -/
def P6059928402441613178.Spec : Prop :=
  ∀ n, P6059928402441613178.a n = A089822 (n + 1)

end A089822

/-! ## A089822.P16639533024575248369

`A000079(A062298(n+1))*A000217(A033270(n+1))`
-/

namespace A089822.P16639533024575248369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A062298 (n + 1)).toNat * A000217 (A033270 (n + 1)).toNat

end

end A089822.P16639533024575248369

namespace A089822

/-- `A000079(A062298(n+1))*A000217(A033270(n+1))` -/
def P16639533024575248369.Spec : Prop :=
  ∀ n, P16639533024575248369.a n = A089822 (n + 1)

end A089822

/-! ## A089822.P5159635662178992768

`A000217(A033270(n+1))*A048656(A065308(n+1))`
-/

namespace A089822.P5159635662178992768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033270 (n + 1)).toNat * A048656 (A065308 (n + 1)).toNat

end

end A089822.P5159635662178992768

namespace A089822

/-- `A000217(A033270(n+1))*A048656(A065308(n+1))` -/
def P5159635662178992768.Spec : Prop :=
  ∀ n, P5159635662178992768.a n = A089822 (n + 1)

end A089822

/-!
# A089823: Primes p such that the next prime after p can be obtained from p by adding the product of the digits of p.

The programs for A089823, there is no canonical definition to state claims against.
-/

/-! ## A089823.P12093961648419283450

`A065091(eq[A001223(n+1), A053666(n+1)])`
-/

namespace A089823.P12093961648419283450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089823.P12093961648419283450

/-! ## A089823.P15765885025264129285

`p?[eq[A007954(n), A166597(n)]]`
-/

namespace A089823.P15765885025264129285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089823.P15765885025264129285

/-! ## A089823.P11056744765867942411

`p?[eq[A013632(n), A187844(n)]]`
-/

namespace A089823.P11056744765867942411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089823.P11056744765867942411

/-!
# A089824: Primes p such that the next prime after p can be obtained from p by adding the sum of the digits of p.

The programs for A089824, the canonical program `A089824.P10607685603427349612` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089824 has offset 1).

The definition of A089824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089824.P15792195912171639633

`A045319(eq[A001223(n+1), A007605(n+1)])`
-/

namespace A089824.P15792195912171639633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089824.P15792195912171639633

namespace A089824

/-- `A045319(eq[A001223(n+1), A007605(n+1)])` -/
def P15792195912171639633.Spec : Prop :=
  ∀ n, P15792195912171639633.a n = A089824 (n + 1)

end A089824

/-! ## A089824.P2854218978674323098

`A045344(eq[A001223(n+1), A007605(n+1)])`
-/

namespace A089824.P2854218978674323098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089824.P2854218978674323098

namespace A089824

/-- `A045344(eq[A001223(n+1), A007605(n+1)])` -/
def P2854218978674323098.Spec : Prop :=
  ∀ n, P2854218978674323098.a n = A089824 (n + 1)

end A089824

/-! ## A089824.P8128737710088812846

`A065091(eq[A001223(n+1), A007605(n+1)])`
-/

namespace A089824.P8128737710088812846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089824.P8128737710088812846

namespace A089824

/-- `A065091(eq[A001223(n+1), A007605(n+1)])` -/
def P8128737710088812846.Spec : Prop :=
  ∀ n, P8128737710088812846.a n = A089824 (n + 1)

end A089824

/-! ## A089824.P10607685603427349612

`A045319(eq[A045319(n+1), A065073(n+1)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A089824

/-- `A045319(eq[A045319(n+1), A065073(n+1)])` -/
def P10607685603427349612.Spec : Prop :=
  ∀ n, P10607685603427349612.a n = A089824 (n + 1)

theorem P10607685603427349612.correct : P10607685603427349612.Spec := by
  intro n
  simp only [A089824, Nat.add_sub_cancel]

end A089824

/-! ## A089824.P13642774203449146497

`A065091(eq[A065073(n+1), A065091(n+1)])`
-/

namespace A089824.P13642774203449146497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089824.P13642774203449146497

namespace A089824

/-- `A065091(eq[A065073(n+1), A065091(n+1)])` -/
def P13642774203449146497.Spec : Prop :=
  ∀ n, P13642774203449146497.a n = A089824 (n + 1)

end A089824

/-!
# A089827: Number of subsets of {1,.., n} containing no twin prime pairs.

The programs for A089827, there is no canonical definition to state claims against.
-/

/-! ## A089827.P10622092646314447300

`2^(n+1)-A089828(n+1)`
-/

namespace A089827.P10622092646314447300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A089828 (n + 1)

end

end A089827.P10622092646314447300

/-! ## A089827.P4950645157494595251

`A126646(n)+1-A089828(n+1)`
-/

namespace A089827.P4950645157494595251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (1 - A089828 (n + 1))

end

end A089827.P4950645157494595251

/-! ## A089827.P18416200656058724649

`abs(A000079(n+1)-A089828(n+1))`
-/

namespace A089827.P18416200656058724649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A089828 (n + 1)|

end

end A089827.P18416200656058724649

/-! ## A089827.P17161162440139648976

`abs(A016116(2*(n+1))-A089828(n+1))`
-/

namespace A089827.P17161162440139648976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016116 (2 * (n + 1)) - A089828 (n + 1)|

end

end A089827.P17161162440139648976

/-! ## A089827.P13730709942031481121

`A000079(n)+A000079(n)-A089828(n+1)`
-/

namespace A089827.P13730709942031481121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000079 n - A089828 (n + 1))

end

end A089827.P13730709942031481121

/-!
# A089828: Number of subsets of {1,.., n} containing at least one twin prime pair.

The programs for A089828, there is no canonical definition to state claims against.
-/

/-! ## A089828.P1284138839535175433

`2^(n+1)-A089827(n+1)`
-/

namespace A089828.P1284138839535175433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A089827 (n + 1)

end

end A089828.P1284138839535175433

/-! ## A089828.P6309640667918767827

`and(-A089827(n+1), A095121(n))`
-/

namespace A089828.P6309640667918767827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A089827 (n + 1)) (A095121 n)

end

end A089828.P6309640667918767827

/-! ## A089828.P3992835418344288120

`and(-A089827(n+1), A126646(n))`
-/

namespace A089828.P3992835418344288120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A089827 (n + 1)) (A126646 n)

end

end A089828.P3992835418344288120

/-! ## A089828.P11276418379641846876

`and(-A089827(n+1), A290073(n))`
-/

namespace A089828.P11276418379641846876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A089827 (n + 1)) (A290073 n)

end

end A089828.P11276418379641846876

/-! ## A089828.P16663481743232257680

`and(-A089827(n+1), ∑[A000079(n)])`
-/

namespace A089828.P16663481743232257680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A089827 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089828.P16663481743232257680

/-!
# A089829: Triangle T(p,k) read by rows, where p runs through the odd primes and 2 <= k <= p-1. T(p,k) = 1 if the reverse of the base-k expansion of p is a prime, otherwise 0.

The programs for A089829, there is no canonical definition to state claims against.
-/

/-! ## A089829.P1032010904553651934

`A074481(A183217(n+2)+2)`
-/

namespace A089829.P1032010904553651934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074481 (A183217 (n + 2) + 2).toNat

end

end A089829.P1032010904553651934

/-! ## A089829.P6294542603897746606

`A174897(or(A030101(n), A342789(2*n+5)))`
-/

namespace A089829.P6294542603897746606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (Int.lor (A030101 n) (A342789 (2 * n + 5))).toNat

end

end A089829.P6294542603897746606

/-! ## A089829.P15360550089607252625

`A097325(lt[A097278(n+1), A292506(2*n+3)])`
-/

namespace A089829.P15360550089607252625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A089829.P15360550089607252625

/-! ## A089829.P3625899656072505374

`A074481(A006672(n+2))`
-/

namespace A089829.P3625899656072505374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074481 (A006672 (n + 2)).toNat

end

end A089829.P3625899656072505374

/-! ## A089829.P16732849944364807730

`A320955(A025875(n+1)*A320955(n+4))`
-/

namespace A089829.P16732849944364807730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 (A025875 (n + 1) * A320955 (n + 4)).toNat

end

end A089829.P16732849944364807730

/-!
# A089830: Expansion of (1-3*x+6*x^2-5*x^3+3*x^4-x^5)/(1-x)^6.

The programs for A089830, the canonical program `A089830.P12031594858691590704` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089830 has offset 0).

The definition of A089830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+6x^2-5x^3+3x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A089830.P12031594858691590704`, by `A089830.P12031594858691590704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089830.P12031594858691590704

`ogf((1-3x+6x^2-5x^3+3x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089830

/-- `ogf((1-3x+6x^2-5x^3+3x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P12031594858691590704.Spec : Prop :=
  ∀ n, P12031594858691590704.a n = A089830 n

theorem P12031594858691590704.correct : P12031594858691590704.Spec := by
  intro n
  simp only [A089830]

end A089830

/-! ## A089830.P16393421844890761424

`13*n/15+1+n^3/8+11*n²/12+n^5/120+n^4/12`
-/

namespace A089830.P16393421844890761424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 * n : ℚ) / 15 + 1 + (n ^ 3 : ℚ) / 8 + (11 * n ^ 2 : ℚ) / 12 + (n ^ 5 : ℚ) / 120 + (n ^ 4 : ℚ) / 12

end

end A089830.P16393421844890761424

namespace A089830

/-- `13*n/15+1+n^3/8+11*n²/12+n^5/120+n^4/12` -/
def P16393421844890761424.Spec : Prop :=
  ∀ n, P16393421844890761424.a n = (A089830 n : ℚ)

end A089830

/-! ## A089830.P7692246519672813794

`∑[∑[∑[a(n-1)+n]]]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=5`
-/

namespace A089830.P7692246519672813794
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 5] fun n f3 =>
  f3 (n - 1) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089830.P7692246519672813794

namespace A089830

/-- `∑[∑[∑[a(n-1)+n]]]` -/
def P7692246519672813794.Spec : Prop :=
  ∀ n, (P7692246519672813794.a n : ℤ) = A089830 n

end A089830

/-! ## A089830.P9247587387555146974

`∑[A366724(n+1)-n]`
-/

namespace A089830.P9247587387555146974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366724 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089830.P9247587387555146974

namespace A089830

/-- `∑[A366724(n+1)-n]` -/
def P9247587387555146974.Spec : Prop :=
  ∀ n, P9247587387555146974.a n = A089830 n

end A089830

/-!
# A089832: Number of distinct non-recursive Catalan Automorphisms whose minimum clause-representation requires examination of n nodes in total. Row sums of A089831.

The programs for A089832, there is no canonical definition to state claims against.
-/

/-! ## A089832.P2684180205141151714

`A079680(A122653(n)-n)`
-/

namespace A089832.P2684180205141151714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079680 (A122653 n - (n : ℤ)).toNat

end

end A089832.P2684180205141151714

/-!
# A089833: a(n) = A000108(n)*(A000142(n+1)-1).

The programs for A089833, the canonical program `A089833.P13737172793224670506` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089833 has offset 0).

The definition of A089833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)*(A000142(n+1)-1)` (program `A089833.P13737172793224670506`, by `A089833.P13737172793224670506.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089833.P10271927408144838664

`A001813(n)-A000108(n)`
-/

namespace A089833.P10271927408144838664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n - A000108 n

end

end A089833.P10271927408144838664

namespace A089833

/-- `A001813(n)-A000108(n)` -/
def P10271927408144838664.Spec : Prop :=
  ∀ n, P10271927408144838664.a n = A089833 n

end A089833

/-! ## A089833.P13737172793224670506

`A000108(n)*(A000142(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089833

/-- `A000108(n)*(A000142(n+1)-1)` -/
def P13737172793224670506.Spec : Prop :=
  ∀ n, P13737172793224670506.a n = A089833 n

theorem P13737172793224670506.correct : P13737172793224670506.Spec := by
  intro n
  simp only [A089833]

end A089833

/-! ## A089833.P16626180675870563080

`∏[lcm(2, 1-2*n)]/2-∑{#}[n, C(n, #)²]/(n+1)`
-/

namespace A089833.P16626180675870563080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (2 * n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 - ((∑ k ∈ Finset.range (f2 n + 1), Nat.choose n k ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A089833.P16626180675870563080

namespace A089833

/-- `∏[lcm(2, 1-2*n)]/2-∑{#}[n, C(n, #)²]/(n+1)` -/
def P16626180675870563080.Spec : Prop :=
  ∀ n, P16626180675870563080.a n = (A089833 n : ℚ)

end A089833

/-! ## A089833.P12607937666427702347

`((n+1)!-1)*A000108(n)`
-/

namespace A089833.P12607937666427702347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) - 1) * A000108 n

end

end A089833.P12607937666427702347

namespace A089833

/-- `((n+1)!-1)*A000108(n)` -/
def P12607937666427702347.Spec : Prop :=
  ∀ n, P12607937666427702347.a n = A089833 n

theorem P12607937666427702347.correct : P12607937666427702347.Spec := by
  intro n
  simp only [A089833, Nat.add_sub_cancel, A089833.P12607937666427702347.a, A089833.P13737172793224670506.a, A000108, A000108.P17551949696095299361.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089833

/-! ## A089833.P17391746978111852831

`A001813(n)-C(2*n, n)/(n+1)`
-/

namespace A089833.P17391746978111852831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 n : ℚ) - (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A089833.P17391746978111852831

namespace A089833

/-- `A001813(n)-C(2*n, n)/(n+1)` -/
def P17391746978111852831.Spec : Prop :=
  ∀ n, P17391746978111852831.a n = (A089833 n : ℚ)

end A089833

/-! ## A089833.P14659607881967754868

`abs(A097388(n))-A000108(n)`
-/

namespace A089833.P14659607881967754868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097388 n| - A000108 n

end

end A089833.P14659607881967754868

namespace A089833

/-- `abs(A097388(n))-A000108(n)` -/
def P14659607881967754868.Spec : Prop :=
  ∀ n, P14659607881967754868.a n = A089833 n

end A089833

/-! ## A089833.P13369807165451349931

`A001813(n)-abs(A168491(n))`
-/

namespace A089833.P13369807165451349931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n - |A168491 n|

end

end A089833.P13369807165451349931

namespace A089833

/-- `A001813(n)-abs(A168491(n))` -/
def P13369807165451349931.Spec : Prop :=
  ∀ n, P13369807165451349931.a n = A089833 n

end A089833

/-! ## A089833.P12290768593798637686

`A001813(n)-sqrt(A001246(n))`
-/

namespace A089833.P12290768593798637686
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001813 n : ℝ) - Real.sqrt (A001246 n : ℝ)

end

end A089833.P12290768593798637686

namespace A089833

/-- `A001813(n)-sqrt(A001246(n))` -/
def P12290768593798637686.Spec : Prop :=
  ∀ n, P12290768593798637686.a n = (A089833 n : ℝ)

end A089833

/-! ## A089833.P9383004621927606157

`A048854(∑[n])-A000108(n)`
-/

namespace A089833.P9383004621927606157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n

end

end A089833.P9383004621927606157

namespace A089833

/-- `A048854(∑[n])-A000108(n)` -/
def P9383004621927606157.Spec : Prop :=
  ∀ n, P9383004621927606157.a n = A089833 n

end A089833

/-! ## A089833.P4953042152897576695

`A000108(n)*∑[A001563(n)]`
-/

namespace A089833.P4953042152897576695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089833.P4953042152897576695

namespace A089833

/-- `A000108(n)*∑[A001563(n)]` -/
def P4953042152897576695.Spec : Prop :=
  ∀ n, P4953042152897576695.a n = A089833 n

end A089833

/-!
# A089834: Number of distinct non-recursive Catalan bijections whose minimum clause-representation requires examination of n nodes in total and which require more than one non-default clause.

The programs for A089834, there is no canonical definition to state claims against.
-/

/-! ## A089834.P12094360323994079190

`A089832(n+1)-A089833(n+1)`
-/

namespace A089834.P12094360323994079190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089832 (n + 1) - A089833 (n + 1)

end

end A089834.P12094360323994079190

/-! ## A089834.P5443278683832141016

`A089832(n+1)-record[A089831(n+1)]`
-/

namespace A089834.P5443278683832141016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089832 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089834.P5443278683832141016

/-!
# A089835: a(n) = (A000108(n)^2)*(n+1)!.

The programs for A089835, the canonical program `A089835.P11692649361842255541` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089835 has offset 0).

The definition of A089835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)²*(n+1)!` (program `A089835.P11692649361842255541`, by `A089835.P11692649361842255541.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089835.P11692649361842255541

`A000108(n)²*(n+1)!`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089835

/-- `A000108(n)²*(n+1)!` -/
def P11692649361842255541.Spec : Prop :=
  ∀ n, P11692649361842255541.a n = A089835 n

theorem P11692649361842255541.correct : P11692649361842255541.Spec := by
  intro n
  simp only [A089835]

end A089835

/-! ## A089835.P17966174254472872167

`A001813(n)*A000108(n)`
-/

namespace A089835.P17966174254472872167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n * A000108 n

end

end A089835.P17966174254472872167

namespace A089835

/-- `A001813(n)*A000108(n)` -/
def P17966174254472872167.Spec : Prop :=
  ∀ n, P17966174254472872167.a n = A089835 n

end A089835

/-! ## A089835.P2358231421219466652

`A001246(n)*A000142(n+1)`
-/

namespace A089835.P2358231421219466652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n * A000142 (n + 1)

end

end A089835.P2358231421219466652

namespace A089835

/-- `A001246(n)*A000142(n+1)` -/
def P2358231421219466652.Spec : Prop :=
  ∀ n, P2358231421219466652.a n = A089835 n

end A089835

/-! ## A089835.P5516739813940622096

`(4-6/(n+1))*a(n-1)*record[lcm(2, n)]` with `a(0)=1`
-/

namespace A089835.P5516739813940622096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A089835.P5516739813940622096

namespace A089835

/-- `(4-6/(n+1))*a(n-1)*record[lcm(2, n)]` -/
def P5516739813940622096.Spec : Prop :=
  ∀ n, P5516739813940622096.a n = (A089835 n : ℚ)

end A089835

/-! ## A089835.P10770966704258786707

`n!*A000888(n)`
-/

namespace A089835.P10770966704258786707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000888 n

end

end A089835.P10770966704258786707

namespace A089835

/-- `n!*A000888(n)` -/
def P10770966704258786707.Spec : Prop :=
  ∀ n, P10770966704258786707.a n = A089835 n

end A089835

/-!
# A089837: Involution of nonnegative integers: column 1 of A089839.

The programs for A089837, there is no canonical definition to state claims against.
-/

/-! ## A089837.P4897086839242714121

`A089843(A089838(A089843(n)))`
-/

namespace A089837.P4897086839242714121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A089838 (A089843 n).toNat).toNat

end

end A089837.P4897086839242714121

/-!
# A089838: Involution of nonnegative integers: row 1 of A089839.

The programs for A089838, there is no canonical definition to state claims against.
-/

/-! ## A089838.P9948872979737843004

`A089843(A089837(A089843(n)))`
-/

namespace A089838.P9948872979737843004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A089837 (A089843 n).toNat).toNat

end

end A089838.P9948872979737843004

/-!
# A089840: Signature permutations of non-recursive Catalan automorphisms (i.e., bijections of finite plane binary trees, with no unlimited recursion down to indefinite distances from the root), sorted according to the minimum number of opening nodes needed in their defining clauses.

The programs for A089840, there is no canonical definition to state claims against.
-/

/-! ## A089840.P17773942629905177678

`A130400(n)-char[A024392(n+1)]`
-/

namespace A089840.P17773942629905177678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024392 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089840.P17773942629905177678

/-! ## A089840.P3916295095674311250

`A130400(n)-char[A043223(n+1)]`
-/

namespace A089840.P3916295095674311250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043223 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089840.P3916295095674311250

/-! ## A089840.P10487176913888687223

`A130400(n)-char[A204648(n+1)]`
-/

namespace A089840.P10487176913888687223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204648 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089840.P10487176913888687223

/-! ## A089840.P225483570662845586

`A130400(n)-char[A224547(n+1)]`
-/

namespace A089840.P225483570662845586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224547 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089840.P225483570662845586

/-! ## A089840.P7974349500196896828

`A130400(n)-char[A233353(n+1)]`
-/

namespace A089840.P7974349500196896828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233353 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089840.P7974349500196896828

/-! ## A089840.P4380922714922053013

`A130400(n)-char[A295593(n+1)]`
-/

namespace A089840.P4380922714922053013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295593 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089840.P4380922714922053013

/-! ## A089840.P18143918027944465017

`A130400(n)-char[5*A086940(n+1)]`
-/

namespace A089840.P18143918027944465017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A086940 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089840.P18143918027944465017

/-! ## A089840.P12419765564994635972

`A130400(n)-A025439(A028967(n))`
-/

namespace A089840.P12419765564994635972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n - A025439 (A028967 n).toNat

end

end A089840.P12419765564994635972

/-! ## A089840.P18207554974210178881

`A130400(n)-A008838(A053735(n))`
-/

namespace A089840.P18207554974210178881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n - A008838 (A053735 n).toNat

end

end A089840.P18207554974210178881

/-! ## A089840.P1211805916727326482

`A130400(n)-A011730(A053186(n))`
-/

namespace A089840.P1211805916727326482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n - A011730 (A053186 n).toNat

end

end A089840.P1211805916727326482

/-!
# A089842: Order of each element (row) in A089840, 0 if not finite.

The programs for A089842, there is no canonical definition to state claims against.
-/

/-! ## A089842.P7815452929097456913

`A167504(A304472(n+1)+A048068(n+1))`
-/

namespace A089842.P7815452929097456913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167504 (A304472 (n + 1) + A048068 (n + 1)).toNat

end

end A089842.P7815452929097456913

/-! ## A089842.P18310703629762572978

`A325783(A344085(n+1))%A056239(n+5)`
-/

namespace A089842.P18310703629762572978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325783 (A344085 (n + 1)).toNat) (A056239 (n + 5))

end

end A089842.P18310703629762572978

/-! ## A089842.P2103078928371433748

`A181796(A333369(n+1))%A125573(3*n+5)`
-/

namespace A089842.P2103078928371433748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181796 (A333369 (n + 1)).toNat) (A125573 (3 * n + 5))

end

end A089842.P2103078928371433748

/-! ## A089842.P12377452055548000627

`A328620(A075369(n+1))%4`
-/

namespace A089842.P12377452055548000627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328620 (A075369 (n + 1)).toNat) 4

end

end A089842.P12377452055548000627

/-! ## A089842.P18046256492212875825

`A081326(C(A154777(n+1), A036370(n)))`
-/

namespace A089842.P18046256492212875825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (Nat.choose (A154777 (n + 1)).toNat (A036370 n).toNat)

end

end A089842.P18046256492212875825

/-!
# A089844: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A089865/A089866.

The programs for A089844, there is no canonical definition to state claims against.
-/

/-! ## A089844.P15630233546497014286

`A255072(A148711(n))`
-/

namespace A089844.P15630233546497014286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A148711 n).toNat

end

end A089844.P15630233546497014286

/-! ## A089844.P2600623629131253690

`A126796(n)+A083309(A032563(n+1))`
-/

namespace A089844.P2600623629131253690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126796 n + A083309 (A032563 (n + 1)).toNat

end

end A089844.P2600623629131253690

/-! ## A089844.P16476195407579760577

`A083309(n+1)+A070939(A325628(n+1))`
-/

namespace A089844.P16476195407579760577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083309 (n + 1) + A070939 (A325628 (n + 1)).toNat

end

end A089844.P16476195407579760577

/-! ## A089844.P15799208465846933715

`A231149(A293735(n)+3)`
-/

namespace A089844.P15799208465846933715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A293735 n + 3).toNat

end

end A089844.P15799208465846933715

/-!
# A089845: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A089865/A089866.

The programs for A089845, there is no canonical definition to state claims against.
-/

/-! ## A089845.P7749632845018900805

`lcm(2*n-3, a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A089845.P7749632845018900805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  Int.lcm ((2 * n : ℤ) - 3) (a (n - 1) : ℤ)

end

end A089845.P7749632845018900805

/-! ## A089845.P6463632101499491708

`lcm(a(n-1), A004274(n))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A089845.P6463632101499491708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A004274 n)

end

end A089845.P6463632101499491708

/-! ## A089845.P18225034059030947012

`lcm(a(n-1), A163985(A023443(n)))` with `a(0)=1, a(1)=1`
-/

namespace A089845.P18225034059030947012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A163985 (A023443 n).toNat)

end

end A089845.P18225034059030947012

/-! ## A089845.P2493134025508612054

`ceil(∏[record[A194980(2*(n+1))]]/12)`
-/

namespace A089845.P2493134025508612054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 12⌉

end

end A089845.P2493134025508612054

/-! ## A089845.P17508134806226058666

`ceil(∏[A001222(∏[round((n+2)/log(n+2))])]/12)`
-/

namespace A089845.P17508134806226058666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 12⌉

end

end A089845.P17508134806226058666

/-!
# A089846: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A089867/A089868.

The programs for A089846, there is no canonical definition to state claims against.
-/

/-! ## A089846.P3511041558712218749

`A046108(A216837(n))`
-/

namespace A089846.P3511041558712218749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A216837 n).toNat

end

end A089846.P3511041558712218749

/-! ## A089846.P15613427620638177480

`Δ[A124380(n)%A107649(n+1)]`
-/

namespace A089846.P15613427620638177480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124380 n) (A107649 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089846.P15613427620638177480

/-! ## A089846.P4030048807871733483

`A289592(n)+A000196(A383751(3*n+2))`
-/

namespace A089846.P4030048807871733483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289592 n + A000196 (A383751 (3 * n + 2)).toNat

end

end A089846.P4030048807871733483

/-!
# A089847: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A089851/A089853.

The programs for A089847, there is no canonical definition to state claims against.
-/

/-! ## A089847.P16214184828423270762

`1/3*(A000108(n)+2*A089848(n))`
-/

namespace A089847.P16214184828423270762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A000108 n + 2 * A089848 n : ℚ)

end

end A089847.P16214184828423270762

/-! ## A089847.P2892574880388834894

`A289494(A001835(n)+∑[n%or(1, n)])`
-/

namespace A089847.P2892574880388834894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A001835 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A089847.P2892574880388834894

/-! ## A089847.P4951626811722928588

`A070868(A397147(n+1))`
-/

namespace A089847.P4951626811722928588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A397147 (n + 1)).toNat

end

end A089847.P4951626811722928588

/-! ## A089847.P4378844638868520157

`A008676(A072854(n+1))+1`
-/

namespace A089847.P4378844638868520157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A072854 (n + 1)).toNat + 1

end

end A089847.P4378844638868520157

/-!
# A089848: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A089851/A089853.

The programs for A089848, there is no canonical definition to state claims against.
-/

/-! ## A089848.P6015161026715032876

`A007949(n+1)+A007948(A120588(n))`
-/

namespace A089848.P6015161026715032876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + A007948 (A120588 n).toNat

end

end A089848.P6015161026715032876

/-! ## A089848.P16663520252086831674

`A028310(A120588(n)+A007949(n+1))`
-/

namespace A089848.P16663520252086831674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A120588 n + A007949 (n + 1)).toNat

end

end A089848.P16663520252086831674

/-! ## A089848.P16007969314929515717

`A028310(A191265(n+1)+A120588(n))`
-/

namespace A089848.P16007969314929515717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A191265 (n + 1) + A120588 n).toNat

end

end A089848.P16007969314929515717

/-! ## A089848.P15717951871593972436

`A010872(A220826(n+1))-A115140(n)`
-/

namespace A089848.P15717951871593972436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A220826 (n + 1)).toNat - A115140 n

end

end A089848.P15717951871593972436

/-! ## A089848.P9351505544626296338

`A363855(n+1)+A120588(A029966(n+1))`
-/

namespace A089848.P9351505544626296338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363855 (n + 1) + A120588 (A029966 (n + 1)).toNat

end

end A089848.P9351505544626296338

/-!
# A089849: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A069772.

The programs for A089849, the canonical program `A089849.P12960725354984484050` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089849 has offset 0).

The definition of A089849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089849.P12960725354984484050

`∑{#}[floor(n/2), C(#+1, n-#)*A000108(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089849

/-- `∑{#}[floor(n/2), C(#+1, n-#)*A000108(#)]` -/
def P12960725354984484050.Spec : Prop :=
  ∀ n, P12960725354984484050.a n = A089849 n

theorem P12960725354984484050.correct : P12960725354984484050.Spec := by
  intro n
  simp only [A089849]

end A089849

/-! ## A089849.P10870128833677972825

`A128014(n)/gcd(floor((n+1)/2), n+1)`
-/

namespace A089849.P10870128833677972825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n : ℚ) / (Int.gcd ⌊(n + 1 : ℚ) / 2⌋ (n + 1 : ℤ) : ℚ)

end

end A089849.P10870128833677972825

namespace A089849

/-- `A128014(n)/gcd(floor((n+1)/2), n+1)` -/
def P10870128833677972825.Spec : Prop :=
  ∀ n, P10870128833677972825.a n = (A089849 n : ℚ)

end A089849

/-! ## A089849.P4094981337706236405

`A128014(n)/A152271(n)`
-/

namespace A089849.P4094981337706236405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n : ℚ) / (A152271 n : ℚ)

end

end A089849.P4094981337706236405

namespace A089849

/-- `A128014(n)/A152271(n)` -/
def P4094981337706236405.Spec : Prop :=
  ∀ n, P4094981337706236405.a n = (A089849 n : ℚ)

end A089849

/-! ## A089849.P12770552710507847731

`gcd(A097331(n), A126869(n))`
-/

namespace A089849.P12770552710507847731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 n) (A126869 n)

end

end A089849.P12770552710507847731

namespace A089849

/-- `gcd(A097331(n), A126869(n))` -/
def P12770552710507847731.Spec : Prop :=
  ∀ n, (P12770552710507847731.a n : ℤ) = A089849 n

end A089849

/-! ## A089849.P5882258111046373237

`abs(or(A126869(n), A210628(n)))`
-/

namespace A089849.P5882258111046373237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A126869 n) (A210628 n)|

end

end A089849.P5882258111046373237

namespace A089849

/-- `abs(or(A126869(n), A210628(n)))` -/
def P5882258111046373237.Spec : Prop :=
  ∀ n, P5882258111046373237.a n = A089849 n

end A089849

/-! ## A089849.P17365274134308847961

`gcd(A105523(n), A241543(n+1))`
-/

namespace A089849.P17365274134308847961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105523 n) (A241543 (n + 1))

end

end A089849.P17365274134308847961

namespace A089849

/-- `gcd(A105523(n), A241543(n+1))` -/
def P17365274134308847961.Spec : Prop :=
  ∀ n, (P17365274134308847961.a n : ℤ) = A089849 n

end A089849

/-! ## A089849.P6650774364757422325

`A001405(n)/n^(n%2)`
-/

namespace A089849.P6650774364757422325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (n ^ (n % 2) : ℚ)

end

end A089849.P6650774364757422325

namespace A089849

/-- `A001405(n)/n^(n%2)` -/
def P6650774364757422325.Spec : Prop :=
  ∀ n, P6650774364757422325.a n = (A089849 n : ℚ)

end A089849

/-! ## A089849.P16170999768535564465

`A063886(n)-A138364(n)`
-/

namespace A089849.P16170999768535564465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n - A138364 n

end

end A089849.P16170999768535564465

namespace A089849

/-- `A063886(n)-A138364(n)` -/
def P16170999768535564465.Spec : Prop :=
  ∀ n, P16170999768535564465.a n = A089849 n

end A089849

/-! ## A089849.P3698135335094647334

`A001405(n)/A093178(n)`
-/

namespace A089849.P3698135335094647334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A093178 n : ℚ)

end

end A089849.P3698135335094647334

namespace A089849

/-- `A001405(n)/A093178(n)` -/
def P3698135335094647334.Spec : Prop :=
  ∀ n, P3698135335094647334.a n = (A089849 n : ℚ)

end A089849

/-! ## A089849.P3844555608392377334

`gcd(A001405(n), A063886(n))`
-/

namespace A089849.P3844555608392377334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 n) (A063886 n)

end

end A089849.P3844555608392377334

namespace A089849

/-- `gcd(A001405(n), A063886(n))` -/
def P3844555608392377334.Spec : Prop :=
  ∀ n, (P3844555608392377334.a n : ℤ) = A089849 n

end A089849

/-! ## A089849.P6625755475775232759

`gcd(A105523(n), A126930(n))`
-/

namespace A089849.P6625755475775232759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105523 n) (A126930 n)

end

end A089849.P6625755475775232759

namespace A089849

/-- `gcd(A105523(n), A126930(n))` -/
def P6625755475775232759.Spec : Prop :=
  ∀ n, (P6625755475775232759.a n : ℤ) = A089849 n

end A089849

/-! ## A089849.P17957492651390687058

`gcd(A128014(n), A138364(n))`
-/

namespace A089849.P17957492651390687058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128014 n) (A138364 n)

end

end A089849.P17957492651390687058

namespace A089849

/-- `gcd(A128014(n), A138364(n))` -/
def P17957492651390687058.Spec : Prop :=
  ∀ n, (P17957492651390687058.a n : ℤ) = A089849 n

end A089849

/-! ## A089849.P17120698351403504231

`gcd(abs(A126930(n)), A210628(n))`
-/

namespace A089849.P17120698351403504231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A126930 n| (A210628 n)

end

end A089849.P17120698351403504231

namespace A089849

/-- `gcd(abs(A126930(n)), A210628(n))` -/
def P17120698351403504231.Spec : Prop :=
  ∀ n, (P17120698351403504231.a n : ℤ) = A089849 n

end A089849

/-! ## A089849.P17198046149539965170

`A001405(n)/(A133265(n)-1)`
-/

namespace A089849.P17198046149539965170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A133265 n - 1 : ℚ)

end

end A089849.P17198046149539965170

namespace A089849

/-- `A001405(n)/(A133265(n)-1)` -/
def P17198046149539965170.Spec : Prop :=
  ∀ n, P17198046149539965170.a n = (A089849 n : ℚ)

end A089849

/-! ## A089849.P6157555386799392136

`A063886(n)-n*A097331(n)`
-/

namespace A089849.P6157555386799392136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n - (n : ℤ) * A097331 n

end

end A089849.P6157555386799392136

namespace A089849

/-- `A063886(n)-n*A097331(n)` -/
def P6157555386799392136.Spec : Prop :=
  ∀ n, P6157555386799392136.a n = A089849 n

end A089849

/-! ## A089849.P1524889219189238350

`A001405(n)/A023443(A133265(n))`
-/

namespace A089849.P1524889219189238350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A023443 (A133265 n).toNat : ℚ)

end

end A089849.P1524889219189238350

namespace A089849

/-- `A001405(n)/A023443(A133265(n))` -/
def P1524889219189238350.Spec : Prop :=
  ∀ n, P1524889219189238350.a n = (A089849 n : ℚ)

end A089849

/-! ## A089849.P4818275344311939661

`A128014(n)+A128014(n)-A001405(n)`
-/

namespace A089849.P4818275344311939661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 n + (A128014 n - A001405 n)

end

end A089849.P4818275344311939661

namespace A089849

/-- `A128014(n)+A128014(n)-A001405(n)` -/
def P4818275344311939661.Spec : Prop :=
  ∀ n, P4818275344311939661.a n = A089849 n

end A089849

/-! ## A089849.P1505975075626913895

`2*A128014(n)-A001405(n)`
-/

namespace A089849.P1505975075626913895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128014 n - A001405 n

end

end A089849.P1505975075626913895

namespace A089849

/-- `2*A128014(n)-A001405(n)` -/
def P1505975075626913895.Spec : Prop :=
  ∀ n, P1505975075626913895.a n = A089849 n

end A089849

/-! ## A089849.P10659710597445861063

`gcd(A056040(n), A090192(n))`
-/

namespace A089849.P10659710597445861063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056040 n) (A090192 n)

end

end A089849.P10659710597445861063

namespace A089849

/-- `gcd(A056040(n), A090192(n))` -/
def P10659710597445861063.Spec : Prop :=
  ∀ n, (P10659710597445861063.a n : ℤ) = A089849 n

end A089849

/-! ## A089849.P11898064501153715550

`gcd(A128057(n), A189911(n))`
-/

namespace A089849.P11898064501153715550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128057 n) (A189911 n)

end

end A089849.P11898064501153715550

namespace A089849

/-- `gcd(A128057(n), A189911(n))` -/
def P11898064501153715550.Spec : Prop :=
  ∀ n, (P11898064501153715550.a n : ℤ) = A089849 n

end A089849

/-! ## A089849.P2515512738691324729

`C(n, floor(n/2))/n^and(1, n)`
-/

namespace A089849.P2515512738691324729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (n ^ Nat.land 1 n : ℚ)

end

end A089849.P2515512738691324729

namespace A089849

/-- `C(n, floor(n/2))/n^and(1, n)` -/
def P2515512738691324729.Spec : Prop :=
  ∀ n, P2515512738691324729.a n = (A089849 n : ℚ)

end A089849

/-!
# A089850: Involution of natural numbers induced by Catalan automorphism *A089850 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089850, there is no canonical definition to state claims against.
-/

/-! ## A089850.P1357916285729295100

`A074680(A073269(n))`
-/

namespace A089850.P1357916285729295100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A073269 n).toNat

end

end A089850.P1357916285729295100

/-! ## A089850.P14381443376116501258

`A073270(A074679(n))`
-/

namespace A089850.P14381443376116501258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A074679 n).toNat

end

end A089850.P14381443376116501258

/-! ## A089850.P11973668323111585857

`A089851(A072796(n))`
-/

namespace A089850.P11973668323111585857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (A072796 n).toNat

end

end A089850.P11973668323111585857

/-! ## A089850.P7380184032833648478

`A089864(A089854(n))`
-/

namespace A089850.P7380184032833648478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A089854 n).toNat

end

end A089850.P7380184032833648478

/-! ## A089850.P10090593615844917423

`A073269(n)+n-A074679(n)`
-/

namespace A089850.P10090593615844917423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 n + ((n : ℤ) - A074679 n)

end

end A089850.P10090593615844917423

/-! ## A089850.P3178255737347042823

`A074680(A072796(A073281(n)))`
-/

namespace A089850.P3178255737347042823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A072796 (A073281 n).toNat).toNat

end

end A089850.P3178255737347042823

/-! ## A089850.P3247449547924457523

`A089864(n)+n-A123714(A072797(n))`
-/

namespace A089850.P3247449547924457523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 n + ((n : ℤ) - A123714 (A072797 n).toNat)

end

end A089850.P3247449547924457523

/-! ## A089850.P17177230176353708488

`A069770(A089859(n))`
-/

namespace A089850.P17177230176353708488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089859 n).toNat

end

end A089850.P17177230176353708488

/-! ## A089850.P3132179882789078292

`A072796(A089853(n))`
-/

namespace A089850.P3132179882789078292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A089853 n).toNat

end

end A089850.P3132179882789078292

/-! ## A089850.P16082676610022530290

`A129604(A089863(n))`
-/

namespace A089850.P16082676610022530290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129604 (A089863 n).toNat

end

end A089850.P16082676610022530290

/-!
# A089851: Permutation of natural numbers induced by Catalan automorphism *A089851 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089851, there is no canonical definition to state claims against.
-/

/-! ## A089851.P3002334459064942923

`A074680(A069770(n))`
-/

namespace A089851.P3002334459064942923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A069770 n).toNat

end

end A089851.P3002334459064942923

/-! ## A089851.P263302238810796231

`A089850(A072796(n))`
-/

namespace A089851.P263302238810796231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A072796 n).toNat

end

end A089851.P263302238810796231

/-! ## A089851.P4387875799188336024

`A082353(A154125(n))`
-/

namespace A089851.P4387875799188336024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082353 (A154125 n).toNat

end

end A089851.P4387875799188336024

/-! ## A089851.P16603337268877109590

`A057163(A074679(A073280(n)))`
-/

namespace A089851.P16603337268877109590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074679 (A073280 n).toNat).toNat

end

end A089851.P16603337268877109590

/-! ## A089851.P1172212802918960026

`A074680(A073280(A057163(n)))`
-/

namespace A089851.P1172212802918960026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A073280 (A057163 n).toNat).toNat

end

end A089851.P1172212802918960026

/-! ## A089851.P6990050812057435614

`A074680(A069776(A069773(n)))`
-/

namespace A089851.P6990050812057435614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A069776 (A069773 n).toNat).toNat

end

end A089851.P6990050812057435614

/-! ## A089851.P51070686905289216

`A074680(A085168(A085159(n)))`
-/

namespace A089851.P51070686905289216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A085168 (A085159 n).toNat).toNat

end

end A089851.P51070686905289216

/-! ## A089851.P8834770752412445638

`A074680(A085160(A085167(n)))`
-/

namespace A089851.P8834770752412445638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A085160 (A085167 n).toNat).toNat

end

end A089851.P8834770752412445638

/-! ## A089851.P3142767933961401883

`A069770(A074679(A069770(A074679(n))))`
-/

namespace A089851.P3142767933961401883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A074679 (A069770 (A074679 n).toNat).toNat).toNat

end

end A089851.P3142767933961401883

/-! ## A089851.P7680921882989596841

`A074680(A072796(A074680(A072797(n))))`
-/

namespace A089851.P7680921882989596841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A072796 (A074680 (A072797 n).toNat).toNat).toNat

end

end A089851.P7680921882989596841

/-!
# A089852: Involution of natural numbers induced by Catalan automorphism *A089852 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089852, there is no canonical definition to state claims against.
-/

/-! ## A089852.P4279091857919473140

`A069770(A089858(n))`
-/

namespace A089852.P4279091857919473140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089858 n).toNat

end

end A089852.P4279091857919473140

/-! ## A089852.P9116572784353619427

`A072796(A089851(n))`
-/

namespace A089852.P9116572784353619427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A089851 n).toNat

end

end A089852.P9116572784353619427

/-! ## A089852.P14764860217466867030

`A089853(A072796(n))`
-/

namespace A089852.P14764860217466867030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089853 (A072796 n).toNat

end

end A089852.P14764860217466867030

/-! ## A089852.P12775779016491540157

`A073270(A089860(n))`
-/

namespace A089852.P12775779016491540157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A089860 n).toNat

end

end A089852.P12775779016491540157

/-! ## A089852.P594736414117893238

`A074680(A089859(n))`
-/

namespace A089852.P594736414117893238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A089859 n).toNat

end

end A089852.P594736414117893238

/-! ## A089852.P4263381902165539205

`A072796(A074680(A069770(n)))`
-/

namespace A089852.P4263381902165539205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A074680 (A069770 n).toNat).toNat

end

end A089852.P4263381902165539205

/-! ## A089852.P16430762673276806933

`A069770(A123714(A073269(n)))`
-/

namespace A089852.P16430762673276806933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A123714 (A073269 n).toNat).toNat

end

end A089852.P16430762673276806933

/-! ## A089852.P7007828547036245038

`A069770(A123499(A123503(n)))`
-/

namespace A089852.P7007828547036245038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A123499 (A123503 n).toNat).toNat

end

end A089852.P7007828547036245038

/-! ## A089852.P9651862129811595933

`A072796(A074680(A072796(A073270(n))))`
-/

namespace A089852.P9651862129811595933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A074680 (A072796 (A073270 n).toNat).toNat).toNat

end

end A089852.P9651862129811595933

/-! ## A089852.P11480976051864374784

`A069770(A074679(A072796(A154126(A154126(n)))))`
-/

namespace A089852.P11480976051864374784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A074679 (A072796 (A154126 (A154126 n).toNat).toNat).toNat).toNat

end

end A089852.P11480976051864374784

/-!
# A089853: Permutation of natural numbers induced by Catalan automorphism *A089853 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089853, there is no canonical definition to state claims against.
-/

/-! ## A089853.P11883496411830334852

`A069770(A074679(n))`
-/

namespace A089853.P11883496411830334852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A074679 n).toNat

end

end A089853.P11883496411830334852

/-! ## A089853.P10081724156693005361

`A072796(A089850(n))`
-/

namespace A089853.P10081724156693005361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A089850 n).toNat

end

end A089853.P10081724156693005361

/-! ## A089853.P16108685046100587545

`A089852(A072796(n))`
-/

namespace A089853.P16108685046100587545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089852 (A072796 n).toNat

end

end A089853.P16108685046100587545

/-! ## A089853.P4324083099698849535

`A073270(A089859(n))`
-/

namespace A089853.P4324083099698849535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A089859 n).toNat

end

end A089853.P4324083099698849535

/-! ## A089853.P916372029264020025

`A074680(A089860(n))`
-/

namespace A089853.P916372029264020025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A089860 n).toNat

end

end A089853.P916372029264020025

/-! ## A089853.P8324432595232788981

`A154125(A082354(n))`
-/

namespace A089853.P8324432595232788981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A082354 n).toNat

end

end A089853.P8324432595232788981

/-! ## A089853.P15238907839327015855

`A073280(A074680(A057163(n)))`
-/

namespace A089853.P15238907839327015855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A074680 (A057163 n).toNat).toNat

end

end A089853.P15238907839327015855

/-! ## A089853.P1881189212143570779

`A069770(A123714(A069770(n)))`
-/

namespace A089853.P1881189212143570779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A123714 (A069770 n).toNat).toNat

end

end A089853.P1881189212143570779

/-! ## A089853.P6719525276620673305

`A072796(A073269(n)+n-A074679(n))`
-/

namespace A089853.P6719525276620673305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A073269 n + ((n : ℤ) - A074679 n)).toNat

end

end A089853.P6719525276620673305

/-! ## A089853.P11132566233548192125

`A069770(A073269(n)+n-A089850(n))`
-/

namespace A089853.P11132566233548192125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A073269 n + ((n : ℤ) - A089850 n)).toNat

end

end A089853.P11132566233548192125

/-!
# A089854: Involution of natural numbers induced by Catalan automorphism *A089854 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089854, there is no canonical definition to state claims against.
-/

/-! ## A089854.P138785611937187503

`A072797(A089855(n))`
-/

namespace A089854.P138785611937187503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A089855 n).toNat

end

end A089854.P138785611937187503

/-! ## A089854.P17056129402475731480

`A089857(A072797(n))`
-/

namespace A089854.P17056129402475731480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089857 (A072797 n).toNat

end

end A089854.P17056129402475731480

/-! ## A089854.P14180026777907903095

`A089855(A089856(n))`
-/

namespace A089854.P14180026777907903095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089855 (A089856 n).toNat

end

end A089854.P14180026777907903095

/-! ## A089854.P2947494741173679851

`A089856(A089857(n))`
-/

namespace A089854.P2947494741173679851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A089857 n).toNat

end

end A089854.P2947494741173679851

/-! ## A089854.P3875452163236844806

`A072797(A123713(n))`
-/

namespace A089854.P3875452163236844806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A123713 n).toNat

end

end A089854.P3875452163236844806

/-! ## A089854.P7309094732913869059

`A089856(A123714(n))`
-/

namespace A089854.P7309094732913869059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A123714 n).toNat

end

end A089854.P7309094732913869059

/-! ## A089854.P15697119894264954647

`A123713(A089856(n%(n+1)))`
-/

namespace A089854.P15697119894264954647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (A089856 (n % (n + 1))).toNat

end

end A089854.P15697119894264954647

/-! ## A089854.P3747406054887286327

`A089864(n)+n-A089850(n)`
-/

namespace A089854.P3747406054887286327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 n + ((n : ℤ) - A089850 n)

end

end A089854.P3747406054887286327

/-! ## A089854.P7784919119487570476

`A074679(A072796(A074680(n)))`
-/

namespace A089854.P7784919119487570476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A072796 (A074680 n).toNat).toNat

end

end A089854.P7784919119487570476

/-! ## A089854.P5057390050835309959

`A130355(A072796(A130356(n)))`
-/

namespace A089854.P5057390050835309959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130355 (A072796 (A130356 n).toNat).toNat

end

end A089854.P5057390050835309959

/-!
# A089855: Permutation of natural numbers induced by Catalan Automorphism *A089855 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089855, there is no canonical definition to state claims against.
-/

/-! ## A089855.P5832963583750021955

`A123713(n)%80`
-/

namespace A089855.P5832963583750021955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123713 n) 80

end

end A089855.P5832963583750021955

/-! ## A089855.P2570605181093502385

`A069770(A074680(n))`
-/

namespace A089855.P2570605181093502385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A074680 n).toNat

end

end A089855.P2570605181093502385

/-! ## A089855.P3524834338164690000

`A072797(A089854(n))`
-/

namespace A089855.P3524834338164690000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A089854 n).toNat

end

end A089855.P3524834338164690000

/-! ## A089855.P2763526911575213141

`A089856(A072797(n))`
-/

namespace A089855.P2763526911575213141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A072797 n).toNat

end

end A089855.P2763526911575213141

/-! ## A089855.P16718623081749135545

`A089854(A089856(n))`
-/

namespace A089855.P16718623081749135545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A089856 n).toNat

end

end A089855.P16718623081749135545

/-! ## A089855.P16520857492080492563

`A089857(A089857(n))`
-/

namespace A089855.P16520857492080492563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089857 (A089857 n).toNat

end

end A089855.P16520857492080492563

/-! ## A089855.P17232543633051497186

`A154125(A082352(n))`
-/

namespace A089855.P17232543633051497186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A082352 n).toNat

end

end A089855.P17232543633051497186

/-! ## A089855.P18209752620588298704

`A123714(A123714(n))`
-/

namespace A089855.P18209752620588298704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (A123714 n).toNat

end

end A089855.P18209752620588298704

/-! ## A089855.P13137050681228323201

`A123713(and(n, A127229(n+5)))`
-/

namespace A089855.P13137050681228323201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (Int.land (n : ℤ) (A127229 (n + 5))).toNat

end

end A089855.P13137050681228323201

/-! ## A089855.P12674759320682341317

`∑{d}[n+1, A088157(#-1)*A123713((n+1)/#-1)]`
-/

namespace A089855.P12674759320682341317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088157 (d - 1) * A123713 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A089855.P12674759320682341317

/-!
# A089856: Involution of natural numbers induced by Catalan Automorphism *A089856 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089856, there is no canonical definition to state claims against.
-/

/-! ## A089856.P16280822479278989643

`A073269(A069770(n))`
-/

namespace A089856.P16280822479278989643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A069770 n).toNat

end

end A089856.P16280822479278989643

/-! ## A089856.P16031670879960331301

`A069770(A073270(n))`
-/

namespace A089856.P16031670879960331301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A073270 n).toNat

end

end A089856.P16031670879960331301

/-! ## A089856.P18361768445777318148

`A089855(A072797(n))`
-/

namespace A089856.P18361768445777318148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089855 (A072797 n).toNat

end

end A089856.P18361768445777318148

/-! ## A089856.P17235876992974552221

`A072797(A089857(n))`
-/

namespace A089856.P17235876992974552221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A089857 n).toNat

end

end A089856.P17235876992974552221

/-! ## A089856.P5060575954547722225

`A089854(A089855(n))`
-/

namespace A089856.P5060575954547722225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A089855 n).toNat

end

end A089856.P5060575954547722225

/-! ## A089856.P9485514593512974912

`A089857(A089854(n))`
-/

namespace A089856.P9485514593512974912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089857 (A089854 n).toNat

end

end A089856.P9485514593512974912

/-! ## A089856.P15743709706793544342

`A072797(A123714(n))`
-/

namespace A089856.P15743709706793544342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A123714 n).toNat

end

end A089856.P15743709706793544342

/-! ## A089856.P7039969196735423184

`A089854(A123713(n))`
-/

namespace A089856.P7039969196735423184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A123713 n).toNat

end

end A089856.P7039969196735423184

/-! ## A089856.P4087320267674089538

`A123714(A089854(2*n-n))`
-/

namespace A089856.P4087320267674089538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (A089854 (2 * n - n)).toNat

end

end A089856.P4087320267674089538

/-! ## A089856.P1654610851630600658

`A123714(lcm((-1)^n, A089854(n)))`
-/

namespace A089856.P1654610851630600658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (Int.lcm ((-1) ^ n) (A089854 n))

end

end A089856.P1654610851630600658

/-!
# A089857: Permutation of natural numbers induced by Catalan Automorphism *A089857 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089857, there is no canonical definition to state claims against.
-/

/-! ## A089857.P17486122210299616617

`A123714(n)%73`
-/

namespace A089857.P17486122210299616617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123714 n) 73

end

end A089857.P17486122210299616617

/-! ## A089857.P12034077220679576247

`A074679(A069770(n))`
-/

namespace A089857.P12034077220679576247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A069770 n).toNat

end

end A089857.P12034077220679576247

/-! ## A089857.P16125717415685334230

`A089854(A072797(n))`
-/

namespace A089857.P16125717415685334230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A072797 n).toNat

end

end A089857.P16125717415685334230

/-! ## A089857.P5786203687642429153

`A072797(A089856(n))`
-/

namespace A089857.P5786203687642429153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A089856 n).toNat

end

end A089857.P5786203687642429153

/-! ## A089857.P12121012214911497331

`A089856(A089854(n))`
-/

namespace A089857.P12121012214911497331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A089854 n).toNat

end

end A089857.P12121012214911497331

/-! ## A089857.P4094835594927755160

`A089855(A089855(n))`
-/

namespace A089857.P4094835594927755160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089855 (A089855 n).toNat

end

end A089857.P4094835594927755160

/-! ## A089857.P17820276216607054348

`A082351(A154125(n))`
-/

namespace A089857.P17820276216607054348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082351 (A154125 n).toNat

end

end A089857.P17820276216607054348

/-! ## A089857.P9396774885155759493

`A123713(A123713(n))`
-/

namespace A089857.P9396774885155759493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (A123713 n).toNat

end

end A089857.P9396774885155759493

/-! ## A089857.P707996457503493247

`A123714(and(n, A127229(n+5)))`
-/

namespace A089857.P707996457503493247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (Int.land (n : ℤ) (A127229 (n + 5))).toNat

end

end A089857.P707996457503493247

/-! ## A089857.P12178244208182823936

`∑{d}[n+1, A088157(#-1)*A123714((n+1)/#-1)]`
-/

namespace A089857.P12178244208182823936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088157 (d - 1) * A123714 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A089857.P12178244208182823936

/-!
# A089858: Permutation of natural numbers induced by Catalan Automorphism *A089858 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089858, there is no canonical definition to state claims against.
-/

/-! ## A089858.P9674430133340293802

`A072797(A069770(n))`
-/

namespace A089858.P9674430133340293802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A069770 n).toNat

end

end A089858.P9674430133340293802

/-! ## A089858.P10148962119118205149

`A073283(A073280(n))`
-/

namespace A089858.P10148962119118205149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073283 (A073280 n).toNat

end

end A089858.P10148962119118205149

/-! ## A089858.P10835790844091140313

`A074679(A072796(n))`
-/

namespace A089858.P10835790844091140313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A072796 n).toNat

end

end A089858.P10835790844091140313

/-! ## A089858.P2063896746579289771

`A069770(A089852(n))`
-/

namespace A089858.P2063896746579289771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089852 n).toNat

end

end A089858.P2063896746579289771

/-! ## A089858.P7941842547065740153

`A073269(A089851(n))`
-/

namespace A089858.P7941842547065740153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A089851 n).toNat

end

end A089858.P7941842547065740153

/-! ## A089858.P15682937460911016396

`A123714(A073269(n))`
-/

namespace A089858.P15682937460911016396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (A073269 n).toNat

end

end A089858.P15682937460911016396

/-! ## A089858.P6046180180815564276

`A123713(A089859(n))`
-/

namespace A089858.P6046180180815564276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (A089859 n).toNat

end

end A089858.P6046180180815564276

/-! ## A089858.P1230132846234314906

`A123499(A123503(n))`
-/

namespace A089858.P1230132846234314906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123499 (A123503 n).toNat

end

end A089858.P1230132846234314906

/-! ## A089858.P5005748854339160787

`A057163(A073270(A057163(n)))`
-/

namespace A089858.P5005748854339160787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073270 (A057163 n).toNat).toNat

end

end A089858.P5005748854339160787

/-! ## A089858.P7465856201505954639

`A074679(A057163(A073283(n)))`
-/

namespace A089858.P7465856201505954639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A057163 (A073283 n).toNat).toNat

end

end A089858.P7465856201505954639

/-!
# A089859: Permutation of natural numbers induced by Catalan Automorphism *A089859 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089859, there is no canonical definition to state claims against.
-/

/-! ## A089859.P11068791389541384400

`A069770(A089850(n))`
-/

namespace A089859.P11068791389541384400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089850 n).toNat

end

end A089859.P11068791389541384400

/-! ## A089859.P9756307254194762199

`A089860(A072796(n))`
-/

namespace A089859.P9756307254194762199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089860 (A072796 n).toNat

end

end A089859.P9756307254194762199

/-! ## A089859.P12032684926902140245

`A072797(A089860(n))`
-/

namespace A089859.P12032684926902140245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A089860 n).toNat

end

end A089859.P12032684926902140245

/-! ## A089859.P17499280034956851299

`A123713(A073269(n))`
-/

namespace A089859.P17499280034956851299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (A073269 n).toNat

end

end A089859.P17499280034956851299

/-! ## A089859.P15817781258048753402

`A129604(A089854(n))`
-/

namespace A089859.P15817781258048753402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129604 (A089854 n).toNat

end

end A089859.P15817781258048753402

/-! ## A089859.P2322997845047812012

`A069767(A089850(A073287(n)))`
-/

namespace A089859.P2322997845047812012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A089850 (A073287 n).toNat).toNat

end

end A089859.P2322997845047812012

/-! ## A089859.P2333925198792725726

`A074679(A072796(A089851(n)))`
-/

namespace A089859.P2333925198792725726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A072796 (A089851 n).toNat).toNat

end

end A089859.P2333925198792725726

/-! ## A089859.P16008850655414688442

`A073269(A089853(n))`
-/

namespace A089859.P16008850655414688442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A089853 n).toNat

end

end A089859.P16008850655414688442

/-! ## A089859.P5738932582233453236

`A074679(A089852(n))`
-/

namespace A089859.P5738932582233453236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A089852 n).toNat

end

end A089859.P5738932582233453236

/-! ## A089859.P13719824855557568296

`A123714(A089858(n))`
-/

namespace A089859.P13719824855557568296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (A089858 n).toNat

end

end A089859.P13719824855557568296

/-!
# A089860: Permutation of natural numbers induced by Catalan automorphism *A089860 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089860, there is no canonical definition to state claims against.
-/

/-! ## A089860.P9490936268933514820

`A069770(A089851(n))`
-/

namespace A089860.P9490936268933514820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089851 n).toNat

end

end A089860.P9490936268933514820

/-! ## A089860.P17191718659700229428

`A089859(A072796(n))`
-/

namespace A089860.P17191718659700229428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A072796 n).toNat

end

end A089860.P17191718659700229428

/-! ## A089860.P14843109519638008058

`A072797(A089859(n))`
-/

namespace A089860.P14843109519638008058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A089859 n).toNat

end

end A089860.P14843109519638008058

/-! ## A089860.P17265102937127116046

`A123713(A069770(n))`
-/

namespace A089860.P17265102937127116046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (A069770 n).toNat

end

end A089860.P17265102937127116046

/-! ## A089860.P11537086189945868754

`A123714(A074679(n))`
-/

namespace A089860.P11537086189945868754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (A074679 n).toNat

end

end A089860.P11537086189945868754

/-! ## A089860.P6514433790248829070

`A073280(A074679(A073280(n)))`
-/

namespace A089860.P6514433790248829070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A074679 (A073280 n).toNat).toNat

end

end A089860.P6514433790248829070

/-! ## A089860.P812708725975644071

`A123714(A123714(A069770(n)%A017305(n)))`
-/

namespace A089860.P812708725975644071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (A123714 (Int.tmod (A069770 n) (A017305 n)).toNat).toNat

end

end A089860.P812708725975644071

/-! ## A089860.P597078561142851834

`A069776(A069773(A074680(A069776(A069773(n)))))`
-/

namespace A089860.P597078561142851834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069776 (A069773 (A074680 (A069776 (A069773 n).toNat).toNat).toNat).toNat

end

end A089860.P597078561142851834

/-! ## A089860.P6373274877944402188

`A085168(A085159(A074680(A085168(A085159(n)))))`
-/

namespace A089860.P6373274877944402188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085168 (A085159 (A074680 (A085168 (A085159 n).toNat).toNat).toNat).toNat

end

end A089860.P6373274877944402188

/-! ## A089860.P15524251109223950027

`A073269(A089852(n))`
-/

namespace A089860.P15524251109223950027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A089852 n).toNat

end

end A089860.P15524251109223950027

/-!
# A089861: Permutation of natural numbers induced by Catalan Automorphism *A089861 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089861, there is no canonical definition to state claims against.
-/

/-! ## A089861.P18150188955778359507

`A069770(A072797(n))`
-/

namespace A089861.P18150188955778359507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A072797 n).toNat

end

end A089861.P18150188955778359507

/-! ## A089861.P5242943436659372016

`A073280(A073282(n))`
-/

namespace A089861.P5242943436659372016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A073282 n).toNat

end

end A089861.P5242943436659372016

/-! ## A089861.P12925073048428332438

`A072796(A074680(n))`
-/

namespace A089861.P12925073048428332438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A074680 n).toNat

end

end A089861.P12925073048428332438

/-! ## A089861.P9458633060992379759

`A073270(A089855(n))`
-/

namespace A089861.P9458633060992379759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A089855 n).toNat

end

end A089861.P9458633060992379759

/-! ## A089861.P14354079530053406034

`A074680(A089854(n))`
-/

namespace A089861.P14354079530053406034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A089854 n).toNat

end

end A089861.P14354079530053406034

/-! ## A089861.P271713998509640787

`A073270(A123713(n))`
-/

namespace A089861.P271713998509640787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A123713 n).toNat

end

end A089861.P271713998509640787

/-! ## A089861.P8492648487601973532

`A073282(A074679(A057163(n)))`
-/

namespace A089861.P8492648487601973532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A074679 (A057163 n).toNat).toNat

end

end A089861.P8492648487601973532

/-! ## A089861.P3033771001240475214

`A074680(A089864(n)+n-A089850(n))`
-/

namespace A089861.P3033771001240475214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A089864 n + ((n : ℤ) - A089850 n)).toNat

end

end A089861.P3033771001240475214

/-! ## A089861.P9582274942794425183

`A074680(n-(A089850(n)-A089864(n)))`
-/

namespace A089861.P9582274942794425183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 ((n : ℤ) - (A089850 n - A089864 n)).toNat

end

end A089861.P9582274942794425183

/-! ## A089861.P15729152497263269523

`A073282(A074679(A073283(A072796(n))))`
-/

namespace A089861.P15729152497263269523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A074679 (A073283 (A072796 n).toNat).toNat).toNat

end

end A089861.P15729152497263269523

/-!
# A089862: Permutation of natural numbers induced by Catalan automorphism *A089862 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089862, there is no canonical definition to state claims against.
-/

/-! ## A089862.P17128209367137600926

`A069770(A089857(n))`
-/

namespace A089862.P17128209367137600926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089857 n).toNat

end

end A089862.P17128209367137600926

/-! ## A089862.P678381675233308665

`A072796(A089863(n))`
-/

namespace A089862.P678381675233308665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A089863 n).toNat

end

end A089862.P678381675233308665

/-! ## A089862.P6041621564843643498

`A089863(A072797(n))`
-/

namespace A089862.P6041621564843643498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A072797 n).toNat

end

end A089862.P6041621564843643498

/-! ## A089862.P10528570425017424475

`A073270(A089854(n))`
-/

namespace A089862.P10528570425017424475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A089854 n).toNat

end

end A089862.P10528570425017424475

/-! ## A089862.P18271600759998359235

`A074680(A089855(n))`
-/

namespace A089862.P18271600759998359235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A089855 n).toNat

end

end A089862.P18271600759998359235

/-! ## A089862.P6206697341760231085

`A089861(A089856(n))`
-/

namespace A089862.P6206697341760231085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089861 (A089856 n).toNat

end

end A089862.P6206697341760231085

/-! ## A089862.P14579729960127979575

`A069770(A123714(n))`
-/

namespace A089862.P14579729960127979575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A123714 n).toNat

end

end A089862.P14579729960127979575

/-! ## A089862.P17172056915530704590

`A074680(A123713(n))`
-/

namespace A089862.P17172056915530704590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A123713 n).toNat

end

end A089862.P17172056915530704590

/-! ## A089862.P1119227320039072758

`A082353(A123496(n))`
-/

namespace A089862.P1119227320039072758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082353 (A123496 n).toNat

end

end A089862.P1119227320039072758

/-! ## A089862.P3337673467946298501

`A069770(A074679(A069770(n)))`
-/

namespace A089862.P3337673467946298501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A074679 (A069770 n).toNat).toNat

end

end A089862.P3337673467946298501

/-!
# A089863: Permutation of natural numbers induced by Catalan Automorphism *A089863 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089863, there is no canonical definition to state claims against.
-/

/-! ## A089863.P15119154741836945797

`A069770(A089854(n))`
-/

namespace A089863.P15119154741836945797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089854 n).toNat

end

end A089863.P15119154741836945797

/-! ## A089863.P282987694395037700

`A072796(A089862(n))`
-/

namespace A089863.P282987694395037700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A089862 n).toNat

end

end A089863.P282987694395037700

/-! ## A089863.P16737253516062030247

`A089862(A072797(n))`
-/

namespace A089863.P16737253516062030247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089862 (A072797 n).toNat

end

end A089863.P16737253516062030247

/-! ## A089863.P10016977232379339494

`A073270(A089857(n))`
-/

namespace A089863.P10016977232379339494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A089857 n).toNat

end

end A089863.P10016977232379339494

/-! ## A089863.P16230702604807667382

`A074680(A089856(n))`
-/

namespace A089863.P16230702604807667382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A089856 n).toNat

end

end A089863.P16230702604807667382

/-! ## A089863.P15298476924255760417

`A089861(A089855(n))`
-/

namespace A089863.P15298476924255760417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089861 (A089855 n).toNat

end

end A089863.P15298476924255760417

/-! ## A089863.P3643156588225882142

`A057502(A123717(n))`
-/

namespace A089863.P3643156588225882142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A123717 n).toNat

end

end A089863.P3643156588225882142

/-! ## A089863.P4635497430245199381

`A073270(A123714(n))`
-/

namespace A089863.P4635497430245199381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A123714 n).toNat

end

end A089863.P4635497430245199381

/-! ## A089863.P11138573813695414623

`A089861(A123713(n))`
-/

namespace A089863.P11138573813695414623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089861 (A123713 n).toNat

end

end A089863.P11138573813695414623

/-! ## A089863.P2055540368498691533

`A129604(A089850(n))`
-/

namespace A089863.P2055540368498691533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129604 (A089850 n).toNat

end

end A089863.P2055540368498691533

/-!
# A089864: Involution of natural numbers induced by the Catalan automorphism gma089864 acting on the binary trees/parenthesizations encoded by A014486/A063171.

The programs for A089864, there is no canonical definition to state claims against.
-/

/-! ## A089864.P5298669834927674782

`A089850(A089854(n))`
-/

namespace A089864.P5298669834927674782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A089854 n).toNat

end

end A089864.P5298669834927674782

/-! ## A089864.P18280060537542908844

`A129604(A069770(n))`
-/

namespace A089864.P18280060537542908844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129604 (A069770 n).toNat

end

end A089864.P18280060537542908844

/-! ## A089864.P7840333412684639482

`A073269(n)+A089854(n)-A074679(n)`
-/

namespace A089864.P7840333412684639482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 n + (A089854 n - A074679 n)

end

end A089864.P7840333412684639482

/-! ## A089864.P5444700194030591447

`A089850(A072797(A089856(A072797(n))))`
-/

namespace A089864.P5444700194030591447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A072797 (A089856 (A072797 n).toNat).toNat).toNat

end

end A089864.P5444700194030591447

/-! ## A089864.P13688958697090152311

`A123713(A073269(A123713(A073269(n))))`
-/

namespace A089864.P13688958697090152311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (A073269 (A123713 (A073269 n).toNat).toNat).toNat

end

end A089864.P13688958697090152311

/-! ## A089864.P5003720989414736074

`A069770(A131173(A069770(A154453(n))))`
-/

namespace A089864.P5003720989414736074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A131173 (A069770 (A154453 n).toNat).toNat).toNat

end

end A089864.P5003720989414736074

/-! ## A089864.P5883846558433466660

`A069770(A154454(A069770(A131173(n))))`
-/

namespace A089864.P5883846558433466660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A154454 (A069770 (A131173 n).toNat).toNat).toNat

end

end A089864.P5883846558433466660

/-! ## A089864.P3285079986103003808

`A074680(A129611(A123503(n)))`
-/

namespace A089864.P3285079986103003808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A129611 (A123503 n).toNat).toNat

end

end A089864.P3285079986103003808

/-! ## A089864.P5093476460231499060

`A089850(A069770(A089863(n)))`
-/

namespace A089864.P5093476460231499060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A069770 (A089863 n).toNat).toNat

end

end A089864.P5093476460231499060

/-! ## A089864.P1395698633484835971

`A129604(A082352(A123495(n)))`
-/

namespace A089864.P1395698633484835971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129604 (A082352 (A123495 n).toNat).toNat

end

end A089864.P1395698633484835971

/-!
# A089865: Permutation of natural numbers induced by Catalan Automorphism *A089865 acting on the parenthesizations/binary trees encoded by A014486/A063171.

The programs for A089865, there is no canonical definition to state claims against.
-/

/-! ## A089865.P14358967363152520424

`A057163(A154122(A057163(n)))`
-/

namespace A089865.P14358967363152520424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154122 (A057163 n).toNat).toNat

end

end A089865.P14358967363152520424

/-! ## A089865.P13027965527999117292

`A069770(A154121(A069770(n)))`
-/

namespace A089865.P13027965527999117292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A154121 (A069770 n).toNat).toNat

end

end A089865.P13027965527999117292

/-! ## A089865.P6173068203181824191

`A154126(A154125(A154121(A154126(A154125(n)))))`
-/

namespace A089865.P6173068203181824191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A154125 (A154121 (A154126 (A154125 n).toNat).toNat).toNat).toNat

end

end A089865.P6173068203181824191

/-! ## A089865.P17255503172451584052

`A073280(A089866(A073280(n)))`
-/

namespace A089865.P17255503172451584052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A089866 (A073280 n).toNat).toNat

end

end A089865.P17255503172451584052

/-! ## A089865.P8536861560497410970

`A074679(A089851(A154121(A074679(A089851(n)))))`
-/

namespace A089865.P8536861560497410970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A089851 (A154121 (A074679 (A089851 n).toNat).toNat).toNat).toNat

end

end A089865.P8536861560497410970

/-! ## A089865.P4932161337707374478

`A089853(A074680(A154121(A089853(A074680(n)))))`
-/

namespace A089865.P4932161337707374478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089853 (A074680 (A154121 (A089853 (A074680 n).toNat).toNat).toNat).toNat

end

end A089865.P4932161337707374478

/-!
# A089866: Permutation of natural numbers induced by Catalan Automorphism *A089866 acting on the parenthesizations/binary trees encoded by A014486/A063171.

The programs for A089866, there is no canonical definition to state claims against.
-/

/-! ## A089866.P18173034438469903266

`A057163(A154121(A057163(n)))`
-/

namespace A089866.P18173034438469903266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154121 (A057163 n).toNat).toNat

end

end A089866.P18173034438469903266

/-! ## A089866.P12535569752672882528

`A069770(A154122(A069770(n)))`
-/

namespace A089866.P12535569752672882528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A154122 (A069770 n).toNat).toNat

end

end A089866.P12535569752672882528

/-! ## A089866.P10409965762569783691

`A073280(A069770(A154121(A069770(A073280(n)))))`
-/

namespace A089866.P10409965762569783691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A069770 (A154121 (A069770 (A073280 n).toNat).toNat).toNat).toNat

end

end A089866.P10409965762569783691

/-! ## A089866.P2746333315918970864

`A089854(A089865(A089854(A089865(A089854(n)))))`
-/

namespace A089866.P2746333315918970864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A089865 (A089854 (A089865 (A089854 n).toNat).toNat).toNat).toNat

end

end A089866.P2746333315918970864

/-! ## A089866.P3017895874894990829

`A074679(A089851(A154122(A074679(A089851(n)))))`
-/

namespace A089866.P3017895874894990829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A089851 (A154122 (A074679 (A089851 n).toNat).toNat).toNat).toNat

end

end A089866.P3017895874894990829

/-! ## A089866.P17362769521388885955

`A089853(A074680(A154122(A089853(A074680(n)))))`
-/

namespace A089866.P17362769521388885955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089853 (A074680 (A154122 (A089853 (A074680 n).toNat).toNat).toNat).toNat

end

end A089866.P17362769521388885955

/-!
# A089867: Permutation of natural numbers induced by the Catalan bijection gma089867 acting on the parenthesizations/binary trees encoded by A014486/A063171.

The programs for A089867, there is no canonical definition to state claims against.
-/

/-! ## A089867.P15340210636212897871

`A089869(Δ[A025466(n)]+n)`
-/

namespace A089867.P15340210636212897871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A089867.P15340210636212897871

/-! ## A089867.P12598629697778661004

`A089869(Δ[A025469(n)]+n)`
-/

namespace A089867.P12598629697778661004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A089867.P12598629697778661004

/-! ## A089867.P14551487567988409033

`A089869(n)-Δ[A025466(n)]`
-/

namespace A089867.P14551487567988409033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 n - (f1 (n + 1) - f1 n)

end

end A089867.P14551487567988409033

/-! ## A089867.P17451218100945109164

`A089869(n)-Δ[A025469(n)]`
-/

namespace A089867.P17451218100945109164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 n - (f1 (n + 1) - f1 n)

end

end A089867.P17451218100945109164

/-! ## A089867.P15384937816606883465

`A089869(A089869(A089868(n)))`
-/

namespace A089867.P15384937816606883465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A089869 (A089868 n).toNat).toNat

end

end A089867.P15384937816606883465

/-! ## A089867.P14311398337556722829

`A083920(A089869(n))+A003056(n)`
-/

namespace A089867.P14311398337556722829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A089869 n).toNat + A003056 n

end

end A089867.P14311398337556722829

/-! ## A089867.P9502993943624638976

`A083920(A089869(n))+n-A083920(n)`
-/

namespace A089867.P9502993943624638976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A089869 n).toNat + ((n : ℤ) - A083920 n)

end

end A089867.P9502993943624638976

/-! ## A089867.P564661065358997222

`A073286(n)+A089869(n)-A122312(n)`
-/

namespace A089867.P564661065358997222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073286 n + (A089869 n - A122312 n)

end

end A089867.P564661065358997222

/-! ## A089867.P9701509259752868918

`A089869(n-(A073286(n)-A122312(n)))`
-/

namespace A089867.P9701509259752868918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 ((n : ℤ) - (A073286 n - A122312 n)).toNat

end

end A089867.P9701509259752868918

/-!
# A089868: Permutation of natural numbers induced by the Catalan bijection gma089868 acting on the parenthesizations/binary trees encoded by A014486/A063171.

The programs for A089868, there is no canonical definition to state claims against.
-/

/-! ## A089868.P5316771617224592819

`A089870(Δ[A025466(n)]+n)`
-/

namespace A089868.P5316771617224592819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A089868.P5316771617224592819

/-! ## A089868.P4779433395382409850

`A089870(Δ[A025469(n)]+n)`
-/

namespace A089868.P4779433395382409850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A089868.P4779433395382409850

/-! ## A089868.P17346901423143769494

`A089870(n)-Δ[A025466(n)]`
-/

namespace A089868.P17346901423143769494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 n - (f1 (n + 1) - f1 n)

end

end A089868.P17346901423143769494

/-! ## A089868.P4501500054970883971

`A089870(n)-Δ[A025469(n)]`
-/

namespace A089868.P4501500054970883971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 n - (f1 (n + 1) - f1 n)

end

end A089868.P4501500054970883971

/-! ## A089868.P7271579134925591098

`A083920(A089870(n))+A003056(n)`
-/

namespace A089868.P7271579134925591098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A089870 n).toNat + A003056 n

end

end A089868.P7271579134925591098

/-! ## A089868.P9035692453880233626

`A083920(A089870(n))+n-A083920(n)`
-/

namespace A089868.P9035692453880233626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A089870 n).toNat + ((n : ℤ) - A083920 n)

end

end A089868.P9035692453880233626

/-! ## A089868.P11964140752378210661

`A089867(n)+A089870(n)-A089869(n)`
-/

namespace A089868.P11964140752378210661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 n + (A089870 n - A089869 n)

end

end A089868.P11964140752378210661

/-! ## A089868.P5299571392755774026

`A130396(A130954(n)%A130972(n+3))`
-/

namespace A089868.P5299571392755774026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130396 (Int.tmod (A130954 n) (A130972 (n + 3))).toNat

end

end A089868.P5299571392755774026

/-! ## A089868.P6042908410132993225

`A154453(A073286(n)%A153830(3*n+1))`
-/

namespace A089868.P6042908410132993225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (Int.tmod (A073286 n) (A153830 (3 * n + 1))).toNat

end

end A089868.P6042908410132993225

/-!
# A089869: Permutation of natural numbers induced by the Catalan bijection gma089869 acting on the parenthesizations/binary trees encoded by A014486/A063171.

The programs for A089869, there is no canonical definition to state claims against.
-/

/-! ## A089869.P1143366833270028205

`A057504(A074684(n))`
-/

namespace A089869.P1143366833270028205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057504 (A074684 n).toNat

end

end A089869.P1143366833270028205

/-! ## A089869.P8270560306126652838

`A130357(A122335(n))`
-/

namespace A089869.P8270560306126652838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130357 (A122335 n).toNat

end

end A089869.P8270560306126652838

/-! ## A089869.P1137520802506699677

`A089867(Δ[A025466(n)]+n)`
-/

namespace A089869.P1137520802506699677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A089869.P1137520802506699677

/-! ## A089869.P12066609160441464099

`A089867(Δ[A025469(n)]+n)`
-/

namespace A089869.P12066609160441464099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A089869.P12066609160441464099

/-! ## A089869.P4146720667651552727

`A089870(A089867(A089867(n)))`
-/

namespace A089869.P4146720667651552727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A089867 (A089867 n).toNat).toNat

end

end A089869.P4146720667651552727

/-! ## A089869.P12867690079488302832

`A089867(n)+A122312(n)-A073286(n)`
-/

namespace A089869.P12867690079488302832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 n + (A122312 n - A073286 n)

end

end A089869.P12867690079488302832

/-! ## A089869.P11972634055456529786

`A069767(A122301(n)%A106410(n+1))`
-/

namespace A089869.P11972634055456529786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (Int.tmod (A122301 n) (A106410 (n + 1))).toNat

end

end A089869.P11972634055456529786

/-! ## A089869.P1007801830886534981

`A122349(A122282(n)%A106410(n+1))`
-/

namespace A089869.P1007801830886534981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (Int.tmod (A122282 n) (A106410 (n + 1))).toNat

end

end A089869.P1007801830886534981

/-! ## A089869.P9544591340087234414

`A122311(A154454(n)%A106410(n+1))`
-/

namespace A089869.P9544591340087234414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122311 (Int.tmod (A154454 n) (A106410 (n + 1))).toNat

end

end A089869.P9544591340087234414

/-! ## A089869.P17707730149439533909

`A122349(A122282(n))%A157695(n+5)`
-/

namespace A089869.P17707730149439533909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122349 (A122282 n).toNat) (A157695 (n + 5))

end

end A089869.P17707730149439533909

/-!
# A089870: Permutation of natural numbers induced by the Catalan bijection gma089870 acting on the parenthesizations/binary trees encoded by A014486/A063171.

The programs for A089870, there is no canonical definition to state claims against.
-/

/-! ## A089870.P484582125375044550

`A074683(A057503(n))`
-/

namespace A089870.P484582125375044550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A057503 n).toNat

end

end A089870.P484582125375044550

/-! ## A089870.P8579381312530525902

`A089868(Δ[A025466(n)]+n)`
-/

namespace A089870.P8579381312530525902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A089870.P8579381312530525902

/-! ## A089870.P7402637698739787580

`A089868(Δ[A025469(n)]+n)`
-/

namespace A089870.P7402637698739787580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A089870.P7402637698739787580

/-! ## A089870.P4820918440853362557

`A089869(A089868(A089868(n)))`
-/

namespace A089870.P4820918440853362557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A089868 (A089868 n).toNat).toNat

end

end A089870.P4820918440853362557

/-! ## A089870.P10560775757187389993

`A089868(n)+Δ[A112316(A001370(n))]`
-/

namespace A089870.P10560775757187389993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (A001370 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 n + (f1 (n + 1) - f1 n)

end

end A089870.P10560775757187389993

/-! ## A089870.P6700344330755900408

`A089868(n)+Δ[A002265(A331845(n))]`
-/

namespace A089870.P6700344330755900408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A331845 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 n + (f1 (n + 1) - f1 n)

end

end A089870.P6700344330755900408

/-! ## A089870.P16598963035255917951

`A122336(A130358(n))`
-/

namespace A089870.P16598963035255917951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122336 (A130358 n).toNat

end

end A089870.P16598963035255917951

/-! ## A089870.P13300199371820547162

`A122302(A069768(n))%A130420(n+1)`
-/

namespace A089870.P13300199371820547162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122302 (A069768 n).toNat) (A130420 (n + 1))

end

end A089870.P13300199371820547162

/-!
# A089871: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A071663/A071664.

The programs for A089871, there is no canonical definition to state claims against.
-/

/-! ## A089871.P15528873997246772025

`lcm(3, A060114(n))/3`
-/

namespace A089871.P15528873997246772025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A060114 n) : ℚ) / 3

end

end A089871.P15528873997246772025

/-! ## A089871.P5845092724384682860

`A060114(n)/gcd(3, A057545(n))`
-/

namespace A089871.P5845092724384682860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060114 n : ℚ) / (Int.gcd 3 (A057545 n) : ℚ)

end

end A089871.P5845092724384682860

/-! ## A089871.P7070841813398131486

`A060114(n)/A020639(A052101(n))`
-/

namespace A089871.P7070841813398131486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060114 n : ℚ) / (A020639 (A052101 n).toNat : ℚ)

end

end A089871.P7070841813398131486

/-! ## A089871.P5026766710816340108

`A060114(n)/A020639(A060828(n))`
-/

namespace A089871.P5026766710816340108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060114 n : ℚ) / (A020639 (A060828 n).toNat : ℚ)

end

end A089871.P5026766710816340108

/-! ## A089871.P8794352608568959551

`A060114(n)/A057944(A002024(n+1))`
-/

namespace A089871.P8794352608568959551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060114 n : ℚ) / (A057944 (A002024 (n + 1)).toNat : ℚ)

end

end A089871.P8794352608568959551

/-!
# A089874: Maximum cycle size in range [A014137(n-1)..A014138(n-1)] of permutation A071665/A071666.

The programs for A089874, there is no canonical definition to state claims against.
-/

/-! ## A089874.P4459023359741737957

`A000196(A320921(n)+A006784(n+1))`
-/

namespace A089874.P4459023359741737957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A320921 n + A006784 (n + 1)).toNat

end

end A089874.P4459023359741737957

/-! ## A089874.P1307495260778444952

`A353918(A324455(n+1)+A001047(n))`
-/

namespace A089874.P1307495260778444952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353918 (A324455 (n + 1) + A001047 n).toNat

end

end A089874.P1307495260778444952

/-! ## A089874.P8397619697821073562

`A018412(A001222(n+1)+A000931(2*n))`
-/

namespace A089874.P8397619697821073562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A001222 (n + 1) + A000931 (2 * n)).toNat

end

end A089874.P8397619697821073562

/-!
# A089875: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A071665/A071666.

The programs for A089875, there is no canonical definition to state claims against.
-/

/-! ## A089875.P142423075323245360

`lcm(2, A089403(n))/2`
-/

namespace A089875.P142423075323245360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A089403 n) : ℚ) / 2

end

end A089875.P142423075323245360

/-! ## A089875.P17379717160476896863

`lcm(4, A060114(n))/4`
-/

namespace A089875.P17379717160476896863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A060114 n) : ℚ) / 4

end

end A089875.P17379717160476896863

/-! ## A089875.P5057161721067300308

`A089403(n)/∑[A109708(n)]`
-/

namespace A089875.P5057161721067300308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089403 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A089875.P5057161721067300308

/-! ## A089875.P11911643863088628809

`A089403(n)/A000010(A008620(n))`
-/

namespace A089875.P11911643863088628809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089403 n : ℚ) / (A000010 (A008620 n).toNat : ℚ)

end

end A089875.P11911643863088628809

/-! ## A089875.P15540710102501766855

`A089403(n)/A023193(A023193(n+1))`
-/

namespace A089875.P15540710102501766855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089403 n : ℚ) / (A023193 (A023193 (n + 1)).toNat : ℚ)

end

end A089875.P15540710102501766855

/-!
# A089876: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A071667/A071668.

The programs for A089876, there is no canonical definition to state claims against.
-/

/-! ## A089876.P14151104790549947672

`or(A038775(A081164(n)), A057507(n))`
-/

namespace A089876.P14151104790549947672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038775 (A081164 n).toNat) (A057507 n)

end

end A089876.P14151104790549947672

/-!
# A089877: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A071667/A071668.

The programs for A089877, there is no canonical definition to state claims against.
-/

/-! ## A089877.P4115475301149448947

`C(A337224(n), A255070(A162491(n)))`
-/

namespace A089877.P4115475301149448947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A337224 n).toNat (A255070 (A162491 n).toNat).toNat

end

end A089877.P4115475301149448947

/-!
# A089879: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A071667/A071668.

The programs for A089879, there is no canonical definition to state claims against.
-/

/-! ## A089879.P974150669388940192

`lcm(5, A060114(n))/5`
-/

namespace A089879.P974150669388940192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A060114 n) : ℚ) / 5

end

end A089879.P974150669388940192

/-! ## A089879.P6662458552369075034

`A060114(n)/A371371(A318585(n+3))`
-/

namespace A089879.P6662458552369075034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060114 n : ℚ) / (A371371 (A318585 (n + 3)).toNat : ℚ)

end

end A089879.P6662458552369075034

/-! ## A089879.P18065444718288564702

`gcd(∏[A057577(n)], A060114(n))`
-/

namespace A089879.P18065444718288564702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A060114 n)

end

end A089879.P18065444718288564702

/-! ## A089879.P8548838435185632999

`gcd(A000027(A060114(n)), A223688(n+1))`
-/

namespace A089879.P8548838435185632999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A060114 n).toNat) (A223688 (n + 1))

end

end A089879.P8548838435185632999

/-!
# A089880: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A069772.

The programs for A089880, the canonical program `A089880.P5542344257203775530` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089880 has offset 0).

The definition of A089880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089880.P5542344257203775530

`(A000108(n)+A089849(n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089880

/-- `(A000108(n)+A089849(n))/2` -/
def P5542344257203775530.Spec : Prop :=
  ∀ n, P5542344257203775530.a n = (A089880 n : ℚ)

end A089880

/-! ## A089880.P3349565061301631115

`ceil((A120588(n+1)+A089849(n)-1)/2)`
-/

namespace A089880.P3349565061301631115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120588 (n + 1) + A089849 n - 1 : ℚ) / 2⌉

end

end A089880.P3349565061301631115

namespace A089880

/-- `ceil((A120588(n+1)+A089849(n)-1)/2)` -/
def P3349565061301631115.Spec : Prop :=
  ∀ n, P3349565061301631115.a n = A089880 n

end A089880

/-! ## A089880.P16939660850830697147

`ceil((A208355(2*n)+A089849(n)-1)/2)`
-/

namespace A089880.P16939660850830697147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A208355 (2 * n) + A089849 n - 1 : ℚ) / 2⌉

end

end A089880.P16939660850830697147

namespace A089880

/-- `ceil((A208355(2*n)+A089849(n)-1)/2)` -/
def P16939660850830697147.Spec : Prop :=
  ∀ n, P16939660850830697147.a n = A089880 n

end A089880

/-! ## A089880.P3962407732697301972

`A000150(n)+gcd(A001405(n), A210736(n))`
-/

namespace A089880.P3962407732697301972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000150 n + (Int.gcd (A001405 n) (A210736 n) : ℤ)

end

end A089880.P3962407732697301972

namespace A089880

/-- `A000150(n)+gcd(A001405(n), A210736(n))` -/
def P3962407732697301972.Spec : Prop :=
  ∀ n, P3962407732697301972.a n = A089880 n

end A089880

/-! ## A089880.P5715352312218614030

`A102402(A076921(n+1)-1)+A000150(n)`
-/

namespace A089880.P5715352312218614030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102402 (A076921 (n + 1) - 1).toNat + A000150 n

end

end A089880.P5715352312218614030

namespace A089880

/-- `A102402(A076921(n+1)-1)+A000150(n)` -/
def P5715352312218614030.Spec : Prop :=
  ∀ n, P5715352312218614030.a n = A089880 n

end A089880

/-!
# A089881: Number of primes <= n that are members of twin prime pairs.

The programs for A089881, there is no canonical definition to state claims against.
-/

/-! ## A089881.P17400924436973989141

`∑[(2-char[∑[n]])*A353464(n+1)]`
-/

namespace A089881.P17400924436973989141
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * A353464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089881.P17400924436973989141

/-! ## A089881.P12084619623748444074

`∑[A353464(n+1)*A353510(n+1)]`
-/

namespace A089881.P12084619623748444074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 1) * A353510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089881.P12084619623748444074

/-!
# A089882: Number of subsets of {1, ..., n} containing exactly one twin prime pair.

The programs for A089882, there is no canonical definition to state claims against.
-/

/-! ## A089882.P8431485695216473113

`ceil(A089881(n+1)/2)*2^(n+1-A089881(n+1))`
-/

namespace A089882.P8431485695216473113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A089881 (n + 1) : ℚ) / 2⌉ : ℚ) * (2 : ℚ) ^ ((n + 1 : ℤ) - A089881 (n + 1) : ℤ)

end

end A089882.P8431485695216473113

/-! ## A089882.P17606888717554691389

`∑{d}[A089828(n+1), A318622(#)]`
-/

namespace A089882.P17606888717554691389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A318622 d

end

end A089882.P17606888717554691389

/-! ## A089882.P14214539348604587183

`∑[char[∑[4*(n+1)]]]^2^n*2^(n-1)`
-/

namespace A089882.P14214539348604587183
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 ^ n : ℕ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A089882.P14214539348604587183

/-! ## A089882.P15576844023787212993

`A004524(round(log(n+1))^n)`
-/

namespace A089882.P15576844023787212993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.roundAway (Real.log (n + 1 : ℝ)) ^ n).toNat

end

end A089882.P15576844023787212993

/-! ## A089882.P8727565012363202034

`A004526(round(log(n+1))^n)`
-/

namespace A089882.P8727565012363202034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.log (n + 1 : ℝ)) ^ n).toNat

end

end A089882.P8727565012363202034

/-!
# A089883: Expansion of (1-4*x+6*x^2-3*x^3)/((1-3*x)*(1-2*x)*(1-3*x+x^2)).

The programs for A089883, the canonical program `A089883.P8820199490769069363` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089883 has offset 0).

The definition of A089883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+6x^2-3x^3)/(1-8x+22x^2-23x^3+6x^4))` (program `A089883.P8820199490769069363`, by `A089883.P8820199490769069363.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089883.P8820199490769069363

`ogf((1-4x+6x^2-3x^3)/(1-8x+22x^2-23x^3+6x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089883

/-- `ogf((1-4x+6x^2-3x^3)/(1-8x+22x^2-23x^3+6x^4))` -/
def P8820199490769069363.Spec : Prop :=
  ∀ n, P8820199490769069363.a n = A089883 n

theorem P8820199490769069363.correct : P8820199490769069363.Spec := by
  intro n
  simp only [A089883]

end A089883

/-! ## A089883.P11229839444284430396

`∑{#}[n+1, C(n+1, #)*A377728(#)]`
-/

namespace A089883.P11229839444284430396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A377728 k

end

end A089883.P11229839444284430396

namespace A089883

/-- `∑{#}[n+1, C(n+1, #)*A377728(#)]` -/
def P11229839444284430396.Spec : Prop :=
  ∀ n, P11229839444284430396.a n = A089883 n

end A089883

/-! ## A089883.P6139353163934238348

`A000079(n)+2*A186314(n+1)`
-/

namespace A089883.P6139353163934238348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 2 * A186314 (n + 1)

end

end A089883.P6139353163934238348

namespace A089883

/-- `A000079(n)+2*A186314(n+1)` -/
def P6139353163934238348.Spec : Prop :=
  ∀ n, P6139353163934238348.a n = A089883 n

end A089883

/-! ## A089883.P1528252954505804147

`∑[A011782(n)]+2*A186314(n+1)`
-/

namespace A089883.P1528252954505804147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A186314 (n + 1)

end

end A089883.P1528252954505804147

namespace A089883

/-- `∑[A011782(n)]+2*A186314(n+1)` -/
def P1528252954505804147.Spec : Prop :=
  ∀ n, P1528252954505804147.a n = A089883 n

end A089883

/-! ## A089883.P12500435521360722404

`Δ[A000225(n)]+2*A186314(n+1)`
-/

namespace A089883.P12500435521360722404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A186314 (n + 1)

end

end A089883.P12500435521360722404

namespace A089883

/-- `Δ[A000225(n)]+2*A186314(n+1)` -/
def P12500435521360722404.Spec : Prop :=
  ∀ n, P12500435521360722404.a n = A089883 n

end A089883

/-! ## A089883.P5896847578150044399

`A011782(n+1)+2*A186314(n+1)`
-/

namespace A089883.P5896847578150044399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + 2 * A186314 (n + 1)

end

end A089883.P5896847578150044399

namespace A089883

/-- `A011782(n+1)+2*A186314(n+1)` -/
def P5896847578150044399.Spec : Prop :=
  ∀ n, P5896847578150044399.a n = A089883 n

end A089883

/-! ## A089883.P16828711932507693616

`A038207(∑[n])+2*A186314(n+1)`
-/

namespace A089883.P16828711932507693616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * A186314 (n + 1)

end

end A089883.P16828711932507693616

namespace A089883

/-- `A038207(∑[n])+2*A186314(n+1)` -/
def P16828711932507693616.Spec : Prop :=
  ∀ n, P16828711932507693616.a n = A089883 n

end A089883

/-!
# A089884: a(n) = Max(Min(k: m+prime(n)*k is prime): 1<=m<prime(n)).

The programs for A089884, there is no canonical definition to state claims against.
-/

/-! ## A089884.P18038485858902375653

`A194943(p?[comp[n²]])`
-/

namespace A089884.P18038485858902375653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A089884.P18038485858902375653

/-! ## A089884.P10076531966623042160

`A194943(Δ[A007504(n)])`
-/

namespace A089884.P10076531966623042160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (f1 (n + 1) - f1 n).toNat

end

end A089884.P10076531966623042160

/-! ## A089884.P12934422807134070652

`A194943(A000040(n+1))`
-/

namespace A089884.P12934422807134070652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (A000040 (n + 1)).toNat

end

end A089884.P12934422807134070652

/-! ## A089884.P63728160360381536

`A194943(A063884(n+1))`
-/

namespace A089884.P63728160360381536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (A063884 (n + 1)).toNat

end

end A089884.P63728160360381536

/-! ## A089884.P11364777706690051808

`A194943(A216884(n+1))`
-/

namespace A089884.P11364777706690051808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (A216884 (n + 1)).toNat

end

end A089884.P11364777706690051808

/-! ## A089884.P15766736871197101777

`A194943(A216886(n+1))`
-/

namespace A089884.P15766736871197101777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (A216886 (n + 1)).toNat

end

end A089884.P15766736871197101777

/-! ## A089884.P1614507648582942906

`A194943(A008578(n+2))`
-/

namespace A089884.P1614507648582942906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (A008578 (n + 2)).toNat

end

end A089884.P1614507648582942906

/-! ## A089884.P10535560648757084875

`A194943(A182986(n+2))`
-/

namespace A089884.P10535560648757084875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (A182986 (n + 2)).toNat

end

end A089884.P10535560648757084875

/-! ## A089884.P1501886551348915150

`A194943(A324050(n+2))`
-/

namespace A089884.P1501886551348915150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (A324050 (n + 2)).toNat

end

end A089884.P1501886551348915150

/-! ## A089884.P5825020930611426140

`A194943(record[A006530(n+2)])`
-/

namespace A089884.P5825020930611426140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089884.P5825020930611426140

/-!
# A089885: Triangle A046899 read mod 2.

The programs for A089885, the canonical program `A089885.P1173999436066859406` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089885 has offset 0).

The definition of A089885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089885.P17238972679878805518

`and(1, 2^and(col(n), row(n)))`
-/

namespace A089885.P17238972679878805518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 ^ Nat.land (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n))

end

end A089885.P17238972679878805518

namespace A089885

/-- `and(1, 2^and(col(n), row(n)))` -/
def P17238972679878805518.Spec : Prop :=
  ∀ n, (P17238972679878805518.a n : ℤ) = A089885 n

end A089885

/-! ## A089885.P10198254940887902337

`A046899(n)%2`
-/

namespace A089885.P10198254940887902337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046899 n) 2

end

end A089885.P10198254940887902337

namespace A089885

/-- `A046899(n)%2` -/
def P10198254940887902337.Spec : Prop :=
  ∀ n, P10198254940887902337.a n = A089885 n

end A089885

/-! ## A089885.P9258754252663199612

`A130020(n)%2`
-/

namespace A089885.P9258754252663199612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130020 n) 2

end

end A089885.P9258754252663199612

namespace A089885

/-- `A130020(n)%2` -/
def P9258754252663199612.Spec : Prop :=
  ∀ n, P9258754252663199612.a n = A089885 n

end A089885

/-! ## A089885.P14394315621693065287

`char[eq[0, A080099(n)]]`
-/

namespace A089885.P14394315621693065287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A089885.P14394315621693065287

namespace A089885

/-- `char[eq[0, A080099(n)]]` -/
def P14394315621693065287.Spec : Prop :=
  ∀ n, (P14394315621693065287.a n : ℤ) = A089885 n

end A089885

/-! ## A089885.P1173999436066859406

`A000007(A080099(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089885

/-- `A000007(A080099(n))` -/
def P1173999436066859406.Spec : Prop :=
  ∀ n, P1173999436066859406.a n = A089885 n

theorem P1173999436066859406.correct : P1173999436066859406.Spec := by
  intro n
  simp only [A089885]

end A089885

/-! ## A089885.P10253569994158480939

`A063524(A080099(n)+1)`
-/

namespace A089885.P10253569994158480939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A080099 n + 1).toNat

end

end A089885.P10253569994158480939

namespace A089885

/-- `A063524(A080099(n)+1)` -/
def P10253569994158480939.Spec : Prop :=
  ∀ n, P10253569994158480939.a n = A089885 n

end A089885

/-! ## A089885.P17619586973230744852

`A036987(2*A080099(n))`
-/

namespace A089885.P17619586973230744852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * A080099 n).toNat

end

end A089885.P17619586973230744852

namespace A089885

/-- `A036987(2*A080099(n))` -/
def P17619586973230744852.Spec : Prop :=
  ∀ n, P17619586973230744852.a n = A089885 n

end A089885

/-! ## A089885.P9494272410646678356

`A010054(n-A051933(n))`
-/

namespace A089885.P9494272410646678356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((n : ℤ) - A051933 n).toNat

end

end A089885.P9494272410646678356

namespace A089885

/-- `A010054(n-A051933(n))` -/
def P9494272410646678356.Spec : Prop :=
  ∀ n, P9494272410646678356.a n = A089885 n

end A089885

/-! ## A089885.P3088289046003013538

`A036987((A080099(n)+1)²)`
-/

namespace A089885.P3088289046003013538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 ((A080099 n + 1) ^ 2).toNat

end

end A089885.P3088289046003013538

namespace A089885

/-- `A036987((A080099(n)+1)²)` -/
def P3088289046003013538.Spec : Prop :=
  ∀ n, P3088289046003013538.a n = A089885 n

end A089885

/-! ## A089885.P1318353874166946112

`and(A007318(C(2, n)), A046899(n))`
-/

namespace A089885.P1318353874166946112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 (Nat.choose 2 n)) (A046899 n)

end

end A089885.P1318353874166946112

namespace A089885

/-- `and(A007318(C(2, n)), A046899(n))` -/
def P1318353874166946112.Spec : Prop :=
  ∀ n, P1318353874166946112.a n = A089885 n

end A089885

/-! ## A089885.P17181943542480975209

`and(A000041(C(2, n+2)), A046899(n))`
-/

namespace A089885.P17181943542480975209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 (Nat.choose 2 (n + 2))) (A046899 n)

end

end A089885.P17181943542480975209

namespace A089885

/-- `and(A000041(C(2, n+2)), A046899(n))` -/
def P17181943542480975209.Spec : Prop :=
  ∀ n, P17181943542480975209.a n = A089885 n

end A089885

/-! ## A089885.P1344447360546557022

`and(A000041(a(n-1)), A046899(n))` with `a(0)=1`
-/

namespace A089885.P1344447360546557022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000041 (a (n - 1)).toNat) (A046899 n)

end

end A089885.P1344447360546557022

namespace A089885

/-- `and(A000041(a(n-1)), A046899(n))` -/
def P1344447360546557022.Spec : Prop :=
  ∀ n, P1344447360546557022.a n = A089885 n

end A089885

/-! ## A089885.P11684447443339802725

`and(A000108(a(n-1)), A046899(n))` with `a(0)=1`
-/

namespace A089885.P11684447443339802725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000108 (a (n - 1)).toNat) (A046899 n)

end

end A089885.P11684447443339802725

namespace A089885

/-- `and(A000108(a(n-1)), A046899(n))` -/
def P11684447443339802725.Spec : Prop :=
  ∀ n, P11684447443339802725.a n = A089885 n

end A089885

/-! ## A089885.P3012324250000546045

`and(A007318(a(n-1)), A046899(n))` with `a(0)=1`
-/

namespace A089885.P3012324250000546045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A007318 (a (n - 1)).toNat) (A046899 n)

end

end A089885.P3012324250000546045

namespace A089885

/-- `and(A007318(a(n-1)), A046899(n))` -/
def P3012324250000546045.Spec : Prop :=
  ∀ n, P3012324250000546045.a n = A089885 n

end A089885

/-! ## A089885.P16441937913284191128

`and(A000108(C(n, n²)!), A046899(n))`
-/

namespace A089885.P16441937913284191128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000108 (Nat.factorial (Nat.choose n (n ^ 2)))) (A046899 n)

end

end A089885.P16441937913284191128

namespace A089885

/-- `and(A000108(C(n, n²)!), A046899(n))` -/
def P16441937913284191128.Spec : Prop :=
  ∀ n, P16441937913284191128.a n = A089885 n

end A089885

/-! ## A089885.P12762090962946900237

`and(A000203(C(n, n²)!), A046899(n))`
-/

namespace A089885.P12762090962946900237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (Nat.factorial (Nat.choose n (n ^ 2)))) (A046899 n)

end

end A089885.P12762090962946900237

namespace A089885

/-- `and(A000203(C(n, n²)!), A046899(n))` -/
def P12762090962946900237.Spec : Prop :=
  ∀ n, P12762090962946900237.a n = A089885 n

end A089885

/-! ## A089885.P7352407573193293512

`and(A006530(C(n, n²)!), A046899(n))`
-/

namespace A089885.P7352407573193293512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (Nat.factorial (Nat.choose n (n ^ 2)))) (A046899 n)

end

end A089885.P7352407573193293512

namespace A089885

/-- `and(A006530(C(n, n²)!), A046899(n))` -/
def P7352407573193293512.Spec : Prop :=
  ∀ n, P7352407573193293512.a n = A089885 n

end A089885

/-! ## A089885.P6173358597661189176

`2-gcd(A020639(2*(n+1)), A046899(n))`
-/

namespace A089885.P6173358597661189176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd (A020639 (2 * (n + 1))) (A046899 n) : ℤ)

end

end A089885.P6173358597661189176

namespace A089885

/-- `2-gcd(A020639(2*(n+1)), A046899(n))` -/
def P6173358597661189176.Spec : Prop :=
  ∀ n, P6173358597661189176.a n = A089885 n

end A089885

/-! ## A089885.P4986565453960282275

`A036987(A001316(A080099(n)²))`
-/

namespace A089885.P4986565453960282275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A001316 (A080099 n ^ 2).toNat).toNat

end

end A089885.P4986565453960282275

namespace A089885

/-- `A036987(A001316(A080099(n)²))` -/
def P4986565453960282275.Spec : Prop :=
  ∀ n, P4986565453960282275.a n = A089885 n

end A089885

/-! ## A089885.P6133257495934296806

`A000007(and(A002262(n), A003056(n)))`
-/

namespace A089885.P6133257495934296806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A002262 n) (A003056 n)).toNat

end

end A089885.P6133257495934296806

namespace A089885

/-- `A000007(and(A002262(n), A003056(n)))` -/
def P6133257495934296806.Spec : Prop :=
  ∀ n, P6133257495934296806.a n = A089885 n

end A089885

/-!
# A089886: T(n,k) = number of subsets of {1,..., n} containing exactly k squares, triangle read by rows, 0<=k<n.

The programs for A089886, the canonical program `A089886.P837699174632564192` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089886 has offset 1).

The definition of A089886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089886.P837699174632564192

`C(floor((row(n)+1)^(1/2)), col(n))*2^(row(n)+1-floor((row(n)+1)^(1/2)))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089886

/-- `C(floor((row(n)+1)^(1/2)), col(n))*2^(row(n)+1-floor((row(n)+1)^(1/2)))` -/
def P837699174632564192.Spec : Prop :=
  ∀ n, P837699174632564192.a n = (A089886 (n + 1) : ℚ)

end A089886

/-!
# A089887: Number of subsets of {1,.., n} containing no squares.

The programs for A089887, the canonical program `A089887.P981598745101704023` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089887 has offset 1).

The definition of A089887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089887.P981598745101704023

`2^(n+1-A000196(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A089887

/-- `2^(n+1-A000196(n+1))` -/
def P981598745101704023.Spec : Prop :=
  ∀ n, P981598745101704023.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P5780145864426744516

`∏[2-Δ[floor(sqrt(n))]]`
-/

namespace A089887.P5780145864426744516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089887.P5780145864426744516

namespace A089887

/-- `∏[2-Δ[floor(sqrt(n))]]` -/
def P5780145864426744516.Spec : Prop :=
  ∀ n, P5780145864426744516.a n = A089887 (n + 1)

end A089887

/-! ## A089887.P4870102219712535039

`2^∑[floor(acos(Δ[floor(sqrt(n))]))]`
-/

namespace A089887.P4870102219712535039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A089887.P4870102219712535039

namespace A089887

/-- `2^∑[floor(acos(Δ[floor(sqrt(n))]))]` -/
def P4870102219712535039.Spec : Prop :=
  ∀ n, P4870102219712535039.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P8876589675619347954

`2^∑[floor(acot(Δ[floor(sqrt(n))]))]`
-/

namespace A089887.P8876589675619347954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A089887.P8876589675619347954

namespace A089887

/-- `2^∑[floor(acot(Δ[floor(sqrt(n))]))]` -/
def P8876589675619347954.Spec : Prop :=
  ∀ n, P8876589675619347954.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P9261354424802956235

`2*a(n-Δ[floor(sqrt(n))]-1)` with `a(0)=1`
-/

namespace A089887.P9261354424802956235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - 1).toNat

end

end A089887.P9261354424802956235

namespace A089887

/-- `2*a(n-Δ[floor(sqrt(n))]-1)` -/
def P9261354424802956235.Spec : Prop :=
  ∀ n, (P9261354424802956235.a n : ℤ) = A089887 (n + 1)

end A089887

/-! ## A089887.P17260237377819708756

`2^∑[(∏{e}[n+1, #+1]-1)%2]`
-/

namespace A089887.P17260237377819708756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A089887.P17260237377819708756

namespace A089887

/-- `2^∑[(∏{e}[n+1, #+1]-1)%2]` -/
def P17260237377819708756.Spec : Prop :=
  ∀ n, P17260237377819708756.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P13176992799392065982

`2^A028391(n+1)`
-/

namespace A089887.P13176992799392065982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A028391 (n + 1) : ℤ)

end

end A089887.P13176992799392065982

namespace A089887

/-- `2^A028391(n+1)` -/
def P13176992799392065982.Spec : Prop :=
  ∀ n, P13176992799392065982.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P17367199703858386901

`2^∑[A049240(n+1)]`
-/

namespace A089887.P17367199703858386901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A089887.P17367199703858386901

namespace A089887

/-- `2^∑[A049240(n+1)]` -/
def P17367199703858386901.Spec : Prop :=
  ∀ n, P17367199703858386901.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P8833020993549086487

`2^∑[A267635(n+1)]`
-/

namespace A089887.P8833020993549086487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A089887.P8833020993549086487

namespace A089887

/-- `2^∑[A267635(n+1)]` -/
def P8833020993549086487.Spec : Prop :=
  ∀ n, P8833020993549086487.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P14626134930658232173

`2^∑[A068717(n+1)²]`
-/

namespace A089887.P14626134930658232173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068717 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A089887.P14626134930658232173

namespace A089887

/-- `2^∑[A068717(n+1)²]` -/
def P14626134930658232173.Spec : Prop :=
  ∀ n, P14626134930658232173.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P5227262328539463111

`2^∑[A344617(n+1)²]`
-/

namespace A089887.P5227262328539463111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A089887.P5227262328539463111

namespace A089887

/-- `2^∑[A344617(n+1)²]` -/
def P5227262328539463111.Spec : Prop :=
  ∀ n, P5227262328539463111.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P13462305340754861362

`2^∑[A397085(n+1)²]`
-/

namespace A089887.P13462305340754861362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397085 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A089887.P13462305340754861362

namespace A089887

/-- `2^∑[A397085(n+1)²]` -/
def P13462305340754861362.Spec : Prop :=
  ∀ n, P13462305340754861362.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P1401163316000083060

`A000079(A028391(n+1))`
-/

namespace A089887.P1401163316000083060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A028391 (n + 1)).toNat

end

end A089887.P1401163316000083060

namespace A089887

/-- `A000079(A028391(n+1))` -/
def P1401163316000083060.Spec : Prop :=
  ∀ n, P1401163316000083060.a n = A089887 (n + 1)

end A089887

/-! ## A089887.P16839406852035939334

`A016116(A122800(n+2))`
-/

namespace A089887.P16839406852035939334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A122800 (n + 2)).toNat

end

end A089887.P16839406852035939334

namespace A089887

/-- `A016116(A122800(n+2))` -/
def P16839406852035939334.Spec : Prop :=
  ∀ n, P16839406852035939334.a n = A089887 (n + 1)

end A089887

/-! ## A089887.P3197298349080738578

`A016116(A123663(n+2))`
-/

namespace A089887.P3197298349080738578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A123663 (n + 2)).toNat

end

end A089887.P3197298349080738578

namespace A089887

/-- `A016116(A123663(n+2))` -/
def P3197298349080738578.Spec : Prop :=
  ∀ n, P3197298349080738578.a n = A089887 (n + 1)

end A089887

/-! ## A089887.P3008445030441502674

`A016116(A083479(n+2)+n)`
-/

namespace A089887.P3008445030441502674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A083479 (n + 2) + (n : ℤ)).toNat

end

end A089887.P3008445030441502674

namespace A089887

/-- `A016116(A083479(n+2)+n)` -/
def P3008445030441502674.Spec : Prop :=
  ∀ n, P3008445030441502674.a n = A089887 (n + 1)

end A089887

/-! ## A089887.P6040985162357320143

`A000079(n+1-A000196(n+1))`
-/

namespace A089887.P6040985162357320143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n + 1 : ℤ) - A000196 (n + 1)).toNat

end

end A089887.P6040985162357320143

namespace A089887

/-- `A000079(n+1-A000196(n+1))` -/
def P6040985162357320143.Spec : Prop :=
  ∀ n, P6040985162357320143.a n = A089887 (n + 1)

end A089887

/-! ## A089887.P430527142137743902

`A000079(n+2-A003059(n+2))`
-/

namespace A089887.P430527142137743902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n + 2 : ℤ) - A003059 (n + 2)).toNat

end

end A089887.P430527142137743902

namespace A089887

/-- `A000079(n+2-A003059(n+2))` -/
def P430527142137743902.Spec : Prop :=
  ∀ n, P430527142137743902.a n = A089887 (n + 1)

end A089887

/-! ## A089887.P16714259829681337293

`A089889(n+1)/A000196(n+1)`
-/

namespace A089887.P16714259829681337293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089889 (n + 1) : ℚ) / (A000196 (n + 1) : ℚ)

end

end A089887.P16714259829681337293

namespace A089887

/-- `A089889(n+1)/A000196(n+1)` -/
def P16714259829681337293.Spec : Prop :=
  ∀ n, P16714259829681337293.a n = (A089887 (n + 1) : ℚ)

end A089887

/-! ## A089887.P3114381842385721949

`A011782(n+1)/A011782(A000196(n+1))`
-/

namespace A089887.P3114381842385721949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 (A000196 (n + 1)).toNat : ℚ)

end

end A089887.P3114381842385721949

namespace A089887

/-- `A011782(n+1)/A011782(A000196(n+1))` -/
def P3114381842385721949.Spec : Prop :=
  ∀ n, P3114381842385721949.a n = (A089887 (n + 1) : ℚ)

end A089887

/-!
# A089888: Number of subsets of {1,.., n} containing at least one square.

The programs for A089888, the canonical program `A089888.P14457285691450218441` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089888 has offset 1).

The definition of A089888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089888.P14457285691450218441

`2^(n+1)-∏[2-Δ[floor(sqrt(n))]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089888

/-- `2^(n+1)-∏[2-Δ[floor(sqrt(n))]]` -/
def P14457285691450218441.Spec : Prop :=
  ∀ n, P14457285691450218441.a n = A089888 (n + 1)

theorem P14457285691450218441.correct : P14457285691450218441.Spec := by
  intro n
  simp only [A089888, Nat.add_sub_cancel]

end A089888

/-! ## A089888.P11933053056572222430

`and(-A089887(n+1), ∑[2^n])`
-/

namespace A089888.P11933053056572222430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A089887 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A089888.P11933053056572222430

namespace A089888

/-- `and(-A089887(n+1), ∑[2^n])` -/
def P11933053056572222430.Spec : Prop :=
  ∀ n, P11933053056572222430.a n = A089888 (n + 1)

end A089888

/-! ## A089888.P311736519333287949

`or(a(n-1)*A275437(n), 2^n)` with `a(0)=1`
-/

namespace A089888.P311736519333287949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1) * A275437 n) (2 ^ n : ℤ)

end

end A089888.P311736519333287949

namespace A089888

/-- `or(a(n-1)*A275437(n), 2^n)` -/
def P311736519333287949.Spec : Prop :=
  ∀ n, P311736519333287949.a n = A089888 (n + 1)

end A089888

/-! ## A089888.P6133725782797218513

`abs(A000079(n+1)-A089887(n+1))`
-/

namespace A089888.P6133725782797218513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A089887 (n + 1)|

end

end A089888.P6133725782797218513

namespace A089888

/-- `abs(A000079(n+1)-A089887(n+1))` -/
def P6133725782797218513.Spec : Prop :=
  ∀ n, P6133725782797218513.a n = A089888 (n + 1)

end A089888

/-! ## A089888.P10925031010316248442

`A000225(A000196(n+1))*A089887(n+1)`
-/

namespace A089888.P10925031010316248442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000196 (n + 1)).toNat * A089887 (n + 1)

end

end A089888.P10925031010316248442

namespace A089888

/-- `A000225(A000196(n+1))*A089887(n+1)` -/
def P10925031010316248442.Spec : Prop :=
  ∀ n, P10925031010316248442.a n = A089888 (n + 1)

end A089888

/-! ## A089888.P5103060317198337337

`record[Δ[A131577(A257213(n))]]`
-/

namespace A089888.P5103060317198337337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A257213 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089888.P5103060317198337337

namespace A089888

/-- `record[Δ[A131577(A257213(n))]]` -/
def P5103060317198337337.Spec : Prop :=
  ∀ n, P5103060317198337337.a n = A089888 (n + 1)

end A089888

/-!
# A089889: Number of subsets of {1,.., n} containing exactly one square.

The programs for A089889, the canonical program `A089889.P34863561432279640` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089889 has offset 1).

The definition of A089889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089889.P15922569553485560980

`floor(sqrt(1+n))*∏[A275437(n)]`
-/

namespace A089889.P15922569553485560980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (1 + n) : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A089889.P15922569553485560980

namespace A089889

/-- `floor(sqrt(1+n))*∏[A275437(n)]` -/
def P15922569553485560980.Spec : Prop :=
  ∀ n, P15922569553485560980.a n = A089889 (n + 1)

end A089889

/-! ## A089889.P7817672851689889602

`∏[2-char[n²]]*A096491(n+1)`
-/

namespace A089889.P7817672851689889602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A096491 (n + 1)

end

end A089889.P7817672851689889602

namespace A089889

/-- `∏[2-char[n²]]*A096491(n+1)` -/
def P7817672851689889602.Spec : Prop :=
  ∀ n, P7817672851689889602.a n = A089889 (n + 1)

end A089889

/-! ## A089889.P34863561432279640

`Δ[A022554(n)]*A089887(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089889

/-- `Δ[A022554(n)]*A089887(n+1)` -/
def P34863561432279640.Spec : Prop :=
  ∀ n, P34863561432279640.a n = A089889 (n + 1)

theorem P34863561432279640.correct : P34863561432279640.Spec := by
  intro n
  simp only [A089889, Nat.add_sub_cancel]

end A089889

/-! ## A089889.P5161730537258939608

`A000196(n+1)*A089887(n+1)`
-/

namespace A089889.P5161730537258939608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) * A089887 (n + 1)

end

end A089889.P5161730537258939608

namespace A089889

/-- `A000196(n+1)*A089887(n+1)` -/
def P5161730537258939608.Spec : Prop :=
  ∀ n, P5161730537258939608.a n = A089889 (n + 1)

end A089889

/-! ## A089889.P6954666040677770388

`∑[A000005(n+1)%2]*A089887(n+1)`
-/

namespace A089889.P6954666040677770388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A089887 (n + 1)

end

end A089889.P6954666040677770388

namespace A089889

/-- `∑[A000005(n+1)%2]*A089887(n+1)` -/
def P6954666040677770388.Spec : Prop :=
  ∀ n, P6954666040677770388.a n = A089889 (n + 1)

end A089889

/-! ## A089889.P15895960792423107694

`(A000079(n+1)-A089888(n+1))*A000196(n+1)`
-/

namespace A089889.P15895960792423107694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A089888 (n + 1)) * A000196 (n + 1)

end

end A089889.P15895960792423107694

namespace A089889

/-- `(A000079(n+1)-A089888(n+1))*A000196(n+1)` -/
def P15895960792423107694.Spec : Prop :=
  ∀ n, P15895960792423107694.a n = A089889 (n + 1)

end A089889

/-!
# A089890: Number of subsets of {1,.., n} containing exactly two squares.

The programs for A089890, there is no canonical definition to state claims against.
-/

/-! ## A089890.P5840117771526075847

`2^n-1-A003817(A049858(n))`
-/

namespace A089890.P5840117771526075847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1 - A003817 (A049858 n).toNat

end

end A089890.P5840117771526075847

/-! ## A089890.P5259461185854509279

`2^n-A053644(A103197(n+1))`
-/

namespace A089890.P5259461185854509279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A053644 (A103197 (n + 1)).toNat

end

end A089890.P5259461185854509279

/-! ## A089890.P1554799022693218448

`2^n-A053644(∑[A059966(n+1)])`
-/

namespace A089890.P1554799022693218448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A053644 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089890.P1554799022693218448

/-! ## A089890.P6954912307713729457

`A245092(A089888(n+1)-2^n)`
-/

namespace A089890.P6954912307713729457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A089888 (n + 1) - (2 ^ n : ℤ)).toNat

end

end A089890.P6954912307713729457

/-! ## A089890.P14406902335218658098

`A245092(A089888(n+1)%(2^n))`
-/

namespace A089890.P14406902335218658098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (Int.tmod (A089888 (n + 1)) (2 ^ n : ℤ)).toNat

end

end A089890.P14406902335218658098

/-!
# A089893: a(n) = (A001317(2n)-1)/4.

The programs for A089893, the canonical program `A089893.P9272645442044993464` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089893 has offset 0).

The definition of A089893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089893.P9272645442044993464

`(A001317(2*n)-1)/4`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089893

/-- `(A001317(2*n)-1)/4` -/
def P9272645442044993464.Spec : Prop :=
  ∀ n, P9272645442044993464.a n = (A089893 n : ℚ)

end A089893

/-! ## A089893.P1430100316046733454

`xor(4*a(n-1)+1, a(n-1))` with `a(0)=0`
-/

namespace A089893.P1430100316046733454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (4 * a (n - 1) + 1) (a (n - 1))

end

end A089893.P1430100316046733454

namespace A089893

/-- `xor(4*a(n-1)+1, a(n-1))` -/
def P1430100316046733454.Spec : Prop :=
  ∀ n, (P1430100316046733454.a n : ℤ) = A089893 n

end A089893

/-! ## A089893.P11625795527832701218

`xor(or(1, 4*a(n-1)), a(n-1))` with `a(0)=0`
-/

namespace A089893.P11625795527832701218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (Nat.lor 1 (4 * a (n - 1))) (a (n - 1))

end

end A089893.P11625795527832701218

namespace A089893

/-- `xor(or(1, 4*a(n-1)), a(n-1))` -/
def P11625795527832701218.Spec : Prop :=
  ∀ n, (P11625795527832701218.a n : ℤ) = A089893 n

end A089893

/-! ## A089893.P8326399257909227178

`xor(1, xor(4*a(n-1), a(n-1)))` with `a(0)=0`
-/

namespace A089893.P8326399257909227178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (Nat.xor (4 * a (n - 1)) (a (n - 1)))

end

end A089893.P8326399257909227178

namespace A089893

/-- `xor(1, xor(4*a(n-1), a(n-1)))` -/
def P8326399257909227178.Spec : Prop :=
  ∀ n, (P8326399257909227178.a n : ℤ) = A089893 n

end A089893

/-! ## A089893.P5774228443605264495

`xor(a(n-1)/(1/2)²+1, a(n-1))` with `a(0)=0`
-/

namespace A089893.P5774228443605264495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((1 : ℚ) / 2) ^ 2 + 1)) (a (n - 1))

end

end A089893.P5774228443605264495

namespace A089893

/-- `xor(a(n-1)/(1/2)²+1, a(n-1))` -/
def P5774228443605264495.Spec : Prop :=
  ∀ n, P5774228443605264495.a n = A089893 n

end A089893

/-! ## A089893.P14907308649590742071

`xor(1, xor(a(n-1)/(1/2)², a(n-1)))` with `a(0)=0`
-/

namespace A089893.P14907308649590742071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 1 (Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((1 : ℚ) / 2) ^ 2)) (a (n - 1)))

end

end A089893.P14907308649590742071

namespace A089893

/-- `xor(1, xor(a(n-1)/(1/2)², a(n-1)))` -/
def P14907308649590742071.Spec : Prop :=
  ∀ n, P14907308649590742071.a n = A089893 n

end A089893

/-! ## A089893.P1671463735243985346

`(A038183(n)-1)/4`
-/

namespace A089893.P1671463735243985346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038183 n - 1 : ℚ) / 4

end

end A089893.P1671463735243985346

namespace A089893

/-- `(A038183(n)-1)/4` -/
def P1671463735243985346.Spec : Prop :=
  ∀ n, P1671463735243985346.a n = (A089893 n : ℚ)

end A089893

/-!
# A089894: Sum of primes <= p is even and sum is twice a prime.

The programs for A089894, the canonical program `A089894.P1296047987516773958` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089894 has offset 0).

The definition of A089894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089894.P9419139415724746540

`A000040(∩[2*n+1, A213650(n+1)])`
-/

namespace A089894.P9419139415724746540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A089894.P9419139415724746540

namespace A089894

/-- `A000040(∩[2*n+1, A213650(n+1)])` -/
def P9419139415724746540.Spec : Prop :=
  ∀ n, P9419139415724746540.a n = A089894 n

end A089894

/-! ## A089894.P14678182511309439816

`A006005(∩[2*n+1, A213650(n+1)])`
-/

namespace A089894.P14678182511309439816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A089894.P14678182511309439816

namespace A089894

/-- `A006005(∩[2*n+1, A213650(n+1)])` -/
def P14678182511309439816.Spec : Prop :=
  ∀ n, P14678182511309439816.a n = A089894 n

end A089894

/-! ## A089894.P1296047987516773958

`record[A000040(A093178(A213650(n+1)))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A089894

/-- `record[A000040(A093178(A213650(n+1)))]` -/
def P1296047987516773958.Spec : Prop :=
  ∀ n, P1296047987516773958.a n = A089894 n

theorem P1296047987516773958.correct : P1296047987516773958.Spec := by
  intro n
  simp only [A089894]

end A089894

/-! ## A089894.P2224429236057134893

`A000040(filter[A213650(n+1), A267256(#)])`
-/

namespace A089894.P2224429236057134893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)).toNat

end

end A089894.P2224429236057134893

namespace A089894

/-- `A000040(filter[A213650(n+1), A267256(#)])` -/
def P2224429236057134893.Spec : Prop :=
  ∀ n, P2224429236057134893.a n = A089894 n

end A089894

/-! ## A089894.P17510619352118456632

`A000040(A228490(n+1))`
-/

namespace A089894.P17510619352118456632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A228490 (n + 1)).toNat

end

end A089894.P17510619352118456632

namespace A089894

/-- `A000040(A228490(n+1))` -/
def P17510619352118456632.Spec : Prop :=
  ∀ n, P17510619352118456632.a n = A089894 n

end A089894

/-! ## A089894.P2332984816512474002

`A008578(A228490(n+1)+1)`
-/

namespace A089894.P2332984816512474002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A228490 (n + 1) + 1).toNat

end

end A089894.P2332984816512474002

namespace A089894

/-- `A008578(A228490(n+1)+1)` -/
def P2332984816512474002.Spec : Prop :=
  ∀ n, P2332984816512474002.a n = A089894 n

end A089894

/-! ## A089894.P6115442654598985982

`A045344(A228490(n+1)-1)`
-/

namespace A089894.P6115442654598985982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A228490 (n + 1) - 1).toNat

end

end A089894.P6115442654598985982

namespace A089894

/-- `A045344(A228490(n+1)-1)` -/
def P6115442654598985982.Spec : Prop :=
  ∀ n, P6115442654598985982.a n = A089894 n

end A089894

/-! ## A089894.P4948137474002897009

`A065091(A228490(n+1)-1)`
-/

namespace A089894.P4948137474002897009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A228490 (n + 1) - 1).toNat

end

end A089894.P4948137474002897009

namespace A089894

/-- `A065091(A228490(n+1)-1)` -/
def P4948137474002897009.Spec : Prop :=
  ∀ n, P4948137474002897009.a n = A089894 n

end A089894

/-! ## A089894.P13452931788311600584

`A215848(A228490(n+1)-2)`
-/

namespace A089894.P13452931788311600584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A228490 (n + 1) - 2).toNat

end

end A089894.P13452931788311600584

namespace A089894

/-- `A215848(A228490(n+1)-2)` -/
def P13452931788311600584.Spec : Prop :=
  ∀ n, P13452931788311600584.a n = A089894 n

end A089894

/-! ## A089894.P11449873955720163148

`A219606(2*A228490(n+1))`
-/

namespace A089894.P11449873955720163148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A228490 (n + 1)).toNat

end

end A089894.P11449873955720163148

namespace A089894

/-- `A219606(2*A228490(n+1))` -/
def P11449873955720163148.Spec : Prop :=
  ∀ n, P11449873955720163148.a n = A089894 n

end A089894

/-!
# A089896: Logarithmic integral approximation to number of primes less than 10^x.

The programs for A089896, there is no canonical definition to state claims against.
-/

/-! ## A089896.P13291508423788969419

`A190802(n+1)+A030308(A000682(n+1))`
-/

namespace A089896.P13291508423788969419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) + A030308 (A000682 (n + 1)).toNat

end

end A089896.P13291508423788969419

/-! ## A089896.P8766346614022159618

`A057754(n+1)-A011655(A182699(3*n))`
-/

namespace A089896.P8766346614022159618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) - A011655 (A182699 (3 * n)).toNat

end

end A089896.P8766346614022159618

/-! ## A089896.P2488671537396544530

`A259044(A000108(n))+A190802(n+1)`
-/

namespace A089896.P2488671537396544530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259044 (A000108 n).toNat + A190802 (n + 1)

end

end A089896.P2488671537396544530

/-! ## A089896.P9800316939543255274

`A057754(n+1)-A345415(A018142(n))`
-/

namespace A089896.P9800316939543255274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) - A345415 (A018142 n).toNat

end

end A089896.P9800316939543255274

/-! ## A089896.P13629436552218375161

`A223166(n+1)+A080763(A001008(n+1))`
-/

namespace A089896.P13629436552218375161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223166 (n + 1) + A080763 (A001008 (n + 1)).toNat

end

end A089896.P13629436552218375161

/-!
# A089897: a(n) = floor(Li(2^n)), where Li(x) is the integral from 0 to x of dt/log(t).

The programs for A089897, there is no canonical definition to state claims against.
-/

/-! ## A089897.P3663817727664065730

`A047783(2^(n+1))`
-/

namespace A089897.P3663817727664065730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (2 ^ (n + 1))

end

end A089897.P3663817727664065730

/-! ## A089897.P6935511138937938991

`A047785(2^(n+1))-1`
-/

namespace A089897.P6935511138937938991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047785 (2 ^ (n + 1)) - 1

end

end A089897.P6935511138937938991

/-! ## A089897.P760063253105273875

`record[A047783(A090988(n+1))]`
-/

namespace A089897.P760063253105273875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (A090988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089897.P760063253105273875

/-! ## A089897.P9436116158915382522

`record[A047783(A171977(n+1))]`
-/

namespace A089897.P9436116158915382522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (A171977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089897.P9436116158915382522

/-! ## A089897.P7169046419616380976

`record[A047783(A290678(n)+1)]`
-/

namespace A089897.P7169046419616380976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (A290678 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089897.P7169046419616380976

/-!
# A089898: Product of (digits of n each incremented by 1).

The programs for A089898, the canonical program `A089898.P14690586977798270718` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089898 has offset 0).

The definition of A089898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089898.P14690586977798270718

`a(floor(n/10))*(1+n%10)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A089898

/-- `a(floor(n/10))*(1+n%10)` -/
def P14690586977798270718.Spec : Prop :=
  ∀ n, (P14690586977798270718.a n : ℤ) = A089898 n

theorem P14690586977798270718.correct : P14690586977798270718.Spec := by
  intro n
  simp only [A089898]

end A089898

/-! ## A089898.P17784366708869474338

`∏{digits}[n, 1+#]`
-/

namespace A089898.P17784366708869474338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 + x).prod

end

end A089898.P17784366708869474338

namespace A089898

/-- `∏{digits}[n, 1+#]` -/
def P17784366708869474338.Spec : Prop :=
  ∀ n, (P17784366708869474338.a n : ℤ) = A089898 n

end A089898

/-! ## A089898.P8552703957674529302

`2^∑{digits}[n, log2(#+1)]`
-/

namespace A089898.P8552703957674529302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.logb 2 (x + 1 : ℝ)).sum

end

end A089898.P8552703957674529302

namespace A089898

/-- `2^∑{digits}[n, log2(#+1)]` -/
def P8552703957674529302.Spec : Prop :=
  ∀ n, P8552703957674529302.a n = (A089898 n : ℝ)

end A089898

/-! ## A089898.P8597311386172586917

`A061486(n)+1`
-/

namespace A089898.P8597311386172586917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n + 1

end

end A089898.P8597311386172586917

namespace A089898

/-- `A061486(n)+1` -/
def P8597311386172586917.Spec : Prop :=
  ∀ n, P8597311386172586917.a n = A089898 n

end A089898

/-! ## A089898.P15743209697446584871

`sqrt(∏{digits}[n, A000005(2^#)²])`
-/

namespace A089898.P15743209697446584871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000005 (2 ^ x) ^ 2).prod : ℤ) : ℝ)

end

end A089898.P15743209697446584871

namespace A089898

/-- `sqrt(∏{digits}[n, A000005(2^#)²])` -/
def P15743209697446584871.Spec : Prop :=
  ∀ n, P15743209697446584871.a n = (A089898 n : ℝ)

end A089898

/-! ## A089898.P11383717365205169359

`∏{digits}[n, A008817(#)]%Δ[ceil((ϕ*n)²)]`
-/

namespace A089898.P11383717365205169359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio * (n : ℝ)) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008817 x).prod (f2 (n + 1) - f2 n)

end

end A089898.P11383717365205169359

namespace A089898

/-- `∏{digits}[n, A008817(#)]%Δ[ceil((ϕ*n)²)]` -/
def P11383717365205169359.Spec : Prop :=
  ∀ n, P11383717365205169359.a n = A089898 n

end A089898

/-! ## A089898.P3167499543268456974

`∏{digits}[n, A096076(#)]%(Δ[(2*n)²]-2)`
-/

namespace A089898.P3167499543268456974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A096076 x).prod ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 2)

end

end A089898.P3167499543268456974

namespace A089898

/-- `∏{digits}[n, A096076(#)]%(Δ[(2*n)²]-2)` -/
def P3167499543268456974.Spec : Prop :=
  ∀ n, P3167499543268456974.a n = A089898 n

end A089898

/-! ## A089898.P2731812652592984230

`n-A023443(n-A061486(n))`
-/

namespace A089898.P2731812652592984230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 ((n : ℤ) - A061486 n).toNat

end

end A089898.P2731812652592984230

namespace A089898

/-- `n-A023443(n-A061486(n))` -/
def P2731812652592984230.Spec : Prop :=
  ∀ n, P2731812652592984230.a n = A089898 n

end A089898

/-! ## A089898.P7200720304723676721

`A382721(A171397(n))`
-/

namespace A089898.P7200720304723676721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382721 (A171397 n).toNat

end

end A089898.P7200720304723676721

namespace A089898

/-- `A382721(A171397(n))` -/
def P7200720304723676721.Spec : Prop :=
  ∀ n, P7200720304723676721.a n = A089898 n

end A089898

/-! ## A089898.P15793809382126281285

`filter[A382721(n), A086299(#)]`
-/

namespace A089898.P15793809382126281285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A089898.P15793809382126281285

namespace A089898

/-- `filter[A382721(n), A086299(#)]` -/
def P15793809382126281285.Spec : Prop :=
  ∀ n, P15793809382126281285.a n = A089898 n

end A089898

/-! ## A089898.P786146674105491958

`filter[A382721(n), A122261(#)]`
-/

namespace A089898.P786146674105491958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A089898.P786146674105491958

namespace A089898

/-- `filter[A382721(n), A122261(#)]` -/
def P786146674105491958.Spec : Prop :=
  ∀ n, P786146674105491958.a n = A089898 n

end A089898

/-! ## A089898.P37645413410857126

`filter[A382721(n), A145568(#)]`
-/

namespace A089898.P37645413410857126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A089898.P37645413410857126

namespace A089898

/-- `filter[A382721(n), A145568(#)]` -/
def P37645413410857126.Spec : Prop :=
  ∀ n, P37645413410857126.a n = A089898 n

end A089898

/-! ## A089898.P1002606921764506868

`A028242(2*A061486(n))`
-/

namespace A089898.P1002606921764506868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A061486 n).toNat

end

end A089898.P1002606921764506868

namespace A089898

/-- `A028242(2*A061486(n))` -/
def P1002606921764506868.Spec : Prop :=
  ∀ n, P1002606921764506868.a n = A089898 n

end A089898

/-! ## A089898.P8073499295083455148

`A382722(A094823(n))`
-/

namespace A089898.P8073499295083455148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382722 (A094823 n).toNat

end

end A089898.P8073499295083455148

namespace A089898

/-- `A382722(A094823(n))` -/
def P8073499295083455148.Spec : Prop :=
  ∀ n, P8073499295083455148.a n = A089898 n

end A089898

/-! ## A089898.P2978166393651865019

`A064553(A113581(n))`
-/

namespace A089898.P2978166393651865019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A113581 n).toNat

end

end A089898.P2978166393651865019

namespace A089898

/-- `A064553(A113581(n))` -/
def P2978166393651865019.Spec : Prop :=
  ∀ n, P2978166393651865019.a n = A089898 n

end A089898

/-! ## A089898.P14692490257056528088

`A003963(A359802(n))`
-/

namespace A089898.P14692490257056528088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A359802 n).toNat

end

end A089898.P14692490257056528088

namespace A089898

/-- `A003963(A359802(n))` -/
def P14692490257056528088.Spec : Prop :=
  ∀ n, P14692490257056528088.a n = A089898 n

end A089898

/-!
# A089899: Square array, read by antidiagonals, where the n-th row is the binomial transform of (1+x+x^2)^n, starting with n=0.

The programs for A089899, there is no canonical definition to state claims against.
-/

/-! ## A089899.P3811704382950092007

`A210764(A061579(n))-A125005(A326323(n))`
-/

namespace A089899.P3811704382950092007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 (A061579 n).toNat - A125005 (A326323 n).toNat

end

end A089899.P3811704382950092007

/-! ## A089899.P11439870034710700491

`A092422(n)-A185203(A055080(n+1))`
-/

namespace A089899.P11439870034710700491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092422 n - A185203 (A055080 (n + 1)).toNat

end

end A089899.P11439870034710700491

/-! ## A089899.P13581830274186655580

`A092422(n)-A010894(A291117(n))`
-/

namespace A089899.P13581830274186655580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092422 n - A010894 ((A291117 n).toNat + 21)

end

end A089899.P13581830274186655580

/-! ## A089899.P6566246927482059899

`A196169(A193636(n))`
-/

namespace A089899.P6566246927482059899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A193636 n).toNat

end

end A089899.P6566246927482059899

/-! ## A089899.P3999482811508301520

`A302090(A365673(n))+A007318(n)`
-/

namespace A089899.P3999482811508301520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302090 (A365673 n).toNat + A007318 n

end

end A089899.P3999482811508301520

