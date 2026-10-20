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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A134900: a(n) = ceiling(n*exp(csc(n))).

The programs for A134900, the canonical program `A134900.P3297529950693117051` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134900 has offset 1).

The definition of A134900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134900.P3297529950693117051

`ceil((n+1)*exp(1/sin(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134900

/-- `ceil((n+1)*exp(1/sin(n+1)))` -/
def P3297529950693117051.Spec : Prop :=
  ∀ n, P3297529950693117051.a n = A134900 (n + 1)

theorem P3297529950693117051.correct : P3297529950693117051.Spec := by
  intro n
  simp only [A134900, Nat.add_sub_cancel]

end A134900

/-! ## A134900.P1580488052679248620

`floor((n+1)*exp(1/sin(n+1)))+1`
-/

namespace A134900.P1580488052679248620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp (1 / Real.sin (n + 1 : ℝ))⌋ + 1

end

end A134900.P1580488052679248620

namespace A134900

/-- `floor((n+1)*exp(1/sin(n+1)))+1` -/
def P1580488052679248620.Spec : Prop :=
  ∀ n, P1580488052679248620.a n = A134900 (n + 1)

end A134900

/-! ## A134900.P2344137391158097294

`A134901(n+1)+1`
-/

namespace A134900.P2344137391158097294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134901 (n + 1) + 1

end

end A134900.P2344137391158097294

namespace A134900

/-- `A134901(n+1)+1` -/
def P2344137391158097294.Spec : Prop :=
  ∀ n, P2344137391158097294.a n = A134900 (n + 1)

end A134900

/-!
# A134901: a(n) = floor(n*exp(csc(n))).

The programs for A134901, the canonical program `A134901.P11339671350657562159` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134901 has offset 1).

The definition of A134901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134901.P5208120483949089150

`floor((n+1)*exp(1/sin(n+1)))`
-/

namespace A134901.P5208120483949089150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp (1 / Real.sin (n + 1 : ℝ))⌋

end

end A134901.P5208120483949089150

namespace A134901

/-- `floor((n+1)*exp(1/sin(n+1)))` -/
def P5208120483949089150.Spec : Prop :=
  ∀ n, P5208120483949089150.a n = A134901 (n + 1)

end A134901

/-! ## A134901.P11339671350657562159

`A134900(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134901

/-- `A134900(n+1)-1` -/
def P11339671350657562159.Spec : Prop :=
  ∀ n, P11339671350657562159.a n = A134901 (n + 1)

theorem P11339671350657562159.correct : P11339671350657562159.Spec := by
  intro n
  simp only [A134901, Nat.add_sub_cancel]

end A134901

/-! ## A134901.P16493219845109730390

`A280193(A017281(n))+A134900(n+1)`
-/

namespace A134901.P16493219845109730390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A017281 n).toNat + A134900 (n + 1)

end

end A134901.P16493219845109730390

namespace A134901

/-- `A280193(A017281(n))+A134900(n+1)` -/
def P16493219845109730390.Spec : Prop :=
  ∀ n, P16493219845109730390.a n = A134901 (n + 1)

end A134901

/-! ## A134901.P16312825314869202159

`A280193(A093178(n))+A134900(n+1)`
-/

namespace A134901.P16312825314869202159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A093178 n).toNat + A134900 (n + 1)

end

end A134901.P16312825314869202159

namespace A134901

/-- `A280193(A093178(n))+A134900(n+1)` -/
def P16312825314869202159.Spec : Prop :=
  ∀ n, P16312825314869202159.a n = A134901 (n + 1)

end A134901

/-! ## A134901.P4301910261578621897

`A291914(A000040(n+1))+A134900(n+1)`
-/

namespace A134901.P4301910261578621897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A000040 (n + 1)).toNat + A134900 (n + 1)

end

end A134901.P4301910261578621897

namespace A134901

/-- `A291914(A000040(n+1))+A134900(n+1)` -/
def P4301910261578621897.Spec : Prop :=
  ∀ n, P4301910261578621897.a n = A134901 (n + 1)

end A134901

/-! ## A134901.P2339100567392827328

`A280193(A046389(n+1))+A134900(n+1)`
-/

namespace A134901.P2339100567392827328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A046389 (n + 1)).toNat + A134900 (n + 1)

end

end A134901.P2339100567392827328

namespace A134901

/-- `A280193(A046389(n+1))+A134900(n+1)` -/
def P2339100567392827328.Spec : Prop :=
  ∀ n, P2339100567392827328.a n = A134901 (n + 1)

end A134901

/-! ## A134901.P2350744673385886641

`A291914(A006530(n+2))+A134900(n+1)`
-/

namespace A134901.P2350744673385886641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A006530 (n + 2)).toNat + A134900 (n + 1)

end

end A134901.P2350744673385886641

namespace A134901

/-- `A291914(A006530(n+2))+A134900(n+1)` -/
def P2350744673385886641.Spec : Prop :=
  ∀ n, P2350744673385886641.a n = A134901 (n + 1)

end A134901

/-! ## A134901.P4525331459876048165

`A291914(A194603(n+1))+A134900(n+1)`
-/

namespace A134901.P4525331459876048165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A194603 (n + 1)).toNat + A134900 (n + 1)

end

end A134901.P4525331459876048165

namespace A134901

/-- `A291914(A194603(n+1))+A134900(n+1)` -/
def P4525331459876048165.Spec : Prop :=
  ∀ n, P4525331459876048165.a n = A134901 (n + 1)

end A134901

/-! ## A134901.P5996815158146233411

`A291914(A158708(n+1))+A134900(n+1)`
-/

namespace A134901.P5996815158146233411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A158708 (n + 1)).toNat + A134900 (n + 1)

end

end A134901.P5996815158146233411

namespace A134901

/-- `A291914(A158708(n+1))+A134900(n+1)` -/
def P5996815158146233411.Spec : Prop :=
  ∀ n, P5996815158146233411.a n = A134901 (n + 1)

end A134901

/-!
# A134902: Ceiling(n*exp(-cos(n))).

The programs for A134902, the canonical program `A134902.P12731592248056243160` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134902 has offset 1).

The definition of A134902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*exp(-cos(n+1)))` (program `A134902.P12731592248056243160`, by `A134902.P12731592248056243160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134902.P12731592248056243160

`ceil((n+1)*exp(-cos(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134902

/-- `ceil((n+1)*exp(-cos(n+1)))` -/
def P12731592248056243160.Spec : Prop :=
  ∀ n, P12731592248056243160.a n = A134902 (n + 1)

theorem P12731592248056243160.correct : P12731592248056243160.Spec := by
  intro n
  simp only [A134902, Nat.add_sub_cancel]

end A134902

/-! ## A134902.P11288609245767408549

`ceil((n+1)/exp(cos(n+1)))`
-/

namespace A134902.P11288609245767408549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.exp (Real.cos (n + 1 : ℝ))⌉

end

end A134902.P11288609245767408549

namespace A134902

/-- `ceil((n+1)/exp(cos(n+1)))` -/
def P11288609245767408549.Spec : Prop :=
  ∀ n, P11288609245767408549.a n = A134902 (n + 1)

end A134902

/-! ## A134902.P3737299034864212753

`floor((n+1)/exp(cos(n+1)))+1`
-/

namespace A134902.P3737299034864212753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.exp (Real.cos (n + 1 : ℝ))⌋ + 1

end

end A134902.P3737299034864212753

namespace A134902

/-- `floor((n+1)/exp(cos(n+1)))+1` -/
def P3737299034864212753.Spec : Prop :=
  ∀ n, P3737299034864212753.a n = A134902 (n + 1)

end A134902

/-! ## A134902.P11112211375142078219

`round((2*(n+1)/exp(cos(n+1))+1)/2)`
-/

namespace A134902.P11112211375142078219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * (n + 1) : ℝ) / Real.exp (Real.cos (n + 1 : ℝ)) + 1) / 2)

end

end A134902.P11112211375142078219

namespace A134902

/-- `round((2*(n+1)/exp(cos(n+1))+1)/2)` -/
def P11112211375142078219.Spec : Prop :=
  ∀ n, P11112211375142078219.a n = A134902 (n + 1)

end A134902

/-! ## A134902.P14558434506087025382

`A134903(n+1)+1`
-/

namespace A134902.P14558434506087025382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134903 (n + 1) + 1

end

end A134902.P14558434506087025382

namespace A134902

/-- `A134903(n+1)+1` -/
def P14558434506087025382.Spec : Prop :=
  ∀ n, P14558434506087025382.a n = A134902 (n + 1)

end A134902

/-!
# A134903: a(n) = floor(n*exp(-cos(n))).

The programs for A134903, the canonical program `A134903.P10904011076882658325` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134903 has offset 1).

The definition of A134903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*exp(-cos(n+1)))` (program `A134903.P10904011076882658325`, by `A134903.P10904011076882658325.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134903.P10904011076882658325

`floor((n+1)*exp(-cos(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134903

/-- `floor((n+1)*exp(-cos(n+1)))` -/
def P10904011076882658325.Spec : Prop :=
  ∀ n, P10904011076882658325.a n = A134903 (n + 1)

theorem P10904011076882658325.correct : P10904011076882658325.Spec := by
  intro n
  simp only [A134903, Nat.add_sub_cancel]

end A134903

/-! ## A134903.P2782961480209754517

`floor((n+1)/exp(cos(n+1)))`
-/

namespace A134903.P2782961480209754517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.exp (Real.cos (n + 1 : ℝ))⌋

end

end A134903.P2782961480209754517

namespace A134903

/-- `floor((n+1)/exp(cos(n+1)))` -/
def P2782961480209754517.Spec : Prop :=
  ∀ n, P2782961480209754517.a n = A134903 (n + 1)

end A134903

/-! ## A134903.P6551753762793616500

`ceil((n+1)/exp(cos(n+1)))-1`
-/

namespace A134903.P6551753762793616500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.exp (Real.cos (n + 1 : ℝ))⌉ - 1

end

end A134903.P6551753762793616500

namespace A134903

/-- `ceil((n+1)/exp(cos(n+1)))-1` -/
def P6551753762793616500.Spec : Prop :=
  ∀ n, P6551753762793616500.a n = A134903 (n + 1)

end A134903

/-! ## A134903.P8793893821806917425

`A134902(n+1)-1`
-/

namespace A134903.P8793893821806917425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134902 (n + 1) - 1

end

end A134903.P8793893821806917425

namespace A134903

/-- `A134902(n+1)-1` -/
def P8793893821806917425.Spec : Prop :=
  ∀ n, P8793893821806917425.a n = A134903 (n + 1)

end A134903

/-! ## A134903.P4966007035443462576

`A280193(2*n+1)+A134902(n+1)`
-/

namespace A134903.P4966007035443462576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A134902 (n + 1)

end

end A134903.P4966007035443462576

namespace A134903

/-- `A280193(2*n+1)+A134902(n+1)` -/
def P4966007035443462576.Spec : Prop :=
  ∀ n, P4966007035443462576.a n = A134903 (n + 1)

end A134903

/-! ## A134903.P14390673532781592927

`A023443(A134902(n+1))`
-/

namespace A134903.P14390673532781592927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A134902 (n + 1)).toNat

end

end A134903.P14390673532781592927

namespace A134903

/-- `A023443(A134902(n+1))` -/
def P14390673532781592927.Spec : Prop :=
  ∀ n, P14390673532781592927.a n = A134903 (n + 1)

end A134903

/-! ## A134903.P1832365179952562077

`A023448(A134902(n+1)+5)`
-/

namespace A134903.P1832365179952562077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A134902 (n + 1) + 5).toNat

end

end A134903.P1832365179952562077

namespace A134903

/-- `A023448(A134902(n+1)+5)` -/
def P1832365179952562077.Spec : Prop :=
  ∀ n, P1832365179952562077.a n = A134903 (n + 1)

end A134903

/-! ## A134903.P14311355368603615687

`A291914(A334321(n+1))+A134902(n+1)`
-/

namespace A134903.P14311355368603615687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A334321 (n + 1)).toNat + A134902 (n + 1)

end

end A134903.P14311355368603615687

namespace A134903

/-- `A291914(A334321(n+1))+A134902(n+1)` -/
def P14311355368603615687.Spec : Prop :=
  ∀ n, P14311355368603615687.a n = A134903 (n + 1)

end A134903

/-!
# A134904: Ceiling(n*exp(-sin(n))).

The programs for A134904, the canonical program `A134904.P827066560410434954` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134904 has offset 1).

The definition of A134904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*exp(-sin(n+1)))` (program `A134904.P827066560410434954`, by `A134904.P827066560410434954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134904.P827066560410434954

`ceil((n+1)*exp(-sin(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134904

/-- `ceil((n+1)*exp(-sin(n+1)))` -/
def P827066560410434954.Spec : Prop :=
  ∀ n, P827066560410434954.a n = A134904 (n + 1)

theorem P827066560410434954.correct : P827066560410434954.Spec := by
  intro n
  simp only [A134904, Nat.add_sub_cancel]

end A134904

/-! ## A134904.P17471035502473234541

`ceil((n+1)/exp(sin(n+1)))`
-/

namespace A134904.P17471035502473234541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.exp (Real.sin (n + 1 : ℝ))⌉

end

end A134904.P17471035502473234541

namespace A134904

/-- `ceil((n+1)/exp(sin(n+1)))` -/
def P17471035502473234541.Spec : Prop :=
  ∀ n, P17471035502473234541.a n = A134904 (n + 1)

end A134904

/-! ## A134904.P5063377152866594468

`floor((n+1)/exp(sin(n+1)))+1`
-/

namespace A134904.P5063377152866594468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.exp (Real.sin (n + 1 : ℝ))⌋ + 1

end

end A134904.P5063377152866594468

namespace A134904

/-- `floor((n+1)/exp(sin(n+1)))+1` -/
def P5063377152866594468.Spec : Prop :=
  ∀ n, P5063377152866594468.a n = A134904 (n + 1)

end A134904

/-! ## A134904.P14541255711588155311

`floor((n+1)/e^sin(n+1))+1`
-/

namespace A134904.P14541255711588155311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.exp 1 ^ (Real.sin (n + 1 : ℝ))⌋ + 1

end

end A134904.P14541255711588155311

namespace A134904

/-- `floor((n+1)/e^sin(n+1))+1` -/
def P14541255711588155311.Spec : Prop :=
  ∀ n, P14541255711588155311.a n = A134904 (n + 1)

end A134904

/-! ## A134904.P12175809210331763675

`A134905(n+1)+1`
-/

namespace A134904.P12175809210331763675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134905 (n + 1) + 1

end

end A134904.P12175809210331763675

namespace A134904

/-- `A134905(n+1)+1` -/
def P12175809210331763675.Spec : Prop :=
  ∀ n, P12175809210331763675.a n = A134904 (n + 1)

end A134904

/-!
# A134905: a(n) = floor(n*exp(-sin n)).

The programs for A134905, the canonical program `A134905.P6115007608449691673` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134905 has offset 1).

The definition of A134905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134905.P6115007608449691673

`floor((n+1)*exp(-sin(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134905

/-- `floor((n+1)*exp(-sin(n+1)))` -/
def P6115007608449691673.Spec : Prop :=
  ∀ n, P6115007608449691673.a n = A134905 (n + 1)

theorem P6115007608449691673.correct : P6115007608449691673.Spec := by
  intro n
  simp only [A134905, Nat.add_sub_cancel]

end A134905

/-! ## A134905.P4485623566258320110

`floor((n+1)/exp(sin(n+1)))`
-/

namespace A134905.P4485623566258320110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.exp (Real.sin (n + 1 : ℝ))⌋

end

end A134905.P4485623566258320110

namespace A134905

/-- `floor((n+1)/exp(sin(n+1)))` -/
def P4485623566258320110.Spec : Prop :=
  ∀ n, P4485623566258320110.a n = A134905 (n + 1)

end A134905

/-! ## A134905.P9529809219046041198

`floor((n+1)/e^sin(n+1))`
-/

namespace A134905.P9529809219046041198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.exp 1 ^ (Real.sin (n + 1 : ℝ))⌋

end

end A134905.P9529809219046041198

namespace A134905

/-- `floor((n+1)/e^sin(n+1))` -/
def P9529809219046041198.Spec : Prop :=
  ∀ n, P9529809219046041198.a n = A134905 (n + 1)

end A134905

/-! ## A134905.P12266298137628647614

`ceil((n+1)/exp(sin(n+1)))-1`
-/

namespace A134905.P12266298137628647614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.exp (Real.sin (n + 1 : ℝ))⌉ - 1

end

end A134905.P12266298137628647614

namespace A134905

/-- `ceil((n+1)/exp(sin(n+1)))-1` -/
def P12266298137628647614.Spec : Prop :=
  ∀ n, P12266298137628647614.a n = A134905 (n + 1)

end A134905

/-! ## A134905.P14862679130745484301

`A134904(n+1)-1`
-/

namespace A134905.P14862679130745484301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134904 (n + 1) - 1

end

end A134905.P14862679130745484301

namespace A134905

/-- `A134904(n+1)-1` -/
def P14862679130745484301.Spec : Prop :=
  ∀ n, P14862679130745484301.a n = A134905 (n + 1)

end A134905

/-! ## A134905.P10624460316455069264

`A023443(A134904(n+1))`
-/

namespace A134905.P10624460316455069264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A134904 (n + 1)).toNat

end

end A134905.P10624460316455069264

namespace A134905

/-- `A023443(A134904(n+1))` -/
def P10624460316455069264.Spec : Prop :=
  ∀ n, P10624460316455069264.a n = A134905 (n + 1)

end A134905

/-!
# A134906: a(n) = ceiling(n*exp(-tan(n))).

The programs for A134906, there is no canonical definition to state claims against.
-/

/-! ## A134906.P106024918139038887

`A134907(n+1)+1`
-/

namespace A134906.P106024918139038887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134907 (n + 1) + 1

end

end A134906.P106024918139038887

/-!
# A134907: a(n) = floor(n*exp(-tan(n))).

The programs for A134907, there is no canonical definition to state claims against.
-/

/-! ## A134907.P2832390802583816926

`A134906(n+1)-1`
-/

namespace A134907.P2832390802583816926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134906 (n + 1) - 1

end

end A134907.P2832390802583816926

/-! ## A134907.P4490216984497357579

`A260196(A151800(n))+A134906(n+1)`
-/

namespace A134907.P4490216984497357579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A151800 n).toNat + A134906 (n + 1)

end

end A134907.P4490216984497357579

/-! ## A134907.P5224062965758032189

`A260196(A001952(n+1))+A134906(n+1)`
-/

namespace A134907.P5224062965758032189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A001952 (n + 1)).toNat + A134906 (n + 1)

end

end A134907.P5224062965758032189

/-! ## A134907.P14831891563018482779

`A260196(A194603(n+1))+A134906(n+1)`
-/

namespace A134907.P14831891563018482779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A194603 (n + 1)).toNat + A134906 (n + 1)

end

end A134907.P14831891563018482779

/-! ## A134907.P10082114661411238264

`A260196(A019546(n+1))+A134906(n+1)`
-/

namespace A134907.P10082114661411238264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A019546 (n + 1)).toNat + A134906 (n + 1)

end

end A134907.P10082114661411238264

/-!
# A134908: Ceiling(n*exp(-cot(n))).

The programs for A134908, the canonical program `A134908.P16199621612181494889` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134908 has offset 1).

The definition of A134908 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*exp(-cot(n+1)))` (program `A134908.P16199621612181494889`, by `A134908.P16199621612181494889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134908.P16199621612181494889

`ceil((n+1)*exp(-cot(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134908

/-- `ceil((n+1)*exp(-cot(n+1)))` -/
def P16199621612181494889.Spec : Prop :=
  ∀ n, P16199621612181494889.a n = A134908 (n + 1)

theorem P16199621612181494889.correct : P16199621612181494889.Spec := by
  intro n
  simp only [A134908, Nat.add_sub_cancel]

end A134908

/-! ## A134908.P17667384936032119279

`A134909(n+1)+1`
-/

namespace A134908.P17667384936032119279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134909 (n + 1) + 1

end

end A134908.P17667384936032119279

namespace A134908

/-- `A134909(n+1)+1` -/
def P17667384936032119279.Spec : Prop :=
  ∀ n, P17667384936032119279.a n = A134908 (n + 1)

end A134908

/-! ## A134908.P6085397612051450702

`ceil((n+1)/exp(cot(n+1)))`
-/

namespace A134908.P6085397612051450702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.exp (Real.cot (n + 1 : ℝ))⌉

end

end A134908.P6085397612051450702

namespace A134908

/-- `ceil((n+1)/exp(cot(n+1)))` -/
def P6085397612051450702.Spec : Prop :=
  ∀ n, P6085397612051450702.a n = A134908 (n + 1)

end A134908

/-! ## A134908.P12325173778993613957

`ceil((n+1)/root(e, tan(n+1)))`
-/

namespace A134908.P12325173778993613957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.exp 1 ^ (1 / Real.tan (n + 1 : ℝ))⌉

end

end A134908.P12325173778993613957

namespace A134908

/-- `ceil((n+1)/root(e, tan(n+1)))` -/
def P12325173778993613957.Spec : Prop :=
  ∀ n, P12325173778993613957.a n = A134908 (n + 1)

end A134908

/-! ## A134908.P1682437476479305840

`floor((n+1)/exp(cot(n+1)))+1`
-/

namespace A134908.P1682437476479305840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.exp (Real.cot (n + 1 : ℝ))⌋ + 1

end

end A134908.P1682437476479305840

namespace A134908

/-- `floor((n+1)/exp(cot(n+1)))+1` -/
def P1682437476479305840.Spec : Prop :=
  ∀ n, P1682437476479305840.a n = A134908 (n + 1)

end A134908

/-!
# A134909: a(n) = floor(n*exp(-cot n)).

The programs for A134909, the canonical program `A134909.P718992033530651045` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134909 has offset 1).

The definition of A134909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134909.P718992033530651045

`floor((n+1)*exp(-cot(n+1)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134909

/-- `floor((n+1)*exp(-cot(n+1)))` -/
def P718992033530651045.Spec : Prop :=
  ∀ n, P718992033530651045.a n = A134909 (n + 1)

theorem P718992033530651045.correct : P718992033530651045.Spec := by
  intro n
  simp only [A134909, Nat.add_sub_cancel]

end A134909

/-! ## A134909.P8617401187183877473

`A134908(n+1)-1`
-/

namespace A134909.P8617401187183877473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134908 (n + 1) - 1

end

end A134909.P8617401187183877473

namespace A134909

/-- `A134908(n+1)-1` -/
def P8617401187183877473.Spec : Prop :=
  ∀ n, P8617401187183877473.a n = A134909 (n + 1)

end A134909

/-! ## A134909.P260055795093389752

`A280193(Δ[n²])+A134908(n+1)`
-/

namespace A134909.P260055795093389752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A134908 (n + 1)

end

end A134909.P260055795093389752

namespace A134909

/-- `A280193(Δ[n²])+A134908(n+1)` -/
def P260055795093389752.Spec : Prop :=
  ∀ n, P260055795093389752.a n = A134909 (n + 1)

end A134909

/-! ## A134909.P10773756115096816748

`(A134908(n+1)+A057428(n))*A057427(n)`
-/

namespace A134909.P10773756115096816748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134908 (n + 1) + A057428 n) * A057427 n

end

end A134909.P10773756115096816748

namespace A134909

/-- `(A134908(n+1)+A057428(n))*A057427(n)` -/
def P10773756115096816748.Spec : Prop :=
  ∀ n, P10773756115096816748.a n = A134909 (n + 1)

end A134909

/-! ## A134909.P5078545059017895749

`A152163(Δ[A001952(n+1)])+A134908(n+1)`
-/

namespace A134909.P5078545059017895749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (f1 (n + 1) - f1 n).toNat + A134908 (n + 1)

end

end A134909.P5078545059017895749

namespace A134909

/-- `A152163(Δ[A001952(n+1)])+A134908(n+1)` -/
def P5078545059017895749.Spec : Prop :=
  ∀ n, P5078545059017895749.a n = A134909 (n + 1)

end A134909

/-! ## A134909.P8732818083690872830

`A187284(A000045(((-1)^n)²))+A134908(n+1)`
-/

namespace A134909.P8732818083690872830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187284 (A000045 (((-1) ^ n) ^ 2).toNat).toNat + A134908 (n + 1)

end

end A134909.P8732818083690872830

namespace A134909

/-- `A187284(A000045(((-1)^n)²))+A134908(n+1)` -/
def P8732818083690872830.Spec : Prop :=
  ∀ n, P8732818083690872830.a n = A134909 (n + 1)

end A134909

/-! ## A134909.P17308280579256173510

`floor((n+1)/exp(cot(n+1)))`
-/

namespace A134909.P17308280579256173510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.exp (Real.cot (n + 1 : ℝ))⌋

end

end A134909.P17308280579256173510

namespace A134909

/-- `floor((n+1)/exp(cot(n+1)))` -/
def P17308280579256173510.Spec : Prop :=
  ∀ n, P17308280579256173510.a n = A134909 (n + 1)

end A134909

/-! ## A134909.P4711075597630528313

`ceil((n+1)/exp(cot(n+1)))-1`
-/

namespace A134909.P4711075597630528313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.exp (Real.cot (n + 1 : ℝ))⌉ - 1

end

end A134909.P4711075597630528313

namespace A134909

/-- `ceil((n+1)/exp(cot(n+1)))-1` -/
def P4711075597630528313.Spec : Prop :=
  ∀ n, P4711075597630528313.a n = A134909 (n + 1)

end A134909

/-! ## A134909.P2900487504724551260

`A291914(A005382(n+1))+A134908(n+1)`
-/

namespace A134909.P2900487504724551260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A005382 (n + 1)).toNat + A134908 (n + 1)

end

end A134909.P2900487504724551260

namespace A134909

/-- `A291914(A005382(n+1))+A134908(n+1)` -/
def P2900487504724551260.Spec : Prop :=
  ∀ n, P2900487504724551260.a n = A134909 (n + 1)

end A134909

/-! ## A134909.P2998273477447341817

`A182394(A182365(n+1))+A134908(n+1)`
-/

namespace A134909.P2998273477447341817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A182365 (n + 1)).toNat + A134908 (n + 1)

end

end A134909.P2998273477447341817

namespace A134909

/-- `A182394(A182365(n+1))+A134908(n+1)` -/
def P2998273477447341817.Spec : Prop :=
  ∀ n, P2998273477447341817.a n = A134909 (n + 1)

end A134909

/-!
# A134910: Ceiling(n*exp(-sec(n))).

The programs for A134910, there is no canonical definition to state claims against.
-/

/-! ## A134910.P1236441444078418449

`A134911(n+1)+1`
-/

namespace A134910.P1236441444078418449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134911 (n + 1) + 1

end

end A134910.P1236441444078418449

/-!
# A134911: a(n) = floor(n*exp(-sec(n))).

The programs for A134911, there is no canonical definition to state claims against.
-/

/-! ## A134911.P3898382743942577397

`A134910(n+1)-1`
-/

namespace A134911.P3898382743942577397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134910 (n + 1) - 1

end

end A134911.P3898382743942577397

/-! ## A134911.P8738478432202813923

`A260196(n+2)+A134910(n+1)`
-/

namespace A134911.P8738478432202813923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A134910 (n + 1)

end

end A134911.P8738478432202813923

/-! ## A134911.P11005688733273745952

`A280193(Δ[n²])+A134910(n+1)`
-/

namespace A134911.P11005688733273745952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A134910 (n + 1)

end

end A134911.P11005688733273745952

/-! ## A134911.P10151656758979220504

`A253206(A151800(n))+A134910(n+1)`
-/

namespace A134911.P10151656758979220504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253206 (A151800 n).toNat + A134910 (n + 1)

end

end A134911.P10151656758979220504

/-! ## A134911.P6137827553833348121

`A253206(A020639(n+2))+A134910(n+1)`
-/

namespace A134911.P6137827553833348121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253206 (A020639 (n + 2)).toNat + A134910 (n + 1)

end

end A134911.P6137827553833348121

/-! ## A134911.P18174359085281395091

`A291914(A194603(n+1))+A134910(n+1)`
-/

namespace A134911.P18174359085281395091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A194603 (n + 1)).toNat + A134910 (n + 1)

end

end A134911.P18174359085281395091

/-!
# A134912: Ceiling(n*exp(-csc(n))).

The programs for A134912, there is no canonical definition to state claims against.
-/

/-! ## A134912.P16038914959474231386

`A134913(n+1)+1`
-/

namespace A134912.P16038914959474231386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134913 (n + 1) + 1

end

end A134912.P16038914959474231386

/-! ## A134912.P139641111744099662

`A325806(16^(∑[char[xor(n, 2*n)]]-1))`
-/

namespace A134912.P139641111744099662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325806 (SequenceMachineLib.roundAway ((16 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ))).toNat

end

end A134912.P139641111744099662

/-!
# A134913: a(n) = floor(n*exp(-csc(n))).

The programs for A134913, there is no canonical definition to state claims against.
-/

/-! ## A134913.P16699433088876637007

`A134912(n+1)-1`
-/

namespace A134913.P16699433088876637007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134912 (n + 1) - 1

end

end A134913.P16699433088876637007

/-! ## A134913.P18158136798412441234

`A280193(2*n+1)+A134912(n+1)`
-/

namespace A134913.P18158136798412441234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A134912 (n + 1)

end

end A134913.P18158136798412441234

/-! ## A134913.P11048775971186408809

`A291914(A000040(n+1))+A134912(n+1)`
-/

namespace A134913.P11048775971186408809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A000040 (n + 1)).toNat + A134912 (n + 1)

end

end A134913.P11048775971186408809

/-! ## A134913.P15630622490148681284

`A291914(A005382(n+1))+A134912(n+1)`
-/

namespace A134913.P15630622490148681284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A005382 (n + 1)).toNat + A134912 (n + 1)

end

end A134913.P15630622490148681284

/-! ## A134913.P10423684092924758026

`abs(A134912(n+1)+A008683(A019546(n+1)))`
-/

namespace A134913.P10423684092924758026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134912 (n + 1) + A008683 (A019546 (n + 1)).toNat|

end

end A134913.P10423684092924758026

/-!
# A134914: a(n) = ceiling(n^(1/3)).

The programs for A134914, the canonical program `A134914.P15738681065587827581` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134914 has offset 1).

The definition of A134914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^(1/3))` (program `A134914.P15738681065587827581`, by `A134914.P15738681065587827581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134914.P15738681065587827581

`ceil((n+1)^(1/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134914

/-- `ceil((n+1)^(1/3))` -/
def P15738681065587827581.Spec : Prop :=
  ∀ n, P15738681065587827581.a n = A134914 (n + 1)

theorem P15738681065587827581.correct : P15738681065587827581.Spec := by
  intro n
  simp only [A134914, Nat.add_sub_cancel]

end A134914

/-! ## A134914.P10162419009047418027

`char[n^3]+a(n-1)` with `a(0)=1`
-/

namespace A134914.P10162419009047418027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A134914.P10162419009047418027

namespace A134914

/-- `char[n^3]+a(n-1)` -/
def P10162419009047418027.Spec : Prop :=
  ∀ n, (P10162419009047418027.a n : ℤ) = A134914 (n + 1)

end A134914

/-! ## A134914.P12032048705105047186

`a(n-1)+C(n, a(n-1)^3)` with `a(0)=1`
-/

namespace A134914.P12032048705105047186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose n (a (n - 1) ^ 3)

end

end A134914.P12032048705105047186

namespace A134914

/-- `a(n-1)+C(n, a(n-1)^3)` -/
def P12032048705105047186.Spec : Prop :=
  ∀ n, (P12032048705105047186.a n : ℤ) = A134914 (n + 1)

end A134914

/-! ## A134914.P4144411108750746460

`floor(a(n-1)+n*a(n-1)^(-3))` with `a(0)=1`
-/

namespace A134914.P4144411108750746460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) * (a (n - 1) : ℚ) ^ (-3 : ℤ)⌋

end

end A134914.P4144411108750746460

namespace A134914

/-- `floor(a(n-1)+n*a(n-1)^(-3))` -/
def P4144411108750746460.Spec : Prop :=
  ∀ n, P4144411108750746460.a n = A134914 (n + 1)

end A134914

/-! ## A134914.P1233605600221566972

`floor(a(n-1)+n/(a(n-1)²*a(n-1)))` with `a(0)=1`
-/

namespace A134914.P1233605600221566972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / (a (n - 1) ^ 2 * a (n - 1) : ℚ)⌋

end

end A134914.P1233605600221566972

namespace A134914

/-- `floor(a(n-1)+n/(a(n-1)²*a(n-1)))` -/
def P1233605600221566972.Spec : Prop :=
  ∀ n, P1233605600221566972.a n = A134914 (n + 1)

end A134914

/-! ## A134914.P2504866866219447406

`floor(a(n-1)+n/(a(n-1)*a(n-1)*a(n-1)))` with `a(0)=1`
-/

namespace A134914.P2504866866219447406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / (a (n - 1) * a (n - 1) * a (n - 1) : ℚ)⌋

end

end A134914.P2504866866219447406

namespace A134914

/-- `floor(a(n-1)+n/(a(n-1)*a(n-1)*a(n-1)))` -/
def P2504866866219447406.Spec : Prop :=
  ∀ n, P2504866866219447406.a n = A134914 (n + 1)

end A134914

/-! ## A134914.P14659527185038414469

`floor(a(n-1)+floor(floor(n/a(n-1))/a(n-1))/a(n-1))` with `a(0)=1`
-/

namespace A134914.P14659527185038414469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (⌊(⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ : ℚ) / (a (n - 1) : ℚ)⌋ : ℚ) / (a (n - 1) : ℚ)⌋

end

end A134914.P14659527185038414469

namespace A134914

/-- `floor(a(n-1)+floor(floor(n/a(n-1))/a(n-1))/a(n-1))` -/
def P14659527185038414469.Spec : Prop :=
  ∀ n, P14659527185038414469.a n = A134914 (n + 1)

end A134914

/-! ## A134914.P4667022372186409031

`A048766(n)+1`
-/

namespace A134914.P4667022372186409031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n + 1

end

end A134914.P4667022372186409031

namespace A134914

/-- `A048766(n)+1` -/
def P4667022372186409031.Spec : Prop :=
  ∀ n, P4667022372186409031.a n = A134914 (n + 1)

end A134914

/-! ## A134914.P12007077511011518674

`comp[A034262(n)]-n`
-/

namespace A134914.P12007077511011518674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A134914.P12007077511011518674

namespace A134914

/-- `comp[A034262(n)]-n` -/
def P12007077511011518674.Spec : Prop :=
  ∀ n, P12007077511011518674.a n = A134914 (n + 1)

end A134914

/-! ## A134914.P14433241770388378020

`1-A064524(n)+n`
-/

namespace A134914.P14433241770388378020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064524 n + (n : ℤ)

end

end A134914.P14433241770388378020

namespace A134914

/-- `1-A064524(n)+n` -/
def P14433241770388378020.Spec : Prop :=
  ∀ n, P14433241770388378020.a n = A134914 (n + 1)

end A134914

/-! ## A134914.P2043827823428736401

`floor(sqrt(A100196(n)))+1`
-/

namespace A134914.P2043827823428736401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A100196 n) + 1

end

end A134914.P2043827823428736401

namespace A134914

/-- `floor(sqrt(A100196(n)))+1` -/
def P2043827823428736401.Spec : Prop :=
  ∀ n, P2043827823428736401.a n = A134914 (n + 1)

end A134914

/-! ## A134914.P8705402797414308955

`∑[char[A133823(n)]]+1`
-/

namespace A134914.P8705402797414308955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133823 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A134914.P8705402797414308955

namespace A134914

/-- `∑[char[A133823(n)]]+1` -/
def P8705402797414308955.Spec : Prop :=
  ∀ n, (P8705402797414308955.a n : ℤ) = A134914 (n + 1)

end A134914

/-! ## A134914.P16110713107381159008

`∑[char[A174127(n)]]+1`
-/

namespace A134914.P16110713107381159008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174127 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A134914.P16110713107381159008

namespace A134914

/-- `∑[char[A174127(n)]]+1` -/
def P16110713107381159008.Spec : Prop :=
  ∀ n, (P16110713107381159008.a n : ℤ) = A134914 (n + 1)

end A134914

/-! ## A134914.P17694842052284821951

`∑[char[A181543(n)]]+1`
-/

namespace A134914.P17694842052284821951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181543 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A134914.P17694842052284821951

namespace A134914

/-- `∑[char[A181543(n)]]+1` -/
def P17694842052284821951.Spec : Prop :=
  ∀ n, (P17694842052284821951.a n : ℤ) = A134914 (n + 1)

end A134914

/-! ## A134914.P2028140840579165201

`2*∑[A010057(n)/2]`
-/

namespace A134914.P2028140840579165201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010057 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134914.P2028140840579165201

namespace A134914

/-- `2*∑[A010057(n)/2]` -/
def P2028140840579165201.Spec : Prop :=
  ∀ n, P2028140840579165201.a n = (A134914 (n + 1) : ℚ)

end A134914

/-! ## A134914.P5108360178876296876

`∑[char[Δ[A000537(n)]]]+1`
-/

namespace A134914.P5108360178876296876
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A134914.P5108360178876296876

namespace A134914

/-- `∑[char[Δ[A000537(n)]]]+1` -/
def P5108360178876296876.Spec : Prop :=
  ∀ n, (P5108360178876296876.a n : ℤ) = A134914 (n + 1)

end A134914

/-!
# A134915: a(0) = 1, a(n) = floor(a(n - 1)*Pi).

The programs for A134915, the canonical program `A134915.P12815760321074887630` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134915 has offset 0).

The definition of A134915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134915.P12815760321074887630

`floor(π*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134915

/-- `floor(π*a(n-1))` -/
def P12815760321074887630.Spec : Prop :=
  ∀ n, P12815760321074887630.a n = A134915 n

theorem P12815760321074887630.correct : P12815760321074887630.Spec := by
  intro n
  simp only [A134915]

end A134915

/-! ## A134915.P5676948909427928815

`ceil(π*a(n-1))-1` with `a(0)=1`
-/

namespace A134915.P5676948909427928815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.pi * (a (n - 1) : ℝ)⌉ - 1

end

end A134915.P5676948909427928815

namespace A134915

/-- `ceil(π*a(n-1))-1` -/
def P5676948909427928815.Spec : Prop :=
  ∀ n, P5676948909427928815.a n = A134915 n

end A134915

/-! ## A134915.P1635790408321204761

`floor(2*a(n-1)*acos(0))` with `a(0)=1`
-/

namespace A134915.P1635790408321204761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((a (n - 1) : ℝ) * Real.arccos (0 : ℝ))⌋

end

end A134915.P1635790408321204761

namespace A134915

/-- `floor(2*a(n-1)*acos(0))` -/
def P1635790408321204761.Spec : Prop :=
  ∀ n, P1635790408321204761.a n = A134915 n

end A134915

/-! ## A134915.P6283524191442122976

`floor(2*a(n-1)*asin(1))` with `a(0)=1`
-/

namespace A134915.P6283524191442122976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((a (n - 1) : ℝ) * Real.arcsin (1 : ℝ))⌋

end

end A134915.P6283524191442122976

namespace A134915

/-- `floor(2*a(n-1)*asin(1))` -/
def P6283524191442122976.Spec : Prop :=
  ∀ n, P6283524191442122976.a n = A134915 n

end A134915

/-!
# A134917: a(n) = ceiling(n^(4/3)).

The programs for A134917, the canonical program `A134917.P14876092373602972283` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134917 has offset 1).

The definition of A134917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^(4/3))` (program `A134917.P14876092373602972283`, by `A134917.P14876092373602972283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134917.P14876092373602972283

`ceil((n+1)^(4/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134917

/-- `ceil((n+1)^(4/3))` -/
def P14876092373602972283.Spec : Prop :=
  ∀ n, P14876092373602972283.a n = A134917 (n + 1)

theorem P14876092373602972283.correct : P14876092373602972283.Spec := by
  intro n
  simp only [A134917, Nat.add_sub_cancel]

end A134917

/-! ## A134917.P13753878270616113957

`A135675(n+1)+1+n`
-/

namespace A134917.P13753878270616113957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135675 (n + 1) + 1 + (n : ℤ)

end

end A134917.P13753878270616113957

namespace A134917

/-- `A135675(n+1)+1+n` -/
def P13753878270616113957.Spec : Prop :=
  ∀ n, P13753878270616113957.a n = A134917 (n + 1)

end A134917

/-! ## A134917.P2848898070476980642

`A135677(n+1)-(n+1)`
-/

namespace A134917.P2848898070476980642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (n + 1) - (n + 1 : ℤ)

end

end A134917.P2848898070476980642

namespace A134917

/-- `A135677(n+1)-(n+1)` -/
def P2848898070476980642.Spec : Prop :=
  ∀ n, P2848898070476980642.a n = A134917 (n + 1)

end A134917

/-! ## A134917.P1906983051772732938

`record[A135677(A324533(n))-A324533(n)]`
-/

namespace A134917.P1906983051772732938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (A324533 n).toNat - A324533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134917.P1906983051772732938

namespace A134917

/-- `record[A135677(A324533(n))-A324533(n)]` -/
def P1906983051772732938.Spec : Prop :=
  ∀ n, P1906983051772732938.a n = A134917 (n + 1)

end A134917

/-! ## A134917.P4364244925136719837

`A129011(n+1)+A134914(n+1)-A048766(n+1)`
-/

namespace A134917.P4364244925136719837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 (n + 1) + (A134914 (n + 1) - A048766 (n + 1))

end

end A134917.P4364244925136719837

namespace A134917

/-- `A129011(n+1)+A134914(n+1)-A048766(n+1)` -/
def P4364244925136719837.Spec : Prop :=
  ∀ n, P4364244925136719837.a n = A134917 (n + 1)

end A134917

/-! ## A134917.P15026221198510966413

`A129011(n+1)+A134918(n+1)-A134919(n+1)`
-/

namespace A134917.P15026221198510966413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 (n + 1) + (A134918 (n + 1) - A134919 (n + 1))

end

end A134917.P15026221198510966413

namespace A134917

/-- `A129011(n+1)+A134918(n+1)-A134919(n+1)` -/
def P15026221198510966413.Spec : Prop :=
  ∀ n, P15026221198510966413.a n = A134917 (n + 1)

end A134917

/-! ## A134917.P16133710543847906487

`record[(n+1)*(A062108(n+1)-A062108(n))]`
-/

namespace A134917.P16133710543847906487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A062108 (n + 1) - A062108 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134917.P16133710543847906487

namespace A134917

/-- `record[(n+1)*(A062108(n+1)-A062108(n))]` -/
def P16133710543847906487.Spec : Prop :=
  ∀ n, P16133710543847906487.a n = A134917 (n + 1)

end A134917

/-! ## A134917.P7074260519064170656

`(n+1)²-A135672((n+1)²)`
-/

namespace A134917.P7074260519064170656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A135672 ((n + 1) ^ 2)

end

end A134917.P7074260519064170656

namespace A134917

/-- `(n+1)²-A135672((n+1)²)` -/
def P7074260519064170656.Spec : Prop :=
  ∀ n, P7074260519064170656.a n = A134917 (n + 1)

end A134917

/-! ## A134917.P5000226957917304817

`A135673((n+1)²)-(n+1)²`
-/

namespace A134917.P5000226957917304817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135673 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A134917.P5000226957917304817

namespace A134917

/-- `A135673((n+1)²)-(n+1)²` -/
def P5000226957917304817.Spec : Prop :=
  ∀ n, P5000226957917304817.a n = A134917 (n + 1)

end A134917

/-! ## A134917.P96377260008023557

`A002618(n+1)-A079531((n+1)²)`
-/

namespace A134917.P96377260008023557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - A079531 ((n + 1) ^ 2)

end

end A134917.P96377260008023557

namespace A134917

/-- `A002618(n+1)-A079531((n+1)²)` -/
def P96377260008023557.Spec : Prop :=
  ∀ n, P96377260008023557.a n = A134917 (n + 1)

end A134917

/-! ## A134917.P10567643451585462838

`A000010((n+1)²)-A079531((n+1)²)`
-/

namespace A134917.P10567643451585462838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 2) - A079531 ((n + 1) ^ 2)

end

end A134917.P10567643451585462838

namespace A134917

/-- `A000010((n+1)²)-A079531((n+1)²)` -/
def P10567643451585462838.Spec : Prop :=
  ∀ n, P10567643451585462838.a n = A134917 (n + 1)

end A134917

/-!
# A134918: Ceiling(n^(5/3)).

The programs for A134918, the canonical program `A134918.P17284443764222522012` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134918 has offset 1).

The definition of A134918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^(5/3))` (program `A134918.P17284443764222522012`, by `A134918.P17284443764222522012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134918.P17284443764222522012

`ceil((n+1)^(5/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134918

/-- `ceil((n+1)^(5/3))` -/
def P17284443764222522012.Spec : Prop :=
  ∀ n, P17284443764222522012.a n = A134918 (n + 1)

theorem P17284443764222522012.correct : P17284443764222522012.Spec := by
  intro n
  simp only [A134918, Nat.add_sub_cancel]

end A134918

/-! ## A134918.P15519428572334765626

`abs(floor(A000038(n)-(n+1)^(5/3)))`
-/

namespace A134918.P15519428572334765626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A000038 n : ℝ) - (n + 1 : ℝ) ^ ((5 : ℚ) / 3 : ℝ)⌋|

end

end A134918.P15519428572334765626

namespace A134918

/-- `abs(floor(A000038(n)-(n+1)^(5/3)))` -/
def P15519428572334765626.Spec : Prop :=
  ∀ n, P15519428572334765626.a n = A134918 (n + 1)

end A134918

/-! ## A134918.P10996970453405384924

`A134919(n+1)+Δ[A064524(n)]`
-/

namespace A134918.P10996970453405384924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134919 (n + 1) + (f1 (n + 1) - f1 n)

end

end A134918.P10996970453405384924

namespace A134918

/-- `A134919(n+1)+Δ[A064524(n)]` -/
def P10996970453405384924.Spec : Prop :=
  ∀ n, P10996970453405384924.a n = A134918 (n + 1)

end A134918

/-! ## A134918.P17784561555544690624

`A134919(n+1)+1-Δ[A048766(n)]`
-/

namespace A134918.P17784561555544690624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134919 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A134918.P17784561555544690624

namespace A134918

/-- `A134919(n+1)+1-Δ[A048766(n)]` -/
def P17784561555544690624.Spec : Prop :=
  ∀ n, P17784561555544690624.a n = A134918 (n + 1)

end A134918

/-! ## A134918.P2340974416739819967

`A134914(n+1)+A134919(n+1)-A048766(n+1)`
-/

namespace A134918.P2340974416739819967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (n + 1) + (A134919 (n + 1) - A048766 (n + 1))

end

end A134918.P2340974416739819967

namespace A134918

/-- `A134914(n+1)+A134919(n+1)-A048766(n+1)` -/
def P2340974416739819967.Spec : Prop :=
  ∀ n, P2340974416739819967.a n = A134918 (n + 1)

end A134918

/-! ## A134918.P8772427750561421952

`A134919(n+1)+1-Δ[A134914(n+1)]`
-/

namespace A134918.P8772427750561421952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134919 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A134918.P8772427750561421952

namespace A134918

/-- `A134919(n+1)+1-Δ[A134914(n+1)]` -/
def P8772427750561421952.Spec : Prop :=
  ∀ n, P8772427750561421952.a n = A134918 (n + 1)

end A134918

/-! ## A134918.P1350067730619830476

`A134919(n+1)+A017901(Δ[A134914(n+1)])`
-/

namespace A134918.P1350067730619830476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134919 (n + 1) + A017901 (f1 (n + 1) - f1 n).toNat

end

end A134918.P1350067730619830476

namespace A134918

/-- `A134919(n+1)+A017901(Δ[A134914(n+1)])` -/
def P1350067730619830476.Spec : Prop :=
  ∀ n, P1350067730619830476.a n = A134918 (n + 1)

end A134918

/-! ## A134918.P7712265100516335410

`A134917(n+1)+A134919(n+1)-A129011(n+1)`
-/

namespace A134918.P7712265100516335410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134917 (n + 1) + (A134919 (n + 1) - A129011 (n + 1))

end

end A134918.P7712265100516335410

namespace A134918

/-- `A134917(n+1)+A134919(n+1)-A129011(n+1)` -/
def P7712265100516335410.Spec : Prop :=
  ∀ n, P7712265100516335410.a n = A134918 (n + 1)

end A134918

/-! ## A134918.P1040051450938301389

`A134919(n+1)+A121536(n+2)-A100196(n+1)`
-/

namespace A134918.P1040051450938301389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134919 (n + 1) + (A121536 (n + 2) - A100196 (n + 1))

end

end A134918.P1040051450938301389

namespace A134918

/-- `A134919(n+1)+A121536(n+2)-A100196(n+1)` -/
def P1040051450938301389.Spec : Prop :=
  ∀ n, P1040051450938301389.a n = A134918 (n + 1)

end A134918

/-!
# A134919: Floor(n^(5/3)).

The programs for A134919, the canonical program `A134919.P437402823249168533` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134919 has offset 1).

The definition of A134919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^(5/3))` (program `A134919.P437402823249168533`, by `A134919.P437402823249168533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134919.P437402823249168533

`floor((n+1)^(5/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134919

/-- `floor((n+1)^(5/3))` -/
def P437402823249168533.Spec : Prop :=
  ∀ n, P437402823249168533.a n = A134919 (n + 1)

theorem P437402823249168533.correct : P437402823249168533.Spec := by
  intro n
  simp only [A134919, Nat.add_sub_cancel]

end A134919

/-! ## A134919.P3606243963732666470

`A134918(n+1)-Δ[A064524(n)]`
-/

namespace A134919.P3606243963732666470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134918 (n + 1) - (f1 (n + 1) - f1 n)

end

end A134919.P3606243963732666470

namespace A134919

/-- `A134918(n+1)-Δ[A064524(n)]` -/
def P3606243963732666470.Spec : Prop :=
  ∀ n, P3606243963732666470.a n = A134919 (n + 1)

end A134919

/-! ## A134919.P7688903908093693303

`A134918(n+1)+Δ[A048766(n)]-1`
-/

namespace A134919.P7688903908093693303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134918 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A134919.P7688903908093693303

namespace A134919

/-- `A134918(n+1)+Δ[A048766(n)]-1` -/
def P7688903908093693303.Spec : Prop :=
  ∀ n, P7688903908093693303.a n = A134919 (n + 1)

end A134919

/-! ## A134919.P6927496081524605991

`A048766(n+1)+A134918(n+1)-A134914(n+1)`
-/

namespace A134919.P6927496081524605991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (n + 1) + (A134918 (n + 1) - A134914 (n + 1))

end

end A134919.P6927496081524605991

namespace A134919

/-- `A048766(n+1)+A134918(n+1)-A134914(n+1)` -/
def P6927496081524605991.Spec : Prop :=
  ∀ n, P6927496081524605991.a n = A134919 (n + 1)

end A134919

/-! ## A134919.P3134602303407553861

`A129011(n+1)+A134918(n+1)-A134917(n+1)`
-/

namespace A134919.P3134602303407553861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 (n + 1) + (A134918 (n + 1) - A134917 (n + 1))

end

end A134919.P3134602303407553861

namespace A134919

/-- `A129011(n+1)+A134918(n+1)-A134917(n+1)` -/
def P3134602303407553861.Spec : Prop :=
  ∀ n, P3134602303407553861.a n = A134919 (n + 1)

end A134919

/-! ## A134919.P244221183271368705

`A100196(n+1)+A134918(n+1)-A121536(n+2)`
-/

namespace A134919.P244221183271368705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (n + 1) + (A134918 (n + 1) - A121536 (n + 2))

end

end A134919.P244221183271368705

namespace A134919

/-- `A100196(n+1)+A134918(n+1)-A121536(n+2)` -/
def P244221183271368705.Spec : Prop :=
  ∀ n, P244221183271368705.a n = A134919 (n + 1)

end A134919

/-!
# A134920: Expansion of (1-x+sqrt(1-2x+5x^2))/(2(1-x)^2).

The programs for A134920, the canonical program `A134920.P13300017598810764662` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134920 has offset 0).

The definition of A134920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134920.P18286597538743435376

`∑[A371888(n)]-n`
-/

namespace A134920.P18286597538743435376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A134920.P18286597538743435376

namespace A134920

/-- `∑[A371888(n)]-n` -/
def P18286597538743435376.Spec : Prop :=
  ∀ n, P18286597538743435376.a n = A134920 n

end A134920

/-! ## A134920.P13300017598810764662

`∑[∑[A100223(n)]]-n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134920

/-- `∑[∑[A100223(n)]]-n` -/
def P13300017598810764662.Spec : Prop :=
  ∀ n, P13300017598810764662.a n = A134920 n

theorem P13300017598810764662.correct : P13300017598810764662.Spec := by
  intro n
  simp only [A134920]

end A134920

/-! ## A134920.P2171613351948765805

`a(n-1)+1-A108623(n)` with `a(0)=1`
-/

namespace A134920.P2171613351948765805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A108623 n)

end

end A134920.P2171613351948765805

namespace A134920

/-- `a(n-1)+1-A108623(n)` -/
def P2171613351948765805.Spec : Prop :=
  ∀ n, P2171613351948765805.a n = A134920 n

end A134920

/-! ## A134920.P17144774108228824634

`∑[∑[A159075(n)+A100223(n)]]`
-/

namespace A134920.P17144774108228824634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A100223 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134920.P17144774108228824634

namespace A134920

/-- `∑[∑[A159075(n)+A100223(n)]]` -/
def P17144774108228824634.Spec : Prop :=
  ∀ n, P17144774108228824634.a n = A134920 n

end A134920

/-! ## A134920.P11638512829890203480

`n+2-∑[A108623(A028310(n))]`
-/

namespace A134920.P11638512829890203480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108623 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134920.P11638512829890203480

namespace A134920

/-- `n+2-∑[A108623(A028310(n))]` -/
def P11638512829890203480.Spec : Prop :=
  ∀ n, P11638512829890203480.a n = A134920 n

end A134920

/-! ## A134920.P2434941623418693509

`A108623(n+1)+∑[1-A108623(n+1)]`
-/

namespace A134920.P2434941623418693509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A108623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108623 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134920.P2434941623418693509

namespace A134920

/-- `A108623(n+1)+∑[1-A108623(n+1)]` -/
def P2434941623418693509.Spec : Prop :=
  ∀ n, P2434941623418693509.a n = A134920 n

end A134920

/-!
# A134921: a(n) = A132398(n)/6.

The programs for A134921, there is no canonical definition to state claims against.
-/

/-! ## A134921.P15272022815898456887

`A132398(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134921.P15272022815898456887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132398 (n + 1) : ℚ) / 6

end

end A134921.P15272022815898456887

/-! ## A134921.P6808456130820880591

`A255591(A132398(n+1))`
-/

namespace A134921.P6808456130820880591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A132398 (n + 1)).toNat

end

end A134921.P6808456130820880591

/-! ## A134921.P12106056907617157945

`A008612(A132398(n+1)+1)`
-/

namespace A134921.P12106056907617157945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A132398 (n + 1) + 1).toNat

end

end A134921.P12106056907617157945

/-! ## A134921.P11456268976117026123

`A008615(A132398(n+1)+1)`
-/

namespace A134921.P11456268976117026123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A132398 (n + 1) + 1).toNat

end

end A134921.P11456268976117026123

/-! ## A134921.P479580463291260912

`A103221(A132398(n+1)+1)`
-/

namespace A134921.P479580463291260912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A132398 (n + 1) + 1).toNat

end

end A134921.P479580463291260912

/-! ## A134921.P3461069123508836975

`A152467(A132398(n+1)+1)`
-/

namespace A134921.P3461069123508836975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A132398 (n + 1) + 1).toNat

end

end A134921.P3461069123508836975

/-!
# A134923: a(n) = (a(n-1)+a(n-2))^3, for n>=2; a(0)=0,a(1)=1.

The programs for A134923, the canonical program `A134923.P18114523603308264423` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134923 has offset 0).

The definition of A134923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+a(n-2))^3` (program `A134923.P18114523603308264423`, by `A134923.P18114523603308264423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134923.P18114523603308264423

`(a(n-1)+a(n-2))^3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134923

/-- `(a(n-1)+a(n-2))^3` -/
def P18114523603308264423.Spec : Prop :=
  ∀ n, (P18114523603308264423.a n : ℤ) = A134923 n

theorem P18114523603308264423.correct : P18114523603308264423.Spec := by
  intro n
  simp only [A134923]

end A134923

/-! ## A134923.P9459872153734823568

`(a(n-1)-floor(-a(n-2)))^3` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A134923.P9459872153734823568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) ^ 3

end

end A134923.P9459872153734823568

namespace A134923

/-- `(a(n-1)-floor(-a(n-2)))^3` -/
def P9459872153734823568.Spec : Prop :=
  ∀ n, P9459872153734823568.a n = A134923 n

end A134923

/-! ## A134923.P9319831316727581441

`(a(n-1)-ceil(-a(n-2)))^3` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A134923.P9319831316727581441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) ^ 3

end

end A134923.P9319831316727581441

namespace A134923

/-- `(a(n-1)-ceil(-a(n-2)))^3` -/
def P9319831316727581441.Spec : Prop :=
  ∀ n, P9319831316727581441.a n = A134923 n

end A134923

/-! ## A134923.P12001385984150351715

`(a(n-1)-round(-a(n-2)))^3` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A134923.P12001385984150351715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) ^ 3

end

end A134923.P12001385984150351715

namespace A134923

/-- `(a(n-1)-round(-a(n-2)))^3` -/
def P12001385984150351715.Spec : Prop :=
  ∀ n, P12001385984150351715.a n = A134923 n

end A134923

/-!
# A134924: Nearest-neighbors of isolated primes.

The programs for A134924, there is no canonical definition to state claims against.
-/

/-! ## A134924.P15769583267803244348

`A007510(∑[log2(gcd(2, n))])-(-1)^n`
-/

namespace A134924.P15769583267803244348
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (-1) ^ n

end

end A134924.P15769583267803244348

/-! ## A134924.P14779934849665010582

`A007510(∑[char[2*n]])-(-1)^n`
-/

namespace A134924.P14779934849665010582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (∑ j ∈ Finset.range (n + 1), f1 j) - (-1) ^ n

end

end A134924.P14779934849665010582

/-! ## A134924.P3563645724659129128

`A167277(floor(n/2)+1)+Δ[or(1, n)]`
-/

namespace A134924.P3563645724659129128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (⌊(n : ℚ) / 2⌋ + 1).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A134924.P3563645724659129128

/-! ## A134924.P13201412711539698500

`A167277(floor(n/2)+1)+A010673(n)`
-/

namespace A134924.P13201412711539698500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (⌊(n : ℚ) / 2⌋ + 1).toNat + A010673 n

end

end A134924.P13201412711539698500

/-! ## A134924.P13221692953523211104

`∪[A007510(n+1)+1, A167277(n+1)]`
-/

namespace A134924.P13221692953523211104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134924.P13221692953523211104

/-! ## A134924.P1609208706524205498

`∪[p?[A062729(n+1)]+1, A167277(n+1)]`
-/

namespace A134924.P1609208706524205498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A134924.P1609208706524205498

/-! ## A134924.P8631649034274050119

`∪[A167277(n+1), A068015(n)+a(n-1)]` with `a(0)=3`
-/

namespace A134924.P8631649034274050119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A068015 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134924.P8631649034274050119

/-! ## A134924.P11042595034478764001

`p?[A007510(A008619(n))]-A033999(n)`
-/

namespace A134924.P11042595034478764001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A033999 n

end

end A134924.P11042595034478764001

/-! ## A134924.P15431461037267142523

`A033999(n+1)+A007510(A008619(n))`
-/

namespace A134924.P15431461037267142523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A007510 (A008619 n).toNat

end

end A134924.P15431461037267142523

/-! ## A134924.P10852236290791106803

`∪[A000203(A007510(n+1)), A167277(n+1)]`
-/

namespace A134924.P10852236290791106803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007510 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134924.P10852236290791106803

/-!
# A134925: a(n) = floor(n^(Pi/2)).

The programs for A134925, the canonical program `A134925.P12734521060038588095` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134925 has offset 0).

The definition of A134925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(π/2))` (program `A134925.P12734521060038588095`, by `A134925.P12734521060038588095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134925.P12734521060038588095

`floor(n^(π/2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134925

/-- `floor(n^(π/2))` -/
def P12734521060038588095.Spec : Prop :=
  ∀ n, P12734521060038588095.a n = A134925 n

theorem P12734521060038588095.correct : P12734521060038588095.Spec := by
  intro n
  simp only [A134925]

end A134925

/-! ## A134925.P10111509091984513737

`or(floor((n^atan(1))²), char[1])`
-/

namespace A134925.P10111509091984513737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊((n : ℝ) ^ (Real.arctan (1 : ℝ))) ^ 2⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134925.P10111509091984513737

namespace A134925

/-- `or(floor((n^atan(1))²), char[1])` -/
def P10111509091984513737.Spec : Prop :=
  ∀ n, P10111509091984513737.a n = A134925 n

end A134925

/-! ## A134925.P3378247820629254149

`or(floor((n^acot(1))²), char[1])`
-/

namespace A134925.P3378247820629254149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊((n : ℝ) ^ (SequenceMachineLib.acot (1 : ℝ))) ^ 2⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134925.P3378247820629254149

namespace A134925

/-- `or(floor((n^acot(1))²), char[1])` -/
def P3378247820629254149.Spec : Prop :=
  ∀ n, P3378247820629254149.a n = A134925 n

end A134925

/-! ## A134925.P3672246956468771060

`floor((n^acot(1))²)%(n+1)²`
-/

namespace A134925.P3672246956468771060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n : ℝ) ^ (SequenceMachineLib.acot (1 : ℝ))) ^ 2⌋ ((n + 1) ^ 2 : ℤ)

end

end A134925.P3672246956468771060

namespace A134925

/-- `floor((n^acot(1))²)%(n+1)²` -/
def P3672246956468771060.Spec : Prop :=
  ∀ n, P3672246956468771060.a n = A134925 n

end A134925

/-! ## A134925.P10223005256111755366

`∑{d}[floor((n^atan(1))²), A000010(#)]`
-/

namespace A134925.P10223005256111755366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) ^ (Real.arctan (1 : ℝ))) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A134925.P10223005256111755366

namespace A134925

/-- `∑{d}[floor((n^atan(1))²), A000010(#)]` -/
def P10223005256111755366.Spec : Prop :=
  ∀ n, P10223005256111755366.a n = A134925 n

end A134925

/-! ## A134925.P5857588796179193467

`floor((n^atan(1))²)%(2^n)`
-/

namespace A134925.P5857588796179193467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n : ℝ) ^ (Real.arctan (1 : ℝ))) ^ 2⌋ (2 ^ n : ℤ)

end

end A134925.P5857588796179193467

namespace A134925

/-- `floor((n^atan(1))²)%(2^n)` -/
def P5857588796179193467.Spec : Prop :=
  ∀ n, P5857588796179193467.a n = A134925 n

end A134925

/-!
# A134926: Nearest-neighbors of odd isolated primes, divided by 2.

The programs for A134926, there is no canonical definition to state claims against.
-/

/-! ## A134926.P5411575351903408420

`A134924(n+3)/2`
-/

namespace A134926.P5411575351903408420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134924 (n + 3) : ℚ) / 2

end

end A134926.P5411575351903408420

/-! ## A134926.P11479629059888765757

`A001281(A134924(n+3))`
-/

namespace A134926.P11479629059888765757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A134924 (n + 3)).toNat

end

end A134926.P11479629059888765757

/-! ## A134926.P8135741682380574207

`A004526(A134924(n+3)+1)`
-/

namespace A134926.P8135741682380574207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A134924 (n + 3) + 1).toNat

end

end A134926.P8135741682380574207

/-! ## A134926.P5017231792965521735

`A028242(A134924(n+3)+1)`
-/

namespace A134926.P5017231792965521735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A134924 (n + 3) + 1).toNat

end

end A134926.P5017231792965521735

/-! ## A134926.P11645893241266972305

`A057979(A134924(n+3)+1)`
-/

namespace A134926.P11645893241266972305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A134924 (n + 3) + 1).toNat

end

end A134926.P11645893241266972305

/-! ## A134926.P14715688151874703460

`A123621(A134924(n+3)+1)`
-/

namespace A134926.P14715688151874703460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A134924 (n + 3) + 1).toNat

end

end A134926.P14715688151874703460

/-! ## A134926.P16574689420981043808

`A000463(A134924(n+3)-1)`
-/

namespace A134926.P16574689420981043808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A134924 (n + 3) - 1).toNat

end

end A134926.P16574689420981043808

/-! ## A134926.P10340494914335182755

`A001057(A134924(n+3)-1)`
-/

namespace A134926.P10340494914335182755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A134924 (n + 3) - 1).toNat

end

end A134926.P10340494914335182755

/-! ## A134926.P1662326245191937875

`A110654(A134924(n+3)-1)`
-/

namespace A134926.P1662326245191937875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A134924 (n + 3) - 1).toNat

end

end A134926.P1662326245191937875

/-!
# A134927: a(0)=a(1)=1; a(n) = 3*(a(n-1) + a(n-2)).

The programs for A134927, the canonical program `A134927.P16958722895934101379` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134927 has offset 0).

The definition of A134927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(a(n-1)+a(n-2))` (program `A134927.P16958722895934101379`, by `A134927.P16958722895934101379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134927.P16958722895934101379

`3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134927

/-- `3*(a(n-1)+a(n-2))` -/
def P16958722895934101379.Spec : Prop :=
  ∀ n, (P16958722895934101379.a n : ℤ) = A134927 n

theorem P16958722895934101379.correct : P16958722895934101379.Spec := by
  intro n
  simp only [A134927]

end A134927

/-! ## A134927.P1209335593618591229

`A030195(n+1)-2*A030195(n)`
-/

namespace A134927.P1209335593618591229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 (n + 1) - 2 * A030195 n

end

end A134927.P1209335593618591229

namespace A134927

/-- `A030195(n+1)-2*A030195(n)` -/
def P1209335593618591229.Spec : Prop :=
  ∀ n, P1209335593618591229.a n = A134927 n

end A134927

/-! ## A134927.P7953376888217338109

`ogf((-1+2x)/(-1+3x+3x^2))`
-/

namespace A134927.P7953376888217338109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -3, -3] n

end

end A134927.P7953376888217338109

namespace A134927

/-- `ogf((-1+2x)/(-1+3x+3x^2))` -/
def P7953376888217338109.Spec : Prop :=
  ∀ n, P7953376888217338109.a n = A134927 n

end A134927

/-! ## A134927.P4150263610439327819

`3*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A134927.P4150263610439327819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A134927.P4150263610439327819

namespace A134927

/-- `3*(a(n-1)-floor(-a(n-2)))` -/
def P4150263610439327819.Spec : Prop :=
  ∀ n, P4150263610439327819.a n = A134927 n

end A134927

/-! ## A134927.P6472030406321340770

`3*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A134927.P6472030406321340770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A134927.P6472030406321340770

namespace A134927

/-- `3*(a(n-1)-ceil(-a(n-2)))` -/
def P6472030406321340770.Spec : Prop :=
  ∀ n, P6472030406321340770.a n = A134927 n

end A134927

/-! ## A134927.P11810075988977456717

`3*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A134927.P11810075988977456717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A134927.P11810075988977456717

namespace A134927

/-- `3*(a(n-1)-round(-a(n-2)))` -/
def P11810075988977456717.Spec : Prop :=
  ∀ n, P11810075988977456717.a n = A134927 n

end A134927

/-! ## A134927.P16846537345103063755

`3*(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A134927.P16846537345103063755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2)))

end

end A134927.P16846537345103063755

namespace A134927

/-- `3*(a(n-1)-(char[1]-a(n-2)))` -/
def P16846537345103063755.Spec : Prop :=
  ∀ n, P16846537345103063755.a n = A134927 n

end A134927

/-! ## A134927.P10000680279054051720

`3-3*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A134927.P10000680279054051720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 - 3 * (1 - a (n - 1) - a (n - 2))

end

end A134927.P10000680279054051720

namespace A134927

/-- `3-3*(1-a(n-1)-a(n-2))` -/
def P10000680279054051720.Spec : Prop :=
  ∀ n, P10000680279054051720.a n = A134927 n

end A134927

/-! ## A134927.P1895742334069794179

`(a(n-1)+a(n-2))/(1-2/3)` with `a(0)=1, a(1)=1`
-/

namespace A134927.P1895742334069794179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (2 : ℚ) / 3)

end

end A134927.P1895742334069794179

namespace A134927

/-- `(a(n-1)+a(n-2))/(1-2/3)` -/
def P1895742334069794179.Spec : Prop :=
  ∀ n, P1895742334069794179.a n = (A134927 n : ℚ)

end A134927

/-! ## A134927.P3562376649855945512

`A108306((n-1)%(n+1))`
-/

namespace A134927.P3562376649855945512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108306 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A134927.P3562376649855945512

namespace A134927

/-- `A108306((n-1)%(n+1))` -/
def P3562376649855945512.Spec : Prop :=
  ∀ n, P3562376649855945512.a n = A134927 n

end A134927

/-! ## A134927.P5948320951484586621

`A108306(A289207(n+1))`
-/

namespace A134927.P5948320951484586621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108306 (A289207 (n + 1)).toNat

end

end A134927.P5948320951484586621

namespace A134927

/-- `A108306(A289207(n+1))` -/
def P5948320951484586621.Spec : Prop :=
  ∀ n, P5948320951484586621.a n = A134927 n

end A134927

/-! ## A134927.P16557358378499868152

`A108306(A028310(n)-1)`
-/

namespace A134927.P16557358378499868152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108306 (A028310 n - 1).toNat

end

end A134927.P16557358378499868152

namespace A134927

/-- `A108306(A028310(n)-1)` -/
def P16557358378499868152.Spec : Prop :=
  ∀ n, P16557358378499868152.a n = A134927 n

end A134927

/-! ## A134927.P16756433909535983011

`A108306(A004273(n)-n)`
-/

namespace A134927.P16756433909535983011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108306 (A004273 n - (n : ℤ)).toNat

end

end A134927.P16756433909535983011

namespace A134927

/-- `A108306(A004273(n)-n)` -/
def P16756433909535983011.Spec : Prop :=
  ∀ n, P16756433909535983011.a n = A134927 n

end A134927

/-! ## A134927.P16960487057067879110

`A202206(n)-A030195(n)`
-/

namespace A134927.P16960487057067879110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202206 n - A030195 n

end

end A134927.P16960487057067879110

namespace A134927

/-- `A202206(n)-A030195(n)` -/
def P16960487057067879110.Spec : Prop :=
  ∀ n, P16960487057067879110.a n = A134927 n

end A134927

/-! ## A134927.P1909108061525871561

`A108306(A289207(2*n)/2)`
-/

namespace A134927.P1909108061525871561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108306 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A134927.P1909108061525871561

namespace A134927

/-- `A108306(A289207(2*n)/2)` -/
def P1909108061525871561.Spec : Prop :=
  ∀ n, P1909108061525871561.a n = A134927 n

end A134927

/-! ## A134927.P7315520096539909517

`A189737(n+1)/3`
-/

namespace A134927.P7315520096539909517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189737 (n + 1) : ℚ) / 3

end

end A134927.P7315520096539909517

namespace A134927

/-- `A189737(n+1)/3` -/
def P7315520096539909517.Spec : Prop :=
  ∀ n, P7315520096539909517.a n = (A134927 n : ℚ)

end A134927

/-! ## A134927.P567102757353892796

`A125145(n)-A106435(n)`
-/

namespace A134927.P567102757353892796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 n - A106435 n

end

end A134927.P567102757353892796

namespace A134927

/-- `A125145(n)-A106435(n)` -/
def P567102757353892796.Spec : Prop :=
  ∀ n, P567102757353892796.a n = A134927 n

end A134927

/-! ## A134927.P3458426916788799920

`A172012(n)-A202206(n)`
-/

namespace A134927.P3458426916788799920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172012 n - A202206 n

end

end A134927.P3458426916788799920

namespace A134927

/-- `A172012(n)-A202206(n)` -/
def P3458426916788799920.Spec : Prop :=
  ∀ n, P3458426916788799920.a n = A134927 n

end A134927

/-! ## A134927.P1347207281524902303

`(A172012(n)-A030195(n))/2`
-/

namespace A134927.P1347207281524902303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172012 n - A030195 n : ℚ) / 2

end

end A134927.P1347207281524902303

namespace A134927

/-- `(A172012(n)-A030195(n))/2` -/
def P1347207281524902303.Spec : Prop :=
  ∀ n, P1347207281524902303.a n = (A134927 n : ℚ)

end A134927

/-! ## A134927.P14538306696985002913

`A196472(n+1)+A103820(n)-A108306(n)`
-/

namespace A134927.P14538306696985002913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196472 (n + 1) + (A103820 n - A108306 n)

end

end A134927.P14538306696985002913

namespace A134927

/-- `A196472(n+1)+A103820(n)-A108306(n)` -/
def P14538306696985002913.Spec : Prop :=
  ∀ n, P14538306696985002913.a n = A134927 n

end A134927

/-!
# A134928: Triple composites.

The programs for A134928, there is no canonical definition to state claims against.
-/

/-! ## A134928.P4923821246772501775

`2*A134932(n+1)`
-/

namespace A134928.P4923821246772501775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134932 (n + 1)

end

end A134928.P4923821246772501775

/-! ## A134928.P10523571344836685342

`2*A134933(n+2)`
-/

namespace A134928.P10523571344836685342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134933 (n + 2)

end

end A134928.P10523571344836685342

/-! ## A134928.P12600365359293996063

`A004277(A134932(n+1))`
-/

namespace A134928.P12600365359293996063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A134932 (n + 1)).toNat

end

end A134928.P12600365359293996063

/-! ## A134928.P3645113263892003281

`A004277(A134933(n+2))`
-/

namespace A134928.P3645113263892003281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A134933 (n + 2)).toNat

end

end A134928.P3645113263892003281

/-! ## A134928.P11789804365009900118

`A103517(A134932(n+1)-1)`
-/

namespace A134928.P11789804365009900118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A134932 (n + 1) - 1).toNat

end

end A134928.P11789804365009900118

/-! ## A134928.P3867159127626730864

`A134933(n+2)+A134932(n+1)`
-/

namespace A134928.P3867159127626730864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134933 (n + 2) + A134932 (n + 1)

end

end A134928.P3867159127626730864

/-! ## A134928.P3235489888345554454

`∑{d}[A000040(n+1), A134932(n-or(#, -1))]`
-/

namespace A134928.P3235489888345554454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A134932 ((n : ℤ) - Int.lor (d : ℤ) (-1)).toNat

end

end A134928.P3235489888345554454

/-! ## A134928.P18372906818089925290

`∑{d}[A001097(n+1), A134932(n-or(#, -1))]`
-/

namespace A134928.P18372906818089925290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A134932 ((n : ℤ) - Int.lor (d : ℤ) (-1)).toNat

end

end A134928.P18372906818089925290

/-! ## A134928.P12605772870450024911

`∑{d}[A006530(n+2), A134932(n-or(#, -1))]`
-/

namespace A134928.P12605772870450024911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A134932 ((n : ℤ) - Int.lor (d : ℤ) (-1)).toNat

end

end A134928.P12605772870450024911

/-! ## A134928.P6083930823162494176

`∑{d}[A020639(n+2), A134932(n-or(#, -1))]`
-/

namespace A134928.P6083930823162494176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A134932 ((n : ℤ) - Int.lor (d : ℤ) (-1)).toNat

end

end A134928.P6083930823162494176

/-!
# A134930: Nearest-neighbors of twin primes.

The programs for A134930, there is no canonical definition to state claims against.
-/

/-! ## A134930.P1321943046567393997

`2*A134933(n+1)`
-/

namespace A134930.P1321943046567393997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134933 (n + 1)

end

end A134930.P1321943046567393997

/-! ## A134930.P9858175747031532196

`A134928(n%a(n-1))` with `a(0)=2`
-/

namespace A134930.P9858175747031532196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A134928 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A134930.P9858175747031532196

/-! ## A134930.P15702886646945480225

`2*∪[A134932(n+1), C(n+7, 7)]`
-/

namespace A134930.P15702886646945480225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134932 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A134930.P15702886646945480225

/-! ## A134930.P12272968023011798939

`A134928(and(2, 2*or(2, a(n-1))+1)+n)` with `a(0)=2`
-/

namespace A134930.P12272968023011798939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A134928 (Int.land 2 (2 * Int.lor 2 (a (n - 1)) + 1) + (n : ℤ)).toNat

end

end A134930.P12272968023011798939

/-! ## A134930.P8637089503662255086

`A004277(A134933(n+1))`
-/

namespace A134930.P8637089503662255086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A134933 (n + 1)).toNat

end

end A134930.P8637089503662255086

/-! ## A134930.P578042545285085915

`a(A000038(n))*A134932(n)` with `a(0)=2`
-/

namespace A134930.P578042545285085915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (A000038 n).toNat * A134932 n

end

end A134930.P578042545285085915

/-! ## A134930.P4856054558374540580

`∪[A134928(n+1), A008512(n)]`
-/

namespace A134930.P4856054558374540580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008512 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134930.P4856054558374540580

/-! ## A134930.P11229288488765941545

`∪[A134928(n+1), A109119(n)]`
-/

namespace A134930.P11229288488765941545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134930.P11229288488765941545

/-! ## A134930.P8913185584736040253

`∪[A134928(n+1), A288465(n)]`
-/

namespace A134930.P8913185584736040253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134930.P8913185584736040253

/-! ## A134930.P16411310370256158799

`∪[A134928(n+1), A304579(n)]`
-/

namespace A134930.P16411310370256158799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304579 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134930.P16411310370256158799

/-!
# A134931: a(n) = (5*3^n-3)/2.

The programs for A134931, the canonical program `A134931.P9279205162419742414` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134931 has offset 0).

The definition of A134931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*3^n-3)/2` (program `A134931.P11973268427179670639`, by `A134931.P11973268427179670639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134931.P11973268427179670639

`(5*3^n-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134931.P11973268427179670639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ n : ℤ) - 3 : ℚ) / 2

end

end A134931.P11973268427179670639

namespace A134931

/-- `(5*3^n-3)/2` -/
def P11973268427179670639.Spec : Prop :=
  ∀ n, P11973268427179670639.a n = (A134931 n : ℚ)

theorem P11973268427179670639.correct : P11973268427179670639.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A134931, Nat.add_sub_cancel, A134931.P11973268427179670639.a, A134931.P9279205162419742414.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A134931, Nat.add_sub_cancel, A134931.P11973268427179670639.a, A134931.P9279205162419742414.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A134931

/-! ## A134931.P9279205162419742414

`3*(a(n-1)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134931

/-- `3*(a(n-1)+1)` -/
def P9279205162419742414.Spec : Prop :=
  ∀ n, (P9279205162419742414.a n : ℤ) = A134931 n

theorem P9279205162419742414.correct : P9279205162419742414.Spec := by
  intro n
  simp only [A134931]

end A134931

/-! ## A134931.P5782525804259912663

`A060816(n+1)-1`
-/

namespace A134931.P5782525804259912663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 (n + 1) - 1

end

end A134931.P5782525804259912663

namespace A134931

/-- `A060816(n+1)-1` -/
def P5782525804259912663.Spec : Prop :=
  ∀ n, P5782525804259912663.a n = A134931 n

end A134931

/-! ## A134931.P17577786637063745974

`ogf((1+2x)/(1-4x+3x^2))`
-/

namespace A134931.P17577786637063745974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4, 3] n

end

end A134931.P17577786637063745974

namespace A134931

/-- `ogf((1+2x)/(1-4x+3x^2))` -/
def P17577786637063745974.Spec : Prop :=
  ∀ n, P17577786637063745974.a n = A134931 n

end A134931

/-! ## A134931.P15257843950996583326

`lcm(3, a(n-1)+1)` with `a(0)=1`
-/

namespace A134931.P15257843950996583326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (a (n - 1) + 1)

end

end A134931.P15257843950996583326

namespace A134931

/-- `lcm(3, a(n-1)+1)` -/
def P15257843950996583326.Spec : Prop :=
  ∀ n, (P15257843950996583326.a n : ℤ) = A134931 n

end A134931

/-! ## A134931.P887889121540072621

`∑[3*a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A134931.P887889121540072621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134931.P887889121540072621

namespace A134931

/-- `∑[3*a(n-1)]` -/
def P887889121540072621.Spec : Prop :=
  ∀ n, (P887889121540072621.a n : ℤ) = A134931 n

end A134931

/-! ## A134931.P710513306239187982

`6-3*(1-a(n-1))` with `a(0)=1`
-/

namespace A134931.P710513306239187982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 - 3 * (1 - a (n - 1))

end

end A134931.P710513306239187982

namespace A134931

/-- `6-3*(1-a(n-1))` -/
def P710513306239187982.Spec : Prop :=
  ∀ n, P710513306239187982.a n = A134931 n

end A134931

/-! ## A134931.P9951208858943116873

`3-a(n-1)/(2/3-1)` with `a(0)=1`
-/

namespace A134931.P9951208858943116873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 - a (n - 1) / ((2 : ℚ) / 3 - 1)

end

end A134931.P9951208858943116873

namespace A134931

/-- `3-a(n-1)/(2/3-1)` -/
def P9951208858943116873.Spec : Prop :=
  ∀ n, P9951208858943116873.a n = (A134931 n : ℚ)

end A134931

/-! ## A134931.P1671556636489116755

`a(n-1)+a(n-1)+a(n-1)+3` with `a(0)=1`
-/

namespace A134931.P1671556636489116755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 3))

end

end A134931.P1671556636489116755

namespace A134931

/-- `a(n-1)+a(n-1)+a(n-1)+3` -/
def P1671556636489116755.Spec : Prop :=
  ∀ n, (P1671556636489116755.a n : ℤ) = A134931 n

theorem P1671556636489116755.correct : P1671556636489116755.Spec := by
  intro n
  simp only [A134931, Nat.add_sub_cancel, A134931.P1671556636489116755.a, A134931.P9279205162419742414.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134931

/-! ## A134931.P3757489098190700063

`4-floor(1-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A134931.P3757489098190700063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - (1 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A134931.P3757489098190700063

namespace A134931

/-- `4-floor(1-a(n-1)-a(n-1)-a(n-1))` -/
def P3757489098190700063.Spec : Prop :=
  ∀ n, P3757489098190700063.a n = A134931 n

end A134931

/-! ## A134931.P15575208487190425781

`A087503(2*n)`
-/

namespace A134931.P15575208487190425781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087503 (2 * n)

end

end A134931.P15575208487190425781

namespace A134931

/-- `A087503(2*n)` -/
def P15575208487190425781.Spec : Prop :=
  ∀ n, P15575208487190425781.a n = A134931 n

end A134931

/-! ## A134931.P14640214625392044669

`A220946(2*n)`
-/

namespace A134931.P14640214625392044669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220946 (2 * n)

end

end A134931.P14640214625392044669

namespace A134931

/-- `A220946(2*n)` -/
def P14640214625392044669.Spec : Prop :=
  ∀ n, P14640214625392044669.a n = A134931 n

end A134931

/-! ## A134931.P493814822720638739

`∑[abs(A084244(n))]`
-/

namespace A134931.P493814822720638739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084244 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134931.P493814822720638739

namespace A134931

/-- `∑[abs(A084244(n))]` -/
def P493814822720638739.Spec : Prop :=
  ∀ n, P493814822720638739.a n = A134931 n

end A134931

/-! ## A134931.P2514988689430206215

`Δ[A244762(n)]-1`
-/

namespace A134931.P2514988689430206215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A134931.P2514988689430206215

namespace A134931

/-- `Δ[A244762(n)]-1` -/
def P2514988689430206215.Spec : Prop :=
  ∀ n, P2514988689430206215.a n = A134931 n

end A134931

/-! ## A134931.P11197455177542307504

`∑[A083658(Δ[n²])]`
-/

namespace A134931.P11197455177542307504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134931.P11197455177542307504

namespace A134931

/-- `∑[A083658(Δ[n²])]` -/
def P11197455177542307504.Spec : Prop :=
  ∀ n, P11197455177542307504.a n = A134931 n

end A134931

/-! ## A134931.P8908238206432385227

`A057198(n+1)-2`
-/

namespace A134931.P8908238206432385227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057198 (n + 1) - 2

end

end A134931.P8908238206432385227

namespace A134931

/-- `A057198(n+1)-2` -/
def P8908238206432385227.Spec : Prop :=
  ∀ n, P8908238206432385227.a n = A134931 n

end A134931

/-! ## A134931.P10742283083111501026

`A120463(2*(n+1))`
-/

namespace A134931.P10742283083111501026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120463 (2 * (n + 1))

end

end A134931.P10742283083111501026

namespace A134931

/-- `A120463(2*(n+1))` -/
def P10742283083111501026.Spec : Prop :=
  ∀ n, P10742283083111501026.a n = A134931 n

end A134931

/-! ## A134931.P9555079417927586996

`A198643(n)/2-1`
-/

namespace A134931.P9555079417927586996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198643 n : ℚ) / 2 - 1

end

end A134931.P9555079417927586996

namespace A134931

/-- `A198643(n)/2-1` -/
def P9555079417927586996.Spec : Prop :=
  ∀ n, P9555079417927586996.a n = (A134931 n : ℚ)

end A134931

/-! ## A134931.P3952651536461210573

`5*A003462(n)+1`
-/

namespace A134931.P3952651536461210573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A003462 n + 1

end

end A134931.P3952651536461210573

namespace A134931

/-- `5*A003462(n)+1` -/
def P3952651536461210573.Spec : Prop :=
  ∀ n, P3952651536461210573.a n = A134931 n

end A134931

/-!
# A134932: a(n)=A134928(n)/2.

The programs for A134932, there is no canonical definition to state claims against.
-/

/-! ## A134932.P13903575953217278550

`A134928(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134932.P13903575953217278550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134928 (n + 1) : ℚ) / 2

end

end A134932.P13903575953217278550

/-! ## A134932.P2846811956518470247

`A134933(n+2)`
-/

namespace A134932.P2846811956518470247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134933 (n + 2)

end

end A134932.P2846811956518470247

/-! ## A134932.P13975167172963185261

`eq[2, A096501(6*floor(n/3)+1)]-1`
-/

namespace A134932.P13975167172963185261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (6 * ⌊(n : ℚ) / 3⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A134932.P13975167172963185261

/-! ## A134932.P2597636437694162903

`A001281(A134928(n+1))`
-/

namespace A134932.P2597636437694162903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A134928 (n + 1)).toNat

end

end A134932.P2597636437694162903

/-! ## A134932.P14530856993067799001

`A004526(A134928(n+1)+1)`
-/

namespace A134932.P14530856993067799001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A134928 (n + 1) + 1).toNat

end

end A134932.P14530856993067799001

/-! ## A134932.P9052864321363488779

`A123108(A134928(n+1)+1)`
-/

namespace A134932.P9052864321363488779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A134928 (n + 1) + 1).toNat

end

end A134932.P9052864321363488779

/-! ## A134932.P2484853680457593329

`A140106(A134928(n+1)+2)`
-/

namespace A134932.P2484853680457593329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A134928 (n + 1) + 2).toNat

end

end A134932.P2484853680457593329

/-! ## A134932.P11380370219301781235

`record[A134933(A000267(A004442(n)))]`
-/

namespace A134932.P11380370219301781235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134933 (A000267 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134932.P11380370219301781235

/-! ## A134932.P17399176532551402579

`record[A134933(A001281(A004277(n)))]`
-/

namespace A134932.P17399176532551402579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134933 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134932.P17399176532551402579

/-! ## A134932.P6782168292587619174

`record[A134933(A071754(A008611(n)))]`
-/

namespace A134932.P6782168292587619174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134933 (A071754 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134932.P6782168292587619174

/-!
# A134933: a(n)=A134930(n)/2.

The programs for A134933, there is no canonical definition to state claims against.
-/

/-! ## A134933.P5351018498573026660

`A134930(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134933.P5351018498573026660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134930 (n + 1) : ℚ) / 2

end

end A134933.P5351018498573026660

/-! ## A134933.P11886088920823712645

`A134932(n)/a(floor(acot(n)))` with `a(0)=1`
-/

namespace A134933.P11886088920823712645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A134932 n : ℚ) / a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A134933.P11886088920823712645

/-! ## A134933.P17366978534491776418

`∪[A134932(n+1), C(n+7, 7)]`
-/

namespace A134933.P17366978534491776418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134932 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A134933.P17366978534491776418

/-! ## A134933.P13751546035608257759

`A134932(n*a(A000038(n)))` with `a(0)=1`
-/

namespace A134933.P13751546035608257759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134932 ((n : ℤ) * a (A000038 n).toNat).toNat

end

end A134933.P13751546035608257759

/-! ## A134933.P387145109978173731

`A134932(n/a(A000038(n)))` with `a(0)=1`
-/

namespace A134933.P387145109978173731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134932 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A000038 n).toNat : ℚ))).toNat

end

end A134933.P387145109978173731

/-! ## A134933.P5749483805678373938

`∪[A134932(n+1), A000050(n)]`
-/

namespace A134933.P5749483805678373938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000050 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134933.P5749483805678373938

/-! ## A134933.P7954380201396233352

`∪[A134932(n+1), A001249(n)]`
-/

namespace A134933.P7954380201396233352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134933.P7954380201396233352

/-! ## A134933.P15508955014746021345

`∪[A134932(n+1), A001779(n)]`
-/

namespace A134933.P15508955014746021345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134933.P15508955014746021345

/-! ## A134933.P11245995605000530396

`∪[A134932(n+1), A001849(n)]`
-/

namespace A134933.P11245995605000530396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134933.P11245995605000530396

/-! ## A134933.P17153173329787035223

`∪[A134932(n+1), A001941(n)]`
-/

namespace A134933.P17153173329787035223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001941 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134933.P17153173329787035223

/-!
# A134934: a(n) = (14*n+1)^2.

The programs for A134934, the canonical program `A134934.P7326976837344224725` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134934 has offset 0).

The definition of A134934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(14*n+1)²` (program `A134934.P7326976837344224725`, by `A134934.P7326976837344224725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134934.P7326976837344224725

`(14*n+1)²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134934

/-- `(14*n+1)²` -/
def P7326976837344224725.Spec : Prop :=
  ∀ n, (P7326976837344224725.a n : ℤ) = A134934 n

theorem P7326976837344224725.correct : P7326976837344224725.Spec := by
  intro n
  simp only [A134934]

end A134934

/-! ## A134934.P2832521529707381833

`A016754(7*n)`
-/

namespace A134934.P2832521529707381833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (7 * n)

end

end A134934.P2832521529707381833

namespace A134934

/-- `A016754(7*n)` -/
def P2832521529707381833.Spec : Prop :=
  ∀ n, P2832521529707381833.a n = A134934 n

end A134934

/-! ## A134934.P2551852094302551292

`A131877(n)^2`
-/

namespace A134934.P2551852094302551292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n ^ 2

end

end A134934.P2551852094302551292

namespace A134934

/-- `A131877(n)^2` -/
def P2551852094302551292.Spec : Prop :=
  ∀ n, P2551852094302551292.a n = A134934 n

end A134934

/-! ## A134934.P18072704970355019544

`(A008596(n)+1)^2`
-/

namespace A134934.P18072704970355019544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008596 n + 1) ^ 2

end

end A134934.P18072704970355019544

namespace A134934

/-- `(A008596(n)+1)^2` -/
def P18072704970355019544.Spec : Prop :=
  ∀ n, P18072704970355019544.a n = A134934 n

end A134934

/-! ## A134934.P17841336909362793038

`or(A131877(n)², A010054(n))`
-/

namespace A134934.P17841336909362793038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131877 n ^ 2) (A010054 n)

end

end A134934.P17841336909362793038

namespace A134934

/-- `or(A131877(n)², A010054(n))` -/
def P17841336909362793038.Spec : Prop :=
  ∀ n, P17841336909362793038.a n = A134934 n

end A134934

/-! ## A134934.P816723506961231295

`or(A131877(n)², A064990(n))`
-/

namespace A134934.P816723506961231295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131877 n ^ 2) (A064990 n)

end

end A134934.P816723506961231295

namespace A134934

/-- `or(A131877(n)², A064990(n))` -/
def P816723506961231295.Spec : Prop :=
  ∀ n, P816723506961231295.a n = A134934 n

end A134934

/-! ## A134934.P7266684710990005017

`or(A131877(n)², A051731(n+1))`
-/

namespace A134934.P7266684710990005017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131877 n ^ 2) (A051731 (n + 1))

end

end A134934.P7266684710990005017

namespace A134934

/-- `or(A131877(n)², A051731(n+1))` -/
def P7266684710990005017.Spec : Prop :=
  ∀ n, P7266684710990005017.a n = A134934 n

end A134934

/-! ## A134934.P8478205583829503973

`or(A131877(n)², A285518(n+1))`
-/

namespace A134934.P8478205583829503973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131877 n ^ 2) (A285518 (n + 1))

end

end A134934.P8478205583829503973

namespace A134934

/-- `or(A131877(n)², A285518(n+1))` -/
def P8478205583829503973.Spec : Prop :=
  ∀ n, P8478205583829503973.a n = A134934 n

end A134934

/-! ## A134934.P8463817941149421735

`A254474(n+1)²/(n+1)²`
-/

namespace A134934.P8463817941149421735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254474 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A134934.P8463817941149421735

namespace A134934

/-- `A254474(n+1)²/(n+1)²` -/
def P8463817941149421735.Spec : Prop :=
  ∀ n, P8463817941149421735.a n = (A134934 n : ℚ)

end A134934

/-! ## A134934.P18086157362907556696

`A016994(2*n)`
-/

namespace A134934.P18086157362907556696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 (2 * n)

end

end A134934.P18086157362907556696

namespace A134934

/-- `A016994(2*n)` -/
def P18086157362907556696.Spec : Prop :=
  ∀ n, P18086157362907556696.a n = A134934 n

end A134934

/-! ## A134934.P13800760416510904189

`sqrt(A016996(2*n))`
-/

namespace A134934.P13800760416510904189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016996 (2 * n) : ℝ)

end

end A134934.P13800760416510904189

namespace A134934

/-- `sqrt(A016996(2*n))` -/
def P13800760416510904189.Spec : Prop :=
  ∀ n, P13800760416510904189.a n = (A134934 n : ℝ)

end A134934

/-! ## A134934.P10603259906064968635

`sqrt(sqrt(A017000(2*n)))`
-/

namespace A134934.P10603259906064968635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017000 (2 * n) : ℝ))

end

end A134934.P10603259906064968635

namespace A134934

/-- `sqrt(sqrt(A017000(2*n)))` -/
def P10603259906064968635.Spec : Prop :=
  ∀ n, P10603259906064968635.a n = (A134934 n : ℝ)

end A134934

/-! ## A134934.P14371498307006342051

`A016997(2*n)/A016995(2*n)`
-/

namespace A134934.P14371498307006342051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016997 (2 * n) : ℚ) / (A016995 (2 * n) : ℚ)

end

end A134934.P14371498307006342051

namespace A134934

/-- `A016997(2*n)/A016995(2*n)` -/
def P14371498307006342051.Spec : Prop :=
  ∀ n, P14371498307006342051.a n = (A134934 n : ℚ)

end A134934

/-! ## A134934.P9643699706434271271

`A016998(2*n)/A016996(2*n)`
-/

namespace A134934.P9643699706434271271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016998 (2 * n) : ℚ) / (A016996 (2 * n) : ℚ)

end

end A134934.P9643699706434271271

namespace A134934

/-- `A016998(2*n)/A016996(2*n)` -/
def P9643699706434271271.Spec : Prop :=
  ∀ n, P9643699706434271271.a n = (A134934 n : ℚ)

end A134934

/-! ## A134934.P18377107189106521210

`A016999(2*n)/A016997(2*n)`
-/

namespace A134934.P18377107189106521210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016999 (2 * n) : ℚ) / (A016997 (2 * n) : ℚ)

end

end A134934.P18377107189106521210

namespace A134934

/-- `A016999(2*n)/A016997(2*n)` -/
def P18377107189106521210.Spec : Prop :=
  ∀ n, P18377107189106521210.a n = (A134934 n : ℚ)

end A134934

/-! ## A134934.P13505740695084229416

`A016995(2*n)²/A016996(2*n)`
-/

namespace A134934.P13505740695084229416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016995 (2 * n) ^ 2 : ℚ) / (A016996 (2 * n) : ℚ)

end

end A134934.P13505740695084229416

namespace A134934

/-- `A016995(2*n)²/A016996(2*n)` -/
def P13505740695084229416.Spec : Prop :=
  ∀ n, P13505740695084229416.a n = (A134934 n : ℚ)

end A134934

/-! ## A134934.P10673348517873867040

`A016993(2*n)*A131877(n)`
-/

namespace A134934.P10673348517873867040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (2 * n) * A131877 n

end

end A134934.P10673348517873867040

namespace A134934

/-- `A016993(2*n)*A131877(n)` -/
def P10673348517873867040.Spec : Prop :=
  ∀ n, P10673348517873867040.a n = A134934 n

end A134934

/-! ## A134934.P12637300248788874107

`A113801(2*n+1)*A113801(2*n+1)`
-/

namespace A134934.P12637300248788874107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (2 * n + 1) * A113801 (2 * n + 1)

end

end A134934.P12637300248788874107

namespace A134934

/-- `A113801(2*n+1)*A113801(2*n+1)` -/
def P12637300248788874107.Spec : Prop :=
  ∀ n, P12637300248788874107.a n = A134934 n

end A134934

/-! ## A134934.P9058161318294293657

`A280321(7*n)`
-/

namespace A134934.P9058161318294293657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280321 (7 * n)

end

end A134934.P9058161318294293657

namespace A134934

/-- `A280321(7*n)` -/
def P9058161318294293657.Spec : Prop :=
  ∀ n, P9058161318294293657.a n = A134934 n

end A134934

/-! ## A134934.P18388518639182915570

`2*A046092(7*n)+1`
-/

namespace A134934.P18388518639182915570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046092 (7 * n) + 1

end

end A134934.P18388518639182915570

namespace A134934

/-- `2*A046092(7*n)+1` -/
def P18388518639182915570.Spec : Prop :=
  ∀ n, P18388518639182915570.a n = A134934 n

end A134934

/-!
# A134937: Squares that are the sum of a nonzero pentagonal number and a nonzero square in at least one way.

The programs for A134937, there is no canonical definition to state claims against.
-/

/-! ## A134937.P10491862127690339168

`∑[A296656(A162231(n+4))]²`
-/

namespace A134937.P10491862127690339168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296656 (A162231 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A134937.P10491862127690339168

/-! ## A134937.P2001912116799112669

`A339857(A178954(n+1))`
-/

namespace A134937.P2001912116799112669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339857 (A178954 (n + 1)).toNat

end

end A134937.P2001912116799112669

/-!
# A134938: Pentagonal numbers that are the sum of a nonzero pentagonal number and a nonzero square in at least one way.

The programs for A134938, there is no canonical definition to state claims against.
-/

/-! ## A134938.P1043760379627915147

`A000326(lt[A320539(2*(n+2)), A338119(n+1)])`
-/

namespace A134938.P1043760379627915147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320539 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134938.P1043760379627915147

/-! ## A134938.P16846094725847209509

`A000326(lt[A196176(3*n+5), A117831(n+5)])`
-/

namespace A134938.P16846094725847209509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196176 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134938.P16846094725847209509

/-!
# A134939: Numerator of the expected number of random moves in Tower of Hanoi problem with n disks starting on peg 1 and ending on peg 3.

The programs for A134939, the canonical program `A134939.P6547316259120246738` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134939 has offset 0).

The definition of A134939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134939.P6547316259120246738

`(3^n-1)*(5^n-3^n)/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134939

/-- `(3^n-1)*(5^n-3^n)/2` -/
def P6547316259120246738.Spec : Prop :=
  ∀ n, P6547316259120246738.a n = (A134939 n : ℚ)

end A134939

/-! ## A134939.P8183042555192191630

`lcm(2, A005059(n)*A024023(n))`
-/

namespace A134939.P8183042555192191630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005059 n * A024023 n)

end

end A134939.P8183042555192191630

namespace A134939

/-- `lcm(2, A005059(n)*A024023(n))` -/
def P8183042555192191630.Spec : Prop :=
  ∀ n, (P8183042555192191630.a n : ℤ) = A134939 n

end A134939

/-! ## A134939.P16003364808177870524

`abs(Δ[A007798(n)]*A003462(n))`
-/

namespace A134939.P16003364808177870524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A003462 n|

end

end A134939.P16003364808177870524

namespace A134939

/-- `abs(Δ[A007798(n)]*A003462(n))` -/
def P16003364808177870524.Spec : Prop :=
  ∀ n, P16003364808177870524.a n = A134939 n

end A134939

/-! ## A134939.P4241242658390080498

`A000244(n)*A005059(n)-A005059(n)`
-/

namespace A134939.P4241242658390080498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A005059 n - A005059 n

end

end A134939.P4241242658390080498

namespace A134939

/-- `A000244(n)*A005059(n)-A005059(n)` -/
def P4241242658390080498.Spec : Prop :=
  ∀ n, P4241242658390080498.a n = A134939 n

end A134939

/-! ## A134939.P16552858160274434340

`(A005059(n)*A024023(n))^A007318(∑[n])`
-/

namespace A134939.P16552858160274434340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005059 n * A024023 n : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A134939.P16552858160274434340

namespace A134939

/-- `(A005059(n)*A024023(n))^A007318(∑[n])` -/
def P16552858160274434340.Spec : Prop :=
  ∀ n, P16552858160274434340.a n = (A134939 n : ℚ)

end A134939

/-! ## A134939.P3858809902864247737

`(A005059(n)*A024023(n))^cos(A000007(n))`
-/

namespace A134939.P3858809902864247737
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005059 n * A024023 n : ℝ) ^ (Real.cos (A000007 n : ℝ))

end

end A134939.P3858809902864247737

namespace A134939

/-- `(A005059(n)*A024023(n))^cos(A000007(n))` -/
def P3858809902864247737.Spec : Prop :=
  ∀ n, P3858809902864247737.a n = (A134939 n : ℝ)

end A134939

/-!
# A134940: Define f(n) by e(n+1) = e(n) + 3^{n+1} - 1 + 2*f(n), where the rational numbers e(n) are defined in A134939; then a(n) is the numerator of f(n).

The programs for A134940, the canonical program `A134940.P17664095253979442015` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134940 has offset 0).

The definition of A134940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134940.P17664095253979442015

`(6*3^n-1)*(5^n-3^n)/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134940

/-- `(6*3^n-1)*(5^n-3^n)/2` -/
def P17664095253979442015.Spec : Prop :=
  ∀ n, P17664095253979442015.a n = (A134940 n : ℚ)

end A134940

/-! ## A134940.P6658226519068932526

`abs((5^n-3^n)/2*A048473(n+1))`
-/

namespace A134940.P6658226519068932526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2 * (A048473 (n + 1) : ℚ)|

end

end A134940.P6658226519068932526

namespace A134940

/-- `abs((5^n-3^n)/2*A048473(n+1))` -/
def P6658226519068932526.Spec : Prop :=
  ∀ n, P6658226519068932526.a n = (A134940 n : ℚ)

end A134940

/-! ## A134940.P12613863484988600041

`A005058(n)*A034472(n+1)-A226511(n)`
-/

namespace A134940.P12613863484988600041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005058 n * A034472 (n + 1) - A226511 n

end

end A134940.P12613863484988600041

namespace A134940

/-- `A005058(n)*A034472(n+1)-A226511(n)` -/
def P12613863484988600041.Spec : Prop :=
  ∀ n, P12613863484988600041.a n = A134940 n

end A134940

/-!
# A134941: Mountain numbers.

The programs for A134941, there is no canonical definition to state claims against.
-/

/-! ## A134941.P15476928367637460738

`lt[0, A178333(n)]`
-/

namespace A134941.P15476928367637460738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134941.P15476928367637460738

/-! ## A134941.P18356676482688125244

`record[(5*n+1)*A178333(5*n+1)]`
-/

namespace A134941.P18356676482688125244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A178333 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134941.P18356676482688125244

/-! ## A134941.P7324743196677675100

`eq[A010130(n), A178333(n)]`
-/

namespace A134941.P7324743196677675100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134941.P7324743196677675100

/-! ## A134941.P8444060217924671706

`filter[A208259(n+1), A178333(#)]`
-/

namespace A134941.P8444060217924671706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178333 (f1 j).toNat = 1) n)

end

end A134941.P8444060217924671706

/-! ## A134941.P10323370821621529399

`eq[abs(A033999(n)), A178333(n)]`
-/

namespace A134941.P10323370821621529399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134941.P10323370821621529399

/-! ## A134941.P5912881003683934014

`eq[A020985(n)², A178333(n)]`
-/

namespace A134941.P5912881003683934014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134941.P5912881003683934014

/-! ## A134941.P2087261390233892768

`eq[A014963(A301730(n)), A178333(n)]`
-/

namespace A134941.P2087261390233892768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A301730 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134941.P2087261390233892768

/-! ## A134941.P7419756372279369829

`eq[A014963(A315187(n)), A178333(n)]`
-/

namespace A134941.P7419756372279369829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A315187 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134941.P7419756372279369829

/-!
# A134942: Numbers m such that there exists no number k with k-P(k) = m, where P(k) is the product of digits of k written in base 10.

The programs for A134942, the canonical program `A134942.P6092889629128080292` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134942 has offset 1).

The definition of A134942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134942.P6092889629128080292

`lt[char[A070565(n)], 1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134942

/-- `lt[char[A070565(n)], 1]` -/
def P6092889629128080292.Spec : Prop :=
  ∀ n, (P6092889629128080292.a n : ℤ) = A134942 (n + 1)

theorem P6092889629128080292.correct : P6092889629128080292.Spec := by
  intro n
  simp only [A134942, Nat.add_sub_cancel]

end A134942

/-! ## A134942.P4101091620558806763

`comp[n-∏{digits}[n, #]]%A091637(n+1)`
-/

namespace A134942.P4101091620558806763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A091637 (n + 1))

end

end A134942.P4101091620558806763

namespace A134942

/-- `comp[n-∏{digits}[n, #]]%A091637(n+1)` -/
def P4101091620558806763.Spec : Prop :=
  ∀ n, P4101091620558806763.a n = A134942 (n + 1)

end A134942

/-!
# A134945: Decimal expansion of 1 + sqrt(5).

The programs for A134945, there is no canonical definition to state claims against.
-/

/-! ## A134945.P15000995845814824634

`A002163(n)+A000007(n)`
-/

namespace A134945.P15000995845814824634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + A000007 n

end

end A134945.P15000995845814824634

/-! ## A134945.P135658172505338340

`A002163(A000038(n)+n)`
-/

namespace A134945.P135658172505338340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A134945.P135658172505338340

/-! ## A134945.P9493792875251477764

`A098317(A000038(n)+n)`
-/

namespace A134945.P9493792875251477764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A134945.P9493792875251477764

/-! ## A134945.P16848912640421349406

`A134972(A000038(n)+n)`
-/

namespace A134945.P16848912640421349406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A134945.P16848912640421349406

/-! ## A134945.P15918948120861950200

`A242671(A000038(n)+n)`
-/

namespace A134945.P15918948120861950200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242671 (A000038 n + (n : ℤ)).toNat

end

end A134945.P15918948120861950200

/-! ## A134945.P15893065574823609035

`A098317(n)-A000007(n)`
-/

namespace A134945.P15893065574823609035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 (n + 1) - A000007 n

end

end A134945.P15893065574823609035

/-! ## A134945.P7831757533403095085

`A002163(or(n, A000038(n)))`
-/

namespace A134945.P7831757533403095085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 ((Int.lor (n : ℤ) (A000038 n)).toNat + 1)

end

end A134945.P7831757533403095085

/-! ## A134945.P6546826902359901487

`A098317(or(n, A000038(n)))`
-/

namespace A134945.P6546826902359901487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 ((Int.lor (n : ℤ) (A000038 n)).toNat + 1)

end

end A134945.P6546826902359901487

/-! ## A134945.P4973362650107468150

`A002163(xor(n, A000038(n)))`
-/

namespace A134945.P4973362650107468150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 ((Int.xor (n : ℤ) (A000038 n)).toNat + 1)

end

end A134945.P4973362650107468150

/-! ## A134945.P3489714103130373589

`A098317(xor(n, A000038(n)))`
-/

namespace A134945.P3489714103130373589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 ((Int.xor (n : ℤ) (A000038 n)).toNat + 1)

end

end A134945.P3489714103130373589

/-! ## A134945.P14238098346127849371

`A242671(n)-A000038(n)²`
-/

namespace A134945.P14238098346127849371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242671 n - A000038 n ^ 2

end

end A134945.P14238098346127849371

/-! ## A134945.P1495874046006752133

`A002163(n)+A054977(n)-1`
-/

namespace A134945.P1495874046006752133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + (A054977 n - 1)

end

end A134945.P1495874046006752133

/-! ## A134945.P3839196167260713958

`A134972(n)+2*A000007(n)`
-/

namespace A134945.P3839196167260713958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 (n + 1) + 2 * A000007 n

end

end A134945.P3839196167260713958

/-! ## A134945.P12653317471730962632

`A098317(n)+n-A028310(n)`
-/

namespace A134945.P12653317471730962632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 (n + 1) + ((n : ℤ) - A028310 n)

end

end A134945.P12653317471730962632

/-! ## A134945.P16873871639901989327

`A002163(n+2-A134451(2*n))`
-/

namespace A134945.P16873871639901989327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (((n + 2 : ℤ) - A134451 (2 * n)).toNat + 1)

end

end A134945.P16873871639901989327

/-! ## A134945.P9688123304238221357

`A002163(n)+A008683(A008574(n))`
-/

namespace A134945.P9688123304238221357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + A008683 (A008574 n).toNat

end

end A134945.P9688123304238221357

/-! ## A134945.P8393522143214169729

`A002163(n)+A026351(n)-A004956(n)`
-/

namespace A134945.P8393522143214169729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + (A026351 n - A004956 n)

end

end A134945.P8393522143214169729

/-! ## A134945.P15099329188432697318

`A002163(n)+A026352(n)-A004957(n)`
-/

namespace A134945.P15099329188432697318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + (A026352 n - A004957 n)

end

end A134945.P15099329188432697318

/-!
# A134947: Self-power numbers (or SPN's) in A134698 which cannot be obtained by taking an earlier term M (say) of A134698 and prefixing or suffixing a digit of M.

The programs for A134947, there is no canonical definition to state claims against.
-/

/-! ## A134947.P15153959748547218804

`A134698(A310338(n))`
-/

namespace A134947.P15153959748547218804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134698 (A310338 n).toNat

end

end A134947.P15153959748547218804

/-!
# A134950: Divisors of 453060.

The programs for A134950, there is no canonical definition to state claims against.
-/

/-! ## A134950.P9396200680146406747

`record[gcd(n+1, A134960(n))]`
-/

namespace A134950.P9396200680146406747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A134960 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134950.P9396200680146406747

/-! ## A134950.P8950989226851912953

`eq[n, gcd(n, A134960(3*n+1))]`
-/

namespace A134950.P8950989226851912953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A134960 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134950.P8950989226851912953

/-! ## A134950.P4419890967378164302

`A235489(eq[1, A293485(n+1)]+1)`
-/

namespace A134950.P4419890967378164302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A134950.P4419890967378164302

/-! ## A134950.P197023586223109105

`A235489(lt[A250207(n+1), 3]+1)`
-/

namespace A134950.P197023586223109105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250207 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A134950.P197023586223109105

/-!
# A134951: Mountain primes.

The programs for A134951, there is no canonical definition to state claims against.
-/

/-! ## A134951.P6861125133779425927

`∩[A134941(n+1), A167853(n+1)]`
-/

namespace A134951.P6861125133779425927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P6861125133779425927

/-! ## A134951.P4284349250607449944

`∩[A030430(n+1), A134941(n+1)]`
-/

namespace A134951.P4284349250607449944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P4284349250607449944

/-! ## A134951.P6336096462329168111

`∩[A099677(n+1), A134941(n+1)]`
-/

namespace A134951.P6336096462329168111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P6336096462329168111

/-! ## A134951.P6384200834750043147

`∩[A099677(n+1), A167853(n+1)]`
-/

namespace A134951.P6384200834750043147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P6384200834750043147

/-! ## A134951.P1132396408044908336

`∩[A062332(n+1), A134941(n+1)]`
-/

namespace A134951.P1132396408044908336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P1132396408044908336

/-! ## A134951.P8898374338202572780

`∩[A062332(n+1), A167853(n+1)]`
-/

namespace A134951.P8898374338202572780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P8898374338202572780

/-! ## A134951.P10306977485431058723

`p?[A134941(n+1)]`
-/

namespace A134951.P10306977485431058723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134951.P10306977485431058723

/-! ## A134951.P8609192788061001722

`p?[record[A134941(A126759(n))]]`
-/

namespace A134951.P8609192788061001722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134951.P8609192788061001722

/-! ## A134951.P549819029230567626

`p?[record[A134941(A154958(n))]]`
-/

namespace A134951.P549819029230567626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134951.P549819029230567626

/-! ## A134951.P5593548860298702867

`∩[A038872(n+1), A134941(n+1)]`
-/

namespace A134951.P5593548860298702867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P5593548860298702867

/-! ## A134951.P16223690582132600016

`∩[A045349(n+1), A134941(n+1)]`
-/

namespace A134951.P16223690582132600016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P16223690582132600016

/-! ## A134951.P2061808521155379931

`∩[A045372(n+1), A134941(n+1)]`
-/

namespace A134951.P2061808521155379931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P2061808521155379931

/-! ## A134951.P7598823414348431932

`∩[A045407(n+1), A134941(n+1)]`
-/

namespace A134951.P7598823414348431932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P7598823414348431932

/-! ## A134951.P654620648347526501

`∩[A045429(n+1), A134941(n+1)]`
-/

namespace A134951.P654620648347526501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P654620648347526501

/-! ## A134951.P12343436947558972902

`∩[A045453(n+1), A134941(n+1)]`
-/

namespace A134951.P12343436947558972902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P12343436947558972902

/-! ## A134951.P5416837974876419407

`∩[A045468(n+1), A134941(n+1)]`
-/

namespace A134951.P5416837974876419407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P5416837974876419407

/-! ## A134951.P7835983464085989898

`∩[A045707(n+1), A134941(n+1)]`
-/

namespace A134951.P7835983464085989898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P7835983464085989898

/-! ## A134951.P9473940791741137836

`∩[A052086(n+1), A134941(n+1)]`
-/

namespace A134951.P9473940791741137836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P9473940791741137836

/-! ## A134951.P11837682651429353389

`∩[A064739(n+1), A134941(n+1)]`
-/

namespace A134951.P11837682651429353389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P11837682651429353389

/-! ## A134951.P8066619963551872664

`∩[A077652(n+1), A134941(n+1)]`
-/

namespace A134951.P8066619963551872664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134951.P8066619963551872664

/-!
# A134952: Number of prime implicants of the Y function of order n.

The programs for A134952, there is no canonical definition to state claims against.
-/

/-! ## A134952.P8484729646352236614

`A123246(5^n+2)`
-/

namespace A134952.P8484729646352236614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123246 (5 ^ n + 2)

end

end A134952.P8484729646352236614

/-! ## A134952.P4879853969392881490

`A204892(5^n+n)-(char[(n+1)²]+char[n²])`
-/

namespace A134952.P4879853969392881490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (5 ^ n + n) - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A134952.P4879853969392881490

/-!
# A134954: Number of "hyperforests" on n labeled nodes, i.e., hypergraphs that have no cycles, assuming that each edge contains at least two vertices.

The programs for A134954, there is no canonical definition to state claims against.
-/

/-! ## A134954.P9094071258626407120

`A134956(n)/2^n`
-/

namespace A134954.P9094071258626407120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134956 n : ℚ) / (2 ^ n : ℚ)

end

end A134954.P9094071258626407120

/-! ## A134954.P13200266338795171420

`floor(A134956(n)/A000079(n))`
-/

namespace A134954.P13200266338795171420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134956 n : ℚ) / (A000079 n : ℚ)⌋

end

end A134954.P13200266338795171420

/-! ## A134954.P5741267471203042439

`A030019(n)/A134958(n)*A134956(n)`
-/

namespace A134954.P5741267471203042439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030019 n : ℚ) / (A134958 n : ℚ) * (A134956 n : ℚ)

end

end A134954.P5741267471203042439

/-! ## A134954.P5028117916205258401

`A134956(n)/A000079(n)*A007318(C(2, 2*n))`
-/

namespace A134954.P5028117916205258401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134956 n : ℚ) / (A000079 n : ℚ) * (A007318 (Nat.choose 2 (2 * n)) : ℚ)

end

end A134954.P5028117916205258401

/-! ## A134954.P12505248989259097798

`A134956(n)/A000079(n)*A014963(∑[4*(n+3)])`
-/

namespace A134954.P12505248989259097798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134956 n : ℚ) / (A000079 n : ℚ) * (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A134954.P12505248989259097798

/-!
# A134955: Number of "hyperforests" on n unlabeled nodes, i.e., hypergraphs that have no cycles, assuming that each edge contains at least two vertices.

The programs for A134955, there is no canonical definition to state claims against.
-/

/-! ## A134955.P12651224269001865974

`∑[A144959(n)]`
-/

namespace A134955.P12651224269001865974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134955.P12651224269001865974

/-! ## A134955.P6809400162970372204

`A144977(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A134955.P6809400162970372204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A144977 n + a (n - 2)

end

end A134955.P6809400162970372204

/-! ## A134955.P1692314463805409077

`A144959(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A134955.P1692314463805409077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144959 n + a (A023443 n).toNat

end

end A134955.P1692314463805409077

/-! ## A134955.P1886202621613329956

`A144959(n)+a(A005408(n)-(n+2))` with `a(0)=1`
-/

namespace A134955.P1886202621613329956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144959 n + a (A005408 n - (n + 2 : ℤ)).toNat

end

end A134955.P1886202621613329956

/-! ## A134955.P2414774045374631616

`A144959(n)+a(A004526(A004273(n)))` with `a(0)=1`
-/

namespace A134955.P2414774045374631616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144959 n + a (A004526 (A004273 n).toNat).toNat

end

end A134955.P2414774045374631616

/-!
# A134956: Number of hyperforests with n labeled vertices: analog of A134954 when edges of size 1 are allowed (with no two equal edges).

The programs for A134956, there is no canonical definition to state claims against.
-/

/-! ## A134956.P6519922478324330286

`2^n*A134954(n)`
-/

namespace A134956.P6519922478324330286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A134954 n

end

end A134956.P6519922478324330286

/-! ## A134956.P9007771864148180855

`abs(Δ[A000225(n)]*A134954(n))`
-/

namespace A134956.P9007771864148180855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A134954 n|

end

end A134956.P9007771864148180855

/-! ## A134956.P9749490629373380014

`A134954(n)/A030019(n)*A134958(n)`
-/

namespace A134956.P9749490629373380014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134954 n : ℚ) / (A030019 n : ℚ) * (A134958 n : ℚ)

end

end A134956.P9749490629373380014

/-! ## A134956.P16215257179792130364

`A134954(n)*A183402(A000124(n))`
-/

namespace A134956.P16215257179792130364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134954 n * A183402 (A000124 n).toNat

end

end A134956.P16215257179792130364

/-! ## A134956.P15720316188008417286

`A134954(n)*A217895(A000079(n))`
-/

namespace A134956.P15720316188008417286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134954 n * A217895 (A000079 n).toNat

end

end A134956.P15720316188008417286

/-!
# A134957: Number of hyperforests with n unlabeled vertices: analog of A134955 when edges of size 1 are allowed (with no two equal edges).

The programs for A134957, there is no canonical definition to state claims against.
-/

/-! ## A134957.P12508406872021392799

`∑[A304977(n)]`
-/

namespace A134957.P12508406872021392799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134957.P12508406872021392799

/-! ## A134957.P309678618731480025

`∑[A004526(A345937(n+1)+A286761(n))]`
-/

namespace A134957.P309678618731480025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A345937 (n + 1) + A286761 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134957.P309678618731480025

/-!
# A134958: Number of hypertrees with n labeled vertices: analog of A030019 when edges of size 1 are allowed (with no two equal edges).

The programs for A134958, there is no canonical definition to state claims against.
-/

/-! ## A134958.P11298105575124506315

`2^n*A030019(n)`
-/

namespace A134958.P11298105575124506315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A030019 n

end

end A134958.P11298105575124506315

/-! ## A134958.P11760648050087181684

`A030019(n)*A056503(2*n+1)`
-/

namespace A134958.P11760648050087181684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030019 n * A056503 (2 * n + 1)

end

end A134958.P11760648050087181684

/-! ## A134958.P12985743614551306041

`A030019(n)*A059268(A034856(n+1))`
-/

namespace A134958.P12985743614551306041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030019 n * A059268 (A034856 (n + 1)).toNat

end

end A134958.P12985743614551306041

/-! ## A134958.P14910980689171087370

`A035051(A233583(n+1))/A233583(n+1)*2^n`
-/

namespace A134958.P14910980689171087370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035051 (A233583 (n + 1)).toNat : ℚ) / (A233583 (n + 1) : ℚ) * (2 ^ n : ℚ)

end

end A134958.P14910980689171087370

/-! ## A134958.P13994830418302853732

`A000079(n)*A189233(A001105(n))/A028310(n)`
-/

namespace A134958.P13994830418302853732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A189233 (A001105 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A134958.P13994830418302853732

/-!
# A134959: Number of spanning hypertrees with n unlabeled vertices: analog of A035053 when edges of size 1 are allowed (with no two equal edges).

The programs for A134959, there is no canonical definition to state claims against.
-/

/-! ## A134959.P17269072182727082866

`A103221(A236602(n+1)+A099263(n+2))`
-/

namespace A134959.P17269072182727082866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A236602 (n + 1) + A099263 (n + 2)).toNat

end

end A134959.P17269072182727082866

/-! ## A134959.P6471444560948899195

`5*A195081(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A134959.P6471444560948899195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  5 * A195081 (a (n - 1)).toNat

end

end A134959.P6471444560948899195

/-!
# A134960: a(n) = n*453060.

The programs for A134960, the canonical program `A134960.P9973488464711806881` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134960 has offset 0).

The definition of A134960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134960.P9973488464711806881

`540*A135639(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134960

/-- `540*A135639(n)` -/
def P9973488464711806881.Spec : Prop :=
  ∀ n, P9973488464711806881.a n = A134960 n

theorem P9973488464711806881.correct : P9973488464711806881.Spec := by
  intro n
  simp only [A134960]

end A134960

/-!
# A134964: Number of unlabeled n-node simple graphs with at most one cycle in each connected component.

The programs for A134964, there is no canonical definition to state claims against.
-/

/-! ## A134964.P3960132378916362661

`∑[A368834(n)]`
-/

namespace A134964.P3960132378916362661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134964.P3960132378916362661

/-! ## A134964.P12065415113601018735

`A000088(n)-A140637(round(acot(n)+n))`
-/

namespace A134964.P12065415113601018735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A140637 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A134964.P12065415113601018735

/-! ## A134964.P444120729546266215

`A000088(n)-A140637(A028310(n))`
-/

namespace A134964.P444120729546266215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A140637 (A028310 n).toNat

end

end A134964.P444120729546266215

/-! ## A134964.P11556991593962188192

`∑[A002494(n)]-A140637(A028310(n))`
-/

namespace A134964.P11556991593962188192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A140637 (A028310 n).toNat

end

end A134964.P11556991593962188192

/-! ## A134964.P12755930246404388153

`A294217(A000124(n))-A140637(A028310(n))`
-/

namespace A134964.P12755930246404388153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294217 (A000124 n).toNat - A140637 (A028310 n).toNat

end

end A134964.P12755930246404388153

/-!
# A134965: a(1)=3, a(n) = a(n-1) + 7 + 2*mod(n-1, 2) for n>=2.

The programs for A134965, the canonical program `A134965.P11572179701738466426` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134965 has offset 1).

The definition of A134965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+7+2*n%2` (program `A134965.P11572179701738466426`, by `A134965.P11572179701738466426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134965.P16061017565335551604

`8*(n+1)-4-(n+1)%2`
-/

namespace A134965.P16061017565335551604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - 4 - (((n + 1) % 2 : ℕ) : ℤ)

end

end A134965.P16061017565335551604

namespace A134965

/-- `8*(n+1)-4-(n+1)%2` -/
def P16061017565335551604.Spec : Prop :=
  ∀ n, P16061017565335551604.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P11572179701738466426

`a(n-1)+7+2*n%2` with `a(0)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134965

/-- `a(n-1)+7+2*n%2` -/
def P11572179701738466426.Spec : Prop :=
  ∀ n, (P11572179701738466426.a n : ℤ) = A134965 (n + 1)

theorem P11572179701738466426.correct : P11572179701738466426.Spec := by
  intro n
  simp only [A134965, Nat.add_sub_cancel]

end A134965

/-! ## A134965.P4208594933450668427

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=12, a(2)=19`
-/

namespace A134965.P4208594933450668427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 19] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A134965.P4208594933450668427

namespace A134965

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P4208594933450668427.Spec : Prop :=
  ∀ n, P4208594933450668427.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P10959301207627442918

`a(n-2)+16` with `a(0)=3, a(1)=12`
-/

namespace A134965.P10959301207627442918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 12] fun n a =>
  a (n - 2) + 16

end

end A134965.P10959301207627442918

namespace A134965

/-- `a(n-2)+16` -/
def P10959301207627442918.Spec : Prop :=
  ∀ n, (P10959301207627442918.a n : ℤ) = A134965 (n + 1)

end A134965

/-! ## A134965.P11954603243924046331

`∑[8-(-1)^n]-4`
-/

namespace A134965.P11954603243924046331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A134965.P11954603243924046331

namespace A134965

/-- `∑[8-(-1)^n]-4` -/
def P11954603243924046331.Spec : Prop :=
  ∀ n, P11954603243924046331.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P11868289024133862676

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=9, a(2)=7`
-/

namespace A134965.P11868289024133862676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9, 7] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134965.P11868289024133862676

namespace A134965

/-- `∑[abs(a(n-2))]` -/
def P11868289024133862676.Spec : Prop :=
  ∀ n, (P11868289024133862676.a n : ℤ) = A134965 (n + 1)

end A134965

/-! ## A134965.P10773678982199092198

`∑[16-a(n-1)]` with `a(0)=3, a(1)=9`
-/

namespace A134965.P10773678982199092198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n f1 =>
  16 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134965.P10773678982199092198

namespace A134965

/-- `∑[16-a(n-1)]` -/
def P10773678982199092198.Spec : Prop :=
  ∀ n, P10773678982199092198.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P6765676426807978276

`∑[∑[ogf((3+9x+4x^2)/(1+x))]]`
-/

namespace A134965.P6765676426807978276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134965.P6765676426807978276

namespace A134965

/-- `∑[∑[ogf((3+9x+4x^2)/(1+x))]]` -/
def P6765676426807978276.Spec : Prop :=
  ∀ n, P6765676426807978276.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P11877247621588804172

`ogf((3+9x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A134965.P11877247621588804172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9, 4] [1, -1, -1, 1] n

end

end A134965.P11877247621588804172

namespace A134965

/-- `ogf((3+9x+4x^2)/(1-x-x^2+x^3))` -/
def P11877247621588804172.Spec : Prop :=
  ∀ n, P11877247621588804172.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P13072360484193605591

`abs(and(1, n+1)-4*(2*n+1))`
-/

namespace A134965.P13072360484193605591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.land 1 (n + 1) : ℤ) - (4 * (2 * n + 1) : ℤ)|

end

end A134965.P13072360484193605591

namespace A134965

/-- `abs(and(1, n+1)-4*(2*n+1))` -/
def P13072360484193605591.Spec : Prop :=
  ∀ n, P13072360484193605591.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P6690835278244278563

`∑[2*A103947(n)+1]`
-/

namespace A134965.P6690835278244278563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103947 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134965.P6690835278244278563

namespace A134965

/-- `∑[2*A103947(n)+1]` -/
def P6690835278244278563.Spec : Prop :=
  ∀ n, P6690835278244278563.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P13180695310744871879

`∑[A091694(a(n-1))]` with `a(0)=3`
-/

namespace A134965.P13180695310744871879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A091694 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134965.P13180695310744871879

namespace A134965

/-- `∑[A091694(a(n-1))]` -/
def P13180695310744871879.Spec : Prop :=
  ∀ n, P13180695310744871879.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P16011266906204672596

`∑[A238324(a(n-1))]` with `a(0)=3`
-/

namespace A134965.P16011266906204672596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A238324 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134965.P16011266906204672596

namespace A134965

/-- `∑[A238324(a(n-1))]` -/
def P16011266906204672596.Spec : Prop :=
  ∀ n, P16011266906204672596.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P12716055088320441180

`xor(7, A317331(2*n+1))`
-/

namespace A134965.P12716055088320441180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A317331 (2 * n + 1))

end

end A134965.P12716055088320441180

namespace A134965

/-- `xor(7, A317331(2*n+1))` -/
def P12716055088320441180.Spec : Prop :=
  ∀ n, P12716055088320441180.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P8261267192258421403

`xor(2, A113801(n+1)+n)`
-/

namespace A134965.P8261267192258421403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A113801 (n + 1) + (n : ℤ))

end

end A134965.P8261267192258421403

namespace A134965

/-- `xor(2, A113801(n+1)+n)` -/
def P8261267192258421403.Spec : Prop :=
  ∀ n, P8261267192258421403.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P9984482899700581477

`xor(A008590(n), A010702(n))`
-/

namespace A134965.P9984482899700581477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008590 n) (A010702 n)

end

end A134965.P9984482899700581477

namespace A134965

/-- `xor(A008590(n), A010702(n))` -/
def P9984482899700581477.Spec : Prop :=
  ∀ n, P9984482899700581477.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P1090582672860487416

`xor(A010695(n), A017077(n))`
-/

namespace A134965.P1090582672860487416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010695 n) (A017077 n)

end

end A134965.P1090582672860487416

namespace A134965

/-- `xor(A010695(n), A017077(n))` -/
def P1090582672860487416.Spec : Prop :=
  ∀ n, P1090582672860487416.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P4231348310054566191

`xor(A010678(n), A017101(n))`
-/

namespace A134965.P4231348310054566191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010678 n) (A017101 n)

end

end A134965.P4231348310054566191

namespace A134965

/-- `xor(A010678(n), A017101(n))` -/
def P4231348310054566191.Spec : Prop :=
  ∀ n, P4231348310054566191.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P15236942724935010443

`xor(A010687(n), A017089(n))`
-/

namespace A134965.P15236942724935010443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010687 n) (A017089 n)

end

end A134965.P15236942724935010443

namespace A134965

/-- `xor(A010687(n), A017089(n))` -/
def P15236942724935010443.Spec : Prop :=
  ∀ n, P15236942724935010443.a n = A134965 (n + 1)

end A134965

/-! ## A134965.P13487061506136226734

`xor(A173512(n), A176415(n))`
-/

namespace A134965.P13487061506136226734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A173512 n) (A176415 n)

end

end A134965.P13487061506136226734

namespace A134965

/-- `xor(A173512(n), A176415(n))` -/
def P13487061506136226734.Spec : Prop :=
  ∀ n, P13487061506136226734.a n = A134965 (n + 1)

end A134965

/-!
# A134966: Primes that use all of the prime digits 2,3,5,7 exactly once.

The programs for A134966, there is no canonical definition to state claims against.
-/

/-! ## A134966.P384552243262865497

`A108419(comp[9*n])`
-/

namespace A134966.P384552243262865497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108419 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A134966.P384552243262865497

/-! ## A134966.P14718857992858820388

`A108419(n+1)+char[8]`
-/

namespace A134966.P14718857992858820388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108419 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134966.P14718857992858820388

/-! ## A134966.P13353133300816928034

`record[A108419(A350840(n))]`
-/

namespace A134966.P13353133300816928034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108419 (A350840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134966.P13353133300816928034

/-! ## A134966.P1887050434233414580

`A331173(A108419(n+1))`
-/

namespace A134966.P1887050434233414580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331173 (A108419 (n + 1)).toNat

end

end A134966.P1887050434233414580

/-!
# A134967: List of quadruples: [-2n-1, 2n+2, -2n-1, 2n+2].

The programs for A134967, the canonical program `A134967.P12260798682208384625` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134967 has offset 0).

The definition of A134967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134967.P12260798682208384625

`(1-(2*n+3)*(-1)^n-2*(-1)^((2*n+1-(-1)^n)/4))/4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134967

/-- `(1-(2*n+3)*(-1)^n-2*(-1)^((2*n+1-(-1)^n)/4))/4` -/
def P12260798682208384625.Spec : Prop :=
  ∀ n, P12260798682208384625.a n = (A134967 n : ℝ)

end A134967

/-! ## A134967.P13166428276777998161

`(-1)^∑[∑[n+1]]-a(n-1)` with `a(0)=-1`
-/

namespace A134967.P13166428276777998161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A134967.P13166428276777998161

namespace A134967

/-- `(-1)^∑[∑[n+1]]-a(n-1)` -/
def P13166428276777998161.Spec : Prop :=
  ∀ n, P13166428276777998161.a n = A134967 n

end A134967

/-! ## A134967.P15388470213053236635

`Δ[C(and(n+2, n+3), n)/(n+1)]`
-/

namespace A134967.P15388470213053236635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.land (n + 2) (n + 3)) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134967.P15388470213053236635

namespace A134967

/-- `Δ[C(and(n+2, n+3), n)/(n+1)]` -/
def P15388470213053236635.Spec : Prop :=
  ∀ n, P15388470213053236635.a n = (A134967 n : ℚ)

end A134967

/-! ## A134967.P10214192928199280502

`A001057(or(2, n))`
-/

namespace A134967.P10214192928199280502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Nat.lor 2 n)

end

end A134967.P10214192928199280502

namespace A134967

/-- `A001057(or(2, n))` -/
def P10214192928199280502.Spec : Prop :=
  ∀ n, P10214192928199280502.a n = A134967 n

end A134967

/-! ## A134967.P11402739712021534187

`A167817(n)-(a(n-1)+2)` with `a(0)=-1`
-/

namespace A134967.P11402739712021534187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  A167817 n - (a (n - 1) + 2)

end

end A134967.P11402739712021534187

namespace A134967

/-- `A167817(n)-(a(n-1)+2)` -/
def P11402739712021534187.Spec : Prop :=
  ∀ n, P11402739712021534187.a n = A134967 n

end A134967

/-! ## A134967.P18336056426740791506

`Δ[A008683(gcd(a(n-1), a(n-2)))+a(n-2)]` with `a(0)=2, a(1)=1`
-/

namespace A134967.P18336056426740791506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A008683 (Int.gcd (f1 (n - 1)) (f1 (n - 2))) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134967.P18336056426740791506

namespace A134967

/-- `Δ[A008683(gcd(a(n-1), a(n-2)))+a(n-2)]` -/
def P18336056426740791506.Spec : Prop :=
  ∀ n, P18336056426740791506.a n = A134967 n

end A134967

/-! ## A134967.P8648708398799315023

`A001057(A174091(n))`
-/

namespace A134967.P8648708398799315023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A174091 n).toNat

end

end A134967.P8648708398799315023

namespace A134967

/-- `A001057(A174091(n))` -/
def P8648708398799315023.Spec : Prop :=
  ∀ n, P8648708398799315023.a n = A134967 n

end A134967

/-! ## A134967.P9684401412322099806

`A001057(n)-A219977(n)`
-/

namespace A134967.P9684401412322099806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - A219977 n

end

end A134967.P9684401412322099806

namespace A134967

/-- `A001057(n)-A219977(n)` -/
def P9684401412322099806.Spec : Prop :=
  ∀ n, P9684401412322099806.a n = A134967 n

end A134967

/-! ## A134967.P15773671836785838268

`A001057(A057077(n)+1+n)`
-/

namespace A134967.P15773671836785838268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A057077 n + 1 + (n : ℤ)).toNat

end

end A134967.P15773671836785838268

namespace A134967

/-- `A001057(A057077(n)+1+n)` -/
def P15773671836785838268.Spec : Prop :=
  ∀ n, P15773671836785838268.a n = A134967 n

end A134967

/-! ## A134967.P8974444949399160373

`A003815(n)-A319556(n+1)`
-/

namespace A134967.P8974444949399160373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n - A319556 (n + 1)

end

end A134967.P8974444949399160373

namespace A134967

/-- `A003815(n)-A319556(n+1)` -/
def P8974444949399160373.Spec : Prop :=
  ∀ n, P8974444949399160373.a n = A134967 n

end A134967

/-! ## A134967.P3498972248287121656

`A001057(2*A133872(n)+n)`
-/

namespace A134967.P3498972248287121656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A133872 n + (n : ℤ)).toNat

end

end A134967.P3498972248287121656

namespace A134967

/-- `A001057(2*A133872(n)+n)` -/
def P3498972248287121656.Spec : Prop :=
  ∀ n, P3498972248287121656.a n = A134967 n

end A134967

/-! ## A134967.P15164589505293582945

`A047250(n+1)-A133090(n+1)`
-/

namespace A134967.P15164589505293582945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (n + 1) - A133090 (n + 1)

end

end A134967.P15164589505293582945

namespace A134967

/-- `A047250(n+1)-A133090(n+1)` -/
def P15164589505293582945.Spec : Prop :=
  ∀ n, P15164589505293582945.a n = A134967 n

end A134967

/-! ## A134967.P5613374734742315697

`A001057(A133872(n)+A133872(n)+n)`
-/

namespace A134967.P5613374734742315697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A133872 n + (A133872 n + (n : ℤ))).toNat

end

end A134967.P5613374734742315697

namespace A134967

/-- `A001057(A133872(n)+A133872(n)+n)` -/
def P5613374734742315697.Spec : Prop :=
  ∀ n, P5613374734742315697.a n = A134967 n

end A134967

/-! ## A134967.P10980148112285821333

`A219977(A219977(n)+n)+A001057(n)`
-/

namespace A134967.P10980148112285821333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A219977 n + (n : ℤ)).toNat + A001057 n

end

end A134967.P10980148112285821333

namespace A134967

/-- `A219977(A219977(n)+n)+A001057(n)` -/
def P10980148112285821333.Spec : Prop :=
  ∀ n, P10980148112285821333.a n = A134967 n

end A134967

/-! ## A134967.P17668185986809065069

`2*A110654(A110654(n))-A193356(n+1)`
-/

namespace A134967.P17668185986809065069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110654 (A110654 n).toNat - A193356 (n + 1)

end

end A134967.P17668185986809065069

namespace A134967

/-- `2*A110654(A110654(n))-A193356(n+1)` -/
def P17668185986809065069.Spec : Prop :=
  ∀ n, P17668185986809065069.a n = A134967 n

end A134967

/-! ## A134967.P12321700758439658360

`xor(1, Δ[A110514(n)])`
-/

namespace A134967.P12321700758439658360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A134967.P12321700758439658360

namespace A134967

/-- `xor(1, Δ[A110514(n)])` -/
def P12321700758439658360.Spec : Prop :=
  ∀ n, P12321700758439658360.a n = A134967 n

end A134967

/-! ## A134967.P11133117650193898978

`xor(1, A110516(n+1))`
-/

namespace A134967.P11133117650193898978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A110516 (n + 1))

end

end A134967.P11133117650193898978

namespace A134967

/-- `xor(1, A110516(n+1))` -/
def P11133117650193898978.Spec : Prop :=
  ∀ n, P11133117650193898978.a n = A134967 n

end A134967

/-! ## A134967.P2772494344452691068

`A038608(A285869(n+1))`
-/

namespace A134967.P2772494344452691068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A285869 (n + 1)).toNat

end

end A134967.P2772494344452691068

namespace A134967

/-- `A038608(A285869(n+1))` -/
def P2772494344452691068.Spec : Prop :=
  ∀ n, P2772494344452691068.a n = A134967 n

end A134967

/-! ## A134967.P6823670778670201177

`Δ[A110514(n)+A000034(n)]`
-/

namespace A134967.P6823670778670201177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134967.P6823670778670201177

namespace A134967

/-- `Δ[A110514(n)+A000034(n)]` -/
def P6823670778670201177.Spec : Prop :=
  ∀ n, P6823670778670201177.a n = A134967 n

end A134967

/-! ## A134967.P8896530087616277888

`∑[A038608(n+1)-A056594(n+1)]`
-/

namespace A134967.P8896530087616277888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (n + 1) - A056594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134967.P8896530087616277888

namespace A134967

/-- `∑[A038608(n+1)-A056594(n+1)]` -/
def P8896530087616277888.Spec : Prop :=
  ∀ n, P8896530087616277888.a n = A134967 n

end A134967

/-!
# A134968: Number of convex functions from {1,...,n} to itself.

The programs for A134968, there is no canonical definition to state claims against.
-/

/-! ## A134968.P810304419585392412

`A298305(floor(11^n/∑[5^n]))`
-/

namespace A134968.P810304419585392412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298305 ⌊(11 ^ n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋.toNat

end

end A134968.P810304419585392412

/-! ## A134968.P13805640411736755310

`A243650(A019439(n))`
-/

namespace A134968.P13805640411736755310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243650 (A019439 n).toNat

end

end A134968.P13805640411736755310

/-!
# A134970: Canyon numbers. Numbers with exactly one locally minimal digit and with exactly two locally maximal digits which are the same digit and nonadjacent.

The programs for A134970, there is no canonical definition to state claims against.
-/

/-! ## A134970.P18262423072485865797

`∩[A193413(n+1), A183086(n+1)]`
-/

namespace A134970.P18262423072485865797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134970.P18262423072485865797

/-! ## A134970.P17548259100951410702

`∩[A193413(n+1), A297147(n+1)]`
-/

namespace A134970.P17548259100951410702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134970.P17548259100951410702

/-! ## A134970.P7799793492880616575

`A193412(n+10)`
-/

namespace A134970.P7799793492880616575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193412 (n + 10)

end

end A134970.P7799793492880616575

/-! ## A134970.P10535992609441764291

`A261423(A103652(n+1))`
-/

namespace A134970.P10535992609441764291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A103652 (n + 1)).toNat

end

end A134970.P10535992609441764291

/-!
# A134971: Canyon primes.

The programs for A134971, there is no canonical definition to state claims against.
-/

/-! ## A134971.P2274234623937165075

`∩[A134970(n+1), A183087(n+1)]`
-/

namespace A134971.P2274234623937165075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134971.P2274234623937165075

/-! ## A134971.P14552218363017845763

`p?[A134970(n+1)]`
-/

namespace A134971.P14552218363017845763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134971.P14552218363017845763

/-! ## A134971.P1750334911597584075

`∩[A077652(n+1), A134970(n+1)]`
-/

namespace A134971.P1750334911597584075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134971.P1750334911597584075

/-! ## A134971.P11876568543545258744

`∩[A077652(n+1), A183087(n+1)]`
-/

namespace A134971.P11876568543545258744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134971.P11876568543545258744

/-! ## A134971.P11673262948052784785

`∩[A183087(n+1), A193413(n+1)]`
-/

namespace A134971.P11673262948052784785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134971.P11673262948052784785

/-! ## A134971.P265062551851658487

`∩[A069706(n+1), A134970(n+1)]`
-/

namespace A134971.P265062551851658487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134971.P265062551851658487

/-! ## A134971.P3712437698315422233

`filter[A134970(n+1), A010051(#)]`
-/

namespace A134971.P3712437698315422233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A134971.P3712437698315422233

/-! ## A134971.P10559950316801520299

`∩[A000040(n+1), A134970(n+1)]`
-/

namespace A134971.P10559950316801520299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134971.P10559950316801520299

/-! ## A134971.P16179733723901956458

`∩[A052086(n+1), A134970(n+1)]`
-/

namespace A134971.P16179733723901956458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134971.P16179733723901956458

/-! ## A134971.P10798043147895348054

`∩[A073064(n+1), A134970(n+1)]`
-/

namespace A134971.P10798043147895348054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134971.P10798043147895348054

/-! ## A134971.P5487421393066009714

`record[A020639(A134970(4/2+n-1))]`
-/

namespace A134971.P5487421393066009714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A134970 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + ((n : ℤ) - 1 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134971.P5487421393066009714

/-! ## A134971.P7786220855249857571

`A000265(record[A020639(A134970(n+1))])`
-/

namespace A134971.P7786220855249857571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A134970 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A134971.P7786220855249857571

/-! ## A134971.P8360891900051545652

`record[A000007(n+1)+A020639(A134970(n+1))]`
-/

namespace A134971.P8360891900051545652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A020639 (A134970 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134971.P8360891900051545652

/-! ## A134971.P906784976532141951

`record[A020639(A134970(n+1))%A024408(n+1)]`
-/

namespace A134971.P906784976532141951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A134970 (n + 1)).toNat) (A024408 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134971.P906784976532141951

/-! ## A134971.P15438474994351423546

`record[A020639(A134970(n+1)%A134951(n+1))]`
-/

namespace A134971.P15438474994351423546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A134970 (n + 1)) (A134951 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134971.P15438474994351423546

/-! ## A134971.P324129233761566326

`record[A020639(A134970(n+1))]+A008683(4*(n+1))`
-/

namespace A134971.P324129233761566326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A134970 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A008683 (4 * (n + 1))

end

end A134971.P324129233761566326

/-! ## A134971.P17050136466212519563

`A000045((-1)^(2*n))*record[A020639(A134970(n+1))]`
-/

namespace A134971.P17050136466212519563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A134970 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ (2 * n)).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134971.P17050136466212519563

/-!
# A134972: Decimal expansion of 2 divided by golden ratio = 2/phi = 4/(1 + sqrt(5)) = 2*(-1 + phi).

The programs for A134972, there is no canonical definition to state claims against.
-/

/-! ## A134972.P2088163831448186799

`A002163(n)-A000007(n)`
-/

namespace A134972.P2088163831448186799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) - A000007 n

end

end A134972.P2088163831448186799

/-! ## A134972.P3226748890566029829

`A002163(n)/A054977(n)`
-/

namespace A134972.P3226748890566029829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002163 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A134972.P3226748890566029829

/-! ## A134972.P1799539202752688680

`A002163(n)/A000038(n)!`
-/

namespace A134972.P1799539202752688680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002163 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A134972.P1799539202752688680

/-! ## A134972.P13243117125072077369

`dr(A002163(n)*A040020(n))`
-/

namespace A134972.P13243117125072077369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002163 (n + 1) * A040020 n)

end

end A134972.P13243117125072077369

/-! ## A134972.P7993279817989161337

`2*A002163(n)-A134945(n)`
-/

namespace A134972.P7993279817989161337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002163 (n + 1) - A134945 (n + 1)

end

end A134972.P7993279817989161337

/-! ## A134972.P17725962097196302970

`A040002(n)+A134945(n)-4`
-/

namespace A134972.P17725962097196302970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n + (A134945 (n + 1) - 4)

end

end A134972.P17725962097196302970

/-! ## A134972.P18217983916269499405

`2*A098317(n)-A242671(n)`
-/

namespace A134972.P18217983916269499405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098317 (n + 1) - A242671 n

end

end A134972.P18217983916269499405

/-! ## A134972.P3795342132085929482

`A002163(n)/4*A040002(n)`
-/

namespace A134972.P3795342132085929482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002163 (n + 1) : ℚ) / 4 * (A040002 n : ℚ)

end

end A134972.P3795342132085929482

/-! ## A134972.P10945193851789382676

`dr(A040012(n)²*A098317(n))`
-/

namespace A134972.P10945193851789382676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040012 n ^ 2 * A098317 (n + 1))

end

end A134972.P10945193851789382676

/-! ## A134972.P5147717665498036992

`A002163(n)-A008683(A008574(n))`
-/

namespace A134972.P5147717665498036992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) - A008683 (A008574 n).toNat

end

end A134972.P5147717665498036992

/-! ## A134972.P5199414924319472821

`A002163(n)^A019425(A019425(n))`
-/

namespace A134972.P5199414924319472821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002163 (n + 1) : ℚ) ^ (A019425 (A019425 n).toNat : ℤ)

end

end A134972.P5199414924319472821

/-! ## A134972.P6851711812237788747

`A002163(n)^A001221(A267584(n))`
-/

namespace A134972.P6851711812237788747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002163 (n + 1) : ℚ) ^ (A001221 (A267584 n).toNat : ℤ)

end

end A134972.P6851711812237788747

/-! ## A134972.P17037077397019732427

`A002163(n)+A004956(n)-A026351(n)`
-/

namespace A134972.P17037077397019732427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + (A004956 n - A026351 n)

end

end A134972.P17037077397019732427

/-! ## A134972.P16741943682804398904

`A002163(n)+A004957(n)-A026352(n)`
-/

namespace A134972.P16741943682804398904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + (A004957 n - A026352 n)

end

end A134972.P16741943682804398904

/-! ## A134972.P717170768858058552

`A001622(n)+A002163(n)-A104457(n)`
-/

namespace A134972.P717170768858058552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (A002163 (n + 1) - A104457 (n + 1))

end

end A134972.P717170768858058552

/-! ## A134972.P4706120513642420348

`A002163(n)+A094874(n)-A079585(n)`
-/

namespace A134972.P4706120513642420348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + (A094874 (n + 1) - A079585 (n + 1))

end

end A134972.P4706120513642420348

/-! ## A134972.P7136506832650852350

`A123932(n)+A134945(n)-A255176(n)`
-/

namespace A134972.P7136506832650852350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n + (A134945 (n + 1) - A255176 n)

end

end A134972.P7136506832650852350

/-! ## A134972.P654159101335791023

`A079585(n)+A242671(n)-A109866(n+1)`
-/

namespace A134972.P654159101335791023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1) + (A242671 n - A109866 (n + 1))

end

end A134972.P654159101335791023

/-!
# A134973: Decimal expansion of 3/phi = 6/(1 + sqrt(5)).

The programs for A134973, there is no canonical definition to state claims against.
-/

/-! ## A134973.P3549393775567845618

`A090550(xor(xor(n, a(n-1)), a(n-1)))` with `a(0)=1`
-/

namespace A134973.P3549393775567845618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090550 ((Int.xor (Int.xor (n : ℤ) (a (n - 1))) (a (n - 1))).toNat + 1)

end

end A134973.P3549393775567845618

/-! ## A134973.P1242931547926134411

`gcd(A000038(n), A090550(n))`
-/

namespace A134973.P1242931547926134411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A090550 (n + 1))

end

end A134973.P1242931547926134411

/-! ## A134973.P16022993354430234661

`A090550(A000038(n)²+n)`
-/

namespace A134973.P16022993354430234661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090550 ((A000038 n ^ 2 + (n : ℤ)).toNat + 1)

end

end A134973.P16022993354430234661

/-! ## A134973.P15507605720564066676

`A090550(2*A000038(n)+n)`
-/

namespace A134973.P15507605720564066676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090550 ((2 * A000038 n + (n : ℤ)).toNat + 1)

end

end A134973.P15507605720564066676

/-! ## A134973.P11001542121469901085

`A090550(n)/gcd(5, A002144(n+1))`
-/

namespace A134973.P11001542121469901085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090550 (n + 1) : ℚ) / (Int.gcd 5 (A002144 (n + 1)) : ℚ)

end

end A134973.P11001542121469901085

/-! ## A134973.P16941812862121847481

`A090550(A000038(n)+A000038(n)+n)`
-/

namespace A134973.P16941812862121847481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090550 ((A000038 n + (A000038 n + (n : ℤ))).toNat + 1)

end

end A134973.P16941812862121847481

/-! ## A134973.P460924035045393112

`A090550(n)^(A002144(n+1)%A005098(n+1))`
-/

namespace A134973.P460924035045393112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090550 (n + 1) : ℚ) ^ (Int.tmod (A002144 (n + 1)) (A005098 (n + 1)) : ℤ)

end

end A134973.P460924035045393112

/-! ## A134973.P10104883418369271266

`A205769(n+2)+A374883(n)-A377697(n+1)`
-/

namespace A134973.P10104883418369271266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205769 (n + 2) + (A374883 (n + 1) - A377697 (n + 1 + 1))

end

end A134973.P10104883418369271266

/-! ## A134973.P6328850514285094991

`A090550(n)^A001221(A061345(n))`
-/

namespace A134973.P6328850514285094991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090550 (n + 1) : ℚ) ^ (A001221 (A061345 n).toNat : ℤ)

end

end A134973.P6328850514285094991

/-! ## A134973.P2305881762596989801

`A090550(n)^A001221(A008578(n+1))`
-/

namespace A134973.P2305881762596989801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090550 (n + 1) : ℚ) ^ (A001221 (A008578 (n + 1)).toNat : ℤ)

end

end A134973.P2305881762596989801

/-! ## A134973.P9600203751301515600

`A090550(n)/A176260(A062545(n))`
-/

namespace A134973.P9600203751301515600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090550 (n + 1) : ℚ) / (A176260 (A062545 n).toNat : ℚ)

end

end A134973.P9600203751301515600

/-!
# A134974: Decimal expansion of 4*(-1 + phi) = 4*A094214, where the golden ratio phi = A001622.

The programs for A134974, there is no canonical definition to state claims against.
-/

/-! ## A134974.P16136685623781776349

`A010476(n)-A000038(n)`
-/

namespace A134974.P16136685623781776349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010476 (n + 1) - A000038 n

end

end A134974.P16136685623781776349

/-! ## A134974.P10565480432497350723

`A010476(n)+A040002(n)-4`
-/

namespace A134974.P10565480432497350723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010476 (n + 1) + (A040002 n - 4)

end

end A134974.P10565480432497350723

/-! ## A134974.P8969611834250491408

`A010476(n)/(3-A040001(2*n))`
-/

namespace A134974.P8969611834250491408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (3 - A040001 (2 * n) : ℚ)

end

end A134974.P8969611834250491408

/-! ## A134974.P11748971476682011204

`A010476(n)/(12/2)²*A040306(n)`
-/

namespace A134974.P11748971476682011204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / ((12 : ℚ) / 2) ^ 2 * (A040306 n : ℚ)

end

end A134974.P11748971476682011204

/-! ## A134974.P7902993089223265049

`A010476(n)/A035214(A001316(n))`
-/

namespace A134974.P7902993089223265049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A035214 (A001316 n).toNat : ℚ)

end

end A134974.P7902993089223265049

/-! ## A134974.P6790561680985460723

`A010476(n)/A007318(Δ[A027709(n)])`
-/

namespace A134974.P6790561680985460723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A007318 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A134974.P6790561680985460723

/-! ## A134974.P114057414206566047

`A010476(n)/A081604(Δ[A027709(n)])`
-/

namespace A134974.P114057414206566047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A081604 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A134974.P114057414206566047

/-! ## A134974.P8519332009320514349

`A010476(n)/A329683(Δ[A027709(n)])`
-/

namespace A134974.P8519332009320514349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A329683 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A134974.P8519332009320514349

/-! ## A134974.P7749125732802955923

`A010476(n)/A010698(n+1)*A040015(n)`
-/

namespace A134974.P7749125732802955923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A010698 (n + 1) : ℚ) * (A040015 n : ℚ)

end

end A134974.P7749125732802955923

/-! ## A134974.P9379577337065738206

`A010476(n)/A040210(n+1)*A040210(n)`
-/

namespace A134974.P9379577337065738206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A040210 (n + 1) : ℚ) * (A040210 n : ℚ)

end

end A134974.P9379577337065738206

/-! ## A134974.P13741420103613340146

`A010476(n)/A040600(n+1)*A040600(n)`
-/

namespace A134974.P13741420103613340146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A040600 (n + 1) : ℚ) * (A040600 n : ℚ)

end

end A134974.P13741420103613340146

/-! ## A134974.P7896928668336652414

`A010476(n)/A040650(n+1)*A040650(n)`
-/

namespace A134974.P7896928668336652414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A040650 (n + 1) : ℚ) * (A040650 n : ℚ)

end

end A134974.P7896928668336652414

/-! ## A134974.P18433677368611799947

`A010476(n)/A255176(n+1)*A040002(n)`
-/

namespace A134974.P18433677368611799947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A255176 (n + 1) : ℚ) * (A040002 n : ℚ)

end

end A134974.P18433677368611799947

/-! ## A134974.P15176413110384650863

`A344212(n+1)-A000122(n+1)*A000122(n)`
-/

namespace A134974.P15176413110384650863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344212 (n + 1 + 1) - A000122 (n + 1) * A000122 n

end

end A134974.P15176413110384650863

/-! ## A134974.P14359899461132614392

`A010476(n)/A040001(A016789(n))*A040001(n)`
-/

namespace A134974.P14359899461132614392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A040001 (A016789 n).toNat : ℚ) * (A040001 n : ℚ)

end

end A134974.P14359899461132614392

/-! ## A134974.P8922929879655194422

`gcd(A000038(A005843(n)), A010476(n))`
-/

namespace A134974.P8922929879655194422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A005843 n).toNat) (A010476 (n + 1))

end

end A134974.P8922929879655194422

/-! ## A134974.P13296607475354188778

`A010476(n)/A000034(A103517(n))`
-/

namespace A134974.P13296607475354188778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A000034 (A103517 n).toNat : ℚ)

end

end A134974.P13296607475354188778

/-! ## A134974.P12334448002603161109

`A010476(n)/A014963(A016825(n))`
-/

namespace A134974.P12334448002603161109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A014963 (A016825 n).toNat : ℚ)

end

end A134974.P12334448002603161109

/-! ## A134974.P17926559123759850000

`A010476(n)/A040001(p?[A001651(n+1)])`
-/

namespace A134974.P17926559123759850000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010476 (n + 1) : ℚ) / (A040001 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ)

end

end A134974.P17926559123759850000

/-!
# A134975: Weight distribution of [127,64,19] binary quadratic-residue (or QR) code.

The programs for A134975, there is no canonical definition to state claims against.
-/

/-! ## A134975.P13028725296151810000

`A151838(n)/A008578(A084950(n))`
-/

namespace A134975.P13028725296151810000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151838 n : ℚ) / (A008578 (A084950 n).toNat : ℚ)

end

end A134975.P13028725296151810000

/-! ## A134975.P7837453475834001108

`A004177(A151838(n)/A099627(n))`
-/

namespace A134975.P7837453475834001108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (SequenceMachineLib.roundAway ((A151838 n : ℚ) / (A099627 n : ℚ))).toNat

end

end A134975.P7837453475834001108

/-! ## A134975.P3008099514721992222

`A009531(A151838(n)/A099627(n))`
-/

namespace A134975.P3008099514721992222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (SequenceMachineLib.roundAway ((A151838 n : ℚ) / (A099627 n : ℚ))).toNat

end

end A134975.P3008099514721992222

/-! ## A134975.P2902701220910833110

`A055615(A096781(n+1)*A344275(n+1))`
-/

namespace A134975.P2902701220910833110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A096781 (n + 1) * A344275 (n + 1)).toNat

end

end A134975.P2902701220910833110

/-!
# A134976: Decimal expansion of (6 divided by golden ratio = 6/phi = 12/(1 + sqrt(5))).

The programs for A134976, there is no canonical definition to state claims against.
-/

/-! ## A134976.P4322033576789940145

`A010499(n)/floor(ratio[n+1])`
-/

namespace A134976.P4322033576789940145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010499 (n + 1) : ℚ) / (⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ : ℚ)

end

end A134976.P4322033576789940145

/-! ## A134976.P10324860500633978095

`floor(A010499(n)/A054977(n))`
-/

namespace A134976.P10324860500633978095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010499 (n + 1) : ℚ) / (A054977 n : ℚ)⌋

end

end A134976.P10324860500633978095

/-! ## A134976.P1081176612117290940

`A010499(n)/4*A040002(n)`
-/

namespace A134976.P1081176612117290940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010499 (n + 1) : ℚ) / 4 * (A040002 n : ℚ)

end

end A134976.P1081176612117290940

/-! ## A134976.P6966113179423902633

`A043529(2*n)/2*A010499(n)`
-/

namespace A134976.P6966113179423902633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043529 (2 * n) : ℚ) / 2 * (A010499 (n + 1) : ℚ)

end

end A134976.P6966113179423902633

/-! ## A134976.P6252938274518233420

`A010816(A000124(n))+A010499(n)`
-/

namespace A134976.P6252938274518233420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (A000124 n).toNat + A010499 (n + 1)

end

end A134976.P6252938274518233420

/-!
# A134977: Period 6: repeat [1, 4, 2, 3, 0, 2].

The programs for A134977, the canonical program `A134977.P15863794847279383415` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134977 has offset 0).

The definition of A134977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134977.P15863794847279383415

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134977

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P15863794847279383415.Spec : Prop :=
  ∀ n, P15863794847279383415.a n = A134977 n

theorem P15863794847279383415.correct : P15863794847279383415.Spec := by
  intro n
  simp only [A134977]

end A134977

/-!
# A134978: Number of 2 X 2 singular integer matrices with entries from {2,...,n}.

The programs for A134978, there is no canonical definition to state claims against.
-/

/-! ## A134978.P3143931931146286089

`A244644(A000788(∑[n]))`
-/

namespace A134978.P3143931931146286089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 (A000788 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A134978.P3143931931146286089

/-! ## A134978.P11353388375452799438

`A225600(A053644(n)*A203554(n))`
-/

namespace A134978.P11353388375452799438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225600 (A053644 n * A203554 n).toNat

end

end A134978.P11353388375452799438

/-!
# A134979: Triangle read by rows: T(n,k) = number of partitions of n where the maximum number of objects in partitions of any given size is k.

The programs for A134979, there is no canonical definition to state claims against.
-/

/-! ## A134979.P15667662418466033374

`A096771(n+1)-A014660(A276871(3*n+4))`
-/

namespace A134979.P15667662418466033374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096771 (n + 1) - A014660 (A276871 (3 * n + 4)).toNat

end

end A134979.P15667662418466033374

/-! ## A134979.P679878370765750919

`A326702(lcm(A061980(n), A123125(n)))`
-/

namespace A134979.P679878370765750919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (Int.lcm (A061980 n) (A123125 n))

end

end A134979.P679878370765750919

/-! ## A134979.P1788872448740127703

`A107259(A352372(n)+A107258(n+1))`
-/

namespace A134979.P1788872448740127703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107259 (A352372 n + A107258 (n + 1)).toNat

end

end A134979.P1788872448740127703

/-! ## A134979.P8193136711219599584

`A205745(A006508(n)*A144396(n+1))`
-/

namespace A134979.P8193136711219599584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (A006508 n * A144396 (n + 1)).toNat

end

end A134979.P8193136711219599584

/-! ## A134979.P18007670356463922430

`A323023(A044915(n+1))*A357638(n)`
-/

namespace A134979.P18007670356463922430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A044915 (n + 1)).toNat * A357638 n

end

end A134979.P18007670356463922430

/-!
# A134980: a(n) = Sum_{k=0..n} binomial(n,k)*n^(n-k)*A000110(k).

The programs for A134980, there is no canonical definition to state claims against.
-/

/-! ## A134980.P17869054385342672839

`A363429(2*n)`
-/

namespace A134980.P17869054385342672839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (2 * n)

end

end A134980.P17869054385342672839

/-! ## A134980.P12536625469000377615

`A363430(2*n)`
-/

namespace A134980.P12536625469000377615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363430 (2 * n)

end

end A134980.P12536625469000377615

/-! ## A134980.P14133344944415422030

`A108087(∑[4*n])`
-/

namespace A134980.P14133344944415422030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134980.P14133344944415422030

/-! ## A134980.P5157265472920718733

`record[A003982(n)*A108087(n)]`
-/

namespace A134980.P5157265472920718733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134980.P5157265472920718733

/-! ## A134980.P4301355118940484300

`record[A108087(gcd(n, A114327(n)))]`
-/

namespace A134980.P4301355118940484300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134980.P4301355118940484300

/-!
# A134981: a(n) = A000110(n)*A000166(n).

The programs for A134981, there is no canonical definition to state claims against.
-/

/-! ## A134981.P9350667348173549646

`A000110(n)*A000166(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134981.P9350667348173549646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A000166 n

end

end A134981.P9350667348173549646

/-! ## A134981.P14765728114140275543

`abs(A000110(n)*A182386(n))`
-/

namespace A134981.P14765728114140275543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000110 n * A182386 n|

end

end A134981.P14765728114140275543

/-! ## A134981.P2566344268650453388

`abs(A000166(n)*A292935(n))`
-/

namespace A134981.P2566344268650453388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000166 n * A292935 n|

end

end A134981.P2566344268650453388

/-! ## A134981.P12445607682922952109

`sqrt(A001247(n))*A000166(n)`
-/

namespace A134981.P12445607682922952109
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001247 n : ℝ) * (A000166 n : ℝ)

end

end A134981.P12445607682922952109

/-! ## A134981.P9594032067194449096

`A000110(n)*A008290(∑[n])`
-/

namespace A134981.P9594032067194449096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134981.P9594032067194449096

/-!
# A134982: Number of elements in the n-th column of Medeleiev's periodic system of elements.

The programs for A134982, there is no canonical definition to state claims against.
-/

/-! ## A134982.P11964264024949823408

`8-A056556(A135559(n+1))`
-/

namespace A134982.P11964264024949823408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A056556 (A135559 (n + 1)).toNat

end

end A134982.P11964264024949823408

/-!
# A134983: Number of ways of placing n rooks on an n X n chessboard with the topology of a Klein bottle.

The programs for A134983, there is no canonical definition to state claims against.
-/

/-! ## A134983.P12109971412052953840

`∑[A318932(A148482(n))]`
-/

namespace A134983.P12109971412052953840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318932 (A148482 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134983.P12109971412052953840

/-! ## A134983.P5995408518401096127

`A373847(A049144(n+2))`
-/

namespace A134983.P5995408518401096127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (A049144 (n + 2)).toNat

end

end A134983.P5995408518401096127

/-! ## A134983.P6022021277188318232

`A233569(∑[A307940(n+1)])`
-/

namespace A134983.P6022021277188318232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134983.P6022021277188318232

/-!
# A134984: The atomic numbers of the periodic table of the elements, read downwards along 32 columns.

The programs for A134984, there is no canonical definition to state claims against.
-/

/-! ## A134984.P16720677429292574773

`A138724(∑[∑[A015161(n)]])`
-/

namespace A134984.P16720677429292574773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138724 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134984.P16720677429292574773

/-! ## A134984.P10779586216718276757

`A233286(2^n)+A138724(n+1)`
-/

namespace A134984.P10779586216718276757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233286 (2 ^ n) + A138724 (n + 1)

end

end A134984.P10779586216718276757

/-! ## A134984.P6858486011333362359

`A138724(n+1)*A353682(2^n)`
-/

namespace A134984.P6858486011333362359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138724 (n + 1) * A353682 (2 ^ n)

end

end A134984.P6858486011333362359

/-! ## A134984.P12879760708770379727

`A138724(n+1)%A350756(2*(n+1))`
-/

namespace A134984.P12879760708770379727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138724 (n + 1)) (A350756 (2 * (n + 1)))

end

end A134984.P12879760708770379727

/-! ## A134984.P5055144839771555501

`A138724(n+1)+A014049(A005898(n))`
-/

namespace A134984.P5055144839771555501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138724 (n + 1) + A014049 (A005898 n).toNat

end

end A134984.P5055144839771555501

/-!
# A134985: Numbers k such that (k-1)^(k+1) - k^k is prime.

The programs for A134985, there is no canonical definition to state claims against.
-/

/-! ## A134985.P11549601724207273345

`A262857(A014466(n)+A005381(n+1))`
-/

namespace A134985.P11549601724207273345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262857 (A014466 n + A005381 (n + 1)).toNat

end

end A134985.P11549601724207273345

/-! ## A134985.P12714100576646693615

`A359202(A032219(n))+A155918(n+1)`
-/

namespace A134985.P12714100576646693615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359202 (A032219 n).toNat + A155918 (n + 1)

end

end A134985.P12714100576646693615

/-!
# A134986: a(n) = smallest integer m not equal to n such that n = (floor(n^2/m) + m)/2.

The programs for A134986, the canonical program `A134986.P3637412878226792524` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134986 has offset 1).

The definition of A134986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134986.P3637412878226792524

`1-floor(sqrt(a(n-2)))+n` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134986

/-- `1-floor(sqrt(a(n-2)))+n` -/
def P3637412878226792524.Spec : Prop :=
  ∀ n, P3637412878226792524.a n = A134986 (n + 1)

theorem P3637412878226792524.correct : P3637412878226792524.Spec := by
  intro n
  simp only [A134986, Nat.add_sub_cancel]

end A134986

/-! ## A134986.P11993382318527111629

`2-ceil(sqrt(a(n-1)))+n` with `a(0)=2, a(1)=3`
-/

namespace A134986.P11993382318527111629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 - ⌈Real.sqrt (a (n - 1) : ℝ)⌉ + (n : ℤ)

end

end A134986.P11993382318527111629

namespace A134986

/-- `2-ceil(sqrt(a(n-1)))+n` -/
def P11993382318527111629.Spec : Prop :=
  ∀ n, P11993382318527111629.a n = A134986 (n + 1)

end A134986

/-! ## A134986.P13031439956626483027

`n-(ceil(sqrt(a(n-1)))-2)` with `a(0)=2, a(1)=3`
-/

namespace A134986.P13031439956626483027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (n : ℤ) - (⌈Real.sqrt (a (n - 1) : ℝ)⌉ - 2)

end

end A134986.P13031439956626483027

namespace A134986

/-- `n-(ceil(sqrt(a(n-1)))-2)` -/
def P13031439956626483027.Spec : Prop :=
  ∀ n, P13031439956626483027.a n = A134986 (n + 1)

end A134986

/-! ## A134986.P64148862385035448

`n+1-floor(root(a(n-2), 2))` with `a(0)=2, a(1)=3`
-/

namespace A134986.P64148862385035448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (n + 1 : ℤ) - ⌊(a (n - 2) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A134986.P64148862385035448

namespace A134986

/-- `n+1-floor(root(a(n-2), 2))` -/
def P64148862385035448.Spec : Prop :=
  ∀ n, P64148862385035448.a n = A134986 (n + 1)

end A134986

/-! ## A134986.P14420023309674014722

`ceil(n+1-root(a(n-2), 2))` with `a(0)=2, a(1)=3`
-/

namespace A134986.P14420023309674014722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌈(n + 1 : ℝ) - (a (n - 2) : ℝ) ^ (1 / (2 : ℝ))⌉

end

end A134986.P14420023309674014722

namespace A134986

/-- `ceil(n+1-root(a(n-2), 2))` -/
def P14420023309674014722.Spec : Prop :=
  ∀ n, P14420023309674014722.a n = A134986 (n + 1)

end A134986

/-! ## A134986.P4447471679782917268

`abs(floor(sqrt(a(n-2)))-1-n)` with `a(0)=2, a(1)=3`
-/

namespace A134986.P4447471679782917268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  |Int.sqrt (a (n - 2)) - 1 - (n : ℤ)|

end

end A134986.P4447471679782917268

namespace A134986

/-- `abs(floor(sqrt(a(n-2)))-1-n)` -/
def P4447471679782917268.Spec : Prop :=
  ∀ n, P4447471679782917268.a n = A134986 (n + 1)

end A134986

/-! ## A134986.P13153189856174007705

`n+2-round(sqrt(n+1))%or(1, n)`
-/

namespace A134986.P13153189856174007705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))) (Nat.lor 1 n : ℤ)

end

end A134986.P13153189856174007705

namespace A134986

/-- `n+2-round(sqrt(n+1))%or(1, n)` -/
def P13153189856174007705.Spec : Prop :=
  ∀ n, P13153189856174007705.a n = A134986 (n + 1)

end A134986

/-! ## A134986.P13319634432237503430

`ceil(sqrt(n²+4))-(round(sqrt(n+1))-1)`
-/

namespace A134986.P13319634432237503430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉ - (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)

end

end A134986.P13319634432237503430

namespace A134986

/-- `ceil(sqrt(n²+4))-(round(sqrt(n+1))-1)` -/
def P13319634432237503430.Spec : Prop :=
  ∀ n, P13319634432237503430.a n = A134986 (n + 1)

end A134986

/-!
# A134987: Third extended Jacobsthal recurrence: a(n)=4a(n-1)-6(n-2)+4a(n-3)-a(n-4)+2a(n-5).

The programs for A134987, there is no canonical definition to state claims against.
-/

/-! ## A134987.P7518786522173974327

`∑[A143824(2^n-∑[C(n, 2)+1])]`
-/

namespace A134987.P7518786522173974327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (2 ^ n - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134987.P7518786522173974327

/-! ## A134987.P4583062269356774464

`A072088(A137359(n+1))`
-/

namespace A134987.P4583062269356774464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A137359 (n + 1)).toNat

end

end A134987.P4583062269356774464

/-! ## A134987.P14600741933346643844

`∑[∑[A279345(A099947(n))]]`
-/

namespace A134987.P14600741933346643844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279345 (A099947 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134987.P14600741933346643844

/-! ## A134987.P11744493435797338343

`filter[A137359(n+1), A337263(#)]`
-/

namespace A134987.P11744493435797338343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337263 (f1 j).toNat = 1) n)

end

end A134987.P11744493435797338343

/-!
# A134988: Number of formal expressions obtained by applying iterated binary brackets to n indexed symbols x_1, ..., x_n such that: 1) each symbol appears exactly once; 2) the smallest index inside a bracket appears on the left hand side and the largest index appears on the right hand side; 3) the outer bracket is the only bracket whose set of indices is a sequence of consecutive integers.

The programs for A134988, there is no canonical definition to state claims against.
-/

/-! ## A134988.P3286370911866549203

`A085857(xor(8, floor((7^n+3)*7/16)))`
-/

namespace A134988.P3286370911866549203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085857 (Int.xor 8 ⌊(7 ^ n + 3 : ℚ) * ((7 : ℚ) / 16)⌋).toNat

end

end A134988.P3286370911866549203

/-! ## A134988.P7713592412487712655

`A253296(a(n-1)+2*a(n-2))-(n+1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A134988.P7713592412487712655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A253296 (a (n - 1) + 2 * a (n - 2)).toNat - (n + 1 : ℤ)

end

end A134988.P7713592412487712655

/-!
# A134989: Numbers expressible in more than one way as 6^x-y^2.

The programs for A134989, there is no canonical definition to state claims against.
-/

/-! ## A134989.P12191944315711415896

`eq[A159764(A007953(n)), A330274(3*(n+1))]`
-/

namespace A134989.P12191944315711415896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159764 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330274 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134989.P12191944315711415896

/-!
# A134990: Interleave two arithmetic progressions 8,10,12,14,... and 15,13,11,9,... of differences +2 and -2 respectively.

The programs for A134990, the canonical program `A134990.P8116239159164288281` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134990 has offset 1).

The definition of A134990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134990.P8116239159164288281

`24-xor(1, a(n-1))` with `a(0)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134990

/-- `24-xor(1, a(n-1))` -/
def P8116239159164288281.Spec : Prop :=
  ∀ n, P8116239159164288281.a n = A134990 (n + 1)

theorem P8116239159164288281.correct : P8116239159164288281.Spec := by
  intro n
  simp only [A134990, Nat.add_sub_cancel]

end A134990

/-! ## A134990.P18407628762599619033

`(n-4)*(-1)^n+12`
-/

namespace A134990.P18407628762599619033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * (-1) ^ n + 12

end

end A134990.P18407628762599619033

namespace A134990

/-- `(n-4)*(-1)^n+12` -/
def P18407628762599619033.Spec : Prop :=
  ∀ n, P18407628762599619033.a n = A134990 (n + 1)

end A134990

/-! ## A134990.P8266281832814375486

`Δ[A051063(n+1)-A022998(n)]`
-/

namespace A134990.P8266281832814375486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051063 (n + 1) - A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134990.P8266281832814375486

namespace A134990

/-- `Δ[A051063(n+1)-A022998(n)]` -/
def P8266281832814375486.Spec : Prop :=
  ∀ n, P8266281832814375486.a n = A134990 (n + 1)

end A134990

/-! ## A134990.P10184919673208165840

`Δ[2*A228137(n+1)-A001057(n+1)]`
-/

namespace A134990.P10184919673208165840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228137 (n + 1) - A001057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134990.P10184919673208165840

namespace A134990

/-- `Δ[2*A228137(n+1)-A001057(n+1)]` -/
def P10184919673208165840.Spec : Prop :=
  ∀ n, P10184919673208165840.a n = A134990 (n + 1)

end A134990

/-! ## A134990.P9250262153008090411

`Δ[A047257(A047398(n+1))+A001057(n)]`
-/

namespace A134990.P9250262153008090411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047257 (A047398 (n + 1)).toNat + A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134990.P9250262153008090411

namespace A134990

/-- `Δ[A047257(A047398(n+1))+A001057(n)]` -/
def P9250262153008090411.Spec : Prop :=
  ∀ n, P9250262153008090411.a n = A134990 (n + 1)

end A134990

/-!
# A134991: Triangle of Ward numbers T(n,k) read by rows.

The programs for A134991, there is no canonical definition to state claims against.
-/

/-! ## A134991.P6626179683420252286

`A269939(comp[∑[n]])`
-/

namespace A134991.P6626179683420252286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A134991.P6626179683420252286

/-! ## A134991.P5202569066785829837

`A008299(A056537(n+1)+1)`
-/

namespace A134991.P5202569066785829837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 (A056537 (n + 1) + 1).toNat

end

end A134991.P5202569066785829837

/-! ## A134991.P17666254836462338944

`A008299(A194061(n+1)+2)`
-/

namespace A134991.P17666254836462338944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 (A194061 (n + 1) + 2).toNat

end

end A134991.P17666254836462338944

/-! ## A134991.P9409269993329821392

`A181996(A168038(n)-n)`
-/

namespace A134991.P9409269993329821392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181996 (A168038 n - (n : ℤ)).toNat

end

end A134991.P9409269993329821392

/-! ## A134991.P66595512707605303

`A181996(A053187(2*n)-n)`
-/

namespace A134991.P66595512707605303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181996 (A053187 (2 * n) - (n : ℤ)).toNat

end

end A134991.P66595512707605303

/-!
# A134992: a(n) = round(3*n/2*log(n)).

The programs for A134992, the canonical program `A134992.P5811367215679679370` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134992 has offset 2).

The definition of A134992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134992.P5811367215679679370

`round(3*(n+2)/(2*log(n+2)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134992

/-- `round(3*(n+2)/(2*log(n+2)))` -/
def P5811367215679679370.Spec : Prop :=
  ∀ n, P5811367215679679370.a n = A134992 (n + 2)

theorem P5811367215679679370.correct : P5811367215679679370.Spec := by
  intro n
  simp only [A134992, Nat.add_sub_cancel]

end A134992

/-! ## A134992.P11820960668608016441

`A350029(n+7)-A257000(A265644(n))`
-/

namespace A134992.P11820960668608016441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (n + 7) - A257000 (A265644 n).toNat

end

end A134992.P11820960668608016441

namespace A134992

/-- `A350029(n+7)-A257000(A265644(n))` -/
def P11820960668608016441.Spec : Prop :=
  ∀ n, P11820960668608016441.a n = A134992 (n + 2)

end A134992

/-! ## A134992.P15116085079259143733

`A350029(n+7)%A124628(n+1)`
-/

namespace A134992.P15116085079259143733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350029 (n + 7)) (A124628 (n + 1))

end

end A134992.P15116085079259143733

namespace A134992

/-- `A350029(n+7)%A124628(n+1)` -/
def P15116085079259143733.Spec : Prop :=
  ∀ n, P15116085079259143733.a n = A134992 (n + 2)

end A134992

/-! ## A134992.P1543591685621175956

`A001222(2^A350029(n+7))`
-/

namespace A134992.P1543591685621175956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A350029 (n + 7) : ℤ))).toNat

end

end A134992.P1543591685621175956

namespace A134992

/-- `A001222(2^A350029(n+7))` -/
def P1543591685621175956.Spec : Prop :=
  ∀ n, P1543591685621175956.a n = A134992 (n + 2)

end A134992

/-! ## A134992.P5235569498783197961

`A372475(A336122(n+2))`
-/

namespace A134992.P5235569498783197961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372475 (A336122 (n + 2)).toNat

end

end A134992.P5235569498783197961

namespace A134992

/-- `A372475(A336122(n+2))` -/
def P5235569498783197961.Spec : Prop :=
  ∀ n, P5235569498783197961.a n = A134992 (n + 2)

end A134992

/-!
# A134993: Round(3n/2log(n+1)).

The programs for A134993, the canonical program `A134993.P14254232192578756271` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134993 has offset 2).

The definition of A134993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134993.P14254232192578756271

`round(3*(n+2)/(2*log(n+3)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134993

/-- `round(3*(n+2)/(2*log(n+3)))` -/
def P14254232192578756271.Spec : Prop :=
  ∀ n, P14254232192578756271.a n = A134993 (n + 2)

theorem P14254232192578756271.correct : P14254232192578756271.Spec := by
  intro n
  simp only [A134993, Nat.add_sub_cancel]

end A134993

/-! ## A134993.P15580563851374810399

`A070941(A034363(n+1)+A007604(n+1))`
-/

namespace A134993.P15580563851374810399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A034363 (n + 1) + A007604 (n + 1)).toNat

end

end A134993.P15580563851374810399

namespace A134993

/-- `A070941(A034363(n+1)+A007604(n+1))` -/
def P15580563851374810399.Spec : Prop :=
  ∀ n, P15580563851374810399.a n = A134993 (n + 2)

end A134993

/-! ## A134993.P2302801950000506003

`A372475(A133041(n)+3)`
-/

namespace A134993.P2302801950000506003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372475 (A133041 n + 3).toNat

end

end A134993.P2302801950000506003

namespace A134993

/-- `A372475(A133041(n)+3)` -/
def P2302801950000506003.Spec : Prop :=
  ∀ n, P2302801950000506003.a n = A134993 (n + 2)

end A134993

/-! ## A134993.P7739086735676798315

`A372475(A081311(n+1)+A000041(n))`
-/

namespace A134993.P7739086735676798315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372475 (A081311 (n + 1) + A000041 n).toNat

end

end A134993.P7739086735676798315

namespace A134993

/-- `A372475(A081311(n+1)+A000041(n))` -/
def P7739086735676798315.Spec : Prop :=
  ∀ n, P7739086735676798315.a n = A134993 (n + 2)

end A134993

/-! ## A134993.P17677465866432801691

`A113473(A026804(n+3)+4)`
-/

namespace A134993.P17677465866432801691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (A026804 (n + 3) + 4).toNat

end

end A134993.P17677465866432801691

namespace A134993

/-- `A113473(A026804(n+3)+4)` -/
def P17677465866432801691.Spec : Prop :=
  ∀ n, P17677465866432801691.a n = A134993 (n + 2)

end A134993

/-!
# A134994: a(n) = floor(3n/2log(n)).

The programs for A134994, the canonical program `A134994.P15880895816059534448` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134994 has offset 2).

The definition of A134994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134994.P15880895816059534448

`floor(3*(n+2)/(2*log(n+2)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134994

/-- `floor(3*(n+2)/(2*log(n+2)))` -/
def P15880895816059534448.Spec : Prop :=
  ∀ n, P15880895816059534448.a n = A134994 (n + 2)

theorem P15880895816059534448.correct : P15880895816059534448.Spec := by
  intro n
  simp only [A134994, Nat.add_sub_cancel]

end A134994

/-! ## A134994.P12620556929505369322

`A070939(A240212(n+4)+8)`
-/

namespace A134994.P12620556929505369322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A240212 (n + 4) + 8).toNat

end

end A134994.P12620556929505369322

namespace A134994

/-- `A070939(A240212(n+4)+8)` -/
def P12620556929505369322.Spec : Prop :=
  ∀ n, P12620556929505369322.a n = A134994 (n + 2)

end A134994

/-!
# A134995: a(n) = floor(3n/2log(n+1)).

The programs for A134995, the canonical program `A134995.P5206768115220142213` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134995 has offset 2).

The definition of A134995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134995.P5206768115220142213

`floor(3*(n+2)/(2*log(n+3)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134995

/-- `floor(3*(n+2)/(2*log(n+3)))` -/
def P5206768115220142213.Spec : Prop :=
  ∀ n, P5206768115220142213.a n = A134995 (n + 2)

theorem P5206768115220142213.correct : P5206768115220142213.Spec := by
  intro n
  simp only [A134995, Nat.add_sub_cancel]

end A134995

/-! ## A134995.P14627330570399926945

`A137687(n+4)-A047999(A014105(n))`
-/

namespace A134995.P14627330570399926945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (n + 4) - A047999 (A014105 n).toNat

end

end A134995.P14627330570399926945

namespace A134995

/-- `A137687(n+4)-A047999(A014105(n))` -/
def P14627330570399926945.Spec : Prop :=
  ∀ n, P14627330570399926945.a n = A134995 (n + 2)

end A134995

/-! ## A134995.P4570586264516179779

`A137687(n+4)-A085731(A355588(n))`
-/

namespace A134995.P4570586264516179779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (n + 4) - A085731 (A355588 n).toNat

end

end A134995.P4570586264516179779

namespace A134995

/-- `A137687(n+4)-A085731(A355588(n))` -/
def P4570586264516179779.Spec : Prop :=
  ∀ n, P4570586264516179779.a n = A134995 (n + 2)

end A134995

/-! ## A134995.P1387101822031949897

`A137687(n+4)-A047999(A000217(2*(n+1)))`
-/

namespace A134995.P1387101822031949897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (n + 4) - A047999 (A000217 (2 * (n + 1))).toNat

end

end A134995.P1387101822031949897

namespace A134995

/-- `A137687(n+4)-A047999(A000217(2*(n+1)))` -/
def P1387101822031949897.Spec : Prop :=
  ∀ n, P1387101822031949897.a n = A134995 (n + 2)

end A134995

/-! ## A134995.P13567452540679888524

`A085423(A100673(n+1))`
-/

namespace A134995.P13567452540679888524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (A100673 (n + 1)).toNat

end

end A134995.P13567452540679888524

namespace A134995

/-- `A085423(A100673(n+1))` -/
def P13567452540679888524.Spec : Prop :=
  ∀ n, P13567452540679888524.a n = A134995 (n + 2)

end A134995

/-!
# A134996: Dihedral calculator primes: p, p upside down, p in a mirror, p upside-down-and-in-a-mirror are all primes.

The programs for A134996, there is no canonical definition to state claims against.
-/

/-! ## A134996.P6135118273787046965

`∪[p?[A134998(n+1)], A199328(n+1)]`
-/

namespace A134996.P6135118273787046965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134998 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A134996.P6135118273787046965

/-! ## A134996.P10718752825541516727

`A006530(∪[A134998(n+1), A199328(n+1)])`
-/

namespace A134996.P10718752825541516727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199328 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A134996.P10718752825541516727

/-! ## A134996.P14421252526939623681

`filter[A178318(n+1), A059448(#)]`
-/

namespace A134996.P14421252526939623681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059448 (f1 j).toNat = 1) n)

end

end A134996.P14421252526939623681

/-!
# A134998: Dihedral palindromic primes.

The programs for A134998, there is no canonical definition to state claims against.
-/

/-! ## A134998.P17976451814761585522

`∩[A018847(n+1), A178318(n+1)]%A105268(3*n+2)`
-/

namespace A134998.P17976451814761585522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178318 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A105268 (3 * n + 2))

end

end A134998.P17976451814761585522

/-! ## A134998.P14716787582591833707

`record[A055483(A134996(n+1))]`
-/

namespace A134998.P14716787582591833707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A134996 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134998.P14716787582591833707

/-!
# A134999: Triangle-shaped numbers.

The programs for A134999, there is no canonical definition to state claims against.
-/

/-! ## A134999.P5092394883452319325

`comp[12*n]+99`
-/

namespace A134999.P5092394883452319325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 99

end

end A134999.P5092394883452319325

/-! ## A134999.P3920748285279778384

`A135600(comp[12*n])`
-/

namespace A134999.P3920748285279778384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A134999.P3920748285279778384

/-! ## A134999.P7949763838418309249

`A000027(∑[dr(gcd(11, n))]+98)`
-/

namespace A134999.P7949763838418309249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.gcd 11 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j + 98)

end

end A134999.P7949763838418309249

/-! ## A134999.P11885000393415428488

`A301516(A044923(n+1))`
-/

namespace A134999.P11885000393415428488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301516 (A044923 (n + 1)).toNat

end

end A134999.P11885000393415428488

/-! ## A134999.P13908477258532156396

`A301516(A118759(n)+1)`
-/

namespace A134999.P13908477258532156396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301516 (A118759 n + 1).toNat

end

end A134999.P13908477258532156396

