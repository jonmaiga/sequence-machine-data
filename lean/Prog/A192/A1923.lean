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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A192300: 0-sequence of reduction of the lower Wythoff sequence by x^2 -> x+1.

The programs for A192300, there is no canonical definition to state claims against.
-/

/-! ## A192300.P13085859312691309674

`∑[floor(ϕ*(n+1))*A212804(n)]`
-/

namespace A192300.P13085859312691309674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192300.P13085859312691309674

/-! ## A192300.P4745046137594229386

`∑[floor(ϕ*(n+1))*Δ[A000045(n)]]`
-/

namespace A192300.P4745046137594229386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192300.P4745046137594229386

/-! ## A192300.P14718696460548920082

`∑[floor(ϕ*(n+1))*A000045(abs(1-n))]`
-/

namespace A192300.P14718696460548920082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192300.P14718696460548920082

/-! ## A192300.P10293855410043934579

`∑[A212804(n)*A292644(n+1)]`
-/

namespace A192300.P10293855410043934579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n * A292644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192300.P10293855410043934579

/-! ## A192300.P12572214724112026481

`∑[Δ[A000045(n)]*A000201(n+1)]`
-/

namespace A192300.P12572214724112026481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192300.P12572214724112026481

/-!
# A192301: 1-sequence of reduction of the lower Wythoff sequence by x^2 -> x+1.

The programs for A192301, there is no canonical definition to state claims against.
-/

/-! ## A192301.P9368381519543043836

`∑[floor(ϕ*(n+1))*A000045(n)]`
-/

namespace A192301.P9368381519543043836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192301.P9368381519543043836

/-! ## A192301.P3689157091025308407

`∑[abs(A236191(n))*floor(ϕ*(n+1))]`
-/

namespace A192301.P3689157091025308407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n| * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192301.P3689157091025308407

/-! ## A192301.P12517843777985299453

`∑[floor(ϕ*(n+1))*A212804(n+1)]`
-/

namespace A192301.P12517843777985299453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ * A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192301.P12517843777985299453

/-! ## A192301.P3835350586853444964

`∑[(A001611(n)-1)*floor(ϕ*(n+1))]`
-/

namespace A192301.P3835350586853444964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192301.P3835350586853444964

/-!
# A192302: 0-sequence of reduction of the upper Wythoff sequence by x^2 -> x+1.

The programs for A192302, there is no canonical definition to state claims against.
-/

/-! ## A192302.P11207979385143001791

`∑[comp[floor(ϕ*n)]*A212804(n)]`
-/

namespace A192302.P11207979385143001791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192302.P11207979385143001791

/-! ## A192302.P10359664732255070679

`∑[floor((n+1)*ϕ²)*Δ[A000045(n)]]`
-/

namespace A192302.P10359664732255070679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192302.P10359664732255070679

/-! ## A192302.P6021890386933800984

`∑[Δ[A000045(n)]*A001950(n+1)]`
-/

namespace A192302.P6021890386933800984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192302.P6021890386933800984

/-! ## A192302.P12143896240119446620

`∑[A000045(abs(1-n))*A001950(n+1)]`
-/

namespace A192302.P12143896240119446620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat * A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192302.P12143896240119446620

/-!
# A192303: 1-sequence of reduction of the upper Wythoff sequence by x^2 -> x+1.

The programs for A192303, there is no canonical definition to state claims against.
-/

/-! ## A192303.P2124600831774916907

`∑[comp[floor(ϕ*n)]*A000045(n)]`
-/

namespace A192303.P2124600831774916907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192303.P2124600831774916907

/-! ## A192303.P7603212017629122067

`∑[(A001611(n)-1)*comp[floor(ϕ*n)]]`
-/

namespace A192303.P7603212017629122067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192303.P7603212017629122067

/-! ## A192303.P3252250484213388635

`∑[(A157725(n)-2)*floor(ϕ²*(n+1))]`
-/

namespace A192303.P3252250484213388635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n - 2) * ⌊Real.goldenRatio ^ 2 * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192303.P3252250484213388635

/-! ## A192303.P1750502692260726878

`∑[(A157726(n)-3)*floor(ϕ²*(n+1))]`
-/

namespace A192303.P1750502692260726878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157726 n - 3) * ⌊Real.goldenRatio ^ 2 * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192303.P1750502692260726878

/-! ## A192303.P6513383116504025964

`∑[floor(cot((2-ϕ)/(n+1)))*A212804(n+1)]`
-/

namespace A192303.P6513383116504025964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((2 - Real.goldenRatio) / (n + 1 : ℝ))⌋ * A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192303.P6513383116504025964

/-!
# A192304: 0-sequence of reduction of (2n-1) by x^2 -> x+1.

The programs for A192304, the canonical program `A192304.P14413540038402998518` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192304 has offset 1).

The definition of A192304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192304.P4787026707312835485

`ogf((1-2x+4x^2-x^3)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A192304.P4787026707312835485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4, -1] [1, -3, 1, 3, -1, -1] n

end

end A192304.P4787026707312835485

namespace A192304

/-- `ogf((1-2x+4x^2-x^3)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P4787026707312835485.Spec : Prop :=
  ∀ n, P4787026707312835485.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P4933166904747099848

`∑[Δ[n²]*A212804(n)]`
-/

namespace A192304.P4933166904747099848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192304.P4933166904747099848

namespace A192304

/-- `∑[Δ[n²]*A212804(n)]` -/
def P4933166904747099848.Spec : Prop :=
  ∀ n, P4933166904747099848.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P14413540038402998518

`∑[Δ[n²]*Δ[A000045(n)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192304

/-- `∑[Δ[n²]*Δ[A000045(n)]]` -/
def P14413540038402998518.Spec : Prop :=
  ∀ n, P14413540038402998518.a n = A192304 (n + 1)

theorem P14413540038402998518.correct : P14413540038402998518.Spec := by
  intro n
  simp only [A192304, Nat.add_sub_cancel]

end A192304

/-! ## A192304.P5633824851987774397

`∑[Δ[n²]*Δ[A157729(n)]]`
-/

namespace A192304.P5633824851987774397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192304.P5633824851987774397

namespace A192304

/-- `∑[Δ[n²]*Δ[A157729(n)]]` -/
def P5633824851987774397.Spec : Prop :=
  ∀ n, P5633824851987774397.a n = A192304 (n + 1)

theorem P5633824851987774397.correct : P5633824851987774397.Spec := by
  intro n
  simp only [A192304, Nat.add_sub_cancel, A192304.P5633824851987774397.f2, A192304.P5633824851987774397.f3, A192304.P5633824851987774397.f1, A192304.P5633824851987774397.a, A192304.P14413540038402998518.f2, A192304.P14413540038402998518.f3, A192304.P14413540038402998518.f1, A192304.P14413540038402998518.a, A000045, A000045.P11838749114346432762.a, A157729, A157729.P2013707109334832467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192304

/-! ## A192304.P749283877075894410

`∑[Δ[n²]*A247049(3*n)]`
-/

namespace A192304.P749283877075894410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A247049 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192304.P749283877075894410

namespace A192304

/-- `∑[Δ[n²]*A247049(3*n)]` -/
def P749283877075894410.Spec : Prop :=
  ∀ n, P749283877075894410.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P12135623392999483273

`A178525(n)+A001595(n)`
-/

namespace A192304.P12135623392999483273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178525 n + A001595 n

end

end A192304.P12135623392999483273

namespace A192304

/-- `A178525(n)+A001595(n)` -/
def P12135623392999483273.Spec : Prop :=
  ∀ n, P12135623392999483273.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P16749942570554876438

`A014286(n)+A006490(n+1)`
-/

namespace A192304.P16749942570554876438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 n + A006490 (n + 1)

end

end A192304.P16749942570554876438

namespace A192304

/-- `A014286(n)+A006490(n+1)` -/
def P16749942570554876438.Spec : Prop :=
  ∀ n, P16749942570554876438.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P7097821550052198027

`A014286(n+1)-A099920(n)`
-/

namespace A192304.P7097821550052198027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) - A099920 n

end

end A192304.P7097821550052198027

namespace A192304

/-- `A014286(n+1)-A099920(n)` -/
def P7097821550052198027.Spec : Prop :=
  ∀ n, P7097821550052198027.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P1726946218328521425

`A190062(n+1)+A122491(n+1)`
-/

namespace A192304.P1726946218328521425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190062 (n + 1) + A122491 (n + 1)

end

end A192304.P1726946218328521425

namespace A192304

/-- `A190062(n+1)+A122491(n+1)` -/
def P1726946218328521425.Spec : Prop :=
  ∀ n, P1726946218328521425.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P18415768445487960539

`A192305(n+1)-A000045(n+1)`
-/

namespace A192304.P18415768445487960539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192305 (n + 1) - A000045 (n + 1)

end

end A192304.P18415768445487960539

namespace A192304

/-- `A192305(n+1)-A000045(n+1)` -/
def P18415768445487960539.Spec : Prop :=
  ∀ n, P18415768445487960539.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P9007329274414895509

`A192305(n+1)-(A000071(n+1)+1)`
-/

namespace A192304.P9007329274414895509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192305 (n + 1) - (A000071 (n + 1) + 1)

end

end A192304.P9007329274414895509

namespace A192304

/-- `A192305(n+1)-(A000071(n+1)+1)` -/
def P9007329274414895509.Spec : Prop :=
  ∀ n, P9007329274414895509.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P14694105359825858669

`A014286(n+1)-(A045925(n)+A000045(n))`
-/

namespace A192304.P14694105359825858669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) - (A045925 n + A000045 n)

end

end A192304.P14694105359825858669

namespace A192304

/-- `A014286(n+1)-(A045925(n)+A000045(n))` -/
def P14694105359825858669.Spec : Prop :=
  ∀ n, P14694105359825858669.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P1203207996450522009

`A136391(n+1)+A014286(n)-A000045(n)`
-/

namespace A192304.P1203207996450522009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) + (A014286 n - A000045 n)

end

end A192304.P1203207996450522009

namespace A192304

/-- `A136391(n+1)+A014286(n)-A000045(n)` -/
def P1203207996450522009.Spec : Prop :=
  ∀ n, P1203207996450522009.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P7032994146152195458

`A122491(n+1)+A122491(n+1)+A000045(n+1)`
-/

namespace A192304.P7032994146152195458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 (n + 1) + (A122491 (n + 1) + A000045 (n + 1))

end

end A192304.P7032994146152195458

namespace A192304

/-- `A122491(n+1)+A122491(n+1)+A000045(n+1)` -/
def P7032994146152195458.Spec : Prop :=
  ∀ n, P7032994146152195458.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P13993670408026314754

`A190062(n+1)+A190062(n+1)-A000045(n+1)`
-/

namespace A192304.P13993670408026314754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190062 (n + 1) + (A190062 (n + 1) - A000045 (n + 1))

end

end A192304.P13993670408026314754

namespace A192304

/-- `A190062(n+1)+A190062(n+1)-A000045(n+1)` -/
def P13993670408026314754.Spec : Prop :=
  ∀ n, P13993670408026314754.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P6822415717678891605

`A122491(n+1)+A192307(n+1)-A192305(n+1)`
-/

namespace A192304.P6822415717678891605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 (n + 1) + (A192307 (n + 1) - A192305 (n + 1))

end

end A192304.P6822415717678891605

namespace A192304

/-- `A122491(n+1)+A192307(n+1)-A192305(n+1)` -/
def P6822415717678891605.Spec : Prop :=
  ∀ n, P6822415717678891605.a n = A192304 (n + 1)

end A192304

/-! ## A192304.P15875091687513608796

`A045925(n+1)+A122491(n+1)-A000071(n+2)`
-/

namespace A192304.P15875091687513608796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + (A122491 (n + 1) - A000071 (n + 2))

end

end A192304.P15875091687513608796

namespace A192304

/-- `A045925(n+1)+A122491(n+1)-A000071(n+2)` -/
def P15875091687513608796.Spec : Prop :=
  ∀ n, P15875091687513608796.a n = A192304 (n + 1)

end A192304

/-!
# A192305: 0-sequence of reduction of (2n) by x^2 -> x+1.

The programs for A192305, the canonical program `A192305.P9314614046236981238` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192305 has offset 1).

The definition of A192305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192305.P3837349850624862235

`ogf((2-4x+4x^2)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A192305.P3837349850624862235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 4] [1, -3, 1, 3, -1, -1] n

end

end A192305.P3837349850624862235

namespace A192305

/-- `ogf((2-4x+4x^2)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P3837349850624862235.Spec : Prop :=
  ∀ n, P3837349850624862235.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P9314614046236981238

`2*A190062(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A192305

/-- `2*A190062(n+1)` -/
def P9314614046236981238.Spec : Prop :=
  ∀ n, P9314614046236981238.a n = A192305 (n + 1)

theorem P9314614046236981238.correct : P9314614046236981238.Spec := by
  intro n
  simp only [A192305, Nat.add_sub_cancel]

end A192305

/-! ## A192305.P2846056626144287930

`∑[2*(n+1)*Δ[round(ϕ^n/sqrt(5))]]`
-/

namespace A192305.P2846056626144287930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192305.P2846056626144287930

namespace A192305

/-- `∑[2*(n+1)*Δ[round(ϕ^n/sqrt(5))]]` -/
def P2846056626144287930.Spec : Prop :=
  ∀ n, P2846056626144287930.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P8579878406479377738

`2*(A178521(n)+1)`
-/

namespace A192305.P8579878406479377738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A178521 n + 1)

end

end A192305.P8579878406479377738

namespace A192305

/-- `2*(A178521(n)+1)` -/
def P8579878406479377738.Spec : Prop :=
  ∀ n, P8579878406479377738.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P14471405626983576518

`2*∑[A006490(n+1)]`
-/

namespace A192305.P14471405626983576518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192305.P14471405626983576518

namespace A192305

/-- `2*∑[A006490(n+1)]` -/
def P14471405626983576518.Spec : Prop :=
  ∀ n, P14471405626983576518.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P18092936052602369744

`2/3*A192307(n+1)`
-/

namespace A192305.P18092936052602369744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A192307 (n + 1) : ℚ)

end

end A192305.P18092936052602369744

namespace A192305

/-- `2/3*A192307(n+1)` -/
def P18092936052602369744.Spec : Prop :=
  ∀ n, P18092936052602369744.a n = (A192305 (n + 1) : ℚ)

theorem P18092936052602369744.correct : P18092936052602369744.Spec := by
  intro n
  simp only [A192305, Nat.add_sub_cancel, A192305.P18092936052602369744.a, A192305.P9314614046236981238.a, A190062, A190062.P16595495950276087387.a, A192307, A192307.P2714161128456340537.a, A000071, A000071.P17543778731970887199.a, A045925, A045925.P2609971174242523106.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192305

/-! ## A192305.P7772172403512305613

`A377628(n)+A178525(n)`
-/

namespace A192305.P7772172403512305613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n + A178525 n

end

end A192305.P7772172403512305613

namespace A192305

/-- `A377628(n)+A178525(n)` -/
def P7772172403512305613.Spec : Prop :=
  ∀ n, P7772172403512305613.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P1398556907145235760

`A192304(n+1)+A000045(n+1)`
-/

namespace A192305.P1398556907145235760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192304 (n + 1) + A000045 (n + 1)

end

end A192305.P1398556907145235760

namespace A192305

/-- `A192304(n+1)+A000045(n+1)` -/
def P1398556907145235760.Spec : Prop :=
  ∀ n, P1398556907145235760.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P12004677994669499141

`A192309(n+1)-A122491(n+1)`
-/

namespace A192305.P12004677994669499141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192309 (n + 1) - A122491 (n + 1)

end

end A192305.P12004677994669499141

namespace A192305

/-- `A192309(n+1)-A122491(n+1)` -/
def P12004677994669499141.Spec : Prop :=
  ∀ n, P12004677994669499141.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P3876712257508295516

`A192307(n+1)-A190062(n+1)`
-/

namespace A192305.P3876712257508295516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192307 (n + 1) - A190062 (n + 1)

end

end A192305.P3876712257508295516

namespace A192305

/-- `A192307(n+1)-A190062(n+1)` -/
def P3876712257508295516.Spec : Prop :=
  ∀ n, P3876712257508295516.a n = A192305 (n + 1)

theorem P3876712257508295516.correct : P3876712257508295516.Spec := by
  intro n
  simp only [A192305, Nat.add_sub_cancel, A192305.P3876712257508295516.a, A192305.P9314614046236981238.a, A190062, A190062.P16595495950276087387.a, A192307, A192307.P2714161128456340537.a, A000071, A000071.P17543778731970887199.a, A045925, A045925.P2609971174242523106.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192305

/-! ## A192305.P1626891289852732578

`2*(A010049(n+1)+A006478(n+1))`
-/

namespace A192305.P1626891289852732578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010049 (n + 1) + A006478 (n + 1))

end

end A192305.P1626891289852732578

namespace A192305

/-- `2*(A010049(n+1)+A006478(n+1))` -/
def P1626891289852732578.Spec : Prop :=
  ∀ n, P1626891289852732578.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P707764430670413637

`2*(A122491(n+1)+A000045(n+1))`
-/

namespace A192305.P707764430670413637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122491 (n + 1) + A000045 (n + 1))

end

end A192305.P707764430670413637

namespace A192305

/-- `2*(A122491(n+1)+A000045(n+1))` -/
def P707764430670413637.Spec : Prop :=
  ∀ n, P707764430670413637.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P15755579689619936909

`2*(A007502(n+2)-A001595(n+1))`
-/

namespace A192305.P15755579689619936909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007502 (n + 2) - A001595 (n + 1))

end

end A192305.P15755579689619936909

namespace A192305

/-- `2*(A007502(n+2)-A001595(n+1))` -/
def P15755579689619936909.Spec : Prop :=
  ∀ n, P15755579689619936909.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P7492892014881471123

`2*(A045925(n+1)-A000071(n+2))`
-/

namespace A192305.P7492892014881471123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045925 (n + 1) - A000071 (n + 2))

end

end A192305.P7492892014881471123

namespace A192305

/-- `2*(A045925(n+1)-A000071(n+2))` -/
def P7492892014881471123.Spec : Prop :=
  ∀ n, P7492892014881471123.a n = A192305 (n + 1)

theorem P7492892014881471123.correct : P7492892014881471123.Spec := by
  intro n
  simp only [A192305, Nat.add_sub_cancel, A192305.P7492892014881471123.a, A192305.P9314614046236981238.a, A000071, A000071.P17543778731970887199.a, A045925, A045925.P2609971174242523106.a, A190062, A190062.P16595495950276087387.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192305

/-! ## A192305.P8700047278096211256

`2*(n*A000045(n+1)-A000045(n)+1)`
-/

namespace A192305.P8700047278096211256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A000045 (n + 1) - A000045 n + 1)

end

end A192305.P8700047278096211256

namespace A192305

/-- `2*(n*A000045(n+1)-A000045(n)+1)` -/
def P8700047278096211256.Spec : Prop :=
  ∀ n, P8700047278096211256.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P10030574936028394236

`A000045(n+1)+A178525(n)+A001595(n)`
-/

namespace A192305.P10030574936028394236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A178525 n + A001595 n)

end

end A192305.P10030574936028394236

namespace A192305

/-- `A000045(n+1)+A178525(n)+A001595(n)` -/
def P10030574936028394236.Spec : Prop :=
  ∀ n, P10030574936028394236.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P3570505872538311101

`A099920(n+1)+A014286(n)-A099920(n)`
-/

namespace A192305.P3570505872538311101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (n + 1) + (A014286 n - A099920 n)

end

end A192305.P3570505872538311101

namespace A192305

/-- `A099920(n+1)+A014286(n)-A099920(n)` -/
def P3570505872538311101.Spec : Prop :=
  ∀ n, P3570505872538311101.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P1456484830765986246

`A014286(n+1)+A136391(n+1)-A354044(n)`
-/

namespace A192305.P1456484830765986246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) + (A136391 (n + 1) - A354044 n)

end

end A192305.P1456484830765986246

namespace A192305

/-- `A014286(n+1)+A136391(n+1)-A354044(n)` -/
def P1456484830765986246.Spec : Prop :=
  ∀ n, P1456484830765986246.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P15929058182161066949

`A000045(n+1)+A190062(n+1)+A122491(n+1)`
-/

namespace A192305.P15929058182161066949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A190062 (n + 1) + A122491 (n + 1))

end

end A192305.P15929058182161066949

namespace A192305

/-- `A000045(n+1)+A190062(n+1)+A122491(n+1)` -/
def P15929058182161066949.Spec : Prop :=
  ∀ n, P15929058182161066949.a n = A192305 (n + 1)

end A192305

/-! ## A192305.P15942275172394564372

`A190062(n+1)+A192304(n+1)-A122491(n+1)`
-/

namespace A192305.P15942275172394564372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190062 (n + 1) + (A192304 (n + 1) - A122491 (n + 1))

end

end A192305.P15942275172394564372

namespace A192305

/-- `A190062(n+1)+A192304(n+1)-A122491(n+1)` -/
def P15942275172394564372.Spec : Prop :=
  ∀ n, P15942275172394564372.a n = A192305 (n + 1)

end A192305

/-!
# A192306: 1-sequence of reduction of (2n) by x^2 -> x+1.

The programs for A192306, the canonical program `A192306.P16180315663506534326` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192306 has offset 1).

The definition of A192306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192306.P4724268202847719777

`ogf((4x-2x^2)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A192306.P4724268202847719777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -2] [1, -3, 1, 3, -1, -1] n

end

end A192306.P4724268202847719777

namespace A192306

/-- `ogf((4x-2x^2)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P4724268202847719777.Spec : Prop :=
  ∀ n, P4724268202847719777.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P16180315663506534326

`2*A122491(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A192306

/-- `2*A122491(n+2)` -/
def P16180315663506534326.Spec : Prop :=
  ∀ n, P16180315663506534326.a n = A192306 (n + 1)

theorem P16180315663506534326.correct : P16180315663506534326.Spec := by
  intro n
  simp only [A192306, Nat.add_sub_cancel]

end A192306

/-! ## A192306.P2741436418522369637

`∑[2*(n+1)*round(ϕ^n/sqrt(5))]`
-/

namespace A192306.P2741436418522369637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192306.P2741436418522369637

namespace A192306

/-- `∑[2*(n+1)*round(ϕ^n/sqrt(5))]` -/
def P2741436418522369637.Spec : Prop :=
  ∀ n, P2741436418522369637.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P8698528614276634459

`2*∑[(n+1)*Δ[floor(ϕ*a(n-1))]]` with `a(0)=2, a(1)=2`
-/

namespace A192306.P8698528614276634459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  ⌊Real.goldenRatio * (f2 (n - 1) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192306.P8698528614276634459

namespace A192306

/-- `2*∑[(n+1)*Δ[floor(ϕ*a(n-1))]]` -/
def P8698528614276634459.Spec : Prop :=
  ∀ n, P8698528614276634459.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P3906474097752258026

`2*∑[A099920(n)]`
-/

namespace A192306.P3906474097752258026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192306.P3906474097752258026

namespace A192306

/-- `2*∑[A099920(n)]` -/
def P3906474097752258026.Spec : Prop :=
  ∀ n, P3906474097752258026.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P8646836497028523845

`2/3*A192308(n+1)`
-/

namespace A192306.P8646836497028523845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A192308 (n + 1) : ℚ)

end

end A192306.P8646836497028523845

namespace A192306

/-- `2/3*A192308(n+1)` -/
def P8646836497028523845.Spec : Prop :=
  ∀ n, P8646836497028523845.a n = (A192306 (n + 1) : ℚ)

theorem P8646836497028523845.correct : P8646836497028523845.Spec := by
  intro n
  simp only [A192306, Nat.add_sub_cancel, A192306.P8646836497028523845.a, A192306.P16180315663506534326.a, A122491, A122491.P1829163714605882116.a, A192308, A192308.P10463933346683699392.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192306

/-! ## A192306.P16400592457144653838

`A099920(n)+∑[A354044(n)]`
-/

namespace A192306.P16400592457144653838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192306.P16400592457144653838

namespace A192306

/-- `A099920(n)+∑[A354044(n)]` -/
def P16400592457144653838.Spec : Prop :=
  ∀ n, P16400592457144653838.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P11312913382179924541

`A192310(n+1)-A014286(n)`
-/

namespace A192306.P11312913382179924541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192310 (n + 1) - A014286 n

end

end A192306.P11312913382179924541

namespace A192306

/-- `A192310(n+1)-A014286(n)` -/
def P11312913382179924541.Spec : Prop :=
  ∀ n, P11312913382179924541.a n = A192306 (n + 1)

theorem P11312913382179924541.correct : P11312913382179924541.Spec := by
  intro n
  simp only [A192306, Nat.add_sub_cancel, A192306.P11312913382179924541.a, A192306.P16180315663506534326.a, A014286, A014286.P3857901398610574397.a, A122491, A122491.P1829163714605882116.a, A192310, A192310.P2475868322072867542.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192306

/-! ## A192306.P6745177672559284911

`A178523(n+1)+Δ[A178523(n)]`
-/

namespace A192306.P6745177672559284911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178523 (n + 1) + (f1 (n + 1) - f1 n)

end

end A192306.P6745177672559284911

namespace A192306

/-- `A178523(n+1)+Δ[A178523(n)]` -/
def P6745177672559284911.Spec : Prop :=
  ∀ n, P6745177672559284911.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P8715364981808544589

`A002940(n+1)-A240847(n+2)`
-/

namespace A192306.P8715364981808544589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002940 (n + 1) - A240847 (n + 2)

end

end A192306.P8715364981808544589

namespace A192306

/-- `A002940(n+1)-A240847(n+2)` -/
def P8715364981808544589.Spec : Prop :=
  ∀ n, P8715364981808544589.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P14036426387557936913

`A192308(n+1)-A122491(n+2)`
-/

namespace A192306.P14036426387557936913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192308 (n + 1) - A122491 (n + 2)

end

end A192306.P14036426387557936913

namespace A192306

/-- `A192308(n+1)-A122491(n+2)` -/
def P14036426387557936913.Spec : Prop :=
  ∀ n, P14036426387557936913.a n = A192306 (n + 1)

theorem P14036426387557936913.correct : P14036426387557936913.Spec := by
  intro n
  simp only [A192306, Nat.add_sub_cancel, A192306.P14036426387557936913.a, A192306.P16180315663506534326.a, A122491, A122491.P1829163714605882116.a, A192308, A192308.P10463933346683699392.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192306

/-! ## A192306.P3066832548418789912

`A192304(n+2)-A000045(n+2)`
-/

namespace A192306.P3066832548418789912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192304 (n + 2) - A000045 (n + 2)

end

end A192306.P3066832548418789912

namespace A192306

/-- `A192304(n+2)-A000045(n+2)` -/
def P3066832548418789912.Spec : Prop :=
  ∀ n, P3066832548418789912.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P8934479025206906695

`A178523(n+1)+2*A001629(n+1)`
-/

namespace A192306.P8934479025206906695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178523 (n + 1) + 2 * A001629 (n + 1)

end

end A192306.P8934479025206906695

namespace A192306

/-- `A178523(n+1)+2*A001629(n+1)` -/
def P8934479025206906695.Spec : Prop :=
  ∀ n, P8934479025206906695.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P5597939579683058362

`2*(A014286(n+1)-A190062(n+1))`
-/

namespace A192306.P5597939579683058362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014286 (n + 1) - A190062 (n + 1))

end

end A192306.P5597939579683058362

namespace A192306

/-- `2*(A014286(n+1)-A190062(n+1))` -/
def P5597939579683058362.Spec : Prop :=
  ∀ n, P5597939579683058362.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P17719605920756645633

`2*(n*A000045(n+2)-A000045(n+1)+1)`
-/

namespace A192306.P17719605920756645633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A000045 (n + 2) - A000045 (n + 1) + 1)

end

end A192306.P17719605920756645633

namespace A192306

/-- `2*(n*A000045(n+2)-A000045(n+1)+1)` -/
def P17719605920756645633.Spec : Prop :=
  ∀ n, P17719605920756645633.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P13070637246866268635

`A014286(n)+A354044(n)+A045925(n)`
-/

namespace A192306.P13070637246866268635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 n + (A354044 n + A045925 n)

end

end A192306.P13070637246866268635

namespace A192306

/-- `A014286(n)+A354044(n)+A045925(n)` -/
def P13070637246866268635.Spec : Prop :=
  ∀ n, P13070637246866268635.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P12377923823760906957

`A014286(n+1)+A099920(n)-A000045(n+1)`
-/

namespace A192306.P12377923823760906957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) + (A099920 n - A000045 (n + 1))

end

end A192306.P12377923823760906957

namespace A192306

/-- `A014286(n+1)+A099920(n)-A000045(n+1)` -/
def P12377923823760906957.Spec : Prop :=
  ∀ n, P12377923823760906957.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P4985183230265565214

`A014286(n+1)+A354044(n)-A136391(n+1)`
-/

namespace A192306.P4985183230265565214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) + (A354044 n - A136391 (n + 1))

end

end A192306.P4985183230265565214

namespace A192306

/-- `A014286(n+1)+A354044(n)-A136391(n+1)` -/
def P4985183230265565214.Spec : Prop :=
  ∀ n, P4985183230265565214.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P7555913020525165774

`A192305(n+2)-(A000045(n+1)+A000032(n+1))`
-/

namespace A192306.P7555913020525165774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192305 (n + 2) - (A000045 (n + 1) + A000032 (n + 1))

end

end A192306.P7555913020525165774

namespace A192306

/-- `A192305(n+2)-(A000045(n+1)+A000032(n+1))` -/
def P7555913020525165774.Spec : Prop :=
  ∀ n, P7555913020525165774.a n = A192306 (n + 1)

end A192306

/-! ## A192306.P14099747122447768026

`A192304(n+2)+A192304(n+2)-A192305(n+2)`
-/

namespace A192306.P14099747122447768026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192304 (n + 2) + (A192304 (n + 2) - A192305 (n + 2))

end

end A192306.P14099747122447768026

namespace A192306

/-- `A192304(n+2)+A192304(n+2)-A192305(n+2)` -/
def P14099747122447768026.Spec : Prop :=
  ∀ n, P14099747122447768026.a n = A192306 (n + 1)

end A192306

/-!
# A192307: 0-sequence of reduction of (3n) by x^2 -> x+1.

The programs for A192307, the canonical program `A192307.P2714161128456340537` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192307 has offset 1).

The definition of A192307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192307.P9509358904670138794

`ogf((3-6x+6x^2)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A192307.P9509358904670138794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, 6] [1, -3, 1, 3, -1, -1] n

end

end A192307.P9509358904670138794

namespace A192307

/-- `ogf((3-6x+6x^2)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P9509358904670138794.Spec : Prop :=
  ∀ n, P9509358904670138794.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P2714161128456340537

`3*A190062(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A192307

/-- `3*A190062(n+1)` -/
def P2714161128456340537.Spec : Prop :=
  ∀ n, P2714161128456340537.a n = A192307 (n + 1)

theorem P2714161128456340537.correct : P2714161128456340537.Spec := by
  intro n
  simp only [A192307, Nat.add_sub_cancel]

end A192307

/-! ## A192307.P6449855792489228943

`∑[(n+1)*Δ[a(n-1)+a(n-2)]]` with `a(0)=0, a(1)=3`
-/

namespace A192307.P6449855792489228943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192307.P6449855792489228943

namespace A192307

/-- `∑[(n+1)*Δ[a(n-1)+a(n-2)]]` -/
def P6449855792489228943.Spec : Prop :=
  ∀ n, P6449855792489228943.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P3577524442932628147

`3*∑[2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=4`
-/

namespace A192307.P3577524442932628147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 4] fun n f1 =>
  2 * f1 (n - 1) + (f1 (n - 2) - 2 * f1 (n - 3)) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192307.P3577524442932628147

namespace A192307

/-- `3*∑[2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)]` -/
def P3577524442932628147.Spec : Prop :=
  ∀ n, P3577524442932628147.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P9052281830602635594

`3*(A178521(n)+1)`
-/

namespace A192307.P9052281830602635594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A178521 n + 1)

end

end A192307.P9052281830602635594

namespace A192307

/-- `3*(A178521(n)+1)` -/
def P9052281830602635594.Spec : Prop :=
  ∀ n, P9052281830602635594.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P12803514162068081118

`∑[3*A006490(n+1)]`
-/

namespace A192307.P12803514162068081118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192307.P12803514162068081118

namespace A192307

/-- `∑[3*A006490(n+1)]` -/
def P12803514162068081118.Spec : Prop :=
  ∀ n, P12803514162068081118.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P10507006047909204734

`3/2*A192305(n+1)`
-/

namespace A192307.P10507006047909204734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A192305 (n + 1) : ℚ)

end

end A192307.P10507006047909204734

namespace A192307

/-- `3/2*A192305(n+1)` -/
def P10507006047909204734.Spec : Prop :=
  ∀ n, P10507006047909204734.a n = (A192307 (n + 1) : ℚ)

theorem P10507006047909204734.correct : P10507006047909204734.Spec := by
  intro n
  simp only [A192307, Nat.add_sub_cancel, A192307.P10507006047909204734.a, A192307.P2714161128456340537.a, A190062, A190062.P16595495950276087387.a, A192305, A192305.P9314614046236981238.a, A000071, A000071.P17543778731970887199.a, A045925, A045925.P2609971174242523106.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192307

/-! ## A192307.P10587056405354339522

`∑[3*(n+1)*A212804(n)]`
-/

namespace A192307.P10587056405354339522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * A212804 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192307.P10587056405354339522

namespace A192307

/-- `∑[3*(n+1)*A212804(n)]` -/
def P10587056405354339522.Spec : Prop :=
  ∀ n, P10587056405354339522.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P7447768624806927779

`∑[3*(n+1)*Δ[A000045(n)]]`
-/

namespace A192307.P7447768624806927779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192307.P7447768624806927779

namespace A192307

/-- `∑[3*(n+1)*Δ[A000045(n)]]` -/
def P7447768624806927779.Spec : Prop :=
  ∀ n, P7447768624806927779.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P11936093727283794640

`3*∑[(n+1)*A000045(abs(1-n))]`
-/

namespace A192307.P11936093727283794640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192307.P11936093727283794640

namespace A192307

/-- `3*∑[(n+1)*A000045(abs(1-n))]` -/
def P11936093727283794640.Spec : Prop :=
  ∀ n, P11936093727283794640.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P17038577866652341603

`∑[(A016777(n)+2)*A212804(n)]`
-/

namespace A192307.P17038577866652341603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n + 2) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192307.P17038577866652341603

namespace A192307

/-- `∑[(A016777(n)+2)*A212804(n)]` -/
def P17038577866652341603.Spec : Prop :=
  ∀ n, P17038577866652341603.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P12422807276655121261

`A192305(n+1)+A190062(n+1)`
-/

namespace A192307.P12422807276655121261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192305 (n + 1) + A190062 (n + 1)

end

end A192307.P12422807276655121261

namespace A192307

/-- `A192305(n+1)+A190062(n+1)` -/
def P12422807276655121261.Spec : Prop :=
  ∀ n, P12422807276655121261.a n = A192307 (n + 1)

theorem P12422807276655121261.correct : P12422807276655121261.Spec := by
  intro n
  simp only [A192307, Nat.add_sub_cancel, A192307.P12422807276655121261.a, A192307.P2714161128456340537.a, A190062, A190062.P16595495950276087387.a, A192305, A192305.P9314614046236981238.a, A000071, A000071.P17543778731970887199.a, A045925, A045925.P2609971174242523106.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192307

/-! ## A192307.P6139470699364442237

`3*(n*A000045(n+1)-A000045(n)+1)`
-/

namespace A192307.P6139470699364442237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A000045 (n + 1) - A000045 n + 1)

end

end A192307.P6139470699364442237

namespace A192307

/-- `3*(n*A000045(n+1)-A000045(n)+1)` -/
def P6139470699364442237.Spec : Prop :=
  ∀ n, P6139470699364442237.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P3708136425075155238

`A000045(n+1)+A192305(n+1)+A122491(n+1)`
-/

namespace A192307.P3708136425075155238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A192305 (n + 1) + A122491 (n + 1))

end

end A192307.P3708136425075155238

namespace A192307

/-- `A000045(n+1)+A192305(n+1)+A122491(n+1)` -/
def P3708136425075155238.Spec : Prop :=
  ∀ n, P3708136425075155238.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P3711496491666012612

`A192304(n+1)+A192305(n+1)-A122491(n+1)`
-/

namespace A192307.P3711496491666012612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192304 (n + 1) + (A192305 (n + 1) - A122491 (n + 1))

end

end A192307.P3711496491666012612

namespace A192307

/-- `A192304(n+1)+A192305(n+1)-A122491(n+1)` -/
def P3711496491666012612.Spec : Prop :=
  ∀ n, P3711496491666012612.a n = A192307 (n + 1)

end A192307

/-! ## A192307.P9848275382005545185

`A045925(n+1)+A192305(n+1)-A000071(n+2)`
-/

namespace A192307.P9848275382005545185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + (A192305 (n + 1) - A000071 (n + 2))

end

end A192307.P9848275382005545185

namespace A192307

/-- `A045925(n+1)+A192305(n+1)-A000071(n+2)` -/
def P9848275382005545185.Spec : Prop :=
  ∀ n, P9848275382005545185.a n = A192307 (n + 1)

theorem P9848275382005545185.correct : P9848275382005545185.Spec := by
  intro n
  simp only [A192307, Nat.add_sub_cancel, A192307.P9848275382005545185.a, A192307.P2714161128456340537.a, A000071, A000071.P17543778731970887199.a, A045925, A045925.P2609971174242523106.a, A190062, A190062.P16595495950276087387.a, A192305, A192305.P9314614046236981238.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192307

/-! ## A192307.P14027993108579272064

`A094584(n+1)-(A264147(n+1)+A264147(n+1))`
-/

namespace A192307.P14027993108579272064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094584 (n + 1) - (A264147 (n + 1) + A264147 (n + 1))

end

end A192307.P14027993108579272064

namespace A192307

/-- `A094584(n+1)-(A264147(n+1)+A264147(n+1))` -/
def P14027993108579272064.Spec : Prop :=
  ∀ n, P14027993108579272064.a n = A192307 (n + 1)

end A192307

/-!
# A192308: 1-sequence of reduction of (3n) by x^2 -> x+1.

The programs for A192308, the canonical program `A192308.P10463933346683699392` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192308 has offset 1).

The definition of A192308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192308.P16792650618346214509

`ogf((6x-3x^2)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A192308.P16792650618346214509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -3] [1, -3, 1, 3, -1, -1] n

end

end A192308.P16792650618346214509

namespace A192308

/-- `ogf((6x-3x^2)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P16792650618346214509.Spec : Prop :=
  ∀ n, P16792650618346214509.a n = A192308 (n + 1)

end A192308

/-! ## A192308.P10463933346683699392

`3*A122491(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A192308

/-- `3*A122491(n+2)` -/
def P10463933346683699392.Spec : Prop :=
  ∀ n, P10463933346683699392.a n = A192308 (n + 1)

theorem P10463933346683699392.correct : P10463933346683699392.Spec := by
  intro n
  simp only [A192308, Nat.add_sub_cancel]

end A192308

/-! ## A192308.P12380804680403393215

`∑[3*(n+1)*round(ϕ^n/sqrt(5))]`
-/

namespace A192308.P12380804680403393215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192308.P12380804680403393215

namespace A192308

/-- `∑[3*(n+1)*round(ϕ^n/sqrt(5))]` -/
def P12380804680403393215.Spec : Prop :=
  ∀ n, P12380804680403393215.a n = A192308 (n + 1)

end A192308

/-! ## A192308.P10506778276334213856

`3*∑[A099920(n)]`
-/

namespace A192308.P10506778276334213856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192308.P10506778276334213856

namespace A192308

/-- `3*∑[A099920(n)]` -/
def P10506778276334213856.Spec : Prop :=
  ∀ n, P10506778276334213856.a n = A192308 (n + 1)

end A192308

/-! ## A192308.P14108446300051514980

`3/2*A192306(n+1)`
-/

namespace A192308.P14108446300051514980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A192306 (n + 1) : ℚ)

end

end A192308.P14108446300051514980

namespace A192308

/-- `3/2*A192306(n+1)` -/
def P14108446300051514980.Spec : Prop :=
  ∀ n, P14108446300051514980.a n = (A192308 (n + 1) : ℚ)

theorem P14108446300051514980.correct : P14108446300051514980.Spec := by
  intro n
  simp only [A192308, Nat.add_sub_cancel, A192308.P14108446300051514980.a, A192308.P10463933346683699392.a, A122491, A122491.P1829163714605882116.a, A192306, A192306.P16180315663506534326.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192308

/-! ## A192308.P5433782138751307584

`A192310(n+1)+∑[A000045(n)]`
-/

namespace A192308.P5433782138751307584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192310 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192308.P5433782138751307584

namespace A192308

/-- `A192310(n+1)+∑[A000045(n)]` -/
def P5433782138751307584.Spec : Prop :=
  ∀ n, P5433782138751307584.a n = A192308 (n + 1)

end A192308

/-! ## A192308.P973688432715587176

`A178525(n+1)+A178521(n+1)`
-/

namespace A192308.P973688432715587176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178525 (n + 1) + A178521 (n + 1)

end

end A192308.P973688432715587176

namespace A192308

/-- `A178525(n+1)+A178521(n+1)` -/
def P973688432715587176.Spec : Prop :=
  ∀ n, P973688432715587176.a n = A192308 (n + 1)

end A192308

/-! ## A192308.P17803752248338010238

`A264147(n+1)+A094584(n+1)`
-/

namespace A192308.P17803752248338010238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 (n + 1) + A094584 (n + 1)

end

end A192308.P17803752248338010238

namespace A192308

/-- `A264147(n+1)+A094584(n+1)` -/
def P17803752248338010238.Spec : Prop :=
  ∀ n, P17803752248338010238.a n = A192308 (n + 1)

end A192308

/-! ## A192308.P3323315085674901105

`A192306(n+1)+A122491(n+2)`
-/

namespace A192308.P3323315085674901105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192306 (n + 1) + A122491 (n + 2)

end

end A192308.P3323315085674901105

namespace A192308

/-- `A192306(n+1)+A122491(n+2)` -/
def P3323315085674901105.Spec : Prop :=
  ∀ n, P3323315085674901105.a n = A192308 (n + 1)

theorem P3323315085674901105.correct : P3323315085674901105.Spec := by
  intro n
  simp only [A192308, Nat.add_sub_cancel, A192308.P3323315085674901105.a, A192308.P10463933346683699392.a, A122491, A122491.P1829163714605882116.a, A192306, A192306.P16180315663506534326.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192308

/-! ## A192308.P11515892172406385049

`A099920(n)+∑[A354044(n)+A099920(n)]`
-/

namespace A192308.P11515892172406385049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 n + A099920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192308.P11515892172406385049

namespace A192308

/-- `A099920(n)+∑[A354044(n)+A099920(n)]` -/
def P11515892172406385049.Spec : Prop :=
  ∀ n, P11515892172406385049.a n = A192308 (n + 1)

end A192308

/-! ## A192308.P1979763879728702042

`A178525(n+1)+A099920(n)+A023607(n)`
-/

namespace A192308.P1979763879728702042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178525 (n + 1) + (A099920 n + A023607 n)

end

end A192308.P1979763879728702042

namespace A192308

/-- `A178525(n+1)+A099920(n)+A023607(n)` -/
def P1979763879728702042.Spec : Prop :=
  ∀ n, P1979763879728702042.a n = A192308 (n + 1)

end A192308

/-! ## A192308.P15018487355298970508

`A023607(n+1)+A178525(n+1)-A000045(n+1)`
-/

namespace A192308.P15018487355298970508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) + (A178525 (n + 1) - A000045 (n + 1))

end

end A192308.P15018487355298970508

namespace A192308

/-- `A023607(n+1)+A178525(n+1)-A000045(n+1)` -/
def P15018487355298970508.Spec : Prop :=
  ∀ n, P15018487355298970508.a n = A192308 (n + 1)

end A192308

/-! ## A192308.P5287550425560324990

`A023607(n+1)+A094584(n+1)-A099920(n+1)`
-/

namespace A192308.P5287550425560324990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) + (A094584 (n + 1) - A099920 (n + 1))

end

end A192308.P5287550425560324990

namespace A192308

/-- `A023607(n+1)+A094584(n+1)-A099920(n+1)` -/
def P5287550425560324990.Spec : Prop :=
  ∀ n, P5287550425560324990.a n = A192308 (n + 1)

end A192308

/-!
# A192309: 0-sequence of reduction of (3n-1) by x^2 -> x+1.

The programs for A192309, the canonical program `A192309.P6707960768985448213` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192309 has offset 1).

The definition of A192309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192309.P8663507821345511888

`ogf((2-4x+6x^2-x^3)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A192309.P8663507821345511888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 6, -1] [1, -3, 1, 3, -1, -1] n

end

end A192309.P8663507821345511888

namespace A192309

/-- `ogf((2-4x+6x^2-x^3)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P8663507821345511888.Spec : Prop :=
  ∀ n, P8663507821345511888.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P14955972666640270356

`∑[(3*n+2)*A212804(n)]`
-/

namespace A192309.P14955972666640270356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192309.P14955972666640270356

namespace A192309

/-- `∑[(3*n+2)*A212804(n)]` -/
def P14955972666640270356.Spec : Prop :=
  ∀ n, P14955972666640270356.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P6707960768985448213

`∑[(3*n+2)*Δ[A000045(n)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192309

/-- `∑[(3*n+2)*Δ[A000045(n)]]` -/
def P6707960768985448213.Spec : Prop :=
  ∀ n, P6707960768985448213.a n = A192309 (n + 1)

theorem P6707960768985448213.correct : P6707960768985448213.Spec := by
  intro n
  simp only [A192309, Nat.add_sub_cancel]

end A192309

/-! ## A192309.P8252912462374187091

`∑[(3*n+2)*A000045(abs(1-n))]`
-/

namespace A192309.P8252912462374187091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192309.P8252912462374187091

namespace A192309

/-- `∑[(3*n+2)*A000045(abs(1-n))]` -/
def P8252912462374187091.Spec : Prop :=
  ∀ n, P8252912462374187091.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P1226266750861238408

`a(n-1)+(2*n+n+2)*A000045(n-1)` with `a(0)=2`
-/

namespace A192309.P1226266750861238408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (2 * n + (n + 2) : ℤ) * A000045 (n - 1)

end

end A192309.P1226266750861238408

namespace A192309

/-- `a(n-1)+(2*n+n+2)*A000045(n-1)` -/
def P1226266750861238408.Spec : Prop :=
  ∀ n, P1226266750861238408.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P17195521653096047262

`∑[Δ[A000045(n)]*A016789(n)]`
-/

namespace A192309.P17195521653096047262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192309.P17195521653096047262

namespace A192309

/-- `∑[Δ[A000045(n)]*A016789(n)]` -/
def P17195521653096047262.Spec : Prop :=
  ∀ n, P17195521653096047262.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P14506749774542162973

`A192305(n+1)+A122491(n+1)`
-/

namespace A192309.P14506749774542162973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192305 (n + 1) + A122491 (n + 1)

end

end A192309.P14506749774542162973

namespace A192309

/-- `A192305(n+1)+A122491(n+1)` -/
def P14506749774542162973.Spec : Prop :=
  ∀ n, P14506749774542162973.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P7033735202103754123

`A192304(n+1)+A190062(n+1)`
-/

namespace A192309.P7033735202103754123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192304 (n + 1) + A190062 (n + 1)

end

end A192309.P7033735202103754123

namespace A192309

/-- `A192304(n+1)+A190062(n+1)` -/
def P7033735202103754123.Spec : Prop :=
  ∀ n, P7033735202103754123.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P3517527488377080145

`A192307(n+1)-A000045(n+1)`
-/

namespace A192309.P3517527488377080145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192307 (n + 1) - A000045 (n + 1)

end

end A192309.P3517527488377080145

namespace A192309

/-- `A192307(n+1)-A000045(n+1)` -/
def P3517527488377080145.Spec : Prop :=
  ∀ n, P3517527488377080145.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P8217609184927578788

`A192304(n+1)+A192305(n+1)/2`
-/

namespace A192309.P8217609184927578788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192304 (n + 1) : ℚ) + (A192305 (n + 1) : ℚ) / 2

end

end A192309.P8217609184927578788

namespace A192309

/-- `A192304(n+1)+A192305(n+1)/2` -/
def P8217609184927578788.Spec : Prop :=
  ∀ n, P8217609184927578788.a n = (A192309 (n + 1) : ℚ)

end A192309

/-! ## A192309.P17006544578115919158

`A136376(n+1)+A178525(n)-A264147(n+1)`
-/

namespace A192309.P17006544578115919158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 1) + (A178525 n - A264147 (n + 1))

end

end A192309.P17006544578115919158

namespace A192309

/-- `A136376(n+1)+A178525(n)-A264147(n+1)` -/
def P17006544578115919158.Spec : Prop :=
  ∀ n, P17006544578115919158.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P877257000868330094

`A190062(n+1)+A190062(n+1)+A122491(n+1)`
-/

namespace A192309.P877257000868330094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190062 (n + 1) + (A190062 (n + 1) + A122491 (n + 1))

end

end A192309.P877257000868330094

namespace A192309

/-- `A190062(n+1)+A190062(n+1)+A122491(n+1)` -/
def P877257000868330094.Spec : Prop :=
  ∀ n, P877257000868330094.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P15582008711846103717

`A190062(n+1)+A192305(n+1)-A000045(n+1)`
-/

namespace A192309.P15582008711846103717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190062 (n + 1) + (A192305 (n + 1) - A000045 (n + 1))

end

end A192309.P15582008711846103717

namespace A192309

/-- `A190062(n+1)+A192305(n+1)-A000045(n+1)` -/
def P15582008711846103717.Spec : Prop :=
  ∀ n, P15582008711846103717.a n = A192309 (n + 1)

end A192309

/-! ## A192309.P12506665402220695386

`A192304(n+1)+A192304(n+1)-A122491(n+1)`
-/

namespace A192309.P12506665402220695386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192304 (n + 1) + (A192304 (n + 1) - A122491 (n + 1))

end

end A192309.P12506665402220695386

namespace A192309

/-- `A192304(n+1)+A192304(n+1)-A122491(n+1)` -/
def P12506665402220695386.Spec : Prop :=
  ∀ n, P12506665402220695386.a n = A192309 (n + 1)

end A192309

/-!
# A192310: 1-sequence of reduction of (3n-1) by x^2 -> x+1.

The programs for A192310, the canonical program `A192310.P2475868322072867542` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192310 has offset 1).

The definition of A192310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192310.P4010835226624063859

`ogf((5x-2x^2+x^3)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A192310.P4010835226624063859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -2, 1] [1, -3, 1, 3, -1, -1] n

end

end A192310.P4010835226624063859

namespace A192310

/-- `ogf((5x-2x^2+x^3)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P4010835226624063859.Spec : Prop :=
  ∀ n, P4010835226624063859.a n = A192310 (n + 1)

end A192310

/-! ## A192310.P1218972537035408085

`∑[(3*n+2)*round(ϕ^n/sqrt(5))]`
-/

namespace A192310.P1218972537035408085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192310.P1218972537035408085

namespace A192310

/-- `∑[(3*n+2)*round(ϕ^n/sqrt(5))]` -/
def P1218972537035408085.Spec : Prop :=
  ∀ n, P1218972537035408085.a n = A192310 (n + 1)

end A192310

/-! ## A192310.P2475868322072867542

`A192306(n+1)+A014286(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A192310

/-- `A192306(n+1)+A014286(n)` -/
def P2475868322072867542.Spec : Prop :=
  ∀ n, P2475868322072867542.a n = A192310 (n + 1)

theorem P2475868322072867542.correct : P2475868322072867542.Spec := by
  intro n
  simp only [A192310, Nat.add_sub_cancel]

end A192310

/-! ## A192310.P9124500136101026900

`A192312(n+1)+∑[A000045(n)]`
-/

namespace A192310.P9124500136101026900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192312 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192310.P9124500136101026900

namespace A192310

/-- `A192312(n+1)+∑[A000045(n)]` -/
def P9124500136101026900.Spec : Prop :=
  ∀ n, P9124500136101026900.a n = A192310 (n + 1)

end A192310

/-! ## A192310.P13830601174361518569

`A192306(n+1)+∑[A045925(n)]`
-/

namespace A192310.P13830601174361518569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192306 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192310.P13830601174361518569

namespace A192310

/-- `A192306(n+1)+∑[A045925(n)]` -/
def P13830601174361518569.Spec : Prop :=
  ∀ n, P13830601174361518569.a n = A192310 (n + 1)

end A192310

/-! ## A192310.P13755283421253439742

`A178525(n+1)+∑[A099920(n)]`
-/

namespace A192310.P13755283421253439742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178525 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192310.P13755283421253439742

namespace A192310

/-- `A178525(n+1)+∑[A099920(n)]` -/
def P13755283421253439742.Spec : Prop :=
  ∀ n, P13755283421253439742.a n = A192310 (n + 1)

end A192310

/-! ## A192310.P8112215561083231648

`A192308(n+1)-A000071(n+2)`
-/

namespace A192310.P8112215561083231648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192308 (n + 1) - A000071 (n + 2)

end

end A192310.P8112215561083231648

namespace A192310

/-- `A192308(n+1)-A000071(n+2)` -/
def P8112215561083231648.Spec : Prop :=
  ∀ n, P8112215561083231648.a n = A192310 (n + 1)

end A192310

/-! ## A192310.P7500776587562221122

`A192308(n+1)+A190062(n)-A099920(n)`
-/

namespace A192310.P7500776587562221122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192308 (n + 1) + (A190062 n - A099920 n)

end

end A192310.P7500776587562221122

namespace A192310

/-- `A192308(n+1)+A190062(n)-A099920(n)` -/
def P7500776587562221122.Spec : Prop :=
  ∀ n, P7500776587562221122.a n = A192310 (n + 1)

end A192310

/-! ## A192310.P5327840259277367470

`A122491(n+1)+A192306(n+1)+A190062(n)`
-/

namespace A192310.P5327840259277367470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 (n + 1) + (A192306 (n + 1) + A190062 n)

end

end A192310.P5327840259277367470

namespace A192310

/-- `A122491(n+1)+A192306(n+1)+A190062(n)` -/
def P5327840259277367470.Spec : Prop :=
  ∀ n, P5327840259277367470.a n = A192310 (n + 1)

end A192310

/-!
# A192311: 0-sequence of reduction of (3n-2) by x^2 -> x+1.

The programs for A192311, the canonical program `A192311.P6894955715271037330` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192311 has offset 1).

The definition of A192311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192311.P15667027349054084371

`ogf((1-2x+6x^2-2x^3)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A192311.P15667027349054084371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 6, -2] [1, -3, 1, 3, -1, -1] n

end

end A192311.P15667027349054084371

namespace A192311

/-- `ogf((1-2x+6x^2-2x^3)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P15667027349054084371.Spec : Prop :=
  ∀ n, P15667027349054084371.a n = A192311 (n + 1)

end A192311

/-! ## A192311.P572867159778218522

`∑[(3*n+1)*A212804(n)]`
-/

namespace A192311.P572867159778218522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192311.P572867159778218522

namespace A192311

/-- `∑[(3*n+1)*A212804(n)]` -/
def P572867159778218522.Spec : Prop :=
  ∀ n, P572867159778218522.a n = A192311 (n + 1)

end A192311

/-! ## A192311.P6894955715271037330

`∑[(3*n+1)*Δ[A000045(n)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192311

/-- `∑[(3*n+1)*Δ[A000045(n)]]` -/
def P6894955715271037330.Spec : Prop :=
  ∀ n, P6894955715271037330.a n = A192311 (n + 1)

theorem P6894955715271037330.correct : P6894955715271037330.Spec := by
  intro n
  simp only [A192311, Nat.add_sub_cancel]

end A192311

/-! ## A192311.P9469558633046081262

`∑[(3*n+1)*A000045(abs(1-n))]`
-/

namespace A192311.P9469558633046081262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192311.P9469558633046081262

namespace A192311

/-- `∑[(3*n+1)*A000045(abs(1-n))]` -/
def P9469558633046081262.Spec : Prop :=
  ∀ n, P9469558633046081262.a n = A192311 (n + 1)

end A192311

/-! ## A192311.P9534335209663053137

`a(n-1)+(2*n+1+n)*A000045(n-1)` with `a(0)=1`
-/

namespace A192311.P9534335209663053137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1 + n : ℤ) * A000045 (n - 1)

end

end A192311.P9534335209663053137

namespace A192311

/-- `a(n-1)+(2*n+1+n)*A000045(n-1)` -/
def P9534335209663053137.Spec : Prop :=
  ∀ n, P9534335209663053137.a n = A192311 (n + 1)

end A192311

/-! ## A192311.P9000219766392306758

`A264147(n+2)+A178525(n)`
-/

namespace A192311.P9000219766392306758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 (n + 2) + A178525 n

end

end A192311.P9000219766392306758

namespace A192311

/-- `A264147(n+2)+A178525(n)` -/
def P9000219766392306758.Spec : Prop :=
  ∀ n, P9000219766392306758.a n = A192311 (n + 1)

end A192311

/-! ## A192311.P12750806462145747180

`A192304(n+1)+A122491(n+1)`
-/

namespace A192311.P12750806462145747180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192304 (n + 1) + A122491 (n + 1)

end

end A192311.P12750806462145747180

namespace A192311

/-- `A192304(n+1)+A122491(n+1)` -/
def P12750806462145747180.Spec : Prop :=
  ∀ n, P12750806462145747180.a n = A192311 (n + 1)

end A192311

/-! ## A192311.P13469924558573221499

`A000045(n+1)+A178525(n)+A178521(n)`
-/

namespace A192311.P13469924558573221499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A178525 n + A178521 n)

end

end A192311.P13469924558573221499

namespace A192311

/-- `A000045(n+1)+A178525(n)+A178521(n)` -/
def P13469924558573221499.Spec : Prop :=
  ∀ n, P13469924558573221499.a n = A192311 (n + 1)

end A192311

/-! ## A192311.P4894147372898013100

`A122491(n+1)+A190062(n+1)+A122491(n+1)`
-/

namespace A192311.P4894147372898013100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 (n + 1) + (A190062 (n + 1) + A122491 (n + 1))

end

end A192311.P4894147372898013100

namespace A192311

/-- `A122491(n+1)+A190062(n+1)+A122491(n+1)` -/
def P4894147372898013100.Spec : Prop :=
  ∀ n, P4894147372898013100.a n = A192311 (n + 1)

end A192311

/-! ## A192311.P9630043492558606191

`A122491(n+1)+A192305(n+1)-A000045(n+1)`
-/

namespace A192311.P9630043492558606191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 (n + 1) + (A192305 (n + 1) - A000045 (n + 1))

end

end A192311.P9630043492558606191

namespace A192311

/-- `A122491(n+1)+A192305(n+1)-A000045(n+1)` -/
def P9630043492558606191.Spec : Prop :=
  ∀ n, P9630043492558606191.a n = A192311 (n + 1)

end A192311

/-! ## A192311.P9844525506748511073

`A192304(n+1)+A192304(n+1)-A190062(n+1)`
-/

namespace A192311.P9844525506748511073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192304 (n + 1) + (A192304 (n + 1) - A190062 (n + 1))

end

end A192311.P9844525506748511073

namespace A192311

/-- `A192304(n+1)+A192304(n+1)-A190062(n+1)` -/
def P9844525506748511073.Spec : Prop :=
  ∀ n, P9844525506748511073.a n = A192311 (n + 1)

end A192311

/-! ## A192311.P10817621857195507256

`A094584(n+1)-2*A099920(n)`
-/

namespace A192311.P10817621857195507256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094584 (n + 1) - 2 * A099920 n

end

end A192311.P10817621857195507256

namespace A192311

/-- `A094584(n+1)-2*A099920(n)` -/
def P10817621857195507256.Spec : Prop :=
  ∀ n, P10817621857195507256.a n = A192311 (n + 1)

end A192311

/-!
# A192312: 1-sequence of reduction of (3n-2) by x^2 -> x+1.

The programs for A192312, the canonical program `A192312.P7920549663961214394` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192312 has offset 1).

The definition of A192312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192312.P11263364364527324463

`ogf((4x-x^2+2x^3)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A192312.P11263364364527324463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1, 2] [1, -3, 1, 3, -1, -1] n

end

end A192312.P11263364364527324463

namespace A192312

/-- `ogf((4x-x^2+2x^3)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P11263364364527324463.Spec : Prop :=
  ∀ n, P11263364364527324463.a n = A192312 (n + 1)

end A192312

/-! ## A192312.P10705844590418979409

`∑[(3*n+1)*round(ϕ^n/sqrt(5))]`
-/

namespace A192312.P10705844590418979409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192312.P10705844590418979409

namespace A192312

/-- `∑[(3*n+1)*round(ϕ^n/sqrt(5))]` -/
def P10705844590418979409.Spec : Prop :=
  ∀ n, P10705844590418979409.a n = A192312 (n + 1)

end A192312

/-! ## A192312.P7920549663961214394

`A178525(n+1)+∑[A045925(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A192312

/-- `A178525(n+1)+∑[A045925(n)]` -/
def P7920549663961214394.Spec : Prop :=
  ∀ n, P7920549663961214394.a n = A192312 (n + 1)

theorem P7920549663961214394.correct : P7920549663961214394.Spec := by
  intro n
  simp only [A192312, Nat.add_sub_cancel]

end A192312

/-! ## A192312.P2208730629187588954

`A192310(n+1)-∑[A000045(n)]`
-/

namespace A192312.P2208730629187588954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192310 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192312.P2208730629187588954

namespace A192312

/-- `A192310(n+1)-∑[A000045(n)]` -/
def P2208730629187588954.Spec : Prop :=
  ∀ n, P2208730629187588954.a n = A192312 (n + 1)

end A192312

/-! ## A192312.P4153229044863269193

`A192310(n+1)-∑[A157729(n)-5]`
-/

namespace A192312.P4153229044863269193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192310 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192312.P4153229044863269193

namespace A192312

/-- `A192310(n+1)-∑[A157729(n)-5]` -/
def P4153229044863269193.Spec : Prop :=
  ∀ n, P4153229044863269193.a n = A192312 (n + 1)

end A192312

/-! ## A192312.P12965039105700819302

`A192255(n+1)-2*A117152(n)`
-/

namespace A192312.P12965039105700819302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192255 (n + 1) - 2 * A117152 n

end

end A192312.P12965039105700819302

namespace A192312

/-- `A192255(n+1)-2*A117152(n)` -/
def P12965039105700819302.Spec : Prop :=
  ∀ n, P12965039105700819302.a n = A192312 (n + 1)

end A192312

/-!
# A192313: Constant term of the reduction of n-th polynomial at A157751 by x^2->x+1.

The programs for A192313, the canonical program `A192313.P16120343567810669735` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192313 has offset 1).

The definition of A192313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192313.P16120343567810669735

`ogf((1-2x-2x^2+x^3)/(1-4x+x^2+6x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192313

/-- `ogf((1-2x-2x^2+x^3)/(1-4x+x^2+6x^3+x^4))` -/
def P16120343567810669735.Spec : Prop :=
  ∀ n, P16120343567810669735.a n = A192313 (n + 1)

theorem P16120343567810669735.correct : P16120343567810669735.Spec := by
  intro n
  simp only [A192313, Nat.add_sub_cancel]

end A192313

/-! ## A192313.P5489622190553278233

`A027923(A378425(n+1))`
-/

namespace A192313.P5489622190553278233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027923 (A378425 (n + 1)).toNat

end

end A192313.P5489622190553278233

namespace A192313

/-- `A027923(A378425(n+1))` -/
def P5489622190553278233.Spec : Prop :=
  ∀ n, P5489622190553278233.a n = A192313 (n + 1)

end A192313

/-! ## A192313.P1134486252186266866

`∑[A165190(A364485(n+4))]`
-/

namespace A192313.P1134486252186266866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A364485 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192313.P1134486252186266866

namespace A192313

/-- `∑[A165190(A364485(n+4))]` -/
def P1134486252186266866.Spec : Prop :=
  ∀ n, P1134486252186266866.a n = A192313 (n + 1)

end A192313

/-! ## A192313.P7627949477466136673

`A245900(n+1)+∑[A001654(n)]`
-/

namespace A192313.P7627949477466136673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192313.P7627949477466136673

namespace A192313

/-- `A245900(n+1)+∑[A001654(n)]` -/
def P7627949477466136673.Spec : Prop :=
  ∀ n, P7627949477466136673.a n = A192313 (n + 1)

end A192313

/-!
# A192314: For n >= 3, draw a regular n-sided polygon and its n*(n-3)/2 diagonals, so there are n*(n-1)/2 lines; a(n) is the number of ways to choose a nonempty subset of these lines (subsets differing by a rotation are regarded as identical). a(1)=0, a(2)=1 by convention.

The programs for A192314, there is no canonical definition to state claims against.
-/

/-! ## A192314.P2894531698838865542

`A192332(n+1)-1`
-/

namespace A192314.P2894531698838865542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192332 (n + 1) - 1

end

end A192314.P2894531698838865542

/-! ## A192314.P5429122181398783742

`record[Δ[A192332(A193592(n))]]`
-/

namespace A192314.P5429122181398783742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192332 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192314.P5429122181398783742

/-! ## A192314.P15832494062674603169

`record[Δ[A192332(A173261(n+2))]]`
-/

namespace A192314.P15832494062674603169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192332 (A173261 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192314.P15832494062674603169

/-! ## A192314.P4680680917092681225

`A260196(n+2)+A192332(n+1)`
-/

namespace A192314.P4680680917092681225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A192332 (n + 1)

end

end A192314.P4680680917092681225

/-! ## A192314.P7327791175207872616

`A192437(A139553(n))+A192332(n+1)`
-/

namespace A192314.P7327791175207872616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192437 (A139553 n).toNat + A192332 (n + 1)

end

end A192314.P7327791175207872616

/-!
# A192315: G.f. A(x) satisfies: A(x)^2 = Sum_{n>=0} x^n*A(x)^(2^n).

The programs for A192315, there is no canonical definition to state claims against.
-/

/-! ## A192315.P2159009340127635518

`A214701(A125273(n))`
-/

namespace A192315.P2159009340127635518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A125273 n).toNat

end

end A192315.P2159009340127635518

/-! ## A192315.P13402334113200368368

`A214701(A336070(n))`
-/

namespace A192315.P13402334113200368368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A336070 n).toNat

end

end A192315.P13402334113200368368

/-! ## A192315.P3161202265793220730

`A002266(A072978(floor((4-2/(n+1))*a(n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A192315.P3161202265793220730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002266 (A072978 ⌊(4 - 2 / (n + 1 : ℚ)) * (a (n - 1) : ℚ)⌋.toNat).toNat

end

end A192315.P3161202265793220730

/-!
# A192317: G.f.: A(x) = Sum_{n>=0} x^n/(1-x)^A038722(n), where A038722(n) = floor(sqrt(2*n)+1/2)^2 - n + 1.

The programs for A192317, there is no canonical definition to state claims against.
-/

/-! ## A192317.P16107044688343961081

`ceil((A325352(ceil(2^(n-1)))+floor((9/4)^n))/π)`
-/

namespace A192317.P16107044688343961081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325352 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ⌊((9 : ℚ) / 4) ^ n⌋ : ℝ) / Real.pi⌉

end

end A192317.P16107044688343961081

/-! ## A192317.P12894782407367189103

`A137620(A358836(n))`
-/

namespace A192317.P12894782407367189103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A358836 n).toNat

end

end A192317.P12894782407367189103

/-! ## A192317.P358352571410205898

`A261104(A360090(n))`
-/

namespace A192317.P358352571410205898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A360090 n).toNat

end

end A192317.P358352571410205898

/-! ## A192317.P8553565644304953439

`A235963(A058681(n))+1`
-/

namespace A192317.P8553565644304953439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A058681 n).toNat + 1

end

end A192317.P8553565644304953439

/-!
# A192318: G.f. A(x) satisfies A(x) = Sum_{n>=0} x^n * A(x)^A038722(n), where A038722(n) = floor(sqrt(2*n)+1/2)^2 - n + 1.

The programs for A192318, there is no canonical definition to state claims against.
-/

/-! ## A192318.P2385123829797606954

`A386758(A143330(n+1))`
-/

namespace A192318.P2385123829797606954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (A143330 (n + 1)).toNat

end

end A192318.P2385123829797606954

/-! ## A192318.P538057677678476831

`A386758(A171199(n+1))`
-/

namespace A192318.P538057677678476831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (A171199 (n + 1)).toNat

end

end A192318.P538057677678476831

/-! ## A192318.P7813115016659138325

`A092695(abs(A329128(2*n+1)-(n-3))+2)`
-/

namespace A192318.P7813115016659138325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 (|A329128 (2 * n + 1) - ((n : ℤ) - 3)| + 2).toNat

end

end A192318.P7813115016659138325

/-! ## A192318.P9214303013308130812

`A052336(n+1)+A002265(A360185(n))`
-/

namespace A192318.P9214303013308130812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052336 (n + 1) + A002265 (A360185 n).toNat

end

end A192318.P9214303013308130812

/-!
# A192321: Semiprime numbers n such that n^2 + n + 1 is prime.

The programs for A192321, there is no canonical definition to state claims against.
-/

/-! ## A192321.P291017313156662510

`filter[A002384(n+1), A064911(#)]`
-/

namespace A192321.P291017313156662510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A192321.P291017313156662510

/-! ## A192321.P16155359678252848415

`filter[A096176(n+1), A064911(#)]`
-/

namespace A192321.P16155359678252848415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A192321.P16155359678252848415

/-! ## A192321.P7804636965650776047

`filter[A182253(n+1), A064911(#)]`
-/

namespace A192321.P7804636965650776047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A192321.P7804636965650776047

/-! ## A192321.P9044443647237892436

`filter[A002384(n+1), A280710(#)]`
-/

namespace A192321.P9044443647237892436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A192321.P9044443647237892436

/-! ## A192321.P8343451615021901491

`filter[A182253(n+1), A101040(#)]`
-/

namespace A192321.P8343451615021901491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A192321.P8343451615021901491

/-! ## A192321.P6719112541063808690

`filter[A096176(n+1), A280710(#)]`
-/

namespace A192321.P6719112541063808690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A192321.P6719112541063808690

/-! ## A192321.P1722838016606173990

`filter[A182253(n+1), A280710(#)]`
-/

namespace A192321.P1722838016606173990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A192321.P1722838016606173990

/-! ## A192321.P14689917284995911799

`filter[A182253(n+1), A353471(#)]`
-/

namespace A192321.P14689917284995911799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A192321.P14689917284995911799

/-! ## A192321.P8536822766085189765

`∩[A001358(n+1), A002384(n+1)]`
-/

namespace A192321.P8536822766085189765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P8536822766085189765

/-! ## A192321.P15134126964205130434

`∩[A001358(n+1), A096176(n+1)]`
-/

namespace A192321.P15134126964205130434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P15134126964205130434

/-! ## A192321.P3149982378045569770

`∩[A001358(n+1), A182253(n+1)]`
-/

namespace A192321.P3149982378045569770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P3149982378045569770

/-! ## A192321.P2390227792219828996

`∩[A002384(n+1), A006881(n+1)]`
-/

namespace A192321.P2390227792219828996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P2390227792219828996

/-! ## A192321.P15300128559195225909

`∩[A006881(n+1), A096176(n+1)]`
-/

namespace A192321.P15300128559195225909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P15300128559195225909

/-! ## A192321.P4075018723958376361

`∩[A006881(n+1), A182253(n+1)]`
-/

namespace A192321.P4075018723958376361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P4075018723958376361

/-! ## A192321.P11264889983973389176

`∩[A002384(n+1), A068993(n+1)]`
-/

namespace A192321.P11264889983973389176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P11264889983973389176

/-! ## A192321.P6457157458965980845

`∩[A068993(n+1), A096176(n+1)]`
-/

namespace A192321.P6457157458965980845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P6457157458965980845

/-! ## A192321.P6817593657249111603

`∩[A068993(n+1), A182253(n+1)]`
-/

namespace A192321.P6817593657249111603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P6817593657249111603

/-! ## A192321.P11322522967264191599

`∩[A096176(n+1), A176540(n+1)]`
-/

namespace A192321.P11322522967264191599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P11322522967264191599

/-! ## A192321.P13782919019632876745

`∩[A167171(n+1), A182253(n+1)]`
-/

namespace A192321.P13782919019632876745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192321.P13782919019632876745

/-! ## A192321.P15770616436069665555

`lt[A289356(n), A105700(n)]`
-/

namespace A192321.P15770616436069665555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192321.P15770616436069665555

/-!
# A192322: Negated discriminants of imaginary quadratic number fields whose class group is isomorphic to the Klein 4-group, C2 x C2.

The programs for A192322, there is no canonical definition to state claims against.
-/

/-! ## A192322.P11807957370930662510

`filter[A013658(n+1), A092248(#)]`
-/

namespace A192322.P11807957370930662510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A192322.P11807957370930662510

/-! ## A192322.P4155064147908349793

`filter[A013658(n+1), A359606(#)]`
-/

namespace A192322.P4155064147908349793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359606 (f1 j).toNat = 1) n)

end

end A192322.P4155064147908349793

/-! ## A192322.P11516631737638664167

`filter[A316743(n+1), A092248(#)]`
-/

namespace A192322.P11516631737638664167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A192322.P11516631737638664167

/-! ## A192322.P8245577992116130865

`filter[A316743(n+1), A359606(#)]`
-/

namespace A192322.P8245577992116130865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359606 (f1 j).toNat = 1) n)

end

end A192322.P8245577992116130865

/-! ## A192322.P17541717101786696195

`∩[A000977(n+1), A013658(n+1)]`
-/

namespace A192322.P17541717101786696195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192322.P17541717101786696195

/-!
# A192323: Expansion of theta_3(q^3) * theta_3(q^5) in powers of q.

The programs for A192323, there is no canonical definition to state claims against.
-/

/-! ## A192323.P15480145282092963363

`2*A122855(n)-A260671(n)`
-/

namespace A192323.P15480145282092963363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122855 n - A260671 n

end

end A192323.P15480145282092963363

/-! ## A192323.P5404024240606737787

`A005843(A122855(n))-A260671(n)`
-/

namespace A192323.P5404024240606737787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A122855 n).toNat - A260671 n

end

end A192323.P5404024240606737787

/-! ## A192323.P7741636979105309737

`A260671(3*n)`
-/

namespace A192323.P7741636979105309737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (3 * n)

end

end A192323.P7741636979105309737

/-! ## A192323.P9820510755520708565

`A260671(A008585(n))%A000040(n+1)`
-/

namespace A192323.P9820510755520708565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260671 (A008585 n).toNat) (A000040 (n + 1))

end

end A192323.P9820510755520708565

/-! ## A192323.P8287450386194528707

`A260671(A008587(n))/(1-4/2)²`
-/

namespace A192323.P8287450386194528707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260671 (A008587 n).toNat : ℚ) / (1 - (4 : ℚ) / 2) ^ 2

end

end A192323.P8287450386194528707

/-! ## A192323.P11793413019449157041

`A260671(A008706(n))-A000007(n)`
-/

namespace A192323.P11793413019449157041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (A008706 n).toNat - A000007 n

end

end A192323.P11793413019449157041

/-! ## A192323.P5340293639231574158

`A260671(A008706(n))/(A260671(n)+1)`
-/

namespace A192323.P5340293639231574158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260671 (A008706 n).toNat : ℚ) / (A260671 n + 1 : ℚ)

end

end A192323.P5340293639231574158

/-! ## A192323.P2779703763500701161

`A260671(A008706(n))/A260671(A260671(n)²)`
-/

namespace A192323.P2779703763500701161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260671 (A008706 n).toNat : ℚ) / (A260671 (A260671 n ^ 2).toNat : ℚ)

end

end A192323.P2779703763500701161

/-! ## A192323.P6783689809736792306

`A260671(A008706(n)+A000007(n))+A000007(n)`
-/

namespace A192323.P6783689809736792306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (A008706 n + A000007 n).toNat + A000007 n

end

end A192323.P6783689809736792306

/-! ## A192323.P3406946351095332482

`A260671(A008587(n))+A070635(A005349(n+1))`
-/

namespace A192323.P3406946351095332482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (A008587 n).toNat + A070635 (A005349 (n + 1)).toNat

end

end A192323.P3406946351095332482

/-!
# A192324: Sequence of numbers formed as remainder of Mersenne numbers divided by primes.

The programs for A192324, the canonical program `A192324.P11288840329029903282` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192324 has offset 1).

The definition of A192324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192324.P11288840329029903282

`(2^(n+1)-1)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192324

/-- `(2^(n+1)-1)%A000040(n+1)` -/
def P11288840329029903282.Spec : Prop :=
  ∀ n, P11288840329029903282.a n = A192324 (n + 1)

theorem P11288840329029903282.correct : P11288840329029903282.Spec := by
  intro n
  simp only [A192324, Nat.add_sub_cancel]

end A192324

/-! ## A192324.P752085597701134447

`abs(1-A064367(n+1))`
-/

namespace A192324.P752085597701134447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A064367 (n + 1)|

end

end A192324.P752085597701134447

namespace A192324

/-- `abs(1-A064367(n+1))` -/
def P752085597701134447.Spec : Prop :=
  ∀ n, P752085597701134447.a n = A192324 (n + 1)

end A192324

/-! ## A192324.P1844278963109535892

`A064367(n+1)-A158388(n)`
-/

namespace A192324.P1844278963109535892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064367 (n + 1) - A158388 n

end

end A192324.P1844278963109535892

namespace A192324

/-- `A064367(n+1)-A158388(n)` -/
def P1844278963109535892.Spec : Prop :=
  ∀ n, P1844278963109535892.a n = A192324 (n + 1)

end A192324

/-! ## A192324.P12592308055212731567

`A153881(n+1)+A064367(n+1)`
-/

namespace A192324.P12592308055212731567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + A064367 (n + 1)

end

end A192324.P12592308055212731567

namespace A192324

/-- `A153881(n+1)+A064367(n+1)` -/
def P12592308055212731567.Spec : Prop :=
  ∀ n, P12592308055212731567.a n = A192324 (n + 1)

end A192324

/-! ## A192324.P1735466575783681107

`A064367(n+1)+A008683(xor(3, C(2, n+1)))`
-/

namespace A192324.P1735466575783681107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064367 (n + 1) + A008683 (Nat.xor 3 (Nat.choose 2 (n + 1)))

end

end A192324.P1735466575783681107

namespace A192324

/-- `A064367(n+1)+A008683(xor(3, C(2, n+1)))` -/
def P1735466575783681107.Spec : Prop :=
  ∀ n, P1735466575783681107.a n = A192324 (n + 1)

end A192324

/-! ## A192324.P13718245573100398003

`∑[2^n]%Δ[A007504(n)]`
-/

namespace A192324.P13718245573100398003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f2 (n + 1) - f2 n)

end

end A192324.P13718245573100398003

namespace A192324

/-- `∑[2^n]%Δ[A007504(n)]` -/
def P13718245573100398003.Spec : Prop :=
  ∀ n, P13718245573100398003.a n = A192324 (n + 1)

end A192324

/-! ## A192324.P10698029255360499532

`(2*∑[2^(n-1)])%record[A014963(n+2)]`
-/

namespace A192324.P10698029255360499532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (2 * (∑ j ∈ Finset.range (n + 1), f1 j))) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A192324.P10698029255360499532

namespace A192324

/-- `(2*∑[2^(n-1)])%record[A014963(n+2)]` -/
def P10698029255360499532.Spec : Prop :=
  ∀ n, P10698029255360499532.a n = A192324 (n + 1)

end A192324

/-! ## A192324.P9900143083769698135

`A140407(2*n)%-A000040(n+1)`
-/

namespace A192324.P9900143083769698135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140407 (2 * n)) (-A000040 (n + 1))

end

end A192324.P9900143083769698135

namespace A192324

/-- `A140407(2*n)%-A000040(n+1)` -/
def P9900143083769698135.Spec : Prop :=
  ∀ n, P9900143083769698135.a n = A192324 (n + 1)

end A192324

/-!
# A192325: Half the number of n X n symmetric binary matrices with no element both equal to all its immediate N and W neighbors if they exist and unequal to all its immediate E and S neighbors if they exist.

The programs for A192325, there is no canonical definition to state claims against.
-/

/-! ## A192325.P8670051713192789005

`A324755(∑[2^n]-(round((n-1)/2)+2))`
-/

namespace A192325.P8670051713192789005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324755 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2)).toNat

end

end A192325.P8670051713192789005

/-!
# A192326: Remainders of primes divided by odd numbers.

The programs for A192326, the canonical program `A192326.P15479614738188850942` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192326 has offset 1).

The definition of A192326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192326.P15479614738188850942

`A000040(n+1)%(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192326

/-- `A000040(n+1)%(2*(n+1)-1)` -/
def P15479614738188850942.Spec : Prop :=
  ∀ n, P15479614738188850942.a n = A192326 (n + 1)

theorem P15479614738188850942.correct : P15479614738188850942.Spec := by
  intro n
  simp only [A192326, Nat.add_sub_cancel]

end A192326

/-! ## A192326.P9052442821381168324

`(2*3*p?[round(8*n/7)]/6)%(2*n+1)`
-/

namespace A192326.P9052442821381168324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (2 * ((3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6))) (2 * n + 1 : ℤ)

end

end A192326.P9052442821381168324

namespace A192326

/-- `(2*3*p?[round(8*n/7)]/6)%(2*n+1)` -/
def P9052442821381168324.Spec : Prop :=
  ∀ n, P9052442821381168324.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P18315722277933163170

`A006005(n+1)%(2*n+1)`
-/

namespace A192326.P18315722277933163170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (2 * n + 1 : ℤ)

end

end A192326.P18315722277933163170

namespace A192326

/-- `A006005(n+1)%(2*n+1)` -/
def P18315722277933163170.Spec : Prop :=
  ∀ n, P18315722277933163170.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P5296492554604932709

`A131733(n+1)%(2*n+1)`
-/

namespace A192326.P5296492554604932709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131733 (n + 1)) (2 * n + 1 : ℤ)

end

end A192326.P5296492554604932709

namespace A192326

/-- `A131733(n+1)%(2*n+1)` -/
def P5296492554604932709.Spec : Prop :=
  ∀ n, P5296492554604932709.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P11746767670292624913

`A171577(n+1)%A267872(n)`
-/

namespace A192326.P11746767670292624913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171577 (n + 1)) (A267872 n)

end

end A192326.P11746767670292624913

namespace A192326

/-- `A171577(n+1)%A267872(n)` -/
def P11746767670292624913.Spec : Prop :=
  ∀ n, P11746767670292624913.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P15511521994002076496

`A008578(n+2)%(2*n+1)`
-/

namespace A192326.P15511521994002076496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (2 * n + 1 : ℤ)

end

end A192326.P15511521994002076496

namespace A192326

/-- `A008578(n+2)%(2*n+1)` -/
def P15511521994002076496.Spec : Prop :=
  ∀ n, P15511521994002076496.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P3535298716231379175

`A182986(n+2)%(2*n+1)`
-/

namespace A192326.P3535298716231379175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182986 (n + 2)) (2 * n + 1 : ℤ)

end

end A192326.P3535298716231379175

namespace A192326

/-- `A182986(n+2)%(2*n+1)` -/
def P3535298716231379175.Spec : Prop :=
  ∀ n, P3535298716231379175.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P5162867561646759287

`A158611(n+3)%(2*n+1)`
-/

namespace A192326.P5162867561646759287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158611 (n + 3)) (2 * n + 1 : ℤ)

end

end A192326.P5162867561646759287

namespace A192326

/-- `A158611(n+3)%(2*n+1)` -/
def P5162867561646759287.Spec : Prop :=
  ∀ n, P5162867561646759287.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P14447490048578045473

`p?[abs(xor(n, -2))]%Δ[n²]`
-/

namespace A192326.P14447490048578045473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A192326.P14447490048578045473

namespace A192326

/-- `p?[abs(xor(n, -2))]%Δ[n²]` -/
def P14447490048578045473.Spec : Prop :=
  ∀ n, P14447490048578045473.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P8082928997286174639

`p?[xor(1, n)+1]%Δ[n²]`
-/

namespace A192326.P8082928997286174639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A192326.P8082928997286174639

namespace A192326

/-- `p?[xor(1, n)+1]%Δ[n²]` -/
def P8082928997286174639.Spec : Prop :=
  ∀ n, P8082928997286174639.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P14025339022539487620

`or(1, p?[xor(1, n)])%Δ[n²]`
-/

namespace A192326.P14025339022539487620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A192326.P14025339022539487620

namespace A192326

/-- `or(1, p?[xor(1, n)])%Δ[n²]` -/
def P14025339022539487620.Spec : Prop :=
  ∀ n, P14025339022539487620.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P11006804667653491466

`p?[n%3+n]%Δ[n²]`
-/

namespace A192326.P11006804667653491466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A192326.P11006804667653491466

namespace A192326

/-- `p?[n%3+n]%Δ[n²]` -/
def P11006804667653491466.Spec : Prop :=
  ∀ n, P11006804667653491466.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P13297988292503987945

`p?[-xor(1, -n)]%Δ[n²]`
-/

namespace A192326.P13297988292503987945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A192326.P13297988292503987945

namespace A192326

/-- `p?[-xor(1, -n)]%Δ[n²]` -/
def P13297988292503987945.Spec : Prop :=
  ∀ n, P13297988292503987945.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P400114821936503704

`p?[round(n-sqrt(n))]%Δ[n²]`
-/

namespace A192326.P400114821936503704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A192326.P400114821936503704

namespace A192326

/-- `p?[round(n-sqrt(n))]%Δ[n²]` -/
def P400114821936503704.Spec : Prop :=
  ∀ n, P400114821936503704.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P6423689598283880898

`A067747(2*n+1)%(2*n+1)`
-/

namespace A192326.P6423689598283880898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067747 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A192326.P6423689598283880898

namespace A192326

/-- `A067747(2*n+1)%(2*n+1)` -/
def P6423689598283880898.Spec : Prop :=
  ∀ n, P6423689598283880898.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P4527153836050450745

`A075643(n+2)%(2*n+1)`
-/

namespace A192326.P4527153836050450745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075643 (n + 2)) (2 * n + 1 : ℤ)

end

end A192326.P4527153836050450745

namespace A192326

/-- `A075643(n+2)%(2*n+1)` -/
def P4527153836050450745.Spec : Prop :=
  ∀ n, P4527153836050450745.a n = A192326 (n + 1)

end A192326

/-! ## A192326.P8267345845152488643

`record[∑{p}[2*n+1, #]]%(2*n+1)`
-/

namespace A192326.P8267345845152488643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) % (2 * n + 1)

end

end A192326.P8267345845152488643

namespace A192326

/-- `record[∑{p}[2*n+1, #]]%(2*n+1)` -/
def P8267345845152488643.Spec : Prop :=
  ∀ n, (P8267345845152488643.a n : ℤ) = A192326 (n + 1)

end A192326

/-! ## A192326.P3476020182198825062

`∏{p}[p?[round(8*n/7)]², #]%Δ[n²]`
-/

namespace A192326.P3476020182198825062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A192326.P3476020182198825062

namespace A192326

/-- `∏{p}[p?[round(8*n/7)]², #]%Δ[n²]` -/
def P3476020182198825062.Spec : Prop :=
  ∀ n, P3476020182198825062.a n = A192326 (n + 1)

end A192326

/-!
# A192327: a(n) = prime(n) mod 2*n.

The programs for A192327, the canonical program `A192327.P1946610714250374120` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192327 has offset 1).

The definition of A192327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192327.P1946610714250374120

`A000040(n+1)%(2*(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192327

/-- `A000040(n+1)%(2*(n+1))` -/
def P1946610714250374120.Spec : Prop :=
  ∀ n, P1946610714250374120.a n = A192327 (n + 1)

theorem P1946610714250374120.correct : P1946610714250374120.Spec := by
  intro n
  simp only [A192327, Nat.add_sub_cancel]

end A192327

/-! ## A192327.P17850596698350954763

`Δ[A007504(n)]%(2*(n+1))`
-/

namespace A192327.P17850596698350954763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (2 * (n + 1) : ℤ)

end

end A192327.P17850596698350954763

namespace A192327

/-- `Δ[A007504(n)]%(2*(n+1))` -/
def P17850596698350954763.Spec : Prop :=
  ∀ n, P17850596698350954763.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P3406443016950232039

`sqrt(A001248(n+1))%(2*(n+1))`
-/

namespace A192327.P3406443016950232039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (2 * (n + 1) : ℤ)

end

end A192327.P3406443016950232039

namespace A192327

/-- `sqrt(A001248(n+1))%(2*(n+1))` -/
def P3406443016950232039.Spec : Prop :=
  ∀ n, P3406443016950232039.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P5498504177726466256

`∑[A054541(n+1)]%(2*(n+1))`
-/

namespace A192327.P5498504177726466256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 * (n + 1) : ℤ)

end

end A192327.P5498504177726466256

namespace A192327

/-- `∑[A054541(n+1)]%(2*(n+1))` -/
def P5498504177726466256.Spec : Prop :=
  ∀ n, P5498504177726466256.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P2303459785111652463

`(A006093(n+1)+1)%(2*(n+1))`
-/

namespace A192327.P2303459785111652463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) (2 * (n + 1) : ℤ)

end

end A192327.P2303459785111652463

namespace A192327

/-- `(A006093(n+1)+1)%(2*(n+1))` -/
def P2303459785111652463.Spec : Prop :=
  ∀ n, P2303459785111652463.a n = A192327 (n + 1)

theorem P2303459785111652463.correct : P2303459785111652463.Spec := by
  intro n
  simp only [A192327, Nat.add_sub_cancel, A192327.P2303459785111652463.a, A192327.P1946610714250374120.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192327

/-! ## A192327.P1358396263451378637

`(A008864(n+1)-1)%(2*(n+1))`
-/

namespace A192327.P1358396263451378637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) (2 * (n + 1) : ℤ)

end

end A192327.P1358396263451378637

namespace A192327

/-- `(A008864(n+1)-1)%(2*(n+1))` -/
def P1358396263451378637.Spec : Prop :=
  ∀ n, P1358396263451378637.a n = A192327 (n + 1)

theorem P1358396263451378637.correct : P1358396263451378637.Spec := by
  intro n
  simp only [A192327, Nat.add_sub_cancel, A192327.P1358396263451378637.a, A192327.P1946610714250374120.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192327

/-! ## A192327.P16432133444183799649

`(A052147(n+1)-2)%(2*(n+1))`
-/

namespace A192327.P16432133444183799649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052147 (n + 1) - 2) (2 * (n + 1) : ℤ)

end

end A192327.P16432133444183799649

namespace A192327

/-- `(A052147(n+1)-2)%(2*(n+1))` -/
def P16432133444183799649.Spec : Prop :=
  ∀ n, P16432133444183799649.a n = A192327 (n + 1)

theorem P16432133444183799649.correct : P16432133444183799649.Spec := by
  intro n
  simp only [A192327, Nat.add_sub_cancel, A192327.P16432133444183799649.a, A192327.P1946610714250374120.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192327

/-! ## A192327.P12998246045959552695

`(A113935(n+1)-3)%(2*(n+1))`
-/

namespace A192327.P12998246045959552695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113935 (n + 1) - 3) (2 * (n + 1) : ℤ)

end

end A192327.P12998246045959552695

namespace A192327

/-- `(A113935(n+1)-3)%(2*(n+1))` -/
def P12998246045959552695.Spec : Prop :=
  ∀ n, P12998246045959552695.a n = A192327 (n + 1)

theorem P12998246045959552695.correct : P12998246045959552695.Spec := by
  intro n
  simp only [A192327, Nat.add_sub_cancel, A192327.P12998246045959552695.a, A192327.P1946610714250374120.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192327

/-! ## A192327.P15208275240082458499

`ceil(sqrt(A054270(n+1)))%(2*(n+1))`
-/

namespace A192327.P15208275240082458499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A054270 (n + 1) : ℝ)⌉ (2 * (n + 1) : ℤ)

end

end A192327.P15208275240082458499

namespace A192327

/-- `ceil(sqrt(A054270(n+1)))%(2*(n+1))` -/
def P15208275240082458499.Spec : Prop :=
  ∀ n, P15208275240082458499.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P15847360597557885225

`(A100484(n+1)/2)%(char[1]+Δ[n²]+1)`
-/

namespace A192327.P15847360597557885225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)) (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 1)

end

end A192327.P15847360597557885225

namespace A192327

/-- `(A100484(n+1)/2)%(char[1]+Δ[n²]+1)` -/
def P15847360597557885225.Spec : Prop :=
  ∀ n, P15847360597557885225.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P12047410803068346028

`A006005(n+1)%A103517(n)`
-/

namespace A192327.P12047410803068346028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (A103517 n)

end

end A192327.P12047410803068346028

namespace A192327

/-- `A006005(n+1)%A103517(n)` -/
def P12047410803068346028.Spec : Prop :=
  ∀ n, P12047410803068346028.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P2469747535668972774

`A045532(n+1)%A103517(n)`
-/

namespace A192327.P2469747535668972774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045532 (n + 1)) (A103517 n)

end

end A192327.P2469747535668972774

namespace A192327

/-- `A045532(n+1)%A103517(n)` -/
def P2469747535668972774.Spec : Prop :=
  ∀ n, P2469747535668972774.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P15758171631320199303

`A078916(n+1)%A103517(n)`
-/

namespace A192327.P15758171631320199303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078916 (n + 1)) (A103517 n)

end

end A192327.P15758171631320199303

namespace A192327

/-- `A078916(n+1)%A103517(n)` -/
def P15758171631320199303.Spec : Prop :=
  ∀ n, P15758171631320199303.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P12849967095895241545

`A097240(n+1)%A103517(n)`
-/

namespace A192327.P12849967095895241545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097240 (n + 1)) (A103517 n)

end

end A192327.P12849967095895241545

namespace A192327

/-- `A097240(n+1)%A103517(n)` -/
def P12849967095895241545.Spec : Prop :=
  ∀ n, P12849967095895241545.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P14174185890741488768

`A174008(n+1)%A103517(n)`
-/

namespace A192327.P14174185890741488768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174008 (n + 1)) (A103517 n)

end

end A192327.P14174185890741488768

namespace A192327

/-- `A174008(n+1)%A103517(n)` -/
def P14174185890741488768.Spec : Prop :=
  ∀ n, P14174185890741488768.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P11878193456718177542

`A247380(n+1)%A103517(n)`
-/

namespace A192327.P11878193456718177542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247380 (n + 1)) (A103517 n)

end

end A192327.P11878193456718177542

namespace A192327

/-- `A247380(n+1)%A103517(n)` -/
def P11878193456718177542.Spec : Prop :=
  ∀ n, P11878193456718177542.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P18014680894268558209

`A008578(n+2)%A005843(n+1)`
-/

namespace A192327.P18014680894268558209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A005843 (n + 1))

end

end A192327.P18014680894268558209

namespace A192327

/-- `A008578(n+2)%A005843(n+1)` -/
def P18014680894268558209.Spec : Prop :=
  ∀ n, P18014680894268558209.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P9273713558324439064

`record[A006530(n+2)]%(2*(n+1))`
-/

namespace A192327.P9273713558324439064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (2 * (n + 1) : ℤ)

end

end A192327.P9273713558324439064

namespace A192327

/-- `record[A006530(n+2)]%(2*(n+1))` -/
def P9273713558324439064.Spec : Prop :=
  ∀ n, P9273713558324439064.a n = A192327 (n + 1)

end A192327

/-! ## A192327.P16605504908527064925

`record[A020639(n+2)]%(2*(n+1))`
-/

namespace A192327.P16605504908527064925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (2 * (n + 1) : ℤ)

end

end A192327.P16605504908527064925

namespace A192327

/-- `record[A020639(n+2)]%(2*(n+1))` -/
def P16605504908527064925.Spec : Prop :=
  ∀ n, P16605504908527064925.a n = A192327 (n + 1)

end A192327

/-!
# A192328: Numbers of the form 20*k+7 which are three times a square.

The programs for A192328, the canonical program `A192328.P9087903529252904773` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192328 has offset 1).

The definition of A192328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192328.P16117738749070812899

`ogf((27+120x+306x^2+120x^3+27x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A192328.P16117738749070812899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27, 120, 306, 120, 27] [1, -1, -2, 2, 1, -1] n

end

end A192328.P16117738749070812899

namespace A192328

/-- `ogf((27+120x+306x^2+120x^3+27x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P16117738749070812899.Spec : Prop :=
  ∀ n, P16117738749070812899.a n = A192328 (n + 1)

end A192328

/-! ## A192328.P9087903529252904773

`3*((10*n+(-1)^n+5)/2)²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192328

/-- `3*((10*n+(-1)^n+5)/2)²` -/
def P9087903529252904773.Spec : Prop :=
  ∀ n, P9087903529252904773.a n = (A192328 (n + 1) : ℚ)

end A192328

/-! ## A192328.P12215939980816977240

`3*∑[floor(a(n-2))]²` with `a(0)=3, a(1)=4, a(2)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A192328.P12215939980816977240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A192328.P12215939980816977240

namespace A192328

/-- `3*∑[floor(a(n-2))]²` -/
def P12215939980816977240.Spec : Prop :=
  ∀ n, (P12215939980816977240.a n : ℤ) = A192328 (n + 1)

end A192328

/-! ## A192328.P12889011174847710069

`A273374(n+1)+2*A273374(n+1)`
-/

namespace A192328.P12889011174847710069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273374 (n + 1) + 2 * A273374 (n + 1)

end

end A192328.P12889011174847710069

namespace A192328

/-- `A273374(n+1)+2*A273374(n+1)` -/
def P12889011174847710069.Spec : Prop :=
  ∀ n, P12889011174847710069.a n = A192328 (n + 1)

end A192328

/-! ## A192328.P12095671462436420060

`A273374(n+1)+A273374(n+1)+A063226(n+1)²`
-/

namespace A192328.P12095671462436420060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273374 (n + 1) + (A273374 (n + 1) + A063226 (n + 1) ^ 2)

end

end A192328.P12095671462436420060

namespace A192328

/-- `A273374(n+1)+A273374(n+1)+A063226(n+1)²` -/
def P12095671462436420060.Spec : Prop :=
  ∀ n, P12095671462436420060.a n = A192328 (n + 1)

end A192328

/-! ## A192328.P2625328518863010549

`A322489(3*n+2)²/12`
-/

namespace A192328.P2625328518863010549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322489 (3 * n + 2) ^ 2 : ℚ) / 12

end

end A192328.P2625328518863010549

namespace A192328

/-- `A322489(3*n+2)²/12` -/
def P2625328518863010549.Spec : Prop :=
  ∀ n, P2625328518863010549.a n = (A192328 (n + 1) : ℚ)

end A192328

/-! ## A192328.P2360327360123722379

`A033428(A063226(n+1))`
-/

namespace A192328.P2360327360123722379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (A063226 (n + 1)).toNat

end

end A192328.P2360327360123722379

namespace A192328

/-- `A033428(A063226(n+1))` -/
def P2360327360123722379.Spec : Prop :=
  ∀ n, P2360327360123722379.a n = A192328 (n + 1)

end A192328

/-! ## A192328.P2581021319328362762

`A069905(A322489(2*n+n+2))`
-/

namespace A192328.P2581021319328362762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A322489 (2 * n + (n + 2))).toNat

end

end A192328.P2581021319328362762

namespace A192328

/-- `A069905(A322489(2*n+n+2))` -/
def P2581021319328362762.Spec : Prop :=
  ∀ n, P2581021319328362762.a n = A192328 (n + 1)

end A192328

/-! ## A192328.P5993697536531408843

`∩[A080864(n+1), A033428(n)]`
-/

namespace A192328.P5993697536531408843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192328.P5993697536531408843

namespace A192328

/-- `∩[A080864(n+1), A033428(n)]` -/
def P5993697536531408843.Spec : Prop :=
  ∀ n, (P5993697536531408843.a n : ℤ) = A192328 (n + 1)

end A192328

/-! ## A192328.P9571008072618708038

`∩[A058034(n), A080864(n+1)]`
-/

namespace A192328.P9571008072618708038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192328.P9571008072618708038

namespace A192328

/-- `∩[A058034(n), A080864(n+1)]` -/
def P9571008072618708038.Spec : Prop :=
  ∀ n, (P9571008072618708038.a n : ℤ) = A192328 (n + 1)

end A192328

/-!
# A192330: Minimum number of endpoints of a tree so that there exists a zero-entropy map defined on it having a period n orbit.

The programs for A192330, the canonical program `A192330.P6299987223408556300` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192330 has offset 1).

The definition of A192330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192330.P6299987223408556300

`(n*A006022(n+1))%(n+1)+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A192330

/-- `(n*A006022(n+1))%(n+1)+1` -/
def P6299987223408556300.Spec : Prop :=
  ∀ n, P6299987223408556300.a n = A192330 (n + 1)

theorem P6299987223408556300.correct : P6299987223408556300.Spec := by
  intro n
  simp only [A192330, Nat.add_sub_cancel]

end A192330

/-! ## A192330.P15624138821401602296

`(n*A332993(n+1))%(n+1)+1`
-/

namespace A192330.P15624138821401602296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A332993 (n + 1)) (n + 1 : ℤ) + 1

end

end A192330.P15624138821401602296

namespace A192330

/-- `(n*A332993(n+1))%(n+1)+1` -/
def P15624138821401602296.Spec : Prop :=
  ∀ n, P15624138821401602296.a n = A192330 (n + 1)

end A192330

/-! ## A192330.P10785427829309761397

`A065475(n+1)-A006022(n+1)`
-/

namespace A192330.P10785427829309761397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) - A006022 (n + 1)

end

end A192330.P10785427829309761397

namespace A192330

/-- `A065475(n+1)-A006022(n+1)` -/
def P10785427829309761397.Spec : Prop :=
  ∀ n, P10785427829309761397.a n = A192330 (n + 1)

end A192330

/-! ## A192330.P7979936724458480992

`2-A332993(A032742(n+1))+n`
-/

namespace A192330.P7979936724458480992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A332993 (A032742 (n + 1)).toNat + (n : ℤ)

end

end A192330.P7979936724458480992

namespace A192330

/-- `2-A332993(A032742(n+1))+n` -/
def P7979936724458480992.Spec : Prop :=
  ∀ n, P7979936724458480992.a n = A192330 (n + 1)

end A192330

/-! ## A192330.P16705522643873604549

`A103517(n)-(A006022(n+1)+n)`
-/

namespace A192330.P16705522643873604549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - (A006022 (n + 1) + (n : ℤ))

end

end A192330.P16705522643873604549

namespace A192330

/-- `A103517(n)-(A006022(n+1)+n)` -/
def P16705522643873604549.Spec : Prop :=
  ∀ n, P16705522643873604549.a n = A192330 (n + 1)

end A192330

/-! ## A192330.P17586566140641184993

`A006022(A006530(n+1))+n+1-A006022(n+1)`
-/

namespace A192330.P17586566140641184993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (A006530 (n + 1)).toNat + ((n + 1 : ℤ) - A006022 (n + 1))

end

end A192330.P17586566140641184993

namespace A192330

/-- `A006022(A006530(n+1))+n+1-A006022(n+1)` -/
def P17586566140641184993.Spec : Prop :=
  ∀ n, P17586566140641184993.a n = A192330 (n + 1)

end A192330

/-! ## A192330.P2339062133422089891

`n+1-(A006022(n+1)-char[A020703(n+1)])`
-/

namespace A192330.P2339062133422089891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A006022 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A192330.P2339062133422089891

namespace A192330

/-- `n+1-(A006022(n+1)-char[A020703(n+1)])` -/
def P2339062133422089891.Spec : Prop :=
  ∀ n, P2339062133422089891.a n = A192330 (n + 1)

end A192330

/-!
# A192331: Half the number of nXnXn triangular binary arrays with no element equal to exactly half of its neighbors.

The programs for A192331, there is no canonical definition to state claims against.
-/

/-! ## A192331.P7585335926440544982

`A266279(A330474(n)+A000217(n))`
-/

namespace A192331.P7585335926440544982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (A330474 n + A000217 n).toNat

end

end A192331.P7585335926440544982

/-! ## A192331.P16768346308418859439

`A303401(A094333(n+1))*A346157(n)`
-/

namespace A192331.P16768346308418859439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303401 (A094333 (n + 1)).toNat * A346157 n

end

end A192331.P16768346308418859439

/-!
# A192332: For n >= 3, draw a regular n-sided polygon and its n(n-3)/2 diagonals, so there are n(n-1)/2 lines; a(n) is the number of ways to choose a subset of these lines (subsets differing by a rotation are regarded as identical). a(1)=1, a(2)=2 by convention.

The programs for A192332, there is no canonical definition to state claims against.
-/

/-! ## A192332.P10049389076372678881

`A192314(n+1)+1`
-/

namespace A192332.P10049389076372678881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192314 (n + 1) + 1

end

end A192332.P10049389076372678881

/-!
# A192333: Numbers that are "unsafe" when playing the game Dollar Nim, which is a Nim game where users can remove 1, 5, 10, or 25 cents from an initial pile of money. The most common version of the game is played with an initial amount of $1, hence the name.

The programs for A192333, the canonical program `A192333.P18328397063948180448` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192333 has offset 1).

The definition of A192333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192333.P18328397063948180448

`5*floor(n/5)+2*(n+1)-2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192333

/-- `5*floor(n/5)+2*(n+1)-2` -/
def P18328397063948180448.Spec : Prop :=
  ∀ n, P18328397063948180448.a n = A192333 (n + 1)

theorem P18328397063948180448.correct : P18328397063948180448.Spec := by
  intro n
  simp only [A192333, Nat.add_sub_cancel]

end A192333

/-! ## A192333.P6593673006661035839

`ogf((2x+2x^2+2x^3+2x^4+7x^5)/(1-x-x^5+x^6))`
-/

namespace A192333.P6593673006661035839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 2, 2, 7] [1, -1, 0, 0, 0, -1, 1] n

end

end A192333.P6593673006661035839

namespace A192333

/-- `ogf((2x+2x^2+2x^3+2x^4+7x^5)/(1-x-x^5+x^6))` -/
def P6593673006661035839.Spec : Prop :=
  ∀ n, P6593673006661035839.a n = A192333 (n + 1)

end A192333

/-! ## A192333.P9858585542531762806

`3*n-n%5`
-/

namespace A192333.P9858585542531762806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((n % 5 : ℕ) : ℤ)

end

end A192333.P9858585542531762806

namespace A192333

/-- `3*n-n%5` -/
def P9858585542531762806.Spec : Prop :=
  ∀ n, P9858585542531762806.a n = A192333 (n + 1)

end A192333

/-! ## A192333.P406765151168618457

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=2, a(5)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A192333.P406765151168618457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 2, 2, 7] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192333.P406765151168618457

namespace A192333

/-- `∑[floor(a(n-5))]` -/
def P406765151168618457.Spec : Prop :=
  ∀ n, (P406765151168618457.a n : ℤ) = A192333 (n + 1)

end A192333

/-! ## A192333.P7291759193322855817

`abs(A010874(n)-3*n)`
-/

namespace A192333.P7291759193322855817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010874 n - (3 * n : ℤ)|

end

end A192333.P7291759193322855817

namespace A192333

/-- `abs(A010874(n)-3*n)` -/
def P7291759193322855817.Spec : Prop :=
  ∀ n, P7291759193322855817.a n = A192333 (n + 1)

end A192333

/-! ## A192333.P1371561974216903868

`abs((4*n-A010879(2*n))/2+n)`
-/

namespace A192333.P1371561974216903868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((4 * n : ℤ) - A010879 (2 * n) : ℚ) / 2 + (n : ℚ)|

end

end A192333.P1371561974216903868

namespace A192333

/-- `abs((4*n-A010879(2*n))/2+n)` -/
def P1371561974216903868.Spec : Prop :=
  ∀ n, P1371561974216903868.a n = (A192333 (n + 1) : ℚ)

end A192333

/-! ## A192333.P14026047449206309491

`(A016777(2*n)-A010879(2*n+1))/2`
-/

namespace A192333.P14026047449206309491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016777 (2 * n) - A010879 (2 * n + 1) : ℚ) / 2

end

end A192333.P14026047449206309491

namespace A192333

/-- `(A016777(2*n)-A010879(2*n+1))/2` -/
def P14026047449206309491.Spec : Prop :=
  ∀ n, P14026047449206309491.a n = (A192333 (n + 1) : ℚ)

end A192333

/-! ## A192333.P5868615168567164098

`A023448(A293481(n+1)+1+n)`
-/

namespace A192333.P5868615168567164098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A293481 (n + 1) + 1 + (n : ℤ)).toNat

end

end A192333.P5868615168567164098

namespace A192333

/-- `A023448(A293481(n+1)+1+n)` -/
def P5868615168567164098.Spec : Prop :=
  ∀ n, P5868615168567164098.a n = A192333 (n + 1)

end A192333

/-! ## A192333.P12809343440227186274

`A023467(A140058(n+1)+n)`
-/

namespace A192333.P12809343440227186274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023467 (A140058 (n + 1) + (n : ℤ)).toNat

end

end A192333.P12809343440227186274

namespace A192333

/-- `A023467(A140058(n+1)+n)` -/
def P12809343440227186274.Spec : Prop :=
  ∀ n, P12809343440227186274.a n = A192333 (n + 1)

end A192333

/-! ## A192333.P9063562130988927505

`A023468(A140058(n+1)+1+n)`
-/

namespace A192333.P9063562130988927505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023468 (A140058 (n + 1) + 1 + (n : ℤ)).toNat

end

end A192333.P9063562130988927505

namespace A192333

/-- `A023468(A140058(n+1)+1+n)` -/
def P9063562130988927505.Spec : Prop :=
  ∀ n, P9063562130988927505.a n = A192333 (n + 1)

end A192333

/-! ## A192333.P17987072963790555098

`(6*n-A131579(4*n))/2`
-/

namespace A192333.P17987072963790555098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) - A131579 (4 * n) : ℚ) / 2

end

end A192333.P17987072963790555098

namespace A192333

/-- `(6*n-A131579(4*n))/2` -/
def P17987072963790555098.Spec : Prop :=
  ∀ n, P17987072963790555098.a n = (A192333 (n + 1) : ℚ)

end A192333

/-!
# A192334: Number of elements of the finite group defined by the elliptic curve y^2 = x^3 + x + 1 (mod prime(n)).

The programs for A192334, there is no canonical definition to state claims against.
-/

/-! ## A192334.P11668937863346662928

`1+A098514(n+1)`
-/

namespace A192334.P11668937863346662928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A098514 (n + 1)

end

end A192334.P11668937863346662928

/-! ## A192334.P1540333741573519180

`A020725(A098514(n+1))`
-/

namespace A192334.P1540333741573519180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A098514 (n + 1)).toNat

end

end A192334.P1540333741573519180

/-! ## A192334.P11833042522707032284

`A098513(p?[comp[n²]])+1`
-/

namespace A192334.P11833042522707032284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A192334.P11833042522707032284

/-! ## A192334.P10675969475544949288

`A098513(Δ[A007504(n)])+1`
-/

namespace A192334.P10675969475544949288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (f1 (n + 1) - f1 n).toNat + 1

end

end A192334.P10675969475544949288

/-! ## A192334.P4432962309982211338

`∑{d}[Δ[A007504(n)], A098513(#)]`
-/

namespace A192334.P4432962309982211338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A098513 d

end

end A192334.P4432962309982211338

/-! ## A192334.P6494081633370030373

`∑{d}[p?[A001057(n)], A098513(#)]`
-/

namespace A192334.P6494081633370030373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A098513 d

end

end A192334.P6494081633370030373

/-! ## A192334.P3741694442830597668

`A098513(A000040(n+1))+1`
-/

namespace A192334.P3741694442830597668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (A000040 (n + 1)).toNat + 1

end

end A192334.P3741694442830597668

/-! ## A192334.P10492569140411491508

`A098513(A008578(n+2))+1`
-/

namespace A192334.P10492569140411491508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (A008578 (n + 2)).toNat + 1

end

end A192334.P10492569140411491508

/-! ## A192334.P14884824925736970773

`A098513(A182986(n+2))+1`
-/

namespace A192334.P14884824925736970773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (A182986 (n + 2)).toNat + 1

end

end A192334.P14884824925736970773

/-!
# A192336: Sums of two or more distinct squares.

The programs for A192336, there is no canonical definition to state claims against.
-/

/-! ## A192336.P6314900332864693115

`lt[A184340(A299537(3*n+5)), A331844(n)]`
-/

namespace A192336.P6314900332864693115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184340 (A299537 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192336.P6314900332864693115

/-!
# A192337: Coefficient of x in the reduction of n-th polynomial at A157751 by x^2->x+1.

The programs for A192337, the canonical program `A192337.P9572293671174991353` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192337 has offset 1).

The definition of A192337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192337.P9572293671174991353

`ogf((x-x^2-x^3)/(1-4x+x^2+6x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192337

/-- `ogf((x-x^2-x^3)/(1-4x+x^2+6x^3+x^4))` -/
def P9572293671174991353.Spec : Prop :=
  ∀ n, P9572293671174991353.a n = A192337 (n + 1)

theorem P9572293671174991353.correct : P9572293671174991353.Spec := by
  intro n
  simp only [A192337, Nat.add_sub_cancel]

end A192337

/-! ## A192337.P12580519918841836847

`A121192(n+5)-Δ[A293064(n)]`
-/

namespace A192337.P12580519918841836847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121192 (n + 5) - (f1 (n + 1) - f1 n)

end

end A192337.P12580519918841836847

namespace A192337

/-- `A121192(n+5)-Δ[A293064(n)]` -/
def P12580519918841836847.Spec : Prop :=
  ∀ n, P12580519918841836847.a n = A192337 (n + 1)

end A192337

/-! ## A192337.P5377503879774266937

`A152467(or(A000217(n), A027107(n)))`
-/

namespace A192337.P5377503879774266937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (Int.lor (A000217 n) (A027107 n)).toNat

end

end A192337.P5377503879774266937

namespace A192337

/-- `A152467(or(A000217(n), A027107(n)))` -/
def P5377503879774266937.Spec : Prop :=
  ∀ n, P5377503879774266937.a n = A192337 (n + 1)

end A192337

/-! ## A192337.P1578564093321690882

`A152467(or(A000217(n), A082541(n)))`
-/

namespace A192337.P1578564093321690882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (Int.lor (A000217 n) (A082541 n)).toNat

end

end A192337.P1578564093321690882

namespace A192337

/-- `A152467(or(A000217(n), A082541(n)))` -/
def P1578564093321690882.Spec : Prop :=
  ∀ n, P1578564093321690882.a n = A192337 (n + 1)

end A192337

/-!
# A192338: Constant term of the reduction of n-th polynomial at A157751 by x^2->x+2.

The programs for A192338, the canonical program `A192338.P5489665413484984906` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192338 has offset 1).

The definition of A192338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192338.P960677668021142611

`ogf((1-2x-3x^2+2x^3)/(1-4x-x^2+10x^3+4x^4))`
-/

namespace A192338.P960677668021142611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -3, 2] [1, -4, -1, 10, 4] n

end

end A192338.P960677668021142611

namespace A192338

/-- `ogf((1-2x-3x^2+2x^3)/(1-4x-x^2+10x^3+4x^4))` -/
def P960677668021142611.Spec : Prop :=
  ∀ n, P960677668021142611.a n = A192338 (n + 1)

end A192338

/-! ## A192338.P5489665413484984906

`4*a(n-1)+a(n-2)-10*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=18`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192338

/-- `4*a(n-1)+a(n-2)-10*a(n-3)-4*a(n-4)` -/
def P5489665413484984906.Spec : Prop :=
  ∀ n, P5489665413484984906.a n = A192338 (n + 1)

theorem P5489665413484984906.correct : P5489665413484984906.Spec := by
  intro n
  simp only [A192338, Nat.add_sub_cancel]

end A192338

/-! ## A192338.P3638651690387927436

`A192339(n+1)+A001333(n)`
-/

namespace A192338.P3638651690387927436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192339 (n + 1) + A001333 n

end

end A192338.P3638651690387927436

namespace A192338

/-- `A192339(n+1)+A001333(n)` -/
def P3638651690387927436.Spec : Prop :=
  ∀ n, P3638651690387927436.a n = A192338 (n + 1)

theorem P3638651690387927436.correct : P3638651690387927436.Spec := by
  intro n
  simp only [A192338, Nat.add_sub_cancel, A192338.P3638651690387927436.a, A192338.P5489665413484984906.a, A001333, A001333.P7655660048620087713.a, A192339, A192339.P17649155680946184549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192338

/-! ## A192338.P4779645053627898743

`A192339(n+1)+abs(A123335(n))`
-/

namespace A192338.P4779645053627898743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192339 (n + 1) + |A123335 n|

end

end A192338.P4779645053627898743

namespace A192338

/-- `A192339(n+1)+abs(A123335(n))` -/
def P4779645053627898743.Spec : Prop :=
  ∀ n, P4779645053627898743.a n = A192338 (n + 1)

end A192338

/-! ## A192338.P18294729402977709780

`A192339(n+1)+Δ[A000129(n)]`
-/

namespace A192338.P18294729402977709780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192339 (n + 1) + (f1 (n + 1) - f1 n)

end

end A192338.P18294729402977709780

namespace A192338

/-- `A192339(n+1)+Δ[A000129(n)]` -/
def P18294729402977709780.Spec : Prop :=
  ∀ n, P18294729402977709780.a n = A192338 (n + 1)

end A192338

/-! ## A192338.P2538193960320894812

`(A087206(n)+A002203(n))/3`
-/

namespace A192338.P2538193960320894812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087206 n + A002203 n : ℚ) / 3

end

end A192338.P2538193960320894812

namespace A192338

/-- `(A087206(n)+A002203(n))/3` -/
def P2538193960320894812.Spec : Prop :=
  ∀ n, P2538193960320894812.a n = (A192338 (n + 1) : ℚ)

end A192338

/-!
# A192339: Coefficient of x in the reduction of n-th polynomial at A157751 by x^2->x+2.

The programs for A192339, the canonical program `A192339.P17649155680946184549` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192339 has offset 1).

The definition of A192339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192339.P16575856907667050201

`ogf((x-x^2-2x^3)/(1-4x-x^2+10x^3+4x^4))`
-/

namespace A192339.P16575856907667050201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -2] [1, -4, -1, 10, 4] n

end

end A192339.P16575856907667050201

namespace A192339

/-- `ogf((x-x^2-2x^3)/(1-4x-x^2+10x^3+4x^4))` -/
def P16575856907667050201.Spec : Prop :=
  ∀ n, P16575856907667050201.a n = A192339 (n + 1)

end A192339

/-! ## A192339.P17649155680946184549

`A192338(n+1)-A001333(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192339

/-- `A192338(n+1)-A001333(n)` -/
def P17649155680946184549.Spec : Prop :=
  ∀ n, P17649155680946184549.a n = A192339 (n + 1)

theorem P17649155680946184549.correct : P17649155680946184549.Spec := by
  intro n
  simp only [A192339, Nat.add_sub_cancel]

end A192339

/-! ## A192339.P14220674920310492584

`A192338(n+1)-abs(A123335(n))`
-/

namespace A192339.P14220674920310492584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192338 (n + 1) - |A123335 n|

end

end A192339.P14220674920310492584

namespace A192339

/-- `A192338(n+1)-abs(A123335(n))` -/
def P14220674920310492584.Spec : Prop :=
  ∀ n, P14220674920310492584.a n = A192339 (n + 1)

end A192339

/-! ## A192339.P11624046056483006731

`A192338(n+1)-Δ[A000129(n)]`
-/

namespace A192339.P11624046056483006731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192338 (n + 1) - (f1 (n + 1) - f1 n)

end

end A192339.P11624046056483006731

namespace A192339

/-- `A192338(n+1)-Δ[A000129(n)]` -/
def P11624046056483006731.Spec : Prop :=
  ∀ n, P11624046056483006731.a n = A192339 (n + 1)

end A192339

/-! ## A192339.P10958228397800996831

`A192338(n+1)-A002203(n)/2`
-/

namespace A192339.P10958228397800996831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192338 (n + 1) : ℚ) - (A002203 n : ℚ) / 2

end

end A192339.P10958228397800996831

namespace A192339

/-- `A192338(n+1)-A002203(n)/2` -/
def P10958228397800996831.Spec : Prop :=
  ∀ n, P10958228397800996831.a n = (A192339 (n + 1) : ℚ)

end A192339

/-! ## A192339.P15228325391568707494

`A192338(n+1)-A002965(A005408(n))`
-/

namespace A192339.P15228325391568707494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192338 (n + 1) - A002965 (A005408 n).toNat

end

end A192339.P15228325391568707494

namespace A192339

/-- `A192338(n+1)-A002965(A005408(n))` -/
def P15228325391568707494.Spec : Prop :=
  ∀ n, P15228325391568707494.a n = A192339 (n + 1)

end A192339

/-!
# A192342: Constant term of the reduction of n-th polynomial at A158983 by x^2->x+2.

The programs for A192342, there is no canonical definition to state claims against.
-/

/-! ## A192342.P16480722955255710663

`A192343(n+1)+A003095(n+1)`
-/

namespace A192342.P16480722955255710663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192343 (n + 1) + A003095 (n + 1)

end

end A192342.P16480722955255710663

/-!
# A192343: Coefficient of x in the reduction of n-th polynomial at A158983 by x^2->x+2.

The programs for A192343, there is no canonical definition to state claims against.
-/

/-! ## A192343.P10645844637666931126

`A192342(n+1)-A003095(n+1)`
-/

namespace A192343.P10645844637666931126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192342 (n + 1) - A003095 (n + 1)

end

end A192343.P10645844637666931126

/-!
# A192344: Constant term of the reduction of n-th polynomial at A161516 by x^2->x+1.

The programs for A192344, there is no canonical definition to state claims against.
-/

/-! ## A192344.P509004284193120250

`ogf((1-2x-5x^2)/(1-2x-10x^2+6x^3+9x^4))`
-/

namespace A192344.P509004284193120250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -5] [1, -2, -10, 6, 9] n

end

end A192344.P509004284193120250

/-! ## A192344.P6584953187053956896

`2*a(n-1)+10*a(n-2)-6*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=4`
-/

namespace A192344.P6584953187053956896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5, 4] fun n a =>
  2 * a (n - 1) + 10 * a (n - 2) - 6 * a (n - 3) - 9 * a (n - 4)

end

end A192344.P6584953187053956896

/-! ## A192344.P1968649768616752459

`A192373(n+1)-A192374(n^floor(atan(n)))`
-/

namespace A192344.P1968649768616752459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192373 (n + 1) - A192374 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A192344.P1968649768616752459

/-! ## A192344.P515906977508787713

`A192373(n+1)-A192374(A028310(n))`
-/

namespace A192344.P515906977508787713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192373 (n + 1) - A192374 (A028310 n).toNat

end

end A192344.P515906977508787713

/-! ## A192344.P474621046121154654

`A192373(n+1)-A192374(A137735(n²))`
-/

namespace A192344.P474621046121154654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192373 (n + 1) - A192374 (A137735 (n ^ 2)).toNat

end

end A192344.P474621046121154654

/-!
# A192345: Constant term of the reduction of n-th polynomial at A161516 by x^2->x+1.

The programs for A192345, the canonical program `A192345.P1553817658301423014` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192345 has offset 1).

The definition of A192345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192345.P17548808065185646795

`ogf((x+3x^3)/(1-2x-10x^2+6x^3+9x^4))`
-/

namespace A192345.P17548808065185646795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 3] [1, -2, -10, 6, 9] n

end

end A192345.P17548808065185646795

namespace A192345

/-- `ogf((x+3x^3)/(1-2x-10x^2+6x^3+9x^4))` -/
def P17548808065185646795.Spec : Prop :=
  ∀ n, P17548808065185646795.a n = A192345 (n + 1)

end A192345

/-! ## A192345.P1553817658301423014

`A192429(n)-A192374(A028310(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192345

/-- `A192429(n)-A192374(A028310(n))` -/
def P1553817658301423014.Spec : Prop :=
  ∀ n, P1553817658301423014.a n = A192345 (n + 1)

theorem P1553817658301423014.correct : P1553817658301423014.Spec := by
  intro n
  simp only [A192345, Nat.add_sub_cancel]

end A192345

/-! ## A192345.P17792381390576399287

`A192429(n)-A192374(A000007(n)+n)`
-/

namespace A192345.P17792381390576399287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192429 n - A192374 (A000007 n + (n : ℤ)).toNat

end

end A192345.P17792381390576399287

namespace A192345

/-- `A192429(n)-A192374(A000007(n)+n)` -/
def P17792381390576399287.Spec : Prop :=
  ∀ n, P17792381390576399287.a n = A192345 (n + 1)

end A192345

/-! ## A192345.P6677764884087507258

`A192344(n+1)+A192429(n)-A192373(n+1)`
-/

namespace A192345.P6677764884087507258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192344 (n + 1) + (A192429 n - A192373 (n + 1))

end

end A192345.P6677764884087507258

namespace A192345

/-- `A192344(n+1)+A192429(n)-A192373(n+1)` -/
def P6677764884087507258.Spec : Prop :=
  ∀ n, P6677764884087507258.a n = A192345 (n + 1)

end A192345

/-!
# A192346: Constant term of the reduction (by x^2->x+1) of polynomial p(n,x) identified in Comments.

The programs for A192346, the canonical program `A192346.P7752261889838446831` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192346 has offset 1).

The definition of A192346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192346.P2243766552636792026

`ogf((1-2x-3x^2)/(1-2x-6x^2+2x^3+x^4))`
-/

namespace A192346.P2243766552636792026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -3] [1, -2, -6, 2, 1] n

end

end A192346.P2243766552636792026

namespace A192346

/-- `ogf((1-2x-3x^2)/(1-2x-6x^2+2x^3+x^4))` -/
def P2243766552636792026.Spec : Prop :=
  ∀ n, P2243766552636792026.a n = A192346 (n + 1)

end A192346

/-! ## A192346.P7752261889838446831

`2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192346

/-- `2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` -/
def P7752261889838446831.Spec : Prop :=
  ∀ n, P7752261889838446831.a n = A192346 (n + 1)

theorem P7752261889838446831.correct : P7752261889838446831.Spec := by
  intro n
  simp only [A192346, Nat.add_sub_cancel]

end A192346

/-! ## A192346.P14034147123315224571

`A192379(n+1)-A192380(round(sqrt(n²+1)))`
-/

namespace A192346.P14034147123315224571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192379 (n + 1) - A192380 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A192346.P14034147123315224571

namespace A192346

/-- `A192379(n+1)-A192380(round(sqrt(n²+1)))` -/
def P14034147123315224571.Spec : Prop :=
  ∀ n, P14034147123315224571.a n = A192346 (n + 1)

end A192346

/-! ## A192346.P4240543434629475231

`A192430(n)+A192431(n)-A192380(n+1)`
-/

namespace A192346.P4240543434629475231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192430 n + (A192431 n - A192380 (n + 1))

end

end A192346.P4240543434629475231

namespace A192346

/-- `A192430(n)+A192431(n)-A192380(n+1)` -/
def P4240543434629475231.Spec : Prop :=
  ∀ n, P4240543434629475231.a n = A192346 (n + 1)

end A192346

/-!
# A192347: Coefficient of x in the reduction (by x^2->x+1) of polynomial p(n,x) identified in Comments.

The programs for A192347, the canonical program `A192347.P13032538596534277696` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192347 has offset 1).

The definition of A192347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192347.P340789193139537688

`ogf((x+x^3)/(1-2x-6x^2+2x^3+x^4))`
-/

namespace A192347.P340789193139537688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -2, -6, 2, 1] n

end

end A192347.P340789193139537688

namespace A192347

/-- `ogf((x+x^3)/(1-2x-6x^2+2x^3+x^4))` -/
def P340789193139537688.Spec : Prop :=
  ∀ n, P340789193139537688.a n = A192347 (n + 1)

end A192347

/-! ## A192347.P13032538596534277696

`2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192347

/-- `2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` -/
def P13032538596534277696.Spec : Prop :=
  ∀ n, P13032538596534277696.a n = A192347 (n + 1)

theorem P13032538596534277696.correct : P13032538596534277696.Spec := by
  intro n
  simp only [A192347, Nat.add_sub_cancel]

end A192347

/-! ## A192347.P10008209163342983527

`A192431(n)-A192380(A028310(n))`
-/

namespace A192347.P10008209163342983527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192431 n - A192380 (A028310 n).toNat

end

end A192347.P10008209163342983527

namespace A192347

/-- `A192431(n)-A192380(A028310(n))` -/
def P10008209163342983527.Spec : Prop :=
  ∀ n, P10008209163342983527.a n = A192347 (n + 1)

end A192347

/-! ## A192347.P10133996319838103488

`A192346(n+1)+A192431(n)-A192379(n+1)`
-/

namespace A192347.P10133996319838103488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192346 (n + 1) + (A192431 n - A192379 (n + 1))

end

end A192347.P10133996319838103488

namespace A192347

/-- `A192346(n+1)+A192431(n)-A192379(n+1)` -/
def P10133996319838103488.Spec : Prop :=
  ∀ n, P10133996319838103488.a n = A192347 (n + 1)

end A192347

/-! ## A192347.P6290329262080401969

`A192346(n+1)+A192380(n+1)-A192430(n)-A192380(A028310(n))`
-/

namespace A192347.P6290329262080401969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192346 (n + 1) + (A192380 (n + 1) - A192430 n) - A192380 (A028310 n).toNat

end

end A192347.P6290329262080401969

namespace A192347

/-- `A192346(n+1)+A192380(n+1)-A192430(n)-A192380(A028310(n))` -/
def P6290329262080401969.Spec : Prop :=
  ∀ n, P6290329262080401969.a n = A192347 (n + 1)

end A192347

/-!
# A192348: Constant term of the reduction (by x^2->x+1) of polynomial p(n,x) identified in Comments.

The programs for A192348, the canonical program `A192348.P5651025347523705201` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192348 has offset 1).

The definition of A192348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192348.P2826888382670629723

`ogf((1-2x-4x^2)/(1-2x-8x^2+4x^3+4x^4))`
-/

namespace A192348.P2826888382670629723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -4] [1, -2, -8, 4, 4] n

end

end A192348.P2826888382670629723

namespace A192348

/-- `ogf((1-2x-4x^2)/(1-2x-8x^2+4x^3+4x^4))` -/
def P2826888382670629723.Spec : Prop :=
  ∀ n, P2826888382670629723.a n = A192348 (n + 1)

end A192348

/-! ## A192348.P5651025347523705201

`2*a(n-1)+8*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192348

/-- `2*a(n-1)+8*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P5651025347523705201.Spec : Prop :=
  ∀ n, P5651025347523705201.a n = A192348 (n + 1)

theorem P5651025347523705201.correct : P5651025347523705201.Spec := by
  intro n
  simp only [A192348, Nat.add_sub_cancel]

end A192348

/-! ## A192348.P13177386270391193489

`A192383(n+1)-A192384(round(sqrt(n²+1)))`
-/

namespace A192348.P13177386270391193489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192383 (n + 1) - A192384 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A192348.P13177386270391193489

namespace A192348

/-- `A192383(n+1)-A192384(round(sqrt(n²+1)))` -/
def P13177386270391193489.Spec : Prop :=
  ∀ n, P13177386270391193489.a n = A192348 (n + 1)

end A192348

/-! ## A192348.P6033079758888820193

`Δ[A192384(n+1)-∑[A192349(n+1)]]-A192384(A028310(n))`
-/

namespace A192348.P6033079758888820193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192349 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192384 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192384 (A028310 n).toNat

end

end A192348.P6033079758888820193

namespace A192348

/-- `Δ[A192384(n+1)-∑[A192349(n+1)]]-A192384(A028310(n))` -/
def P6033079758888820193.Spec : Prop :=
  ∀ n, P6033079758888820193.a n = A192348 (n + 1)

end A192348

/-!
# A192349: Coefficient of x in the reduction (by x^2->x+1) of polynomial p(n,x) identified in Comments.

The programs for A192349, the canonical program `A192349.P13334000541901544492` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192349 has offset 1).

The definition of A192349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192349.P2277642071888718083

`ogf((x+2x^3)/(1-2x-8x^2+4x^3+4x^4))`
-/

namespace A192349.P2277642071888718083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 2] [1, -2, -8, 4, 4] n

end

end A192349.P2277642071888718083

namespace A192349

/-- `ogf((x+2x^3)/(1-2x-8x^2+4x^3+4x^4))` -/
def P2277642071888718083.Spec : Prop :=
  ∀ n, P2277642071888718083.a n = A192349 (n + 1)

end A192349

/-! ## A192349.P13334000541901544492

`2*a(n-1)+8*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=14`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192349

/-- `2*a(n-1)+8*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P13334000541901544492.Spec : Prop :=
  ∀ n, P13334000541901544492.a n = A192349 (n + 1)

theorem P13334000541901544492.correct : P13334000541901544492.Spec := by
  intro n
  simp only [A192349, Nat.add_sub_cancel]

end A192349

/-!
# A192350: Constant term of the reduction (by x^2->x+1) of polynomial p(n,x) identified in Comments.

The programs for A192350, the canonical program `A192350.P9743539187543881562` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192350 has offset 1).

The definition of A192350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192350.P7696528287412142158

`ogf((1-2x-6x^2)/(1-2x-12x^2+8x^3+16x^4))`
-/

namespace A192350.P7696528287412142158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -6] [1, -2, -12, 8, 16] n

end

end A192350.P7696528287412142158

namespace A192350

/-- `ogf((1-2x-6x^2)/(1-2x-12x^2+8x^3+16x^4))` -/
def P7696528287412142158.Spec : Prop :=
  ∀ n, P7696528287412142158.a n = A192350 (n + 1)

end A192350

/-! ## A192350.P9743539187543881562

`2^(n-1)*A192421(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192350

/-- `2^(n-1)*A192421(n)` -/
def P9743539187543881562.Spec : Prop :=
  ∀ n, P9743539187543881562.a n = (A192350 (n + 1) : ℚ)

end A192350

/-! ## A192350.P17924150499438976883

`2*a(n-1)+12*a(n-2)-8*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=0, a(2)=6, a(3)=4`
-/

namespace A192350.P17924150499438976883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 6, 4] fun n a =>
  2 * a (n - 1) + 12 * a (n - 2) - 8 * a (n - 3) - 16 * a (n - 4)

end

end A192350.P17924150499438976883

namespace A192350

/-- `2*a(n-1)+12*a(n-2)-8*a(n-3)-16*a(n-4)` -/
def P17924150499438976883.Spec : Prop :=
  ∀ n, P17924150499438976883.a n = A192350 (n + 1)

end A192350

/-! ## A192350.P12465575911032542340

`A000079(n)*A192421(n)/2`
-/

namespace A192350.P12465575911032542340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A192421 n : ℚ) / 2

end

end A192350.P12465575911032542340

namespace A192350

/-- `A000079(n)*A192421(n)/2` -/
def P12465575911032542340.Spec : Prop :=
  ∀ n, P12465575911032542340.a n = (A192350 (n + 1) : ℚ)

end A192350

/-! ## A192350.P2560807819909244772

`A192386(n+1)-A192387(round(sqrt(n²+1)))`
-/

namespace A192350.P2560807819909244772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192386 (n + 1) - A192387 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A192350.P2560807819909244772

namespace A192350

/-- `A192386(n+1)-A192387(round(sqrt(n²+1)))` -/
def P2560807819909244772.Spec : Prop :=
  ∀ n, P2560807819909244772.a n = A192350 (n + 1)

end A192350

/-! ## A192350.P7418368194132054672

`2^n*A192232(n+1)-A192387(A028310(n))`
-/

namespace A192350.P7418368194132054672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A192232 (n + 1) - A192387 (A028310 n).toNat

end

end A192350.P7418368194132054672

namespace A192350

/-- `2^n*A192232(n+1)-A192387(A028310(n))` -/
def P7418368194132054672.Spec : Prop :=
  ∀ n, P7418368194132054672.a n = A192350 (n + 1)

end A192350

/-!
# A192351: Coefficient of x in the reduction (by x^2->x+1) of polynomial p(n,x) identified in Comments.

The programs for A192351, the canonical program `A192351.P6972441288623272227` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192351 has offset 0).

The definition of A192351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192351.P6972441288623272227

`2*a(n-1)+12*a(n-2)-8*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=20`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192351

/-- `2*a(n-1)+12*a(n-2)-8*a(n-3)-16*a(n-4)` -/
def P6972441288623272227.Spec : Prop :=
  ∀ n, P6972441288623272227.a n = A192351 n

theorem P6972441288623272227.correct : P6972441288623272227.Spec := by
  intro n
  simp only [A192351]

end A192351

/-! ## A192351.P3658997843966903304

`ogf((x+4x^3)/(1-2x-12x^2+8x^3+16x^4))`
-/

namespace A192351.P3658997843966903304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 4] [1, -2, -12, 8, 16] n

end

end A192351.P3658997843966903304

namespace A192351

/-- `ogf((x+4x^3)/(1-2x-12x^2+8x^3+16x^4))` -/
def P3658997843966903304.Spec : Prop :=
  ∀ n, P3658997843966903304.a n = A192351 n

end A192351

/-! ## A192351.P5113186774605399518

`2^(n-1)*A192422(n)`
-/

namespace A192351.P5113186774605399518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A192422 n : ℚ)

end

end A192351.P5113186774605399518

namespace A192351

/-- `2^(n-1)*A192422(n)` -/
def P5113186774605399518.Spec : Prop :=
  ∀ n, P5113186774605399518.a n = (A192351 n : ℚ)

end A192351

/-! ## A192351.P17751082035072172814

`(3*A112576(n)-Δ[A131322(n)])*A011782(n)`
-/

namespace A192351.P17751082035072172814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A112576 n - (f1 (n + 1) - f1 n)) * A011782 n

end

end A192351.P17751082035072172814

namespace A192351

/-- `(3*A112576(n)-Δ[A131322(n)])*A011782(n)` -/
def P17751082035072172814.Spec : Prop :=
  ∀ n, P17751082035072172814.a n = A192351 n

end A192351

/-! ## A192351.P6999286982881567712

`A192422(n)*A240893(∑[n+1])`
-/

namespace A192351.P6999286982881567712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192422 n * A240893 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192351.P6999286982881567712

namespace A192351

/-- `A192422(n)*A240893(∑[n+1])` -/
def P6999286982881567712.Spec : Prop :=
  ∀ n, P6999286982881567712.a n = A192351 n

end A192351

/-!
# A192352: Constant term of the reduction of the polynomial p(n,x)=(1/2)((x+1)^n+(x-1)^n) by x^2->x+1.

The programs for A192352, the canonical program `A192352.P11838568185263052743` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192352 has offset 1).

The definition of A192352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192352.P10076313901292228279

`ogf((-1+2x+x^2-x^3)/(-1+2x+3x^2-4x^3+x^4))`
-/

namespace A192352.P10076313901292228279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1, 1] [1, -2, -3, 4, -1] n

end

end A192352.P10076313901292228279

namespace A192352

/-- `ogf((-1+2x+x^2-x^3)/(-1+2x+3x^2-4x^3+x^4))` -/
def P10076313901292228279.Spec : Prop :=
  ∀ n, P10076313901292228279.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P11838568185263052743

`A106511(2*n)+A106511(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192352

/-- `A106511(2*n)+A106511(n+2)` -/
def P11838568185263052743.Spec : Prop :=
  ∀ n, P11838568185263052743.a n = A192352 (n + 1)

theorem P11838568185263052743.correct : P11838568185263052743.Spec := by
  intro n
  simp only [A192352, Nat.add_sub_cancel]

end A192352

/-! ## A192352.P4400373498891364371

`A094966(n+1)+A056014(n)-A094966(n)`
-/

namespace A192352.P4400373498891364371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (n + 1) + (A056014 n - A094966 n)

end

end A192352.P4400373498891364371

namespace A192352

/-- `A094966(n+1)+A056014(n)-A094966(n)` -/
def P4400373498891364371.Spec : Prop :=
  ∀ n, P4400373498891364371.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P17881689364533307442

`Δ[A049602(n)]-A049601(n)`
-/

namespace A192352.P17881689364533307442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049601 n

end

end A192352.P17881689364533307442

namespace A192352

/-- `Δ[A049602(n)]-A049601(n)` -/
def P17881689364533307442.Spec : Prop :=
  ∀ n, P17881689364533307442.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P11244430015175683731

`Δ[A164267(n)]-A001906(n)`
-/

namespace A192352.P11244430015175683731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001906 n

end

end A192352.P11244430015175683731

namespace A192352

/-- `Δ[A164267(n)]-A001906(n)` -/
def P11244430015175683731.Spec : Prop :=
  ∀ n, P11244430015175683731.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P5593507338949667981

`A049602(n+1)-A001906(n)`
-/

namespace A192352.P5593507338949667981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049602 (n + 1) - A001906 n

end

end A192352.P5593507338949667981

namespace A192352

/-- `A049602(n+1)-A001906(n)` -/
def P5593507338949667981.Spec : Prop :=
  ∀ n, P5593507338949667981.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P6794799247367438479

`Δ[A164267(n)]-A000045(2*n)`
-/

namespace A192352.P6794799247367438479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000045 (2 * n)

end

end A192352.P6794799247367438479

namespace A192352

/-- `Δ[A164267(n)]-A000045(2*n)` -/
def P6794799247367438479.Spec : Prop :=
  ∀ n, P6794799247367438479.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P1758326203024149226

`A001519(n+1)-A049601(n+1)`
-/

namespace A192352.P1758326203024149226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - A049601 (n + 1)

end

end A192352.P1758326203024149226

namespace A192352

/-- `A001519(n+1)-A049601(n+1)` -/
def P1758326203024149226.Spec : Prop :=
  ∀ n, P1758326203024149226.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P5917125502412211704

`A049602(n+1)-A000045(2*n)`
-/

namespace A192352.P5917125502412211704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049602 (n + 1) - A000045 (2 * n)

end

end A192352.P5917125502412211704

namespace A192352

/-- `A049602(n+1)-A000045(2*n)` -/
def P5917125502412211704.Spec : Prop :=
  ∀ n, P5917125502412211704.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P910686656191253756

`A000045(2*n+1)-A049601(n+1)`
-/

namespace A192352.P910686656191253756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - A049601 (n + 1)

end

end A192352.P910686656191253756

namespace A192352

/-- `A000045(2*n+1)-A049601(n+1)` -/
def P910686656191253756.Spec : Prop :=
  ∀ n, P910686656191253756.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P4901951914432091620

`A049602(n+1)-(A049602(n)+A049601(n))`
-/

namespace A192352.P4901951914432091620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049602 (n + 1) - (A049602 n + A049601 n)

end

end A192352.P4901951914432091620

namespace A192352

/-- `A049602(n+1)-(A049602(n)+A049601(n))` -/
def P4901951914432091620.Spec : Prop :=
  ∀ n, P4901951914432091620.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P1766411334205714031

`A164267(n+1)-(A164267(n)+A001906(n))`
-/

namespace A192352.P1766411334205714031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164267 (n + 1) - (A164267 n + A001906 n)

end

end A192352.P1766411334205714031

namespace A192352

/-- `A164267(n+1)-(A164267(n)+A001906(n))` -/
def P1766411334205714031.Spec : Prop :=
  ∀ n, P1766411334205714031.a n = A192352 (n + 1)

end A192352

/-! ## A192352.P9833943153096141647

`A001906(n+1)-(A049601(n+1)+A001906(n))`
-/

namespace A192352.P9833943153096141647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - (A049601 (n + 1) + A001906 n)

end

end A192352.P9833943153096141647

namespace A192352

/-- `A001906(n+1)-(A049601(n+1)+A001906(n))` -/
def P9833943153096141647.Spec : Prop :=
  ∀ n, P9833943153096141647.a n = A192352 (n + 1)

end A192352

/-!
# A192353: Constant term of the reduction of the polynomial p(n,x)=(1/2)((x+2)^n+(x-2)^n) by x^2->x+1.

The programs for A192353, the canonical program `A192353.P16573210087207913217` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192353 has offset 1).

The definition of A192353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192353.P16573210087207913217

`ogf((1-2x-4x^2+x^3)/(1-2x-9x^2+10x^3+5x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192353

/-- `ogf((1-2x-4x^2+x^3)/(1-2x-9x^2+10x^3+5x^4))` -/
def P16573210087207913217.Spec : Prop :=
  ∀ n, P16573210087207913217.a n = A192353 (n + 1)

theorem P16573210087207913217.correct : P16573210087207913217.Spec := by
  intro n
  simp only [A192353, Nat.add_sub_cancel]

end A192353

/-!
# A192354: Coefficients of x in the reduction of the polynomial p(n,x)=(1/2)((x+2)^n+(x-2)^n) by x^2->x+1.

The programs for A192354, the canonical program `A192354.P5498381504902360726` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192354 has offset 1).

The definition of A192354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192354.P5498381504902360726

`ogf((x-x^2+3x^3)/(1-2x-9x^2+10x^3+5x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192354

/-- `ogf((x-x^2+3x^3)/(1-2x-9x^2+10x^3+5x^4))` -/
def P5498381504902360726.Spec : Prop :=
  ∀ n, P5498381504902360726.a n = A192354 (n + 1)

theorem P5498381504902360726.correct : P5498381504902360726.Spec := by
  intro n
  simp only [A192354, Nat.add_sub_cancel]

end A192354

/-! ## A192354.P2270133489166089969

`and(4^n-1, A213658(2^n))`
-/

namespace A192354.P2270133489166089969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((4 ^ n : ℤ) - 1) (A213658 (2 ^ n))

end

end A192354.P2270133489166089969

namespace A192354

/-- `and(4^n-1, A213658(2^n))` -/
def P2270133489166089969.Spec : Prop :=
  ∀ n, P2270133489166089969.a n = A192354 (n + 1)

end A192354

/-!
# A192355: Constant term of the reduction of the polynomial p(n,x)=(1/2)((x+2)^n+(x-2)^n) by x^2->x+2.

The programs for A192355, the canonical program `A192355.P15537123112185287949` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192355 has offset 1).

The definition of A192355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192355.P9250886262473682793

`ogf((1-2x-5x^2+2x^3)/(1-2x-11x^2+12x^3))`
-/

namespace A192355.P9250886262473682793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -5, 2] [1, -2, -11, 12] n

end

end A192355.P9250886262473682793

namespace A192355

/-- `ogf((1-2x-5x^2+2x^3)/(1-2x-11x^2+12x^3))` -/
def P9250886262473682793.Spec : Prop :=
  ∀ n, P9250886262473682793.a n = A192355 (n + 1)

end A192355

/-! ## A192355.P15537123112185287949

`A001045(record[abs(xor(1, n-2))])-A287479(2*n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192355

/-- `A001045(record[abs(xor(1, n-2))])-A287479(2*n)` -/
def P15537123112185287949.Spec : Prop :=
  ∀ n, P15537123112185287949.a n = A192355 (n + 1)

theorem P15537123112185287949.correct : P15537123112185287949.Spec := by
  intro n
  simp only [A192355, Nat.add_sub_cancel]

end A192355

/-! ## A192355.P12556064152263797143

`A001045(A004273(n))-A141413(n+1)`
-/

namespace A192355.P12556064152263797143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004273 n).toNat - A141413 (n + 1)

end

end A192355.P12556064152263797143

namespace A192355

/-- `A001045(A004273(n))-A141413(n+1)` -/
def P12556064152263797143.Spec : Prop :=
  ∀ n, P12556064152263797143.a n = A192355 (n + 1)

end A192355

/-! ## A192355.P5195962845915583500

`A087433(n)-Δ[A007051(A052928(n))/2]`
-/

namespace A192355.P5195962845915583500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007051 (A052928 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087433 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A192355.P5195962845915583500

namespace A192355

/-- `A087433(n)-Δ[A007051(A052928(n))/2]` -/
def P5195962845915583500.Spec : Prop :=
  ∀ n, P5195962845915583500.a n = (A192355 (n + 1) : ℚ)

end A192355

/-!
# A192356: Coefficients of x in the reduction of the polynomial p(n,x) = ((x+2)^n + (x-2)^n)/2 by x^2->x+2.

The programs for A192356, the canonical program `A192356.P14565496258539747722` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192356 has offset 1).

The definition of A192356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192356.P13248249071706783569

`ogf((x-x^2+2x^3)/(1-2x-11x^2+12x^3))`
-/

namespace A192356.P13248249071706783569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 2] [1, -2, -11, 12] n

end

end A192356.P13248249071706783569

namespace A192356

/-- `ogf((x-x^2+2x^3)/(1-2x-11x^2+12x^3))` -/
def P13248249071706783569.Spec : Prop :=
  ∀ n, P13248249071706783569.a n = A192356 (n + 1)

end A192356

/-! ## A192356.P14565496258539747722

`A087433(n)-A007051(A052928(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192356

/-- `A087433(n)-A007051(A052928(n))` -/
def P14565496258539747722.Spec : Prop :=
  ∀ n, P14565496258539747722.a n = A192356 (n + 1)

theorem P14565496258539747722.correct : P14565496258539747722.Spec := by
  intro n
  simp only [A192356, Nat.add_sub_cancel]

end A192356

/-! ## A192356.P4258130978811968181

`A087433(n)-A083884(A004526(n))`
-/

namespace A192356.P4258130978811968181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087433 n - A083884 (A004526 n).toNat

end

end A192356.P4258130978811968181

namespace A192356

/-- `A087433(n)-A083884(A004526(n))` -/
def P4258130978811968181.Spec : Prop :=
  ∀ n, P4258130978811968181.a n = A192356 (n + 1)

end A192356

/-! ## A192356.P17398732140303042831

`A087433(n)-A124302(A109613(n))`
-/

namespace A192356.P17398732140303042831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087433 n - A124302 (A109613 n).toNat

end

end A192356.P17398732140303042831

namespace A192356

/-- `A087433(n)-A124302(A109613(n))` -/
def P17398732140303042831.Spec : Prop :=
  ∀ n, P17398732140303042831.a n = A192356 (n + 1)

end A192356

/-! ## A192356.P7861700280745165361

`A087433(n)-A007051(n-A000035(n))`
-/

namespace A192356.P7861700280745165361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087433 n - A007051 ((n : ℤ) - A000035 n).toNat

end

end A192356.P7861700280745165361

namespace A192356

/-- `A087433(n)-A007051(n-A000035(n))` -/
def P7861700280745165361.Spec : Prop :=
  ∀ n, P7861700280745165361.a n = A192356 (n + 1)

end A192356

/-! ## A192356.P14984018678850618158

`(2*(a(n-1)+3*4*a(n-2))+4)/2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A192356.P14984018678850618158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (2 * (a (n - 1) + 3 * (4 * a (n - 2))) + 4) / 2

end

end A192356.P14984018678850618158

namespace A192356

/-- `(2*(a(n-1)+3*4*a(n-2))+4)/2` -/
def P14984018678850618158.Spec : Prop :=
  ∀ n, P14984018678850618158.a n = (A192356 (n + 1) : ℚ)

end A192356

/-! ## A192356.P7936067575334457976

`(A287479(2*n)+A001045(2*n))/2`
-/

namespace A192356.P7936067575334457976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287479 (2 * n) + A001045 (2 * n) : ℚ) / 2

end

end A192356.P7936067575334457976

namespace A192356

/-- `(A287479(2*n)+A001045(2*n))/2` -/
def P7936067575334457976.Spec : Prop :=
  ∀ n, P7936067575334457976.a n = (A192356 (n + 1) : ℚ)

end A192356

/-!
# A192357: Constant term of the reduction of the polynomial p(n,x)=(1/2)((x+3)^n+(x-3)^n) by x^2->x+1.

The programs for A192357, the canonical program `A192357.P11970018393102733873` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192357 has offset 1).

The definition of A192357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192357.P10733181195524526650

`ogf((1-2x-9x^2+x^3)/(1-2x-19x^2+20x^3+55x^4))`
-/

namespace A192357.P10733181195524526650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -9, 1] [1, -2, -19, 20, 55] n

end

end A192357.P10733181195524526650

namespace A192357

/-- `ogf((1-2x-9x^2+x^3)/(1-2x-19x^2+20x^3+55x^4))` -/
def P10733181195524526650.Spec : Prop :=
  ∀ n, P10733181195524526650.a n = A192357 (n + 1)

end A192357

/-! ## A192357.P11970018393102733873

`2*a(n-1)+19*a(n-2)-20*a(n-3)-55*a(n-4)` with `a(0)=1, a(1)=0, a(2)=10, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192357

/-- `2*a(n-1)+19*a(n-2)-20*a(n-3)-55*a(n-4)` -/
def P11970018393102733873.Spec : Prop :=
  ∀ n, P11970018393102733873.a n = A192357 (n + 1)

theorem P11970018393102733873.correct : P11970018393102733873.Spec := by
  intro n
  simp only [A192357, Nat.add_sub_cancel]

end A192357

/-!
# A192358: Coefficients of x in the reduction of the polynomial p(n,x)=(1/2)((x+3)^n+(x-3)^n) by x^2->x+1.

The programs for A192358, the canonical program `A192358.P17564081683313987535` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192358 has offset 1).

The definition of A192358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192358.P17564081683313987535

`2*a(n-1)+19*a(n-2)-20*a(n-3)-55*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=29`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192358

/-- `2*a(n-1)+19*a(n-2)-20*a(n-3)-55*a(n-4)` -/
def P17564081683313987535.Spec : Prop :=
  ∀ n, P17564081683313987535.a n = A192358 (n + 1)

theorem P17564081683313987535.correct : P17564081683313987535.Spec := by
  intro n
  simp only [A192358, Nat.add_sub_cancel]

end A192358

/-! ## A192358.P4493747863049018578

`ogf((x-x^2+8x^3)/(1-2x-19x^2+20x^3+55x^4))`
-/

namespace A192358.P4493747863049018578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 8] [1, -2, -19, 20, 55] n

end

end A192358.P4493747863049018578

namespace A192358

/-- `ogf((x-x^2+8x^3)/(1-2x-19x^2+20x^3+55x^4))` -/
def P4493747863049018578.Spec : Prop :=
  ∀ n, P4493747863049018578.a n = A192358 (n + 1)

end A192358

/-!
# A192359: Numerator of h(n+6) - h(n), where h(n) = Sum_{k=1..n} 1/k.

The programs for A192359, there is no canonical definition to state claims against.
-/

/-! ## A192359.P6934234836952409100

`lcm(A165678(n+1), A165679(n+1))/A165679(n+1)`
-/

namespace A192359.P6934234836952409100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A165678 (n + 1)) (A165679 (n + 1)) : ℚ) / (A165679 (n + 1) : ℚ)

end

end A192359.P6934234836952409100

/-! ## A192359.P8656928136742530444

`A213998(A167499(n+5))*A252744(A006500(2*n+1))`
-/

namespace A192359.P8656928136742530444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A167499 (n + 5)).toNat * A252744 (A006500 (2 * n + 1)).toNat

end

end A192359.P8656928136742530444

/-! ## A192359.P7718070107666757139

`A116416(63*2^n)`
-/

namespace A192359.P7718070107666757139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (63 * 2 ^ n)

end

end A192359.P7718070107666757139

/-!
# A192363: a(n) = (A053664(n+1)-A053664(n)) / A002110(n).

The programs for A192363, there is no canonical definition to state claims against.
-/

/-! ## A192363.P9078613022745243736

`(A053664(n+2)-A053664(n+1))/A002110(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192363.P9078613022745243736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053664 (n + 2) - A053664 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ)

end

end A192363.P9078613022745243736

/-! ## A192363.P1840423939609153929

`floor(A053664(n+2)/A002110(n+1))`
-/

namespace A192363.P1840423939609153929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053664 (n + 2) : ℚ) / (A002110 (n + 1) : ℚ)⌋

end

end A192363.P1840423939609153929

/-! ## A192363.P17950889552406466657

`floor(A075307(n+2)/A002110(n+1))`
-/

namespace A192363.P17950889552406466657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075307 (n + 2) : ℚ) / (A002110 (n + 1) : ℚ)⌋

end

end A192363.P17950889552406466657

/-! ## A192363.P2991715915539370144

`floor(A187930(n+2)/A002110(n+1))`
-/

namespace A192363.P2991715915539370144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187930 (n + 2) : ℚ) / (A002110 (n + 1) : ℚ)⌋

end

end A192363.P2991715915539370144

/-! ## A192363.P12533339429796427125

`(A187930(n+2)-A187930(n+1))/A002110(n+1)`
-/

namespace A192363.P12533339429796427125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187930 (n + 2) - A187930 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ)

end

end A192363.P12533339429796427125

/-!
# A192364: Number of lattice paths from (0,0) to (n,n) using steps (0,1),(0,2),(1,0),(2,0),(1,1).

The programs for A192364, there is no canonical definition to state claims against.
-/

/-! ## A192364.P17982814121422522590

`A091533(∑[4*n])`
-/

namespace A192364.P17982814121422522590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192364.P17982814121422522590

/-! ## A192364.P3105517855652141626

`record[A091533(A092530(n))]`
-/

namespace A192364.P3105517855652141626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192364.P3105517855652141626

/-! ## A192364.P1375934758361425676

`or(1, A091533(A046092(n)))`
-/

namespace A192364.P1375934758361425676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A091533 (A046092 n).toNat)

end

end A192364.P1375934758361425676

/-! ## A192364.P12397526826099978897

`record[A003982(n)*A091533(n)]`
-/

namespace A192364.P12397526826099978897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A091533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192364.P12397526826099978897

/-! ## A192364.P6687301623053688715

`record[A091533(n*A008619(n))]`
-/

namespace A192364.P6687301623053688715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192364.P6687301623053688715

/-! ## A192364.P14708299794076314912

`record[gcd(A091533(n), A112467(n))]`
-/

namespace A192364.P14708299794076314912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091533 n) (A112467 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192364.P14708299794076314912

/-! ## A192364.P17495640467593488251

`A091533(A046092(n))+A024155(A205708(n+1))`
-/

namespace A192364.P17495640467593488251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 (A046092 n).toNat + A024155 (A205708 (n + 1)).toNat

end

end A192364.P17495640467593488251

/-! ## A192364.P15189436286403813314

`record[A091533(A057979(n²))]`
-/

namespace A192364.P15189436286403813314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 (A057979 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192364.P15189436286403813314

/-!
# A192365: Number of lattice paths from (0,0) to (n,n) using steps (1,0),(2,0),(0,1),(0,2),(1,1),(2,2).

The programs for A192365, there is no canonical definition to state claims against.
-/

/-! ## A192365.P18114043478772860676

`A333645(or(n, A107708(n)))`
-/

namespace A192365.P18114043478772860676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333645 (Int.lor (n : ℤ) (A107708 n)).toNat

end

end A192365.P18114043478772860676

/-!
# A192366: Denominators of a companion to the Bernoulli numbers.

The programs for A192366, there is no canonical definition to state claims against.
-/

/-! ## A192366.P16459597111838684123

`A172031(A014681(n)+char[2])`
-/

namespace A192366.P16459597111838684123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172031 (A014681 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A192366.P16459597111838684123

/-! ## A192366.P952597182899540116

`A172031(A014681(n-char[2]))`
-/

namespace A192366.P952597182899540116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172031 (A014681 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A192366.P952597182899540116

/-! ## A192366.P14277333971173753206

`A172031(A185012(n)+A014681(n))`
-/

namespace A192366.P14277333971173753206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172031 (A185012 n + A014681 n).toNat

end

end A192366.P14277333971173753206

/-! ## A192366.P7686052845290793993

`lcm(A040001(n), A172031(A014681(n)))`
-/

namespace A192366.P7686052845290793993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A172031 (A014681 n).toNat)

end

end A192366.P7686052845290793993

/-! ## A192366.P850376300656416569

`A172031(A014681(n))+A003982(A030664(n))`
-/

namespace A192366.P850376300656416569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172031 (A014681 n).toNat + A003982 (A030664 n).toNat

end

end A192366.P850376300656416569

/-!
# A192368: Number of lattice paths from (0,0) to (n,n) using steps (1,0), (2,0), (0,2), (1,1).

The programs for A192368, there is no canonical definition to state claims against.
-/

/-! ## A192368.P6388257502391082720

`A007514(A326096(n))+1`
-/

namespace A192368.P6388257502391082720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007514 (A326096 n).toNat + 1

end

end A192368.P6388257502391082720

/-! ## A192368.P6252499932171721177

`A054899(or(13, A296324(n+1)))`
-/

namespace A192368.P6252499932171721177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (Int.lor 13 (A296324 (n + 1))).toNat

end

end A192368.P6252499932171721177

/-!
# A192369: Number of lattice paths from (0,0) to (n,n) using steps (0,1), (0,2), (1,0), (2,0), and (2,2).

The programs for A192369, there is no canonical definition to state claims against.
-/

/-! ## A192369.P14280049711470384828

`A008624(A054614(n)+2)`
-/

namespace A192369.P14280049711470384828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A054614 n + 2).toNat

end

end A192369.P14280049711470384828

/-!
# A192370: Sum of all the n-digit numbers whose digits are all even and nonzero: 2,4,6,8.

The programs for A192370, the canonical program `A192370.P3684023536559369068` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192370 has offset 1).

The definition of A192370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192370.P17148650951805811729

`ogf(20/(1-44x+160x^2))`
-/

namespace A192370.P17148650951805811729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [20] [1, -44, 160] n

end

end A192370.P17148650951805811729

namespace A192370

/-- `ogf(20/(1-44x+160x^2))` -/
def P17148650951805811729.Spec : Prop :=
  ∀ n, P17148650951805811729.a n = A192370 (n + 1)

end A192370

/-! ## A192370.P3684023536559369068

`44*a(n-1)-160*a(n-2)` with `a(0)=20, a(1)=880`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192370

/-- `44*a(n-1)-160*a(n-2)` -/
def P3684023536559369068.Spec : Prop :=
  ∀ n, P3684023536559369068.a n = A192370 (n + 1)

theorem P3684023536559369068.correct : P3684023536559369068.Spec := by
  intro n
  simp only [A192370, Nat.add_sub_cancel]

end A192370

/-! ## A192370.P6081780740460965580

`5*4^(n+1)*(10^(n+1)-1)/9`
-/

namespace A192370.P6081780740460965580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 4 ^ (n + 1) : ℤ) * ((10 ^ (n + 1) : ℤ) - 1) : ℚ) / 9

end

end A192370.P6081780740460965580

namespace A192370

/-- `5*4^(n+1)*(10^(n+1)-1)/9` -/
def P6081780740460965580.Spec : Prop :=
  ∀ n, P6081780740460965580.a n = (A192370 (n + 1) : ℚ)

theorem P6081780740460965580.correct : P6081780740460965580.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A192370, Nat.add_sub_cancel, A192370.P6081780740460965580.a, A192370.P3684023536559369068.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A192370, Nat.add_sub_cancel, A192370.P6081780740460965580.a, A192370.P3684023536559369068.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A192370

/-! ## A192370.P10276611844157413276

`lcm(4^(n+1), ∑[10^(n+1)])`
-/

namespace A192370.P10276611844157413276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (4 ^ (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192370.P10276611844157413276

namespace A192370

/-- `lcm(4^(n+1), ∑[10^(n+1)])` -/
def P10276611844157413276.Spec : Prop :=
  ∀ n, (P10276611844157413276.a n : ℤ) = A192370 (n + 1)

end A192370

/-! ## A192370.P7058066770061681906

`Δ[20*A328351(n)]`
-/

namespace A192370.P7058066770061681906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A328351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192370.P7058066770061681906

namespace A192370

/-- `Δ[20*A328351(n)]` -/
def P7058066770061681906.Spec : Prop :=
  ∀ n, P7058066770061681906.a n = A192370 (n + 1)

end A192370

/-! ## A192370.P6638711677775324954

`Δ[20*∑[A011782(n)²*A002275(n)]]`
-/

namespace A192370.P6638711677775324954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A002275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192370.P6638711677775324954

namespace A192370

/-- `Δ[20*∑[A011782(n)²*A002275(n)]]` -/
def P6638711677775324954.Spec : Prop :=
  ∀ n, P6638711677775324954.a n = A192370 (n + 1)

end A192370

/-! ## A192370.P3126057137394752070

`Δ[20*∑[A131577(n)²*A002275(n)]]`
-/

namespace A192370.P3126057137394752070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 2 * A002275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192370.P3126057137394752070

namespace A192370

/-- `Δ[20*∑[A131577(n)²*A002275(n)]]` -/
def P3126057137394752070.Spec : Prop :=
  ∀ n, P3126057137394752070.a n = A192370 (n + 1)

end A192370

/-! ## A192370.P18289246209820459723

`Δ[20*∑[A002275(n)*A034008(2*n)]]`
-/

namespace A192370.P18289246209820459723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n * A034008 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192370.P18289246209820459723

namespace A192370

/-- `Δ[20*∑[A002275(n)*A034008(2*n)]]` -/
def P18289246209820459723.Spec : Prop :=
  ∀ n, P18289246209820459723.a n = A192370 (n + 1)

end A192370

/-!
# A192371: Number of lattice paths from (0,0) to (n,n) using steps (1,1), (0,2), (2,0), (0,3), (3,0).

The programs for A192371, there is no canonical definition to state claims against.
-/

/-! ## A192371.P838751562863948625

`or(1, A195174(A082590(n)))`
-/

namespace A192371.P838751562863948625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A195174 (A082590 n).toNat)

end

end A192371.P838751562863948625

/-! ## A192371.P17215668568960422352

`A011847(2*(n+1))+A002265(A000021(2*n+1))`
-/

namespace A192371.P17215668568960422352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011847 (2 * (n + 1)) + A002265 (A000021 (2 * n + 1)).toNat

end

end A192371.P17215668568960422352

/-! ## A192371.P6433246923181245223

`A289496(A149382(n+1))`
-/

namespace A192371.P6433246923181245223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A149382 (n + 1)).toNat

end

end A192371.P6433246923181245223

/-!
# A192372: Half the number of nXnXn triangular binary arrays with every element equal to at least half of its neighbors.

The programs for A192372, there is no canonical definition to state claims against.
-/

/-! ## A192372.P17563295437258803645

`A184985(A125696(n)+A014599(n+1))`
-/

namespace A192372.P17563295437258803645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A125696 n + A014599 (n + 1)).toNat

end

end A192372.P17563295437258803645

/-! ## A192372.P5255550509354147316

`or(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])², A374939(n+1))`
-/

namespace A192372.P5255550509354147316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2)) (A374939 (n + 1))

end

end A192372.P5255550509354147316

/-!
# A192373: Constant term in the reduction of the polynomial p(n,x) defined at A162517 and below in Comments.

The programs for A192373, the canonical program `A192373.P17136897203304202221` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192373 has offset 1).

The definition of A192373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192373.P16348217957983943419

`ogf((1-2x-3x^2)/(1-2x-10x^2+6x^3+9x^4))`
-/

namespace A192373.P16348217957983943419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -3] [1, -2, -10, 6, 9] n

end

end A192373.P16348217957983943419

namespace A192373

/-- `ogf((1-2x-3x^2)/(1-2x-10x^2+6x^3+9x^4))` -/
def P16348217957983943419.Spec : Prop :=
  ∀ n, P16348217957983943419.a n = A192373 (n + 1)

end A192373

/-! ## A192373.P17136897203304202221

`2*a(n-1)+10*a(n-2)-6*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=0, a(2)=7, a(3)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192373

/-- `2*a(n-1)+10*a(n-2)-6*a(n-3)-9*a(n-4)` -/
def P17136897203304202221.Spec : Prop :=
  ∀ n, P17136897203304202221.a n = A192373 (n + 1)

theorem P17136897203304202221.correct : P17136897203304202221.Spec := by
  intro n
  simp only [A192373, Nat.add_sub_cancel]

end A192373

/-! ## A192373.P9264884490835336599

`A192374(n+2)-A192429(n+1)`
-/

namespace A192373.P9264884490835336599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192374 (n + 2) - A192429 (n + 1)

end

end A192373.P9264884490835336599

namespace A192373

/-- `A192374(n+2)-A192429(n+1)` -/
def P9264884490835336599.Spec : Prop :=
  ∀ n, P9264884490835336599.a n = A192373 (n + 1)

end A192373

/-! ## A192373.P18147795517878044630

`Δ[A192374(n+1)]-A192345(n+2)`
-/

namespace A192373.P18147795517878044630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192345 (n + 2)

end

end A192373.P18147795517878044630

namespace A192373

/-- `Δ[A192374(n+1)]-A192345(n+2)` -/
def P18147795517878044630.Spec : Prop :=
  ∀ n, P18147795517878044630.a n = A192373 (n + 1)

end A192373

/-! ## A192373.P7357453426750945706

`Δ[2*A192375(n+1)]-A192345(n+2)`
-/

namespace A192373.P7357453426750945706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192345 (n + 2)

end

end A192373.P7357453426750945706

namespace A192373

/-- `Δ[2*A192375(n+1)]-A192345(n+2)` -/
def P7357453426750945706.Spec : Prop :=
  ∀ n, P7357453426750945706.a n = A192373 (n + 1)

end A192373

/-!
# A192374: Coefficient of x in the reduction of the polynomial p(n,x) defined at A162517 and below in Comments.

The programs for A192374, the canonical program `A192374.P16151221222606860416` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192374 has offset 1).

The definition of A192374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192374.P16151221222606860416

`ogf(2x/(1-2x-10x^2+6x^3+9x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192374

/-- `ogf(2x/(1-2x-10x^2+6x^3+9x^4))` -/
def P16151221222606860416.Spec : Prop :=
  ∀ n, P16151221222606860416.a n = A192374 (n + 1)

theorem P16151221222606860416.correct : P16151221222606860416.Spec := by
  intro n
  simp only [A192374, Nat.add_sub_cancel]

end A192374

/-! ## A192374.P17542733643168340601

`2*A192375(n+1)`
-/

namespace A192374.P17542733643168340601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192375 (n + 1)

end

end A192374.P17542733643168340601

namespace A192374

/-- `2*A192375(n+1)` -/
def P17542733643168340601.Spec : Prop :=
  ∀ n, P17542733643168340601.a n = A192374 (n + 1)

end A192374

/-! ## A192374.P14379723565201307790

`A192375(n+1)+A192375(Δ[n²]-n)`
-/

namespace A192374.P14379723565201307790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192375 (n + 1) + A192375 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A192374.P14379723565201307790

namespace A192374

/-- `A192375(n+1)+A192375(Δ[n²]-n)` -/
def P14379723565201307790.Spec : Prop :=
  ∀ n, P14379723565201307790.a n = A192374 (n + 1)

end A192374

/-! ## A192374.P9532997730533595059

`A192429(n+1)-A192345(n+2)`
-/

namespace A192374.P9532997730533595059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192429 (n + 1) - A192345 (n + 2)

end

end A192374.P9532997730533595059

namespace A192374

/-- `A192429(n+1)-A192345(n+2)` -/
def P9532997730533595059.Spec : Prop :=
  ∀ n, P9532997730533595059.a n = A192374 (n + 1)

end A192374

/-! ## A192374.P17341676949354551182

`A192373(n+2)-A192344(n+2)`
-/

namespace A192374.P17341676949354551182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192373 (n + 2) - A192344 (n + 2)

end

end A192374.P17341676949354551182

namespace A192374

/-- `A192373(n+2)-A192344(n+2)` -/
def P17341676949354551182.Spec : Prop :=
  ∀ n, P17341676949354551182.a n = A192374 (n + 1)

end A192374

/-!
# A192375: A192374(n)/2.

The programs for A192375, the canonical program `A192375.P4655777941475542109` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192375 has offset 1).

The definition of A192375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192374, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192375.P4655777941475542109

`A192374(n+1)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192375

/-- `A192374(n+1)/2` -/
def P4655777941475542109.Spec : Prop :=
  ∀ n, P4655777941475542109.a n = (A192375 (n + 1) : ℚ)

end A192375

/-! ## A192375.P14066409315392329991

`ogf(x/(1-2x-10x^2+6x^3+9x^4))`
-/

namespace A192375.P14066409315392329991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -10, 6, 9] n

end

end A192375.P14066409315392329991

namespace A192375

/-- `ogf(x/(1-2x-10x^2+6x^3+9x^4))` -/
def P14066409315392329991.Spec : Prop :=
  ∀ n, P14066409315392329991.a n = A192375 (n + 1)

end A192375

/-! ## A192375.P13702382456295687322

`Δ[∑[A192374(A028310(n))]/2]`
-/

namespace A192375.P13702382456295687322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192374 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192375.P13702382456295687322

namespace A192375

/-- `Δ[∑[A192374(A028310(n))]/2]` -/
def P13702382456295687322.Spec : Prop :=
  ∀ n, P13702382456295687322.a n = (A192375 (n + 1) : ℚ)

end A192375

/-! ## A192375.P18124925657705719997

`(A192429(n+1)-A192345(n+2))/2`
-/

namespace A192375.P18124925657705719997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192429 (n + 1) - A192345 (n + 2) : ℚ) / 2

end

end A192375.P18124925657705719997

namespace A192375

/-- `(A192429(n+1)-A192345(n+2))/2` -/
def P18124925657705719997.Spec : Prop :=
  ∀ n, P18124925657705719997.a n = (A192375 (n + 1) : ℚ)

end A192375

/-! ## A192375.P5136694689395782450

`(A192373(n+2)-A192344(n+2))/2`
-/

namespace A192375.P5136694689395782450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192373 (n + 2) - A192344 (n + 2) : ℚ) / 2

end

end A192375.P5136694689395782450

namespace A192375

/-- `(A192373(n+2)-A192344(n+2))/2` -/
def P5136694689395782450.Spec : Prop :=
  ∀ n, P5136694689395782450.a n = (A192375 (n + 1) : ℚ)

end A192375

/-!
# A192376: Constant term of the reduction by x^2->x+2 of the polynomial p(n,x) defined below in Comments.

The programs for A192376, the canonical program `A192376.P1209852034975040410` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192376 has offset 1).

The definition of A192376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192376.P3261825061933786414

`ogf((1-2x+x^2)/(1-2x-6x^2-2x^3+x^4))`
-/

namespace A192376.P3261825061933786414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -2, -6, -2, 1] n

end

end A192376.P3261825061933786414

namespace A192376

/-- `ogf((1-2x+x^2)/(1-2x-6x^2-2x^3+x^4))` -/
def P3261825061933786414.Spec : Prop :=
  ∀ n, P3261825061933786414.a n = A192376 (n + 1)

end A192376

/-! ## A192376.P1209852034975040410

`2*a(n-1)+6*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=7, a(3)=16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192376

/-- `2*a(n-1)+6*a(n-2)+2*a(n-3)-a(n-4)` -/
def P1209852034975040410.Spec : Prop :=
  ∀ n, P1209852034975040410.a n = A192376 (n + 1)

theorem P1209852034975040410.correct : P1209852034975040410.Spec := by
  intro n
  simp only [A192376, Nat.add_sub_cancel]

end A192376

/-! ## A192376.P17505835766401031587

`A217233(n)-a(n-1)` with `a(0)=1`
-/

namespace A192376.P17505835766401031587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A217233 n - a (n - 1)

end

end A192376.P17505835766401031587

namespace A192376

/-- `A217233(n)-a(n-1)` -/
def P17505835766401031587.Spec : Prop :=
  ∀ n, P17505835766401031587.a n = A192376 (n + 1)

end A192376

/-! ## A192376.P15791074285693981617

`Δ[Δ[A192378(A028310(n))]]`
-/

namespace A192376.P15791074285693981617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192378 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192376.P15791074285693981617

namespace A192376

/-- `Δ[Δ[A192378(A028310(n))]]` -/
def P15791074285693981617.Spec : Prop :=
  ∀ n, P15791074285693981617.a n = A192376 (n + 1)

end A192376

/-! ## A192376.P11339073976210699750

`abs(∑[A033999(n)*A217233(n)])`
-/

namespace A192376.P11339073976210699750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A217233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A192376.P11339073976210699750

namespace A192376

/-- `abs(∑[A033999(n)*A217233(n)])` -/
def P11339073976210699750.Spec : Prop :=
  ∀ n, P11339073976210699750.a n = A192376 (n + 1)

end A192376

/-!
# A192377: Coefficient of x in the reduction by x^2->x+2 of the polynomial p(n,x) defined below in Comments.

The programs for A192377, the canonical program `A192377.P6040500999899785244` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192377 has offset 1).

The definition of A192377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192377.P2632854306329558856

`ogf(2x/(1-2x-6x^2-2x^3+x^4))`
-/

namespace A192377.P2632854306329558856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -6, -2, 1] n

end

end A192377.P2632854306329558856

namespace A192377

/-- `ogf(2x/(1-2x-6x^2-2x^3+x^4))` -/
def P2632854306329558856.Spec : Prop :=
  ∀ n, P2632854306329558856.a n = A192377 (n + 1)

end A192377

/-! ## A192377.P6040500999899785244

`2*a(n-1)+6*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=20`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192377

/-- `2*a(n-1)+6*a(n-2)+2*a(n-3)-a(n-4)` -/
def P6040500999899785244.Spec : Prop :=
  ∀ n, P6040500999899785244.a n = A192377 (n + 1)

theorem P6040500999899785244.correct : P6040500999899785244.Spec := by
  intro n
  simp only [A192377, Nat.add_sub_cancel]

end A192377

/-! ## A192377.P6505099147331510272

`2*A192378(n+1)`
-/

namespace A192377.P6505099147331510272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192378 (n + 1)

end

end A192377.P6505099147331510272

namespace A192377

/-- `2*A192378(n+1)` -/
def P6505099147331510272.Spec : Prop :=
  ∀ n, P6505099147331510272.a n = A192377 (n + 1)

end A192377

/-! ## A192377.P13780732217576147033

`record[2*A192378(A126759(n))]`
-/

namespace A192377.P13780732217576147033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192378 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192377.P13780732217576147033

namespace A192377

/-- `record[2*A192378(A126759(n))]` -/
def P13780732217576147033.Spec : Prop :=
  ∀ n, P13780732217576147033.a n = A192377 (n + 1)

end A192377

/-! ## A192377.P16146446481370584675

`record[2*A192378(A324347(n))]`
-/

namespace A192377.P16146446481370584675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192378 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192377.P16146446481370584675

namespace A192377

/-- `record[2*A192378(A324347(n))]` -/
def P16146446481370584675.Spec : Prop :=
  ∀ n, P16146446481370584675.a n = A192377 (n + 1)

end A192377

/-! ## A192377.P13967155134260479026

`Δ[2*∑[A192378(A028310(n))]]`
-/

namespace A192377.P13967155134260479026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192378 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192377.P13967155134260479026

namespace A192377

/-- `Δ[2*∑[A192378(A028310(n))]]` -/
def P13967155134260479026.Spec : Prop :=
  ∀ n, P13967155134260479026.a n = A192377 (n + 1)

end A192377

/-! ## A192377.P12172241696003233720

`A192378(n+1)+A192378(Δ[n²]-n)`
-/

namespace A192377.P12172241696003233720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192378 (n + 1) + A192378 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A192377.P12172241696003233720

namespace A192377

/-- `A192378(n+1)+A192378(Δ[n²]-n)` -/
def P12172241696003233720.Spec : Prop :=
  ∀ n, P12172241696003233720.a n = A192377 (n + 1)

end A192377

/-! ## A192377.P14578873082859415523

`A192378(n+1)+record[A192378(A126759(n))]`
-/

namespace A192377.P14578873082859415523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192378 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192378 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192377.P14578873082859415523

namespace A192377

/-- `A192378(n+1)+record[A192378(A126759(n))]` -/
def P14578873082859415523.Spec : Prop :=
  ∀ n, P14578873082859415523.a n = A192377 (n + 1)

end A192377

/-! ## A192377.P11363732848556645996

`A192378(n+1)+record[A192378(A324347(n))]`
-/

namespace A192377.P11363732848556645996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192378 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192378 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192377.P11363732848556645996

namespace A192377

/-- `A192378(n+1)+record[A192378(A324347(n))]` -/
def P11363732848556645996.Spec : Prop :=
  ∀ n, P11363732848556645996.a n = A192377 (n + 1)

end A192377

/-! ## A192377.P15652403114906183833

`Δ[A112832(n)-A192378(n+1)]`
-/

namespace A192377.P15652403114906183833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112832 n - A192378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192377.P15652403114906183833

namespace A192377

/-- `Δ[A112832(n)-A192378(n+1)]` -/
def P15652403114906183833.Spec : Prop :=
  ∀ n, P15652403114906183833.a n = A192377 (n + 1)

end A192377

/-!
# A192378: (A192377)/2.

The programs for A192378, the canonical program `A192378.P10679451715681007283` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192378 has offset 1).

The definition of A192378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192378.P12891781923961771095

`ogf(x/(1-2x-6x^2-2x^3+x^4))`
-/

namespace A192378.P12891781923961771095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -6, -2, 1] n

end

end A192378.P12891781923961771095

namespace A192378

/-- `ogf(x/(1-2x-6x^2-2x^3+x^4))` -/
def P12891781923961771095.Spec : Prop :=
  ∀ n, P12891781923961771095.a n = A192378 (n + 1)

end A192378

/-! ## A192378.P10679451715681007283

`3*(a(n-1)+a(n-2))-a(n-3)-(-1)^n` with `a(0)=0, a(1)=1, a(2)=2, a(3)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192378

/-- `3*(a(n-1)+a(n-2))-a(n-3)-(-1)^n` -/
def P10679451715681007283.Spec : Prop :=
  ∀ n, P10679451715681007283.a n = A192378 (n + 1)

theorem P10679451715681007283.correct : P10679451715681007283.Spec := by
  intro n
  simp only [A192378, Nat.add_sub_cancel]

end A192378

/-! ## A192378.P6954818244225803104

`a(n-2)+A002530(n)*A048788(n)` with `a(0)=0, a(1)=1`
-/

namespace A192378.P6954818244225803104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A002530 n * A048788 n

end

end A192378.P6954818244225803104

namespace A192378

/-- `a(n-2)+A002530(n)*A048788(n)` -/
def P6954818244225803104.Spec : Prop :=
  ∀ n, P6954818244225803104.a n = A192378 (n + 1)

end A192378

/-! ## A192378.P9058362390583595033

`A192377(n+1)/2`
-/

namespace A192378.P9058362390583595033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192377 (n + 1) : ℚ) / 2

end

end A192378.P9058362390583595033

namespace A192378

/-- `A192377(n+1)/2` -/
def P9058362390583595033.Spec : Prop :=
  ∀ n, P9058362390583595033.a n = (A192378 (n + 1) : ℚ)

end A192378

/-! ## A192378.P17563058256684932087

`A109437(n)-a(n-1)` with `a(0)=0`
-/

namespace A192378.P17563058256684932087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A109437 n - a (n - 1)

end

end A192378.P17563058256684932087

namespace A192378

/-- `A109437(n)-a(n-1)` -/
def P17563058256684932087.Spec : Prop :=
  ∀ n, P17563058256684932087.a n = A192378 (n + 1)

end A192378

/-! ## A192378.P10025287353994759202

`a(n-2)+xor(1, A001075(n))/3` with `a(0)=0, a(1)=1`
-/

namespace A192378.P10025287353994759202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (Int.xor 1 (A001075 n) : ℚ) / 3

end

end A192378.P10025287353994759202

namespace A192378

/-- `a(n-2)+xor(1, A001075(n))/3` -/
def P10025287353994759202.Spec : Prop :=
  ∀ n, P10025287353994759202.a n = (A192378 (n + 1) : ℚ)

end A192378

/-! ## A192378.P4990074332865991836

`∑[A192377(n+1)-A109437(n)]`
-/

namespace A192378.P4990074332865991836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192377 (n + 1) - A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192378.P4990074332865991836

namespace A192378

/-- `∑[A192377(n+1)-A109437(n)]` -/
def P4990074332865991836.Spec : Prop :=
  ∀ n, P4990074332865991836.a n = A192378 (n + 1)

end A192378

/-! ## A192378.P8292916283511000168

`a(n-2)-(A006253(n)-A001835(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A192378.P8292916283511000168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (A006253 n - A001835 (n + 1))

end

end A192378.P8292916283511000168

namespace A192378

/-- `a(n-2)-(A006253(n)-A001835(n+1))` -/
def P8292916283511000168.Spec : Prop :=
  ∀ n, P8292916283511000168.a n = A192378 (n + 1)

end A192378

/-! ## A192378.P6983808500609460363

`∑[A109437(n)-A192377(A028310(n))]`
-/

namespace A192378.P6983808500609460363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n - A192377 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192378.P6983808500609460363

namespace A192378

/-- `∑[A109437(n)-A192377(A028310(n))]` -/
def P6983808500609460363.Spec : Prop :=
  ∀ n, P6983808500609460363.a n = A192378 (n + 1)

end A192378

/-! ## A192378.P12387941731031210455

`a(n-2)+A105968(n)-Δ[A001353(n)]` with `a(0)=0, a(1)=1`
-/

namespace A192378.P12387941731031210455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (A105968 n - (f1 (n + 1) - f1 n))

end

end A192378.P12387941731031210455

namespace A192378

/-- `a(n-2)+A105968(n)-Δ[A001353(n)]` -/
def P12387941731031210455.Spec : Prop :=
  ∀ n, P12387941731031210455.a n = A192378 (n + 1)

end A192378

/-!
# A192379: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192379, the canonical program `A192379.P10396149536587979702` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192379 has offset 1).

The definition of A192379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192379.P14678336811561852752

`ogf((1-2x-x^2)/(1-2x-6x^2+2x^3+x^4))`
-/

namespace A192379.P14678336811561852752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -2, -6, 2, 1] n

end

end A192379.P14678336811561852752

namespace A192379

/-- `ogf((1-2x-x^2)/(1-2x-6x^2+2x^3+x^4))` -/
def P14678336811561852752.Spec : Prop :=
  ∀ n, P14678336811561852752.a n = A192379 (n + 1)

end A192379

/-! ## A192379.P10396149536587979702

`2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192379

/-- `2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` -/
def P10396149536587979702.Spec : Prop :=
  ∀ n, P10396149536587979702.a n = A192379 (n + 1)

theorem P10396149536587979702.correct : P10396149536587979702.Spec := by
  intro n
  simp only [A192379, Nat.add_sub_cancel]

end A192379

/-! ## A192379.P4750864708064761530

`A192380(round(sqrt(n²+1)))+A192346(n+1)`
-/

namespace A192379.P4750864708064761530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192380 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A192346 (n + 1)

end

end A192379.P4750864708064761530

namespace A192379

/-- `A192380(round(sqrt(n²+1)))+A192346(n+1)` -/
def P4750864708064761530.Spec : Prop :=
  ∀ n, P4750864708064761530.a n = A192379 (n + 1)

end A192379

/-! ## A192379.P18251940209153530596

`A192347(n+2)-Δ[A192430(n)]`
-/

namespace A192379.P18251940209153530596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192347 (n + 2) - (f1 (n + 1) - f1 n)

end

end A192379.P18251940209153530596

namespace A192379

/-- `A192347(n+2)-Δ[A192430(n)]` -/
def P18251940209153530596.Spec : Prop :=
  ∀ n, P18251940209153530596.a n = A192379 (n + 1)

end A192379

/-! ## A192379.P16361716949168983105

`A192430(n+1)-A192346(n+2)`
-/

namespace A192379.P16361716949168983105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192430 (n + 1) - A192346 (n + 2)

end

end A192379.P16361716949168983105

namespace A192379

/-- `A192430(n+1)-A192346(n+2)` -/
def P16361716949168983105.Spec : Prop :=
  ∀ n, P16361716949168983105.a n = A192379 (n + 1)

end A192379

/-! ## A192379.P11705219351671319388

`A192346(n+1)+A192431(n)-A192347(n+1)`
-/

namespace A192379.P11705219351671319388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192346 (n + 1) + (A192431 n - A192347 (n + 1))

end

end A192379.P11705219351671319388

namespace A192379

/-- `A192346(n+1)+A192431(n)-A192347(n+1)` -/
def P11705219351671319388.Spec : Prop :=
  ∀ n, P11705219351671319388.a n = A192379 (n + 1)

end A192379

/-! ## A192379.P13016378128755090167

`A192380(n+2)-A192431(n+1)`
-/

namespace A192379.P13016378128755090167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192380 (n + 2) - A192431 (n + 1)

end

end A192379.P13016378128755090167

namespace A192379

/-- `A192380(n+2)-A192431(n+1)` -/
def P13016378128755090167.Spec : Prop :=
  ∀ n, P13016378128755090167.a n = A192379 (n + 1)

end A192379

/-!
# A192380: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192380, the canonical program `A192380.P2634722540674557466` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192380 has offset 1).

The definition of A192380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192380.P4699607546452916945

`ogf(2x/(1-2x-6x^2+2x^3+x^4))`
-/

namespace A192380.P4699607546452916945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -6, 2, 1] n

end

end A192380.P4699607546452916945

namespace A192380

/-- `ogf(2x/(1-2x-6x^2+2x^3+x^4))` -/
def P4699607546452916945.Spec : Prop :=
  ∀ n, P4699607546452916945.a n = A192380 (n + 1)

end A192380

/-! ## A192380.P2634722540674557466

`2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=20`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192380

/-- `2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` -/
def P2634722540674557466.Spec : Prop :=
  ∀ n, P2634722540674557466.a n = A192380 (n + 1)

theorem P2634722540674557466.correct : P2634722540674557466.Spec := by
  intro n
  simp only [A192380, Nat.add_sub_cancel]

end A192380

/-! ## A192380.P12155492297924255436

`2*A192381(n+1)`
-/

namespace A192380.P12155492297924255436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192381 (n + 1)

end

end A192380.P12155492297924255436

namespace A192380

/-- `2*A192381(n+1)` -/
def P12155492297924255436.Spec : Prop :=
  ∀ n, P12155492297924255436.a n = A192380 (n + 1)

end A192380

/-! ## A192380.P10278310125891426446

`A192379(n+2)-A192346(n+2)`
-/

namespace A192380.P10278310125891426446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192379 (n + 2) - A192346 (n + 2)

end

end A192380.P10278310125891426446

namespace A192380

/-- `A192379(n+2)-A192346(n+2)` -/
def P10278310125891426446.Spec : Prop :=
  ∀ n, P10278310125891426446.a n = A192380 (n + 1)

end A192380

/-! ## A192380.P15848949625873537315

`A192381(A000027(n+1))+A192381(n+1)`
-/

namespace A192380.P15848949625873537315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192381 (A000027 (n + 1)).toNat + A192381 (n + 1)

end

end A192380.P15848949625873537315

namespace A192380

/-- `A192381(A000027(n+1))+A192381(n+1)` -/
def P15848949625873537315.Spec : Prop :=
  ∀ n, P15848949625873537315.a n = A192380 (n + 1)

end A192380

/-! ## A192380.P1759068301038529210

`A192431(n+1)-A192347(n+2)`
-/

namespace A192380.P1759068301038529210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192431 (n + 1) - A192347 (n + 2)

end

end A192380.P1759068301038529210

namespace A192380

/-- `A192431(n+1)-A192347(n+2)` -/
def P1759068301038529210.Spec : Prop :=
  ∀ n, P1759068301038529210.a n = A192380 (n + 1)

end A192380

/-! ## A192380.P6551772163387870508

`A192381(n+1)+A192381(n+1)%A041856(n)`
-/

namespace A192380.P6551772163387870508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192381 (n + 1) + Int.tmod (A192381 (n + 1)) (A041856 n)

end

end A192380.P6551772163387870508

namespace A192380

/-- `A192381(n+1)+A192381(n+1)%A041856(n)` -/
def P6551772163387870508.Spec : Prop :=
  ∀ n, P6551772163387870508.a n = A192380 (n + 1)

end A192380

/-! ## A192380.P2862313691392948476

`A192381(n+1)+A192381(n+1)+A003982(A269717(n))`
-/

namespace A192380.P2862313691392948476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192381 (n + 1) + (A192381 (n + 1) + A003982 (A269717 n).toNat)

end

end A192380.P2862313691392948476

namespace A192380

/-- `A192381(n+1)+A192381(n+1)+A003982(A269717(n))` -/
def P2862313691392948476.Spec : Prop :=
  ∀ n, P2862313691392948476.a n = A192380 (n + 1)

end A192380

/-!
# A192381: (A192380)/2.

The programs for A192381, the canonical program `A192381.P8158394945412087484` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192381 has offset 1).

The definition of A192381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192381.P4808496097699157925

`ogf(x/(1-2x-6x^2+2x^3+x^4))`
-/

namespace A192381.P4808496097699157925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -6, 2, 1] n

end

end A192381.P4808496097699157925

namespace A192381

/-- `ogf(x/(1-2x-6x^2+2x^3+x^4))` -/
def P4808496097699157925.Spec : Prop :=
  ∀ n, P4808496097699157925.a n = A192381 (n + 1)

end A192381

/-! ## A192381.P8158394945412087484

`A192380(n+1)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A192381

/-- `A192380(n+1)/2` -/
def P8158394945412087484.Spec : Prop :=
  ∀ n, P8158394945412087484.a n = (A192381 (n + 1) : ℚ)

end A192381

/-! ## A192381.P15595630210647427550

`record[A192380(A291766(n))/2]`
-/

namespace A192381.P15595630210647427550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192380 (A291766 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192381.P15595630210647427550

namespace A192381

/-- `record[A192380(A291766(n))/2]` -/
def P15595630210647427550.Spec : Prop :=
  ∀ n, P15595630210647427550.a n = (A192381 (n + 1) : ℚ)

end A192381

/-! ## A192381.P10147734791868652525

`Δ[∑[A192380(A028310(n))]/2]`
-/

namespace A192381.P10147734791868652525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192380 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192381.P10147734791868652525

namespace A192381

/-- `Δ[∑[A192380(A028310(n))]/2]` -/
def P10147734791868652525.Spec : Prop :=
  ∀ n, P10147734791868652525.a n = (A192381 (n + 1) : ℚ)

end A192381

/-! ## A192381.P6783070267447394053

`record[A192380(A195663(n))/2]`
-/

namespace A192381.P6783070267447394053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192380 (A195663 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192381.P6783070267447394053

namespace A192381

/-- `record[A192380(A195663(n))/2]` -/
def P6783070267447394053.Spec : Prop :=
  ∀ n, P6783070267447394053.a n = (A192381 (n + 1) : ℚ)

end A192381

/-!
# A192382: Coefficient of x in the reduction by x^2 -> x+2 of the polynomial p(n,x) defined below in Comments.

The programs for A192382, the canonical program `A192382.P14106321096952905963` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192382 has offset 1).

The definition of A192382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192382.P14106321096952905963

`(4^n-(-2)^n)/3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192382

/-- `(4^n-(-2)^n)/3` -/
def P14106321096952905963.Spec : Prop :=
  ∀ n, P14106321096952905963.a n = (A192382 (n + 1) : ℚ)

end A192382

/-! ## A192382.P6996627572887563463

`ogf(2x/(1-2x-8x^2))`
-/

namespace A192382.P6996627572887563463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -8] n

end

end A192382.P6996627572887563463

namespace A192382

/-- `ogf(2x/(1-2x-8x^2))` -/
def P6996627572887563463.Spec : Prop :=
  ∀ n, P6996627572887563463.a n = A192382 (n + 1)

end A192382

/-! ## A192382.P2823048264627068482

`lcm(2^n, round(2^n/3))`
-/

namespace A192382.P2823048264627068482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3))

end

end A192382.P2823048264627068482

namespace A192382

/-- `lcm(2^n, round(2^n/3))` -/
def P2823048264627068482.Spec : Prop :=
  ∀ n, (P2823048264627068482.a n : ℤ) = A192382 (n + 1)

end A192382

/-! ## A192382.P9169655925565714826

`4*a(n-1)-(-2)^n` with `a(0)=0`
-/

namespace A192382.P9169655925565714826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) - (-2) ^ n

end

end A192382.P9169655925565714826

namespace A192382

/-- `4*a(n-1)-(-2)^n` -/
def P9169655925565714826.Spec : Prop :=
  ∀ n, P9169655925565714826.a n = A192382 (n + 1)

end A192382

/-! ## A192382.P15455582449813187495

`2*(a(n-1)+4*a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A192382.P15455582449813187495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (a (n - 1) + 4 * a (n - 2))

end

end A192382.P15455582449813187495

namespace A192382

/-- `2*(a(n-1)+4*a(n-2))` -/
def P15455582449813187495.Spec : Prop :=
  ∀ n, (P15455582449813187495.a n : ℤ) = A192382 (n + 1)

end A192382

/-! ## A192382.P14970116157522703544

`4^n/2-a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A192382.P14970116157522703544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℚ) / 2 - a (n - 1) - a (n - 1)

end

end A192382.P14970116157522703544

namespace A192382

/-- `4^n/2-a(n-1)-a(n-1)` -/
def P14970116157522703544.Spec : Prop :=
  ∀ n, P14970116157522703544.a n = (A192382 (n + 1) : ℚ)

end A192382

/-! ## A192382.P13722190443141825983

`2*A003683(n)`
-/

namespace A192382.P13722190443141825983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003683 n

end

end A192382.P13722190443141825983

namespace A192382

/-- `2*A003683(n)` -/
def P13722190443141825983.Spec : Prop :=
  ∀ n, P13722190443141825983.a n = A192382 (n + 1)

end A192382

/-! ## A192382.P4965228463195995171

`Δ[2*A084152(n)]`
-/

namespace A192382.P4965228463195995171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192382.P4965228463195995171

namespace A192382

/-- `Δ[2*A084152(n)]` -/
def P4965228463195995171.Spec : Prop :=
  ∀ n, P4965228463195995171.a n = A192382 (n + 1)

end A192382

/-! ## A192382.P6078773027599733275

`2/3*A003674(n)`
-/

namespace A192382.P6078773027599733275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A003674 n : ℚ)

end

end A192382.P6078773027599733275

namespace A192382

/-- `2/3*A003674(n)` -/
def P6078773027599733275.Spec : Prop :=
  ∀ n, P6078773027599733275.a n = (A192382 (n + 1) : ℚ)

end A192382

/-! ## A192382.P1455356274029596580

`2^n*A001045(n)`
-/

namespace A192382.P1455356274029596580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001045 n

end

end A192382.P1455356274029596580

namespace A192382

/-- `2^n*A001045(n)` -/
def P1455356274029596580.Spec : Prop :=
  ∀ n, P1455356274029596580.a n = A192382 (n + 1)

end A192382

/-! ## A192382.P8391841397120436993

`Δ[(A077925(n)/2)²]`
-/

namespace A192382.P8391841397120436993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A077925 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192382.P8391841397120436993

namespace A192382

/-- `Δ[(A077925(n)/2)²]` -/
def P8391841397120436993.Spec : Prop :=
  ∀ n, P8391841397120436993.a n = (A192382 (n + 1) : ℚ)

end A192382

/-! ## A192382.P1908770853933230137

`Δ[(A001045(n+1)/2)²]`
-/

namespace A192382.P1908770853933230137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001045 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192382.P1908770853933230137

namespace A192382

/-- `Δ[(A001045(n+1)/2)²]` -/
def P1908770853933230137.Spec : Prop :=
  ∀ n, P1908770853933230137.a n = (A192382 (n + 1) : ℚ)

end A192382

/-! ## A192382.P4962575991314759076

`Δ[(A152046(n+1)/2)²]`
-/

namespace A192382.P4962575991314759076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A152046 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192382.P4962575991314759076

namespace A192382

/-- `Δ[(A152046(n+1)/2)²]` -/
def P4962575991314759076.Spec : Prop :=
  ∀ n, P4962575991314759076.a n = (A192382 (n + 1) : ℚ)

end A192382

/-! ## A192382.P1594818755312404452

`Δ[(A167167(n+1)/2)²]`
-/

namespace A192382.P1594818755312404452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167167 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192382.P1594818755312404452

namespace A192382

/-- `Δ[(A167167(n+1)/2)²]` -/
def P1594818755312404452.Spec : Prop :=
  ∀ n, P1594818755312404452.a n = (A192382 (n + 1) : ℚ)

end A192382

/-! ## A192382.P3178020929274092794

`A139818(n)+A084175(n)`
-/

namespace A192382.P3178020929274092794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139818 n + A084175 n

end

end A192382.P3178020929274092794

namespace A192382

/-- `A139818(n)+A084175(n)` -/
def P3178020929274092794.Spec : Prop :=
  ∀ n, P3178020929274092794.a n = A192382 (n + 1)

end A192382

/-! ## A192382.P15862978605920412256

`A003674(n)-A003683(n)`
-/

namespace A192382.P15862978605920412256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003674 n - A003683 n

end

end A192382.P15862978605920412256

namespace A192382

/-- `A003674(n)-A003683(n)` -/
def P15862978605920412256.Spec : Prop :=
  ∀ n, P15862978605920412256.a n = A192382 (n + 1)

end A192382

/-! ## A192382.P17373095855560336168

`A083424(n)-A003665(n)`
-/

namespace A192382.P17373095855560336168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083424 n - A003665 n

end

end A192382.P17373095855560336168

namespace A192382

/-- `A083424(n)-A003665(n)` -/
def P17373095855560336168.Spec : Prop :=
  ∀ n, P17373095855560336168.a n = A192382 (n + 1)

end A192382

/-! ## A192382.P16065750743471137916

`A079319(n)-A052992(n)`
-/

namespace A192382.P16065750743471137916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079319 n - A052992 n

end

end A192382.P16065750743471137916

namespace A192382

/-- `A079319(n)-A052992(n)` -/
def P16065750743471137916.Spec : Prop :=
  ∀ n, P16065750743471137916.a n = A192382 (n + 1)

end A192382

/-! ## A192382.P8650978530451179159

`A081294(n)-A054881(n)`
-/

namespace A192382.P8650978530451179159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A054881 n

end

end A192382.P8650978530451179159

namespace A192382

/-- `A081294(n)-A054881(n)` -/
def P8650978530451179159.Spec : Prop :=
  ∀ n, P8650978530451179159.a n = A192382 (n + 1)

end A192382

/-! ## A192382.P201570235242505915

`A047849(n)-A151575(n)`
-/

namespace A192382.P201570235242505915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n - A151575 n

end

end A192382.P201570235242505915

namespace A192382

/-- `A047849(n)-A151575(n)` -/
def P201570235242505915.Spec : Prop :=
  ∀ n, P201570235242505915.a n = A192382 (n + 1)

end A192382

/-!
# A192383: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192383, the canonical program `A192383.P6604571066687179164` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192383 has offset 1).

The definition of A192383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192383.P6282249882194271477

`ogf((1-2x-2x^2)/(1-2x-8x^2+4x^3+4x^4))`
-/

namespace A192383.P6282249882194271477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -2, -8, 4, 4] n

end

end A192383.P6282249882194271477

namespace A192383

/-- `ogf((1-2x-2x^2)/(1-2x-8x^2+4x^3+4x^4))` -/
def P6282249882194271477.Spec : Prop :=
  ∀ n, P6282249882194271477.a n = A192383 (n + 1)

end A192383

/-! ## A192383.P6604571066687179164

`2*a(n-1)+8*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=6, a(3)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192383

/-- `2*a(n-1)+8*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P6604571066687179164.Spec : Prop :=
  ∀ n, P6604571066687179164.a n = A192383 (n + 1)

theorem P6604571066687179164.correct : P6604571066687179164.Spec := by
  intro n
  simp only [A192383, Nat.add_sub_cancel]

end A192383

/-! ## A192383.P1200632529630735412

`A192384(A028310(n))+A192348(n+1)`
-/

namespace A192383.P1200632529630735412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192384 (A028310 n).toNat + A192348 (n + 1)

end

end A192383.P1200632529630735412

namespace A192383

/-- `A192384(A028310(n))+A192348(n+1)` -/
def P1200632529630735412.Spec : Prop :=
  ∀ n, P1200632529630735412.a n = A192383 (n + 1)

end A192383

/-! ## A192383.P11277773229748251040

`A192384(A000007(n)+n)+A192348(n+1)`
-/

namespace A192383.P11277773229748251040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192384 (A000007 n + (n : ℤ)).toNat + A192348 (n + 1)

end

end A192383.P11277773229748251040

namespace A192383

/-- `A192384(A000007(n)+n)+A192348(n+1)` -/
def P11277773229748251040.Spec : Prop :=
  ∀ n, P11277773229748251040.a n = A192383 (n + 1)

end A192383

/-! ## A192383.P6942684937013750398

`Δ[A192384(n+1)]-A192349(n+2)`
-/

namespace A192383.P6942684937013750398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192349 (n + 2)

end

end A192383.P6942684937013750398

namespace A192383

/-- `Δ[A192384(n+1)]-A192349(n+2)` -/
def P6942684937013750398.Spec : Prop :=
  ∀ n, P6942684937013750398.a n = A192383 (n + 1)

end A192383

/-!
# A192384: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192384, the canonical program `A192384.P17180753424596094928` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192384 has offset 1).

The definition of A192384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192384.P9493453463484995589

`ogf(2x/(1-2x-8x^2+4x^3+4x^4))`
-/

namespace A192384.P9493453463484995589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -8, 4, 4] n

end

end A192384.P9493453463484995589

namespace A192384

/-- `ogf(2x/(1-2x-8x^2+4x^3+4x^4))` -/
def P9493453463484995589.Spec : Prop :=
  ∀ n, P9493453463484995589.a n = A192384 (n + 1)

end A192384

/-! ## A192384.P17180753424596094928

`2*a(n-1)+8*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=24`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192384

/-- `2*a(n-1)+8*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P17180753424596094928.Spec : Prop :=
  ∀ n, P17180753424596094928.a n = A192384 (n + 1)

theorem P17180753424596094928.correct : P17180753424596094928.Spec := by
  intro n
  simp only [A192384, Nat.add_sub_cancel]

end A192384

/-! ## A192384.P14000843757171337992

`2*A192385(n+1)`
-/

namespace A192384.P14000843757171337992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192385 (n + 1)

end

end A192384.P14000843757171337992

namespace A192384

/-- `2*A192385(n+1)` -/
def P14000843757171337992.Spec : Prop :=
  ∀ n, P14000843757171337992.a n = A192384 (n + 1)

end A192384

/-! ## A192384.P12941806463706302013

`record[2*A192385(A133310(n))]`
-/

namespace A192384.P12941806463706302013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192385 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192384.P12941806463706302013

namespace A192384

/-- `record[2*A192385(A133310(n))]` -/
def P12941806463706302013.Spec : Prop :=
  ∀ n, P12941806463706302013.a n = A192384 (n + 1)

end A192384

/-! ## A192384.P17222971734211917213

`A192385(ϕ²-(ϕ-n))+A192385(n+1)`
-/

namespace A192384.P17222971734211917213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192385 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat + A192385 (n + 1)

end

end A192384.P17222971734211917213

namespace A192384

/-- `A192385(ϕ²-(ϕ-n))+A192385(n+1)` -/
def P17222971734211917213.Spec : Prop :=
  ∀ n, P17222971734211917213.a n = A192384 (n + 1)

end A192384

/-! ## A192384.P12141505110838779586

`A192385(n+1)+record[A192385(A133310(n))]`
-/

namespace A192384.P12141505110838779586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192385 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192385 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192384.P12141505110838779586

namespace A192384

/-- `A192385(n+1)+record[A192385(A133310(n))]` -/
def P12141505110838779586.Spec : Prop :=
  ∀ n, P12141505110838779586.a n = A192384 (n + 1)

end A192384

/-! ## A192384.P9234289152675483608

`4*2^A008683(A151800(n))*A192385(ϕ²-(ϕ-n))`
-/

namespace A192384.P9234289152675483608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((2 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ) * (A192385 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ))

end

end A192384.P9234289152675483608

namespace A192384

/-- `4*2^A008683(A151800(n))*A192385(ϕ²-(ϕ-n))` -/
def P9234289152675483608.Spec : Prop :=
  ∀ n, P9234289152675483608.a n = (A192384 (n + 1) : ℚ)

end A192384

/-! ## A192384.P5042297932521301775

`A192385(n+1)+A192385(n+1)%A097166(n)`
-/

namespace A192384.P5042297932521301775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192385 (n + 1) + Int.tmod (A192385 (n + 1)) (A097166 n)

end

end A192384.P5042297932521301775

namespace A192384

/-- `A192385(n+1)+A192385(n+1)%A097166(n)` -/
def P5042297932521301775.Spec : Prop :=
  ∀ n, P5042297932521301775.a n = A192384 (n + 1)

end A192384

/-!
# A192385: a(n) = A192384(n)/2.

The programs for A192385, the canonical program `A192385.P8116842322229161488` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192385 has offset 1).

The definition of A192385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192385.P2749825992711266034

`ogf(x/(1-2x-8x^2+4x^3+4x^4))`
-/

namespace A192385.P2749825992711266034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -8, 4, 4] n

end

end A192385.P2749825992711266034

namespace A192385

/-- `ogf(x/(1-2x-8x^2+4x^3+4x^4))` -/
def P2749825992711266034.Spec : Prop :=
  ∀ n, P2749825992711266034.a n = A192385 (n + 1)

end A192385

/-! ## A192385.P8116842322229161488

`2*a(n-1)+8*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192385

/-- `2*a(n-1)+8*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P8116842322229161488.Spec : Prop :=
  ∀ n, P8116842322229161488.a n = A192385 (n + 1)

theorem P8116842322229161488.correct : P8116842322229161488.Spec := by
  intro n
  simp only [A192385, Nat.add_sub_cancel]

end A192385

/-! ## A192385.P10321964450906380339

`A192384(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192385.P10321964450906380339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192384 (n + 1) : ℚ) / 2

end

end A192385.P10321964450906380339

namespace A192385

/-- `A192384(n+1)/2` -/
def P10321964450906380339.Spec : Prop :=
  ∀ n, P10321964450906380339.a n = (A192385 (n + 1) : ℚ)

end A192385

/-! ## A192385.P4351790664275722602

`floor(A192384(Δ[n²]-n)/2)`
-/

namespace A192385.P4351790664275722602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192384 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A192385.P4351790664275722602

namespace A192385

/-- `floor(A192384(Δ[n²]-n)/2)` -/
def P4351790664275722602.Spec : Prop :=
  ∀ n, P4351790664275722602.a n = A192385 (n + 1)

end A192385

/-! ## A192385.P16513744321651078161

`record[A192384(A133310(n))/2]`
-/

namespace A192385.P16513744321651078161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192384 (A133310 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192385.P16513744321651078161

namespace A192385

/-- `record[A192384(A133310(n))/2]` -/
def P16513744321651078161.Spec : Prop :=
  ∀ n, P16513744321651078161.a n = (A192385 (n + 1) : ℚ)

end A192385

/-! ## A192385.P14264918685624786279

`Δ[∑[A192384(A028310(n))]/2]`
-/

namespace A192385.P14264918685624786279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192384 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192385.P14264918685624786279

namespace A192385

/-- `Δ[∑[A192384(A028310(n))]/2]` -/
def P14264918685624786279.Spec : Prop :=
  ∀ n, P14264918685624786279.a n = (A192385 (n + 1) : ℚ)

end A192385

/-! ## A192385.P16768711569753664713

`2^A008683(A007918(n))*A192384(n+1)`
-/

namespace A192385.P16768711569753664713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ) * (A192384 (n + 1) : ℚ)

end

end A192385.P16768711569753664713

namespace A192385

/-- `2^A008683(A007918(n))*A192384(n+1)` -/
def P16768711569753664713.Spec : Prop :=
  ∀ n, P16768711569753664713.a n = (A192385 (n + 1) : ℚ)

end A192385

/-!
# A192386: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192386, the canonical program `A192386.P5558424606328884974` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192386 has offset 1).

The definition of A192386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192386.P1498899117688782276

`ogf((1-2x-4x^2)/(1-2x-12x^2+8x^3+16x^4))`
-/

namespace A192386.P1498899117688782276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -4] [1, -2, -12, 8, 16] n

end

end A192386.P1498899117688782276

namespace A192386

/-- `ogf((1-2x-4x^2)/(1-2x-12x^2+8x^3+16x^4))` -/
def P1498899117688782276.Spec : Prop :=
  ∀ n, P1498899117688782276.a n = A192386 (n + 1)

end A192386

/-! ## A192386.P5558424606328884974

`2*a(n-1)+12*a(n-2)-8*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=0, a(2)=8, a(3)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192386

/-- `2*a(n-1)+12*a(n-2)-8*a(n-3)-16*a(n-4)` -/
def P5558424606328884974.Spec : Prop :=
  ∀ n, P5558424606328884974.a n = A192386 (n + 1)

theorem P5558424606328884974.correct : P5558424606328884974.Spec := by
  intro n
  simp only [A192386, Nat.add_sub_cancel]

end A192386

/-! ## A192386.P1483612803677597237

`2^n*A192232(n+1)`
-/

namespace A192386.P1483612803677597237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A192232 (n + 1)

end

end A192386.P1483612803677597237

namespace A192386

/-- `2^n*A192232(n+1)` -/
def P1483612803677597237.Spec : Prop :=
  ∀ n, P1483612803677597237.a n = A192386 (n + 1)

end A192386

/-! ## A192386.P7669306123232570762

`abs(A122803(n)*A192232(n+1))`
-/

namespace A192386.P7669306123232570762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122803 n * A192232 (n + 1)|

end

end A192386.P7669306123232570762

namespace A192386

/-- `abs(A122803(n)*A192232(n+1))` -/
def P7669306123232570762.Spec : Prop :=
  ∀ n, P7669306123232570762.a n = A192386 (n + 1)

end A192386

/-! ## A192386.P6615235675712961894

`abs(A171449(n)*A192232(n+1))`
-/

namespace A192386.P6615235675712961894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171449 n * A192232 (n + 1)|

end

end A192386.P6615235675712961894

namespace A192386

/-- `abs(A171449(n)*A192232(n+1))` -/
def P6615235675712961894.Spec : Prop :=
  ∀ n, P6615235675712961894.a n = A192386 (n + 1)

end A192386

/-! ## A192386.P6832918660390018212

`A192232(n+1)/A000045(n+1)*A063727(n)`
-/

namespace A192386.P6832918660390018212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192232 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A063727 n : ℚ)

end

end A192386.P6832918660390018212

namespace A192386

/-- `A192232(n+1)/A000045(n+1)*A063727(n)` -/
def P6832918660390018212.Spec : Prop :=
  ∀ n, P6832918660390018212.a n = (A192386 (n + 1) : ℚ)

end A192386

/-! ## A192386.P7414051271736740970

`A192232(n+1)/A000045(n+1)*A085449(n+1)`
-/

namespace A192386.P7414051271736740970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192232 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A085449 (n + 1) : ℚ)

end

end A192386.P7414051271736740970

namespace A192386

/-- `A192232(n+1)/A000045(n+1)*A085449(n+1)` -/
def P7414051271736740970.Spec : Prop :=
  ∀ n, P7414051271736740970.a n = (A192386 (n + 1) : ℚ)

end A192386

/-! ## A192386.P2591344306246532396

`A007283(n)*A192232(n+1)/3`
-/

namespace A192386.P2591344306246532396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 n * A192232 (n + 1) : ℚ) / 3

end

end A192386.P2591344306246532396

namespace A192386

/-- `A007283(n)*A192232(n+1)/3` -/
def P2591344306246532396.Spec : Prop :=
  ∀ n, P2591344306246532396.a n = (A192386 (n + 1) : ℚ)

end A192386

/-! ## A192386.P17272885199854245655

`A192232(n+1)/A112576(n+1)*A192388(n+2)`
-/

namespace A192386.P17272885199854245655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192232 (n + 1) : ℚ) / (A112576 (n + 1) : ℚ) * (A192388 (n + 2) : ℚ)

end

end A192386.P17272885199854245655

namespace A192386

/-- `A192232(n+1)/A112576(n+1)*A192388(n+2)` -/
def P17272885199854245655.Spec : Prop :=
  ∀ n, P17272885199854245655.a n = (A192386 (n + 1) : ℚ)

end A192386

/-! ## A192386.P4972965125529489166

`A085449(n+1)*A192232(n+1)/A000045(n+1)`
-/

namespace A192386.P4972965125529489166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085449 (n + 1) * A192232 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A192386.P4972965125529489166

namespace A192386

/-- `A085449(n+1)*A192232(n+1)/A000045(n+1)` -/
def P4972965125529489166.Spec : Prop :=
  ∀ n, P4972965125529489166.a n = (A192386 (n + 1) : ℚ)

end A192386

/-!
# A192387: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192387, the canonical program `A192387.P1350063408986691135` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192387 has offset 1).

The definition of A192387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192387.P13264646530372099865

`ogf(2x/(1-2x-12x^2+8x^3+16x^4))`
-/

namespace A192387.P13264646530372099865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -12, 8, 16] n

end

end A192387.P13264646530372099865

namespace A192387

/-- `ogf(2x/(1-2x-12x^2+8x^3+16x^4))` -/
def P13264646530372099865.Spec : Prop :=
  ∀ n, P13264646530372099865.a n = A192387 (n + 1)

end A192387

/-! ## A192387.P1350063408986691135

`2*a(n-1)+12*a(n-2)-8*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=32`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192387

/-- `2*a(n-1)+12*a(n-2)-8*a(n-3)-16*a(n-4)` -/
def P1350063408986691135.Spec : Prop :=
  ∀ n, P1350063408986691135.a n = A192387 (n + 1)

theorem P1350063408986691135.correct : P1350063408986691135.Spec := by
  intro n
  simp only [A192387, Nat.add_sub_cancel]

end A192387

/-! ## A192387.P18389345690924590091

`2^n*A112576(n)`
-/

namespace A192387.P18389345690924590091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A112576 n

end

end A192387.P18389345690924590091

namespace A192387

/-- `2^n*A112576(n)` -/
def P18389345690924590091.Spec : Prop :=
  ∀ n, P18389345690924590091.a n = A192387 (n + 1)

end A192387

/-! ## A192387.P7113646774152091107

`2*A192388(n+1)`
-/

namespace A192387.P7113646774152091107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192388 (n + 1)

end

end A192387.P7113646774152091107

namespace A192387

/-- `2*A192388(n+1)` -/
def P7113646774152091107.Spec : Prop :=
  ∀ n, P7113646774152091107.a n = A192387 (n + 1)

end A192387

/-! ## A192387.P4285564634905478373

`A112576(n)*A155559(n)`
-/

namespace A192387.P4285564634905478373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n * A155559 n

end

end A192387.P4285564634905478373

namespace A192387

/-- `A112576(n)*A155559(n)` -/
def P4285564634905478373.Spec : Prop :=
  ∀ n, P4285564634905478373.a n = A192387 (n + 1)

end A192387

/-! ## A192387.P16233143740914029788

`A112576(n)*A171449(n)`
-/

namespace A192387.P16233143740914029788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n * A171449 n

end

end A192387.P16233143740914029788

namespace A192387

/-- `A112576(n)*A171449(n)` -/
def P16233143740914029788.Spec : Prop :=
  ∀ n, P16233143740914029788.a n = A192387 (n + 1)

end A192387

/-! ## A192387.P13092700474273466784

`A112576(n)*A171559(n)`
-/

namespace A192387.P13092700474273466784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n * A171559 n

end

end A192387.P13092700474273466784

namespace A192387

/-- `A112576(n)*A171559(n)` -/
def P13092700474273466784.Spec : Prop :=
  ∀ n, P13092700474273466784.a n = A192387 (n + 1)

end A192387

/-! ## A192387.P15047996003400987669

`A112576(n)*A131577(n+1)`
-/

namespace A192387.P15047996003400987669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n * A131577 (n + 1)

end

end A192387.P15047996003400987669

namespace A192387

/-- `A112576(n)*A131577(n+1)` -/
def P15047996003400987669.Spec : Prop :=
  ∀ n, P15047996003400987669.a n = A192387 (n + 1)

end A192387

/-! ## A192387.P7572026357179843358

`2*A011782(n)*A112576(n)`
-/

namespace A192387.P7572026357179843358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n * A112576 n)

end

end A192387.P7572026357179843358

namespace A192387

/-- `2*A011782(n)*A112576(n)` -/
def P7572026357179843358.Spec : Prop :=
  ∀ n, P7572026357179843358.a n = A192387 (n + 1)

end A192387

/-! ## A192387.P10226805686048016179

`2*A112576(n)*A131577(n)`
-/

namespace A192387.P10226805686048016179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A112576 n * A131577 n)

end

end A192387.P10226805686048016179

namespace A192387

/-- `2*A112576(n)*A131577(n)` -/
def P10226805686048016179.Spec : Prop :=
  ∀ n, P10226805686048016179.a n = A192387 (n + 1)

end A192387

/-!
# A192388: a(n) = A192387(n)/2.

The programs for A192388, the canonical program `A192388.P17256718852055417048` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192388 has offset 1).

The definition of A192388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192388.P7083679616375320570

`ogf(x/(1-2x-12x^2+8x^3+16x^4))`
-/

namespace A192388.P7083679616375320570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -12, 8, 16] n

end

end A192388.P7083679616375320570

namespace A192388

/-- `ogf(x/(1-2x-12x^2+8x^3+16x^4))` -/
def P7083679616375320570.Spec : Prop :=
  ∀ n, P7083679616375320570.a n = A192388 (n + 1)

end A192388

/-! ## A192388.P17256718852055417048

`2*a(n-1)+12*a(n-2)-8*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192388

/-- `2*a(n-1)+12*a(n-2)-8*a(n-3)-16*a(n-4)` -/
def P17256718852055417048.Spec : Prop :=
  ∀ n, P17256718852055417048.a n = A192388 (n + 1)

theorem P17256718852055417048.correct : P17256718852055417048.Spec := by
  intro n
  simp only [A192388, Nat.add_sub_cancel]

end A192388

/-! ## A192388.P3789693893212701993

`A192387(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192388.P3789693893212701993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192387 (n + 1) : ℚ) / 2

end

end A192388.P3789693893212701993

namespace A192388

/-- `A192387(n+1)/2` -/
def P3789693893212701993.Spec : Prop :=
  ∀ n, P3789693893212701993.a n = (A192388 (n + 1) : ℚ)

end A192388

/-! ## A192388.P14090718165126359808

`2^(n-1)*A112576(n)`
-/

namespace A192388.P14090718165126359808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A112576 n : ℚ)

end

end A192388.P14090718165126359808

namespace A192388

/-- `2^(n-1)*A112576(n)` -/
def P14090718165126359808.Spec : Prop :=
  ∀ n, P14090718165126359808.a n = (A192388 (n + 1) : ℚ)

end A192388

/-! ## A192388.P11140574837577041968

`A112576(n)*A131577(n)`
-/

namespace A192388.P11140574837577041968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n * A131577 n

end

end A192388.P11140574837577041968

namespace A192388

/-- `A112576(n)*A131577(n)` -/
def P11140574837577041968.Spec : Prop :=
  ∀ n, P11140574837577041968.a n = A192388 (n + 1)

end A192388

/-! ## A192388.P10944082268429169001

`A112576(n)/2*A155559(n)`
-/

namespace A192388.P10944082268429169001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112576 n : ℚ) / 2 * (A155559 n : ℚ)

end

end A192388.P10944082268429169001

namespace A192388

/-- `A112576(n)/2*A155559(n)` -/
def P10944082268429169001.Spec : Prop :=
  ∀ n, P10944082268429169001.a n = (A192388 (n + 1) : ℚ)

end A192388

/-! ## A192388.P6880078046057752519

`A112576(n)/2*A171449(n)`
-/

namespace A192388.P6880078046057752519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112576 n : ℚ) / 2 * (A171449 n : ℚ)

end

end A192388.P6880078046057752519

namespace A192388

/-- `A112576(n)/2*A171449(n)` -/
def P6880078046057752519.Spec : Prop :=
  ∀ n, P6880078046057752519.a n = (A192388 (n + 1) : ℚ)

end A192388

/-! ## A192388.P8324170650429830789

`A112576(n)/2*A171559(n)`
-/

namespace A192388.P8324170650429830789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112576 n : ℚ) / 2 * (A171559 n : ℚ)

end

end A192388.P8324170650429830789

namespace A192388

/-- `A112576(n)/2*A171559(n)` -/
def P8324170650429830789.Spec : Prop :=
  ∀ n, P8324170650429830789.a n = (A192388 (n + 1) : ℚ)

end A192388

/-!
# A192389: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192389, the canonical program `A192389.P359561817811140446` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192389 has offset 0).

The definition of A192389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192389.P13609977764747379759

`ogf((x-x^2+2x^3)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A192389.P13609977764747379759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 2] [1, -4, 5, -1, -2, 1] n

end

end A192389.P13609977764747379759

namespace A192389

/-- `ogf((x-x^2+2x^3)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P13609977764747379759.Spec : Prop :=
  ∀ n, P13609977764747379759.a n = A192389 n

end A192389

/-! ## A192389.P9701257846728262873

`3*A000045(n+4)-n*(n+4)-9`
-/

namespace A192389.P9701257846728262873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (n + 4) - (n * (n + 4) : ℤ) - 9

end

end A192389.P9701257846728262873

namespace A192389

/-- `3*A000045(n+4)-n*(n+4)-9` -/
def P9701257846728262873.Spec : Prop :=
  ∀ n, P9701257846728262873.a n = A192389 n

end A192389

/-! ## A192389.P359561817811140446

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9, a(4)=22`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192389

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P359561817811140446.Spec : Prop :=
  ∀ n, P359561817811140446.a n = A192389 n

theorem P359561817811140446.correct : P359561817811140446.Spec := by
  intro n
  simp only [A192389]

end A192389

/-! ## A192389.P2299502355532730227

`∑[ogf((x-x^2+2x^3)/(1-3x+2x^2+x^3-x^4))]`
-/

namespace A192389.P2299502355532730227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 2] [1, -3, 2, 1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192389.P2299502355532730227

namespace A192389

/-- `∑[ogf((x-x^2+2x^3)/(1-3x+2x^2+x^3-x^4))]` -/
def P2299502355532730227.Spec : Prop :=
  ∀ n, P2299502355532730227.a n = A192389 n

end A192389

/-! ## A192389.P5792553682689383084

`∑[∑[a(n-1)+a(n-2)+2]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A192389.P5792553682689383084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192389.P5792553682689383084

namespace A192389

/-- `∑[∑[a(n-1)+a(n-2)+2]]` -/
def P5792553682689383084.Spec : Prop :=
  ∀ n, (P5792553682689383084.a n : ℤ) = A192389 n

end A192389

/-! ## A192389.P1934098923208434462

`(1-n)²+a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A192389.P1934098923208434462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (a (n - 1) + a (n - 2)) + 1

end

end A192389.P1934098923208434462

namespace A192389

/-- `(1-n)²+a(n-1)+a(n-2)+1` -/
def P1934098923208434462.Spec : Prop :=
  ∀ n, P1934098923208434462.a n = A192389 n

end A192389

/-! ## A192389.P4384978881270696865

`a(n-1)+a(n-2)+n*(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A192389.P4384978881270696865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (n : ℤ) * ((n : ℤ) - 2)) + 2

end

end A192389.P4384978881270696865

namespace A192389

/-- `a(n-1)+a(n-2)+n*(n-2)+2` -/
def P4384978881270696865.Spec : Prop :=
  ∀ n, P4384978881270696865.a n = A192389 n

end A192389

/-! ## A192389.P8811973332193069221

`∑[A192953(n)]`
-/

namespace A192389.P8811973332193069221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192389.P8811973332193069221

namespace A192389

/-- `∑[A192953(n)]` -/
def P8811973332193069221.Spec : Prop :=
  ∀ n, P8811973332193069221.a n = A192389 n

end A192389

/-! ## A192389.P17957448372994771151

`∑[A131300(n)-1]`
-/

namespace A192389.P17957448372994771151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131300 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192389.P17957448372994771151

namespace A192389

/-- `∑[A131300(n)-1]` -/
def P17957448372994771151.Spec : Prop :=
  ∀ n, P17957448372994771151.a n = A192389 n

end A192389

/-! ## A192389.P194525018645254859

`∑[A192967(n+1)-n]`
-/

namespace A192389.P194525018645254859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192389.P194525018645254859

namespace A192389

/-- `∑[A192967(n+1)-n]` -/
def P194525018645254859.Spec : Prop :=
  ∀ n, P194525018645254859.a n = A192389 n

end A192389

/-! ## A192389.P1452516644049676705

`∑[∑[A022086(n)]-2*n]`
-/

namespace A192389.P1452516644049676705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192389.P1452516644049676705

namespace A192389

/-- `∑[∑[A022086(n)]-2*n]` -/
def P1452516644049676705.Spec : Prop :=
  ∀ n, P1452516644049676705.a n = A192389 n

end A192389

/-! ## A192389.P813080821592123513

`∑[A111314(n+1)]-(n+1)²`
-/

namespace A192389.P813080821592123513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A192389.P813080821592123513

namespace A192389

/-- `∑[A111314(n+1)]-(n+1)²` -/
def P813080821592123513.Spec : Prop :=
  ∀ n, P813080821592123513.a n = A192389 n

end A192389

/-! ## A192389.P13739049435072998223

`∑[∑[3*A000045(n)]-2*n]`
-/

namespace A192389.P13739049435072998223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192389.P13739049435072998223

namespace A192389

/-- `∑[∑[3*A000045(n)]-2*n]` -/
def P13739049435072998223.Spec : Prop :=
  ∀ n, P13739049435072998223.a n = A192389 n

end A192389

/-! ## A192389.P1281547908147190427

`A192749(n)+A014283(n)`
-/

namespace A192389.P1281547908147190427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 n + A014283 n

end

end A192389.P1281547908147190427

namespace A192389

/-- `A192749(n)+A014283(n)` -/
def P1281547908147190427.Spec : Prop :=
  ∀ n, P1281547908147190427.a n = A192389 n

end A192389

/-! ## A192389.P8397051411396478803

`A192955(n)+A000071(n+1)`
-/

namespace A192389.P8397051411396478803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192955 n + A000071 (n + 1)

end

end A192389.P8397051411396478803

namespace A192389

/-- `A192955(n)+A000071(n+1)` -/
def P8397051411396478803.Spec : Prop :=
  ∀ n, P8397051411396478803.a n = A192389 n

end A192389

/-! ## A192389.P6570024496925872654

`A192957(n)+A019274(n+1)`
-/

namespace A192389.P6570024496925872654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 n + A019274 (n + 1)

end

end A192389.P6570024496925872654

namespace A192389

/-- `A192957(n)+A019274(n+1)` -/
def P6570024496925872654.Spec : Prop :=
  ∀ n, P6570024496925872654.a n = A192389 n

end A192389

/-! ## A192389.P159509270407516393

`A163250(n)+A000071(n+2)`
-/

namespace A192389.P159509270407516393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 n + A000071 (n + 2)

end

end A192389.P159509270407516393

namespace A192389

/-- `A163250(n)+A000071(n+2)` -/
def P159509270407516393.Spec : Prop :=
  ∀ n, P159509270407516393.a n = A192389 n

end A192389

/-! ## A192389.P10718056886171013

`A192961(n)-A000071(n+1)`
-/

namespace A192389.P10718056886171013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192961 n - A000071 (n + 1)

end

end A192389.P10718056886171013

namespace A192389

/-- `A192961(n)-A000071(n+1)` -/
def P10718056886171013.Spec : Prop :=
  ∀ n, P10718056886171013.a n = A192389 n

end A192389

/-! ## A192389.P16491908603204246179

`A192957(n+1)-A192981(n)`
-/

namespace A192389.P16491908603204246179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 (n + 1) - A192981 n

end

end A192389.P16491908603204246179

namespace A192389

/-- `A192957(n+1)-A192981(n)` -/
def P16491908603204246179.Spec : Prop :=
  ∀ n, P16491908603204246179.a n = A192389 n

end A192389

/-! ## A192389.P6877669359892636114

`∑[∑[A111314(n)]-A111314(n)]`
-/

namespace A192389.P6877669359892636114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A111314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192389.P6877669359892636114

namespace A192389

/-- `∑[∑[A111314(n)]-A111314(n)]` -/
def P6877669359892636114.Spec : Prop :=
  ∀ n, P6877669359892636114.a n = A192389 n

end A192389

/-!
# A192392: Largest multiple of n which can be formed as concatenation of the next n numbers, {1+n(n-1)/2,...,n(n+1)/2} (written in decimal), or 0 if no such number exists.

The programs for A192392, there is no canonical definition to state claims against.
-/

/-! ## A192392.P10094247600645906790

`(n+1)*A193380(n+1)`
-/

namespace A192392.P10094247600645906790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A193380 (n + 1)

end

end A192392.P10094247600645906790

/-! ## A192392.P630581716954123126

`A193380(n+1)*A291769(n)`
-/

namespace A192392.P630581716954123126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193380 (n + 1) * A291769 n

end

end A192392.P630581716954123126

/-! ## A192392.P10958934442119488865

`A193380(n+1)*A348553(n)`
-/

namespace A192392.P10958934442119488865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193380 (n + 1) * A348553 n

end

end A192392.P10958934442119488865

/-! ## A192392.P5337821378643682800

`A076069(n+1)-A076069(n+1)%A193380(n+1)`
-/

namespace A192392.P5337821378643682800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076069 (n + 1) - Int.tmod (A076069 (n + 1)) (A193380 (n + 1))

end

end A192392.P5337821378643682800

/-!
# A192393: Number of primes in the half-open interval [semiprime(n)-sqrt(semiprime(n)), semiprime(n)).

The programs for A192393, there is no canonical definition to state claims against.
-/

/-! ## A192393.P13455421219741020795

`A189024(floor(A001358(n+1)+acot(n)))`
-/

namespace A192393.P13455421219741020795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 ⌊(A001358 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A192393.P13455421219741020795

/-! ## A192393.P16507095697084819006

`A189024(A001358((n+1)*a(2%n)))` with `a(0)=2`
-/

namespace A192393.P16507095697084819006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A189024 (A001358 ((n + 1 : ℤ) * a (2 % n)).toNat).toNat

end

end A192393.P16507095697084819006

/-! ## A192393.P15842633245103641501

`A189024(A001358(n+1)+A000007(n))`
-/

namespace A192393.P15842633245103641501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (A001358 (n + 1) + A000007 n).toNat

end

end A192393.P15842633245103641501

/-! ## A192393.P10517606357170097314

`A189024(A015689(n)+A001358(n+1))`
-/

namespace A192393.P10517606357170097314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (A015689 n + A001358 (n + 1)).toNat

end

end A192393.P10517606357170097314

/-! ## A192393.P753810331367157768

`A189024(A088707(n+1)-A054977(n))`
-/

namespace A192393.P753810331367157768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (A088707 (n + 1) - A054977 n).toNat

end

end A192393.P753810331367157768

/-! ## A192393.P13875671623861669249

`A054977(n)*A189024(A001358(n+1))`
-/

namespace A192393.P13875671623861669249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A189024 (A001358 (n + 1)).toNat

end

end A192393.P13875671623861669249

/-! ## A192393.P15698902518357504737

`A189024(A054977(n)+eq[2, A001222(n+1)])`
-/

namespace A192393.P15698902518357504737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (A054977 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A192393.P15698902518357504737

/-! ## A192393.P5646605661426600667

`A189024(A001358(n+1))+A008683((n+1)²)`
-/

namespace A192393.P5646605661426600667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (A001358 (n + 1)).toNat + A008683 ((n + 1) ^ 2)

end

end A192393.P5646605661426600667

/-! ## A192393.P16916034423272400939

`A189024(eq[2, A001222(n+1)]+1)+A000007(n)`
-/

namespace A192393.P16916034423272400939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + A000007 n

end

end A192393.P16916034423272400939

/-! ## A192393.P922857396389902630

`A189024(A015689(n)+eq[2, A001222(n+1)]+1)`
-/

namespace A192393.P922857396389902630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (A015689 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)).toNat

end

end A192393.P922857396389902630

/-!
# A192394: Number of semiprimes in the range (prime(n), prime(n)+sqrt(prime(n))).

The programs for A192394, there is no canonical definition to state claims against.
-/

/-! ## A192394.P1463406803466854550

`A114021(p?[comp[n²]])`
-/

namespace A192394.P1463406803466854550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A192394.P1463406803466854550

/-! ## A192394.P8320431245624746888

`A114021(A000040(n+1))`
-/

namespace A192394.P8320431245624746888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (A000040 (n + 1)).toNat

end

end A192394.P8320431245624746888

/-! ## A192394.P16278166809149053085

`A114021(A006005(n+1))`
-/

namespace A192394.P16278166809149053085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (A006005 (n + 1)).toNat

end

end A192394.P16278166809149053085

/-! ## A192394.P11312776497684594938

`A114021(A063884(n+1))`
-/

namespace A192394.P11312776497684594938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (A063884 (n + 1)).toNat

end

end A192394.P11312776497684594938

/-! ## A192394.P16935651452917257020

`A114021(A063904(n+1))`
-/

namespace A192394.P16935651452917257020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (A063904 (n + 1)).toNat

end

end A192394.P16935651452917257020

/-! ## A192394.P7620370967784915367

`A114021(A008578(n+2))`
-/

namespace A192394.P7620370967784915367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (A008578 (n + 2)).toNat

end

end A192394.P7620370967784915367

/-! ## A192394.P13083827895928902011

`A114021(A075643(n+2))`
-/

namespace A192394.P13083827895928902011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (A075643 (n + 2)).toNat

end

end A192394.P13083827895928902011

/-! ## A192394.P10388552122326615126

`A114021(A182986(n+2))`
-/

namespace A192394.P10388552122326615126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (A182986 (n + 2)).toNat

end

end A192394.P10388552122326615126

/-! ## A192394.P12000340890116415064

`A114021(A100484(n+1)/2)`
-/

namespace A192394.P12000340890116415064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A192394.P12000340890116415064

/-! ## A192394.P11830752021447905341

`A114021(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A192394.P11830752021447905341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A192394.P11830752021447905341

/-! ## A192394.P5763272683241236641

`A114021(A383578(n+1))`
-/

namespace A192394.P5763272683241236641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (A383578 (n + 1)).toNat

end

end A192394.P5763272683241236641

/-!
# A192395: a(n) = 2*a(n-1) - 2*a(n-2) + a(n-3) + 2*a(n-4) starting with a(0..3) = 0, 0, 0, 1.

The programs for A192395, the canonical program `A192395.P7537648181635143016` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192395 has offset 0).

The definition of A192395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-2*a(n-2)+a(n-3)+2*a(n-4)` (program `A192395.P7537648181635143016`, by `A192395.P7537648181635143016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192395.P5166553548794923624

`ogf(x^3/(1-2x+2x^2-x^3-2x^4))`
-/

namespace A192395.P5166553548794923624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -2, 2, -1, -2] n

end

end A192395.P5166553548794923624

namespace A192395

/-- `ogf(x^3/(1-2x+2x^2-x^3-2x^4))` -/
def P5166553548794923624.Spec : Prop :=
  ∀ n, P5166553548794923624.a n = A192395 n

end A192395

/-! ## A192395.P7537648181635143016

`2*a(n-1)-2*a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192395

/-- `2*a(n-1)-2*a(n-2)+a(n-3)+2*a(n-4)` -/
def P7537648181635143016.Spec : Prop :=
  ∀ n, P7537648181635143016.a n = A192395 n

theorem P7537648181635143016.correct : P7537648181635143016.Spec := by
  intro n
  simp only [A192395]

end A192395

/-! ## A192395.P2296905458501384561

`(A000045(n)-A107920(n))/3`
-/

namespace A192395.P2296905458501384561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n - A107920 n : ℚ) / 3

end

end A192395.P2296905458501384561

namespace A192395

/-- `(A000045(n)-A107920(n))/3` -/
def P2296905458501384561.Spec : Prop :=
  ∀ n, P2296905458501384561.a n = (A192395 n : ℚ)

end A192395

/-! ## A192395.P4795721046369556540

`floor((A001611(n)-A107920(n))/3)`
-/

namespace A192395.P4795721046369556540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n - A107920 n : ℚ) / 3⌋

end

end A192395.P4795721046369556540

namespace A192395

/-- `floor((A001611(n)-A107920(n))/3)` -/
def P4795721046369556540.Spec : Prop :=
  ∀ n, P4795721046369556540.a n = A192395 n

end A192395

/-! ## A192395.P17443278287201851507

`(A000045(n)+Δ[A105578(n)])/3`
-/

namespace A192395.P17443278287201851507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n + (f1 (n + 1) - f1 n) : ℚ) / 3

end

end A192395.P17443278287201851507

namespace A192395

/-- `(A000045(n)+Δ[A105578(n)])/3` -/
def P17443278287201851507.Spec : Prop :=
  ∀ n, P17443278287201851507.a n = (A192395 n : ℚ)

end A192395

/-! ## A192395.P10350606340857326659

`(A053602(2*n)-A107920(n))/3`
-/

namespace A192395.P10350606340857326659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053602 (2 * n) - A107920 n : ℚ) / 3

end

end A192395.P10350606340857326659

namespace A192395

/-- `(A053602(2*n)-A107920(n))/3` -/
def P10350606340857326659.Spec : Prop :=
  ∀ n, P10350606340857326659.a n = (A192395 n : ℚ)

end A192395

/-!
# A192396: Square array T(n, k) = floor(((k+1)^n - (1+(-1)^k)/2)/2) read by antidiagonals.

The programs for A192396, the canonical program `A192396.P1088233538859856169` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192396 has offset 0).

The definition of A192396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(((col(n)+1)^(row(n)-col(n))-(1+(-1)^col(n))/2)/2)` (program `A192396.P1088233538859856169`, by `A192396.P1088233538859856169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192396.P1088233538859856169

`floor(((col(n)+1)^(row(n)-col(n))-(1+(-1)^col(n))/2)/2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192396

/-- `floor(((col(n)+1)^(row(n)-col(n))-(1+(-1)^col(n))/2)/2)` -/
def P1088233538859856169.Spec : Prop :=
  ∀ n, P1088233538859856169.a n = A192396 n

theorem P1088233538859856169.correct : P1088233538859856169.Spec := by
  intro n
  simp only [A192396]

end A192396

/-! ## A192396.P15425189205422478363

`floor(A009998(n)/2)`
-/

namespace A192396.P15425189205422478363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009998 n : ℚ) / 2⌋

end

end A192396.P15425189205422478363

namespace A192396

/-- `floor(A009998(n)/2)` -/
def P15425189205422478363.Spec : Prop :=
  ∀ n, P15425189205422478363.a n = A192396 n

end A192396

/-! ## A192396.P6176240169717280727

`floor(A004248(comp[∑[n]])/2)`
-/

namespace A192396.P6176240169717280727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004248 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌋

end

end A192396.P6176240169717280727

namespace A192396

/-- `floor(A004248(comp[∑[n]])/2)` -/
def P6176240169717280727.Spec : Prop :=
  ∀ n, P6176240169717280727.a n = A192396 n

end A192396

/-! ## A192396.P14099933760379557981

`A009998(n)-A191687(n)`
-/

namespace A192396.P14099933760379557981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n - A191687 n

end

end A192396.P14099933760379557981

namespace A192396

/-- `A009998(n)-A191687(n)` -/
def P14099933760379557981.Spec : Prop :=
  ∀ n, P14099933760379557981.a n = A192396 n

end A192396

/-! ## A192396.P1957932064430413394

`A191687(n)-A070909(n)`
-/

namespace A192396.P1957932064430413394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191687 n - A070909 n

end

end A192396.P1957932064430413394

namespace A192396

/-- `A191687(n)-A070909(n)` -/
def P1957932064430413394.Spec : Prop :=
  ∀ n, P1957932064430413394.a n = A192396 n

end A192396

/-! ## A192396.P14287016263848009983

`floor(A154372(n)/A028326(n))`
-/

namespace A192396.P14287016263848009983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154372 n : ℚ) / (A028326 n : ℚ)⌋

end

end A192396.P14287016263848009983

namespace A192396

/-- `floor(A154372(n)/A028326(n))` -/
def P14287016263848009983.Spec : Prop :=
  ∀ n, P14287016263848009983.a n = A192396 n

end A192396

/-! ## A192396.P11303327739141839739

`floor(A154372(n)/(2*A007318(n)))`
-/

namespace A192396.P11303327739141839739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154372 n : ℚ) / (2 * A007318 n : ℚ)⌋

end

end A192396.P11303327739141839739

namespace A192396

/-- `floor(A154372(n)/(2*A007318(n)))` -/
def P11303327739141839739.Spec : Prop :=
  ∀ n, P11303327739141839739.a n = A192396 n

end A192396

/-! ## A192396.P12409443831598857305

`and(-2, A009998(n))/A000040((-1)^(2*n))`
-/

namespace A192396.P12409443831598857305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A009998 n) : ℚ) / (A000040 ((-1) ^ (2 * n)).toNat : ℚ)

end

end A192396.P12409443831598857305

namespace A192396

/-- `and(-2, A009998(n))/A000040((-1)^(2*n))` -/
def P12409443831598857305.Spec : Prop :=
  ∀ n, P12409443831598857305.a n = (A192396 n : ℚ)

end A192396

/-! ## A192396.P5399182481165881310

`and(-2, A009998(n))/A006530(A001316(n))`
-/

namespace A192396.P5399182481165881310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A009998 n) : ℚ) / (A006530 (A001316 n).toNat : ℚ)

end

end A192396.P5399182481165881310

namespace A192396

/-- `and(-2, A009998(n))/A006530(A001316(n))` -/
def P5399182481165881310.Spec : Prop :=
  ∀ n, P5399182481165881310.a n = (A192396 n : ℚ)

end A192396

/-! ## A192396.P1005556826340828090

`and(-2, A009998(n))/A001222(2*A000040(n+1))`
-/

namespace A192396.P1005556826340828090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A009998 n) : ℚ) / (A001222 (2 * A000040 (n + 1)).toNat : ℚ)

end

end A192396.P1005556826340828090

namespace A192396

/-- `and(-2, A009998(n))/A001222(2*A000040(n+1))` -/
def P1005556826340828090.Spec : Prop :=
  ∀ n, P1005556826340828090.a n = (A192396 n : ℚ)

end A192396

/-! ## A192396.P889628125176523489

`and(-2, A009998(n))/A020639(∑[2*(n+1)])`
-/

namespace A192396.P889628125176523489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A009998 n) : ℚ) / (A020639 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A192396.P889628125176523489

namespace A192396

/-- `and(-2, A009998(n))/A020639(∑[2*(n+1)])` -/
def P889628125176523489.Spec : Prop :=
  ∀ n, P889628125176523489.a n = (A192396 n : ℚ)

end A192396

/-!
# A192397: Record holders for greatest prime factor of n^n + (n+1)^(n+1).

The programs for A192397, there is no canonical definition to state claims against.
-/

/-! ## A192397.P16156169181728513245

`record[A056790(n)]`
-/

namespace A192397.P16156169181728513245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192397.P16156169181728513245

/-! ## A192397.P15884755228510528902

`A056790(comp[2*(n+2)]%A056779(2*n+1))`
-/

namespace A192397.P15884755228510528902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056790 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A056779 (2 * n + 1))).toNat

end

end A192397.P15884755228510528902

/-! ## A192397.P9971273207182851414

`A056790(A004274(n)^A245501(n))`
-/

namespace A192397.P9971273207182851414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056790 (SequenceMachineLib.roundAway ((A004274 n : ℚ) ^ (A245501 n : ℤ))).toNat

end

end A192397.P9971273207182851414

/-! ## A192397.P16554910411404689788

`A056790(A004274(n)^A247026(n))`
-/

namespace A192397.P16554910411404689788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056790 (SequenceMachineLib.roundAway ((A004274 n : ℚ) ^ (A247026 n : ℤ))).toNat

end

end A192397.P16554910411404689788

/-!
# A192398: a(n) = n^4 + 3*n^3 - 3*n.

The programs for A192398, the canonical program `A192398.P6980991501491217048` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192398 has offset 1).

The definition of A192398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4+3*(n+1)^3-3*(n+1)` (program `A192398.P6980991501491217048`, by `A192398.P6980991501491217048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192398.P8493319173790426754

`ogf((1+29x-7x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A192398.P8493319173790426754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 29, -7, 1] [1, -5, 10, -10, 5, -1] n

end

end A192398.P8493319173790426754

namespace A192398

/-- `ogf((1+29x-7x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P8493319173790426754.Spec : Prop :=
  ∀ n, P8493319173790426754.a n = A192398 (n + 1)

end A192398

/-! ## A192398.P1177989360473182798

`(n+1)*((n+1)^3+3*(n+1)²-3)`
-/

namespace A192398.P1177989360473182798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n + 1) ^ 3 + 3 * (n + 1) ^ 2 : ℤ) - 3)

end

end A192398.P1177989360473182798

namespace A192398

/-- `(n+1)*((n+1)^3+3*(n+1)²-3)` -/
def P1177989360473182798.Spec : Prop :=
  ∀ n, P1177989360473182798.a n = A192398 (n + 1)

theorem P1177989360473182798.correct : P1177989360473182798.Spec := by
  intro n
  simp only [A192398, Nat.add_sub_cancel, A192398.P1177989360473182798.a, A192398.P6980991501491217048.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192398

/-! ## A192398.P6980991501491217048

`(n+1)^4+3*(n+1)^3-3*(n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A192398

/-- `(n+1)^4+3*(n+1)^3-3*(n+1)` -/
def P6980991501491217048.Spec : Prop :=
  ∀ n, P6980991501491217048.a n = A192398 (n + 1)

theorem P6980991501491217048.correct : P6980991501491217048.Spec := by
  intro n
  simp only [A192398, Nat.add_sub_cancel]

end A192398

/-! ## A192398.P7824314683486318885

`A348482(A052905(n+1))`
-/

namespace A192398.P7824314683486318885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348482 (A052905 (n + 1)).toNat

end

end A192398.P7824314683486318885

namespace A192398

/-- `A348482(A052905(n+1))` -/
def P7824314683486318885.Spec : Prop :=
  ∀ n, P7824314683486318885.a n = A192398 (n + 1)

end A192398

/-! ## A192398.P16437416480011181781

`A220114(A047927(n+3))`
-/

namespace A192398.P16437416480011181781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220114 (A047927 (n + 3)).toNat

end

end A192398.P16437416480011181781

namespace A192398

/-- `A220114(A047927(n+3))` -/
def P16437416480011181781.Spec : Prop :=
  ∀ n, P16437416480011181781.a n = A192398 (n + 1)

end A192398

/-!
# A192399: G.f. A(x) satisfies: A(x) = 1 + Sum_{n>=1} x^n * A(x)^n/(1 - x*A(x)^(2*n)).

The programs for A192399, there is no canonical definition to state claims against.
-/

/-! ## A192399.P4972720980182410419

`A218980(A039671(n))`
-/

namespace A192399.P4972720980182410419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (A039671 n).toNat

end

end A192399.P4972720980182410419

/-! ## A192399.P5857893928239779890

`A362741(n)+A291760(A288684(3*n+2))`
-/

namespace A192399.P5857893928239779890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362741 n + A291760 (A288684 (3 * n + 2)).toNat

end

end A192399.P5857893928239779890

