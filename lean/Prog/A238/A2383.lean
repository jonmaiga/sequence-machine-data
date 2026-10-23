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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A238300: Fourth convolution of A107841.

The programs for A238300, there is no canonical definition to state claims against.
-/

/-! ## A238300.P3230456381817761213

`A004524(Δ[A091167(n+1)]-n)`
-/

namespace A238300.P3230456381817761213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A238300.P3230456381817761213

/-!
# A238302: E.g.f. satisfies: A'(x) = 1/(1 - x*A(x))^3 with A(0)=1.

The programs for A238302, there is no canonical definition to state claims against.
-/

/-! ## A238302.P15593610487995039741

`A133620(A230316(n)+2)`
-/

namespace A238302.P15593610487995039741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (A230316 n + 2).toNat

end

end A238302.P15593610487995039741

/-! ## A238302.P9082983489392930805

`A036018(n)+A000378(A213357(n))`
-/

namespace A238302.P9082983489392930805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036018 n + A000378 (A213357 n).toNat

end

end A238302.P9082983489392930805

/-!
# A238303: Triangle T(n,k), 0<=k<=n, read by rows given by T(n,0) = 1, T(n,k) = 2 if k>0.

The programs for A238303, the canonical program `A238303.P5851478287775386904` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238303 has offset 0).

The definition of A238303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238303.P5851478287775386904

`2-char[∑[n]]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238303

/-- `2-char[∑[n]]` -/
def P5851478287775386904.Spec : Prop :=
  ∀ n, P5851478287775386904.a n = A238303 n

theorem P5851478287775386904.correct : P5851478287775386904.Spec := by
  intro n
  simp only [A238303]

end A238303

/-! ## A238303.P2262425898340387751

`ceil(acot(char[∑[n]]))`
-/

namespace A238303.P2262425898340387751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A238303.P2262425898340387751

namespace A238303

/-- `ceil(acot(char[∑[n]]))` -/
def P2262425898340387751.Spec : Prop :=
  ∀ n, P2262425898340387751.a n = A238303 n

end A238303

/-! ## A238303.P201508111353225013

`round(acot(char[∑[n]]))`
-/

namespace A238303.P201508111353225013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A238303.P201508111353225013

namespace A238303

/-- `round(acot(char[∑[n]]))` -/
def P201508111353225013.Spec : Prop :=
  ∀ n, P201508111353225013.a n = A238303 n

end A238303

/-! ## A238303.P7296177640149153435

`dr(xor(11, char[∑[n]]))`
-/

namespace A238303.P7296177640149153435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.xor 11 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A238303.P7296177640149153435

namespace A238303

/-- `dr(xor(11, char[∑[n]]))` -/
def P7296177640149153435.Spec : Prop :=
  ∀ n, (P7296177640149153435.a n : ℤ) = A238303 n

end A238303

/-! ## A238303.P7257623662237992084

`floor(exp(cos(char[∑[n]])))`
-/

namespace A238303.P7257623662237992084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A238303.P7257623662237992084

namespace A238303

/-- `floor(exp(cos(char[∑[n]])))` -/
def P7257623662237992084.Spec : Prop :=
  ∀ n, P7257623662237992084.a n = A238303 n

end A238303

/-! ## A238303.P10350689923791388685

`ceil(acos(char[∑[n]]))!`
-/

namespace A238303.P10350689923791388685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉.toNat

end

end A238303.P10350689923791388685

namespace A238303

/-- `ceil(acos(char[∑[n]]))!` -/
def P10350689923791388685.Spec : Prop :=
  ∀ n, (P10350689923791388685.a n : ℤ) = A238303 n

end A238303

/-! ## A238303.P14194448880439584217

`round(acos(char[∑[n]]))!`
-/

namespace A238303.P14194448880439584217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))).toNat

end

end A238303.P14194448880439584217

namespace A238303

/-- `round(acos(char[∑[n]]))!` -/
def P14194448880439584217.Spec : Prop :=
  ∀ n, (P14194448880439584217.a n : ℤ) = A238303 n

end A238303

/-! ## A238303.P11208271783523653217

`ceil(cosh(char[comp[∑[n]]]))`
-/

namespace A238303.P11208271783523653217
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A238303.P11208271783523653217

namespace A238303

/-- `ceil(cosh(char[comp[∑[n]]]))` -/
def P11208271783523653217.Spec : Prop :=
  ∀ n, P11208271783523653217.a n = A238303 n

end A238303

/-! ## A238303.P1781585718352828673

`round(cosh(char[comp[∑[n]]]))`
-/

namespace A238303.P1781585718352828673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A238303.P1781585718352828673

namespace A238303

/-- `round(cosh(char[comp[∑[n]]]))` -/
def P1781585718352828673.Spec : Prop :=
  ∀ n, P1781585718352828673.a n = A238303 n

end A238303

/-! ## A238303.P10565051309840605419

`ceil(tan(cos(char[∑[n]])))`
-/

namespace A238303.P10565051309840605419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A238303.P10565051309840605419

namespace A238303

/-- `ceil(tan(cos(char[∑[n]])))` -/
def P10565051309840605419.Spec : Prop :=
  ∀ n, P10565051309840605419.a n = A238303 n

end A238303

/-! ## A238303.P1201422804869890227

`round(tan(cos(char[∑[n]])))`
-/

namespace A238303.P1201422804869890227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A238303.P1201422804869890227

namespace A238303

/-- `round(tan(cos(char[∑[n]])))` -/
def P1201422804869890227.Spec : Prop :=
  ∀ n, P1201422804869890227.a n = A238303 n

end A238303

/-! ## A238303.P6175283686803739998

`ceil(asin(cos(char[∑[n]])))`
-/

namespace A238303.P6175283686803739998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A238303.P6175283686803739998

namespace A238303

/-- `ceil(asin(cos(char[∑[n]])))` -/
def P6175283686803739998.Spec : Prop :=
  ∀ n, P6175283686803739998.a n = A238303 n

end A238303

/-! ## A238303.P6424243402922746570

`ceil(acos(sin(char[∑[n]])))`
-/

namespace A238303.P6424243402922746570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A238303.P6424243402922746570

namespace A238303

/-- `ceil(acos(sin(char[∑[n]])))` -/
def P6424243402922746570.Spec : Prop :=
  ∀ n, P6424243402922746570.a n = A238303 n

end A238303

/-! ## A238303.P16277054466434161

`round(asin(cos(char[∑[n]])))`
-/

namespace A238303.P16277054466434161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A238303.P16277054466434161

namespace A238303

/-- `round(asin(cos(char[∑[n]])))` -/
def P16277054466434161.Spec : Prop :=
  ∀ n, P16277054466434161.a n = A238303 n

end A238303

/-! ## A238303.P16238600479639725990

`round(acos(sin(char[∑[n]])))`
-/

namespace A238303.P16238600479639725990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arccos (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A238303.P16238600479639725990

namespace A238303

/-- `round(acos(sin(char[∑[n]])))` -/
def P16238600479639725990.Spec : Prop :=
  ∀ n, P16238600479639725990.a n = A238303 n

end A238303

/-! ## A238303.P8592254117225150082

`ceil(sinh(cos(char[∑[n]])))`
-/

namespace A238303.P8592254117225150082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A238303.P8592254117225150082

namespace A238303

/-- `ceil(sinh(cos(char[∑[n]])))` -/
def P8592254117225150082.Spec : Prop :=
  ∀ n, P8592254117225150082.a n = A238303 n

end A238303

/-! ## A238303.P18284284902737504500

`floor(cosh(acos(char[∑[n]])))`
-/

namespace A238303.P18284284902737504500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A238303.P18284284902737504500

namespace A238303

/-- `floor(cosh(acos(char[∑[n]])))` -/
def P18284284902737504500.Spec : Prop :=
  ∀ n, P18284284902737504500.a n = A238303 n

end A238303

/-! ## A238303.P6046196453291023421

`ceil(acos(atan(char[∑[n]])))`
-/

namespace A238303.P6046196453291023421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A238303.P6046196453291023421

namespace A238303

/-- `ceil(acos(atan(char[∑[n]])))` -/
def P6046196453291023421.Spec : Prop :=
  ∀ n, P6046196453291023421.a n = A238303 n

end A238303

/-! ## A238303.P13809316850436840251

`round(acos(atan(char[∑[n]])))`
-/

namespace A238303.P13809316850436840251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arccos (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A238303.P13809316850436840251

namespace A238303

/-- `round(acos(atan(char[∑[n]])))` -/
def P13809316850436840251.Spec : Prop :=
  ∀ n, P13809316850436840251.a n = A238303 n

end A238303

/-! ## A238303.P1515362940322076077

`ceil(acos(tanh(char[∑[n]])))`
-/

namespace A238303.P1515362940322076077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos (Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A238303.P1515362940322076077

namespace A238303

/-- `ceil(acos(tanh(char[∑[n]])))` -/
def P1515362940322076077.Spec : Prop :=
  ∀ n, P1515362940322076077.a n = A238303 n

end A238303

/-!
# A238304: Number of monic quartic polynomials with coefficients from {1..n} and maximum coefficient equal to n, for which all four roots are integers.

The programs for A238304, there is no canonical definition to state claims against.
-/

/-! ## A238304.P6983270991477463558

`A011681(record[A064189(n)])`
-/

namespace A238304.P6983270991477463558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238304.P6983270991477463558

/-! ## A238304.P13360562535669980502

`A327297(A074288(n+1))%4`
-/

namespace A238304.P13360562535669980502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327297 (A074288 (n + 1)).toNat) 4

end

end A238304.P13360562535669980502

/-! ## A238304.P3083293389935793038

`A363741(gcd(A016813(n), A055234(n+1)))`
-/

namespace A238304.P3083293389935793038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363741 (Int.gcd (A016813 n) (A055234 (n + 1)))

end

end A238304.P3083293389935793038

/-! ## A238304.P6898609327567488799

`A267463(A000110(n)%A000930(n+4))`
-/

namespace A238304.P6898609327567488799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (Int.tmod (A000110 n) (A000930 (n + 4))).toNat

end

end A238304.P6898609327567488799

/-! ## A238304.P13580728927462445629

`A186733(lt[A301368(n+1), A335458(n)])`
-/

namespace A238304.P13580728927462445629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186733 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A238304.P13580728927462445629

/-!
# A238306: Number of (n+1) X (1+1) 0..3 arrays with the maximum minus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238306, there is no canonical definition to state claims against.
-/

/-! ## A238306.P16281950245987218669

`A238311(∑[n]+1)`
-/

namespace A238306.P16281950245987218669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238306.P16281950245987218669

/-! ## A238306.P10676419858344393434

`lcm(2, A238311(A000124(n)))`
-/

namespace A238306.P10676419858344393434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238311 (A000124 n).toNat)

end

end A238306.P10676419858344393434

/-! ## A238306.P4050817469802234737

`record[root(A238311(n+1), A013613(n))]`
-/

namespace A238306.P4050817469802234737
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238311 (n + 1) : ℝ) ^ (1 / (A013613 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238306.P4050817469802234737

/-! ## A238306.P11788888360652247850

`record[gcd(A002262(n), A238311(n+1))]`
-/

namespace A238306.P11788888360652247850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238311 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238306.P11788888360652247850

/-! ## A238306.P5855594156577934863

`record[lcm(A197870(n), A238311(n+1))]`
-/

namespace A238306.P5855594156577934863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A197870 n) (A238311 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238306.P5855594156577934863

/-!
# A238307: Number of (n+1)X(2+1) 0..3 arrays with the maximum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238307, there is no canonical definition to state claims against.
-/

/-! ## A238307.P10523079934544000666

`A238311(∑[n+1]+2)`
-/

namespace A238307.P10523079934544000666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238307.P10523079934544000666

/-! ## A238307.P9039716065160848739

`record[root(A238311(n+2), A013613(n))]`
-/

namespace A238307.P9039716065160848739
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238311 (n + 2) : ℝ) ^ (1 / (A013613 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238307.P9039716065160848739

/-! ## A238307.P15204672065386742118

`record[gcd(A002262(n), A238311(n+2))]`
-/

namespace A238307.P15204672065386742118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238311 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238307.P15204672065386742118

/-! ## A238307.P9458848316204916731

`record[lcm(A197870(n), A238311(n+2))]`
-/

namespace A238307.P9458848316204916731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A197870 n) (A238311 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238307.P9458848316204916731

/-! ## A238307.P11563959756311396123

`record[A238311(A198453(n+1))]`
-/

namespace A238307.P11563959756311396123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238307.P11563959756311396123

/-!
# A238308: Number of (n+1)X(3+1) 0..3 arrays with the maximum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238308, there is no canonical definition to state claims against.
-/

/-! ## A238308.P16145641311591333546

`A238311(∑[n+2]+4)`
-/

namespace A238308.P16145641311591333546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238308.P16145641311591333546

/-! ## A238308.P8283017733071636425

`A238311(A167614(n+1))+A185284(n)`
-/

namespace A238308.P8283017733071636425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A167614 (n + 1)).toNat + A185284 n

end

end A238308.P8283017733071636425

/-! ## A238308.P16312734067417120674

`A280508(n)+A238311(A167614(n+1))`
-/

namespace A238308.P16312734067417120674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n + A238311 (A167614 (n + 1)).toNat

end

end A238308.P16312734067417120674

/-! ## A238308.P10101316723129654791

`lcm(A033999(n), A238311(A167614(n+1)))`
-/

namespace A238308.P10101316723129654791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A238311 (A167614 (n + 1)).toNat)

end

end A238308.P10101316723129654791

/-! ## A238308.P9167454943887893532

`A297235(n+1)+A238311(A167614(n+1))`
-/

namespace A238308.P9167454943887893532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (n + 1) + A238311 (A167614 (n + 1)).toNat

end

end A238308.P9167454943887893532

/-!
# A238309: Number of (n+1)X(4+1) 0..3 arrays with the maximum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238309, there is no canonical definition to state claims against.
-/

/-! ## A238309.P17014114419384108290

`A238311(A374004(n+1))`
-/

namespace A238309.P17014114419384108290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A374004 (n + 1)).toNat

end

end A238309.P17014114419384108290

/-! ## A238309.P14235579714030935826

`A238311(A055999(n)+10)`
-/

namespace A238309.P14235579714030935826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A055999 n + 10).toNat

end

end A238309.P14235579714030935826

/-! ## A238309.P17070508427842910229

`A238311(A167614(n+2)+1)`
-/

namespace A238309.P17070508427842910229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A167614 (n + 2) + 1).toNat

end

end A238309.P17070508427842910229

/-! ## A238309.P15837435882418884394

`A238311(A141214(n+1))`
-/

namespace A238309.P15837435882418884394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A141214 (n + 1)).toNat

end

end A238309.P15837435882418884394

/-! ## A238309.P16484599520607557210

`A238311(A155212(n)+5)`
-/

namespace A238309.P16484599520607557210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A155212 n + 5).toNat

end

end A238309.P16484599520607557210

/-!
# A238310: Number of (n+1)X(5+1) 0..3 arrays with the maximum minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238310, there is no canonical definition to state claims against.
-/

/-! ## A238310.P5946868176088296366

`A238311(A374005(n+1))`
-/

namespace A238310.P5946868176088296366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A374005 (n + 1)).toNat

end

end A238310.P5946868176088296366

/-! ## A238310.P3241384276325301941

`A238311(A167499(n+3))`
-/

namespace A238310.P3241384276325301941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A167499 (n + 3)).toNat

end

end A238310.P3241384276325301941

/-! ## A238310.P5069909256518482307

`A238311(A155212(n)+13)`
-/

namespace A238310.P5069909256518482307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A155212 n + 13).toNat

end

end A238310.P5069909256518482307

/-! ## A238310.P2984456068968735227

`A238311(A056000(n)+15)`
-/

namespace A238310.P2984456068968735227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (A056000 n + 15).toNat

end

end A238310.P2984456068968735227

/-! ## A238310.P7125132423418611010

`A238311(eq[7, A066657(n)])`
-/

namespace A238310.P7125132423418611010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238310.P7125132423418611010

/-!
# A238312: Square row sums of the table A072233 (A008284).

The programs for A238312, there is no canonical definition to state claims against.
-/

/-! ## A238312.P6680953225607439087

`A380125(n)-A380124(n)`
-/

namespace A238312.P6680953225607439087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380125 n - A380124 n

end

end A238312.P6680953225607439087

/-! ## A238312.P5437683000070207977

`A380125(n)+A387259(n)-A380126(n)`
-/

namespace A238312.P5437683000070207977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380125 n + (A387259 n - A380126 n)

end

end A238312.P5437683000070207977

/-! ## A238312.P10779629603002621669

`A325367(A304912(n))`
-/

namespace A238312.P10779629603002621669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (A304912 n).toNat

end

end A238312.P10779629603002621669

/-! ## A238312.P8962280120310994214

`A115180(A095064(n+2))`
-/

namespace A238312.P8962280120310994214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A095064 (n + 2)).toNat

end

end A238312.P8962280120310994214

/-! ## A238312.P14681869617995161246

`A113862(n)-∑[A178976(n)]`
-/

namespace A238312.P14681869617995161246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113862 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238312.P14681869617995161246

/-!
# A238314: Binomial transform of the squared rows of the table A072233 (A008284).

The programs for A238314, there is no canonical definition to state claims against.
-/

/-! ## A238314.P16328760628171581623

`A317132(n)+A089852(A326632(3*n+4))`
-/

namespace A238314.P16328760628171581623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317132 n + A089852 (A326632 (3 * n + 4)).toNat

end

end A238314.P16328760628171581623

/-!
# A238315: An oscillating sequence: a(n) = n^2 + 2^(n-1) - 2*a(n-1), n>0, with a(1) = 1.

The programs for A238315, the canonical program `A238315.P830381701898597956` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238315 has offset 1).

The definition of A238315 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²+2^n-2*a(n-1)` (program `A238315.P830381701898597956`, by `A238315.P830381701898597956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238315.P830381701898597956

`(n+1)²+2^n-2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238315

/-- `(n+1)²+2^n-2*a(n-1)` -/
def P830381701898597956.Spec : Prop :=
  ∀ n, P830381701898597956.a n = A238315 (n + 1)

theorem P830381701898597956.correct : P830381701898597956.Spec := by
  intro n
  simp only [A238315, Nat.add_sub_cancel]

end A238315

/-! ## A238315.P16866031146581998469

`4*a(n-2)-(1-n)²+2` with `a(0)=1, a(1)=4`
-/

namespace A238315.P16866031146581998469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 2) - (1 - (n : ℤ)) ^ 2 + 2

end

end A238315.P16866031146581998469

namespace A238315

/-- `4*a(n-2)-(1-n)²+2` -/
def P16866031146581998469.Spec : Prop :=
  ∀ n, P16866031146581998469.a n = A238315 (n + 1)

end A238315

/-! ## A238315.P17012432959451532479

`2^n+n*(n+2)-(2*a(n-1)-1)` with `a(0)=1`
-/

namespace A238315.P17012432959451532479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n + n * (n + 2) : ℤ) - (2 * a (n - 1) - 1)

end

end A238315.P17012432959451532479

namespace A238315

/-- `2^n+n*(n+2)-(2*a(n-1)-1)` -/
def P17012432959451532479.Spec : Prop :=
  ∀ n, P17012432959451532479.a n = A238315 (n + 1)

theorem P17012432959451532479.correct : P17012432959451532479.Spec := by
  intro n
  simp only [A238315, Nat.add_sub_cancel, A238315.P17012432959451532479.a, A238315.P830381701898597956.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A238315

/-! ## A238315.P5454998613302243049

`A220425(n)+1-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A238315.P5454998613302243049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A220425 n + 1 - a (n - 1) - a (n - 1)

end

end A238315.P5454998613302243049

namespace A238315

/-- `A220425(n)+1-a(n-1)-a(n-1)` -/
def P5454998613302243049.Spec : Prop :=
  ∀ n, P5454998613302243049.a n = A238315 (n + 1)

end A238315

/-! ## A238315.P625948864627257765

`A001580(n+1)-a(n-1)-a(n-1)-A000079(n)` with `a(0)=1`
-/

namespace A238315.P625948864627257765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001580 (n + 1) - a (n - 1) - a (n - 1) - A000079 n

end

end A238315.P625948864627257765

namespace A238315

/-- `A001580(n+1)-a(n-1)-a(n-1)-A000079(n)` -/
def P625948864627257765.Spec : Prop :=
  ∀ n, P625948864627257765.a n = A238315 (n + 1)

end A238315

/-!
# A238316: Number of (n+1)X(n+1) 0..2 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238316, there is no canonical definition to state claims against.
-/

/-! ## A238316.P11254687318122032019

`A238323((n+1)²+n²)`
-/

namespace A238316.P11254687318122032019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 ((n + 1) ^ 2 + n ^ 2)

end

end A238316.P11254687318122032019

/-!
# A238317: Number of (n+1)X(2+1) 0..2 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238317, there is no canonical definition to state claims against.
-/

/-! ## A238317.P8821563623334896695

`A238323(∑[n+1]+2)`
-/

namespace A238317.P8821563623334896695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238317.P8821563623334896695

/-! ## A238317.P1330368851391868705

`record[A238323(A130297(n+1)+1)]`
-/

namespace A238317.P1330368851391868705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A130297 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238317.P1330368851391868705

/-! ## A238317.P16027786222588005679

`record[gcd(A089840(n), A238323(n+3))]`
-/

namespace A238317.P16027786222588005679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089840 n) (A238323 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238317.P16027786222588005679

/-!
# A238318: Number of (n+1) X (3+1) 0..2 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238318, there is no canonical definition to state claims against.
-/

/-! ## A238318.P3972940134620086512

`A238323(∑[n+2]+4)`
-/

namespace A238318.P3972940134620086512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238318.P3972940134620086512

/-! ## A238318.P12199588537026674978

`lcm((-1)^n, A238323(A167614(n+1)))`
-/

namespace A238318.P12199588537026674978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A238323 (A167614 (n + 1)).toNat)

end

end A238318.P12199588537026674978

/-! ## A238318.P10669793930469183004

`record[A238323(A167614(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A238318.P10669793930469183004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A167614 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238318.P10669793930469183004

/-! ## A238318.P10745403004607571968

`record[A238323(A167614(ceil(C(or(1, n), n)/2)))]`
-/

namespace A238318.P10745403004607571968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A167614 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238318.P10745403004607571968

/-! ## A238318.P14867128559387763171

`A238323(A167614(n+1))+A025439(n)`
-/

namespace A238318.P14867128559387763171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A167614 (n + 1)).toNat + A025439 n

end

end A238318.P14867128559387763171

/-!
# A238319: Number of (n+1) X (4+1) 0..2 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238319, there is no canonical definition to state claims against.
-/

/-! ## A238319.P10965994983474454686

`A238323(A374004(n+1))`
-/

namespace A238319.P10965994983474454686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A374004 (n + 1)).toNat

end

end A238319.P10965994983474454686

/-! ## A238319.P16035007418768038760

`A238323(A052905(n)+9)`
-/

namespace A238319.P16035007418768038760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A052905 n + 9).toNat

end

end A238319.P16035007418768038760

/-! ## A238319.P1100972171942817302

`A238323(A055999(n)+10)`
-/

namespace A238319.P1100972171942817302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A055999 n + 10).toNat

end

end A238319.P1100972171942817302

/-! ## A238319.P11941975841037486539

`A238323(A167614(n+2)+1)`
-/

namespace A238319.P11941975841037486539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A167614 (n + 2) + 1).toNat

end

end A238319.P11941975841037486539

/-! ## A238319.P6288597414227992024

`A238323(Δ[A023545(n+1)-n²])`
-/

namespace A238319.P6288597414227992024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (f1 (n + 1) - f1 n).toNat

end

end A238319.P6288597414227992024

/-!
# A238320: Number of (n+1)X(5+1) 0..2 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238320, there is no canonical definition to state claims against.
-/

/-! ## A238320.P12867790574642534673

`A238323(A374005(n+1))`
-/

namespace A238320.P12867790574642534673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A374005 (n + 1)).toNat

end

end A238320.P12867790574642534673

/-! ## A238320.P9993723236326226590

`A238323(A167499(n+3))`
-/

namespace A238320.P9993723236326226590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A167499 (n + 3)).toNat

end

end A238320.P9993723236326226590

/-! ## A238320.P2522788182109393505

`A238323(A155212(n)+13)`
-/

namespace A238320.P2522788182109393505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A155212 n + 13).toNat

end

end A238320.P2522788182109393505

/-! ## A238320.P4274089676041723100

`A238323(eq[6, A131818(n+1)])`
-/

namespace A238320.P4274089676041723100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238320.P4274089676041723100

/-! ## A238320.P7243927778949696974

`A238323(eq[3, A152157(n)])`
-/

namespace A238320.P7243927778949696974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238320.P7243927778949696974

/-!
# A238321: Number of (n+1)X(6+1) 0..2 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238321, there is no canonical definition to state claims against.
-/

/-! ## A238321.P10228438759361057071

`A238323(A374007(n+1))`
-/

namespace A238321.P10228438759361057071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A374007 (n + 1)).toNat

end

end A238321.P10228438759361057071

/-! ## A238321.P1266245906406276729

`A238323(eq[7, A131818(n+1)])`
-/

namespace A238321.P1266245906406276729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238321.P1266245906406276729

/-! ## A238321.P2410824941108418739

`A238323(Δ[A023545(n+1)]+10)`
-/

namespace A238321.P2410824941108418739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (f1 (n + 1) - f1 n + 10).toNat

end

end A238321.P2410824941108418739

/-! ## A238321.P7273244776117446750

`A238323(A052905(n+3))`
-/

namespace A238321.P7273244776117446750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A052905 (n + 3)).toNat

end

end A238321.P7273244776117446750

/-! ## A238321.P11944436518544173373

`A238323(eq[3, A219347(n)])`
-/

namespace A238321.P11944436518544173373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238321.P11944436518544173373

/-!
# A238322: Number of (n+1)X(7+1) 0..2 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238322, there is no canonical definition to state claims against.
-/

/-! ## A238322.P16341649745774208257

`A238323(A374008(n+1))`
-/

namespace A238322.P16341649745774208257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (A374008 (n + 1)).toNat

end

end A238322.P16341649745774208257

/-! ## A238322.P13591254191627648608

`A238323(eq[6, A193592(n)])`
-/

namespace A238322.P13591254191627648608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238322.P13591254191627648608

/-! ## A238322.P3657113368637398493

`A238323(eq[2, A219347(n)-2])`
-/

namespace A238322.P3657113368637398493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238322.P3657113368637398493

/-!
# A238324: a(1) = 1 and a(n+1) = if a(n) > 2*n+1 then a(n)-2*n-1 else a(n)+2*n+1.

The programs for A238324, the canonical program `A238324.P4287810870836058819` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238324 has offset 1).

The definition of A238324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238324.P4287810870836058819

`(a(n-1)+2*n)%(2*(2*n+1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238324

/-- `(a(n-1)+2*n)%(2*(2*n+1))+1` -/
def P4287810870836058819.Spec : Prop :=
  ∀ n, (P4287810870836058819.a n : ℤ) = A238324 (n + 1)

theorem P4287810870836058819.correct : P4287810870836058819.Spec := by
  intro n
  simp only [A238324, Nat.add_sub_cancel]

end A238324

/-! ## A238324.P13181822147739886030

`A004736(A001105(2*n+1)-a(n-1)+1)` with `a(0)=1`
-/

namespace A238324.P13181822147739886030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004736 (A001105 (2 * n + 1) - a (n - 1) + 1).toNat

end

end A238324.P13181822147739886030

namespace A238324

/-- `A004736(A001105(2*n+1)-a(n-1)+1)` -/
def P13181822147739886030.Spec : Prop :=
  ∀ n, P13181822147739886030.a n = A238324 (n + 1)

end A238324

/-!
# A238325: Array: row n gives the number of occurrences of each possible antidiagonal partition of n, arranged in reverse-Mathematica order.

The programs for A238325, there is no canonical definition to state claims against.
-/

/-! ## A238325.P14019672634839966761

`A238004(n+1)/2`
-/

namespace A238325.P14019672634839966761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238004 (n + 1) : ℚ) / 2

end

end A238325.P14019672634839966761

/-! ## A238325.P2629085498862725167

`Δ[∑[A238004(n)]/2]`
-/

namespace A238325.P2629085498862725167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238004 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238325.P2629085498862725167

/-! ## A238325.P11935181353785617284

`A001281(A238004(n+1))`
-/

namespace A238325.P11935181353785617284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A238004 (n + 1)).toNat

end

end A238325.P11935181353785617284

/-! ## A238325.P3284361546939254907

`Δ[A026741(∑[A238004(n)])]`
-/

namespace A238325.P3284361546939254907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238004 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238325.P3284361546939254907

/-! ## A238325.P15043985244684569671

`Δ[A110654(∑[A238004(n)])]`
-/

namespace A238325.P15043985244684569671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238004 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238325.P15043985244684569671

/-! ## A238325.P13591805285419206353

`A064727(A238004(n+1)²)`
-/

namespace A238325.P13591805285419206353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A238004 (n + 1) ^ 2).toNat

end

end A238325.P13591805285419206353

/-! ## A238325.P5482729031928934932

`A110654(A238004(n+1)-1)`
-/

namespace A238325.P5482729031928934932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A238004 (n + 1) - 1).toNat

end

end A238325.P5482729031928934932

/-! ## A238325.P2737238993393714209

`A110514(A238004(n+1)-2)`
-/

namespace A238325.P2737238993393714209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A238004 (n + 1) - 2).toNat

end

end A238325.P2737238993393714209

/-! ## A238325.P2413636707867598822

`A049206(A238004(2*(n+1)-(n+1)))`
-/

namespace A238325.P2413636707867598822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (A238004 (2 * (n + 1) - (n + 1))).toNat

end

end A238325.P2413636707867598822

/-! ## A238325.P4964574341830852042

`∏[ratio[A238004(n)]^(A000040(n+1)%2)]`
-/

namespace A238325.P4964574341830852042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238004 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A238325.P4964574341830852042

/-!
# A238327: Recursively defined by a(0) = 1, a(n + 1) = p + 2, where p is the least prime greater than a(n).

The programs for A238327, the canonical program `A238327.P3458075969013373814` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238327 has offset 0).

The definition of A238327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238327.P3458075969013373814

`A151800(a(n-1))+2` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A238327

/-- `A151800(a(n-1))+2` -/
def P3458075969013373814.Spec : Prop :=
  ∀ n, P3458075969013373814.a n = A238327 n

theorem P3458075969013373814.correct : P3458075969013373814.Spec := by
  intro n
  simp only [A238327]

end A238327

/-! ## A238327.P13503355497330652845

`A007429(A164921(n+2))`
-/

namespace A238327.P13503355497330652845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A164921 (n + 2)).toNat

end

end A238327.P13503355497330652845

namespace A238327

/-- `A007429(A164921(n+2))` -/
def P13503355497330652845.Spec : Prop :=
  ∀ n, P13503355497330652845.a n = A238327 n

end A238327

/-! ## A238327.P5090723632944028305

`A266620(a(n-1))+2` with `a(0)=1`
-/

namespace A238327.P5090723632944028305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266620 (a (n - 1)).toNat + 2

end

end A238327.P5090723632944028305

namespace A238327

/-- `A266620(a(n-1))+2` -/
def P5090723632944028305.Spec : Prop :=
  ∀ n, P5090723632944028305.a n = A238327 n

end A238327

/-! ## A238327.P10667932185245999928

`A064778(a(n-1))+3` with `a(0)=1`
-/

namespace A238327.P10667932185245999928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064778 (a (n - 1)).toNat + 3

end

end A238327.P10667932185245999928

namespace A238327

/-- `A064778(a(n-1))+3` -/
def P10667932185245999928.Spec : Prop :=
  ∀ n, P10667932185245999928.a n = A238327 n

end A238327

/-! ## A238327.P6702798780244306060

`A007918(a(n-1)+1)+2` with `a(0)=1`
-/

namespace A238327.P6702798780244306060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007918 (a (n - 1) + 1).toNat + 2

end

end A238327.P6702798780244306060

namespace A238327

/-- `A007918(a(n-1)+1)+2` -/
def P6702798780244306060.Spec : Prop :=
  ∀ n, P6702798780244306060.a n = A238327 n

end A238327

/-! ## A238327.P15575098101937198475

`a(n-1)+A013632(a(n-1))+2` with `a(0)=1`
-/

namespace A238327.P15575098101937198475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A013632 (a (n - 1)).toNat + 2)

end

end A238327.P15575098101937198475

namespace A238327

/-- `a(n-1)+A013632(a(n-1))+2` -/
def P15575098101937198475.Spec : Prop :=
  ∀ n, P15575098101937198475.a n = A238327 n

end A238327

/-! ## A238327.P14402374600962800737

`2-(a(n-1)-A013634(a(n-1)))` with `a(0)=1`
-/

namespace A238327.P14402374600962800737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - A013634 (a (n - 1)).toNat)

end

end A238327.P14402374600962800737

namespace A238327

/-- `2-(a(n-1)-A013634(a(n-1)))` -/
def P14402374600962800737.Spec : Prop :=
  ∀ n, P14402374600962800737.a n = A238327 n

end A238327

/-! ## A238327.P17551003349599266858

`record[(A151800(n)+2)%A347538(n+3)]`
-/

namespace A238327.P17551003349599266858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 n + 2) (A347538 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238327.P17551003349599266858

namespace A238327

/-- `record[(A151800(n)+2)%A347538(n+3)]` -/
def P17551003349599266858.Spec : Prop :=
  ∀ n, P17551003349599266858.a n = A238327 n

end A238327

/-! ## A238327.P1325093753295366683

`record[A151800(a(A047949(n+1)))+2]` with `a(0)=1`
-/

namespace A238327.P1325093753295366683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A151800 (f1 (A047949 (n + 1)).toNat).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238327.P1325093753295366683

namespace A238327

/-- `record[A151800(a(A047949(n+1)))+2]` -/
def P1325093753295366683.Spec : Prop :=
  ∀ n, P1325093753295366683.a n = A238327 n

end A238327

/-! ## A238327.P1860369953907025856

`A159477(a(n-1)+1)+2` with `a(0)=1`
-/

namespace A238327.P1860369953907025856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159477 (a (n - 1) + 1).toNat + 2

end

end A238327.P1860369953907025856

namespace A238327

/-- `A159477(a(n-1)+1)+2` -/
def P1860369953907025856.Spec : Prop :=
  ∀ n, P1860369953907025856.a n = A238327 n

end A238327

/-!
# A238328: Sum of all the parts in the partitions of 4n into 4 parts.

The programs for A238328, the canonical program `A238328.P7282730348117426873` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238328 has offset 1).

The definition of A238328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238328.P7282730348117426873

`4*(n+1)*A238340(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A238328

/-- `4*(n+1)*A238340(n+1)` -/
def P7282730348117426873.Spec : Prop :=
  ∀ n, P7282730348117426873.a n = A238328 (n + 1)

theorem P7282730348117426873.correct : P7282730348117426873.Spec := by
  intro n
  simp only [A238328, Nat.add_sub_cancel]

end A238328

/-! ## A238328.P10915185998142050323

`A243011(n+1)+A238702(n+1)`
-/

namespace A238328.P10915185998142050323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243011 (n + 1) + A238702 (n + 1)

end

end A238328.P10915185998142050323

namespace A238328

/-- `A243011(n+1)+A238702(n+1)` -/
def P10915185998142050323.Spec : Prop :=
  ∀ n, P10915185998142050323.a n = A238328 (n + 1)

end A238328

/-! ## A238328.P14326571275821323331

`A243011(n+1)+∑[A238340(n+1)]`
-/

namespace A238328.P14326571275821323331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243011 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238328.P14326571275821323331

namespace A238328

/-- `A243011(n+1)+∑[A238340(n+1)]` -/
def P14326571275821323331.Spec : Prop :=
  ∀ n, P14326571275821323331.a n = A238328 (n + 1)

end A238328

/-! ## A238328.P9937652105355925552

`A243011(n+1)+A238706(n+2)-A238340(n+1)`
-/

namespace A238328.P9937652105355925552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243011 (n + 1) + (A238706 (n + 2) - A238340 (n + 1))

end

end A238328.P9937652105355925552

namespace A238328

/-- `A243011(n+1)+A238706(n+2)-A238340(n+1)` -/
def P9937652105355925552.Spec : Prop :=
  ∀ n, P9937652105355925552.a n = A238328 (n + 1)

end A238328

/-! ## A238328.P16888788250107916727

`4*(n+1)*A014126(2*n)`
-/

namespace A238328.P16888788250107916727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A014126 (2 * n))

end

end A238328.P16888788250107916727

namespace A238328

/-- `4*(n+1)*A014126(2*n)` -/
def P16888788250107916727.Spec : Prop :=
  ∀ n, P16888788250107916727.a n = A238328 (n + 1)

end A238328

/-! ## A238328.P12445297727784220966

`∑[A007980(2*n)]*A008574(n+1)`
-/

namespace A238328.P12445297727784220966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008574 (n + 1)

end

end A238328.P12445297727784220966

namespace A238328

/-- `∑[A007980(2*n)]*A008574(n+1)` -/
def P12445297727784220966.Spec : Prop :=
  ∀ n, P12445297727784220966.a n = A238328 (n + 1)

end A238328

/-! ## A238328.P10235383341125036048

`4*(n+1)*A001400(4*n)`
-/

namespace A238328.P10235383341125036048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A001400 (4 * n))

end

end A238328.P10235383341125036048

namespace A238328

/-- `4*(n+1)*A001400(4*n)` -/
def P10235383341125036048.Spec : Prop :=
  ∀ n, P10235383341125036048.a n = A238328 (n + 1)

end A238328

/-! ## A238328.P8551194291603096620

`4*(n+1)*A026810(4*(n+1))`
-/

namespace A238328.P8551194291603096620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A026810 (4 * (n + 1)))

end

end A238328.P8551194291603096620

namespace A238328

/-- `4*(n+1)*A026810(4*(n+1))` -/
def P8551194291603096620.Spec : Prop :=
  ∀ n, P8551194291603096620.a n = A238328 (n + 1)

end A238328

/-! ## A238328.P9235469822966357846

`A001400(A008574(n))*A008574(n+1)`
-/

namespace A238328.P9235469822966357846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (A008574 n).toNat * A008574 (n + 1)

end

end A238328.P9235469822966357846

namespace A238328

/-- `A001400(A008574(n))*A008574(n+1)` -/
def P9235469822966357846.Spec : Prop :=
  ∀ n, P9235469822966357846.a n = A238328 (n + 1)

end A238328

/-! ## A238328.P11422876258192299476

`A001400(A008586(n))*A008586(n+1)`
-/

namespace A238328.P11422876258192299476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (A008586 n).toNat * A008586 (n + 1)

end

end A238328.P11422876258192299476

namespace A238328

/-- `A001400(A008586(n))*A008586(n+1)` -/
def P11422876258192299476.Spec : Prop :=
  ∀ n, P11422876258192299476.a n = A238328 (n + 1)

end A238328

/-! ## A238328.P4531456730971963104

`A308775(4*(n+1))`
-/

namespace A238328.P4531456730971963104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308775 (4 * (n + 1))

end

end A238328.P4531456730971963104

namespace A238328

/-- `A308775(4*(n+1))` -/
def P4531456730971963104.Spec : Prop :=
  ∀ n, P4531456730971963104.a n = A238328 (n + 1)

end A238328

/-!
# A238329: Fibonacci numbers that have no prime factors of the form 4k+1.

The programs for A238329, there is no canonical definition to state claims against.
-/

/-! ## A238329.P12903308927739949846

`A000045(eq[96, lcm(96, n)])`
-/

namespace A238329.P12903308927739949846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  96

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 96 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A238329.P12903308927739949846

/-! ## A238329.P3711497109273861379

`A079977(lcm(2, ∑[2^floor(n/2)]))`
-/

namespace A238329.P3711497109273861379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (Int.lcm 2 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A238329.P3711497109273861379

/-! ## A238329.P9808638879581612879

`A079977(and(∑[2^floor(n/2)], -2))`
-/

namespace A238329.P9808638879581612879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (Int.land (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (-2)).toNat

end

end A238329.P9808638879581612879

/-! ## A238329.P13552579555263842039

`A000045(record[2*a(n-3)])` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A238329.P13552579555263842039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  2 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A238329.P13552579555263842039

/-! ## A238329.P2707741471792425990

`A000045(record[gcd(n+1, 3*2^n)])`
-/

namespace A238329.P2707741471792425990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (3 * 2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A238329.P2707741471792425990

/-!
# A238330: Numbers n such that rad(sigma(n)) = 2*rad(n), where the "radical" of n, rad(n), is A007947 and sigma(n) is the sum of the divisors of n.

The programs for A238330, there is no canonical definition to state claims against.
-/

/-! ## A238330.P5631207699496103250

`∩[A015706(n+1), A332208(n+1)]`
-/

namespace A238330.P5631207699496103250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238330.P5631207699496103250

/-! ## A238330.P17631757159580075849

`∩[A332208(n+1), A336554(n+1)]`
-/

namespace A238330.P17631757159580075849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238330.P17631757159580075849

/-! ## A238330.P1700511168337809650

`∩[A332208(n+1), A387159(n+1)]`
-/

namespace A238330.P1700511168337809650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238330.P1700511168337809650

/-!
# A238332: Primes whose digits, after the first, form a nonprime number not occurring earlier.

The programs for A238332, there is no canonical definition to state claims against.
-/

/-! ## A238332.P6413484296111483684

`A062584(∩[A032664(n+1), A140209(n+1)])`
-/

namespace A238332.P6413484296111483684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140209 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A238332.P6413484296111483684

/-! ## A238332.P5695493939648400756

`A062584(∩[A032664(n+1), A347262(n+1)])`
-/

namespace A238332.P5695493939648400756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347262 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A238332.P5695493939648400756

/-! ## A238332.P10941119148916792666

`p?[lcm(A062584(n), A321485(n))]`
-/

namespace A238332.P10941119148916792666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062584 n) (A321485 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A238332.P10941119148916792666

/-! ## A238332.P10928473235349673159

`A089754(A238333(n+1))`
-/

namespace A238332.P10928473235349673159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089754 (A238333 (n + 1)).toNat

end

end A238332.P10928473235349673159

/-!
# A238333: The nonprime numbers formed from the primes in A238332.

The programs for A238333, there is no canonical definition to state claims against.
-/

/-! ## A238333.P17611333815597554727

`A217657(A238332(n+1))`
-/

namespace A238333.P17611333815597554727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A238332 (n + 1)).toNat

end

end A238333.P17611333815597554727

/-! ## A238333.P14041379562400790759

`eq[1, A047813(A062584(n)-n)]`
-/

namespace A238333.P14041379562400790759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A062584 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238333.P14041379562400790759

/-! ## A238333.P8420603220606533006

`eq[1, A092196(A062584(n)-n)]`
-/

namespace A238333.P8420603220606533006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (A062584 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238333.P8420603220606533006

/-! ## A238333.P667621368331304361

`∩[A032664(n+1), A140209(n+1)]`
-/

namespace A238333.P667621368331304361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238333.P667621368331304361

/-! ## A238333.P10699046848464836223

`∩[A032664(n+1), A347262(n+1)]`
-/

namespace A238333.P10699046848464836223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238333.P10699046848464836223

/-!
# A238334: Squares that do not contain a shorter substring that is a square.

The programs for A238334, there is no canonical definition to state claims against.
-/

/-! ## A238334.P9500055964773967077

`A238335(n+1)²`
-/

namespace A238334.P9500055964773967077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238335 (n + 1) ^ 2

end

end A238334.P9500055964773967077

/-! ## A238334.P6143345231660975937

`A238335(n+1)^A020639(2*(n+2))`
-/

namespace A238334.P6143345231660975937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238335 (n + 1) : ℚ) ^ (A020639 (2 * (n + 2)) : ℤ)

end

end A238334.P6143345231660975937

/-! ## A238334.P9654282870829685891

`A238335(n+1)^A001222(A001358(n+1))`
-/

namespace A238334.P9654282870829685891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238335 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A238334.P9654282870829685891

/-! ## A238334.P14660117041525033558

`(A238335(n+1)%A238335(A018252(n+1)+1))^2`
-/

namespace A238334.P14660117041525033558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238335 (n + 1)) (A238335 (A018252 (n + 1) + 1).toNat) ^ 2

end

end A238334.P14660117041525033558

/-! ## A238334.P7334307422119429583

`A238335(A008620(3*n))*A238335(n+1)`
-/

namespace A238334.P7334307422119429583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238335 (A008620 (3 * n)).toNat * A238335 (n + 1)

end

end A238334.P7334307422119429583

/-! ## A238334.P9538070939924687833

`A238335(n+1)^A000005(A238332(n+1))`
-/

namespace A238334.P9538070939924687833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238335 (n + 1) : ℚ) ^ (A000005 (A238332 (n + 1)).toNat : ℤ)

end

end A238334.P9538070939924687833

/-! ## A238334.P8935518584220275399

`A238335(n+1)^A000005(A238362(n+1))`
-/

namespace A238334.P8935518584220275399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238335 (n + 1) : ℚ) ^ (A000005 (A238362 (n + 1)).toNat : ℤ)

end

end A238334.P8935518584220275399

/-! ## A238334.P5439603117356450663

`eq[1, A219032(n)]²`
-/

namespace A238334.P5439603117356450663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A238334.P5439603117356450663

/-! ## A238334.P97838177149362037

`lt[A219032(A219032(n)²), 2]²`
-/

namespace A238334.P97838177149362037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219032 (A219032 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A238334.P97838177149362037

/-! ## A238334.P7686026248772721649

`A000290(2*A238335(n+1)-A238335(n+1))`
-/

namespace A238334.P7686026248772721649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A238335 (n + 1) - A238335 (n + 1)).toNat

end

end A238334.P7686026248772721649

/-!
# A238335: Square roots of numbers in A238334.

The programs for A238335, there is no canonical definition to state claims against.
-/

/-! ## A238335.P17498763890144445230

`sqrt(A238334(n+1))`
-/

namespace A238335.P17498763890144445230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A238334 (n + 1) : ℝ)

end

end A238335.P17498763890144445230

/-! ## A238335.P1443380506174702241

`A238334(2*n+1-n)^(1/2)`
-/

namespace A238335.P1443380506174702241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238334 (2 * n + 1 - n) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A238335.P1443380506174702241

/-! ## A238335.P4298304958846317922

`A000038(n+1)+A238334(n+1)^(1/2)`
-/

namespace A238335.P4298304958846317922
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℝ) + (A238334 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A238335.P4298304958846317922

/-! ## A238335.P12571718515213880004

`(A238334(n+1)^(1/2))%∑[A166143(n+2)+2]`
-/

namespace A238335.P12571718515213880004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166143 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A238334 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238335.P12571718515213880004

/-! ## A238335.P16314732284744794422

`(A238334(n+1)^(1/2))%A027423(n+1)`
-/

namespace A238335.P16314732284744794422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A238334 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))) (A027423 (n + 1))

end

end A238335.P16314732284744794422

/-! ## A238335.P3681457437950315785

`(A238334(n+1)^(1/2))%A018030(A005843(n))`
-/

namespace A238335.P3681457437950315785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A238334 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))) (A018030 (A005843 n).toNat)

end

end A238335.P3681457437950315785

/-! ## A238335.P16132759563365042650

`eq[1, A219032(n)]`
-/

namespace A238335.P16132759563365042650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238335.P16132759563365042650

/-!
# A238337: Number of distinct squarefree numbers in row n of Pascal's triangle.

The programs for A238337, there is no canonical definition to state claims against.
-/

/-! ## A238337.P1481042319903586256

`ceil(A048276(n)/2)`
-/

namespace A238337.P1481042319903586256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048276 n : ℚ) / 2⌉

end

end A238337.P1481042319903586256

/-! ## A238337.P2464293811275252257

`A110654(A048276(n))`
-/

namespace A238337.P2464293811275252257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A048276 n).toNat

end

end A238337.P2464293811275252257

/-! ## A238337.P8162628866318917862

`A004526(A048276(n)+1)`
-/

namespace A238337.P8162628866318917862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A048276 n + 1).toNat

end

end A238337.P8162628866318917862

/-! ## A238337.P10384442656654942087

`A008619(A048276(n)-1)`
-/

namespace A238337.P10384442656654942087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A048276 n - 1).toNat

end

end A238337.P10384442656654942087

/-! ## A238337.P16053325432024643450

`A008619(n-A048277(n))`
-/

namespace A238337.P16053325432024643450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A048277 n).toNat

end

end A238337.P16053325432024643450

/-! ## A238337.P12753745882281580797

`A110654(1-A048277(n)+n)`
-/

namespace A238337.P12753745882281580797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (1 - A048277 n + (n : ℤ)).toNat

end

end A238337.P12753745882281580797

/-! ## A238337.P1345391264933985268

`A110654(1-(A048277(n)-n))`
-/

namespace A238337.P1345391264933985268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (1 - (A048277 n - (n : ℤ))).toNat

end

end A238337.P1345391264933985268

/-! ## A238337.P7365933063781362992

`A008619((A048276(n)+n)%(n+1))`
-/

namespace A238337.P7365933063781362992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A048276 n + (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A238337.P7365933063781362992

/-! ## A238337.P14827801062964133500

`A008619(n)-A064460(n)`
-/

namespace A238337.P14827801062964133500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A064460 n

end

end A238337.P14827801062964133500

/-! ## A238337.P9633045794566274472

`A004526(n)+1-A064460(n)`
-/

namespace A238337.P9633045794566274472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (1 - A064460 n)

end

end A238337.P9633045794566274472

/-! ## A238337.P5200262999131974182

`∑[A091337(n+1)²]-A064460(n)`
-/

namespace A238337.P5200262999131974182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064460 n

end

end A238337.P5200262999131974182

/-! ## A238337.P8731655209142502292

`∑[A057596(a(n-1))]-A064460(n)` with `a(0)=1`
-/

namespace A238337.P8731655209142502292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A057596 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064460 n

end

end A238337.P8731655209142502292

/-!
# A238339: Square number array read by ascending antidiagonals: T(1,k) = 2*k + 1, and T(n,k) = (2*n^(k+1)-n-1)/(n-1) otherwise.

The programs for A238339, there is no canonical definition to state claims against.
-/

/-! ## A238339.P679773765752699266

`2*A055129(A122797(n+1))-1`
-/

namespace A238339.P679773765752699266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055129 (A122797 (n + 1)).toNat - 1

end

end A238339.P679773765752699266

/-! ## A238339.P10846238707363655666

`2*A228275(A061579(n))+1`
-/

namespace A238339.P10846238707363655666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228275 (A061579 n).toNat + 1

end

end A238339.P10846238707363655666

/-! ## A238339.P2597432186686692615

`A067066(n+1)-A095884(n+1)`
-/

namespace A238339.P2597432186686692615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067066 (n + 1) - A095884 (n + 1)

end

end A238339.P2597432186686692615

/-! ## A238339.P6998931075069415968

`2*A104881(n)-1`
-/

namespace A238339.P6998931075069415968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104881 n - 1

end

end A238339.P6998931075069415968

/-! ## A238339.P10705830865873354512

`A008683(A000928(n+1))+2*A104881(n)`
-/

namespace A238339.P10705830865873354512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000928 (n + 1)).toNat + 2 * A104881 n

end

end A238339.P10705830865873354512

/-! ## A238339.P12166779530043644953

`A004273(A104881(n))`
-/

namespace A238339.P12166779530043644953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A104881 n).toNat

end

end A238339.P12166779530043644953

/-! ## A238339.P17588522590755369510

`A005408(A104881(n)-1)`
-/

namespace A238339.P17588522590755369510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A104881 n - 1).toNat

end

end A238339.P17588522590755369510

/-! ## A238339.P3860470295697745232

`A005843(A104881(n)-1)+1`
-/

namespace A238339.P3860470295697745232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A104881 n - 1).toNat + 1

end

end A238339.P3860470295697745232

/-! ## A238339.P11058935594926877907

`A004273(A104878(A061579(n)))`
-/

namespace A238339.P11058935594926877907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A104878 (A061579 n).toNat).toNat

end

end A238339.P11058935594926877907

/-! ## A238339.P5105851799184476317

`A005843(A104881(n))-A007318(C(2, n))`
-/

namespace A238339.P5105851799184476317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A104881 n).toNat - A007318 (Nat.choose 2 n)

end

end A238339.P5105851799184476317

/-!
# A238340: Number of partitions of 4n into 4 parts.

The programs for A238340, the canonical program `A238340.P10150426947753049133` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238340 has offset 1).

The definition of A238340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238340.P10150426947753049133

`round(((4*(n+1))^3+3*(4*(n+1))²)/144)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238340

/-- `round(((4*(n+1))^3+3*(4*(n+1))²)/144)` -/
def P10150426947753049133.Spec : Prop :=
  ∀ n, P10150426947753049133.a n = A238340 (n + 1)

theorem P10150426947753049133.correct : P10150426947753049133.Spec := by
  intro n
  simp only [A238340, Nat.add_sub_cancel]

end A238340

/-! ## A238340.P13692697074600507663

`∑[∑[a(n-3)+8]]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A238340.P13692697074600507663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f2 =>
  f2 (n - 3) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238340.P13692697074600507663

namespace A238340

/-- `∑[∑[a(n-3)+8]]` -/
def P13692697074600507663.Spec : Prop :=
  ∀ n, (P13692697074600507663.a n : ℤ) = A238340 (n + 1)

end A238340

/-! ## A238340.P14718149043213279945

`and(∑[round((4*n+3)²/12)], -1)`
-/

namespace A238340.P14718149043213279945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 * n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A238340.P14718149043213279945

namespace A238340

/-- `and(∑[round((4*n+3)²/12)], -1)` -/
def P14718149043213279945.Spec : Prop :=
  ∀ n, P14718149043213279945.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P2977904069166263104

`or(∑[round((4*n+3)²/12)], char[n^14])`
-/

namespace A238340.P2977904069166263104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 * n + 3) ^ 2 : ℚ) / 12)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A238340.P2977904069166263104

namespace A238340

/-- `or(∑[round((4*n+3)²/12)], char[n^14])` -/
def P2977904069166263104.Spec : Prop :=
  ∀ n, P2977904069166263104.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P89830828384217382

`∑[A238705(n+1)]`
-/

namespace A238340.P89830828384217382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238340.P89830828384217382

namespace A238340

/-- `∑[A238705(n+1)]` -/
def P89830828384217382.Spec : Prop :=
  ∀ n, P89830828384217382.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P4250012093583350767

`A051462(n)+n²`
-/

namespace A238340.P4250012093583350767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051462 n + (n ^ 2 : ℤ)

end

end A238340.P4250012093583350767

namespace A238340

/-- `A051462(n)+n²` -/
def P4250012093583350767.Spec : Prop :=
  ∀ n, P4250012093583350767.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P14413902928716224721

`∑[∑[A047400(n+1)]]`
-/

namespace A238340.P14413902928716224721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047400 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238340.P14413902928716224721

namespace A238340

/-- `∑[∑[A047400(n+1)]]` -/
def P14413902928716224721.Spec : Prop :=
  ∀ n, P14413902928716224721.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P6483885435389996157

`∑[A115285(n)]+n²`
-/

namespace A238340.P6483885435389996157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A238340.P6483885435389996157

namespace A238340

/-- `∑[A115285(n)]+n²` -/
def P6483885435389996157.Spec : Prop :=
  ∀ n, P6483885435389996157.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P1141040622298172226

`∑[A000212(n)+(n+1)²]`
-/

namespace A238340.P1141040622298172226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238340.P1141040622298172226

namespace A238340

/-- `∑[A000212(n)+(n+1)²]` -/
def P1141040622298172226.Spec : Prop :=
  ∀ n, P1141040622298172226.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P6173454593360474273

`A181286(n)+∑[(n+1)²]`
-/

namespace A238340.P6173454593360474273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A238340.P6173454593360474273

namespace A238340

/-- `A181286(n)+∑[(n+1)²]` -/
def P6173454593360474273.Spec : Prop :=
  ∀ n, P6173454593360474273.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P10680050974766839078

`∑[A256320(n)]+(n+1)²`
-/

namespace A238340.P10680050974766839078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A238340.P10680050974766839078

namespace A238340

/-- `∑[A256320(n)]+(n+1)²` -/
def P10680050974766839078.Spec : Prop :=
  ∀ n, P10680050974766839078.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P16163490745367345662

`A238328(n+1)/(4*(n+1))`
-/

namespace A238340.P16163490745367345662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238328 (n + 1) : ℚ) / (4 * (n + 1) : ℚ)

end

end A238340.P16163490745367345662

namespace A238340

/-- `A238328(n+1)/(4*(n+1))` -/
def P16163490745367345662.Spec : Prop :=
  ∀ n, P16163490745367345662.a n = (A238340 (n + 1) : ℚ)

end A238340

/-! ## A238340.P1623686690257177189

`A212982(n)+A000601(n)`
-/

namespace A238340.P1623686690257177189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212982 n + A000601 n

end

end A238340.P1623686690257177189

namespace A238340

/-- `A212982(n)+A000601(n)` -/
def P1623686690257177189.Spec : Prop :=
  ∀ n, P1623686690257177189.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P4150678289214285066

`A212973(n)+A060999(n)`
-/

namespace A238340.P4150678289214285066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n + A060999 n

end

end A238340.P4150678289214285066

namespace A238340

/-- `A212973(n)+A060999(n)` -/
def P4150678289214285066.Spec : Prop :=
  ∀ n, P4150678289214285066.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P11814191034977095490

`A212983(n)+A181120(n)`
-/

namespace A238340.P11814191034977095490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212983 n + A181120 n

end

end A238340.P11814191034977095490

namespace A238340

/-- `A212983(n)+A181120(n)` -/
def P11814191034977095490.Spec : Prop :=
  ∀ n, P11814191034977095490.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P10099034998118003967

`A256539(n)-A256316(n)`
-/

namespace A238340.P10099034998118003967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256539 n - A256316 n

end

end A238340.P10099034998118003967

namespace A238340

/-- `A256539(n)-A256316(n)` -/
def P10099034998118003967.Spec : Prop :=
  ∀ n, P10099034998118003967.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P11050959780964741787

`A211004(n+1)+A001860(n)`
-/

namespace A238340.P11050959780964741787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (n + 1) + A001860 n

end

end A238340.P11050959780964741787

namespace A238340

/-- `A211004(n+1)+A001860(n)` -/
def P11050959780964741787.Spec : Prop :=
  ∀ n, P11050959780964741787.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P3550035790317405892

`∑[2*A000969(n)]-A000969(n)`
-/

namespace A238340.P3550035790317405892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000969 n

end

end A238340.P3550035790317405892

namespace A238340

/-- `∑[2*A000969(n)]-A000969(n)` -/
def P3550035790317405892.Spec : Prop :=
  ∀ n, P3550035790317405892.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P4485669157950850479

`A092498(n)+A092498(n)-A000969(n)`
-/

namespace A238340.P4485669157950850479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 n + (A092498 n - A000969 n)

end

end A238340.P4485669157950850479

namespace A238340

/-- `A092498(n)+A092498(n)-A000969(n)` -/
def P4485669157950850479.Spec : Prop :=
  ∀ n, P4485669157950850479.a n = A238340 (n + 1)

end A238340

/-! ## A238340.P1347771409787243608

`∑[A397983(n+1)-(n+1)]`
-/

namespace A238340.P1347771409787243608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397983 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238340.P1347771409787243608

namespace A238340

/-- `∑[A397983(n+1)-(n+1)]` -/
def P1347771409787243608.Spec : Prop :=
  ∀ n, P1347771409787243608.a n = A238340 (n + 1)

end A238340

/-!
# A238341: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n with exactly k occurrences of the largest part, n>=0, 0<=k<=n.

The programs for A238341, there is no canonical definition to state claims against.
-/

/-! ## A238341.P12309730809851512324

`A296186(A244530(n+1))%20`
-/

namespace A238341.P12309730809851512324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296186 (A244530 (n + 1)).toNat) 20

end

end A238341.P12309730809851512324

/-! ## A238341.P13552085561297824060

`A103298(A277031(n))-A002262(A238123(n))`
-/

namespace A238341.P13552085561297824060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A277031 n).toNat - A002262 (A238123 n).toNat

end

end A238341.P13552085561297824060

/-! ## A238341.P5200926039111060080

`A242451(n)-A056557(A184955(n))`
-/

namespace A238341.P5200926039111060080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 n - A056557 (A184955 n).toNat

end

end A238341.P5200926039111060080

/-! ## A238341.P7535250339618057254

`A159918(A242447(n)^A003992(n))`
-/

namespace A238341.P7535250339618057254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (SequenceMachineLib.roundAway ((A242447 n : ℚ) ^ (A003992 n : ℤ))).toNat

end

end A238341.P7535250339618057254

/-! ## A238341.P17892395501111901166

`A159918(A242447(n)^A171882(n))`
-/

namespace A238341.P17892395501111901166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (SequenceMachineLib.roundAway ((A242447 n : ℚ) ^ (A171882 n : ℤ))).toNat

end

end A238341.P17892395501111901166

/-!
# A238342: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n with exactly k occurrences of the smallest part, n>=0, 0<=k<=n.

The programs for A238342, there is no canonical definition to state claims against.
-/

/-! ## A238342.P7177957442059886487

`A135551(A080038(n+1)^A331332(n))`
-/

namespace A238342.P7177957442059886487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (SequenceMachineLib.roundAway ((A080038 (n + 1) : ℚ) ^ (A331332 n : ℤ))).toNat

end

end A238342.P7177957442059886487

/-! ## A238342.P14360046020191158196

`∑{e}[A047073(A271423(n)), #]`
-/

namespace A238342.P14360046020191158196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047073 (A271423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A238342.P14360046020191158196

/-! ## A238342.P14832825359548972898

`A084556(A001095(A242447(n))²)`
-/

namespace A238342.P14832825359548972898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A001095 (A242447 n).toNat ^ 2).toNat

end

end A238342.P14832825359548972898

/-! ## A238342.P17324893503990608345

`A242447(n)+A056557(A184955(n))`
-/

namespace A238342.P17324893503990608345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 n + A056557 (A184955 n).toNat

end

end A238342.P17324893503990608345

/-! ## A238342.P9830373725305645625

`A074331(A242447(n)%A096820(2*n+5))`
-/

namespace A238342.P9830373725305645625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 (Int.tmod (A242447 n) (A096820 (2 * n + 5))).toNat

end

end A238342.P9830373725305645625

/-!
# A238343: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n with k descents, n>=0, 0<=k<=n.

The programs for A238343, there is no canonical definition to state claims against.
-/

/-! ## A238343.P11196727831472707244

`A259479(A055645(n)%A160927(n+1))`
-/

namespace A238343.P11196727831472707244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259479 (Int.tmod (A055645 n) (A160927 (n + 1))).toNat

end

end A238343.P11196727831472707244

/-! ## A238343.P659326833042224929

`A259479(n)+A232580(A283666(n+1))`
-/

namespace A238343.P659326833042224929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259479 n + A232580 (A283666 (n + 1)).toNat

end

end A238343.P659326833042224929

/-! ## A238343.P2015823778497233775

`A259479(n^(val(n+1, 17)+1))`
-/

namespace A238343.P2015823778497233775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259479 (n ^ (SequenceMachineLib.valuation (n + 1) 17 + 1))

end

end A238343.P2015823778497233775

/-! ## A238343.P11394394392397422373

`A259479(C(n, val(n+1, 17)+1))`
-/

namespace A238343.P11394394392397422373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259479 (Nat.choose n (SequenceMachineLib.valuation (n + 1) 17 + 1))

end

end A238343.P11394394392397422373

/-! ## A238343.P14635547556558745967

`A259479(A055645(n))`
-/

namespace A238343.P14635547556558745967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259479 (A055645 n).toNat

end

end A238343.P14635547556558745967

/-!
# A238344: Irregular triangle T(n,k) read by rows: T(n,k) is the number of compositions of n with k descents, n>=0, 0<=k<=floor(n/3).

The programs for A238344, there is no canonical definition to state claims against.
-/

/-! ## A238344.P10509112103511734104

`A238343(lt[0, A238343(n)])`
-/

namespace A238344.P10509112103511734104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A238344.P10509112103511734104

/-! ## A238344.P8426412504415867320

`A238343(eq[A059679(n+3)², A059679(n+3)])`
-/

namespace A238344.P8426412504415867320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059679 (n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059679 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A238344.P8426412504415867320

/-! ## A238344.P11696137455170896412

`A238343(eq[0, A000007(A238343(n))])`
-/

namespace A238344.P11696137455170896412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A238343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238344.P11696137455170896412

/-! ## A238344.P11965328925111430380

`A238343(eq[1, A331154(n+1)])`
-/

namespace A238344.P11965328925111430380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238344.P11965328925111430380

/-! ## A238344.P17107809815429023328

`A238343(eq[A059679(n+3), A059683(n+3)])`
-/

namespace A238344.P17107809815429023328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059679 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059683 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A238344.P17107809815429023328

/-!
# A238345: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n where the k-th part is the first occurrence of a largest part, n>=1, 1<=k<=n.

The programs for A238345, there is no canonical definition to state claims against.
-/

/-! ## A238345.P13033441889551165215

`A143361(n+1)-A020985(A207682(n+1)²)`
-/

namespace A238345.P13033441889551165215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (n + 1) - A020985 (A207682 (n + 1) ^ 2).toNat

end

end A238345.P13033441889551165215

/-! ## A238345.P11629182230091590043

`A143361(A187829(n+1))-1`
-/

namespace A238345.P11629182230091590043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A187829 (n + 1)).toNat - 1

end

end A238345.P11629182230091590043

/-! ## A238345.P12667897797424162938

`A320003(3^A143361(n+1))`
-/

namespace A238345.P12667897797424162938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A143361 (n + 1) : ℤ))).toNat

end

end A238345.P12667897797424162938

/-! ## A238345.P9632429300405799027

`A143361(n+1)-A057427(A011782(n))`
-/

namespace A238345.P9632429300405799027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (n + 1) - A057427 (A011782 n).toNat

end

end A238345.P9632429300405799027

/-! ## A238345.P11785180953773535452

`A144382(A143356(n+1))+A143361(n+1)`
-/

namespace A238345.P11785180953773535452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144382 (A143356 (n + 1)).toNat + A143361 (n + 1)

end

end A238345.P11785180953773535452

/-!
# A238346: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n where the k-th part is the last occurrence of a largest part, n>=1, 1<=k<=n.

The programs for A238346, there is no canonical definition to state claims against.
-/

/-! ## A238346.P13235434510464366808

`A130259(A078122(n+1))`
-/

namespace A238346.P13235434510464366808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A078122 (n + 1)).toNat

end

end A238346.P13235434510464366808

/-! ## A238346.P11443860370700516702

`A000193(2*A078122(n+1))`
-/

namespace A238346.P11443860370700516702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (2 * A078122 (n + 1)).toNat

end

end A238346.P11443860370700516702

/-! ## A238346.P6317430125900038629

`A001222(3^A174802(n+2))`
-/

namespace A238346.P6317430125900038629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A174802 (n + 2) : ℤ))).toNat

end

end A238346.P6317430125900038629

/-! ## A238346.P11838310025108991900

`A057526(lcm(2, A078122(n+1)))`
-/

namespace A238346.P11838310025108991900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (Int.lcm 2 (A078122 (n + 1)))

end

end A238346.P11838310025108991900

/-! ## A238346.P13889039062559578163

`A000005(3^A174802(n+2))-1`
-/

namespace A238346.P13889039062559578163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A174802 (n + 2) : ℤ))).toNat - 1

end

end A238346.P13889039062559578163

/-!
# A238347: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n where the k-th part is the first occurrence of a smallest part, n>=1, 1<=k<=n.

The programs for A238347, there is no canonical definition to state claims against.
-/

/-! ## A238347.P8702351614751776233

`round(A133545(n+1)/A133568(n+1))`
-/

namespace A238347.P8702351614751776233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A133545 (n + 1) : ℚ) / (A133568 (n + 1) : ℚ))

end

end A238347.P8702351614751776233

/-!
# A238348: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n where the k-th part is the last occurrence of a smallest part, n>=1, 1<=k<=n.

The programs for A238348, there is no canonical definition to state claims against.
-/

/-! ## A238348.P935831216306862751

`A139465(A319076(n))`
-/

namespace A238348.P935831216306862751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139465 (A319076 n).toNat

end

end A238348.P935831216306862751

/-! ## A238348.P8146988899732286357

`A296658(A139621(n+1))`
-/

namespace A238348.P8146988899732286357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (A139621 (n + 1)).toNat

end

end A238348.P8146988899732286357

/-! ## A238348.P2806401592712925714

`A252736(lcm(9, A128264(n+1)))`
-/

namespace A238348.P2806401592712925714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (Int.lcm 9 (A128264 (n + 1)))

end

end A238348.P2806401592712925714

/-! ## A238348.P14208695804083783329

`A347643(∏{p}[A091598(n), A254685(#)])`
-/

namespace A238348.P14208695804083783329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A254685 p).toNat

end

end A238348.P14208695804083783329

/-! ## A238348.P15308880825252504327

`A126235(A275421(n+1)+A049020(n))`
-/

namespace A238348.P15308880825252504327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126235 (A275421 (n + 1) + A049020 n).toNat

end

end A238348.P15308880825252504327

/-!
# A238349: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n with k parts p at position p (fixed points), n>=0, 0<=k<=n.

The programs for A238349, there is no canonical definition to state claims against.
-/

/-! ## A238349.P9301873029165813348

`A025427(A318392(n+1)+A241424(n+5))`
-/

namespace A238349.P9301873029165813348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A318392 (n + 1) + A241424 (n + 5)).toNat

end

end A238349.P9301873029165813348

/-! ## A238349.P11485110852650350206

`A195470(A093574(n+2))`
-/

namespace A238349.P11485110852650350206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (A093574 (n + 2)).toNat

end

end A238349.P11485110852650350206

/-! ## A238349.P4710179809932210940

`A342689(A036561(n))+A083928(n)`
-/

namespace A238349.P4710179809932210940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342689 (A036561 n).toNat + A083928 n

end

end A238349.P4710179809932210940

/-! ## A238349.P9278116232623101247

`A210391(gcd(A004531(n), A077168(n)))`
-/

namespace A238349.P9278116232623101247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (Int.gcd (A004531 n) (A077168 n))

end

end A238349.P9278116232623101247

/-!
# A238350: Triangle T(n,k) read by rows: T(n,k) is the number of compositions of n with k parts p at position p (fixed points), n>=0, 0<=k<=A003056(n).

The programs for A238350, there is no canonical definition to state claims against.
-/

/-! ## A238350.P5856334890944670140

`gcd(A000607(n), A004247(A099213(n)))`
-/

namespace A238350.P5856334890944670140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000607 n) (A004247 (A099213 n).toNat)

end

end A238350.P5856334890944670140

/-! ## A238350.P7610724403527506093

`A347610(n*A233427(2*(n+2)))`
-/

namespace A238350.P7610724403527506093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 ((n : ℤ) * A233427 (2 * (n + 2))).toNat

end

end A238350.P7610724403527506093

/-! ## A238350.P2812101335146861031

`gcd(A046676(n), A046978(A018921(n)))`
-/

namespace A238350.P2812101335146861031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046676 n) (A046978 (A018921 n).toNat)

end

end A238350.P2812101335146861031

/-! ## A238350.P13532073004034313161

`gcd(A140953(A000081(n)), A140953(n))`
-/

namespace A238350.P13532073004034313161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140953 (A000081 n).toNat) (A140953 n)

end

end A238350.P13532073004034313161

/-!
# A238351: Number of compositions p(1)+p(2)+...+p(k) = n such that for no part p(i) = i (compositions without fixed points).

The programs for A238351, there is no canonical definition to state claims against.
-/

/-! ## A238351.P15474872865535818176

`A238350(∑[A123578(n)])`
-/

namespace A238351.P15474872865535818176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238351.P15474872865535818176

/-! ## A238351.P12965835800893929024

`A238350(A075349(n+1)-1)`
-/

namespace A238351.P12965835800893929024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238350 (A075349 (n + 1) - 1).toNat

end

end A238351.P12965835800893929024

/-! ## A238351.P5803772495211978154

`A238350(∑[A080036(n)-(n+1)])`
-/

namespace A238351.P5803772495211978154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238351.P5803772495211978154

/-! ## A238351.P18114223974754730106

`A011782(n)-A352875(n)`
-/

namespace A238351.P18114223974754730106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A352875 n

end

end A238351.P18114223974754730106

/-! ## A238351.P17085108709792553457

`A336269(n)+A336273(n)-A352875(n)`
-/

namespace A238351.P17085108709792553457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336269 n + (A336273 n - A352875 n)

end

end A238351.P17085108709792553457

/-! ## A238351.P14494642069764153042

`A238349(∑[n])`
-/

namespace A238351.P14494642069764153042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238351.P14494642069764153042

/-! ## A238351.P16123488643500604154

`A238349(A000217(n))+A209229(A168237(n))`
-/

namespace A238351.P16123488643500604154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (A000217 n).toNat + A209229 (A168237 n).toNat

end

end A238351.P16123488643500604154

/-! ## A238351.P15087201446416610308

`A238349(A000217(n))+A209229(A049493(n+1))`
-/

namespace A238351.P15087201446416610308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238349 (A000217 n).toNat + A209229 (A049493 (n + 1)).toNat

end

end A238351.P15087201446416610308

/-!
# A238353: Triangle T(n,k) read by rows: T(n,k) is the number of partitions of n (as weakly ascending list of parts) with maximal ascent k, n >= 0, 0 <= k <= n.

The programs for A238353, there is no canonical definition to state claims against.
-/

/-! ## A238353.P241992485838572163

`A302777(A245062(n+1))+A212551(n)`
-/

namespace A238353.P241992485838572163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (A245062 (n + 1)).toNat + A212551 n

end

end A238353.P241992485838572163

/-! ## A238353.P9836711258285329913

`A256910(A238130(n)^A137855(n+1))`
-/

namespace A238353.P9836711258285329913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 (SequenceMachineLib.roundAway ((A238130 n : ℚ) ^ (A137855 (n + 1) : ℤ))).toNat

end

end A238353.P9836711258285329913

/-! ## A238353.P7938240116223588734

`dr(A238130(n)^A007318(n)!)`
-/

namespace A238353.P7938240116223588734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A238130 n ^ Nat.factorial (A007318 n).toNat)

end

end A238353.P7938240116223588734

/-! ## A238353.P5792876756630984267

`A306008(A215703(n+2))+char[∑[n]]`
-/

namespace A238353.P5792876756630984267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306008 (A215703 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A238353.P5792876756630984267

/-! ## A238353.P17481851891444432401

`A000030(A238130(n)^A046899(n))`
-/

namespace A238353.P17481851891444432401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A238130 n : ℚ) ^ (A046899 n : ℤ))).toNat

end

end A238353.P17481851891444432401

/-!
# A238354: Triangle T(n,k) read by rows: T(n,k) is the number of partitions of n (as weakly ascending list of parts) with minimal ascent k, n >= 0, 0 <= k <= n.

The programs for A238354, there is no canonical definition to state claims against.
-/

/-! ## A238354.P16417968295963843614

`round(A182631(A238128(n)²)^(5/7))`
-/

namespace A238354.P16417968295963843614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182631 (A238128 n ^ 2).toNat : ℝ) ^ ((5 : ℚ) / 7 : ℝ))

end

end A238354.P16417968295963843614

/-! ## A238354.P13362885717588035235

`A285869(A182631(A238128(n)²))`
-/

namespace A238354.P13362885717588035235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A182631 (A238128 n ^ 2).toNat).toNat

end

end A238354.P13362885717588035235

/-! ## A238354.P17558263068329561676

`∑{d}[A182631(A238128(n)²), A062050(#)]`
-/

namespace A238354.P17558263068329561676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182631 (A238128 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062050 d

end

end A238354.P17558263068329561676

/-! ## A238354.P4281086965920089357

`ceil(A182631(A238128(n)²)/A055642(n))`
-/

namespace A238354.P4281086965920089357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182631 (A238128 n ^ 2).toNat : ℚ) / (A055642 n : ℚ)⌉

end

end A238354.P4281086965920089357

/-! ## A238354.P10638276586960203894

`and(A238128(n), A288728(A320139(3*n+2)))`
-/

namespace A238354.P10638276586960203894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A238128 n) (A288728 (A320139 (3 * n + 2)).toNat)

end

end A238354.P10638276586960203894

/-!
# A238355: Number of rooted maps of genus 5 containing n edges.

The programs for A238355, there is no canonical definition to state claims against.
-/

/-! ## A238355.P2535569291812253702

`A238396(eq[6, A214676(n+1)])`
-/

namespace A238355.P2535569291812253702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238355.P2535569291812253702

/-!
# A238361: Number of length n binary words that contain 111 but do not contain 000 (as contiguous subwords).

The programs for A238361, the canonical program `A238361.P733895843038041239` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238361 has offset 0).

The definition of A238361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238361.P733895843038041239

`2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238361

/-- `2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)-a(n-5)` -/
def P733895843038041239.Spec : Prop :=
  ∀ n, P733895843038041239.a n = A238361 n

theorem P733895843038041239.correct : P733895843038041239.Spec := by
  intro n
  simp only [A238361]

end A238361

/-! ## A238361.P10272224903268277949

`a(n-1)+A000073(n)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A238361.P10272224903268277949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 1) + (A000073 n + a (n - 2))

end

end A238361.P10272224903268277949

namespace A238361

/-- `a(n-1)+A000073(n)+a(n-2)` -/
def P10272224903268277949.Spec : Prop :=
  ∀ n, P10272224903268277949.a n = A238361 n

end A238361

/-! ## A238361.P1609947512884920375

`A000073(n+3)-record[A006355(n)]`
-/

namespace A238361.P1609947512884920375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238361.P1609947512884920375

namespace A238361

/-- `A000073(n+3)-record[A006355(n)]` -/
def P1609947512884920375.Spec : Prop :=
  ∀ n, P1609947512884920375.a n = A238361 n

end A238361

/-! ## A238361.P376859000765707352

`A000073(n+3)-A128588(n+1)`
-/

namespace A238361.P376859000765707352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3) - A128588 (n + 1)

end

end A238361.P376859000765707352

namespace A238361

/-- `A000073(n+3)-A128588(n+1)` -/
def P376859000765707352.Spec : Prop :=
  ∀ n, P376859000765707352.a n = A238361 n

end A238361

/-! ## A238361.P9933532225789094340

`A000100(n+1)-A212804(A028310(n))`
-/

namespace A238361.P9933532225789094340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000100 (n + 1) - A212804 (A028310 n).toNat

end

end A238361.P9933532225789094340

namespace A238361

/-- `A000100(n+1)-A212804(A028310(n))` -/
def P9933532225789094340.Spec : Prop :=
  ∀ n, P9933532225789094340.a n = A238361 n

end A238361

/-! ## A238361.P11594332579351669974

`A000073(n+3)-(A006355(n+1)+A006355(n))`
-/

namespace A238361.P11594332579351669974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3) - (A006355 (n + 1) + A006355 n)

end

end A238361.P11594332579351669974

namespace A238361

/-- `A000073(n+3)-(A006355(n+1)+A006355(n))` -/
def P11594332579351669974.Spec : Prop :=
  ∀ n, P11594332579351669974.a n = A238361 n

end A238361

/-!
# A238362: Primes p such that A000120(p - 1) = A000120(p + 1) = 2^k for some k.

The programs for A238362, the canonical program `A238362.P12922951587572492693` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238362 has offset 1).

The definition of A238362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238362.P12922951587572492693

`p?[A000120(A000120(n)+1)*(8*n+3)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A238362

/-- `p?[A000120(A000120(n)+1)*(8*n+3)]` -/
def P12922951587572492693.Spec : Prop :=
  ∀ n, P12922951587572492693.a n = A238362 (n + 1)

theorem P12922951587572492693.correct : P12922951587572492693.Spec := by
  intro n
  simp only [A238362, Nat.add_sub_cancel]

end A238362

/-! ## A238362.P1529281879182039152

`p?[A043545(A000120(n))+A017101(n)]`
-/

namespace A238362.P1529281879182039152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A000120 n).toNat + A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238362.P1529281879182039152

namespace A238362

/-- `p?[A043545(A000120(n))+A017101(n)]` -/
def P1529281879182039152.Spec : Prop :=
  ∀ n, P1529281879182039152.a n = A238362 (n + 1)

end A238362

/-! ## A238362.P2365395352257589505

`p?[A017101(n)*A095955(A001316(n))]`
-/

namespace A238362.P2365395352257589505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n * A095955 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238362.P2365395352257589505

namespace A238362

/-- `p?[A017101(n)*A095955(A001316(n))]` -/
def P2365395352257589505.Spec : Prop :=
  ∀ n, P2365395352257589505.a n = A238362 (n + 1)

end A238362

/-! ## A238362.P9517080043211770262

`p?[A000120(A000120(n))*A047470(n+1)]`
-/

namespace A238362.P9517080043211770262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n).toNat * A047470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238362.P9517080043211770262

namespace A238362

/-- `p?[A000120(A000120(n))*A047470(n+1)]` -/
def P9517080043211770262.Spec : Prop :=
  ∀ n, P9517080043211770262.a n = A238362 (n + 1)

end A238362

/-! ## A238362.P7298030236400705675

`p?[A000120(A000120(n))*A047417(n+1)]`
-/

namespace A238362.P7298030236400705675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n).toNat * A047417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238362.P7298030236400705675

namespace A238362

/-- `p?[A000120(A000120(n))*A047417(n+1)]` -/
def P7298030236400705675.Spec : Prop :=
  ∀ n, P7298030236400705675.a n = A238362 (n + 1)

end A238362

/-!
# A238363: Coefficients for the commutator for the logarithm of the derivative operator [log(D),x^n D^n]=d[(xD)!/(xD-n)!]/d(xD) expanded in the operators :xD:^k.

The programs for A238363, there is no canonical definition to state claims against.
-/

/-! ## A238363.P430025861040462892

`A238385(comp[∑[n-1]])`
-/

namespace A238363.P430025861040462892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238385 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A238363.P430025861040462892

/-! ## A238363.P3321287910241335763

`A078921(n+1)/A233543(n)`
-/

namespace A238363.P3321287910241335763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078921 (n + 1) : ℚ) / (A233543 n : ℚ)

end

end A238363.P3321287910241335763

/-! ## A238363.P17928042970111066955

`A078921(n+1)/A002262(n)!`
-/

namespace A238363.P17928042970111066955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078921 (n + 1) : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A238363.P17928042970111066955

/-! ## A238363.P2777391474848818324

`A078921(n+1)/A163351(n)!`
-/

namespace A238363.P2777391474848818324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078921 (n + 1) : ℚ) / (Nat.factorial (A163351 n).toNat : ℚ)

end

end A238363.P2777391474848818324

/-! ## A238363.P16510600698903872348

`A074909(n)*A133942(A025581(n))`
-/

namespace A238363.P16510600698903872348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A133942 (A025581 n).toNat

end

end A238363.P16510600698903872348

/-! ## A238363.P8036828457210070341

`A097807(n)*A111492(A038722(n+1))`
-/

namespace A238363.P8036828457210070341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A111492 (A038722 (n + 1)).toNat

end

end A238363.P8036828457210070341

/-! ## A238363.P11326384193104349029

`A238385(A007401(n+1))%A077076(n)`
-/

namespace A238363.P11326384193104349029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238385 (A007401 (n + 1)).toNat) (A077076 n)

end

end A238363.P11326384193104349029

/-! ## A238363.P4319425675909339458

`A074909(n)*A097807(n)*A119502(n)`
-/

namespace A238363.P4319425675909339458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A097807 n * A119502 n

end

end A238363.P4319425675909339458

/-! ## A238363.P16822092829438774380

`A074909(n)*A094587(n)/A130595(n)`
-/

namespace A238363.P16822092829438774380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n * A094587 n : ℚ) / (A130595 n : ℚ)

end

end A238363.P16822092829438774380

/-! ## A238363.P3388255520471489551

`A033999(A025581(n))*A074909(n)*A119502(n)`
-/

namespace A238363.P3388255520471489551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A074909 n * A119502 n

end

end A238363.P3388255520471489551

/-!
# A238364: Numbers n such that 9*n^2+3*n-1 and 9*n^2+3*n+1 are twin primes.

The programs for A238364, there is no canonical definition to state claims against.
-/

/-! ## A238364.P7781182879471069089

`∩[A088485(n+1), A008486(n)]/3`
-/

namespace A238364.P7781182879471069089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 3

end

end A238364.P7781182879471069089

/-! ## A238364.P15763376560652267550

`record[(n+1)/A082466(3*(n+1))]`
-/

namespace A238364.P15763376560652267550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082466 (3 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238364.P15763376560652267550

/-! ## A238364.P16021631413610802549

`record[A135997(A088485(n+1))]`
-/

namespace A238364.P16021631413610802549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A088485 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238364.P16021631413610802549

/-! ## A238364.P10678228287572441814

`A135997(∩[A088485(n+1), A008486(n)])`
-/

namespace A238364.P10678228287572441814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A238364.P10678228287572441814

/-! ## A238364.P10172023572407462636

`A002264(∩[A065033(3*n+2), A088485(n+1)])`
-/

namespace A238364.P10172023572407462636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A238364.P10172023572407462636

/-!
# A238365: Number of dots needed to express n as a Roman numeral in Braille.

The programs for A238365, there is no canonical definition to state claims against.
-/

/-! ## A238365.P6809255042271459039

`∑{digits}[A061493(n+1), A092196(A000079(#))]`
-/

namespace A238365.P6809255042271459039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A092196 (A000079 x).toNat).sum

end

end A238365.P6809255042271459039

/-! ## A238365.P9740832356442808502

`∑{digits}[A061493(n+1), A092196(A054842(#))]`
-/

namespace A238365.P9740832356442808502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A092196 (A054842 x).toNat).sum

end

end A238365.P9740832356442808502

/-! ## A238365.P15800741124451329715

`∑{digits}[A061493(n+1), A092196(A171559(#))]`
-/

namespace A238365.P15800741124451329715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A092196 (A171559 x).toNat).sum

end

end A238365.P15800741124451329715

/-! ## A238365.P2723965732363489032

`∑{digits}[A061493(n+1), A092196(A329562(#))]`
-/

namespace A238365.P2723965732363489032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A092196 (A329562 x).toNat).sum

end

end A238365.P2723965732363489032

/-! ## A238365.P11457232514749254464

`∑{digits}[A061493(n+1), A006968(A036788(#)+3)]`
-/

namespace A238365.P11457232514749254464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006968 (A036788 x + 3).toNat).sum

end

end A238365.P11457232514749254464

/-! ## A238365.P11639526139893670169

`∑{digits}[A061493(n+1), A006968(A061493(#)+#)]`
-/

namespace A238365.P11639526139893670169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006968 (A061493 x + (x : ℤ)).toNat).sum

end

end A238365.P11639526139893670169

/-! ## A238365.P3763212394792345168

`∑{digits}[A061493(n+1), A038722(A004526(#)+1)+1]`
-/

namespace A238365.P3763212394792345168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A038722 (A004526 x + 1).toNat + 1).sum

end

end A238365.P3763212394792345168

/-!
# A238366: a(n) = 5*a(n-2) + 2, a(0) = 1, a(1) = 2.

The programs for A238366, the canonical program `A238366.P14125249392801204914` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238366 has offset 0).

The definition of A238366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)+2` (program `A238366.P14125249392801204914`, by `A238366.P14125249392801204914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238366.P14125249392801204914

`5*a(n-2)+2` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238366

/-- `5*a(n-2)+2` -/
def P14125249392801204914.Spec : Prop :=
  ∀ n, (P14125249392801204914.a n : ℤ) = A238366 n

theorem P14125249392801204914.correct : P14125249392801204914.Spec := by
  intro n
  simp only [A238366]

end A238366

/-! ## A238366.P3321853125149228097

`∑[5^floor(n/2)]`
-/

namespace A238366.P3321853125149228097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238366.P3321853125149228097

namespace A238366

/-- `∑[5^floor(n/2)]` -/
def P3321853125149228097.Spec : Prop :=
  ∀ n, P3321853125149228097.a n = (A238366 n : ℚ)

end A238366

/-! ## A238366.P8789306155432960771

`ogf((1+x)/(1-x-5x^2+5x^3))`
-/

namespace A238366.P8789306155432960771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -5, 5] n

end

end A238366.P8789306155432960771

namespace A238366

/-- `ogf((1+x)/(1-x-5x^2+5x^3))` -/
def P8789306155432960771.Spec : Prop :=
  ∀ n, P8789306155432960771.a n = A238366 n

end A238366

/-! ## A238366.P15337724667455030376

`lcm(5, a(n-2))+2` with `a(0)=1, a(1)=2`
-/

namespace A238366.P15337724667455030376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm 5 (a (n - 2)) + 2

end

end A238366.P15337724667455030376

namespace A238366

/-- `lcm(5, a(n-2))+2` -/
def P15337724667455030376.Spec : Prop :=
  ∀ n, (P15337724667455030376.a n : ℤ) = A238366 n

end A238366

/-! ## A238366.P10124901287441833224

`floor(∑[5*a(n-2)])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A238366.P10124901287441833224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  5 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238366.P10124901287441833224

namespace A238366

/-- `floor(∑[5*a(n-2)])` -/
def P10124901287441833224.Spec : Prop :=
  ∀ n, (P10124901287441833224.a n : ℤ) = A238366 n

end A238366

/-! ## A238366.P1799799508786283053

`∑[5*a(n-2)]/2` with `a(0)=2, a(1)=2`
-/

namespace A238366.P1799799508786283053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  5 * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A238366.P1799799508786283053

namespace A238366

/-- `∑[5*a(n-2)]/2` -/
def P1799799508786283053.Spec : Prop :=
  ∀ n, P1799799508786283053.a n = (A238366 n : ℚ)

end A238366

/-! ## A238366.P13497437080926669402

`7-5*(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A238366.P13497437080926669402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  7 - 5 * (1 - a (n - 2))

end

end A238366.P13497437080926669402

namespace A238366

/-- `7-5*(1-a(n-2))` -/
def P13497437080926669402.Spec : Prop :=
  ∀ n, P13497437080926669402.a n = A238366 n

end A238366

/-! ## A238366.P2890380432683826141

`a(n-1)+5^floor(n/2)` with `a(0)=1`
-/

namespace A238366.P2890380432683826141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A238366.P2890380432683826141

namespace A238366

/-- `a(n-1)+5^floor(n/2)` -/
def P2890380432683826141.Spec : Prop :=
  ∀ n, P2890380432683826141.a n = (A238366 n : ℚ)

end A238366

/-! ## A238366.P11352656359972518598

`floor(∑[5^∑[1-a(n-1)]])` with `a(0)=0, a(1)=0`
-/

namespace A238366.P11352656359972518598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A238366.P11352656359972518598

namespace A238366

/-- `floor(∑[5^∑[1-a(n-1)]])` -/
def P11352656359972518598.Spec : Prop :=
  ∀ n, P11352656359972518598.a n = A238366 n

end A238366

/-! ## A238366.P8306046620256136729

`A294566(n+2)-1`
-/

namespace A238366.P8306046620256136729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (n + 2) - 1

end

end A238366.P8306046620256136729

namespace A238366

/-- `A294566(n+2)-1` -/
def P8306046620256136729.Spec : Prop :=
  ∀ n, P8306046620256136729.a n = A238366 n

end A238366

/-! ## A238366.P9348576782847209853

`floor(A056487(n+1)/2)`
-/

namespace A238366.P9348576782847209853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056487 (n + 1) : ℚ) / 2⌋

end

end A238366.P9348576782847209853

namespace A238366

/-- `floor(A056487(n+1)/2)` -/
def P9348576782847209853.Spec : Prop :=
  ∀ n, P9348576782847209853.a n = A238366 n

end A238366

/-! ## A238366.P3613758185987136136

`(A163114(n+1)-1)/2`
-/

namespace A238366.P3613758185987136136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163114 (n + 1) - 1 : ℚ) / 2

end

end A238366.P3613758185987136136

namespace A238366

/-- `(A163114(n+1)-1)/2` -/
def P3613758185987136136.Spec : Prop :=
  ∀ n, P3613758185987136136.a n = (A238366 n : ℚ)

end A238366

/-! ## A238366.P2540180130915472080

`A181287(2*n+3)/2`
-/

namespace A238366.P2540180130915472080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181287 (2 * n + 3) : ℚ) / 2

end

end A238366.P2540180130915472080

namespace A238366

/-- `A181287(2*n+3)/2` -/
def P2540180130915472080.Spec : Prop :=
  ∀ n, P2540180130915472080.a n = (A238366 n : ℚ)

end A238366

/-! ## A238366.P4807428433892638292

`∑[2*A074872(n+1)]/2`
-/

namespace A238366.P4807428433892638292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074872 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A238366.P4807428433892638292

namespace A238366

/-- `∑[2*A074872(n+1)]/2` -/
def P4807428433892638292.Spec : Prop :=
  ∀ n, P4807428433892638292.a n = (A238366 n : ℚ)

end A238366

/-! ## A238366.P2405066153776360377

`A056451(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A238366.P2405066153776360377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056451 (n - 1) + a (n - 1)

end

end A238366.P2405066153776360377

namespace A238366

/-- `A056451(n-1)+a(n-1)` -/
def P2405066153776360377.Spec : Prop :=
  ∀ n, P2405066153776360377.a n = A238366 n

end A238366

/-! ## A238366.P12888099626441023990

`(A056487(n+1)-A057427(n+1))/2`
-/

namespace A238366.P12888099626441023990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056487 (n + 1) - A057427 (n + 1) : ℚ) / 2

end

end A238366.P12888099626441023990

namespace A238366

/-- `(A056487(n+1)-A057427(n+1))/2` -/
def P12888099626441023990.Spec : Prop :=
  ∀ n, P12888099626441023990.a n = (A238366 n : ℚ)

end A238366

/-! ## A238366.P17543714320907340336

`(A056487(n+1)-1)/A040008(2*n+1)`
-/

namespace A238366.P17543714320907340336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056487 (n + 1) - 1 : ℚ) / (A040008 (2 * n + 1) : ℚ)

end

end A238366.P17543714320907340336

namespace A238366

/-- `(A056487(n+1)-1)/A040008(2*n+1)` -/
def P17543714320907340336.Spec : Prop :=
  ∀ n, P17543714320907340336.a n = (A238366 n : ℚ)

end A238366

/-! ## A238366.P6917126748917236040

`floor(Δ[A026383(n+1)/2])`
-/

namespace A238366.P6917126748917236040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026383 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A238366.P6917126748917236040

namespace A238366

/-- `floor(Δ[A026383(n+1)/2])` -/
def P6917126748917236040.Spec : Prop :=
  ∀ n, P6917126748917236040.a n = A238366 n

end A238366

/-! ## A238366.P585584469930820951

`(Δ[A162963(n+1)]-1)/2`
-/

namespace A238366.P585584469930820951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A238366.P585584469930820951

namespace A238366

/-- `(Δ[A162963(n+1)]-1)/2` -/
def P585584469930820951.Spec : Prop :=
  ∀ n, P585584469930820951.a n = (A238366 n : ℚ)

end A238366

/-! ## A238366.P5688347675832852699

`A026396(n)-A162963(n+1)`
-/

namespace A238366.P5688347675832852699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026396 n - A162963 (n + 1)

end

end A238366.P5688347675832852699

namespace A238366

/-- `A026396(n)-A162963(n+1)` -/
def P5688347675832852699.Spec : Prop :=
  ∀ n, P5688347675832852699.a n = A238366 n

end A238366

/-!
# A238367: Even numbers n such that n is not divisible by 2^d where d is the number of distinct odd prime factors of n.

The programs for A238367, the canonical program `A238367.P4066745215504090495` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238367 has offset 1).

The definition of A238367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238367.P4066745215504090495

`A103517(lt[A337923(3*(n+1)), A001221(n+1)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A238367

/-- `A103517(lt[A337923(3*(n+1)), A001221(n+1)])` -/
def P4066745215504090495.Spec : Prop :=
  ∀ n, P4066745215504090495.a n = A238367 (n + 1)

theorem P4066745215504090495.correct : P4066745215504090495.Spec := by
  intro n
  simp only [A238367, Nat.add_sub_cancel]

end A238367

/-! ## A238367.P16063378609825936733

`(2*lt[1, A001221(2*n+1)]+1)*A000005(A256481(n))`
-/

namespace A238367.P16063378609825936733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) * A000005 (A256481 n).toNat

end

end A238367.P16063378609825936733

namespace A238367

/-- `(2*lt[1, A001221(2*n+1)]+1)*A000005(A256481(n))` -/
def P16063378609825936733.Spec : Prop :=
  ∀ n, P16063378609825936733.a n = A238367 (n + 1)

end A238367

/-!
# A238369: Integer area A of triangles with side lengths in the commutative ring Z[sqrt(2)].

The programs for A238369, there is no canonical definition to state claims against.
-/

/-! ## A238369.P10910264526980060698

`∑[gcd(2, A244569(A003269(n+1)))]`
-/

namespace A238369.P10910264526980060698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A244569 (A003269 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238369.P10910264526980060698

/-! ## A238369.P16033696092240929705

`∑[A244569(A244569(A003269(n+1)))]`
-/

namespace A238369.P16033696092240929705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 (A244569 (A003269 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238369.P16033696092240929705

/-!
# A238371: a(1)=1; for n > 1, a(n) = the number of "topped" Mongean shuffles to reorder a stack of n cards to its original order.

The programs for A238371, there is no canonical definition to state claims against.
-/

/-! ## A238371.P3808581211974276530

`A003558(or(1, n))`
-/

namespace A238371.P3808581211974276530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (Nat.lor 1 n)

end

end A238371.P3808581211974276530

/-! ## A238371.P10584476308251115652

`A294673(floor(n/2))`
-/

namespace A238371.P10584476308251115652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294673 ⌊(n : ℚ) / 2⌋.toNat

end

end A238371.P10584476308251115652

/-! ## A238371.P16160677683023852356

`A309786(or(3, 2*n))`
-/

namespace A238371.P16160677683023852356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (Nat.lor 3 (2 * n))

end

end A238371.P16160677683023852356

/-! ## A238371.P126318445377001632

`A003558(and(n, -2)+1)`
-/

namespace A238371.P126318445377001632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (Int.land (n : ℤ) (-2) + 1).toNat

end

end A238371.P126318445377001632

/-! ## A238371.P17489318456798135470

`A003558(xor(1, and(n, -2)))`
-/

namespace A238371.P17489318456798135470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (Int.xor 1 (Int.land (n : ℤ) (-2))).toNat

end

end A238371.P17489318456798135470

/-! ## A238371.P7560139834080396459

`A003558(log2(gcd(2, n))+n)`
-/

namespace A238371.P7560139834080396459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ) + (n : ℝ))).toNat

end

end A238371.P7560139834080396459

/-! ## A238371.P16353972069864369718

`A003558(char[2*n]+n)`
-/

namespace A238371.P16353972069864369718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A238371.P16353972069864369718

/-! ## A238371.P9604245330456685064

`A309786(A168269(n+1))`
-/

namespace A238371.P9604245330456685064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (A168269 (n + 1)).toNat

end

end A238371.P9604245330456685064

/-! ## A238371.P9741872128803031034

`A309786(A168384(n+1))`
-/

namespace A238371.P9741872128803031034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (A168384 (n + 1)).toNat

end

end A238371.P9741872128803031034

/-! ## A238371.P2626058223092287515

`A309786(A296910(n+1))`
-/

namespace A238371.P2626058223092287515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (A296910 (n + 1)).toNat

end

end A238371.P2626058223092287515

/-!
# A238372: Number of labeled rooted trees with n nodes with every leaf at the same height.

The programs for A238372, there is no canonical definition to state claims against.
-/

/-! ## A238372.P4560929895281466159

`A132028(n+1)*A267758(A000258(n))`
-/

namespace A238372.P4560929895281466159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132028 (n + 1) * A267758 (A000258 n).toNat

end

end A238372.P4560929895281466159

/-! ## A238372.P15204032351424677074

`A181569(A097043(n+1)+A096939(n+1))`
-/

namespace A238372.P15204032351424677074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (A097043 (n + 1) + A096939 (n + 1)).toNat

end

end A238372.P15204032351424677074

/-!
# A238374: Row sums of triangle in A204026.

The programs for A238374, the canonical program `A238374.P9189055159534411752` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238374 has offset 0).

The definition of A238374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238374.P9189055159534411752

`a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238374

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` -/
def P9189055159534411752.Spec : Prop :=
  ∀ n, P9189055159534411752.a n = A238374 n

theorem P9189055159534411752.correct : P9189055159534411752.Spec := by
  intro n
  simp only [A238374]

end A238374

/-! ## A238374.P15465437397874447249

`floor(ϕ*(a(n-2)+2))` with `a(0)=1, a(1)=2`
-/

namespace A238374.P15465437397874447249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊Real.goldenRatio * (a (n - 2) + 2 : ℝ)⌋

end

end A238374.P15465437397874447249

namespace A238374

/-- `floor(ϕ*(a(n-2)+2))` -/
def P15465437397874447249.Spec : Prop :=
  ∀ n, P15465437397874447249.a n = A238374 n

end A238374

/-! ## A238374.P12035247982575075941

`ceil(ϕ*a(n-2))+2` with `a(0)=1, a(1)=2`
-/

namespace A238374.P12035247982575075941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈Real.goldenRatio * (a (n - 2) : ℝ)⌉ + 2

end

end A238374.P12035247982575075941

namespace A238374

/-- `ceil(ϕ*a(n-2))+2` -/
def P12035247982575075941.Spec : Prop :=
  ∀ n, P12035247982575075941.a n = A238374 n

end A238374

/-! ## A238374.P13563266280782161164

`round(ϕ*(a(n-2)+ϕ))` with `a(0)=1, a(1)=2`
-/

namespace A238374.P13563266280782161164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * ((a (n - 2) : ℝ) + Real.goldenRatio))

end

end A238374.P13563266280782161164

namespace A238374

/-- `round(ϕ*(a(n-2)+ϕ))` -/
def P13563266280782161164.Spec : Prop :=
  ∀ n, P13563266280782161164.a n = A238374 n

end A238374

/-! ## A238374.P2382543024846770738

`∑[a(n-2)+a(n-4)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A238374.P2382543024846770738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238374.P2382543024846770738

namespace A238374

/-- `∑[a(n-2)+a(n-4)]` -/
def P2382543024846770738.Spec : Prop :=
  ∀ n, (P2382543024846770738.a n : ℤ) = A238374 n

end A238374

/-! ## A238374.P16477404760657318775

`a(n-2)+a(n-4)+4` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A238374.P16477404760657318775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  a (n - 2) + (a (n - 4) + 4)

end

end A238374.P16477404760657318775

namespace A238374

/-- `a(n-2)+a(n-4)+4` -/
def P16477404760657318775.Spec : Prop :=
  ∀ n, (P16477404760657318775.a n : ℤ) = A238374 n

end A238374

/-! ## A238374.P17774533250818892680

`∑[A103609(n+4)]`
-/

namespace A238374.P17774533250818892680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238374.P17774533250818892680

namespace A238374

/-- `∑[A103609(n+4)]` -/
def P17774533250818892680.Spec : Prop :=
  ∀ n, P17774533250818892680.a n = A238374 n

end A238374

/-! ## A238374.P2226306463109657513

`∑[A131524(n+1)+1]`
-/

namespace A238374.P2226306463109657513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238374.P2226306463109657513

namespace A238374

/-- `∑[A131524(n+1)+1]` -/
def P2226306463109657513.Spec : Prop :=
  ∀ n, P2226306463109657513.a n = A238374 n

end A238374

/-! ## A238374.P14018538351232502438

`∑[A097575(2*(n+1))]`
-/

namespace A238374.P14018538351232502438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238374.P14018538351232502438

namespace A238374

/-- `∑[A097575(2*(n+1))]` -/
def P14018538351232502438.Spec : Prop :=
  ∀ n, P14018538351232502438.a n = A238374 n

end A238374

/-! ## A238374.P4060632146235331662

`∑[A000045(A008619(n)+1)]`
-/

namespace A238374.P4060632146235331662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008619 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238374.P4060632146235331662

namespace A238374

/-- `∑[A000045(A008619(n)+1)]` -/
def P4060632146235331662.Spec : Prop :=
  ∀ n, P4060632146235331662.a n = A238374 n

end A238374

/-! ## A238374.P3120101432231866855

`∑[A000045(A080513(n+1))]`
-/

namespace A238374.P3120101432231866855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A080513 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238374.P3120101432231866855

namespace A238374

/-- `∑[A000045(A080513(n+1))]` -/
def P3120101432231866855.Spec : Prop :=
  ∀ n, P3120101432231866855.a n = A238374 n

end A238374

/-! ## A238374.P17258114645778909302

`∑[A000045(A004526(n)+2)]`
-/

namespace A238374.P17258114645778909302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004526 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238374.P17258114645778909302

namespace A238374

/-- `∑[A000045(A004526(n)+2)]` -/
def P17258114645778909302.Spec : Prop :=
  ∀ n, P17258114645778909302.a n = A238374 n

end A238374

/-! ## A238374.P16165718294421434435

`A094707(n+2)+A094707(n)`
-/

namespace A238374.P16165718294421434435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (n + 2) + A094707 n

end

end A238374.P16165718294421434435

namespace A238374

/-- `A094707(n+2)+A094707(n)` -/
def P16165718294421434435.Spec : Prop :=
  ∀ n, P16165718294421434435.a n = A238374 n

end A238374

/-! ## A238374.P10078038756239620701

`∑[A294453(∑[A152271(n+1)])]`
-/

namespace A238374.P10078038756239620701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238374.P10078038756239620701

namespace A238374

/-- `∑[A294453(∑[A152271(n+1)])]` -/
def P10078038756239620701.Spec : Prop :=
  ∀ n, P10078038756239620701.a n = A238374 n

end A238374

/-!
# A238375: Row sums of triangle in A152719.

The programs for A238375, the canonical program `A238375.P7557937259516909548` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238375 has offset 0).

The definition of A238375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238375.P7557937259516909548

`a(n-1)+2*a(n-2)-2*a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238375

/-- `a(n-1)+2*a(n-2)-2*a(n-3)+a(n-4)-a(n-5)` -/
def P7557937259516909548.Spec : Prop :=
  ∀ n, P7557937259516909548.a n = A238375 n

theorem P7557937259516909548.correct : P7557937259516909548.Spec := by
  intro n
  simp only [A238375]

end A238375

/-! ## A238375.P3171817722698119412

`∑[ogf((1+x)/(1-2x^2-x^4))]`
-/

namespace A238375.P3171817722698119412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -2, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238375.P3171817722698119412

namespace A238375

/-- `∑[ogf((1+x)/(1-2x^2-x^4))]` -/
def P3171817722698119412.Spec : Prop :=
  ∀ n, P3171817722698119412.a n = A238375 n

end A238375

/-! ## A238375.P1465572851147837080

`ogf((1+x)/(1-x-2x^2+2x^3-x^4+x^5))`
-/

namespace A238375.P1465572851147837080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -2, 2, -1, 1] n

end

end A238375.P1465572851147837080

namespace A238375

/-- `ogf((1+x)/(1-x-2x^2+2x^3-x^4+x^5))` -/
def P1465572851147837080.Spec : Prop :=
  ∀ n, P1465572851147837080.a n = A238375 n

end A238375

/-! ## A238375.P16310407209823834306

`∑[a(n-4)+2*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A238375.P16310407209823834306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 4) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238375.P16310407209823834306

namespace A238375

/-- `∑[a(n-4)+2*a(n-2)]` -/
def P16310407209823834306.Spec : Prop :=
  ∀ n, (P16310407209823834306.a n : ℤ) = A238375 n

end A238375

/-! ## A238375.P424333652286490080

`∑[a(n-2)+a(n-2)+a(n-4)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A238375.P424333652286490080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238375.P424333652286490080

namespace A238375

/-- `∑[a(n-2)+a(n-2)+a(n-4)]` -/
def P424333652286490080.Spec : Prop :=
  ∀ n, (P424333652286490080.a n : ℤ) = A238375 n

end A238375

/-! ## A238375.P14212713390837918108

`∑[A135153(n+2)]`
-/

namespace A238375.P14212713390837918108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238375.P14212713390837918108

namespace A238375

/-- `∑[A135153(n+2)]` -/
def P14212713390837918108.Spec : Prop :=
  ∀ n, P14212713390837918108.a n = A238375 n

end A238375

/-! ## A238375.P1602253621976790700

`∑[A116560(3*(n+2))]`
-/

namespace A238375.P1602253621976790700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238375.P1602253621976790700

namespace A238375

/-- `∑[A116560(3*(n+2))]` -/
def P1602253621976790700.Spec : Prop :=
  ∀ n, P1602253621976790700.a n = A238375 n

end A238375

/-! ## A238375.P16975789149035576279

`∑[A000129(∑[char[2*n]])]`
-/

namespace A238375.P16975789149035576279
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238375.P16975789149035576279

namespace A238375

/-- `∑[A000129(∑[char[2*n]])]` -/
def P16975789149035576279.Spec : Prop :=
  ∀ n, P16975789149035576279.a n = A238375 n

end A238375

/-! ## A238375.P13215972547132240214

`∑[A052542(∑[char[2*n]])/2]`
-/

namespace A238375.P13215972547132240214
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052542 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238375.P13215972547132240214

namespace A238375

/-- `∑[A052542(∑[char[2*n]])/2]` -/
def P13215972547132240214.Spec : Prop :=
  ∀ n, P13215972547132240214.a n = (A238375 n : ℚ)

end A238375

/-! ## A238375.P15863551650415092891

`∑[abs(A176981(floor((2*n+1)/4)+2))]`
-/

namespace A238375.P15863551650415092891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (⌊(2 * n + 1 : ℚ) / 4⌋ + 2).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238375.P15863551650415092891

namespace A238375

/-- `∑[abs(A176981(floor((2*n+1)/4)+2))]` -/
def P15863551650415092891.Spec : Prop :=
  ∀ n, P15863551650415092891.a n = A238375 n

end A238375

/-! ## A238375.P3498652458800412997

`∑[A215928(∑[A109613(n)-n])]`
-/

namespace A238375.P3498652458800412997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238375.P3498652458800412997

namespace A238375

/-- `∑[A215928(∑[A109613(n)-n])]` -/
def P3498652458800412997.Spec : Prop :=
  ∀ n, P3498652458800412997.a n = A238375 n

end A238375

/-! ## A238375.P14628624850956076908

`∑[A002965(A000034(n+1)+n)]`
-/

namespace A238375.P14628624850956076908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A000034 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238375.P14628624850956076908

namespace A238375

/-- `∑[A002965(A000034(n+1)+n)]` -/
def P14628624850956076908.Spec : Prop :=
  ∀ n, P14628624850956076908.a n = A238375 n

end A238375

/-! ## A238375.P781270843128225138

`∑[A052542(floor(n/2)+1)]/2`
-/

namespace A238375.P781270843128225138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A238375.P781270843128225138

namespace A238375

/-- `∑[A052542(floor(n/2)+1)]/2` -/
def P781270843128225138.Spec : Prop :=
  ∀ n, P781270843128225138.a n = (A238375 n : ℚ)

end A238375

/-!
# A238377: Row sums of triangle in A204028.

The programs for A238377, the canonical program `A238377.P5883676970166610354` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238377 has offset 0).

The definition of A238377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238377.P6276245932488198871

`(6*n²+8*n+5+3*(-1)^n)/8`
-/

namespace A238377.P6276245932488198871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n ^ 2 + 8 * n + 5 : ℤ) + 3 * (-1) ^ n : ℚ) / 8

end

end A238377.P6276245932488198871

namespace A238377

/-- `(6*n²+8*n+5+3*(-1)^n)/8` -/
def P6276245932488198871.Spec : Prop :=
  ∀ n, P6276245932488198871.a n = (A238377 n : ℚ)

theorem P6276245932488198871.correct : P6276245932488198871.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A238377, Nat.add_sub_cancel, A238377.P6276245932488198871.a, A238377.P5883676970166610354.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A238377, Nat.add_sub_cancel, A238377.P6276245932488198871.a, A238377.P5883676970166610354.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A238377

/-! ## A238377.P5883676970166610354

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238377

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P5883676970166610354.Spec : Prop :=
  ∀ n, P5883676970166610354.a n = A238377 n

theorem P5883676970166610354.correct : P5883676970166610354.Spec := by
  intro n
  simp only [A238377]

end A238377

/-! ## A238377.P1782487249498219190

`∑[a(n-2)+3]` with `a(0)=1, a(1)=1`
-/

namespace A238377.P1782487249498219190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238377.P1782487249498219190

namespace A238377

/-- `∑[a(n-2)+3]` -/
def P1782487249498219190.Spec : Prop :=
  ∀ n, (P1782487249498219190.a n : ℤ) = A238377 n

end A238377

/-! ## A238377.P844245669016537446

`ceil(∑[or(1, 3*n)]/2)`
-/

namespace A238377.P844245669016537446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A238377.P844245669016537446

namespace A238377

/-- `ceil(∑[or(1, 3*n)]/2)` -/
def P844245669016537446.Spec : Prop :=
  ∀ n, P844245669016537446.a n = A238377 n

end A238377

/-! ## A238377.P14673940122255352651

`∑[∑[3-a(n-1)]]` with `a(0)=1, a(1)=0`
-/

namespace A238377.P14673940122255352651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238377.P14673940122255352651

namespace A238377

/-- `∑[∑[3-a(n-1)]]` -/
def P14673940122255352651.Spec : Prop :=
  ∀ n, P14673940122255352651.a n = A238377 n

end A238377

/-! ## A238377.P1168387375497362927

`∑[or(1, n)]+floor((n/2)²)`
-/

namespace A238377.P1168387375497362927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A238377.P1168387375497362927

namespace A238377

/-- `∑[or(1, n)]+floor((n/2)²)` -/
def P1168387375497362927.Spec : Prop :=
  ∀ n, P1168387375497362927.a n = A238377 n

end A238377

/-! ## A238377.P9975363684822881398

`∑[∑[gcd(2, n)²]-(n+3)]`
-/

namespace A238377.P9975363684822881398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238377.P9975363684822881398

namespace A238377

/-- `∑[∑[gcd(2, n)²]-(n+3)]` -/
def P9975363684822881398.Spec : Prop :=
  ∀ n, P9975363684822881398.a n = A238377 n

end A238377

/-! ## A238377.P5111160780557386437

`∑[ceil(xor(1, n)/2)]+∑[n]`
-/

namespace A238377.P5111160780557386437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A238377.P5111160780557386437

namespace A238377

/-- `∑[ceil(xor(1, n)/2)]+∑[n]` -/
def P5111160780557386437.Spec : Prop :=
  ∀ n, P5111160780557386437.a n = A238377 n

end A238377

/-! ## A238377.P12989272457038845703

`∑[∑[∑[ogf((1+2x^2)/(1+x))]]]`
-/

namespace A238377.P12989272457038845703
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238377.P12989272457038845703

namespace A238377

/-- `∑[∑[∑[ogf((1+2x^2)/(1+x))]]]` -/
def P12989272457038845703.Spec : Prop :=
  ∀ n, P12989272457038845703.a n = A238377 n

end A238377

/-! ## A238377.P7022583603952726379

`ogf((1+2x^2)/(1-2x+2x^3-x^4))`
-/

namespace A238377.P7022583603952726379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -2, 0, 2, -1] n

end

end A238377.P7022583603952726379

namespace A238377

/-- `ogf((1+2x^2)/(1-2x+2x^3-x^4))` -/
def P7022583603952726379.Spec : Prop :=
  ∀ n, P7022583603952726379.a n = A238377 n

end A238377

/-! ## A238377.P7566876238367286309

`3*n+a(n-2)-1` with `a(0)=1, a(1)=2`
-/

namespace A238377.P7566876238367286309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 * n : ℤ) + (a (n - 2) - 1)

end

end A238377.P7566876238367286309

namespace A238377

/-- `3*n+a(n-2)-1` -/
def P7566876238367286309.Spec : Prop :=
  ∀ n, P7566876238367286309.a n = A238377 n

end A238377

/-! ## A238377.P5844934153504409327

`3*n-(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A238377.P5844934153504409327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 * n : ℤ) - (1 - a (n - 2))

end

end A238377.P5844934153504409327

namespace A238377

/-- `3*n-(1-a(n-2))` -/
def P5844934153504409327.Spec : Prop :=
  ∀ n, P5844934153504409327.a n = A238377 n

end A238377

/-! ## A238377.P3375180758918826514

`n-1+a(n-2)+n+n` with `a(0)=1, a(1)=2`
-/

namespace A238377.P3375180758918826514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - 1 + (a (n - 2) + (n : ℤ) + (n : ℤ))

end

end A238377.P3375180758918826514

namespace A238377

/-- `n-1+a(n-2)+n+n` -/
def P3375180758918826514.Spec : Prop :=
  ∀ n, P3375180758918826514.a n = A238377 n

end A238377

/-! ## A238377.P12453169871699865120

`n-(1-a(n-2)-n-n)` with `a(0)=1, a(1)=2`
-/

namespace A238377.P12453169871699865120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - (1 - a (n - 2) - (n : ℤ) - (n : ℤ))

end

end A238377.P12453169871699865120

namespace A238377

/-- `n-(1-a(n-2)-n-n)` -/
def P12453169871699865120.Spec : Prop :=
  ∀ n, P12453169871699865120.a n = A238377 n

end A238377

/-! ## A238377.P16933522153526262878

`ceil(A212959(n)/2)`
-/

namespace A238377.P16933522153526262878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212959 n : ℚ) / 2⌉

end

end A238377.P16933522153526262878

namespace A238377

/-- `ceil(A212959(n)/2)` -/
def P16933522153526262878.Spec : Prop :=
  ∀ n, P16933522153526262878.a n = A238377 n

end A238377

/-! ## A238377.P13059208734440229578

`∑[A168237(n)+1]`
-/

namespace A238377.P13059208734440229578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238377.P13059208734440229578

namespace A238377

/-- `∑[A168237(n)+1]` -/
def P13059208734440229578.Spec : Prop :=
  ∀ n, P13059208734440229578.a n = A238377 n

end A238377

/-! ## A238377.P8050236040234082833

`∑[A028242(n)+n]`
-/

namespace A238377.P8050236040234082833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238377.P8050236040234082833

namespace A238377

/-- `∑[A028242(n)+n]` -/
def P8050236040234082833.Spec : Prop :=
  ∀ n, P8050236040234082833.a n = A238377 n

end A238377

/-! ## A238377.P3746653231447802135

`A242477(n)+1+n`
-/

namespace A238377.P3746653231447802135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n + 1 + (n : ℤ)

end

end A238377.P3746653231447802135

namespace A238377

/-- `A242477(n)+1+n` -/
def P3746653231447802135.Spec : Prop :=
  ∀ n, P3746653231447802135.a n = A238377 n

end A238377

/-! ## A238377.P12605094255441523103

`A263807(n)-n%2`
-/

namespace A238377.P12605094255441523103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 n - ((n % 2 : ℕ) : ℤ)

end

end A238377.P12605094255441523103

namespace A238377

/-- `A263807(n)-n%2` -/
def P12605094255441523103.Spec : Prop :=
  ∀ n, P12605094255441523103.a n = A238377 n

end A238377

/-!
# A238378: Numbers k such that (k+1)^(k-1) + k is prime.

The programs for A238378, there is no canonical definition to state claims against.
-/

/-! ## A238378.P7614797619356442911

`∑[A052126(A166894(n))]`
-/

namespace A238378.P7614797619356442911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A166894 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238378.P7614797619356442911

/-! ## A238378.P12601684456701019167

`∑[A104559(A321691(n))]`
-/

namespace A238378.P12601684456701019167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104559 (A321691 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238378.P12601684456701019167

/-! ## A238378.P8296171025828892428

`∑[A333849(A127715(n))]`
-/

namespace A238378.P8296171025828892428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333849 (A127715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238378.P8296171025828892428

/-!
# A238379: Expansion of (1 - x)/(1 - 36*x + x^2).

The programs for A238379, the canonical program `A238379.P12870225820540433049` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238379 has offset 0).

The definition of A238379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-36x+x^2))` (program `A238379.P12870225820540433049`, by `A238379.P12870225820540433049.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238379.P12870225820540433049

`ogf((1-x)/(1-36x+x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238379

/-- `ogf((1-x)/(1-36x+x^2))` -/
def P12870225820540433049.Spec : Prop :=
  ∀ n, P12870225820540433049.a n = A238379 n

theorem P12870225820540433049.correct : P12870225820540433049.Spec := by
  intro n
  simp only [A238379]

end A238379

/-! ## A238379.P546307513353401845

`36*a(n-1)-a(n-2)` with `a(0)=1, a(1)=35`
-/

namespace A238379.P546307513353401845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 35] fun n a =>
  36 * a (n - 1) - a (n - 2)

end

end A238379.P546307513353401845

namespace A238379

/-- `36*a(n-1)-a(n-2)` -/
def P546307513353401845.Spec : Prop :=
  ∀ n, P546307513353401845.a n = A238379 n

end A238379

/-! ## A238379.P13457420596901910315

`(19-sqrt(323))/38*(1+(18+sqrt(323))^(2*n+1))/(18+sqrt(323))^n`
-/

namespace A238379.P13457420596901910315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (19 - Real.sqrt (323 : ℝ)) / 38 * (1 + (18 + Real.sqrt (323 : ℝ)) ^ (2 * n + 1)) / (18 + Real.sqrt (323 : ℝ)) ^ n

end

end A238379.P13457420596901910315

namespace A238379

/-- `(19-sqrt(323))/38*(1+(18+sqrt(323))^(2*n+1))/(18+sqrt(323))^n` -/
def P13457420596901910315.Spec : Prop :=
  ∀ n, P13457420596901910315.a n = (A238379 n : ℝ)

end A238379

/-! ## A238379.P13206836631103761227

`A041611(2*n)`
-/

namespace A238379.P13206836631103761227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041611 (2 * n)

end

end A238379.P13206836631103761227

namespace A238379

/-- `A041611(2*n)` -/
def P13206836631103761227.Spec : Prop :=
  ∀ n, P13206836631103761227.a n = A238379 n

end A238379

/-! ## A238379.P4766823111414503207

`record[A041611(A014681(n))]`
-/

namespace A238379.P4766823111414503207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041611 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238379.P4766823111414503207

namespace A238379

/-- `record[A041611(A014681(n))]` -/
def P4766823111414503207.Spec : Prop :=
  ∀ n, P4766823111414503207.a n = A238379 n

end A238379

/-! ## A238379.P3599563278499027692

`record[A041611(A153733(n))]`
-/

namespace A238379.P3599563278499027692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041611 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238379.P3599563278499027692

namespace A238379

/-- `record[A041611(A153733(n))]` -/
def P3599563278499027692.Spec : Prop :=
  ∀ n, P3599563278499027692.a n = A238379 n

end A238379

/-! ## A238379.P1721611188429839203

`or(1, A041611(A004277(n)))`
-/

namespace A238379.P1721611188429839203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041611 (A004277 n).toNat)

end

end A238379.P1721611188429839203

namespace A238379

/-- `or(1, A041611(A004277(n)))` -/
def P1721611188429839203.Spec : Prop :=
  ∀ n, P1721611188429839203.a n = A238379 n

end A238379

/-! ## A238379.P2473315701413028579

`or(1, A041611(A005843(n)))`
-/

namespace A238379.P2473315701413028579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041611 (A005843 n).toNat)

end

end A238379.P2473315701413028579

namespace A238379

/-- `or(1, A041611(A005843(n)))` -/
def P2473315701413028579.Spec : Prop :=
  ∀ n, P2473315701413028579.a n = A238379 n

end A238379

/-! ## A238379.P9112326897292131358

`record[A041611(A093178(n)-1)]`
-/

namespace A238379.P9112326897292131358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041611 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238379.P9112326897292131358

namespace A238379

/-- `record[A041611(A093178(n)-1)]` -/
def P9112326897292131358.Spec : Prop :=
  ∀ n, P9112326897292131358.a n = A238379 n

end A238379

/-! ## A238379.P18424134149992291486

`record[A041611(n)/A000034(n)]`
-/

namespace A238379.P18424134149992291486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041611 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238379.P18424134149992291486

namespace A238379

/-- `record[A041611(n)/A000034(n)]` -/
def P18424134149992291486.Spec : Prop :=
  ∀ n, P18424134149992291486.a n = (A238379 n : ℚ)

end A238379

/-!
# A238381: Minimal number of V-trominoes needed to prevent any further V-trominoe from being placed on an n X n grid.

The programs for A238381, there is no canonical definition to state claims against.
-/

/-! ## A238381.P18263992712270187188

`ceil(∑[n/sqrt(7)])`
-/

namespace A238381.P18263992712270187188
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.sqrt (7 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A238381.P18263992712270187188

/-! ## A238381.P12245853332467339611

`floor(∑[(sin(n+6)+3*n)/8])+1`
-/

namespace A238381.P12245853332467339611
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sin (n + 6 : ℝ) + (3 * n : ℝ)) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A238381.P12245853332467339611

/-! ## A238381.P15509505901554175158

`floor(sqrt(∑[n-a(n-1)]²/2+1))-1` with `a(0)=2, a(1)=1`
-/

namespace A238381.P15509505901554175158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2 + 1 : ℝ)⌋ - 1

end

end A238381.P15509505901554175158

/-! ## A238381.P4900351198484869616

`floor(∑[log2(A103260(n))])`
-/

namespace A238381.P4900351198484869616
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A103260 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A238381.P4900351198484869616

/-! ## A238381.P17023783064822007160

`round(log(A302509(n+1)))`
-/

namespace A238381.P17023783064822007160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A302509 (n + 1) : ℝ))

end

end A238381.P17023783064822007160

/-!
# A238383: Row sums of triangle in A139040.

The programs for A238383, the canonical program `A238383.P7798196057562810630` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238383 has offset 0).

The definition of A238383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238383.P7798196057562810630

`a(n-1)+a(n-2)-a(n-3)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=8, a(6)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238383

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-6)-a(n-7)` -/
def P7798196057562810630.Spec : Prop :=
  ∀ n, P7798196057562810630.a n = A238383 n

theorem P7798196057562810630.correct : P7798196057562810630.Spec := by
  intro n
  simp only [A238383]

end A238383

/-! ## A238383.P12602232796044879837

`∑[A108104(n+2)]`
-/

namespace A238383.P12602232796044879837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238383.P12602232796044879837

namespace A238383

/-- `∑[A108104(n+2)]` -/
def P12602232796044879837.Spec : Prop :=
  ∀ n, P12602232796044879837.a n = A238383 n

end A238383

/-! ## A238383.P10780680342935697613

`∑[A068921(floor(n/2))]`
-/

namespace A238383.P10780680342935697613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238383.P10780680342935697613

namespace A238383

/-- `∑[A068921(floor(n/2))]` -/
def P10780680342935697613.Spec : Prop :=
  ∀ n, P10780680342935697613.a n = A238383 n

end A238383

/-! ## A238383.P13190001606447720647

`∑[A000930(floor(n/2)+1)]`
-/

namespace A238383.P13190001606447720647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238383.P13190001606447720647

namespace A238383

/-- `∑[A000930(floor(n/2)+1)]` -/
def P13190001606447720647.Spec : Prop :=
  ∀ n, P13190001606447720647.a n = A238383 n

end A238383

/-! ## A238383.P2385250430063280267

`∑[A135851(floor(n/2)+6)]`
-/

namespace A238383.P2385250430063280267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (⌊(n : ℚ) / 2⌋ + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238383.P2385250430063280267

namespace A238383

/-- `∑[A135851(floor(n/2)+6)]` -/
def P2385250430063280267.Spec : Prop :=
  ∀ n, P2385250430063280267.a n = A238383 n

end A238383

/-! ## A238383.P9406347151665485900

`∑[abs(A199804(A008619(n)))]`
-/

namespace A238383.P9406347151665485900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 (A008619 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238383.P9406347151665485900

namespace A238383

/-- `∑[abs(A199804(A008619(n)))]` -/
def P9406347151665485900.Spec : Prop :=
  ∀ n, P9406347151665485900.a n = A238383 n

end A238383

/-! ## A238383.P14302449650685353604

`∑[A139040(∑[or(1, n)])]`
-/

namespace A238383.P14302449650685353604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238383.P14302449650685353604

namespace A238383

/-- `∑[A139040(∑[or(1, n)])]` -/
def P14302449650685353604.Spec : Prop :=
  ∀ n, P14302449650685353604.a n = A238383 n

end A238383

/-!
# A238384: Triangle of numbers related to A075535.

The programs for A238384, there is no canonical definition to state claims against.
-/

/-! ## A238384.P4316095057814755776

`round(sqrt(A144464(n)))`
-/

namespace A238384.P4316095057814755776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A144464 n : ℝ))

end

end A238384.P4316095057814755776

/-! ## A238384.P3025737023330512471

`dr(A139040(n+1))`
-/

namespace A238384.P3025737023330512471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139040 (n + 1))

end

end A238384.P3025737023330512471

/-! ## A238384.P6064039225987993475

`floor(root(A152714(n), 3))`
-/

namespace A238384.P6064039225987993475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152714 n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A238384.P6064039225987993475

/-! ## A238384.P4744247985806035078

`ceil(A238392(n)/e)`
-/

namespace A238384.P4744247985806035078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238392 n : ℝ) / Real.exp 1⌉

end

end A238384.P4744247985806035078

/-! ## A238384.P17258209916500114713

`round(sqrt(sqrt(A152716(n))))`
-/

namespace A238384.P17258209916500114713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A152716 n : ℝ)))

end

end A238384.P17258209916500114713

/-! ## A238384.P14763810843924930551

`round(sqrt(2^A004197(n)))`
-/

namespace A238384.P14763810843924930551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 : ℚ) ^ (A004197 n : ℤ) : ℝ))

end

end A238384.P14763810843924930551

/-! ## A238384.P8383463875659356346

`ceil(A106255(n+1)/4)`
-/

namespace A238384.P8383463875659356346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106255 (n + 1) : ℚ) / 4⌉

end

end A238384.P8383463875659356346

/-! ## A238384.P3905937386409623768

`ceil(A106314(n+1)/7)`
-/

namespace A238384.P3905937386409623768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106314 (n + 1) : ℚ) / 7⌉

end

end A238384.P3905937386409623768

/-! ## A238384.P8816587483566503364

`floor(sqrt(∑{d}[A155050(n)+1, #]))`
-/

namespace A238384.P8816587483566503364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155050 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A238384.P8816587483566503364

/-! ## A238384.P10102155100622167241

`floor(A168281(n+1)/13)+1`
-/

namespace A238384.P10102155100622167241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168281 (n + 1) : ℚ) / 13⌋ + 1

end

end A238384.P10102155100622167241

/-!
# A238386: a(n) = |{0 < k < n-1: p = prime(k) + pi(n-k) and p + 2 are both prime}|, where pi(.) is given by A000720.

The programs for A238386, there is no canonical definition to state claims against.
-/

/-! ## A238386.P6856624102508280848

`A077267(A261070(n+2)+n)`
-/

namespace A238386.P6856624102508280848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A261070 (n + 2) + (n : ℤ)).toNat

end

end A238386.P6856624102508280848

/-! ## A238386.P12964309177309112321

`A333382(or(∑{d}[n+1, #], A003520(n+3)))`
-/

namespace A238386.P12964309177309112321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (Int.lor ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A003520 (n + 3))).toNat

end

end A238386.P12964309177309112321

/-! ## A238386.P4507476363520757409

`A384067(n)%A071766(A007913(n+1))`
-/

namespace A238386.P4507476363520757409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384067 n) (A071766 (A007913 (n + 1)).toNat)

end

end A238386.P4507476363520757409

/-! ## A238386.P5918867556130160668

`A083917(A001097(n+1)*A374671(n+1))`
-/

namespace A238386.P5918867556130160668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083917 (A001097 (n + 1) * A374671 (n + 1)).toNat

end

end A238386.P5918867556130160668

/-! ## A238386.P13435515345819868267

`A284256(A270389(n+1)+A179216(n+3))`
-/

namespace A238386.P13435515345819868267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A270389 (n + 1) + A179216 (n + 3)).toNat

end

end A238386.P13435515345819868267

/-!
# A238389: Expansion of (1+x)/(1-x^2-3*x^3).

The programs for A238389, the canonical program `A238389.P4353400605870378911` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238389 has offset 0).

The definition of A238389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x^2-3x^3))` (program `A238389.P4353400605870378911`, by `A238389.P4353400605870378911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238389.P2723347515862260314

`a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A238389.P2723347515862260314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + 3 * a (n - 3)

end

end A238389.P2723347515862260314

namespace A238389

/-- `a(n-2)+3*a(n-3)` -/
def P2723347515862260314.Spec : Prop :=
  ∀ n, (P2723347515862260314.a n : ℤ) = A238389 n

end A238389

/-! ## A238389.P4353400605870378911

`ogf((1+x)/(1-x^2-3x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238389

/-- `ogf((1+x)/(1-x^2-3x^3))` -/
def P4353400605870378911.Spec : Prop :=
  ∀ n, P4353400605870378911.a n = A238389 n

theorem P4353400605870378911.correct : P4353400605870378911.Spec := by
  intro n
  simp only [A238389]

end A238389

/-! ## A238389.P5795668936833976245

`a(n-2)+lcm(3, a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A238389.P5795668936833976245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 3))

end

end A238389.P5795668936833976245

namespace A238389

/-- `a(n-2)+lcm(3, a(n-3))` -/
def P5795668936833976245.Spec : Prop :=
  ∀ n, (P5795668936833976245.a n : ℤ) = A238389 n

end A238389

/-! ## A238389.P9507252634849840769

`a(n-2)-3*floor(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A238389.P9507252634849840769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) - 3 * (-a (n - 3))

end

end A238389.P9507252634849840769

namespace A238389

/-- `a(n-2)-3*floor(-a(n-3))` -/
def P9507252634849840769.Spec : Prop :=
  ∀ n, P9507252634849840769.a n = A238389 n

end A238389

/-! ## A238389.P2836849960697602316

`4*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A238389.P2836849960697602316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  4 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A238389.P2836849960697602316

namespace A238389

/-- `4*a(n-3)-(a(n-3)-a(n-2))` -/
def P2836849960697602316.Spec : Prop :=
  ∀ n, P2836849960697602316.a n = A238389 n

end A238389

/-! ## A238389.P13228127322677244241

`a(n-3)+a(n-3)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A238389.P13228127322677244241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + (a (n - 3) + (a (n - 2) + a (n - 3)))

end

end A238389.P13228127322677244241

namespace A238389

/-- `a(n-3)+a(n-3)+a(n-2)+a(n-3)` -/
def P13228127322677244241.Spec : Prop :=
  ∀ n, (P13228127322677244241.a n : ℤ) = A238389 n

end A238389

/-!
# A238390: E.g.f.: x / BesselJ(1, 2*x) (even powers only).

The programs for A238390, there is no canonical definition to state claims against.
-/

/-! ## A238390.P7067540647206347719

`A103365(n+1)*A168491(n)`
-/

namespace A238390.P7067540647206347719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103365 (n + 1) * A168491 n

end

end A238390.P7067540647206347719

/-! ## A238390.P10975189468924238304

`abs(A103365(n+1))*A000108(n)`
-/

namespace A238390.P10975189468924238304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103365 (n + 1)| * A000108 n

end

end A238390.P10975189468924238304

/-! ## A238390.P10591533093480544463

`A103364(∑[n]+1)*A168491(n)`
-/

namespace A238390.P10591533093480544463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103364 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A168491 n

end

end A238390.P10591533093480544463

/-! ## A238390.P1194578665586010294

`abs((A120304(n)+2)*A103365(n+1))`
-/

namespace A238390.P1194578665586010294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A120304 n + 2) * A103365 (n + 1)|

end

end A238390.P1194578665586010294

/-! ## A238390.P8452782251517419025

`A090192(2*n+1)*A103365(n+1)`
-/

namespace A238390.P8452782251517419025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (2 * n + 1) * A103365 (n + 1)

end

end A238390.P8452782251517419025

/-!
# A238391: Expansion of (1+x)/(1-x^2-3*x^5).

The programs for A238391, the canonical program `A238391.P17396721498082405509` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238391 has offset 0).

The definition of A238391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x^2-3x^5))` (program `A238391.P17396721498082405509`, by `A238391.P17396721498082405509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238391.P11406547942293702668

`3*a(n-5)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A238391.P11406547942293702668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  3 * a (n - 5) + a (n - 2)

end

end A238391.P11406547942293702668

namespace A238391

/-- `3*a(n-5)+a(n-2)` -/
def P11406547942293702668.Spec : Prop :=
  ∀ n, (P11406547942293702668.a n : ℤ) = A238391 n

end A238391

/-! ## A238391.P17396721498082405509

`ogf((1+x)/(1-x^2-3x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238391

/-- `ogf((1+x)/(1-x^2-3x^5))` -/
def P17396721498082405509.Spec : Prop :=
  ∀ n, P17396721498082405509.a n = A238391 n

theorem P17396721498082405509.correct : P17396721498082405509.Spec := by
  intro n
  simp only [A238391]

end A238391

/-!
# A238392: Triangle read by rows: each row is an initial segment of the terms of A000123 followed by its reflection.

The programs for A238392, the canonical program `A238392.P14356481744646416300` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238392 has offset 0).

The definition of A238392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238392.P11762725808431913096

`A000123(A004197(n))`
-/

namespace A238392.P11762725808431913096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A004197 n).toNat

end

end A238392.P11762725808431913096

namespace A238392

/-- `A000123(A004197(n))` -/
def P11762725808431913096.Spec : Prop :=
  ∀ n, P11762725808431913096.a n = A238392 n

end A238392

/-! ## A238392.P3493637230501959887

`A018819(2*A004197(n))`
-/

namespace A238392.P3493637230501959887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (2 * A004197 n).toNat

end

end A238392.P3493637230501959887

namespace A238392

/-- `A018819(2*A004197(n))` -/
def P3493637230501959887.Spec : Prop :=
  ∀ n, P3493637230501959887.a n = A238392 n

end A238392

/-! ## A238392.P5075259237337283838

`A000123(A003983(n+1)-1)`
-/

namespace A238392.P5075259237337283838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A003983 (n + 1) - 1).toNat

end

end A238392.P5075259237337283838

namespace A238392

/-- `A000123(A003983(n+1)-1)` -/
def P5075259237337283838.Spec : Prop :=
  ∀ n, P5075259237337283838.a n = A238392 n

end A238392

/-! ## A238392.P14356481744646416300

`A018819(A194959(n+1)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A238392

/-- `A018819(A194959(n+1)-1)` -/
def P14356481744646416300.Spec : Prop :=
  ∀ n, P14356481744646416300.a n = A238392 n

theorem P14356481744646416300.correct : P14356481744646416300.Spec := by
  intro n
  simp only [A238392]

end A238392

/-! ## A238392.P17687314033093958002

`A018819(A210535(n+1)-1)`
-/

namespace A238392.P17687314033093958002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A210535 (n + 1) - 1).toNat

end

end A238392.P17687314033093958002

namespace A238392

/-- `A018819(A210535(n+1)-1)` -/
def P17687314033093958002.Spec : Prop :=
  ∀ n, P17687314033093958002.a n = A238392 n

end A238392

/-! ## A238392.P2887586840153264567

`A018819(A004197(n)+A004197(n))`
-/

namespace A238392.P2887586840153264567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A004197 n + A004197 n).toNat

end

end A238392.P2887586840153264567

namespace A238392

/-- `A018819(A004197(n)+A004197(n))` -/
def P2887586840153264567.Spec : Prop :=
  ∀ n, P2887586840153264567.a n = A238392 n

end A238392

/-! ## A238392.P10658594780701082664

`A000123(∑{e}[A152714(n), #])`
-/

namespace A238392.P10658594780701082664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A238392.P10658594780701082664

namespace A238392

/-- `A000123(∑{e}[A152714(n), #])` -/
def P10658594780701082664.Spec : Prop :=
  ∀ n, P10658594780701082664.a n = A238392 n

end A238392

/-! ## A238392.P7521654235367136605

`A050377(A152716(n))`
-/

namespace A238392.P7521654235367136605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A152716 n).toNat

end

end A238392.P7521654235367136605

namespace A238392

/-- `A050377(A152716(n))` -/
def P7521654235367136605.Spec : Prop :=
  ∀ n, P7521654235367136605.a n = A238392 n

end A238392

/-! ## A238392.P7884072177495988770

`A050377(4^A004197(n))`
-/

namespace A238392.P7884072177495988770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A004197 n : ℤ))).toNat

end

end A238392.P7884072177495988770

namespace A238392

/-- `A050377(4^A004197(n))` -/
def P7884072177495988770.Spec : Prop :=
  ∀ n, P7884072177495988770.a n = A238392 n

end A238392

/-! ## A238392.P18217715899846339083

`A333574(A003983(n+1)%A330855(n+1))`
-/

namespace A238392.P18217715899846339083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (Int.tmod (A003983 (n + 1)) (A330855 (n + 1))).toNat

end

end A238392.P18217715899846339083

namespace A238392

/-- `A333574(A003983(n+1)%A330855(n+1))` -/
def P18217715899846339083.Spec : Prop :=
  ∀ n, P18217715899846339083.a n = A238392 n

end A238392

/-!
# A238393: a(n) = |{0 < k <= n: 2*p(k)*p(n) + 1 is prime}|, where p(.) is the partition function (A000041).

The programs for A238393, there is no canonical definition to state claims against.
-/

/-! ## A238393.P9282397731223040254

`A372433(A143663(n+1)-(floor(n/4)-floor((n-1)/4)))`
-/

namespace A238393.P9282397731223040254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372433 (A143663 (n + 1) - (⌊(n : ℚ) / 4⌋ - ⌊((n : ℤ) - 1 : ℚ) / 4⌋)).toNat

end

end A238393.P9282397731223040254

/-! ## A238393.P6729832432208795899

`A318928(A080248(2*n)*A328673(n))`
-/

namespace A238393.P6729832432208795899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (A080248 (2 * n) * A328673 n).toNat

end

end A238393.P6729832432208795899

/-! ## A238393.P12190611339562685972

`A279060(A056288(n+1))+A260438(n+1)`
-/

namespace A238393.P12190611339562685972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A056288 (n + 1)).toNat + A260438 (n + 1)

end

end A238393.P12190611339562685972

/-! ## A238393.P7728687361031157709

`A367007(A204892(n+1)*A215292(2*n+1))`
-/

namespace A238393.P7728687361031157709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367007 (A204892 (n + 1) * A215292 (2 * n + 1)).toNat

end

end A238393.P7728687361031157709

/-!
# A238394: Number of partitions of n that sorted in increasing order do not contain a part k in position k.

The programs for A238394, there is no canonical definition to state claims against.
-/

/-! ## A238394.P2628609816199965737

`A000041(n)-A238395(n)`
-/

namespace A238394.P2628609816199965737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A238395 n

end

end A238394.P2628609816199965737

/-! ## A238394.P1323340199563077354

`sqrt(A001255(n))-A238395(n)`
-/

namespace A238394.P1323340199563077354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A238395 n : ℝ)

end

end A238394.P1323340199563077354

/-! ## A238394.P13565504461457335063

`∑[A002865(n)]-A238395(n)`
-/

namespace A238394.P13565504461457335063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A238395 n

end

end A238394.P13565504461457335063

/-! ## A238394.P18133012407518978740

`A000065(n)+1-A238395(n)`
-/

namespace A238394.P18133012407518978740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A238395 n)

end

end A238394.P18133012407518978740

/-! ## A238394.P5038643881269139861

`A035363(2*n)-A238395(n)`
-/

namespace A238394.P5038643881269139861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A238395 n

end

end A238394.P5038643881269139861

/-! ## A238394.P3196191223698499662

`A035444(A008586(n))-A238395(n)`
-/

namespace A238394.P3196191223698499662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A238395 n

end

end A238394.P3196191223698499662

/-! ## A238394.P13570432465552398516

`A239259(n)+A239263(n)-A238395(n)`
-/

namespace A238394.P13570432465552398516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A238395 n)

end

end A238394.P13570432465552398516

/-! ## A238394.P16510295379208299207

`A100824(2*n)-A238395(n)`
-/

namespace A238394.P16510295379208299207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A238395 n

end

end A238394.P16510295379208299207

/-! ## A238394.P428032805808565004

`A325832(n)+A325833(n)-A238395(n)`
-/

namespace A238394.P428032805808565004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325832 n + (A325833 n - A238395 n)

end

end A238394.P428032805808565004

/-! ## A238394.P5473850920915160199

`A194543(A000217(n))-A238395(n)`
-/

namespace A238394.P5473850920915160199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A000217 n).toNat - A238395 n

end

end A238394.P5473850920915160199

/-! ## A238394.P15789603379343763425

`A218698(A000124(n))-A238395(n)`
-/

namespace A238394.P15789603379343763425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A000124 n).toNat - A238395 n

end

end A238394.P15789603379343763425

/-!
# A238395: Number of partitions of n that sorted in increasing order contain a part k in position k for some k.

The programs for A238395, there is no canonical definition to state claims against.
-/

/-! ## A238395.P15148704187319848754

`A000041(n)-A238394(n)`
-/

namespace A238395.P15148704187319848754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A238394 n

end

end A238395.P15148704187319848754

/-! ## A238395.P5580963802432304644

`∑[A002865(n)]-A238394(n)`
-/

namespace A238395.P5580963802432304644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A238394 n

end

end A238395.P5580963802432304644

/-! ## A238395.P16795520373691237948

`A000065(n)+1-A238394(n)`
-/

namespace A238395.P16795520373691237948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A238394 n)

end

end A238395.P16795520373691237948

/-! ## A238395.P17231027720757476906

`A035444(A008586(n))-A238394(n)`
-/

namespace A238395.P17231027720757476906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A238394 n

end

end A238395.P17231027720757476906

/-! ## A238395.P4980343337478265632

`A100824(2*n)-A238394(n)`
-/

namespace A238395.P4980343337478265632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A238394 n

end

end A238395.P4980343337478265632

/-! ## A238395.P1851927071361997916

`A284592(∑[n])-A238394(n)`
-/

namespace A238395.P1851927071361997916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (∑ j ∈ Finset.range (n + 1), f1 j) - A238394 n

end

end A238395.P1851927071361997916

/-! ## A238395.P16612246415224315959

`A026794(A000124(n))-A238394(n)`
-/

namespace A238395.P16612246415224315959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000124 n).toNat - A238394 n

end

end A238395.P16612246415224315959

/-!
# A238397: Numbers of the form pq + qr + rp where p, q and r are distinct primes (sorted sequence without duplicates).

The programs for A238397, there is no canonical definition to state claims against.
-/

/-! ## A238397.P13852574859179683806

`lt[0, A238403(n+2)]+2`
-/

namespace A238397.P13852574859179683806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238403 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A238397.P13852574859179683806

/-! ## A238397.P7914215160605393957

`lt[A000196(a(A238403(n))), 2]` with `a(0)=8`
-/

namespace A238397.P7914215160605393957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A000196 (f1 (A238403 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A238397.P7914215160605393957

/-! ## A238397.P2377170828051158892

`lt[A069360(a(A238403(n))), 2]` with `a(0)=8`
-/

namespace A238397.P2377170828051158892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A069360 (f1 (A238403 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A238397.P2377170828051158892

/-! ## A238397.P2613540787393129935

`lt[A094708(a(A238403(n))), 2]` with `a(0)=8`
-/

namespace A238397.P2613540787393129935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A094708 (f1 (A238403 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A238397.P2613540787393129935

/-! ## A238397.P17144398197214318191

`lt[A130520(a(A238403(n))), 2]` with `a(0)=8`
-/

namespace A238397.P17144398197214318191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A130520 (f1 (A238403 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A238397.P17144398197214318191

/-!
# A238399: a(n) is the number of primes occurring between A053182(n) and A053183(n) (excluding the endpoints).

The programs for A238399, there is no canonical definition to state claims against.
-/

/-! ## A238399.P18297479762352827561

`A347205(9^n+10)`
-/

namespace A238399.P18297479762352827561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (9 ^ n + 10)

end

end A238399.P18297479762352827561

