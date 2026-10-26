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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B007.C000
import Seq.B008.C000
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
# A197600: Floor((11n+1/n)^n).

The programs for A197600, there is no canonical definition to state claims against.
-/

/-! ## A197600.P14586457966209976917

`A197771(n+1)-n²%(n+1)`
-/

namespace A197600.P14586457966209976917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197771 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197600.P14586457966209976917

/-! ## A197600.P12719734472574753370

`A197771(n+1)-A057427(n)`
-/

namespace A197600.P12719734472574753370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197771 (n + 1) - A057427 n

end

end A197600.P12719734472574753370

/-! ## A197600.P8571262555344129707

`A197771(n+1)-char[A344180(n)]`
-/

namespace A197600.P8571262555344129707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197771 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197600.P8571262555344129707

/-! ## A197600.P13152552155217213024

`A197771(n+1)-log2(A036453(n+1))`
-/

namespace A197600.P13152552155217213024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197771 (n + 1) : ℝ) - Real.logb 2 (A036453 (n + 1) : ℝ)

end

end A197600.P13152552155217213024

/-! ## A197600.P16928731848843580624

`A197771(n+1)-char[A129179(n)]`
-/

namespace A197600.P16928731848843580624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129179 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197771 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197600.P16928731848843580624

/-!
# A197601: G.f.: exp( Sum_{n>=1} [Sum_{k=0..2*n} C(2*n,k)^2 *x^k] *x^n/n ).

The programs for A197601, there is no canonical definition to state claims against.
-/

/-! ## A197601.P13525743909993664619

`A081386(A151148(n))`
-/

namespace A197601.P13525743909993664619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (A151148 n).toNat

end

end A197601.P13525743909993664619

/-! ## A197601.P2217063110127483114

`A051516(A002110(n))+A046717(n)`
-/

namespace A197601.P2217063110127483114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A002110 n).toNat + A046717 n

end

end A197601.P2217063110127483114

/-!
# A197602: a(n) = floor((n + 1/n)^3).

The programs for A197602, the canonical program `A197602.P5980760563352912879` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197602 has offset 1).

The definition of A197602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/(n+1))^3)` (program `A197602.P5980760563352912879`, by `A197602.P5980760563352912879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197602.P5980760563352912879

`floor((n+1+1/(n+1))^3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197602

/-- `floor((n+1+1/(n+1))^3)` -/
def P5980760563352912879.Spec : Prop :=
  ∀ n, P5980760563352912879.a n = A197602 (n + 1)

theorem P5980760563352912879.correct : P5980760563352912879.Spec := by
  intro n
  simp only [A197602, Nat.add_sub_cancel]

end A197602

/-! ## A197602.P13072177122137116526

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=15, a(2)=37, a(3)=76, a(4)=140, a(5)=234, a(6)=364`
-/

namespace A197602.P13072177122137116526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 15, 37, 76, 140, 234, 364] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A197602.P13072177122137116526

namespace A197602

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13072177122137116526.Spec : Prop :=
  ∀ n, P13072177122137116526.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P12968672295153493255

`ceil(sqrt(A197905(n+1))-tanh(2))`
-/

namespace A197602.P12968672295153493255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A197905 (n + 1) : ℝ) - Real.tanh (2 : ℝ)⌉

end

end A197602.P12968672295153493255

namespace A197602

/-- `ceil(sqrt(A197905(n+1))-tanh(2))` -/
def P12968672295153493255.Spec : Prop :=
  ∀ n, P12968672295153493255.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P13566885508259054814

`A197773(n+1)+A057428(n)`
-/

namespace A197602.P13566885508259054814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) + A057428 n

end

end A197602.P13566885508259054814

namespace A197602

/-- `A197773(n+1)+A057428(n)` -/
def P13566885508259054814.Spec : Prop :=
  ∀ n, P13566885508259054814.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P10683050948543909404

`A197773(n+1)-A057427(n)`
-/

namespace A197602.P10683050948543909404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - A057427 n

end

end A197602.P10683050948543909404

namespace A197602

/-- `A197773(n+1)-A057427(n)` -/
def P10683050948543909404.Spec : Prop :=
  ∀ n, P10683050948543909404.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P10895100240901183544

`A197773(n+1)-A062157(n)²`
-/

namespace A197602.P10895100240901183544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - A062157 n ^ 2

end

end A197602.P10895100240901183544

namespace A197602

/-- `A197773(n+1)-A062157(n)²` -/
def P10895100240901183544.Spec : Prop :=
  ∀ n, P10895100240901183544.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P7531604009407658569

`A197773(n+1)-char[A328397(n)]`
-/

namespace A197602.P7531604009407658569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328397 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197602.P7531604009407658569

namespace A197602

/-- `A197773(n+1)-char[A328397(n)]` -/
def P7531604009407658569.Spec : Prop :=
  ∀ n, P7531604009407658569.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P3269315853321754643

`A197773(n+1)-char[A326201(n+1)]`
-/

namespace A197602.P3269315853321754643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197602.P3269315853321754643

namespace A197602

/-- `A197773(n+1)-char[A326201(n+1)]` -/
def P3269315853321754643.Spec : Prop :=
  ∀ n, P3269315853321754643.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P1868926311619645722

`A197773(n+1)-char[A326202(n+1)]`
-/

namespace A197602.P1868926311619645722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197602.P1868926311619645722

namespace A197602

/-- `A197773(n+1)-char[A326202(n+1)]` -/
def P1868926311619645722.Spec : Prop :=
  ∀ n, P1868926311619645722.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P17989835105209134356

`A197773(n+1)-char[A326203(n+1)]`
-/

namespace A197602.P17989835105209134356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197602.P17989835105209134356

namespace A197602

/-- `A197773(n+1)-char[A326203(n+1)]` -/
def P17989835105209134356.Spec : Prop :=
  ∀ n, P17989835105209134356.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P15435325272679904686

`floor(sqrt(A197605(n+1)))%A197605(n+1)`
-/

namespace A197602.P15435325272679904686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A197605 (n + 1))) (A197605 (n + 1))

end

end A197602.P15435325272679904686

namespace A197602

/-- `floor(sqrt(A197605(n+1)))%A197605(n+1)` -/
def P15435325272679904686.Spec : Prop :=
  ∀ n, P15435325272679904686.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P13904636826894774868

`A197773(n+1)-ceil(n/A197605(n+1))`
-/

namespace A197602.P13904636826894774868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - ⌈(n : ℚ) / (A197605 (n + 1) : ℚ)⌉

end

end A197602.P13904636826894774868

namespace A197602

/-- `A197773(n+1)-ceil(n/A197605(n+1))` -/
def P13904636826894774868.Spec : Prop :=
  ∀ n, P13904636826894774868.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P15106313372096695798

`A197773(n+1)-A001221(A027748(n+1))`
-/

namespace A197602.P15106313372096695798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - A001221 (A027748 (n + 1)).toNat

end

end A197602.P15106313372096695798

namespace A197602

/-- `A197773(n+1)-A001221(A027748(n+1))` -/
def P15106313372096695798.Spec : Prop :=
  ∀ n, P15106313372096695798.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P2447669800178187210

`A197773(n+1)-A051903(A007947(n+1))`
-/

namespace A197602.P2447669800178187210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - A051903 (A007947 (n + 1)).toNat

end

end A197602.P2447669800178187210

namespace A197602

/-- `A197773(n+1)-A051903(A007947(n+1))` -/
def P2447669800178187210.Spec : Prop :=
  ∀ n, P2447669800178187210.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P10281185282607069144

`A197773(n+1)+A033999(n)*A062157(n)`
-/

namespace A197602.P10281185282607069144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) + A033999 n * A062157 n

end

end A197602.P10281185282607069144

namespace A197602

/-- `A197773(n+1)+A033999(n)*A062157(n)` -/
def P10281185282607069144.Spec : Prop :=
  ∀ n, P10281185282607069144.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P9662106029162647901

`A197773(n+1)-A001222(A008578(n+1))`
-/

namespace A197602.P9662106029162647901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - A001222 (A008578 (n + 1)).toNat

end

end A197602.P9662106029162647901

namespace A197602

/-- `A197773(n+1)-A001222(A008578(n+1))` -/
def P9662106029162647901.Spec : Prop :=
  ∀ n, P9662106029162647901.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P3316867006030758414

`A197773(n+1)+A062157(2*n)`
-/

namespace A197602.P3316867006030758414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) + A062157 (2 * n)

end

end A197602.P3316867006030758414

namespace A197602

/-- `A197773(n+1)+A062157(2*n)` -/
def P3316867006030758414.Spec : Prop :=
  ∀ n, P3316867006030758414.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P16139891299251363728

`A197773(n+1)-A000035(A004280(n+2))`
-/

namespace A197602.P16139891299251363728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - A000035 (A004280 (n + 2)).toNat

end

end A197602.P16139891299251363728

namespace A197602

/-- `A197773(n+1)-A000035(A004280(n+2))` -/
def P16139891299251363728.Spec : Prop :=
  ∀ n, P16139891299251363728.a n = A197602 (n + 1)

end A197602

/-! ## A197602.P12061522967653647046

`A197773(n+1)-A206442(A000040(n+1))`
-/

namespace A197602.P12061522967653647046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197773 (n + 1) - A206442 (A000040 (n + 1)).toNat

end

end A197602.P12061522967653647046

namespace A197602

/-- `A197773(n+1)-A206442(A000040(n+1))` -/
def P12061522967653647046.Spec : Prop :=
  ∀ n, P12061522967653647046.a n = A197602 (n + 1)

end A197602

/-!
# A197603: a(n) = floor((n+1/n)^4).

The programs for A197603, the canonical program `A197603.P18257753445411384451` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197603 has offset 1).

The definition of A197603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/(n+1))^4)` (program `A197603.P18257753445411384451`, by `A197603.P18257753445411384451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197603.P18257753445411384451

`floor((n+1+1/(n+1))^4)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197603

/-- `floor((n+1+1/(n+1))^4)` -/
def P18257753445411384451.Spec : Prop :=
  ∀ n, P18257753445411384451.a n = A197603 (n + 1)

theorem P18257753445411384451.correct : P18257753445411384451.Spec := by
  intro n
  simp only [A197603, Nat.add_sub_cancel]

end A197603

/-! ## A197603.P17150838894538326792

`A197903(n+1)+A057428(n)`
-/

namespace A197603.P17150838894538326792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197903 (n + 1) + A057428 n

end

end A197603.P17150838894538326792

namespace A197603

/-- `A197903(n+1)+A057428(n)` -/
def P17150838894538326792.Spec : Prop :=
  ∀ n, P17150838894538326792.a n = A197603 (n + 1)

end A197603

/-! ## A197603.P1736002720146827013

`A197903(n+1)-A057427(n)`
-/

namespace A197603.P1736002720146827013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197903 (n + 1) - A057427 n

end

end A197603.P1736002720146827013

namespace A197603

/-- `A197903(n+1)-A057427(n)` -/
def P1736002720146827013.Spec : Prop :=
  ∀ n, P1736002720146827013.a n = A197603 (n + 1)

end A197603

/-! ## A197603.P18232126087110431696

`ceil(A197907(n+1)/A197903(n+1))`
-/

namespace A197603.P18232126087110431696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A197907 (n + 1) : ℚ) / (A197903 (n + 1) : ℚ)⌉

end

end A197603.P18232126087110431696

namespace A197603

/-- `ceil(A197907(n+1)/A197903(n+1))` -/
def P18232126087110431696.Spec : Prop :=
  ∀ n, P18232126087110431696.a n = A197603 (n + 1)

end A197603

/-! ## A197603.P16666288285851157781

`A197903(n+1)-char[A328908(n+1)]`
-/

namespace A197603.P16666288285851157781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328908 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197903 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197603.P16666288285851157781

namespace A197603

/-- `A197903(n+1)-char[A328908(n+1)]` -/
def P16666288285851157781.Spec : Prop :=
  ∀ n, P16666288285851157781.a n = A197603 (n + 1)

end A197603

/-! ## A197603.P9610134318760141158

`A014052(n+1)+A197903(n+1)-A014058(n+1)`
-/

namespace A197603.P9610134318760141158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + (A197903 (n + 1) - A014058 (n + 1))

end

end A197603.P9610134318760141158

namespace A197603

/-- `A014052(n+1)+A197903(n+1)-A014058(n+1)` -/
def P9610134318760141158.Spec : Prop :=
  ∀ n, P9610134318760141158.a n = A197603 (n + 1)

end A197603

/-!
# A197604: a(n) = floor((n+1/n)^5).

The programs for A197604, the canonical program `A197604.P5020987332420530884` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197604 has offset 1).

The definition of A197604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/(n+1))^5)` (program `A197604.P5020987332420530884`, by `A197604.P5020987332420530884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197604.P5020987332420530884

`floor((n+1+1/(n+1))^5)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197604

/-- `floor((n+1+1/(n+1))^5)` -/
def P5020987332420530884.Spec : Prop :=
  ∀ n, P5020987332420530884.a n = A197604 (n + 1)

theorem P5020987332420530884.correct : P5020987332420530884.Spec := by
  intro n
  simp only [A197604, Nat.add_sub_cancel]

end A197604

/-! ## A197604.P15393289994542849860

`A197904(n+1)+A057428(n)`
-/

namespace A197604.P15393289994542849860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197904 (n + 1) + A057428 n

end

end A197604.P15393289994542849860

namespace A197604

/-- `A197904(n+1)+A057428(n)` -/
def P15393289994542849860.Spec : Prop :=
  ∀ n, P15393289994542849860.a n = A197604 (n + 1)

end A197604

/-! ## A197604.P10971923200318575443

`A197904(n+1)-A057427(n)`
-/

namespace A197604.P10971923200318575443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197904 (n + 1) - A057427 n

end

end A197604.P10971923200318575443

namespace A197604

/-- `A197904(n+1)-A057427(n)` -/
def P10971923200318575443.Spec : Prop :=
  ∀ n, P10971923200318575443.a n = A197604 (n + 1)

end A197604

/-! ## A197604.P10080205481798701021

`A197904(n+1)-A046675(floor(1/(n+1)))`
-/

namespace A197604.P10080205481798701021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197904 (n + 1) - A046675 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A197604.P10080205481798701021

namespace A197604

/-- `A197904(n+1)-A046675(floor(1/(n+1)))` -/
def P10080205481798701021.Spec : Prop :=
  ∀ n, P10080205481798701021.a n = A197604 (n + 1)

end A197604

/-! ## A197604.P11104230258957775527

`A197904(n+1)-ceil(n/A197711(n+1))`
-/

namespace A197604.P11104230258957775527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197904 (n + 1) - ⌈(n : ℚ) / (A197711 (n + 1) : ℚ)⌉

end

end A197604.P11104230258957775527

namespace A197604

/-- `A197904(n+1)-ceil(n/A197711(n+1))` -/
def P11104230258957775527.Spec : Prop :=
  ∀ n, P11104230258957775527.a n = A197604 (n + 1)

end A197604

/-! ## A197604.P10103157235210186181

`A197904(n+1)-ceil(n/A197909(n+1))`
-/

namespace A197604.P10103157235210186181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197904 (n + 1) - ⌈(n : ℚ) / (A197909 (n + 1) : ℚ)⌉

end

end A197604.P10103157235210186181

namespace A197604

/-- `A197904(n+1)-ceil(n/A197909(n+1))` -/
def P10103157235210186181.Spec : Prop :=
  ∀ n, P10103157235210186181.a n = A197604 (n + 1)

end A197604

/-! ## A197604.P9287682635543516234

`A197904(n+1)-A000035(A175298(n))`
-/

namespace A197604.P9287682635543516234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197904 (n + 1) - A000035 (A175298 n).toNat

end

end A197604.P9287682635543516234

namespace A197604

/-- `A197904(n+1)-A000035(A175298(n))` -/
def P9287682635543516234.Spec : Prop :=
  ∀ n, P9287682635543516234.a n = A197604 (n + 1)

end A197604

/-! ## A197604.P7591380730699482332

`A197904(n+1)-A206442(A000040(n+1))`
-/

namespace A197604.P7591380730699482332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197904 (n + 1) - A206442 (A000040 (n + 1)).toNat

end

end A197604.P7591380730699482332

namespace A197604

/-- `A197904(n+1)-A206442(A000040(n+1))` -/
def P7591380730699482332.Spec : Prop :=
  ∀ n, P7591380730699482332.a n = A197604 (n + 1)

end A197604

/-! ## A197604.P13617971109347407481

`A014052(n+1)+A197904(n+1)-A014058(n+1)`
-/

namespace A197604.P13617971109347407481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + (A197904 (n + 1) - A014058 (n + 1))

end

end A197604.P13617971109347407481

namespace A197604

/-- `A014052(n+1)+A197904(n+1)-A014058(n+1)` -/
def P13617971109347407481.Spec : Prop :=
  ∀ n, P13617971109347407481.a n = A197604 (n + 1)

end A197604

/-!
# A197605: Floor( ( n + 1/n )^6 ).

The programs for A197605, the canonical program `A197605.P16599407307432514982` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197605 has offset 1).

The definition of A197605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197605.P16599407307432514982

`floor(((ratio[n+1]+n)^3)²)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197605

/-- `floor(((ratio[n+1]+n)^3)²)` -/
def P16599407307432514982.Spec : Prop :=
  ∀ n, P16599407307432514982.a n = A197605 (n + 1)

theorem P16599407307432514982.correct : P16599407307432514982.Spec := by
  intro n
  simp only [A197605, Nat.add_sub_cancel]

end A197605

/-! ## A197605.P14985324992332294615

`A197905(n+1)-ceil(tanh(sqrt(n)))`
-/

namespace A197605.P14985324992332294615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197905 (n + 1) - ⌈Real.tanh (Real.sqrt (n : ℝ))⌉

end

end A197605.P14985324992332294615

namespace A197605

/-- `A197905(n+1)-ceil(tanh(sqrt(n)))` -/
def P14985324992332294615.Spec : Prop :=
  ∀ n, P14985324992332294615.a n = A197605 (n + 1)

end A197605

/-! ## A197605.P2525481321758085679

`A197905(n+1)+A057428(n)`
-/

namespace A197605.P2525481321758085679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197905 (n + 1) + A057428 n

end

end A197605.P2525481321758085679

namespace A197605

/-- `A197905(n+1)+A057428(n)` -/
def P2525481321758085679.Spec : Prop :=
  ∀ n, P2525481321758085679.a n = A197605 (n + 1)

end A197605

/-! ## A197605.P6619200452298187306

`A197905(n+1)-A057427(n)`
-/

namespace A197605.P6619200452298187306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197905 (n + 1) - A057427 n

end

end A197605.P6619200452298187306

namespace A197605

/-- `A197905(n+1)-A057427(n)` -/
def P6619200452298187306.Spec : Prop :=
  ∀ n, P6619200452298187306.a n = A197605 (n + 1)

end A197605

/-! ## A197605.P17455481052038125523

`A197905(n+1)-A090693(n+1)%2`
-/

namespace A197605.P17455481052038125523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197905 (n + 1) - Int.tmod (A090693 (n + 1)) 2

end

end A197605.P17455481052038125523

namespace A197605

/-- `A197905(n+1)-A090693(n+1)%2` -/
def P17455481052038125523.Spec : Prop :=
  ∀ n, P17455481052038125523.a n = A197605 (n + 1)

end A197605

/-! ## A197605.P10878910747829262140

`A197905(n+1)-round(n/A000027(n+1))`
-/

namespace A197605.P10878910747829262140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197905 (n + 1) - SequenceMachineLib.roundAway ((n : ℚ) / (A000027 (n + 1) : ℚ))

end

end A197605.P10878910747829262140

namespace A197605

/-- `A197905(n+1)-round(n/A000027(n+1))` -/
def P10878910747829262140.Spec : Prop :=
  ∀ n, P10878910747829262140.a n = A197605 (n + 1)

end A197605

/-! ## A197605.P18316907086988292822

`A197905(n+1)-A041004(gcd(n, A089443(n+1)))`
-/

namespace A197605.P18316907086988292822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197905 (n + 1) - A041004 (Int.gcd (n : ℤ) (A089443 (n + 1)))

end

end A197605.P18316907086988292822

namespace A197605

/-- `A197905(n+1)-A041004(gcd(n, A089443(n+1)))` -/
def P18316907086988292822.Spec : Prop :=
  ∀ n, P18316907086988292822.a n = A197605 (n + 1)

end A197605

/-! ## A197605.P9919664894575530089

`A197905(n+1)-A197905(n+3)%2`
-/

namespace A197605.P9919664894575530089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197905 (n + 1) - Int.tmod (A197905 (n + 3)) 2

end

end A197605.P9919664894575530089

namespace A197605

/-- `A197905(n+1)-A197905(n+3)%2` -/
def P9919664894575530089.Spec : Prop :=
  ∀ n, P9919664894575530089.a n = A197605 (n + 1)

end A197605

/-! ## A197605.P4035876645614855794

`A014052(n+1)+A197905(n+1)-A014058(n+1)`
-/

namespace A197605.P4035876645614855794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + (A197905 (n + 1) - A014058 (n + 1))

end

end A197605.P4035876645614855794

namespace A197605

/-- `A014052(n+1)+A197905(n+1)-A014058(n+1)` -/
def P4035876645614855794.Spec : Prop :=
  ∀ n, P4035876645614855794.a n = A197605 (n + 1)

end A197605

/-!
# A197606: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,1,1,1 for x=0,1,2,3,4.

The programs for A197606, there is no canonical definition to state claims against.
-/

/-! ## A197606.P14130424693562301442

`A197613(∑[4*n]+1)`
-/

namespace A197606.P14130424693562301442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197606.P14130424693562301442

/-! ## A197606.P9427007360505276036

`record[A197613(∑[A266981(n)])]`
-/

namespace A197606.P9427007360505276036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197606.P9427007360505276036

/-! ## A197606.P11907272129464383250

`record[A197613(Δ[A235355(n)])]`
-/

namespace A197606.P11907272129464383250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197606.P11907272129464383250

/-! ## A197606.P18342528959514752079

`record[A197613(A330613(n+1))]`
-/

namespace A197606.P18342528959514752079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197606.P18342528959514752079

/-!
# A197607: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,1,1 for x=0,1,2,3,4.

The programs for A197607, there is no canonical definition to state claims against.
-/

/-! ## A197607.P591576935962600636

`A197613(∑[n+1]+2)`
-/

namespace A197607.P591576935962600636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197607.P591576935962600636

/-! ## A197607.P13275397966110757715

`A197782(∑[n+1]+2)`
-/

namespace A197607.P13275397966110757715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197607.P13275397966110757715

/-! ## A197607.P17462063200081205004

`record[gcd(A197613(n+1), A259776(n))]`
-/

namespace A197607.P17462063200081205004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197613 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197607.P17462063200081205004

/-! ## A197607.P18366515417806755576

`A197613(A000096(n)+3)^A178334(n)`
-/

namespace A197607.P18366515417806755576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197613 (A000096 n + 3).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A197607.P18366515417806755576

/-! ## A197607.P9522191833991753085

`A007318(C(2, n+2))*A197613(A000096(n)+3)`
-/

namespace A197607.P9522191833991753085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A197613 (A000096 n + 3).toNat

end

end A197607.P9522191833991753085

/-!
# A197608: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,1,1 for x=0,1,2,3,4.

The programs for A197608, there is no canonical definition to state claims against.
-/

/-! ## A197608.P9536837973664821756

`A197613(∑[n+2]+4)`
-/

namespace A197608.P9536837973664821756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197608.P9536837973664821756

/-! ## A197608.P1029695096196828387

`A197613(A167614(n+1))%A189317(n)`
-/

namespace A197608.P1029695096196828387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197613 (A167614 (n + 1)).toNat) (A189317 n)

end

end A197608.P1029695096196828387

/-! ## A197608.P12257072181321725733

`gcd(A000038(n), A197613(A167614(n+1)))`
-/

namespace A197608.P12257072181321725733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A197613 (A167614 (n + 1)).toNat)

end

end A197608.P12257072181321725733

/-! ## A197608.P15080323252686409939

`lcm(A033999(n), A197613(A167614(n+1)))`
-/

namespace A197608.P15080323252686409939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197613 (A167614 (n + 1)).toNat)

end

end A197608.P15080323252686409939

/-! ## A197608.P4416198499150812182

`or(A197613(A167614(n+1)), A275947(n))`
-/

namespace A197608.P4416198499150812182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197613 (A167614 (n + 1)).toNat) (A275947 n)

end

end A197608.P4416198499150812182

/-!
# A197609: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,1,1 for x=0,1,2,3,4.

The programs for A197609, there is no canonical definition to state claims against.
-/

/-! ## A197609.P11573938065832722331

`A197613(∑[n+3]+7)`
-/

namespace A197609.P11573938065832722331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197609.P11573938065832722331

/-! ## A197609.P12039257849015675126

`record[A197613(A259604(n+5)-3)]`
-/

namespace A197609.P12039257849015675126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (A259604 (n + 5) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197609.P12039257849015675126

/-!
# A197610: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,1,1 for x=0,1,2,3,4.

The programs for A197610, there is no canonical definition to state claims against.
-/

/-! ## A197610.P8431607680467713361

`A197613(A374005(n+1))`
-/

namespace A197610.P8431607680467713361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (A374005 (n + 1)).toNat

end

end A197610.P8431607680467713361

/-! ## A197610.P5455053700209185701

`A197613(A167499(n+3))`
-/

namespace A197610.P5455053700209185701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (A167499 (n + 3)).toNat

end

end A197610.P5455053700209185701

/-! ## A197610.P5347403920323052399

`A197613(A155212(n)+13)`
-/

namespace A197610.P5347403920323052399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (A155212 n + 13).toNat

end

end A197610.P5347403920323052399

/-! ## A197610.P11776250486626207150

`A197613(A056000(n)+15)`
-/

namespace A197610.P11776250486626207150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (A056000 n + 15).toNat

end

end A197610.P11776250486626207150

/-! ## A197610.P7436216033521590530

`A197613(eq[7, A066657(n)])`
-/

namespace A197610.P7436216033521590530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197610.P7436216033521590530

/-!
# A197611: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,1,1 for x=0,1,2,3,4.

The programs for A197611, there is no canonical definition to state claims against.
-/

/-! ## A197611.P7374878787426632003

`A197613(A374007(n+1))`
-/

namespace A197611.P7374878787426632003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (A374007 (n + 1)).toNat

end

end A197611.P7374878787426632003

/-! ## A197611.P6171950234427695102

`A197613(A167499(n+4)+1)`
-/

namespace A197611.P6171950234427695102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (A167499 (n + 4) + 1).toNat

end

end A197611.P6171950234427695102

/-! ## A197611.P13304589177117564559

`A197613(eq[7, A131818(n+1)])`
-/

namespace A197611.P13304589177117564559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197611.P13304589177117564559

/-! ## A197611.P4996670467532175634

`A197613(eq[3, A219347(n)])`
-/

namespace A197611.P4996670467532175634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197611.P4996670467532175634

/-! ## A197611.P18201830508907483716

`A197613(eq[5, A193592(n)])`
-/

namespace A197611.P18201830508907483716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197611.P18201830508907483716

/-!
# A197612: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,1,1 for x=0,1,2,3,4.

The programs for A197612, there is no canonical definition to state claims against.
-/

/-! ## A197612.P15282097553265420130

`A197613(A374008(n+1))`
-/

namespace A197612.P15282097553265420130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (A374008 (n + 1)).toNat

end

end A197612.P15282097553265420130

/-! ## A197612.P2531044993031297728

`A197613(eq[11, A066657(n)])`
-/

namespace A197612.P2531044993031297728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197612.P2531044993031297728

/-! ## A197612.P7498478145883055650

`A197613(eq[8, A131818(n+1)])`
-/

namespace A197612.P7498478145883055650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197612.P7498478145883055650

/-! ## A197612.P5375385717373876949

`A197613(eq[4, A219347(n)])`
-/

namespace A197612.P5375385717373876949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197612.P5375385717373876949

/-! ## A197612.P13099253060516054280

`A197613(eq[6, A193592(n)])`
-/

namespace A197612.P13099253060516054280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197612.P13099253060516054280

/-!
# A197613: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,1,1,1 for x=0,1,2,3,4.

The programs for A197613, there is no canonical definition to state claims against.
-/

/-! ## A197613.P4047467058605265939

`A115060(A197782(n+1))`
-/

namespace A197613.P4047467058605265939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A197782 (n + 1)).toNat

end

end A197613.P4047467058605265939

/-! ## A197613.P15823407681301444800

`A197782(A000005(2^n))`
-/

namespace A197613.P15823407681301444800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A000005 (2 ^ n)).toNat

end

end A197613.P15823407681301444800

/-! ## A197613.P5578757668004945368

`A197782(∑[A059117(n)!])`
-/

namespace A197613.P5578757668004945368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A059117 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197613.P5578757668004945368

/-! ## A197613.P16570098270777252058

`A018851(A197782(n+1)²)`
-/

namespace A197613.P16570098270777252058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A197782 (n + 1) ^ 2).toNat

end

end A197613.P16570098270777252058

/-! ## A197613.P8434821827809655173

`A286297(A197782(n+1)²)`
-/

namespace A197613.P8434821827809655173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286297 (A197782 (n + 1) ^ 2).toNat

end

end A197613.P8434821827809655173

/-!
# A197615: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,5,0,1,4,0,3 for x=0,1,2,3,4,5,6.

The programs for A197615, there is no canonical definition to state claims against.
-/

/-! ## A197615.P17368571735254199897

`ceil(ratio[A234009(A035967(n+1))])`
-/

namespace A197615.P17368571735254199897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234009 (A035967 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A197615.P17368571735254199897

/-! ## A197615.P5662910801099937422

`record[gcd(A025494(n+1), A045678(n))]`
-/

namespace A197615.P5662910801099937422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025494 (n + 1)) (A045678 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197615.P5662910801099937422

/-!
# A197616: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,3,1,1,1 for x=0,1,2,3,4.

The programs for A197616, there is no canonical definition to state claims against.
-/

/-! ## A197616.P7926406424720163564

`A197623(∑[4*n]+1)`
-/

namespace A197616.P7926406424720163564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197616.P7926406424720163564

/-! ## A197616.P5133522787552516778

`gcd(floor(1/(n+1)), A197623(n²+(n+1)²))`
-/

namespace A197616.P5133522787552516778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A197623 (n ^ 2 + (n + 1) ^ 2))

end

end A197616.P5133522787552516778

/-! ## A197616.P4169646634384716496

`A197623(A001844(n))+char[10]`
-/

namespace A197616.P4169646634384716496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197616.P4169646634384716496

/-! ## A197616.P14373405072702434581

`A197623(n²+(n+1)²)%A115444(n+1)`
-/

namespace A197616.P14373405072702434581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197623 (n ^ 2 + (n + 1) ^ 2)) (A115444 (n + 1))

end

end A197616.P14373405072702434581

/-! ## A197616.P17810081639824704308

`C(A197623(n²+(n+1)²), A293229(n+1))`
-/

namespace A197616.P17810081639824704308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A197623 (n ^ 2 + (n + 1) ^ 2)).toNat (A293229 (n + 1)).toNat

end

end A197616.P17810081639824704308

/-!
# A197617: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,1,1,1 for x=0,1,2,3,4.

The programs for A197617, the canonical program `A197617.P10294840824982121336` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197617 has offset 1).

The definition of A197617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197617.P10294840824982121336

`a(n-2)+4*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197617

/-- `a(n-2)+4*a(n-3)+a(n-4)` -/
def P10294840824982121336.Spec : Prop :=
  ∀ n, (P10294840824982121336.a n : ℤ) = A197617 (n + 1)

theorem P10294840824982121336.correct : P10294840824982121336.Spec := by
  intro n
  simp only [A197617, Nat.add_sub_cancel]

end A197617

/-! ## A197617.P9251121495767697172

`A197623(∑[n+1]+2)`
-/

namespace A197617.P9251121495767697172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197617.P9251121495767697172

namespace A197617

/-- `A197623(∑[n+1]+2)` -/
def P9251121495767697172.Spec : Prop :=
  ∀ n, P9251121495767697172.a n = A197617 (n + 1)

end A197617

/-! ## A197617.P6294210880321798118

`lcm(2, A197623(A133263(n+1)))`
-/

namespace A197617.P6294210880321798118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A197623 (A133263 (n + 1)).toNat)

end

end A197617.P6294210880321798118

namespace A197617

/-- `lcm(2, A197623(A133263(n+1)))` -/
def P6294210880321798118.Spec : Prop :=
  ∀ n, (P6294210880321798118.a n : ℤ) = A197617 (n + 1)

end A197617

/-! ## A197617.P14384540510447143725

`A197623(A133263(n+1))%A027772(n)`
-/

namespace A197617.P14384540510447143725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197623 (A133263 (n + 1)).toNat) (A027772 (n + 11))

end

end A197617.P14384540510447143725

namespace A197617

/-- `A197623(A133263(n+1))%A027772(n)` -/
def P14384540510447143725.Spec : Prop :=
  ∀ n, P14384540510447143725.a n = A197617 (n + 1)

end A197617

/-!
# A197618: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,1,1,1 for x=0,1,2,3,4.

The programs for A197618, there is no canonical definition to state claims against.
-/

/-! ## A197618.P17020949233994422896

`A197623(∑[n+2]+4)`
-/

namespace A197618.P17020949233994422896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197618.P17020949233994422896

/-! ## A197618.P9372362879921453552

`A197623(A167614(n+1))+char[17]`
-/

namespace A197618.P9372362879921453552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197618.P9372362879921453552

/-! ## A197618.P10418246307404350748

`A197623(A046691(n)+7)+char[17]`
-/

namespace A197618.P10418246307404350748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197618.P10418246307404350748

/-! ## A197618.P1675117938989754302

`A054977(n)*A197623(A167614(n+1))`
-/

namespace A197618.P1675117938989754302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A197623 (A167614 (n + 1)).toNat

end

end A197618.P1675117938989754302

/-! ## A197618.P15647280021373511580

`A197623(A167614(n+1))%A278557(n)`
-/

namespace A197618.P15647280021373511580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197623 (A167614 (n + 1)).toNat) (A278557 n)

end

end A197618.P15647280021373511580

/-!
# A197619: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,1,1,1 for x=0,1,2,3,4.

The programs for A197619, there is no canonical definition to state claims against.
-/

/-! ## A197619.P3917848243404090459

`A197623(∑[n+3]+7)`
-/

namespace A197619.P3917848243404090459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197619.P3917848243404090459

/-! ## A197619.P13574152229249675456

`or(char[2], A197623(A055999(n)+10))`
-/

namespace A197619.P13574152229249675456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A197623 (A055999 n + 10).toNat)

end

end A197619.P13574152229249675456

/-! ## A197619.P18445374044020405950

`char[A007318(n)]*A197623(A055999(n)+10)`
-/

namespace A197619.P18445374044020405950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A197623 (A055999 n + 10).toNat

end

end A197619.P18445374044020405950

/-! ## A197619.P15599185865179803099

`A197623(A055999(n)+10)%A000108(n+4)`
-/

namespace A197619.P15599185865179803099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197623 (A055999 n + 10).toNat) (A000108 (n + 4))

end

end A197619.P15599185865179803099

/-! ## A197619.P18392460794258890081

`A000108(C(2, n))*A197623(A055999(n)+10)`
-/

namespace A197619.P18392460794258890081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A197623 (A055999 n + 10).toNat

end

end A197619.P18392460794258890081

/-!
# A197620: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,1,1,1 for x=0,1,2,3,4.

The programs for A197620, there is no canonical definition to state claims against.
-/

/-! ## A197620.P3853963955004915768

`A197623(∑[n+4]+11)`
-/

namespace A197620.P3853963955004915768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A197620.P3853963955004915768

/-! ## A197620.P16678537990427329475

`record[A197623(A167499(n))]`
-/

namespace A197620.P16678537990427329475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197620.P16678537990427329475

/-! ## A197620.P13745640793590270602

`record[A197623(n+5)/A308504(n+1)]`
-/

namespace A197620.P13745640793590270602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197623 (n + 5) : ℚ) / (A308504 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197620.P13745640793590270602

/-! ## A197620.P1865016212527946982

`record[A055141(n+4)*A197623(n+1)]`
-/

namespace A197620.P1865016212527946982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055141 (n + 4) * A197623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197620.P1865016212527946982

/-!
# A197621: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,1,1,1 for x=0,1,2,3,4.

The programs for A197621, there is no canonical definition to state claims against.
-/

/-! ## A197621.P11367618854128770807

`A197623(∑[n+5]+16)`
-/

namespace A197621.P11367618854128770807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A197621.P11367618854128770807

/-!
# A197622: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,1,1,1 for x=0,1,2,3,4.

The programs for A197622, there is no canonical definition to state claims against.
-/

/-! ## A197622.P7163767080178710197

`A197623(C(n+8, 2)-n)`
-/

namespace A197622.P7163767080178710197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (Nat.choose (n + 8) 2 - n)

end

end A197622.P7163767080178710197

/-! ## A197622.P13425009479584952789

`A197623(A374008(n+1))`
-/

namespace A197622.P13425009479584952789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (A374008 (n + 1)).toNat

end

end A197622.P13425009479584952789

/-! ## A197622.P16384362403554565187

`A197623(A302537(n)+27)`
-/

namespace A197622.P16384362403554565187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (A302537 n + 27).toNat

end

end A197622.P16384362403554565187

/-! ## A197622.P862222552003718933

`A197623(eq[11, A066657(n)])`
-/

namespace A197622.P862222552003718933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197622.P862222552003718933

/-! ## A197622.P14172732614053606511

`A197623(A167614(n+5)+4)`
-/

namespace A197622.P14172732614053606511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197623 (A167614 (n + 5) + 4).toNat

end

end A197622.P14172732614053606511

/-!
# A197625: Smallest set S of positive integers with following properties: (i) 1 is in S; (ii) if n,m are in S, so is n*m; (iii) if n,m are in S, so is n*m + m + n.

The programs for A197625, there is no canonical definition to state claims against.
-/

/-! ## A197625.P15686759648792846226

`lt[A090861(A210945(2*n+1)), A237649(n+1)]`
-/

namespace A197625.P15686759648792846226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A210945 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A197625.P15686759648792846226

/-! ## A197625.P13296605514544718786

`eq[A321649(A206369(2*(n+1))), A334195(n+1)]`
-/

namespace A197625.P13296605514544718786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321649 (A206369 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197625.P13296605514544718786

/-!
# A197626: Number of free poly-IH61 tiles (holes allowed) with n cells.

The programs for A197626, there is no canonical definition to state claims against.
-/

/-! ## A197626.P11357489200709774443

`2*A056779(n+1)-A346799(n+1)`
-/

namespace A197626.P11357489200709774443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056779 (n + 1) - A346799 (n + 1)

end

end A197626.P11357489200709774443

/-! ## A197626.P4947198164497618054

`A004277(A056779(n+1))-A346799(n+1)`
-/

namespace A197626.P4947198164497618054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A056779 (n + 1)).toNat - A346799 (n + 1)

end

end A197626.P4947198164497618054

/-! ## A197626.P9696013085894631414

`A004277(A056779(n+1))+A234008(n+1)-A234010(n+1)`
-/

namespace A197626.P9696013085894631414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A056779 (n + 1)).toNat + (A234008 (n + 1) - A234010 (n + 1))

end

end A197626.P9696013085894631414

/-! ## A197626.P16210702930114127544

`A121198(n+1)-A163538(A334771(n+1))`
-/

namespace A197626.P16210702930114127544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121198 (n + 1) - A163538 (A334771 (n + 1)).toNat

end

end A197626.P16210702930114127544

/-!
# A197627: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,1,5,5,2,3 for x=0,1,2,3,4,5,6.

The programs for A197627, there is no canonical definition to state claims against.
-/

/-! ## A197627.P4681649991128019016

`xor(2, A368101(a(n-1)))+1` with `a(0)=1`
-/

namespace A197627.P4681649991128019016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 2 (A368101 (a (n - 1)).toNat) + 1

end

end A197627.P4681649991128019016

/-!
# A197628: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,2,0,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A197628, there is no canonical definition to state claims against.
-/

/-! ## A197628.P470397084895622532

`A159347(n)+A004442(A197792(n+1))`
-/

namespace A197628.P470397084895622532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 n + A004442 (A197792 (n + 1)).toNat

end

end A197628.P470397084895622532

/-!
# A197629: Number of ways to write n as the sum of two coprime, squarefree, composite, positive integers.

The programs for A197629, there is no canonical definition to state claims against.
-/

/-! ## A197629.P7530277230862419385

`A004276(A198255(n+1))*A139553(A139576(n))`
-/

namespace A197629.P7530277230862419385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A198255 (n + 1)).toNat * A139553 (A139576 n).toNat

end

end A197629.P7530277230862419385

/-! ## A197629.P12881050311224684358

`A004276(A198255(n+1))%A038722(A028387(n))`
-/

namespace A197629.P12881050311224684358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004276 (A198255 (n + 1)).toNat) (A038722 (A028387 n).toNat)

end

end A197629.P12881050311224684358

/-! ## A197629.P4758904206391179842

`and(A004276(A198255(n+1)), A019443(n))`
-/

namespace A197629.P4758904206391179842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004276 (A198255 (n + 1)).toNat) (A019443 n)

end

end A197629.P4758904206391179842

/-! ## A197629.P12633121108371938477

`floor(A004276(A198255(n+1))+1/A178815(n+1))`
-/

namespace A197629.P12633121108371938477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004276 (A198255 (n + 1)).toNat : ℚ) + 1 / (A178815 (n + 1) : ℚ)⌋

end

end A197629.P12633121108371938477

/-! ## A197629.P4302480244182072603

`A084114(A071695(n+1))+A004276(A198255(n+1))`
-/

namespace A197629.P4302480244182072603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084114 (A071695 (n + 1)).toNat + A004276 (A198255 (n + 1)).toNat

end

end A197629.P4302480244182072603

/-! ## A197629.P133523621385229332

`A049084((n+1)²)+A004276(A198255(n+1))`
-/

namespace A197629.P133523621385229332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 ((n + 1) ^ 2) + A004276 (A198255 (n + 1)).toNat

end

end A197629.P133523621385229332

/-! ## A197629.P1059442947229694567

`and(A121263(n), A198255(n+1))`
-/

namespace A197629.P1059442947229694567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121263 (n + 10)) (A198255 (n + 1))

end

end A197629.P1059442947229694567

/-! ## A197629.P12080149216265649334

`A198255(A005171(A197640(n+1))+n)`
-/

namespace A197629.P12080149216265649334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198255 (A005171 (A197640 (n + 1)).toNat + (n : ℤ)).toNat

end

end A197629.P12080149216265649334

/-! ## A197629.P12531378619843100773

`A198255(A198255(A197640(n+1))+n+1)`
-/

namespace A197629.P12531378619843100773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198255 (A198255 (A197640 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A197629.P12531378619843100773

/-! ## A197629.P7756622192548914939

`and(1, A051439(n))*A198255(n+1)`
-/

namespace A197629.P7756622192548914939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051439 n) * A198255 (n + 1)

end

end A197629.P7756622192548914939

/-!
# A197631: Lerch remainders: the Lerch quotient A197630 of the n-th prime p modulo p, where n > 1.

The programs for A197631, there is no canonical definition to state claims against.
-/

/-! ## A197631.P7763140589849324861

`A275741(n+2)-A002068(n+2)`
-/

namespace A197631.P7763140589849324861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275741 (n + 2) - A002068 (n + 2)

end

end A197631.P7763140589849324861

/-! ## A197631.P17074771065494555802

`A197630(n+2)%A000040(n+2)`
-/

namespace A197631.P17074771065494555802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197630 (n + 2)) (A000040 (n + 2))

end

end A197631.P17074771065494555802

/-!
# A197636: Non-Wilson primes: primes p such that (p-1)! =/= -1 mod p^2.

The programs for A197636, the canonical program `A197636.P5633880551885269643` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197636 has offset 1).

The definition of A197636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197636.P5633880551885269643

`p?[A383578(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A197636

/-- `p?[A383578(n+1)]` -/
def P5633880551885269643.Spec : Prop :=
  ∀ n, P5633880551885269643.a n = A197636 (n + 1)

theorem P5633880551885269643.correct : P5633880551885269643.Spec := by
  intro n
  simp only [A197636, Nat.add_sub_cancel]

end A197636

/-! ## A197636.P8712862378117615112

`p?[A283149(n+1)+A006093(n+1)]`
-/

namespace A197636.P8712862378117615112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1) + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197636.P8712862378117615112

namespace A197636

/-- `p?[A283149(n+1)+A006093(n+1)]` -/
def P8712862378117615112.Spec : Prop :=
  ∀ n, P8712862378117615112.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P14041722958754046494

`p?[A000040(n+1)*A283149(n+1)]`
-/

namespace A197636.P14041722958754046494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A283149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197636.P14041722958754046494

namespace A197636

/-- `p?[A000040(n+1)*A283149(n+1)]` -/
def P14041722958754046494.Spec : Prop :=
  ∀ n, P14041722958754046494.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P792842519365687015

`record[A000040(ϕ²-(ϕ-n))/A283149(n+1)]`
-/

namespace A197636.P792842519365687015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / (A283149 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197636.P792842519365687015

namespace A197636

/-- `record[A000040(ϕ²-(ϕ-n))/A283149(n+1)]` -/
def P792842519365687015.Spec : Prop :=
  ∀ n, P792842519365687015.a n = (A197636 (n + 1) : ℚ)

end A197636

/-! ## A197636.P8686596362499493351

`p?[gcd((n+1)², A301316(n+1))]`
-/

namespace A197636.P8686596362499493351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A301316 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A197636.P8686596362499493351

namespace A197636

/-- `p?[gcd((n+1)², A301316(n+1))]` -/
def P8686596362499493351.Spec : Prop :=
  ∀ n, (P8686596362499493351.a n : ℤ) = A197636 (n + 1)

end A197636

/-! ## A197636.P11986033322382889613

`p?[gcd(A014963(n+1)², A301317(n+1))]`
-/

namespace A197636.P11986033322382889613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (n + 1) ^ 2) (A301317 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A197636.P11986033322382889613

namespace A197636

/-- `p?[gcd(A014963(n+1)², A301317(n+1))]` -/
def P11986033322382889613.Spec : Prop :=
  ∀ n, (P11986033322382889613.a n : ℤ) = A197636 (n + 1)

end A197636

/-! ## A197636.P14685469874356919110

`record[A014963(A000040(n+1)*A283149(n+1))]`
-/

namespace A197636.P14685469874356919110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000040 (n + 1) * A283149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197636.P14685469874356919110

namespace A197636

/-- `record[A014963(A000040(n+1)*A283149(n+1))]` -/
def P14685469874356919110.Spec : Prop :=
  ∀ n, P14685469874356919110.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P5400816870777083908

`record[A250406(n+1)+A002068(n+1)]`
-/

namespace A197636.P5400816870777083908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250406 (n + 1) + A002068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197636.P5400816870777083908

namespace A197636

/-- `record[A250406(n+1)+A002068(n+1)]` -/
def P5400816870777083908.Spec : Prop :=
  ∀ n, P5400816870777083908.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P15523028458817610786

`filter[A383578(n+1), A008966(#)]`
-/

namespace A197636.P15523028458817610786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A197636.P15523028458817610786

namespace A197636

/-- `filter[A383578(n+1), A008966(#)]` -/
def P15523028458817610786.Spec : Prop :=
  ∀ n, P15523028458817610786.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P18369051990794478311

`filter[A383578(n+1), A010051(#)]`
-/

namespace A197636.P18369051990794478311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A197636.P18369051990794478311

namespace A197636

/-- `filter[A383578(n+1), A010051(#)]` -/
def P18369051990794478311.Spec : Prop :=
  ∀ n, P18369051990794478311.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P2357311487628742730

`filter[A383578(n+1), A049240(#)]`
-/

namespace A197636.P2357311487628742730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A197636.P2357311487628742730

namespace A197636

/-- `filter[A383578(n+1), A049240(#)]` -/
def P2357311487628742730.Spec : Prop :=
  ∀ n, P2357311487628742730.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P14375178186546128296

`filter[A383578(n+1), A053867(#)]`
-/

namespace A197636.P14375178186546128296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A197636.P14375178186546128296

namespace A197636

/-- `filter[A383578(n+1), A053867(#)]` -/
def P14375178186546128296.Spec : Prop :=
  ∀ n, P14375178186546128296.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P14670884491677584152

`filter[A383578(n+1), A066829(#)]`
-/

namespace A197636.P14670884491677584152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A197636.P14670884491677584152

namespace A197636

/-- `filter[A383578(n+1), A066829(#)]` -/
def P14670884491677584152.Spec : Prop :=
  ∀ n, P14670884491677584152.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P13728990371806313821

`filter[A383578(n+1), A080339(#)]`
-/

namespace A197636.P13728990371806313821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A197636.P13728990371806313821

namespace A197636

/-- `filter[A383578(n+1), A080339(#)]` -/
def P13728990371806313821.Spec : Prop :=
  ∀ n, P13728990371806313821.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P18079790605919210350

`filter[A383578(n+1), A099104(#)]`
-/

namespace A197636.P18079790605919210350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A197636.P18079790605919210350

namespace A197636

/-- `filter[A383578(n+1), A099104(#)]` -/
def P18079790605919210350.Spec : Prop :=
  ∀ n, P18079790605919210350.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P18191296617144045530

`filter[A383578(n+1), A132350(#)]`
-/

namespace A197636.P18191296617144045530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A197636.P18191296617144045530

namespace A197636

/-- `filter[A383578(n+1), A132350(#)]` -/
def P18191296617144045530.Spec : Prop :=
  ∀ n, P18191296617144045530.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P1055484816645285519

`filter[A383578(n+1), A165560(#)]`
-/

namespace A197636.P1055484816645285519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A197636.P1055484816645285519

namespace A197636

/-- `filter[A383578(n+1), A165560(#)]` -/
def P1055484816645285519.Spec : Prop :=
  ∀ n, P1055484816645285519.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P7640250732957008418

`filter[A383578(n+1), A174897(#)]`
-/

namespace A197636.P7640250732957008418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A197636.P7640250732957008418

namespace A197636

/-- `filter[A383578(n+1), A174897(#)]` -/
def P7640250732957008418.Spec : Prop :=
  ∀ n, P7640250732957008418.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P7149179441905308501

`filter[A383578(n+1), A181183(#)]`
-/

namespace A197636.P7149179441905308501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A197636.P7149179441905308501

namespace A197636

/-- `filter[A383578(n+1), A181183(#)]` -/
def P7149179441905308501.Spec : Prop :=
  ∀ n, P7149179441905308501.a n = A197636 (n + 1)

end A197636

/-! ## A197636.P12478549195230868337

`filter[A383578(n+1), A190938(#)]`
-/

namespace A197636.P12478549195230868337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190938 (f1 j).toNat = 1) n)

end

end A197636.P12478549195230868337

namespace A197636

/-- `filter[A383578(n+1), A190938(#)]` -/
def P12478549195230868337.Spec : Prop :=
  ∀ n, P12478549195230868337.a n = A197636 (n + 1)

end A197636

/-!
# A197637: Number of non-Wilson primes <= n.

The programs for A197637, the canonical program `A197637.P7917936694828647143` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197637 has offset 1).

The definition of A197637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197637.P7917936694828647143

`comp[A197636(n+1)+n-1]-n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A197637

/-- `comp[A197636(n+1)+n-1]-n` -/
def P7917936694828647143.Spec : Prop :=
  ∀ n, P7917936694828647143.a n = A197637 (n + 1)

theorem P7917936694828647143.correct : P7917936694828647143.Spec := by
  intro n
  simp only [A197637, Nat.add_sub_cancel]

end A197637

/-! ## A197637.P5210809533292424963

`∑[A000007(A055976(n+1)^A301316(n+1))]`
-/

namespace A197637.P5210809533292424963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.roundAway ((A055976 (n + 1) : ℚ) ^ (A301316 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197637.P5210809533292424963

namespace A197637

/-- `∑[A000007(A055976(n+1)^A301316(n+1))]` -/
def P5210809533292424963.Spec : Prop :=
  ∀ n, P5210809533292424963.a n = A197637 (n + 1)

end A197637

/-! ## A197637.P13604891682532805794

`A000720(n+1)-A300403(A024417(n+1))`
-/

namespace A197637.P13604891682532805794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A300403 (A024417 (n + 1)).toNat

end

end A197637.P13604891682532805794

namespace A197637

/-- `A000720(n+1)-A300403(A024417(n+1))` -/
def P13604891682532805794.Spec : Prop :=
  ∀ n, P13604891682532805794.a n = A197637 (n + 1)

end A197637

/-! ## A197637.P3726574463060154573

`∑[and(A010051(n+1), A385926(n+7))]`
-/

namespace A197637.P3726574463060154573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A385926 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197637.P3726574463060154573

namespace A197637

/-- `∑[and(A010051(n+1), A385926(n+7))]` -/
def P3726574463060154573.Spec : Prop :=
  ∀ n, P3726574463060154573.a n = A197637 (n + 1)

end A197637

/-! ## A197637.P17448040792420139037

`∑[A178226(A010051(n+1)*A053767(n))]`
-/

namespace A197637.P17448040792420139037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A010051 (n + 1) * A053767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197637.P17448040792420139037

namespace A197637

/-- `∑[A178226(A010051(n+1)*A053767(n))]` -/
def P17448040792420139037.Spec : Prop :=
  ∀ n, P17448040792420139037.a n = A197637 (n + 1)

end A197637

/-! ## A197637.P807461668888350899

`∑[A288132(A010051(n+1)*A259200(n)+2)]`
-/

namespace A197637.P807461668888350899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (A010051 (n + 1) * A259200 (n + 18) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197637.P807461668888350899

namespace A197637

/-- `∑[A288132(A010051(n+1)*A259200(n)+2)]` -/
def P807461668888350899.Spec : Prop :=
  ∀ n, P807461668888350899.a n = A197637 (n + 1)

end A197637

/-! ## A197637.P15792192412301958280

`∑[and(A010051(n+1), A084846(n))]`
-/

namespace A197637.P15792192412301958280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A084846 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197637.P15792192412301958280

namespace A197637

/-- `∑[and(A010051(n+1), A084846(n))]` -/
def P15792192412301958280.Spec : Prop :=
  ∀ n, P15792192412301958280.a n = A197637 (n + 1)

end A197637

/-! ## A197637.P11737107801003879657

`∑[A010051(n+1)-A079261(A033457(n))]`
-/

namespace A197637.P11737107801003879657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) - A079261 (A033457 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197637.P11737107801003879657

namespace A197637

/-- `∑[A010051(n+1)-A079261(A033457(n))]` -/
def P11737107801003879657.Spec : Prop :=
  ∀ n, P11737107801003879657.a n = A197637 (n + 1)

end A197637

/-! ## A197637.P6330412687228912265

`∑[A023532(A010051(n+1)*A218643(n+1))]`
-/

namespace A197637.P6330412687228912265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A010051 (n + 1) * A218643 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197637.P6330412687228912265

namespace A197637

/-- `∑[A023532(A010051(n+1)*A218643(n+1))]` -/
def P6330412687228912265.Spec : Prop :=
  ∀ n, P6330412687228912265.a n = A197637 (n + 1)

end A197637

/-! ## A197637.P5755919736388611889

`A000720(n+1)-∑[A010051(A180959(n))]`
-/

namespace A197637.P5755919736388611889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A180959 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197637.P5755919736388611889

namespace A197637

/-- `A000720(n+1)-∑[A010051(A180959(n))]` -/
def P5755919736388611889.Spec : Prop :=
  ∀ n, P5755919736388611889.a n = A197637 (n + 1)

end A197637

/-!
# A197638: GA1 numbers: composite m with G(m) >= G(m/p) for all prime factors p of m, where G(k) = sigma(k)/(k*log(log(k))) and sigma(k) = sum of divisors of k.

The programs for A197638, the canonical program `A197638.P14779992210065469956` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197638 has offset 1).

The definition of A197638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197638.P7100376444259433496

`2*p?[abs(ceil(acot(n-2))-(n+2)-n)]`
-/

namespace A197638.P7100376444259433496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ)⌉ - (n + 2 : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197638.P7100376444259433496

namespace A197638

/-- `2*p?[abs(ceil(acot(n-2))-(n+2)-n)]` -/
def P7100376444259433496.Spec : Prop :=
  ∀ n, P7100376444259433496.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P14779992210065469956

`2*A004139(n+1)-A000038(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A197638

/-- `2*A004139(n+1)-A000038(n)` -/
def P14779992210065469956.Spec : Prop :=
  ∀ n, P14779992210065469956.a n = A197638 (n + 1)

theorem P14779992210065469956.correct : P14779992210065469956.Spec := by
  intro n
  simp only [A197638, Nat.add_sub_cancel]

end A197638

/-! ## A197638.P3513642248055090934

`2*A045319(A065475(n+1))`
-/

namespace A197638.P3513642248055090934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045319 (A065475 (n + 1)).toNat

end

end A197638.P3513642248055090934

namespace A197638

/-- `2*A045319(A065475(n+1))` -/
def P3513642248055090934.Spec : Prop :=
  ∀ n, P3513642248055090934.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P16950263145466965730

`A100484(3%comp[∑[n]]+n)`
-/

namespace A197638.P16950263145466965730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A197638.P16950263145466965730

namespace A197638

/-- `A100484(3%comp[∑[n]]+n)` -/
def P16950263145466965730.Spec : Prop :=
  ∀ n, P16950263145466965730.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P10440192224922960167

`A100484(n--3%comp[∑[n]])`
-/

namespace A197638.P10440192224922960167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 ((n : ℤ) - Int.tmod (-3) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A197638.P10440192224922960167

namespace A197638

/-- `A100484(n--3%comp[∑[n]])` -/
def P10440192224922960167.Spec : Prop :=
  ∀ n, P10440192224922960167.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P10423278851381116387

`2*A000040((n+3)%∑[n+2])`
-/

namespace A197638.P10423278851381116387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 ((n + 3) % (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A197638.P10423278851381116387

namespace A197638

/-- `2*A000040((n+3)%∑[n+2])` -/
def P10423278851381116387.Spec : Prop :=
  ∀ n, P10423278851381116387.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P2468272622026697047

`2*A000040(gcd(n+3, C(2, n+2)))`
-/

namespace A197638.P2468272622026697047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (Nat.gcd (n + 3) (Nat.choose 2 (n + 2)))

end

end A197638.P2468272622026697047

namespace A197638

/-- `2*A000040(gcd(n+3, C(2, n+2)))` -/
def P2468272622026697047.Spec : Prop :=
  ∀ n, P2468272622026697047.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P15110996962652938870

`2*A000040(n+3-C(2, (n+1)²))`
-/

namespace A197638.P15110996962652938870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 3 - Nat.choose 2 ((n + 1) ^ 2))

end

end A197638.P15110996962652938870

namespace A197638

/-- `2*A000040(n+3-C(2, (n+1)²))` -/
def P15110996962652938870.Spec : Prop :=
  ∀ n, P15110996962652938870.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P12798119214827047140

`2*A000040(n+3-floor(2/(2*n+1)))`
-/

namespace A197638.P12798119214827047140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 ((n + 3 : ℤ) - ⌊2 / (2 * n + 1 : ℚ)⌋).toNat

end

end A197638.P12798119214827047140

namespace A197638

/-- `2*A000040(n+3-floor(2/(2*n+1)))` -/
def P12798119214827047140.Spec : Prop :=
  ∀ n, P12798119214827047140.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P8241410224008306692

`A100484(A171463(n+1))`
-/

namespace A197638.P8241410224008306692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (A171463 (n + 1)).toNat

end

end A197638.P8241410224008306692

namespace A197638

/-- `A100484(A171463(n+1))` -/
def P8241410224008306692.Spec : Prop :=
  ∀ n, P8241410224008306692.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P13431836921638318782

`A100484(A040002(n)-1+n)`
-/

namespace A197638.P13431836921638318782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (A040002 n - 1 + (n : ℤ)).toNat

end

end A197638.P13431836921638318782

namespace A197638

/-- `A100484(A040002(n)-1+n)` -/
def P13431836921638318782.Spec : Prop :=
  ∀ n, P13431836921638318782.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P17385292465195738614

`A100484(A158388(n)+2+n)`
-/

namespace A197638.P17385292465195738614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (A158388 n + 2 + (n : ℤ)).toNat

end

end A197638.P17385292465195738614

namespace A197638

/-- `A100484(A158388(n)+2+n)` -/
def P17385292465195738614.Spec : Prop :=
  ∀ n, P17385292465195738614.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P6145632414469978821

`A100484(n-(1-A040002(n)))`
-/

namespace A197638.P6145632414469978821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 ((n : ℤ) - (1 - A040002 n)).toNat

end

end A197638.P6145632414469978821

namespace A197638

/-- `A100484(n-(1-A040002(n)))` -/
def P6145632414469978821.Spec : Prop :=
  ∀ n, P6145632414469978821.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P5599111788839849802

`2*p?[A093515(A323161(2*n+1))]`
-/

namespace A197638.P5599111788839849802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A323161 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197638.P5599111788839849802

namespace A197638

/-- `2*p?[A093515(A323161(2*n+1))]` -/
def P5599111788839849802.Spec : Prop :=
  ∀ n, P5599111788839849802.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P10446903585504072972

`∩[A001747(n+1), A337232(n+1)]`
-/

namespace A197638.P10446903585504072972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197638.P10446903585504072972

namespace A197638

/-- `∩[A001747(n+1), A337232(n+1)]` -/
def P10446903585504072972.Spec : Prop :=
  ∀ n, (P10446903585504072972.a n : ℤ) = A197638 (n + 1)

end A197638

/-! ## A197638.P10473897993687550660

`∩[A062091(n+1), A337232(n+1)]`
-/

namespace A197638.P10473897993687550660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197638.P10473897993687550660

namespace A197638

/-- `∩[A062091(n+1), A337232(n+1)]` -/
def P10473897993687550660.Spec : Prop :=
  ∀ n, (P10473897993687550660.a n : ℤ) = A197638 (n + 1)

end A197638

/-! ## A197638.P13992465766756566850

`record[2*A020639(n+6)]`
-/

namespace A197638.P13992465766756566850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197638.P13992465766756566850

namespace A197638

/-- `record[2*A020639(n+6)]` -/
def P13992465766756566850.Spec : Prop :=
  ∀ n, P13992465766756566850.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P18219319491528879383

`2*A006530(A000040(n+3)-C(2, n+2))`
-/

namespace A197638.P18219319491528879383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (A000040 (n + 3) - (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A197638.P18219319491528879383

namespace A197638

/-- `2*A006530(A000040(n+3)-C(2, n+2))` -/
def P18219319491528879383.Spec : Prop :=
  ∀ n, P18219319491528879383.a n = A197638 (n + 1)

end A197638

/-! ## A197638.P16563155206749123926

`∩[A091376(n+1), A337232(n+1)]`
-/

namespace A197638.P16563155206749123926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197638.P16563155206749123926

namespace A197638

/-- `∩[A091376(n+1), A337232(n+1)]` -/
def P16563155206749123926.Spec : Prop :=
  ∀ n, (P16563155206749123926.a n : ℤ) = A197638 (n + 1)

end A197638

/-!
# A197639: GA2 numbers: n with G(n) >= G(a*n) for all integers a > 0, where G(k) = sigma(k)/(k*log(log(k))) and sigma(k) = sum of divisors of k.

The programs for A197639, there is no canonical definition to state claims against.
-/

/-! ## A197639.P13528252173855878495

`A217660(n+1)+A121373(A033539(n))`
-/

namespace A197639.P13528252173855878495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217660 (n + 1) + A121373 (A033539 n).toNat

end

end A197639.P13528252173855878495

/-! ## A197639.P12693099694158232829

`A295405(A018027(n))+A217660(n+1)`
-/

namespace A197639.P12693099694158232829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (A018027 n).toNat + A217660 (n + 1)

end

end A197639.P12693099694158232829

/-! ## A197639.P15301806185712676503

`∩[A321152(n+1), A004526(A321152(n+5))]`
-/

namespace A197639.P15301806185712676503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A321152 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197639.P15301806185712676503

/-!
# A197640: Numbers not representable as the sum of two coprime, squarefree, composite, positive integers.

The programs for A197640, there is no canonical definition to state claims against.
-/

/-! ## A197640.P296422487976310788

`lt[-a(A198255(n)), 0]` with `a(0)=1`
-/

namespace A197640.P296422487976310788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (A198255 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A197640.P296422487976310788

/-! ## A197640.P12569848739991745852

`eq[0, A197629(n+1)]+1`
-/

namespace A197640.P12569848739991745852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197629 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A197640.P12569848739991745852

/-! ## A197640.P3423463547142032890

`eq[0, A198255(n+1)]+1`
-/

namespace A197640.P3423463547142032890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A197640.P3423463547142032890

/-! ## A197640.P12271941294824557451

`eq[2, A000032(a(A198255(n)))]` with `a(0)=0`
-/

namespace A197640.P12271941294824557451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A198255 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197640.P12271941294824557451

/-! ## A197640.P14718084351807160283

`eq[2, A000038(a(A198255(n)))]` with `a(0)=0`
-/

namespace A197640.P14718084351807160283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000038 (f2 (A198255 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197640.P14718084351807160283

/-! ## A197640.P14035751400712339482

`eq[2, A000031(a(A198255(n)))]` with `a(0)=1`
-/

namespace A197640.P14035751400712339482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000031 (f2 (A198255 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197640.P14035751400712339482

/-! ## A197640.P16313966376637341351

`eq[2, A000034(a(A198255(n)))]` with `a(0)=1`
-/

namespace A197640.P16313966376637341351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000034 (f2 (A198255 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197640.P16313966376637341351

/-! ## A197640.P14098144953596523226

`eq[2, A000037(a(A198255(n)))]` with `a(0)=1`
-/

namespace A197640.P14098144953596523226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000037 (f2 (A198255 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197640.P14098144953596523226

/-! ## A197640.P13539621955128762177

`eq[2, A000040(a(A198255(n)))]` with `a(0)=1`
-/

namespace A197640.P13539621955128762177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A198255 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197640.P13539621955128762177

/-! ## A197640.P14505246748568848131

`eq[4, A000005(a(A198255(n)))]` with `a(0)=6`
-/

namespace A197640.P14505246748568848131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A000005 (f2 (A198255 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197640.P14505246748568848131

/-!
# A197641: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,2,0,2 for x=0,1,2,3,4.

The programs for A197641, there is no canonical definition to state claims against.
-/

/-! ## A197641.P834906366146173588

`A197648(∑[4*n]+1)`
-/

namespace A197641.P834906366146173588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197641.P834906366146173588

/-! ## A197641.P10293209072502648890

`record[gcd(A114327(n), A197648(n+1))]`
-/

namespace A197641.P10293209072502648890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A197648 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197641.P10293209072502648890

/-! ## A197641.P9628700472068320346

`A343609(n)+A197648(A001844(n))`
-/

namespace A197641.P9628700472068320346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 n + A197648 (A001844 n).toNat

end

end A197641.P9628700472068320346

/-! ## A197641.P13238720579685835052

`A063435(n)*A197648(A001844(n))`
-/

namespace A197641.P13238720579685835052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A197648 (A001844 n).toNat

end

end A197641.P13238720579685835052

/-! ## A197641.P4874025372655510240

`A119963(n)*A197648(A001844(n))`
-/

namespace A197641.P4874025372655510240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A197648 (A001844 n).toNat

end

end A197641.P4874025372655510240

/-!
# A197642: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,2,0,2 for x=0,1,2,3,4.

The programs for A197642, there is no canonical definition to state claims against.
-/

/-! ## A197642.P8218044764094090253

`record[ratio[A197648(n+1)]]`
-/

namespace A197642.P8218044764094090253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197642.P8218044764094090253

/-! ## A197642.P7152822051266059254

`A197648(∑[n+1]+2)`
-/

namespace A197642.P7152822051266059254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197642.P7152822051266059254

/-! ## A197642.P14381677335450084726

`record[gcd(A197648(n+1), A258997(n))]`
-/

namespace A197642.P14381677335450084726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197648 (n + 1)) (A258997 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197642.P14381677335450084726

/-! ## A197642.P17679634474518225854

`record[A197648(A133263(A103221(n)))]`
-/

namespace A197642.P17679634474518225854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A133263 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197642.P17679634474518225854

/-! ## A197642.P1670428915863480381

`or(A000007(n), A197648(A133263(n+1)))`
-/

namespace A197642.P1670428915863480381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A197648 (A133263 (n + 1)).toNat)

end

end A197642.P1670428915863480381

/-!
# A197643: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,2,0,2 for x=0,1,2,3,4.

The programs for A197643, there is no canonical definition to state claims against.
-/

/-! ## A197643.P7492007148142473809

`A197648(∑[n+2]+4)`
-/

namespace A197643.P7492007148142473809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197643.P7492007148142473809

/-! ## A197643.P11385692008793252709

`A063435(n)*A197648(A167614(n+1))`
-/

namespace A197643.P11385692008793252709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A197648 (A167614 (n + 1)).toNat

end

end A197643.P11385692008793252709

/-! ## A197643.P6981206003657233948

`A197648(A167614(n+1))%A198687(n)`
-/

namespace A197643.P6981206003657233948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197648 (A167614 (n + 1)).toNat) (A198687 n)

end

end A197643.P6981206003657233948

/-! ## A197643.P4869550773001968354

`gcd(A058348(n), A197648(A167614(n+1)))`
-/

namespace A197643.P4869550773001968354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058348 n) (A197648 (A167614 (n + 1)).toNat)

end

end A197643.P4869550773001968354

/-! ## A197643.P17587382468332055319

`lcm(A033999(n), A197648(A167614(n+1)))`
-/

namespace A197643.P17587382468332055319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197648 (A167614 (n + 1)).toNat)

end

end A197643.P17587382468332055319

/-!
# A197644: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,2,0,2 for x=0,1,2,3,4.

The programs for A197644, there is no canonical definition to state claims against.
-/

/-! ## A197644.P11807820413538070576

`A197648(A141214(n)+7)`
-/

namespace A197644.P11807820413538070576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A141214 n + 7).toNat

end

end A197644.P11807820413538070576

/-! ## A197644.P9995194441865048388

`A197648(A055999(n)+10)`
-/

namespace A197644.P9995194441865048388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A055999 n + 10).toNat

end

end A197644.P9995194441865048388

/-! ## A197644.P2780079024748032518

`A197648(A167614(n+2)+1)`
-/

namespace A197644.P2780079024748032518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A167614 (n + 2) + 1).toNat

end

end A197644.P2780079024748032518

/-! ## A197644.P18251790195006639686

`A197648(eq[5, A131818(n+1)])`
-/

namespace A197644.P18251790195006639686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197644.P18251790195006639686

/-! ## A197644.P1143305588835984281

`A197648(Δ[A264443(n)-n²])`
-/

namespace A197644.P1143305588835984281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (f1 (n + 1) - f1 n).toNat

end

end A197644.P1143305588835984281

/-!
# A197645: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,2,0,2 for x=0,1,2,3,4.

The programs for A197645, there is no canonical definition to state claims against.
-/

/-! ## A197645.P13173420977751258242

`A197648(A155212(n)+13)`
-/

namespace A197645.P13173420977751258242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A155212 n + 13).toNat

end

end A197645.P13173420977751258242

/-! ## A197645.P7064590179884717017

`A197648(A056000(n)+15)`
-/

namespace A197645.P7064590179884717017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A056000 n + 15).toNat

end

end A197645.P7064590179884717017

/-! ## A197645.P5527694064429331194

`A197648(eq[6, A131818(n+1)])`
-/

namespace A197645.P5527694064429331194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197645.P5527694064429331194

/-! ## A197645.P2741450706996179919

`A197648(Δ[A264443(n)])`
-/

namespace A197645.P2741450706996179919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (f1 (n + 1) - f1 n).toNat

end

end A197645.P2741450706996179919

/-! ## A197645.P16275448212759292699

`A197648(A374005(n+1))`
-/

namespace A197645.P16275448212759292699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A374005 (n + 1)).toNat

end

end A197645.P16275448212759292699

/-!
# A197646: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,2,0,2 for x=0,1,2,3,4.

The programs for A197646, there is no canonical definition to state claims against.
-/

/-! ## A197646.P17245871468413176341

`A197648(A056115(n)+21)`
-/

namespace A197646.P17245871468413176341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A056115 n + 21).toNat

end

end A197646.P17245871468413176341

/-! ## A197646.P1864424674759714655

`A197648(eq[7, A131818(n+1)])`
-/

namespace A197646.P1864424674759714655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197646.P1864424674759714655

/-! ## A197646.P7666964449540004944

`A197648(A374007(n+1))`
-/

namespace A197646.P7666964449540004944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A374007 (n + 1)).toNat

end

end A197646.P7666964449540004944

/-! ## A197646.P936315120777128101

`A197648(eq[5, A193592(n)])`
-/

namespace A197646.P936315120777128101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197646.P936315120777128101

/-! ## A197646.P6643504303789460784

`A197648(eq[16, A057728(n+1)])`
-/

namespace A197646.P6643504303789460784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197646.P6643504303789460784

/-!
# A197647: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,2,0,2 for x=0,1,2,3,4.

The programs for A197647, there is no canonical definition to state claims against.
-/

/-! ## A197647.P13228927688577034919

`A197648(eq[8, A131818(n+1)])`
-/

namespace A197647.P13228927688577034919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197647.P13228927688577034919

/-! ## A197647.P9150210509768391875

`A197648(A374008(n+1))`
-/

namespace A197647.P9150210509768391875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A374008 (n + 1)).toNat

end

end A197647.P9150210509768391875

/-! ## A197647.P1488200041564416044

`A197648(A055999(n+4))`
-/

namespace A197647.P1488200041564416044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A055999 (n + 4)).toNat

end

end A197647.P1488200041564416044

/-! ## A197647.P5257858586929132814

`A197648(eq[6, A193592(n)])`
-/

namespace A197647.P5257858586929132814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197647.P5257858586929132814

/-! ## A197647.P8935153041398178518

`A197648(A155212(n+3)+2)`
-/

namespace A197647.P8935153041398178518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A155212 (n + 3) + 2).toNat

end

end A197647.P8935153041398178518

/-!
# A197648: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,2,0,2 for x=0,1,2,3,4.

The programs for A197648, there is no canonical definition to state claims against.
-/

/-! ## A197648.P1191061880017136924

`A028237(A108558(n))`
-/

namespace A197648.P1191061880017136924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028237 (A108558 n).toNat

end

end A197648.P1191061880017136924

/-! ## A197648.P3994607261510709084

`A121708(A045912(n))`
-/

namespace A197648.P3994607261510709084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121708 (A045912 n).toNat

end

end A197648.P3994607261510709084

/-! ## A197648.P11440056814657895648

`A072775(A157221(n))`
-/

namespace A197648.P11440056814657895648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072775 (A157221 n).toNat

end

end A197648.P11440056814657895648

/-! ## A197648.P14610184335928170097

`A056670(A176627(n))`
-/

namespace A197648.P14610184335928170097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056670 (A176627 n).toNat

end

end A197648.P14610184335928170097

/-! ## A197648.P6506294237792454789

`A167974(A066094(n))`
-/

namespace A197648.P6506294237792454789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167974 (A066094 n).toNat

end

end A197648.P6506294237792454789

/-!
# A197649: a(n) = Sum_{k=0..n} k*Fibonacci(2*k).

The programs for A197649, the canonical program `A197649.P15100077333783278233` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197649 has offset 0).

The definition of A197649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197649.P15100077333783278233

`n*A000045(2*n+1)-A000045(2*n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A197649

/-- `n*A000045(2*n+1)-A000045(2*n)` -/
def P15100077333783278233.Spec : Prop :=
  ∀ n, P15100077333783278233.a n = A197649 n

theorem P15100077333783278233.correct : P15100077333783278233.Spec := by
  intro n
  simp only [A197649]

end A197649

/-! ## A197649.P17405929412100407628

`∑[n*record[a(n-2)-a(n-1)]]` with `a(0)=0, a(1)=-1`
-/

namespace A197649.P17405929412100407628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P17405929412100407628

namespace A197649

/-- `∑[n*record[a(n-2)-a(n-1)]]` -/
def P17405929412100407628.Spec : Prop :=
  ∀ n, P17405929412100407628.a n = A197649 n

end A197649

/-! ## A197649.P4755155713877959188

`∑[A317408(n)]`
-/

namespace A197649.P4755155713877959188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P4755155713877959188

namespace A197649

/-- `∑[A317408(n)]` -/
def P4755155713877959188.Spec : Prop :=
  ∀ n, P4755155713877959188.a n = A197649 n

end A197649

/-! ## A197649.P17899489172569401361

`∑[n*A001906(n)]`
-/

namespace A197649.P17899489172569401361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P17899489172569401361

namespace A197649

/-- `∑[n*A001906(n)]` -/
def P17899489172569401361.Spec : Prop :=
  ∀ n, P17899489172569401361.a n = A197649 n

end A197649

/-! ## A197649.P9352056736760099434

`∑[n*A088305(n)]`
-/

namespace A197649.P9352056736760099434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A088305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P9352056736760099434

namespace A197649

/-- `∑[n*A088305(n)]` -/
def P9352056736760099434.Spec : Prop :=
  ∀ n, P9352056736760099434.a n = A197649 n

end A197649

/-! ## A197649.P6781347017906176869

`∑[∑[A377857(n+2)]]`
-/

namespace A197649.P6781347017906176869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377857 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P6781347017906176869

namespace A197649

/-- `∑[∑[A377857(n+2)]]` -/
def P6781347017906176869.Spec : Prop :=
  ∀ n, P6781347017906176869.a n = A197649 n

end A197649

/-! ## A197649.P12416245554888844215

`∑[n*Δ[A001519(n)]]`
-/

namespace A197649.P12416245554888844215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P12416245554888844215

namespace A197649

/-- `∑[n*Δ[A001519(n)]]` -/
def P12416245554888844215.Spec : Prop :=
  ∀ n, P12416245554888844215.a n = A197649 n

end A197649

/-! ## A197649.P15690222774270090157

`∑[n*Δ[A032908(n)]]`
-/

namespace A197649.P15690222774270090157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P15690222774270090157

namespace A197649

/-- `∑[n*Δ[A032908(n)]]` -/
def P15690222774270090157.Spec : Prop :=
  ∀ n, P15690222774270090157.a n = A197649 n

end A197649

/-! ## A197649.P15481806218253895185

`∑[A045925(2*n)/2]`
-/

namespace A197649.P15481806218253895185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045925 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P15481806218253895185

namespace A197649

/-- `∑[A045925(2*n)/2]` -/
def P15481806218253895185.Spec : Prop :=
  ∀ n, P15481806218253895185.a n = (A197649 n : ℚ)

end A197649

/-! ## A197649.P4582746045554709021

`∑[n*(A052925(n)-1)]`
-/

namespace A197649.P4582746045554709021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052925 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P4582746045554709021

namespace A197649

/-- `∑[n*(A052925(n)-1)]` -/
def P4582746045554709021.Spec : Prop :=
  ∀ n, P4582746045554709021.a n = A197649 n

end A197649

/-! ## A197649.P14207813056857625266

`∑[n*(A055588(n)-1)]`
-/

namespace A197649.P14207813056857625266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A055588 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P14207813056857625266

namespace A197649

/-- `∑[n*(A055588(n)-1)]` -/
def P14207813056857625266.Spec : Prop :=
  ∀ n, P14207813056857625266.a n = A197649 n

end A197649

/-! ## A197649.P15298427506359434753

`∑[n*(A249450(n)+2)]`
-/

namespace A197649.P15298427506359434753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A249450 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P15298427506359434753

namespace A197649

/-- `∑[n*(A249450(n)+2)]` -/
def P15298427506359434753.Spec : Prop :=
  ∀ n, P15298427506359434753.a n = A197649 n

end A197649

/-! ## A197649.P1194907133874297995

`∑[n*A000045(2*n)]`
-/

namespace A197649.P1194907133874297995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P1194907133874297995

namespace A197649

/-- `∑[n*A000045(2*n)]` -/
def P1194907133874297995.Spec : Prop :=
  ∀ n, P1194907133874297995.a n = A197649 n

end A197649

/-! ## A197649.P15243105022186973830

`∑[n*A005013(2*n)]`
-/

namespace A197649.P15243105022186973830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005013 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P15243105022186973830

namespace A197649

/-- `∑[n*A005013(2*n)]` -/
def P15243105022186973830.Spec : Prop :=
  ∀ n, P15243105022186973830.a n = A197649 n

end A197649

/-! ## A197649.P11455011175560274226

`∑[n*A094966(2*n)]`
-/

namespace A197649.P11455011175560274226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A094966 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P11455011175560274226

namespace A197649

/-- `∑[n*A094966(2*n)]` -/
def P11455011175560274226.Spec : Prop :=
  ∀ n, P11455011175560274226.a n = A197649 n

end A197649

/-! ## A197649.P16229881375234767696

`∑[n*A053602(4*n)]`
-/

namespace A197649.P16229881375234767696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053602 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P16229881375234767696

namespace A197649

/-- `∑[n*A053602(4*n)]` -/
def P16229881375234767696.Spec : Prop :=
  ∀ n, P16229881375234767696.a n = A197649 n

end A197649

/-! ## A197649.P16704940277195930354

`∑[n*(A054452(n)+n)]`
-/

namespace A197649.P16704940277195930354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A054452 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P16704940277195930354

namespace A197649

/-- `∑[n*(A054452(n)+n)]` -/
def P16704940277195930354.Spec : Prop :=
  ∀ n, P16704940277195930354.a n = A197649 n

end A197649

/-! ## A197649.P15993459557195401247

`∑[abs(n*A236191(2*n))]`
-/

namespace A197649.P15993459557195401247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A236191 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P15993459557195401247

namespace A197649

/-- `∑[abs(n*A236191(2*n))]` -/
def P15993459557195401247.Spec : Prop :=
  ∀ n, P15993459557195401247.a n = A197649 n

end A197649

/-! ## A197649.P13808474883745072280

`∑[abs(n*A333378(2*n))]`
-/

namespace A197649.P13808474883745072280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A333378 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P13808474883745072280

namespace A197649

/-- `∑[abs(n*A333378(2*n))]` -/
def P13808474883745072280.Spec : Prop :=
  ∀ n, P13808474883745072280.a n = A197649 n

end A197649

/-! ## A197649.P2343391556010877919

`∑[n*A108362(2*n+1)]`
-/

namespace A197649.P2343391556010877919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108362 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197649.P2343391556010877919

namespace A197649

/-- `∑[n*A108362(2*n+1)]` -/
def P2343391556010877919.Spec : Prop :=
  ∀ n, P2343391556010877919.a n = A197649 n

end A197649

/-!
# A197652: Numbers that are congruent to 0 or 1 mod 10.

The programs for A197652, the canonical program `A197652.P3108215014647559544` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197652 has offset 1).

The definition of A197652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197652.P3108215014647559544

`a(n-2)+10` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197652

/-- `a(n-2)+10` -/
def P3108215014647559544.Spec : Prop :=
  ∀ n, (P3108215014647559544.a n : ℤ) = A197652 (n + 1)

theorem P3108215014647559544.correct : P3108215014647559544.Spec := by
  intro n
  simp only [A197652, Nat.add_sub_cancel]

end A197652

/-! ## A197652.P17514566460977128540

`5*(n+1)-7-2*(-1)^(n+1)`
-/

namespace A197652.P17514566460977128540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - 7 - 2 * (-1) ^ (n + 1)

end

end A197652.P17514566460977128540

namespace A197652

/-- `5*(n+1)-7-2*(-1)^(n+1)` -/
def P17514566460977128540.Spec : Prop :=
  ∀ n, P17514566460977128540.a n = A197652 (n + 1)

theorem P17514566460977128540.correct : P17514566460977128540.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A197652, Nat.add_sub_cancel, A197652.P17514566460977128540.a, A197652.P3108215014647559544.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A197652, Nat.add_sub_cancel, A197652.P17514566460977128540.a, A197652.P3108215014647559544.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A197652

/-! ## A197652.P16577640095321257942

`record[n/(n%10)!]`
-/

namespace A197652.P16577640095321257942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (n % 10) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197652.P16577640095321257942

namespace A197652

/-- `record[n/(n%10)!]` -/
def P16577640095321257942.Spec : Prop :=
  ∀ n, P16577640095321257942.a n = (A197652 (n + 1) : ℚ)

end A197652

/-! ## A197652.P5186850266619211437

`∑[C(9, a(n-1))]` with `a(0)=0`
-/

namespace A197652.P5186850266619211437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 9 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P5186850266619211437

namespace A197652

/-- `∑[C(9, a(n-1))]` -/
def P5186850266619211437.Spec : Prop :=
  ∀ n, (P5186850266619211437.a n : ℤ) = A197652 (n + 1)

end A197652

/-! ## A197652.P15166744998744169259

`∑[10-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A197652.P15166744998744169259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P15166744998744169259

namespace A197652

/-- `∑[10-a(n-1)]` -/
def P15166744998744169259.Spec : Prop :=
  ∀ n, P15166744998744169259.a n = A197652 (n + 1)

end A197652

/-! ## A197652.P3941194112316945337

`∑[floor(9^((n-1)%2))]`
-/

namespace A197652.P3941194112316945337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P3941194112316945337

namespace A197652

/-- `∑[floor(9^((n-1)%2))]` -/
def P3941194112316945337.Spec : Prop :=
  ∀ n, P3941194112316945337.a n = A197652 (n + 1)

end A197652

/-! ## A197652.P6762471389507883052

`∑[∑[ogf((x+9x^2)/(1+x))]]`
-/

namespace A197652.P6762471389507883052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 9] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P6762471389507883052

namespace A197652

/-- `∑[∑[ogf((x+9x^2)/(1+x))]]` -/
def P6762471389507883052.Spec : Prop :=
  ∀ n, P6762471389507883052.a n = A197652 (n + 1)

end A197652

/-! ## A197652.P1503284555812562321

`ogf((x+9x^2)/(1-x-x^2+x^3))`
-/

namespace A197652.P1503284555812562321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 9] [1, -1, -1, 1] n

end

end A197652.P1503284555812562321

namespace A197652

/-- `ogf((x+9x^2)/(1-x-x^2+x^3))` -/
def P1503284555812562321.Spec : Prop :=
  ∀ n, P1503284555812562321.a n = A197652 (n + 1)

end A197652

/-! ## A197652.P9475842427773457364

`∑[and(3, comp[2*(n+1)])²]`
-/

namespace A197652.P9475842427773457364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P9475842427773457364

namespace A197652

/-- `∑[and(3, comp[2*(n+1)])²]` -/
def P9475842427773457364.Spec : Prop :=
  ∀ n, (P9475842427773457364.a n : ℤ) = A197652 (n + 1)

end A197652

/-! ## A197652.P6083993154098125265

`∑[(3^a(∑[(-1)^n]))²]` with `a(0)=0`
-/

namespace A197652.P6083993154098125265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (3 ^ f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P6083993154098125265

namespace A197652

/-- `∑[(3^a(∑[(-1)^n]))²]` -/
def P6083993154098125265.Spec : Prop :=
  ∀ n, (P6083993154098125265.a n : ℤ) = A197652 (n + 1)

end A197652

/-! ## A197652.P5995815272658670329

`record[5*(n-3)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A197652.P5995815272658670329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  5 * ((n : ℤ) - 3) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197652.P5995815272658670329

namespace A197652

/-- `record[5*(n-3)-a(n-2)]` -/
def P5995815272658670329.Spec : Prop :=
  ∀ n, P5995815272658670329.a n = A197652 (n + 1)

end A197652

/-! ## A197652.P1183706259816980871

`record[2*n+1-((2*n)%10)!]`
-/

namespace A197652.P1183706259816980871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.factorial (2 * n % 10) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197652.P1183706259816980871

namespace A197652

/-- `record[2*n+1-((2*n)%10)!]` -/
def P1183706259816980871.Spec : Prop :=
  ∀ n, P1183706259816980871.a n = A197652 (n + 1)

end A197652

/-! ## A197652.P14617231347513288988

`3*(4-(2-a(n-2))/3)` with `a(0)=0, a(1)=1`
-/

namespace A197652.P14617231347513288988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (4 - (2 - a (n - 2)) / 3)

end

end A197652.P14617231347513288988

namespace A197652

/-- `3*(4-(2-a(n-2))/3)` -/
def P14617231347513288988.Spec : Prop :=
  ∀ n, P14617231347513288988.a n = (A197652 (n + 1) : ℚ)

end A197652

/-! ## A197652.P12454497199615649269

`∑[dr(A033046(n))]`
-/

namespace A197652.P12454497199615649269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033046 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P12454497199615649269

namespace A197652

/-- `∑[dr(A033046(n))]` -/
def P12454497199615649269.Spec : Prop :=
  ∀ n, (P12454497199615649269.a n : ℤ) = A197652 (n + 1)

end A197652

/-! ## A197652.P10370203127161980413

`∑[dr(A195042(n))]`
-/

namespace A197652.P10370203127161980413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A195042 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P10370203127161980413

namespace A197652

/-- `∑[dr(A195042(n))]` -/
def P10370203127161980413.Spec : Prop :=
  ∀ n, (P10370203127161980413.a n : ℤ) = A197652 (n + 1)

end A197652

/-! ## A197652.P10940760588420349183

`∑[dr(A195147(n))]`
-/

namespace A197652.P10940760588420349183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A195147 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P10940760588420349183

namespace A197652

/-- `∑[dr(A195147(n))]` -/
def P10940760588420349183.Spec : Prop :=
  ∀ n, (P10940760588420349183.a n : ℤ) = A197652 (n + 1)

end A197652

/-! ## A197652.P15862857720287621589

`∑[dr(A197352(n))]`
-/

namespace A197652.P15862857720287621589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A197352 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P15862857720287621589

namespace A197652

/-- `∑[dr(A197352(n))]` -/
def P15862857720287621589.Spec : Prop :=
  ∀ n, (P15862857720287621589.a n : ℤ) = A197652 (n + 1)

end A197652

/-! ## A197652.P4559695912888576682

`∑[dr(A342615(n))]`
-/

namespace A197652.P4559695912888576682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A342615 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P4559695912888576682

namespace A197652

/-- `∑[dr(A342615(n))]` -/
def P4559695912888576682.Spec : Prop :=
  ∀ n, (P4559695912888576682.a n : ℤ) = A197652 (n + 1)

end A197652

/-! ## A197652.P6545012938872434851

`∑[(3-A040008(n))²]`
-/

namespace A197652.P6545012938872434851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A040008 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P6545012938872434851

namespace A197652

/-- `∑[(3-A040008(n))²]` -/
def P6545012938872434851.Spec : Prop :=
  ∀ n, P6545012938872434851.a n = A197652 (n + 1)

end A197652

/-! ## A197652.P13009082428402192934

`∑[dr(A090570(n+1))]`
-/

namespace A197652.P13009082428402192934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A090570 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197652.P13009082428402192934

namespace A197652

/-- `∑[dr(A090570(n+1))]` -/
def P13009082428402192934.Spec : Prop :=
  ∀ n, (P13009082428402192934.a n : ℤ) = A197652 (n + 1)

end A197652

/-!
# A197654: Triangle by rows T(n,k), showing the number of meanders with length 5(n+1) and containing 5(k+1) L's and 5(n-k) R's, where L's and R's denote arcs of equal length and a central angle of 72 degrees which are positively or negatively oriented.

The programs for A197654, there is no canonical definition to state claims against.
-/

/-! ## A197654.P6939757486524331959

`C(A308493(A003586(2*n+3)), A341969(2*(n+2)))`
-/

namespace A197654.P6939757486524331959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A308493 (A003586 (2 * n + 3)).toNat).toNat (A341969 (2 * (n + 2))).toNat

end

end A197654.P6939757486524331959

/-!
# A197655: Triangle by rows T(n,k), showing the number of meanders with length (n+1)*6 and containing (k+1)*6 Ls and (n-k)*6 Rs, where Ls and Rs denote arcs of equal length and a central angle of 60 degrees which are positively or negatively oriented.

The programs for A197655, there is no canonical definition to state claims against.
-/

/-! ## A197655.P4602617248941271534

`9*A118904(a(n-2))` with `a(0)=1, a(1)=6, a(2)=1, a(3)=63`
-/

namespace A197655.P4602617248941271534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 1, 63] fun n a =>
  9 * A118904 (a (n - 2)).toNat

end

end A197655.P4602617248941271534

/-!
# A197656: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,0,1,2,2,0 for x=0,1,2,3,4,5,6.

The programs for A197656, there is no canonical definition to state claims against.
-/

/-! ## A197656.P7455827099615330636

`A265897(A065163(n+2))-n`
-/

namespace A197656.P7455827099615330636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265897 (A065163 (n + 2)).toNat - (n : ℤ)

end

end A197656.P7455827099615330636

/-!
# A197657: Row sums of A194595.

The programs for A197657, there is no canonical definition to state claims against.
-/

/-! ## A197657.P13622579331308524998

`A141147(n+1)/2`
-/

namespace A197657.P13622579331308524998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141147 (n + 1) : ℚ) / 2

end

end A197657.P13622579331308524998

/-! ## A197657.P1315363626473713630

`A110707(n+1)/6`
-/

namespace A197657.P1315363626473713630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110707 (n + 1) : ℚ) / 6

end

end A197657.P1315363626473713630

/-! ## A197657.P5754228916066612653

`(A000172(n)+A000172(n+1))/3`
-/

namespace A197657.P5754228916066612653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000172 n + A000172 (n + 1) : ℚ) / 3

end

end A197657.P5754228916066612653

/-! ## A197657.P8547428844855331352

`2*A181067(n+1)-A000172(n)`
-/

namespace A197657.P8547428844855331352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181067 (n + 1) - A000172 n

end

end A197657.P8547428844855331352

/-! ## A197657.P13484931523416992808

`sqrt(A209352(n+1))`
-/

namespace A197657.P13484931523416992808
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A209352 (n + 1) : ℝ)

end

end A197657.P13484931523416992808

/-!
# A197658: Smallest k such that i^k = i mod n for each i in [0..n-1], or 0 if no such k exists.

The programs for A197658, there is no canonical definition to state claims against.
-/

/-! ## A197658.P7592341567376379462

`abs(A008683(n+2))*(A002322(n+2)+1)`
-/

namespace A197658.P7592341567376379462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 2)| * (A002322 (n + 2) + 1)

end

end A197658.P7592341567376379462

/-! ## A197658.P2977143847497733508

`(A345046(n+2)+1)*A008966(n+2)`
-/

namespace A197658.P2977143847497733508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345046 (n + 2) + 1) * A008966 (n + 2)

end

end A197658.P2977143847497733508

/-! ## A197658.P15249586082218679850

`abs(A008683(n+2)*A263027(n+2))`
-/

namespace A197658.P15249586082218679850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 2) * A263027 (n + 2)|

end

end A197658.P15249586082218679850

/-! ## A197658.P10925164511748682394

`A069158(n+2)²*A263027(n+2)`
-/

namespace A197658.P10925164511748682394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 2) ^ 2 * A263027 (n + 2)

end

end A197658.P10925164511748682394

/-! ## A197658.P8970801819642314730

`Δ[A107079(n+2)]*A263027(n+2)`
-/

namespace A197658.P8970801819642314730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A263027 (n + 2)

end

end A197658.P8970801819642314730

/-! ## A197658.P5721798601920948710

`(A002322(n+2)+1)*A008966(n+2)`
-/

namespace A197658.P5721798601920948710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 2) + 1) * A008966 (n + 2)

end

end A197658.P5721798601920948710

/-! ## A197658.P1675669369556632988

`lcm(A002322(n+2)+1, A008683(n+2))`
-/

namespace A197658.P1675669369556632988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002322 (n + 2) + 1) (A008683 (n + 2))

end

end A197658.P1675669369556632988

/-! ## A197658.P9829284409580023686

`A008966(n+2)*A141310(A002322(n+2))`
-/

namespace A197658.P9829284409580023686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 2) * A141310 (A002322 (n + 2)).toNat

end

end A197658.P9829284409580023686

/-! ## A197658.P17205506676890758036

`A008683(A348049(n+2))*A263027(n+2)`
-/

namespace A197658.P17205506676890758036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A348049 (n + 2)).toNat * A263027 (n + 2)

end

end A197658.P17205506676890758036

/-! ## A197658.P10782527797718755517

`A276976(A096226(n+2)²)`
-/

namespace A197658.P10782527797718755517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (A096226 (n + 2) ^ 2).toNat

end

end A197658.P10782527797718755517

/-!
# A197659: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,5,0,0,5,1 for x=0,1,2,3,4,5,6.

The programs for A197659, there is no canonical definition to state claims against.
-/

/-! ## A197659.P13436979644213423356

`A162730(a(n-1))-n` with `a(0)=1, a(1)=1`
-/

namespace A197659.P13436979644213423356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A162730 (a (n - 1)).toNat - (n : ℤ)

end

end A197659.P13436979644213423356

/-! ## A197659.P1272184894214179243

`A178210(A149340(n))`
-/

namespace A197659.P1272184894214179243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A149340 n).toNat

end

end A197659.P1272184894214179243

/-!
# A197660: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,6,6,3,0,5,0 for x=0,1,2,3,4,5,6.

The programs for A197660, there is no canonical definition to state claims against.
-/

/-! ## A197660.P1850135517679906617

`A120243(A133316(n))+A007678(n+1)`
-/

namespace A197660.P1850135517679906617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120243 (A133316 n).toNat + A007678 (n + 1)

end

end A197660.P1850135517679906617

/-! ## A197660.P1950712131049420633

`A288927(A129432(n+1))-A129432(n+1)`
-/

namespace A197660.P1950712131049420633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288927 (A129432 (n + 1)).toNat - A129432 (n + 1)

end

end A197660.P1950712131049420633

/-!
# A197661: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,2,2,3,2,1 for x=0,1,2,3,4,5,6.

The programs for A197661, there is no canonical definition to state claims against.
-/

/-! ## A197661.P4421111893221923284

`A000224(A363104(n))+n`
-/

namespace A197661.P4421111893221923284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A363104 n).toNat + (n : ℤ)

end

end A197661.P4421111893221923284

/-!
# A197662: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,3,0,1,2,0,2 for x=0,1,2,3,4,5,6.

The programs for A197662, there is no canonical definition to state claims against.
-/

/-! ## A197662.P3767097870902135290

`A217814(n)+A108602(A217806(n+1))`
-/

namespace A197662.P3767097870902135290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217814 n + A108602 (A217806 (n + 1)).toNat

end

end A197662.P3767097870902135290

/-!
# A197663: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,3,5,1,5,0,0 for x=0,1,2,3,4,5,6.

The programs for A197663, there is no canonical definition to state claims against.
-/

/-! ## A197663.P15416710421124749865

`A215800(A149567(n))`
-/

namespace A197663.P15416710421124749865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (A149567 n).toNat

end

end A197663.P15416710421124749865

/-!
# A197664: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,1,2,2,0,1 for x=0,1,2,3,4,5,6.

The programs for A197664, there is no canonical definition to state claims against.
-/

/-! ## A197664.P2487593370348332018

`A013939(A006549(2*(n+1)))+n`
-/

namespace A197664.P2487593370348332018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A006549 (2 * (n + 1))).toNat + (n : ℤ)

end

end A197664.P2487593370348332018

/-!
# A197665: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,0,1,0,1 for x=0,1,2,3,4.

The programs for A197665, there is no canonical definition to state claims against.
-/

/-! ## A197665.P8339522089098093864

`A197672(∑[4*n]+1)`
-/

namespace A197665.P8339522089098093864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197665.P8339522089098093864

/-! ## A197665.P8726848767908363059

`or(1, A197672(A001844(n)))`
-/

namespace A197665.P8726848767908363059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197672 (A001844 n).toNat)

end

end A197665.P8726848767908363059

/-! ## A197665.P2518707627069380076

`record[A197672(Δ[A235355(n)])]`
-/

namespace A197665.P2518707627069380076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197665.P2518707627069380076

/-! ## A197665.P9760078930150326975

`record[A197672(A330613(n+1))]`
-/

namespace A197665.P9760078930150326975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197665.P9760078930150326975

/-!
# A197666: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,0,1 for x=0,1,2,3,4.

The programs for A197666, there is no canonical definition to state claims against.
-/

/-! ## A197666.P6783749004988344148

`A197672(∑[n+1]+2)`
-/

namespace A197666.P6783749004988344148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197666.P6783749004988344148

/-! ## A197666.P8021907711169629246

`record[A197672(A133263(A008624(n)))]`
-/

namespace A197666.P8021907711169629246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A133263 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197666.P8021907711169629246

/-! ## A197666.P12028162830870095479

`record[A197672(A133263(A028242(n)))]`
-/

namespace A197666.P12028162830870095479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197666.P12028162830870095479

/-! ## A197666.P14305463752215543420

`A197672(A133263(n+1))%A042008(n)`
-/

namespace A197666.P14305463752215543420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197672 (A133263 (n + 1)).toNat) (A042008 n)

end

end A197666.P14305463752215543420

/-! ## A197666.P7026190426988639121

`or(A000007(n), A197672(A133263(n+1)))`
-/

namespace A197666.P7026190426988639121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A197672 (A133263 (n + 1)).toNat)

end

end A197666.P7026190426988639121

/-!
# A197667: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,0,1 for x=0,1,2,3,4.

The programs for A197667, there is no canonical definition to state claims against.
-/

/-! ## A197667.P16579079459946637591

`A197672(∑[n+2]+4)`
-/

namespace A197667.P16579079459946637591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197667.P16579079459946637591

/-! ## A197667.P17180605680436835020

`A197672(A167614(n+1))+A185284(n)`
-/

namespace A197667.P17180605680436835020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A167614 (n + 1)).toNat + A185284 n

end

end A197667.P17180605680436835020

/-! ## A197667.P2633112988095989550

`A197672(A167614(n+1))%A017550(n)`
-/

namespace A197667.P2633112988095989550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197672 (A167614 (n + 1)).toNat) (A017550 n)

end

end A197667.P2633112988095989550

/-! ## A197667.P578476455004070704

`lcm(A054977(n), A197672(A167614(n+1)))`
-/

namespace A197667.P578476455004070704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A197672 (A167614 (n + 1)).toNat)

end

end A197667.P578476455004070704

/-! ## A197667.P14470397783954975805

`A197672(A167614(n+1))+A034530(n+1)`
-/

namespace A197667.P14470397783954975805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A167614 (n + 1)).toNat + A034530 (n + 1)

end

end A197667.P14470397783954975805

/-!
# A197668: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,0,1 for x=0,1,2,3,4.

The programs for A197668, there is no canonical definition to state claims against.
-/

/-! ## A197668.P8396136831257705451

`A197672(A374004(n+1))`
-/

namespace A197668.P8396136831257705451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A374004 (n + 1)).toNat

end

end A197668.P8396136831257705451

/-! ## A197668.P11820947506396262530

`A197672(A141214(n)+7)`
-/

namespace A197668.P11820947506396262530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A141214 n + 7).toNat

end

end A197668.P11820947506396262530

/-! ## A197668.P8182030338429333524

`A197672(A052905(n)+9)`
-/

namespace A197668.P8182030338429333524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A052905 n + 9).toNat

end

end A197668.P8182030338429333524

/-! ## A197668.P7124595822931360910

`A197672(A055999(n)+10)`
-/

namespace A197668.P7124595822931360910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A055999 n + 10).toNat

end

end A197668.P7124595822931360910

/-! ## A197668.P14384243819258019477

`A197672(A167614(n+2)+1)`
-/

namespace A197668.P14384243819258019477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A167614 (n + 2) + 1).toNat

end

end A197668.P14384243819258019477

/-!
# A197669: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,0,1 for x=0,1,2,3,4.

The programs for A197669, there is no canonical definition to state claims against.
-/

/-! ## A197669.P11803091395510084767

`A197672(A374005(n+1))`
-/

namespace A197669.P11803091395510084767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A374005 (n + 1)).toNat

end

end A197669.P11803091395510084767

/-! ## A197669.P5706440939214240130

`A197672(A167499(n+3))`
-/

namespace A197669.P5706440939214240130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A167499 (n + 3)).toNat

end

end A197669.P5706440939214240130

/-! ## A197669.P8100503178421156308

`A197672(A056000(n)+15)`
-/

namespace A197669.P8100503178421156308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A056000 n + 15).toNat

end

end A197669.P8100503178421156308

/-! ## A197669.P5472795558243281492

`A197672(A000096(n+3)+6)`
-/

namespace A197669.P5472795558243281492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A000096 (n + 3) + 6).toNat

end

end A197669.P5472795558243281492

/-! ## A197669.P4030202710402369753

`A197672(eq[6, A131818(n+1)])`
-/

namespace A197669.P4030202710402369753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197669.P4030202710402369753

/-!
# A197670: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,0,1 for x=0,1,2,3,4.

The programs for A197670, there is no canonical definition to state claims against.
-/

/-! ## A197670.P14406178178878310627

`A197672(A374007(n+1))`
-/

namespace A197670.P14406178178878310627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A374007 (n + 1)).toNat

end

end A197670.P14406178178878310627

/-! ## A197670.P15363158011850896217

`A197672(A166136(n+4))`
-/

namespace A197670.P15363158011850896217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A166136 (n + 4)).toNat

end

end A197670.P15363158011850896217

/-! ## A197670.P6786994896162400210

`A197672(A000124(n+5)+5)`
-/

namespace A197670.P6786994896162400210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A000124 (n + 5) + 5).toNat

end

end A197670.P6786994896162400210

/-! ## A197670.P5288165438754653408

`A197672(A000096(n+4)+7)`
-/

namespace A197670.P5288165438754653408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A000096 (n + 4) + 7).toNat

end

end A197670.P5288165438754653408

/-! ## A197670.P7097872001036203507

`A197672(eq[5, A002262(n)]+1)`
-/

namespace A197670.P7097872001036203507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A197670.P7097872001036203507

/-!
# A197671: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,0,1 for x=0,1,2,3,4.

The programs for A197671, there is no canonical definition to state claims against.
-/

/-! ## A197671.P5174211683908568965

`A197672(A374008(n+1))`
-/

namespace A197671.P5174211683908568965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A374008 (n + 1)).toNat

end

end A197671.P5174211683908568965

/-! ## A197671.P4390835597565035325

`A197672(A133263(n+6)+5)`
-/

namespace A197671.P4390835597565035325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A133263 (n + 6) + 5).toNat

end

end A197671.P4390835597565035325

/-! ## A197671.P15916525034947040051

`A197672(A000124(n+6)+6)`
-/

namespace A197671.P15916525034947040051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A000124 (n + 6) + 6).toNat

end

end A197671.P15916525034947040051

/-! ## A197671.P9196813172476751376

`A197672(eq[8, A131818(n+1)])`
-/

namespace A197671.P9196813172476751376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197671.P9196813172476751376

/-! ## A197671.P15348389420159103523

`A197672(A055999(n+4))`
-/

namespace A197671.P15348389420159103523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197672 (A055999 (n + 4)).toNat

end

end A197671.P15348389420159103523

/-!
# A197672: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,0,1,0,1 for x=0,1,2,3,4.

The programs for A197672, there is no canonical definition to state claims against.
-/

/-! ## A197672.P7611890932165012316

`or(A082859(A168290(n)), A197409(n+1))`
-/

namespace A197672.P7611890932165012316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082859 (A168290 n).toNat) (A197409 (n + 1))

end

end A197672.P7611890932165012316

/-! ## A197672.P5361653262033830235

`or(A082859(A168290(n)), A197431(n+1))`
-/

namespace A197672.P5361653262033830235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082859 (A168290 n).toNat) (A197431 (n + 1))

end

end A197672.P5361653262033830235

/-! ## A197672.P11004669695171495422

`or(A082859(A176467(n)), A197409(n+1))`
-/

namespace A197672.P11004669695171495422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082859 (A176467 n).toNat) (A197409 (n + 1))

end

end A197672.P11004669695171495422

/-! ## A197672.P9188948806457600368

`or(A082859(A176467(n)), A197431(n+1))`
-/

namespace A197672.P9188948806457600368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082859 (A176467 n).toNat) (A197431 (n + 1))

end

end A197672.P9188948806457600368

/-!
# A197673: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,1,0,1 for x=0,1,2,3,4.

The programs for A197673, there is no canonical definition to state claims against.
-/

/-! ## A197673.P5267107262491669941

`A197679(∑[4*n]+1)`
-/

namespace A197673.P5267107262491669941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197673.P5267107262491669941

/-! ## A197673.P18164650758785236048

`record[A197679(A272267(n+1))]`
-/

namespace A197673.P18164650758785236048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197673.P18164650758785236048

/-! ## A197673.P13264619002882426772

`record[A197679(Δ[A079824(n+1)])]`
-/

namespace A197673.P13264619002882426772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197673.P13264619002882426772

/-! ## A197673.P18078550063314170775

`record[A003982(n)*A197679(n+1)]`
-/

namespace A197673.P18078550063314170775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197673.P18078550063314170775

/-! ## A197673.P15531433230454859785

`record[gcd(A197679(n+1), A204016(n+1))]`
-/

namespace A197673.P15531433230454859785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197679 (n + 1)) (A204016 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197673.P15531433230454859785

/-!
# A197674: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,1 for x=0,1,2,3,4.

The programs for A197674, there is no canonical definition to state claims against.
-/

/-! ## A197674.P6393516396269090701

`A197679(∑[n+2]+4)`
-/

namespace A197674.P6393516396269090701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197674.P6393516396269090701

/-! ## A197674.P13525777969925316814

`A197679(A167614(n+1))+A185238(n)`
-/

namespace A197674.P13525777969925316814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A167614 (n + 1)).toNat + A185238 n

end

end A197674.P13525777969925316814

/-! ## A197674.P2965861229180268811

`A326685(n)+A197679(A167614(n+1))`
-/

namespace A197674.P2965861229180268811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A197679 (A167614 (n + 1)).toNat

end

end A197674.P2965861229180268811

/-! ## A197674.P10609056591967759290

`lcm(A033999(n), A197679(A167614(n+1)))`
-/

namespace A197674.P10609056591967759290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197679 (A167614 (n + 1)).toNat)

end

end A197674.P10609056591967759290

/-! ## A197674.P3523133614969631012

`A335462(n+1)+A197679(A167614(n+1))`
-/

namespace A197674.P3523133614969631012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (n + 1) + A197679 (A167614 (n + 1)).toNat

end

end A197674.P3523133614969631012

/-!
# A197675: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,1 for x=0,1,2,3,4.

The programs for A197675, there is no canonical definition to state claims against.
-/

/-! ## A197675.P10657920422396180163

`A197679(A374004(n+1))`
-/

namespace A197675.P10657920422396180163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A374004 (n + 1)).toNat

end

end A197675.P10657920422396180163

/-! ## A197675.P1999683799378185076

`A197679(A052905(n)+9)`
-/

namespace A197675.P1999683799378185076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A052905 n + 9).toNat

end

end A197675.P1999683799378185076

/-! ## A197675.P794393989136406420

`A197679(A055999(n)+10)`
-/

namespace A197675.P794393989136406420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A055999 n + 10).toNat

end

end A197675.P794393989136406420

/-! ## A197675.P15577715643562649322

`A197679(Δ[A008778(n)]+6)`
-/

namespace A197675.P15577715643562649322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (f1 (n + 1) - f1 n + 6).toNat

end

end A197675.P15577715643562649322

/-! ## A197675.P16557419664204142787

`A197679(A167614(n+2)+1)`
-/

namespace A197675.P16557419664204142787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A167614 (n + 2) + 1).toNat

end

end A197675.P16557419664204142787

/-!
# A197676: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,1 for x=0,1,2,3,4.

The programs for A197676, there is no canonical definition to state claims against.
-/

/-! ## A197676.P6983068307365558877

`A197679(A374005(n+1))`
-/

namespace A197676.P6983068307365558877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A374005 (n + 1)).toNat

end

end A197676.P6983068307365558877

/-! ## A197676.P16837494956573384374

`A197679(A167499(n+3))`
-/

namespace A197676.P16837494956573384374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A167499 (n + 3)).toNat

end

end A197676.P16837494956573384374

/-! ## A197676.P4241755709330986369

`A197679(A155212(n)+13)`
-/

namespace A197676.P4241755709330986369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A155212 n + 13).toNat

end

end A197676.P4241755709330986369

/-! ## A197676.P17859711432351121923

`A197679(A167614(n+3)+2)`
-/

namespace A197676.P17859711432351121923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A167614 (n + 3) + 2).toNat

end

end A197676.P17859711432351121923

/-! ## A197676.P13863506068492686059

`A197679(eq[6, A131818(n+1)])`
-/

namespace A197676.P13863506068492686059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197676.P13863506068492686059

/-!
# A197677: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,1 for x=0,1,2,3,4.

The programs for A197677, there is no canonical definition to state claims against.
-/

/-! ## A197677.P12523024054621500200

`A197679(A374007(n+1))`
-/

namespace A197677.P12523024054621500200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A374007 (n + 1)).toNat

end

end A197677.P12523024054621500200

/-! ## A197677.P10995872717787090418

`A197679(A166136(n+4))`
-/

namespace A197677.P10995872717787090418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A166136 (n + 4)).toNat

end

end A197677.P10995872717787090418

/-! ## A197677.P6841068018140047023

`A197679(A056115(n)+21)`
-/

namespace A197677.P6841068018140047023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A056115 n + 21).toNat

end

end A197677.P6841068018140047023

/-! ## A197677.P5285489615011059517

`A197679(A000096(n+4)+7)`
-/

namespace A197677.P5285489615011059517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A000096 (n + 4) + 7).toNat

end

end A197677.P5285489615011059517

/-! ## A197677.P6654601791602631297

`A197679(eq[5, A002262(n)]+1)`
-/

namespace A197677.P6654601791602631297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A197677.P6654601791602631297

/-!
# A197678: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,0,1 for x=0,1,2,3,4.

The programs for A197678, there is no canonical definition to state claims against.
-/

/-! ## A197678.P12574808982368150490

`A197679(A374008(n+1))`
-/

namespace A197678.P12574808982368150490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A374008 (n + 1)).toNat

end

end A197678.P12574808982368150490

/-! ## A197678.P12974465691425416503

`A197679(A167487(n+5))`
-/

namespace A197678.P12974465691425416503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A167487 (n + 5)).toNat

end

end A197678.P12974465691425416503

/-! ## A197678.P5112380125622903607

`A197679(A056119(n)+28)`
-/

namespace A197678.P5112380125622903607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A056119 n + 28).toNat

end

end A197678.P5112380125622903607

/-! ## A197678.P13901496219821714349

`A197679(eq[11, A066657(n)])`
-/

namespace A197678.P13901496219821714349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197678.P13901496219821714349

/-! ## A197678.P14704643440609311855

`A197679(A133263(n+6)+5)`
-/

namespace A197678.P14704643440609311855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (A133263 (n + 6) + 5).toNat

end

end A197678.P14704643440609311855

/-!
# A197679: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,1,0,1 for x=0,1,2,3,4.

The programs for A197679, there is no canonical definition to state claims against.
-/

/-! ## A197679.P2294576960473131683

`A197537(n+1)+A025465(A022345(n))`
-/

namespace A197679.P2294576960473131683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (n + 1) + A025465 (A022345 n).toNat

end

end A197679.P2294576960473131683

/-! ## A197679.P1227227830532998733

`A197537(n+1)+A025465(A023105(n))`
-/

namespace A197679.P1227227830532998733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (n + 1) + A025465 (A023105 n).toNat

end

end A197679.P1227227830532998733

/-! ## A197679.P140711401460183477

`A197537(n+1)+A055641(A002843(n))`
-/

namespace A197679.P140711401460183477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (n + 1) + A055641 (A002843 n).toNat

end

end A197679.P140711401460183477

/-! ## A197679.P254067724447581347

`A197537(n+1)+A055641(A022112(n))`
-/

namespace A197679.P254067724447581347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (n + 1) + A055641 (A022112 n).toNat

end

end A197679.P254067724447581347

/-! ## A197679.P561616207306063651

`A197537(n+1)+A060952(A022167(n))`
-/

namespace A197679.P561616207306063651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (n + 1) + A060952 (A022167 n).toNat

end

end A197679.P561616207306063651

/-!
# A197680: Numbers whose exponents in their prime power factorization are squares.

The programs for A197680, the canonical program `A197680.P6924498182071460714` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197680 has offset 1).

The definition of A197680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197680.P10508665820839072826

`record[A386469(n+1)]`
-/

namespace A197680.P10508665820839072826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197680.P10508665820839072826

namespace A197680

/-- `record[A386469(n+1)]` -/
def P10508665820839072826.Spec : Prop :=
  ∀ n, P10508665820839072826.a n = A197680 (n + 1)

end A197680

/-! ## A197680.P6924498182071460714

`eq[1, A049419(n+1)%2]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A197680

/-- `eq[1, A049419(n+1)%2]+1` -/
def P6924498182071460714.Spec : Prop :=
  ∀ n, (P6924498182071460714.a n : ℤ) = A197680 (n + 1)

theorem P6924498182071460714.correct : P6924498182071460714.Spec := by
  intro n
  simp only [A197680, Nat.add_sub_cancel]

end A197680

/-! ## A197680.P7619800229230607234

`eq[1, ∏{e}[n+1, A002828(#)]]+1`
-/

namespace A197680.P7619800229230607234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A002828 (Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A197680.P7619800229230607234

namespace A197680

/-- `eq[1, ∏{e}[n+1, A002828(#)]]+1` -/
def P7619800229230607234.Spec : Prop :=
  ∀ n, (P7619800229230607234.a n : ℤ) = A197680 (n + 1)

end A197680

/-! ## A197680.P8406301256413001931

`record[A197774(n+1)²*(n+1)]`
-/

namespace A197680.P8406301256413001931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (n + 1) ^ 2 * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197680.P8406301256413001931

namespace A197680

/-- `record[A197774(n+1)²*(n+1)]` -/
def P8406301256413001931.Spec : Prop :=
  ∀ n, P8406301256413001931.a n = A197680 (n + 1)

end A197680

/-! ## A197680.P17489087977543845666

`eq[1, A360112(A049419(n+1)+2)]+1`
-/

namespace A197680.P17489087977543845666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360112 (A049419 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A197680.P17489087977543845666

namespace A197680

/-- `eq[1, A360112(A049419(n+1)+2)]+1` -/
def P17489087977543845666.Spec : Prop :=
  ∀ n, (P17489087977543845666.a n : ℤ) = A197680 (n + 1)

end A197680

/-! ## A197680.P12798178247505697718

`eq[1, A007318(3*A152482(A290107(n+1)))]+1`
-/

namespace A197680.P12798178247505697718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * A152482 (A290107 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A197680.P12798178247505697718

namespace A197680

/-- `eq[1, A007318(3*A152482(A290107(n+1)))]+1` -/
def P12798178247505697718.Spec : Prop :=
  ∀ n, (P12798178247505697718.a n : ℤ) = A197680 (n + 1)

end A197680

/-! ## A197680.P1705933877710372117

`lt[0, char[A054496(n+1)]]`
-/

namespace A197680.P1705933877710372117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054496 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A197680.P1705933877710372117

namespace A197680

/-- `lt[0, char[A054496(n+1)]]` -/
def P1705933877710372117.Spec : Prop :=
  ∀ n, (P1705933877710372117.a n : ℤ) = A197680 (n + 1)

end A197680

/-!
# A197686: Decimal expansion of Pi/(2 + Pi).

The programs for A197686, there is no canonical definition to state claims against.
-/

/-! ## A197686.P13957766010872513405

`9-A354222(n)`
-/

namespace A197686.P13957766010872513405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A354222 n

end

end A197686.P13957766010872513405

