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
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A002602: A generalized partition function.

The programs for A002602, there is no canonical definition to state claims against.
-/

/-! ## A002602.P17601892495649649861

`A290649(A130051(n+1))`
-/

namespace A002602.P17601892495649649861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290649 (A130051 (n + 1)).toNat

end

end A002602.P17601892495649649861

/-!
# A002603: A generalized partition function.

The programs for A002603, there is no canonical definition to state claims against.
-/

/-! ## A002603.P164933711369700590

`A005574(A004684(3*n+1))-A000272(n)`
-/

namespace A002603.P164933711369700590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (A004684 (3 * n + 1)).toNat - A000272 n

end

end A002603.P164933711369700590

/-!
# A002604: a(n) = n^6 + 1.

The programs for A002604, the canonical program `A002604.P7413616626921950618` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002604 has offset 0).

The definition of A002604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6+1` (program `A002604.P7413616626921950618`, by `A002604.P7413616626921950618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002604.P7413616626921950618

`n^6+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002604

/-- `n^6+1` -/
def P7413616626921950618.Spec : Prop :=
  ∀ n, (P7413616626921950618.a n : ℤ) = A002604 n

theorem P7413616626921950618.correct : P7413616626921950618.Spec := by
  intro n
  simp only [A002604]

end A002604

/-!
# A002605: a(n) = 2*(a(n-1) + a(n-2)), a(0) = 0, a(1) = 1.

The programs for A002605, the canonical program `A002605.P4908228614026404610` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002605 has offset 0).

The definition of A002605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+a(n-2))` (program `A002605.P4908228614026404610`, by `A002605.P4908228614026404610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002605.P873949642394985935

`ogf(x/(1-2x-2x^2))`
-/

namespace A002605.P873949642394985935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -2] n

end

end A002605.P873949642394985935

namespace A002605

/-- `ogf(x/(1-2x-2x^2))` -/
def P873949642394985935.Spec : Prop :=
  ∀ n, P873949642394985935.a n = A002605 n

end A002605

/-! ## A002605.P4908228614026404610

`2*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002605

/-- `2*(a(n-1)+a(n-2))` -/
def P4908228614026404610.Spec : Prop :=
  ∀ n, (P4908228614026404610.a n : ℤ) = A002605 n

theorem P4908228614026404610.correct : P4908228614026404610.Spec := by
  intro n
  simp only [A002605]

end A002605

/-! ## A002605.P967893480041738852

`2^floor(n/2)*A002530(n)`
-/

namespace A002605.P967893480041738852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A002530 n : ℚ)

end

end A002605.P967893480041738852

namespace A002605

/-- `2^floor(n/2)*A002530(n)` -/
def P967893480041738852.Spec : Prop :=
  ∀ n, P967893480041738852.a n = (A002605 n : ℚ)

end A002605

/-! ## A002605.P16279486251921297159

`∑{#}[n, C(n, 2*#+1)*3^#]`
-/

namespace A002605.P16279486251921297159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n (2 * k + 1) * 3 ^ k

end

end A002605.P16279486251921297159

namespace A002605

/-- `∑{#}[n, C(n, 2*#+1)*3^#]` -/
def P16279486251921297159.Spec : Prop :=
  ∀ n, (P16279486251921297159.a n : ℤ) = A002605 n

end A002605

/-! ## A002605.P2038048539311020798

`2*(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A002605.P2038048539311020798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A002605.P2038048539311020798

namespace A002605

/-- `2*(a(n-1)-floor(-a(n-2)))` -/
def P2038048539311020798.Spec : Prop :=
  ∀ n, P2038048539311020798.a n = A002605 n

end A002605

/-! ## A002605.P6461658196680002859

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A002605.P6461658196680002859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A002605.P6461658196680002859

namespace A002605

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P6461658196680002859.Spec : Prop :=
  ∀ n, P6461658196680002859.a n = A002605 n

end A002605

/-! ## A002605.P2776255959677272624

`2*(a(n-1)-round(-a(n-2)))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A002605.P2776255959677272624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A002605.P2776255959677272624

namespace A002605

/-- `2*(a(n-1)-round(-a(n-2)))` -/
def P2776255959677272624.Spec : Prop :=
  ∀ n, P2776255959677272624.a n = A002605 n

end A002605

/-! ## A002605.P5853118697352669549

`3*a(n-1)-2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A002605.P5853118697352669549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * a (n - 1) - 2 * a (n - 3)

end

end A002605.P5853118697352669549

namespace A002605

/-- `3*a(n-1)-2*a(n-3)` -/
def P5853118697352669549.Spec : Prop :=
  ∀ n, P5853118697352669549.a n = A002605 n

end A002605

/-! ## A002605.P12800774568058556092

`(a(n-1)+a(n-2))/(1-1/2)` with `a(0)=0, a(1)=1`
-/

namespace A002605.P12800774568058556092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A002605.P12800774568058556092

namespace A002605

/-- `(a(n-1)+a(n-2))/(1-1/2)` -/
def P12800774568058556092.Spec : Prop :=
  ∀ n, P12800774568058556092.a n = (A002605 n : ℚ)

end A002605

/-! ## A002605.P18140365732712338210

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A002605.P18140365732712338210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A002605.P18140365732712338210

namespace A002605

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P18140365732712338210.Spec : Prop :=
  ∀ n, (P18140365732712338210.a n : ℤ) = A002605 n

theorem P18140365732712338210.correct : P18140365732712338210.Spec := by
  intro n
  simp only [A002605, Nat.add_sub_cancel, A002605.P18140365732712338210.a, A002605.P4908228614026404610.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002605

/-! ## A002605.P17506355480139836108

`A160444(Δ[n²])`
-/

namespace A002605.P17506355480139836108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002605.P17506355480139836108

namespace A002605

/-- `A160444(Δ[n²])` -/
def P17506355480139836108.Spec : Prop :=
  ∀ n, P17506355480139836108.a n = A002605 n

end A002605

/-! ## A002605.P10535554617776451085

`(2*(n+1)-(2*n+1))*A160444(2*n+1)`
-/

namespace A002605.P10535554617776451085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - (2 * n + 1 : ℤ)) * A160444 (2 * n + 1)

end

end A002605.P10535554617776451085

namespace A002605

/-- `(2*(n+1)-(2*n+1))*A160444(2*n+1)` -/
def P10535554617776451085.Spec : Prop :=
  ∀ n, P10535554617776451085.a n = A002605 n

end A002605

/-! ## A002605.P13601092163341187842

`A002530(n)*A016116(n)`
-/

namespace A002605.P13601092163341187842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A016116 n

end

end A002605.P13601092163341187842

namespace A002605

/-- `A002530(n)*A016116(n)` -/
def P13601092163341187842.Spec : Prop :=
  ∀ n, P13601092163341187842.a n = A002605 n

end A002605

/-! ## A002605.P17814509547242841021

`A002530(n)*A131572(n)`
-/

namespace A002605.P17814509547242841021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A131572 n

end

end A002605.P17814509547242841021

namespace A002605

/-- `A002530(n)*A131572(n)` -/
def P17814509547242841021.Spec : Prop :=
  ∀ n, P17814509547242841021.a n = A002605 n

end A002605

/-! ## A002605.P4543161247446351371

`A028860(n+1)+A028860(n)`
-/

namespace A002605.P4543161247446351371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 1) + A028860 n

end

end A002605.P4543161247446351371

namespace A002605

/-- `A028860(n+1)+A028860(n)` -/
def P4543161247446351371.Spec : Prop :=
  ∀ n, P4543161247446351371.a n = A002605 n

end A002605

/-! ## A002605.P4599675469085966084

`A160444(2*n+1)+A027656(2*n+1)`
-/

namespace A002605.P4599675469085966084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (2 * n + 1) + A027656 (2 * n + 1)

end

end A002605.P4599675469085966084

namespace A002605

/-- `A160444(2*n+1)+A027656(2*n+1)` -/
def P4599675469085966084.Spec : Prop :=
  ∀ n, P4599675469085966084.a n = A002605 n

end A002605

/-! ## A002605.P11148854602222510619

`A160444(2*n+1)*A179820(2*n+1)`
-/

namespace A002605.P11148854602222510619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (2 * n + 1) * A179820 (2 * n + 1)

end

end A002605.P11148854602222510619

namespace A002605

/-- `A160444(2*n+1)*A179820(2*n+1)` -/
def P11148854602222510619.Spec : Prop :=
  ∀ n, P11148854602222510619.a n = A002605 n

end A002605

/-! ## A002605.P16029776728300534073

`A160444(2*n+1)*A368684(2*n+1)`
-/

namespace A002605.P16029776728300534073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (2 * n + 1) * A368684 (2 * n + 1)

end

end A002605.P16029776728300534073

namespace A002605

/-- `A160444(2*n+1)*A368684(2*n+1)` -/
def P16029776728300534073.Spec : Prop :=
  ∀ n, P16029776728300534073.a n = A002605 n

end A002605

/-! ## A002605.P4602621626858251938

`A160444(2*n+1)+A014682(2*n)-n`
-/

namespace A002605.P4602621626858251938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (2 * n + 1) + (A014682 (2 * n) - (n : ℤ))

end

end A002605.P4602621626858251938

namespace A002605

/-- `A160444(2*n+1)+A014682(2*n)-n` -/
def P4602621626858251938.Spec : Prop :=
  ∀ n, P4602621626858251938.a n = A002605 n

end A002605

/-! ## A002605.P4223489454625822833

`(n-A289207(n))*A028859(A289207(n))`
-/

namespace A002605.P4223489454625822833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A289207 n) * A028859 (A289207 n).toNat

end

end A002605.P4223489454625822833

namespace A002605

/-- `(n-A289207(n))*A028859(A289207(n))` -/
def P4223489454625822833.Spec : Prop :=
  ∀ n, P4223489454625822833.a n = A002605 n

end A002605

/-!
# A002606: Weight distribution of Karlin's [28,14,8] double circulant code.

The programs for A002606, there is no canonical definition to state claims against.
-/

/-! ## A002606.P13118770809981309347

`A223104(A302998(n)+A032327(n+1))`
-/

namespace A002606.P13118770809981309347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A302998 n + A032327 (n + 1)).toNat

end

end A002606.P13118770809981309347

/-! ## A002606.P6212877183083146340

`A223104(A333252(n+1)+A032327(n+1))`
-/

namespace A002606.P6212877183083146340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A333252 (n + 1) + A032327 (n + 1)).toNat

end

end A002606.P6212877183083146340

/-!
# A002609: Glaisher's function G(n) (18 squares version).

The programs for A002609, there is no canonical definition to state claims against.
-/

/-! ## A002609.P3555309314254211513

`A002611(2*(n+1))-16*A002611(n+1)`
-/

namespace A002609.P3555309314254211513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002611 (2 * (n + 1)) - 16 * A002611 (n + 1)

end

end A002609.P3555309314254211513

/-! ## A002609.P11728332864135226395

`A002612(n+1)-32*A002611(n+1)`
-/

namespace A002609.P11728332864135226395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002612 (n + 1) - 32 * A002611 (n + 1)

end

end A002609.P11728332864135226395

/-!
# A002611: Glaisher's function V(n).

The programs for A002611, there is no canonical definition to state claims against.
-/

/-! ## A002611.P16550072583888170308

`∑{#}[floor((n+1)/2)-1, A004018(n+1-2*(#+1))*A002288(#+1)]`
-/

namespace A002611.P16550072583888170308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A004018 (n + 1 - 2 * (k + 1)) * A002288 (k + 1)

end

end A002611.P16550072583888170308

/-! ## A002611.P5178803168365548318

`(A002612(n+1)-A002609(n+1))/32`
-/

namespace A002611.P5178803168365548318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002612 (n + 1) - A002609 (n + 1) : ℚ) / 32

end

end A002611.P5178803168365548318

/-!
# A002612: Glaisher's function U(n).

The programs for A002612, there is no canonical definition to state claims against.
-/

/-! ## A002612.P14973679640418055234

`A002609(n+1)+32*A002611(n+1)`
-/

namespace A002612.P14973679640418055234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002609 (n + 1) + 32 * A002611 (n + 1)

end

end A002612.P14973679640418055234

/-!
# A002614: Glaisher's function theta(n) (18 squares version).

The programs for A002614, there is no canonical definition to state claims against.
-/

/-! ## A002614.P1309510069960916952

`(A321546(n+1)-A002288(n+1))/17`
-/

namespace A002614.P1309510069960916952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321546 (n + 1) - A002288 (n + 1) : ℚ) / 17

end

end A002614.P1309510069960916952

/-!
# A002615: Glaisher's function T_1(n).

The programs for A002615, there is no canonical definition to state claims against.
-/

/-! ## A002615.P8620281504706139832

`19*A002288(n+1)-A002614(n+1)`
-/

namespace A002615.P8620281504706139832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A002288 (n + 1) - A002614 (n + 1)

end

end A002615.P8620281504706139832

/-!
# A002616: Reduced totient function (divided by 2).

The programs for A002616, there is no canonical definition to state claims against.
-/

/-! ## A002616.P3678308963560824102

`A002322(n+3)/2`
-/

namespace A002616.P3678308963560824102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 3) : ℚ) / 2

end

end A002616.P3678308963560824102

/-! ## A002616.P6341246848333959720

`Δ[A162578(n+2)/2]`
-/

namespace A002616.P6341246848333959720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162578 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002616.P6341246848333959720

/-! ## A002616.P16985481082995936506

`(A263027(n+3)-1)/2`
-/

namespace A002616.P16985481082995936506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263027 (n + 3) - 1 : ℚ) / 2

end

end A002616.P16985481082995936506

/-! ## A002616.P546012527142876595

`(n+3-A277127(n+3))/2`
-/

namespace A002616.P546012527142876595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A277127 (n + 3) : ℚ) / 2

end

end A002616.P546012527142876595

/-! ## A002616.P16025367936989871628

`A014682(A002322(n+3))`
-/

namespace A002616.P16025367936989871628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A002322 (n + 3)).toNat

end

end A002616.P16025367936989871628

/-! ## A002616.P13385894364255642531

`A004524(A002322(n+3)+1)`
-/

namespace A002616.P13385894364255642531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A002322 (n + 3) + 1).toNat

end

end A002616.P13385894364255642531

/-! ## A002616.P7424023474242452303

`A008619(n+1-A277127(n+3))`
-/

namespace A002616.P7424023474242452303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n + 1 : ℤ) - A277127 (n + 3)).toNat

end

end A002616.P7424023474242452303

/-! ## A002616.P1393201391502983261

`val(A289625(n+3), 4)`
-/

namespace A002616.P1393201391502983261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289625 (n + 3)).toNat 4

end

end A002616.P1393201391502983261

/-! ## A002616.P10706063028159240143

`A046073(n+3)-A117831(A117827(n+1))`
-/

namespace A002616.P10706063028159240143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 3) - A117831 (A117827 (n + 1)).toNat

end

end A002616.P10706063028159240143

/-!
# A002617: Weight distribution of Cheng-Sloane [ 32,17,8 ] code.

The programs for A002617, there is no canonical definition to state claims against.
-/

/-! ## A002617.P17601688655121151004

`and(A066178(A307444(n)), A201861(n+1))`
-/

namespace A002617.P17601688655121151004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066178 (A307444 n).toNat) (A201861 (n + 1))

end

end A002617.P17601688655121151004

/-!
# A002618: a(n) = n*phi(n).

The programs for A002618, the canonical program `A002618.P8397693677428532773` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002618 has offset 1).

The definition of A002618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000010(n+1)` (program `A002618.P8397693677428532773`, by `A002618.P8397693677428532773.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002618.P8397693677428532773

`(n+1)*A000010(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002618

/-- `(n+1)*A000010(n+1)` -/
def P8397693677428532773.Spec : Prop :=
  ∀ n, P8397693677428532773.a n = A002618 (n + 1)

theorem P8397693677428532773.correct : P8397693677428532773.Spec := by
  intro n
  simp only [A002618, Nat.add_sub_cancel]

end A002618

/-! ## A002618.P11219262123574684380

`A009195(n+1)*A009262(n+1)`
-/

namespace A002618.P11219262123574684380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1) * A009262 (n + 1)

end

end A002618.P11219262123574684380

namespace A002618

/-- `A009195(n+1)*A009262(n+1)` -/
def P11219262123574684380.Spec : Prop :=
  ∀ n, P11219262123574684380.a n = A002618 (n + 1)

end A002618

/-! ## A002618.P2277765407571168618

`A173557(n+1)*A102631(n+1)`
-/

namespace A002618.P2277765407571168618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A102631 (n + 1)

end

end A002618.P2277765407571168618

namespace A002618

/-- `A173557(n+1)*A102631(n+1)` -/
def P2277765407571168618.Spec : Prop :=
  ∀ n, P2277765407571168618.a n = A002618 (n + 1)

end A002618

/-! ## A002618.P12873901059134379761

`A082473(A327173(n+1))`
-/

namespace A002618.P12873901059134379761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082473 (A327173 (n + 1)).toNat

end

end A002618.P12873901059134379761

namespace A002618

/-- `A082473(A327173(n+1))` -/
def P12873901059134379761.Spec : Prop :=
  ∀ n, P12873901059134379761.a n = A002618 (n + 1)

end A002618

/-! ## A002618.P503497761910155891

`A000010((n+1)²)`
-/

namespace A002618.P503497761910155891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 2)

end

end A002618.P503497761910155891

namespace A002618

/-- `A000010((n+1)²)` -/
def P503497761910155891.Spec : Prop :=
  ∀ n, P503497761910155891.a n = A002618 (n + 1)

end A002618

/-! ## A002618.P15553614102302387835

`(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A002618.P15553614102302387835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A002618.P15553614102302387835

namespace A002618

/-- `(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P15553614102302387835.Spec : Prop :=
  ∀ n, P15553614102302387835.a n = (A002618 (n + 1) : ℚ)

end A002618

/-! ## A002618.P12890289940452398716

`Δ[A240877(n)]`
-/

namespace A002618.P12890289940452398716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002618.P12890289940452398716

namespace A002618

/-- `Δ[A240877(n)]` -/
def P12890289940452398716.Spec : Prop :=
  ∀ n, P12890289940452398716.a n = A002618 (n + 1)

end A002618

/-! ## A002618.P16718378446766417488

`A046151(n+1)+1`
-/

namespace A002618.P16718378446766417488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (n + 1) + 1

end

end A002618.P16718378446766417488

namespace A002618

/-- `A046151(n+1)+1` -/
def P16718378446766417488.Spec : Prop :=
  ∀ n, P16718378446766417488.a n = A002618 (n + 1)

theorem P16718378446766417488.correct : P16718378446766417488.Spec := by
  intro n
  simp only [A002618, Nat.add_sub_cancel, A002618.P16718378446766417488.a, A002618.P8397693677428532773.a, A000010, A000010.P4673923239450215316.a, A046151, A046151.P159560385155613916.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002618

/-! ## A002618.P523174771335742877

`A046152(n+1)-1`
-/

namespace A002618.P523174771335742877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1) - 1

end

end A002618.P523174771335742877

namespace A002618

/-- `A046152(n+1)-1` -/
def P523174771335742877.Spec : Prop :=
  ∀ n, P523174771335742877.a n = A002618 (n + 1)

theorem P523174771335742877.correct : P523174771335742877.Spec := by
  intro n
  simp only [A002618, Nat.add_sub_cancel, A002618.P523174771335742877.a, A002618.P8397693677428532773.a, A000010, A000010.P4673923239450215316.a, A046152, A046152.P7809861723130686075.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002618

/-! ## A002618.P17010852260037618532

`A071118(n+1)/2`
-/

namespace A002618.P17010852260037618532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / 2

end

end A002618.P17010852260037618532

namespace A002618

/-- `A071118(n+1)/2` -/
def P17010852260037618532.Spec : Prop :=
  ∀ n, P17010852260037618532.a n = (A002618 (n + 1) : ℚ)

theorem P17010852260037618532.correct : P17010852260037618532.Spec := by
  intro n
  simp only [A002618, Nat.add_sub_cancel, A002618.P17010852260037618532.a, A002618.P8397693677428532773.a, A000010, A000010.P4673923239450215316.a, A071118, A071118.P10143340567303740039.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002618

/-! ## A002618.P16779871222230374355

`A064400(n+1)/3`
-/

namespace A002618.P16779871222230374355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064400 (n + 1) : ℚ) / 3

end

end A002618.P16779871222230374355

namespace A002618

/-- `A064400(n+1)/3` -/
def P16779871222230374355.Spec : Prop :=
  ∀ n, P16779871222230374355.a n = (A002618 (n + 1) : ℚ)

theorem P16779871222230374355.correct : P16779871222230374355.Spec := by
  intro n
  simp only [A002618, Nat.add_sub_cancel, A002618.P16779871222230374355.a, A002618.P8397693677428532773.a, A000010, A000010.P4673923239450215316.a, A064400, A064400.P18224085056823472977.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002618

/-! ## A002618.P2232093982828983891

`∑{d}[n+1, A063445(#)]`
-/

namespace A002618.P2232093982828983891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d

end

end A002618.P2232093982828983891

namespace A002618

/-- `∑{d}[n+1, A063445(#)]` -/
def P2232093982828983891.Spec : Prop :=
  ∀ n, P2232093982828983891.a n = A002618 (n + 1)

end A002618

/-! ## A002618.P7577802791773386647

`(n+1)*Δ[A002088(n)]`
-/

namespace A002618.P7577802791773386647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A002618.P7577802791773386647

namespace A002618

/-- `(n+1)*Δ[A002088(n)]` -/
def P7577802791773386647.Spec : Prop :=
  ∀ n, P7577802791773386647.a n = A002618 (n + 1)

end A002618

/-! ## A002618.P11226471770118585831

`(n+1)*Δ[A005728(n)]`
-/

namespace A002618.P11226471770118585831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A002618.P11226471770118585831

namespace A002618

/-- `(n+1)*Δ[A005728(n)]` -/
def P11226471770118585831.Spec : Prop :=
  ∀ n, P11226471770118585831.a n = A002618 (n + 1)

end A002618

/-! ## A002618.P16980004722236423152

`A053191(n+1)/(n+1)`
-/

namespace A002618.P16980004722236423152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002618.P16980004722236423152

namespace A002618

/-- `A053191(n+1)/(n+1)` -/
def P16980004722236423152.Spec : Prop :=
  ∀ n, P16980004722236423152.a n = (A002618 (n + 1) : ℚ)

end A002618

/-! ## A002618.P3222560218202716180

`(n+1)²-A053650(n+1)`
-/

namespace A002618.P3222560218202716180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A053650 (n + 1)

end

end A002618.P3222560218202716180

namespace A002618

/-- `(n+1)²-A053650(n+1)` -/
def P3222560218202716180.Spec : Prop :=
  ∀ n, P3222560218202716180.a n = A002618 (n + 1)

theorem P3222560218202716180.correct : P3222560218202716180.Spec := by
  intro n
  simp only [A002618, Nat.add_sub_cancel, A002618.P3222560218202716180.a, A002618.P8397693677428532773.a, A000010, A000010.P4673923239450215316.a, A053650, A053650.P6469571087341810863.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002618

/-! ## A002618.P18026301189178392027

`(n+1)*sqrt(A127473(n+1))`
-/

namespace A002618.P18026301189178392027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A127473 (n + 1) : ℝ)

end

end A002618.P18026301189178392027

namespace A002618

/-- `(n+1)*sqrt(A127473(n+1))` -/
def P18026301189178392027.Spec : Prop :=
  ∀ n, P18026301189178392027.a n = (A002618 (n + 1) : ℝ)

end A002618

/-! ## A002618.P5824762134283643845

`sqrt((n+1)*A327570(n+1))`
-/

namespace A002618.P5824762134283643845
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A327570 (n + 1) : ℝ)

end

end A002618.P5824762134283643845

namespace A002618

/-- `sqrt((n+1)*A327570(n+1))` -/
def P5824762134283643845.Spec : Prop :=
  ∀ n, P5824762134283643845.a n = (A002618 (n + 1) : ℝ)

end A002618

/-! ## A002618.P4899953975468482347

`(A109606(n+1)+1)*(n+1)`
-/

namespace A002618.P4899953975468482347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * (n + 1 : ℤ)

end

end A002618.P4899953975468482347

namespace A002618

/-- `(A109606(n+1)+1)*(n+1)` -/
def P4899953975468482347.Spec : Prop :=
  ∀ n, P4899953975468482347.a n = A002618 (n + 1)

theorem P4899953975468482347.correct : P4899953975468482347.Spec := by
  intro n
  simp only [A002618, Nat.add_sub_cancel, A002618.P4899953975468482347.a, A002618.P8397693677428532773.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002618

/-! ## A002618.P12626271005394104739

`(n+1)*(A039649(n+1)-1)`
-/

namespace A002618.P12626271005394104739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A039649 (n + 1) - 1)

end

end A002618.P12626271005394104739

namespace A002618

/-- `(n+1)*(A039649(n+1)-1)` -/
def P12626271005394104739.Spec : Prop :=
  ∀ n, P12626271005394104739.a n = A002618 (n + 1)

theorem P12626271005394104739.correct : P12626271005394104739.Spec := by
  intro n
  simp only [A002618, Nat.add_sub_cancel, A002618.P12626271005394104739.a, A002618.P8397693677428532773.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002618

/-!
# A002619: Number of 2-colored patterns on an n X n board.

The programs for A002619, the canonical program `A002619.P331244611325112500` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002619 has offset 1).

The definition of A002619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002619.P331244611325112500

`1/(n+1)²*∑{d}[n+1, A000010(#)²*((n+1)/#)!*#^((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002619

/-- `1/(n+1)²*∑{d}[n+1, A000010(#)²*((n+1)/#)!*#^((n+1)/#)]` -/
def P331244611325112500.Spec : Prop :=
  ∀ n, P331244611325112500.a n = (A002619 (n + 1) : ℝ)

end A002619

/-! ## A002619.P12676178252959200409

`A002264(A345673(n)+A226806(n+1))`
-/

namespace A002619.P12676178252959200409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A345673 n + A226806 (n + 1)).toNat

end

end A002619.P12676178252959200409

namespace A002619

/-- `A002264(A345673(n)+A226806(n+1))` -/
def P12676178252959200409.Spec : Prop :=
  ∀ n, P12676178252959200409.a n = A002619 (n + 1)

end A002619

/-! ## A002619.P4139826073943730803

`A130371(A226198(n+1)+A143588(n+1))`
-/

namespace A002619.P4139826073943730803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 (A226198 (n + 1) + A143588 (n + 1)).toNat

end

end A002619.P4139826073943730803

namespace A002619

/-- `A130371(A226198(n+1)+A143588(n+1))` -/
def P4139826073943730803.Spec : Prop :=
  ∀ n, P4139826073943730803.a n = A002619 (n + 1)

end A002619

/-!
# A002620: Quarter-squares: a(n) = floor(n/2)*ceiling(n/2). Equivalently, a(n) = floor(n^2/4).

The programs for A002620, the canonical program `A002620.P9002536657626793813` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002620 has offset 0).

The definition of A002620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/4)` (program `A002620.P9002536657626793813`, by `A002620.P9002536657626793813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002620.P9002536657626793813

`floor(n²/4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002620

/-- `floor(n²/4)` -/
def P9002536657626793813.Spec : Prop :=
  ∀ n, P9002536657626793813.a n = A002620 n

theorem P9002536657626793813.correct : P9002536657626793813.Spec := by
  intro n
  simp only [A002620]

end A002620

/-! ## A002620.P14635760622042076681

`C(n, 2)-a(n-1)` with `a(0)=0`
-/

namespace A002620.P14635760622042076681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose n 2 : ℤ) - a (n - 1)

end

end A002620.P14635760622042076681

namespace A002620

/-- `C(n, 2)-a(n-1)` -/
def P14635760622042076681.Spec : Prop :=
  ∀ n, P14635760622042076681.a n = A002620 n

end A002620

/-! ## A002620.P11413700049739008312

`floor(n/2)*ceil(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002620.P11413700049739008312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * ⌈(n : ℚ) / 2⌉

end

end A002620.P11413700049739008312

namespace A002620

/-- `floor(n/2)*ceil(n/2)` -/
def P11413700049739008312.Spec : Prop :=
  ∀ n, P11413700049739008312.a n = A002620 n

end A002620

/-! ## A002620.P7105308559764070784

`n-1+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A002620.P7105308559764070784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) - 1 + a (n - 2)

end

end A002620.P7105308559764070784

namespace A002620

/-- `n-1+a(n-2)` -/
def P7105308559764070784.Spec : Prop :=
  ∀ n, P7105308559764070784.a n = A002620 n

end A002620

/-! ## A002620.P14948613461601335947

`ogf(x^2/(1-2x+2x^3-x^4))`
-/

namespace A002620.P14948613461601335947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, 0, 2, -1] n

end

end A002620.P14948613461601335947

namespace A002620

/-- `ogf(x^2/(1-2x+2x^3-x^4))` -/
def P14948613461601335947.Spec : Prop :=
  ∀ n, P14948613461601335947.a n = A002620 n

end A002620

/-! ## A002620.P10105419664695038780

`A007590(n)/2`
-/

namespace A002620.P10105419664695038780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 n : ℚ) / 2

end

end A002620.P10105419664695038780

namespace A002620

/-- `A007590(n)/2` -/
def P10105419664695038780.Spec : Prop :=
  ∀ n, P10105419664695038780.a n = (A002620 n : ℚ)

end A002620

/-! ## A002620.P9859815138304890943

`A024206(n+1)-n`
-/

namespace A002620.P9859815138304890943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1) - (n : ℤ)

end

end A002620.P9859815138304890943

namespace A002620

/-- `A024206(n+1)-n` -/
def P9859815138304890943.Spec : Prop :=
  ∀ n, P9859815138304890943.a n = A002620 n

end A002620

/-! ## A002620.P5304445229951907243

`round(sinh(log(acot(n)))²)`
-/

namespace A002620.P5304445229951907243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (SequenceMachineLib.acot (n : ℝ))) ^ 2)

end

end A002620.P5304445229951907243

namespace A002620

/-- `round(sinh(log(acot(n)))²)` -/
def P5304445229951907243.Spec : Prop :=
  ∀ n, P5304445229951907243.a n = A002620 n

end A002620

/-! ## A002620.P6549058318401269328

`and(n², -2)/4`
-/

namespace A002620.P6549058318401269328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n ^ 2 : ℤ) (-2) : ℚ) / 4

end

end A002620.P6549058318401269328

namespace A002620

/-- `and(n², -2)/4` -/
def P6549058318401269328.Spec : Prop :=
  ∀ n, P6549058318401269328.a n = (A002620 n : ℚ)

end A002620

/-! ## A002620.P2115311236378360025

`∑[and(n, -2)/2]`
-/

namespace A002620.P2115311236378360025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002620.P2115311236378360025

namespace A002620

/-- `∑[and(n, -2)/2]` -/
def P2115311236378360025.Spec : Prop :=
  ∀ n, P2115311236378360025.a n = (A002620 n : ℚ)

end A002620

/-! ## A002620.P17555908405051567724

`round(or(1, n²)/4)`
-/

namespace A002620.P17555908405051567724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n ^ 2) : ℚ) / 4)

end

end A002620.P17555908405051567724

namespace A002620

/-- `round(or(1, n²)/4)` -/
def P17555908405051567724.Spec : Prop :=
  ∀ n, P17555908405051567724.a n = A002620 n

end A002620

/-! ## A002620.P32413489430882945

`round(xor(1, n²)/4)`
-/

namespace A002620.P32413489430882945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n ^ 2) : ℚ) / 4)

end

end A002620.P32413489430882945

namespace A002620

/-- `round(xor(1, n²)/4)` -/
def P32413489430882945.Spec : Prop :=
  ∀ n, P32413489430882945.a n = A002620 n

end A002620

/-! ## A002620.P5842792352915542719

`∑[floor(or(1, n)/2)]`
-/

namespace A002620.P5842792352915542719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002620.P5842792352915542719

namespace A002620

/-- `∑[floor(or(1, n)/2)]` -/
def P5842792352915542719.Spec : Prop :=
  ∀ n, P5842792352915542719.a n = A002620 n

end A002620

/-! ## A002620.P10819394175948953439

`∑[floor(xor(1, n)/2)]`
-/

namespace A002620.P10819394175948953439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002620.P10819394175948953439

namespace A002620

/-- `∑[floor(xor(1, n)/2)]` -/
def P10819394175948953439.Spec : Prop :=
  ∀ n, P10819394175948953439.a n = A002620 n

end A002620

/-! ## A002620.P13905289338392527547

`∑[n-∑[n%2]]`
-/

namespace A002620.P13905289338392527547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002620.P13905289338392527547

namespace A002620

/-- `∑[n-∑[n%2]]` -/
def P13905289338392527547.Spec : Prop :=
  ∀ n, P13905289338392527547.a n = A002620 n

end A002620

/-! ## A002620.P17219163271623022145

`∑[n-∑[and(1, n)]]`
-/

namespace A002620.P17219163271623022145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002620.P17219163271623022145

namespace A002620

/-- `∑[n-∑[and(1, n)]]` -/
def P17219163271623022145.Spec : Prop :=
  ∀ n, P17219163271623022145.a n = A002620 n

end A002620

/-! ## A002620.P14173488295648888313

`round(n/(4*acot(n)))`
-/

namespace A002620.P14173488295648888313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (4 * SequenceMachineLib.acot (n : ℝ)))

end

end A002620.P14173488295648888313

namespace A002620

/-- `round(n/(4*acot(n)))` -/
def P14173488295648888313.Spec : Prop :=
  ∀ n, P14173488295648888313.a n = A002620 n

end A002620

/-! ## A002620.P11531152682253994553

`∑[floor(sinh(log(n+1)))]`
-/

namespace A002620.P11531152682253994553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (n + 1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002620.P11531152682253994553

namespace A002620

/-- `∑[floor(sinh(log(n+1)))]` -/
def P11531152682253994553.Spec : Prop :=
  ∀ n, P11531152682253994553.a n = A002620 n

end A002620

/-! ## A002620.P6242678102805086340

`∑[∑[∑{p}[n, val(#, 2)]]]`
-/

namespace A002620.P6242678102805086340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation p 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002620.P6242678102805086340

namespace A002620

/-- `∑[∑[∑{p}[n, val(#, 2)]]]` -/
def P6242678102805086340.Spec : Prop :=
  ∀ n, (P6242678102805086340.a n : ℤ) = A002620 n

end A002620

/-! ## A002620.P6123367079623833531

`∑[∑[val(∏{p}[n, #], 2)]]`
-/

namespace A002620.P6123367079623833531
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f3 n), p) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002620.P6123367079623833531

namespace A002620

/-- `∑[∑[val(∏{p}[n, #], 2)]]` -/
def P6123367079623833531.Spec : Prop :=
  ∀ n, (P6123367079623833531.a n : ℤ) = A002620 n

end A002620

/-!
# A002621: Expansion of 1 / ((1-x)^2*(1-x^2)*(1-x^3)*(1-x^4)).

The programs for A002621, the canonical program `A002621.P12362321889656928583` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002621 has offset 0).

The definition of A002621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^3+2x^5-2x^6-x^8+2x^10-x^11))` (program `A002621.P12362321889656928583`, by `A002621.P12362321889656928583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002621.P12362321889656928583

`ogf(1/(1-2x+x^3+2x^5-2x^6-x^8+2x^10-x^11))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002621

/-- `ogf(1/(1-2x+x^3+2x^5-2x^6-x^8+2x^10-x^11))` -/
def P12362321889656928583.Spec : Prop :=
  ∀ n, P12362321889656928583.a n = A002621 n

theorem P12362321889656928583.correct : P12362321889656928583.Spec := by
  intro n
  simp only [A002621]

end A002621

/-! ## A002621.P8796534103328580200

`floor((n+1)*(9*(-1)^n+n^3+21*n²+145*n+350)/576+1/2)`
-/

namespace A002621.P8796534103328580200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * (9 * (-1) ^ n + (n ^ 3 : ℤ) + (21 * n ^ 2 : ℤ) + (145 * n : ℤ) + 350) : ℚ) / 576 + (1 : ℚ) / 2⌋

end

end A002621.P8796534103328580200

namespace A002621

/-- `floor((n+1)*(9*(-1)^n+n^3+21*n²+145*n+350)/576+1/2)` -/
def P8796534103328580200.Spec : Prop :=
  ∀ n, P8796534103328580200.a n = A002621 n

end A002621

/-! ## A002621.P18232199934671068422

`∑[∑[round((n+3*(2-n%2))²/48)]]`
-/

namespace A002621.P18232199934671068422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℤ) + 3 * (2 - ((n % 2 : ℕ) : ℤ))) ^ 2 : ℚ) / 48)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P18232199934671068422

namespace A002621

/-- `∑[∑[round((n+3*(2-n%2))²/48)]]` -/
def P18232199934671068422.Spec : Prop :=
  ∀ n, P18232199934671068422.a n = A002621 n

end A002621

/-! ## A002621.P12140617336473725770

`∑[A001400(n)]`
-/

namespace A002621.P12140617336473725770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P12140617336473725770

namespace A002621

/-- `∑[A001400(n)]` -/
def P12140617336473725770.Spec : Prop :=
  ∀ n, P12140617336473725770.a n = A002621 n

end A002621

/-! ## A002621.P5859451034671868576

`∑[∑[A266755(n)]]`
-/

namespace A002621.P5859451034671868576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P5859451034671868576

namespace A002621

/-- `∑[∑[A266755(n)]]` -/
def P5859451034671868576.Spec : Prop :=
  ∀ n, P5859451034671868576.a n = A002621 n

end A002621

/-! ## A002621.P6946679534802875994

`A008762(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A002621.P6946679534802875994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008762 n + a (n - 2)

end

end A002621.P6946679534802875994

namespace A002621

/-- `A008762(n)+a(n-2)` -/
def P6946679534802875994.Spec : Prop :=
  ∀ n, P6946679534802875994.a n = A002621 n

end A002621

/-! ## A002621.P686486690133440606

`A097701(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A002621.P686486690133440606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A097701 n - a (n - 2)

end

end A002621.P686486690133440606

namespace A002621

/-- `A097701(n)-a(n-2)` -/
def P686486690133440606.Spec : Prop :=
  ∀ n, P686486690133440606.a n = A002621 n

end A002621

/-! ## A002621.P5488704273880419861

`A008804(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A002621.P5488704273880419861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A008804 n + a (n - 3)

end

end A002621.P5488704273880419861

namespace A002621

/-- `A008804(n)+a(n-3)` -/
def P5488704273880419861.Spec : Prop :=
  ∀ n, P5488704273880419861.a n = A002621 n

end A002621

/-! ## A002621.P16327738073698557198

`∑[A026810(n)+A001399(n)]`
-/

namespace A002621.P16327738073698557198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P16327738073698557198

namespace A002621

/-- `∑[A026810(n)+A001399(n)]` -/
def P16327738073698557198.Spec : Prop :=
  ∀ n, P16327738073698557198.a n = A002621 n

end A002621

/-! ## A002621.P5218925009316144522

`∑[A001401(n)-A026811(n)]`
-/

namespace A002621.P5218925009316144522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A026811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P5218925009316144522

namespace A002621

/-- `∑[A001401(n)-A026811(n)]` -/
def P5218925009316144522.Spec : Prop :=
  ∀ n, P5218925009316144522.a n = A002621 n

end A002621

/-! ## A002621.P17276060138732497928

`A028291(n)+A026811(n+1)`
-/

namespace A002621.P17276060138732497928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028291 n + A026811 (n + 1)

end

end A002621.P17276060138732497928

namespace A002621

/-- `A028291(n)+A026811(n+1)` -/
def P17276060138732497928.Spec : Prop :=
  ∀ n, P17276060138732497928.a n = A002621 n

end A002621

/-! ## A002621.P17411464636489019753

`2*A115264(n)-A254594(n)`
-/

namespace A002621.P17411464636489019753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115264 n - A254594 n

end

end A002621.P17411464636489019753

namespace A002621

/-- `2*A115264(n)-A254594(n)` -/
def P17411464636489019753.Spec : Prop :=
  ∀ n, P17411464636489019753.a n = A002621 n

end A002621

/-! ## A002621.P3614683953322684619

`∑[∑[A069905(A052938(n+1))]]`
-/

namespace A002621.P3614683953322684619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A052938 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P3614683953322684619

namespace A002621

/-- `∑[∑[A069905(A052938(n+1))]]` -/
def P3614683953322684619.Spec : Prop :=
  ∀ n, P3614683953322684619.a n = A002621 n

end A002621

/-! ## A002621.P9149926710539479861

`∑[∑[A069905(A028242(n)+2)]]`
-/

namespace A002621.P9149926710539479861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A028242 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P9149926710539479861

namespace A002621

/-- `∑[∑[A069905(A028242(n)+2)]]` -/
def P9149926710539479861.Spec : Prop :=
  ∀ n, P9149926710539479861.a n = A002621 n

end A002621

/-! ## A002621.P4673856776095972685

`∑[A008642(n)+∑[A005044(n)]]`
-/

namespace A002621.P4673856776095972685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P4673856776095972685

namespace A002621

/-- `∑[A008642(n)+∑[A005044(n)]]` -/
def P4673856776095972685.Spec : Prop :=
  ∀ n, P4673856776095972685.a n = A002621 n

end A002621

/-! ## A002621.P9400740900913390461

`A008804(n)+∑[∑[A005044(n)]]`
-/

namespace A002621.P9400740900913390461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P9400740900913390461

namespace A002621

/-- `A008804(n)+∑[∑[A005044(n)]]` -/
def P9400740900913390461.Spec : Prop :=
  ∀ n, P9400740900913390461.a n = A002621 n

end A002621

/-! ## A002621.P2552172694981893142

`∑[A026810(n)+∑[A103221(n)]]`
-/

namespace A002621.P2552172694981893142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P2552172694981893142

namespace A002621

/-- `∑[A026810(n)+∑[A103221(n)]]` -/
def P2552172694981893142.Spec : Prop :=
  ∀ n, P2552172694981893142.a n = A002621 n

end A002621

/-! ## A002621.P14967932367372533008

`A008804(n)+∑[A026810(n+1)]`
-/

namespace A002621.P14967932367372533008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P14967932367372533008

namespace A002621

/-- `A008804(n)+∑[A026810(n+1)]` -/
def P14967932367372533008.Spec : Prop :=
  ∀ n, P14967932367372533008.a n = A002621 n

end A002621

/-! ## A002621.P9240933245433000712

`A001401(n)+A028291(n)-A008669(n)`
-/

namespace A002621.P9240933245433000712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n + (A028291 n - A008669 n)

end

end A002621.P9240933245433000712

namespace A002621

/-- `A001401(n)+A028291(n)-A008669(n)` -/
def P9240933245433000712.Spec : Prop :=
  ∀ n, P9240933245433000712.a n = A002621 n

end A002621

/-! ## A002621.P13333835552822105956

`A026810(n)+∑[A008766(n)-A026810(n)]`
-/

namespace A002621.P13333835552822105956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 n - A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002621.P13333835552822105956

namespace A002621

/-- `A026810(n)+∑[A008766(n)-A026810(n)]` -/
def P13333835552822105956.Spec : Prop :=
  ∀ n, P13333835552822105956.a n = A002621 n

end A002621

/-!
# A002622: Number of partitions of at most n into at most 5 parts.

The programs for A002622, the canonical program `A002622.P588810453114800994` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002622 has offset 0).

The definition of A002622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002622.P10664069791209571710

`ogf(1/(1-2x+x^3+x^5-2x^8+x^11+x^13-2x^15+x^16))`
-/

namespace A002622.P10664069791209571710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 1, 0, 1, 0, 0, -2, 0, 0, 1, 0, 1, 0, -2, 1] n

end

end A002622.P10664069791209571710

namespace A002622

/-- `ogf(1/(1-2x+x^3+x^5-2x^8+x^11+x^13-2x^15+x^16))` -/
def P10664069791209571710.Spec : Prop :=
  ∀ n, P10664069791209571710.a n = A002622 n

end A002622

/-! ## A002622.P588810453114800994

`a(n-1)+A001401(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002622

/-- `a(n-1)+A001401(n)` -/
def P588810453114800994.Spec : Prop :=
  ∀ n, P588810453114800994.a n = A002622 n

theorem P588810453114800994.correct : P588810453114800994.Spec := by
  intro n
  simp only [A002622]

end A002622

/-! ## A002622.P598742277521235456

`∑[A001401(n)]`
-/

namespace A002622.P598742277521235456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P598742277521235456

namespace A002622

/-- `∑[A001401(n)]` -/
def P598742277521235456.Spec : Prop :=
  ∀ n, P598742277521235456.a n = A002622 n

end A002622

/-! ## A002622.P397391342511153304

`∑[∑[A008667(n)]]`
-/

namespace A002622.P397391342511153304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P397391342511153304

namespace A002622

/-- `∑[∑[A008667(n)]]` -/
def P397391342511153304.Spec : Prop :=
  ∀ n, P397391342511153304.a n = A002622 n

end A002622

/-! ## A002622.P12524768219568744428

`∑[A026811(n)+A001400(n)]`
-/

namespace A002622.P12524768219568744428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n + A001400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P12524768219568744428

namespace A002622

/-- `∑[A026811(n)+A001400(n)]` -/
def P12524768219568744428.Spec : Prop :=
  ∀ n, P12524768219568744428.a n = A002622 n

end A002622

/-! ## A002622.P14943878917537499572

`∑[A001402(n)-A026812(n)]`
-/

namespace A002622.P14943878917537499572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A026812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P14943878917537499572

namespace A002622

/-- `∑[A001402(n)-A026812(n)]` -/
def P14943878917537499572.Spec : Prop :=
  ∀ n, P14943878917537499572.a n = A002622 n

end A002622

/-! ## A002622.P10522200223672488923

`∑[A026811(n)+∑[A266755(n)]]`
-/

namespace A002622.P10522200223672488923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P10522200223672488923

namespace A002622

/-- `∑[A026811(n)+∑[A266755(n)]]` -/
def P10522200223672488923.Spec : Prop :=
  ∀ n, P10522200223672488923.a n = A002622 n

end A002622

/-! ## A002622.P3087080978405480989

`∑[∑[A037145(n)]-A026812(n)]`
-/

namespace A002622.P3087080978405480989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A026812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P3087080978405480989

namespace A002622

/-- `∑[∑[A037145(n)]-A026812(n)]` -/
def P3087080978405480989.Spec : Prop :=
  ∀ n, P3087080978405480989.a n = A002622 n

end A002622

/-! ## A002622.P10472545142553759957

`∑[A026811(n+5)]`
-/

namespace A002622.P10472545142553759957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P10472545142553759957

namespace A002622

/-- `∑[A026811(n+5)]` -/
def P10472545142553759957.Spec : Prop :=
  ∀ n, P10472545142553759957.a n = A002622 n

end A002622

/-! ## A002622.P3207449614196236553

`∑[A266768(2*n)]`
-/

namespace A002622.P3207449614196236553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P3207449614196236553

namespace A002622

/-- `∑[A266768(2*n)]` -/
def P3207449614196236553.Spec : Prop :=
  ∀ n, P3207449614196236553.a n = A002622 n

end A002622

/-! ## A002622.P17411887137413891928

`∑[∑[A029263(2*n)]]`
-/

namespace A002622.P17411887137413891928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029263 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P17411887137413891928

namespace A002622

/-- `∑[∑[A029263(2*n)]]` -/
def P17411887137413891928.Spec : Prop :=
  ∀ n, P17411887137413891928.a n = A002622 n

end A002622

/-! ## A002622.P1706833980082845212

`∑[∑[A029327(2*n)]]`
-/

namespace A002622.P1706833980082845212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P1706833980082845212

namespace A002622

/-- `∑[∑[A029327(2*n)]]` -/
def P1706833980082845212.Spec : Prop :=
  ∀ n, P1706833980082845212.a n = A002622 n

end A002622

/-! ## A002622.P14178800754587737672

`∑[A029207(2*n)+∑[A029207(2*n+1)]]`
-/

namespace A002622.P14178800754587737672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029207 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029207 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P14178800754587737672

namespace A002622

/-- `∑[A029207(2*n)+∑[A029207(2*n+1)]]` -/
def P14178800754587737672.Spec : Prop :=
  ∀ n, P14178800754587737672.a n = A002622 n

end A002622

/-! ## A002622.P5986226125685167688

`∑[∑[A029386(2*n)+A029331(2*n+1)]]`
-/

namespace A002622.P5986226125685167688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (2 * n) + A029331 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P5986226125685167688

namespace A002622

/-- `∑[∑[A029386(2*n)+A029331(2*n+1)]]` -/
def P5986226125685167688.Spec : Prop :=
  ∀ n, P5986226125685167688.a n = A002622 n

end A002622

/-! ## A002622.P13221887039490734269

`∑[∑[A029138(2*n)-A029140(2*n+1)]]`
-/

namespace A002622.P13221887039490734269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (2 * n) - A029140 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P13221887039490734269

namespace A002622

/-- `∑[∑[A029138(2*n)-A029140(2*n+1)]]` -/
def P13221887039490734269.Spec : Prop :=
  ∀ n, P13221887039490734269.a n = A002622 n

end A002622

/-! ## A002622.P2219634598114344822

`∑[A288166(A166523(n+2))]`
-/

namespace A002622.P2219634598114344822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (A166523 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P2219634598114344822

namespace A002622

/-- `∑[A288166(A166523(n+2))]` -/
def P2219634598114344822.Spec : Prop :=
  ∀ n, P2219634598114344822.a n = A002622 n

end A002622

/-! ## A002622.P2014597366336927175

`∑[A152157(A167614(n+1)-1)]`
-/

namespace A002622.P2014597366336927175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A167614 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002622.P2014597366336927175

namespace A002622

/-- `∑[A152157(A167614(n+1)-1)]` -/
def P2014597366336927175.Spec : Prop :=
  ∀ n, P2014597366336927175.a n = A002622 n

end A002622

/-!
# A002623: Expansion of 1/((1-x)^4*(1+x)).

The programs for A002623, the canonical program `A002623.P17999444602388370272` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002623 has offset 0).

The definition of A002623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+2x^2+2x^3-3x^4+x^5))` (program `A002623.P17999444602388370272`, by `A002623.P17999444602388370272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002623.P17999444602388370272

`ogf(1/(1-3x+2x^2+2x^3-3x^4+x^5))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002623

/-- `ogf(1/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P17999444602388370272.Spec : Prop :=
  ∀ n, P17999444602388370272.a n = A002623 n

theorem P17999444602388370272.correct : P17999444602388370272.Spec := by
  intro n
  simp only [A002623]

end A002623

/-! ## A002623.P14381901503826148647

`C(n+3, 3)-a(n-1)` with `a(0)=1`
-/

namespace A002623.P14381901503826148647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (n + 3) 3 : ℤ) - a (n - 1)

end

end A002623.P14381901503826148647

namespace A002623

/-- `C(n+3, 3)-a(n-1)` -/
def P14381901503826148647.Spec : Prop :=
  ∀ n, P14381901503826148647.a n = A002623 n

end A002623

/-! ## A002623.P3302708063001647389

`floor((n+2)*(n+4)*(2*n+3)/24)`
-/

namespace A002623.P3302708063001647389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) * (n + 4) * (2 * n + 3) : ℚ) / 24⌋

end

end A002623.P3302708063001647389

namespace A002623

/-- `floor((n+2)*(n+4)*(2*n+3)/24)` -/
def P3302708063001647389.Spec : Prop :=
  ∀ n, P3302708063001647389.a n = A002623 n

end A002623

/-! ## A002623.P11667430179614461045

`1/16*(1+(-1)^n)+(n+1)/8+C(n+2, 2)/4+C(n+3, 3)/2`
-/

namespace A002623.P11667430179614461045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 16 * (1 + (-1) ^ n : ℚ) + (n + 1 : ℚ) / 8 + (Nat.choose (n + 2) 2 : ℚ) / 4 + (Nat.choose (n + 3) 3 : ℚ) / 2

end

end A002623.P11667430179614461045

namespace A002623

/-- `1/16*(1+(-1)^n)+(n+1)/8+C(n+2, 2)/4+C(n+3, 3)/2` -/
def P11667430179614461045.Spec : Prop :=
  ∀ n, P11667430179614461045.a n = (A002623 n : ℚ)

end A002623

/-! ## A002623.P16602168300531929744

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=13, a(4)=22`
-/

namespace A002623.P16602168300531929744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 13, 22] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A002623.P16602168300531929744

namespace A002623

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P16602168300531929744.Spec : Prop :=
  ∀ n, P16602168300531929744.a n = A002623 n

end A002623

/-! ## A002623.P6926557266217568775

`a(n-2)+A000217(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A002623.P6926557266217568775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + A000217 (n + 1)

end

end A002623.P6926557266217568775

namespace A002623

/-- `a(n-2)+A000217(n+1)` -/
def P6926557266217568775.Spec : Prop :=
  ∀ n, P6926557266217568775.a n = A002623 n

end A002623

/-! ## A002623.P14781934893323900005

`A006918(n+1)+A006918(n)`
-/

namespace A002623.P14781934893323900005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1) + A006918 n

end

end A002623.P14781934893323900005

namespace A002623

/-- `A006918(n+1)+A006918(n)` -/
def P14781934893323900005.Spec : Prop :=
  ∀ n, P14781934893323900005.a n = A002623 n

end A002623

/-! ## A002623.P4506474183682896588

`A002717(n+2)-A000292(n+2)`
-/

namespace A002623.P4506474183682896588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (n + 2) - A000292 (n + 2)

end

end A002623.P4506474183682896588

namespace A002623

/-- `A002717(n+2)-A000292(n+2)` -/
def P4506474183682896588.Spec : Prop :=
  ∀ n, P4506474183682896588.a n = A002623 n

end A002623

/-! ## A002623.P17188477561735487463

`∑[∑[∑[log2(gcd(2, n))]]]`
-/

namespace A002623.P17188477561735487463
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002623.P17188477561735487463

namespace A002623

/-- `∑[∑[∑[log2(gcd(2, n))]]]` -/
def P17188477561735487463.Spec : Prop :=
  ∀ n, P17188477561735487463.a n = (A002623 n : ℝ)

end A002623

/-! ## A002623.P15352802946101001295

`∑[∑[∑[char[∑[and(2, n)]]]]]`
-/

namespace A002623.P15352802946101001295
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002623.P15352802946101001295

namespace A002623

/-- `∑[∑[∑[char[∑[and(2, n)]]]]]` -/
def P15352802946101001295.Spec : Prop :=
  ∀ n, (P15352802946101001295.a n : ℤ) = A002623 n

end A002623

/-! ## A002623.P11454300724362135382

`∑[∑[or(1, n)+1]]/2`
-/

namespace A002623.P11454300724362135382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A002623.P11454300724362135382

namespace A002623

/-- `∑[∑[or(1, n)+1]]/2` -/
def P11454300724362135382.Spec : Prop :=
  ∀ n, P11454300724362135382.a n = (A002623 n : ℚ)

end A002623

/-! ## A002623.P18076890239352417358

`-∑[∑[∑[n%2-1]]]`
-/

namespace A002623.P18076890239352417358
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002623.P18076890239352417358

namespace A002623

/-- `-∑[∑[∑[n%2-1]]]` -/
def P18076890239352417358.Spec : Prop :=
  ∀ n, P18076890239352417358.a n = A002623 n

end A002623

/-! ## A002623.P6964311144002846272

`∑[∑[∑[∑[ogf(1/(1+x))]]]]`
-/

namespace A002623.P6964311144002846272
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002623.P6964311144002846272

namespace A002623

/-- `∑[∑[∑[∑[ogf(1/(1+x))]]]]` -/
def P6964311144002846272.Spec : Prop :=
  ∀ n, P6964311144002846272.a n = A002623 n

end A002623

/-! ## A002623.P15247908716019175040

`∑[and(-2, (n+2)²)]/4`
-/

namespace A002623.P15247908716019175040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A002623.P15247908716019175040

namespace A002623

/-- `∑[and(-2, (n+2)²)]/4` -/
def P15247908716019175040.Spec : Prop :=
  ∀ n, P15247908716019175040.a n = (A002623 n : ℚ)

end A002623

/-! ## A002623.P15494485193855515373

`∑[∑[∑[1-a(n-1)]]]` with `a(0)=1`
-/

namespace A002623.P15494485193855515373
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  1 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002623.P15494485193855515373

namespace A002623

/-- `∑[∑[∑[1-a(n-1)]]]` -/
def P15494485193855515373.Spec : Prop :=
  ∀ n, P15494485193855515373.a n = A002623 n

end A002623

/-! ## A002623.P12876083130280545758

`∑[∑[n+2-and(1, n)]]/2`
-/

namespace A002623.P12876083130280545758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A002623.P12876083130280545758

namespace A002623

/-- `∑[∑[n+2-and(1, n)]]/2` -/
def P12876083130280545758.Spec : Prop :=
  ∀ n, P12876083130280545758.a n = (A002623 n : ℚ)

end A002623

/-! ## A002623.P1790982278176249577

`floor(a(n-1)+(n/2+1)²)` with `a(0)=1`
-/

namespace A002623.P1790982278176249577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / 2 + 1) ^ 2⌋

end

end A002623.P1790982278176249577

namespace A002623

/-- `floor(a(n-1)+(n/2+1)²)` -/
def P1790982278176249577.Spec : Prop :=
  ∀ n, P1790982278176249577.a n = A002623 n

end A002623

/-! ## A002623.P12293759866689153664

`round(a(n-1)+((n+2)/2)²)` with `a(0)=1`
-/

namespace A002623.P12293759866689153664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + ((n + 2 : ℚ) / 2) ^ 2)

end

end A002623.P12293759866689153664

namespace A002623

/-- `round(a(n-1)+((n+2)/2)²)` -/
def P12293759866689153664.Spec : Prop :=
  ∀ n, P12293759866689153664.a n = A002623 n

end A002623

/-! ## A002623.P9863456109154743366

`∑[∑[and(1, n+1)+n+1]]/2`
-/

namespace A002623.P9863456109154743366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A002623.P9863456109154743366

namespace A002623

/-- `∑[∑[and(1, n+1)+n+1]]/2` -/
def P9863456109154743366.Spec : Prop :=
  ∀ n, P9863456109154743366.a n = (A002623 n : ℚ)

end A002623

/-!
# A002624: Expansion of (1-x)^(-3) * (1-x^2)^(-2).

The programs for A002624, the canonical program `A002624.P1336598652482183503` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002624 has offset 0).

The definition of A002624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))` (program `A002624.P1336598652482183503`, by `A002624.P1336598652482183503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002624.P1336598652482183503

`ogf(1/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002624

/-- `ogf(1/(1-3x+x^2+5x^3-5x^4-x^5+3x^6-x^7))` -/
def P1336598652482183503.Spec : Prop :=
  ∀ n, P1336598652482183503.a n = A002624 n

theorem P1336598652482183503.correct : P1336598652482183503.Spec := by
  intro n
  simp only [A002624]

end A002624

/-! ## A002624.P6643906930701569555

`(n^4+14*n^3+68*n²+136*n-n%2*(6*n+21))/96+1`
-/

namespace A002624.P6643906930701569555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 + 14 * n ^ 3 + 68 * n ^ 2 + 136 * n : ℤ) - ((n % 2 * (6 * n + 21) : ℕ) : ℤ) : ℚ) / 96 + 1

end

end A002624.P6643906930701569555

namespace A002624

/-- `(n^4+14*n^3+68*n²+136*n-n%2*(6*n+21))/96+1` -/
def P6643906930701569555.Spec : Prop :=
  ∀ n, P6643906930701569555.a n = (A002624 n : ℚ)

end A002624

/-! ## A002624.P8691345534086096714

`∑[∑[C(floor(n/2)+2, 2)]]`
-/

namespace A002624.P8691345534086096714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002624.P8691345534086096714

namespace A002624

/-- `∑[∑[C(floor(n/2)+2, 2)]]` -/
def P8691345534086096714.Spec : Prop :=
  ∀ n, (P8691345534086096714.a n : ℤ) = A002624 n

end A002624

/-! ## A002624.P4420472835430497084

`∑[∑[floor(or(1, n+2)²/8)]]`
-/

namespace A002624.P4420472835430497084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 2) ^ 2 : ℚ) / 8⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002624.P4420472835430497084

namespace A002624

/-- `∑[∑[floor(or(1, n+2)²/8)]]` -/
def P4420472835430497084.Spec : Prop :=
  ∀ n, P4420472835430497084.a n = A002624 n

end A002624

/-! ## A002624.P7559310703332361120

`∑[∑[round(or(1, n+2)²/8)]]`
-/

namespace A002624.P7559310703332361120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 2) ^ 2 : ℚ) / 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002624.P7559310703332361120

namespace A002624

/-- `∑[∑[round(or(1, n+2)²/8)]]` -/
def P7559310703332361120.Spec : Prop :=
  ∀ n, P7559310703332361120.a n = A002624 n

end A002624

/-! ## A002624.P15884220486479404106

`∑[∑[∑[∑[n+1]%(n+2)]]]`
-/

namespace A002624.P15884220486479404106
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) % (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002624.P15884220486479404106

namespace A002624

/-- `∑[∑[∑[∑[n+1]%(n+2)]]]` -/
def P15884220486479404106.Spec : Prop :=
  ∀ n, (P15884220486479404106.a n : ℤ) = A002624 n

end A002624

/-! ## A002624.P4166868731633077229

`∑[∑[∑[∑[∑[(n+1)*(-1)^n]]]]]`
-/

namespace A002624.P4166868731633077229
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002624.P4166868731633077229

namespace A002624

/-- `∑[∑[∑[∑[∑[(n+1)*(-1)^n]]]]]` -/
def P4166868731633077229.Spec : Prop :=
  ∀ n, P4166868731633077229.a n = A002624 n

end A002624

/-! ## A002624.P7367236490699881136

`∑[∑[∑[a(n-2)+2]-a(n-1)]]/2` with `a(0)=2, a(1)=2`
-/

namespace A002624.P7367236490699881136
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f3 =>
  f3 (n - 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A002624.P7367236490699881136

namespace A002624

/-- `∑[∑[∑[a(n-2)+2]-a(n-1)]]/2` -/
def P7367236490699881136.Spec : Prop :=
  ∀ n, P7367236490699881136.a n = (A002624 n : ℚ)

end A002624

/-! ## A002624.P12011672193043675950

`A032091(n+6)/2`
-/

namespace A002624.P12011672193043675950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032091 (n + 6) : ℚ) / 2

end

end A002624.P12011672193043675950

namespace A002624

/-- `A032091(n+6)/2` -/
def P12011672193043675950.Spec : Prop :=
  ∀ n, P12011672193043675950.a n = (A002624 n : ℚ)

theorem P12011672193043675950.correct : P12011672193043675950.Spec := by
  intro n
  simp only [A002624, Nat.add_sub_cancel, A002624.P12011672193043675950.a, A002624.P1336598652482183503.a, A032091, A032091.P3822543457742477574.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002624

/-! ## A002624.P8431915492491354767

`A001752(n)-a(n-1)` with `a(0)=1`
-/

namespace A002624.P8431915492491354767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001752 n - a (n - 1)

end

end A002624.P8431915492491354767

namespace A002624

/-- `A001752(n)-a(n-1)` -/
def P8431915492491354767.Spec : Prop :=
  ∀ n, P8431915492491354767.a n = A002624 n

end A002624

/-! ## A002624.P7575015011235466631

`A002623(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A002624.P7575015011235466631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A002623 n + a (n - 2)

end

end A002624.P7575015011235466631

namespace A002624

/-- `A002623(n)+a(n-2)` -/
def P7575015011235466631.Spec : Prop :=
  ∀ n, P7575015011235466631.a n = A002624 n

end A002624

/-! ## A002624.P14847777494588685854

`A005994(n)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A002624.P14847777494588685854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A005994 n - a (n - 2)

end

end A002624.P14847777494588685854

namespace A002624

/-- `A005994(n)-a(n-2)` -/
def P14847777494588685854.Spec : Prop :=
  ∀ n, P14847777494588685854.a n = A002624 n

end A002624

/-! ## A002624.P5136320182200517525

`A052938(n)*A058187(n)`
-/

namespace A002624.P5136320182200517525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n * A058187 n

end

end A002624.P5136320182200517525

namespace A002624

/-- `A052938(n)*A058187(n)` -/
def P5136320182200517525.Spec : Prop :=
  ∀ n, P5136320182200517525.a n = A002624 n

end A002624

/-! ## A002624.P5630598660114805711

`(A005994(n)+A002623(n))/2`
-/

namespace A002624.P5630598660114805711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005994 n + A002623 n : ℚ) / 2

end

end A002624.P5630598660114805711

namespace A002624

/-- `(A005994(n)+A002623(n))/2` -/
def P5630598660114805711.Spec : Prop :=
  ∀ n, P5630598660114805711.a n = (A002624 n : ℚ)

end A002624

/-! ## A002624.P16440022086165215823

`2*A028346(n)-A001753(n)`
-/

namespace A002624.P16440022086165215823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028346 n - A001753 n

end

end A002624.P16440022086165215823

namespace A002624

/-- `2*A028346(n)-A001753(n)` -/
def P16440022086165215823.Spec : Prop :=
  ∀ n, P16440022086165215823.a n = A002624 n

end A002624

/-! ## A002624.P6073589220290363106

`(A266769(n)+A055328(n+6))/2`
-/

namespace A002624.P6073589220290363106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266769 n + A055328 (n + 6) : ℚ) / 2

end

end A002624.P6073589220290363106

namespace A002624

/-- `(A266769(n)+A055328(n+6))/2` -/
def P6073589220290363106.Spec : Prop :=
  ∀ n, P6073589220290363106.a n = (A002624 n : ℚ)

end A002624

/-! ## A002624.P15154180490520426338

`(A032092(n+7)-A005995(n))/2`
-/

namespace A002624.P15154180490520426338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032092 (n + 7) - A005995 n : ℚ) / 2

end

end A002624.P15154180490520426338

namespace A002624

/-- `(A032092(n+7)-A005995(n))/2` -/
def P15154180490520426338.Spec : Prop :=
  ∀ n, P15154180490520426338.a n = (A002624 n : ℚ)

end A002624

/-! ## A002624.P17971479581171700101

`(A227327(n+1)+A026035(n+2))/2`
-/

namespace A002624.P17971479581171700101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227327 (n + 1) + A026035 (n + 2) : ℚ) / 2

end

end A002624.P17971479581171700101

namespace A002624

/-- `(A227327(n+1)+A026035(n+2))/2` -/
def P17971479581171700101.Spec : Prop :=
  ∀ n, P17971479581171700101.a n = (A002624 n : ℚ)

end A002624

/-! ## A002624.P5101055363319005496

`A032247(n+9)-(A008804(n)+A005513(n+6))`
-/

namespace A002624.P5101055363319005496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032247 (n + 9) - (A008804 n + A005513 (n + 6))

end

end A002624.P5101055363319005496

namespace A002624

/-- `A032247(n+9)-(A008804(n)+A005513(n+6))` -/
def P5101055363319005496.Spec : Prop :=
  ∀ n, P5101055363319005496.a n = A002624 n

end A002624

/-! ## A002624.P6405074059463531106

`A006918(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A002624.P6405074059463531106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006918 (n + 1) + a (n - 1)

end

end A002624.P6405074059463531106

namespace A002624

/-- `A006918(n+1)+a(n-1)` -/
def P6405074059463531106.Spec : Prop :=
  ∀ n, P6405074059463531106.a n = A002624 n

end A002624

/-!
# A002625: Expansion of 1/((1-x)^3*(1-x^2)^2*(1-x^3)).

The programs for A002625, the canonical program `A002625.P2612260616806101508` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002625 has offset 0).

The definition of A002625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2+4x^3-2x^4-2x^5-2x^6+4x^7+x^8-3x^9+x^10))` (program `A002625.P2612260616806101508`, by `A002625.P2612260616806101508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002625.P2612260616806101508

`ogf(1/(1-3x+x^2+4x^3-2x^4-2x^5-2x^6+4x^7+x^8-3x^9+x^10))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002625

/-- `ogf(1/(1-3x+x^2+4x^3-2x^4-2x^5-2x^6+4x^7+x^8-3x^9+x^10))` -/
def P2612260616806101508.Spec : Prop :=
  ∀ n, P2612260616806101508.a n = A002625 n

theorem P2612260616806101508.correct : P2612260616806101508.Spec := by
  intro n
  simp only [A002625]

end A002625

/-! ## A002625.P15000426711150109860

`∑[A097701(n)]`
-/

namespace A002625.P15000426711150109860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P15000426711150109860

namespace A002625

/-- `∑[A097701(n)]` -/
def P15000426711150109860.Spec : Prop :=
  ∀ n, P15000426711150109860.a n = A002625 n

end A002625

/-! ## A002625.P8846234283175111078

`∑[∑[A266769(n)]]`
-/

namespace A002625.P8846234283175111078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P8846234283175111078

namespace A002625

/-- `∑[∑[A266769(n)]]` -/
def P8846234283175111078.Spec : Prop :=
  ∀ n, P8846234283175111078.a n = A002625 n

end A002625

/-! ## A002625.P8039606164984126023

`∑[∑[∑[A008731(n)]]]`
-/

namespace A002625.P8039606164984126023
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P8039606164984126023

namespace A002625

/-- `∑[∑[∑[A008731(n)]]]` -/
def P8039606164984126023.Spec : Prop :=
  ∀ n, P8039606164984126023.a n = A002625 n

end A002625

/-! ## A002625.P1678577637841585628

`A057524(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A002625.P1678577637841585628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A057524 n + a (n - 2)

end

end A002625.P1678577637841585628

namespace A002625

/-- `A057524(n)+a(n-2)` -/
def P1678577637841585628.Spec : Prop :=
  ∀ n, P1678577637841585628.a n = A002625 n

end A002625

/-! ## A002625.P11161243404105471790

`A002624(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A002625.P11161243404105471790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  A002624 n + a (n - 3)

end

end A002625.P11161243404105471790

namespace A002625

/-- `A002624(n)+a(n-3)` -/
def P11161243404105471790.Spec : Prop :=
  ∀ n, P11161243404105471790.a n = A002625 n

end A002625

/-! ## A002625.P3691200359948864166

`∑[∑[A000601(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A002625.P3691200359948864166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000601 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P3691200359948864166

namespace A002625

/-- `∑[∑[A000601(n)-a(n-1)]]` -/
def P3691200359948864166.Spec : Prop :=
  ∀ n, P3691200359948864166.a n = A002625 n

end A002625

/-! ## A002625.P6634582037247728637

`∑[∑[A008769(n)+A001971(n)]]`
-/

namespace A002625.P6634582037247728637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 n + A001971 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P6634582037247728637

namespace A002625

/-- `∑[∑[A008769(n)+A001971(n)]]` -/
def P6634582037247728637.Spec : Prop :=
  ∀ n, P6634582037247728637.a n = A002625 n

end A002625

/-! ## A002625.P8787398287803960438

`∑[∑[A014126(n)-A006918(n)]]`
-/

namespace A002625.P8787398287803960438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 n - A006918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P8787398287803960438

namespace A002625

/-- `∑[∑[A014126(n)-A006918(n)]]` -/
def P8787398287803960438.Spec : Prop :=
  ∀ n, P8787398287803960438.a n = A002625 n

end A002625

/-! ## A002625.P18151988783729474443

`A038163(n+1)+A164680(n+1)-A164680(n+2)`
-/

namespace A002625.P18151988783729474443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038163 (n + 1) + (A164680 (n + 1) - A164680 (n + 2))

end

end A002625.P18151988783729474443

namespace A002625

/-- `A038163(n+1)+A164680(n+1)-A164680(n+2)` -/
def P18151988783729474443.Spec : Prop :=
  ∀ n, P18151988783729474443.a n = A002625 n

end A002625

/-! ## A002625.P10967253241482023392

`∑[∑[A008763(n+4)]]`
-/

namespace A002625.P10967253241482023392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P10967253241482023392

namespace A002625

/-- `∑[∑[A008763(n+4)]]` -/
def P10967253241482023392.Spec : Prop :=
  ∀ n, P10967253241482023392.a n = A002625 n

end A002625

/-! ## A002625.P17100963245461742704

`∑[A115270(2*n)]`
-/

namespace A002625.P17100963245461742704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115270 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P17100963245461742704

namespace A002625

/-- `∑[A115270(2*n)]` -/
def P17100963245461742704.Spec : Prop :=
  ∀ n, P17100963245461742704.a n = A002625 n

end A002625

/-! ## A002625.P9874129827990473724

`∑[∑[A027636(2*n)]]`
-/

namespace A002625.P9874129827990473724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027636 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P9874129827990473724

namespace A002625

/-- `∑[∑[A027636(2*n)]]` -/
def P9874129827990473724.Spec : Prop :=
  ∀ n, P9874129827990473724.a n = A002625 n

end A002625

/-! ## A002625.P3405535671992222945

`∑[∑[A029034(2*n)]]`
-/

namespace A002625.P3405535671992222945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029034 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P3405535671992222945

namespace A002625

/-- `∑[∑[A029034(2*n)]]` -/
def P3405535671992222945.Spec : Prop :=
  ∀ n, P3405535671992222945.a n = A002625 n

end A002625

/-! ## A002625.P14831757391554580294

`∑[∑[A029152(3*n)]]`
-/

namespace A002625.P14831757391554580294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029152 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P14831757391554580294

namespace A002625

/-- `∑[∑[A029152(3*n)]]` -/
def P14831757391554580294.Spec : Prop :=
  ∀ n, P14831757391554580294.a n = A002625 n

end A002625

/-! ## A002625.P7191864490588613031

`∑[A229706(A167614(n+1))]`
-/

namespace A002625.P7191864490588613031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229706 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P7191864490588613031

namespace A002625

/-- `∑[A229706(A167614(n+1))]` -/
def P7191864490588613031.Spec : Prop :=
  ∀ n, P7191864490588613031.a n = A002625 n

end A002625

/-!
# A002626: Expansion of 1/((1-x)^3 (1-x^2)^2 (1-x^3) (1-x^4)).

The programs for A002626, the canonical program `A002626.P16535901843177182351` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002626 has offset 0).

The definition of A002626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2+4x^3-3x^4+x^5-3x^6+3x^8-x^9+3x^10-4x^11-x^12+3x^13-x^14))` (program `A002626.P16535901843177182351`, by `A002626.P16535901843177182351.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002626.P16535901843177182351

`ogf(1/(1-3x+x^2+4x^3-3x^4+x^5-3x^6+3x^8-x^9+3x^10-4x^11-x^12+3x^13-x^14))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002626

/-- `ogf(1/(1-3x+x^2+4x^3-3x^4+x^5-3x^6+3x^8-x^9+3x^10-4x^11-x^12+3x^13-x^14))` -/
def P16535901843177182351.Spec : Prop :=
  ∀ n, P16535901843177182351.a n = A002626 n

theorem P16535901843177182351.correct : P16535901843177182351.Spec := by
  intro n
  simp only [A002626]

end A002626

/-! ## A002626.P11458910412784448844

`∑[∑[A115264(n)]]`
-/

namespace A002626.P11458910412784448844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002626.P11458910412784448844

namespace A002626

/-- `∑[∑[A115264(n)]]` -/
def P11458910412784448844.Spec : Prop :=
  ∀ n, P11458910412784448844.a n = A002626 n

end A002626

/-! ## A002626.P7416404722466656904

`∑[A139672(n+1)]`
-/

namespace A002626.P7416404722466656904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002626.P7416404722466656904

namespace A002626

/-- `∑[A139672(n+1)]` -/
def P7416404722466656904.Spec : Prop :=
  ∀ n, P7416404722466656904.a n = A002626 n

end A002626

/-! ## A002626.P9824250548418156765

`∑[∑[∑[A254594(n)]]]`
-/

namespace A002626.P9824250548418156765
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002626.P9824250548418156765

namespace A002626

/-- `∑[∑[∑[A254594(n)]]]` -/
def P9824250548418156765.Spec : Prop :=
  ∀ n, P9824250548418156765.a n = A002626 n

end A002626

/-! ## A002626.P11269691705265128584

`∑[∑[A002621(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A002626.P11269691705265128584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002621 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002626.P11269691705265128584

namespace A002626

/-- `∑[∑[A002621(n)-a(n-1)]]` -/
def P11269691705265128584.Spec : Prop :=
  ∀ n, P11269691705265128584.a n = A002626 n

end A002626

/-! ## A002626.P5268894947483469595

`∑[∑[A001400(n)+a(n-2)]]` with `a(0)=1, a(1)=1`
-/

namespace A002626.P5268894947483469595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A001400 n + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002626.P5268894947483469595

namespace A002626

/-- `∑[∑[A001400(n)+a(n-2)]]` -/
def P5268894947483469595.Spec : Prop :=
  ∀ n, P5268894947483469595.a n = A002626 n

end A002626

/-!
# A002627: a(n) = n*a(n-1) + 1, a(0) = 0.

The programs for A002627, the canonical program `A002627.P17737737289086489454` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002627 has offset 0).

The definition of A002627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+1` (program `A002627.P17737737289086489454`, by `A002627.P17737737289086489454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002627.P17737737289086489454

`n*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002627

/-- `n*a(n-1)+1` -/
def P17737737289086489454.Spec : Prop :=
  ∀ n, (P17737737289086489454.a n : ℤ) = A002627 n

theorem P17737737289086489454.correct : P17737737289086489454.Spec := by
  intro n
  simp only [A002627]

end A002627

/-! ## A002627.P7363070678182783377

`∑{#}[n-1, #!*C(n, #)]`
-/

namespace A002627.P7363070678182783377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.factorial k * Nat.choose n k

end

end A002627.P7363070678182783377

namespace A002627

/-- `∑{#}[n-1, #!*C(n, #)]` -/
def P7363070678182783377.Spec : Prop :=
  ∀ n, (P7363070678182783377.a n : ℤ) = A002627 n

end A002627

/-! ## A002627.P7692393079304069832

`A000522(n)-n!`
-/

namespace A002627.P7692393079304069832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n - (Nat.factorial n : ℤ)

end

end A002627.P7692393079304069832

namespace A002627

/-- `A000522(n)-n!` -/
def P7692393079304069832.Spec : Prop :=
  ∀ n, P7692393079304069832.a n = A002627 n

end A002627

/-! ## A002627.P12396313498813797289

`1+a(n-1)*n` with `a(0)=0`
-/

namespace A002627.P12396313498813797289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (n - 1) * n

end

end A002627.P12396313498813797289

namespace A002627

/-- `1+a(n-1)*n` -/
def P12396313498813797289.Spec : Prop :=
  ∀ n, (P12396313498813797289.a n : ℤ) = A002627 n

end A002627

/-! ## A002627.P7952103921302941307

`1-floor(-(n*a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A002627.P7952103921302941307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (-((n : ℤ) * a (n - 1)))

end

end A002627.P7952103921302941307

namespace A002627

/-- `1-floor(-(n*a(n-1)))` -/
def P7952103921302941307.Spec : Prop :=
  ∀ n, P7952103921302941307.a n = A002627 n

end A002627

/-! ## A002627.P420667460543224066

`1-ceil(-(n*a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A002627.P420667460543224066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (-((n : ℤ) * a (n - 1)))

end

end A002627.P420667460543224066

namespace A002627

/-- `1-ceil(-(n*a(n-1)))` -/
def P420667460543224066.Spec : Prop :=
  ∀ n, P420667460543224066.a n = A002627 n

end A002627

/-! ## A002627.P9863567568853050585

`abs(xor(n*a(n-1), -1))` with `a(0)=0`
-/

namespace A002627.P9863567568853050585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor ((n : ℤ) * a (n - 1)) (-1)|

end

end A002627.P9863567568853050585

namespace A002627

/-- `abs(xor(n*a(n-1), -1))` -/
def P9863567568853050585.Spec : Prop :=
  ∀ n, P9863567568853050585.a n = A002627 n

end A002627

/-! ## A002627.P13591540014618308733

`1-round(-(n*a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A002627.P13591540014618308733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (-((n : ℤ) * a (n - 1)))

end

end A002627.P13591540014618308733

namespace A002627

/-- `1-round(-(n*a(n-1)))` -/
def P13591540014618308733.Spec : Prop :=
  ∀ n, P13591540014618308733.a n = A002627 n

end A002627

/-! ## A002627.P10111585292888966206

`-xor(n*a(n-1), -1)` with `a(0)=0`
-/

namespace A002627.P10111585292888966206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.xor ((n : ℤ) * a (n - 1)) (-1)

end

end A002627.P10111585292888966206

namespace A002627

/-- `-xor(n*a(n-1), -1)` -/
def P10111585292888966206.Spec : Prop :=
  ∀ n, P10111585292888966206.a n = A002627 n

end A002627

/-! ## A002627.P6581953430811669733

`a(n-1)/n^(-1)+1` with `a(0)=0`
-/

namespace A002627.P6581953430811669733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + 1

end

end A002627.P6581953430811669733

namespace A002627

/-- `a(n-1)/n^(-1)+1` -/
def P6581953430811669733.Spec : Prop :=
  ∀ n, P6581953430811669733.a n = (A002627 n : ℚ)

end A002627

/-!
# A002628: Number of permutations of length n without 3-sequences.

The programs for A002628, there is no canonical definition to state claims against.
-/

/-! ## A002628.P3952365712526533039

`A047921(A022856(n+2))`
-/

namespace A002628.P3952365712526533039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047921 (A022856 (n + 2)).toNat

end

end A002628.P3952365712526533039

/-! ## A002628.P6898864486212095020

`A132647(n)-A370392(n)`
-/

namespace A002628.P6898864486212095020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132647 n - A370392 n

end

end A002628.P6898864486212095020

/-! ## A002628.P17897127338531050843

`A047921(A016028(1+n)-1)`
-/

namespace A002628.P17897127338531050843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047921 (A016028 (1 + n) - 1).toNat

end

end A002628.P17897127338531050843

/-! ## A002628.P12634952869628039746

`A047921(A000124(n)-A004275(n))`
-/

namespace A002628.P12634952869628039746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047921 (A000124 n - A004275 n).toNat

end

end A002628.P12634952869628039746

/-! ## A002628.P13354145341496333783

`A047921(lt[A142249(n+1), 2])`
-/

namespace A002628.P13354145341496333783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142249 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047921 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A002628.P13354145341496333783

/-!
# A002629: Number of permutations of length n with one 3-sequence.

The programs for A002629, there is no canonical definition to state claims against.
-/

/-! ## A002629.P8673095785397200704

`A070098(A305710(n))`
-/

namespace A002629.P8673095785397200704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (A305710 n).toNat

end

end A002629.P8673095785397200704

/-! ## A002629.P16848956521959884901

`A002265(A099237(n)+log2(gcd(2, n)))`
-/

namespace A002629.P16848956521959884901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A099237 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat

end

end A002629.P16848956521959884901

/-! ## A002629.P16025954987327784126

`A059169(A333382(n)+A099237(n))`
-/

namespace A002629.P16025954987327784126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A333382 n + A099237 n).toNat

end

end A002629.P16025954987327784126

/-!
# A002630: Number of permutations of length n with two 3-sequences.

The programs for A002630, there is no canonical definition to state claims against.
-/

/-! ## A002630.P606021476554279727

`A343609(A117158(n)+3)`
-/

namespace A002630.P606021476554279727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A117158 n + 3).toNat

end

end A002630.P606021476554279727

/-! ## A002630.P16556848345226539253

`A059995(A324135(n)+4)`
-/

namespace A002630.P16556848345226539253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A324135 n + 4).toNat

end

end A002630.P16556848345226539253

/-! ## A002630.P8805759471767542961

`A247911(floor(A048803(n)/3)+1)-1`
-/

namespace A002630.P8805759471767542961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (⌊(A048803 n : ℚ) / 3⌋ + 1).toNat - 1

end

end A002630.P8805759471767542961

/-! ## A002630.P10243806917779466400

`A008615(A020127(n)-A141690(n))`
-/

namespace A002630.P10243806917779466400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A020127 n - A141690 n).toNat

end

end A002630.P10243806917779466400

/-!
# A002631: Number of circuits of nullity n.

The programs for A002631, there is no canonical definition to state claims against.
-/

/-! ## A002631.P1910148086562404827

`A218969(2*n)+2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A002631.P1910148086562404827
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218969 (2 * n) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A002631.P1910148086562404827

/-!
# A002633: Related to discordant permutations.

The programs for A002633, the canonical program `A002633.P11551127520850215426` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002633 has offset 0).

The definition of A002633 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002633.P11551127520850215426

`∑{#}[n, A213170(#)*A269953(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002633

/-- `∑{#}[n, A213170(#)*A269953(C(n+1, 2)+#)]` -/
def P11551127520850215426.Spec : Prop :=
  ∀ n, P11551127520850215426.a n = A002633 n

theorem P11551127520850215426.correct : P11551127520850215426.Spec := by
  intro n
  simp only [A002633]

end A002633

/-!
# A002634: From discordant permutations.

The programs for A002634, there is no canonical definition to state claims against.
-/

/-! ## A002634.P1258768903295195227

`A319626(A125712(n+1))-A125705(n+5)`
-/

namespace A002634.P1258768903295195227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A125712 (n + 1)).toNat - A125705 (n + 5)

end

end A002634.P1258768903295195227

/-!
# A002635: Number of partitions of n into 4 squares.

The programs for A002635, there is no canonical definition to state claims against.
-/

/-! ## A002635.P2556372880547177649

`A025428(n)+A000164(n)`
-/

namespace A002635.P2556372880547177649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + A000164 n

end

end A002635.P2556372880547177649

/-! ## A002635.P16421482190717668665

`A000174(n)-A025429(n)`
-/

namespace A002635.P16421482190717668665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - A025429 n

end

end A002635.P16421482190717668665

/-! ## A002635.P12168456146080917300

`A000161(n)+A025428(n)+A025427(n)`
-/

namespace A002635.P12168456146080917300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + (A025428 n + A025427 n)

end

end A002635.P12168456146080917300

/-! ## A002635.P12165665348095097730

`A000177(n)-(A025430(n)+A025429(n))`
-/

namespace A002635.P12165665348095097730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n - (A025430 n + A025429 n)

end

end A002635.P12165665348095097730

/-! ## A002635.P992806712634303920

`A025428(n)+A110654(A000925(n))+A025427(n)`
-/

namespace A002635.P992806712634303920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + (A110654 (A000925 n).toNat + A025427 n)

end

end A002635.P992806712634303920

/-! ## A002635.P14463580393946284003

`A000164(A008574(n))-A001489(A025428(n))`
-/

namespace A002635.P14463580393946284003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A008574 n).toNat - A001489 (A025428 n).toNat

end

end A002635.P14463580393946284003

/-!
# A002636: Number of ways of writing n as an unordered sum of at most 3 nonzero triangular numbers.

The programs for A002636, there is no canonical definition to state claims against.
-/

/-! ## A002636.P4459492117560890623

`A224326(n)+A033761(n)`
-/

namespace A002636.P4459492117560890623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n + A033761 n

end

end A002636.P4459492117560890623

/-! ## A002636.P14278712007138537012

`A063993(n)+A052343(n)`
-/

namespace A002636.P14278712007138537012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 n + A052343 n

end

end A002636.P14278712007138537012

/-! ## A002636.P2347031546885070103

`A110654(A008441(n))+A063993(n)`
-/

namespace A002636.P2347031546885070103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008441 n).toNat + A063993 n

end

end A002636.P2347031546885070103

/-! ## A002636.P4565785021387073050

`A063993(n)+A004526(A008441(n)+1)`
-/

namespace A002636.P4565785021387073050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 n + A004526 (A008441 n + 1).toNat

end

end A002636.P4565785021387073050

/-! ## A002636.P2391404399303451389

`A010054(n)+A063993(n)+A052344(n)`
-/

namespace A002636.P2391404399303451389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A063993 n + A052344 n)

end

end A002636.P2391404399303451389

/-! ## A002636.P5629760725757019871

`A063993(n)+A035214(n)+A052344(n)-1`
-/

namespace A002636.P5629760725757019871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 n + (A035214 n + (A052344 n - 1))

end

end A002636.P5629760725757019871

/-! ## A002636.P41954371442805226

`A063993(n)+(A008441(n)+A005369(n))/2`
-/

namespace A002636.P41954371442805226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063993 n : ℚ) + (A008441 n + A005369 n : ℚ) / 2

end

end A002636.P41954371442805226

/-! ## A002636.P5331640022580485660

`A063993(n)+round(A125079(2*n)/2)`
-/

namespace A002636.P5331640022580485660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 n + SequenceMachineLib.roundAway ((A125079 (2 * n) : ℚ) / 2)

end

end A002636.P5331640022580485660

/-! ## A002636.P6828212627745876618

`A063993(n)+ceil(A129447(2*n)/2)`
-/

namespace A002636.P6828212627745876618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 n + ⌈(A129447 (2 * n) : ℚ) / 2⌉

end

end A002636.P6828212627745876618

/-! ## A002636.P784436246489652268

`A063993(n)+A000925(4*n+1)/2`
-/

namespace A002636.P784436246489652268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063993 n : ℚ) + (A000925 (4 * n + 1) : ℚ) / 2

end

end A002636.P784436246489652268

/-! ## A002636.P17936215057384622194

`A000164(8*n+3)`
-/

namespace A002636.P17936215057384622194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (8 * n + 3)

end

end A002636.P17936215057384622194

/-! ## A002636.P17322268894594557118

`A025427(8*n+3)`
-/

namespace A002636.P17322268894594557118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (8 * n + 3)

end

end A002636.P17322268894594557118

/-!
# A002637: Number of partitions of n into not more than 5 pentagonal numbers.

The programs for A002637, there is no canonical definition to state claims against.
-/

/-! ## A002637.P9928659696576440276

`A353507(∑[A192701(n+1)+1])`
-/

namespace A002637.P9928659696576440276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192701 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353507 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002637.P9928659696576440276

/-! ## A002637.P9716301660685777529

`A154325(C(comp[8*n+9], A002828(n)))`
-/

namespace A002637.P9716301660685777529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (A002828 n).toNat)

end

end A002637.P9716301660685777529

/-! ## A002637.P5160019259546809425

`A107751(lcm(A074193(n), A107751(n)))`
-/

namespace A002637.P5160019259546809425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 (Int.lcm (A074193 n) (A107751 n))

end

end A002637.P5160019259546809425

/-! ## A002637.P12733860155707640176

`A001468(lcm(A000096(n), A329032(n)))`
-/

namespace A002637.P12733860155707640176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (Int.lcm (A000096 n) (A329032 n))

end

end A002637.P12733860155707640176

/-! ## A002637.P7593584818603907784

`A361691(A070861(n)+A060187(n+1))`
-/

namespace A002637.P7593584818603907784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361691 (A070861 n + A060187 (n + 1)).toNat

end

end A002637.P7593584818603907784

/-!
# A002638: a(n) = (number of nonisomorphic nontransitive prime tournaments on n nodes) - Moebius(n).

The programs for A002638, there is no canonical definition to state claims against.
-/

/-! ## A002638.P17358194267083195691

`A259106(n+1)-A008683(n+1)`
-/

namespace A002638.P17358194267083195691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259106 (n + 1) - A008683 (n + 1)

end

end A002638.P17358194267083195691

/-! ## A002638.P16754588135688435741

`A259106(n+1)-∏{e}[n+1, -#!]%2`
-/

namespace A002638.P16754588135688435741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259106 (n + 1) - Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ))) 2

end

end A002638.P16754588135688435741

/-! ## A002638.P16969775498952625135

`A259106(n+1)-A253206(n+1)`
-/

namespace A002638.P16969775498952625135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259106 (n + 1) - A253206 (n + 1)

end

end A002638.P16969775498952625135

/-! ## A002638.P1785581041141998647

`A259106(n+1)+1-A007423(n+1)`
-/

namespace A002638.P1785581041141998647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259106 (n + 1) + (1 - A007423 (n + 1))

end

end A002638.P1785581041141998647

/-! ## A002638.P14950060971902987837

`A259106(n+1)-(A080847(n+1)-2)`
-/

namespace A002638.P14950060971902987837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259106 (n + 1) - (A080847 (n + 1) - 2)

end

end A002638.P14950060971902987837

/-!
# A002639: Numerators of expansion of Jacobi nome q in parameter m.

The programs for A002639, there is no canonical definition to state claims against.
-/

/-! ## A002639.P7561718224887062536

`A005797(n)/gcd(A005797(n), A119349(n))`
-/

namespace A002639.P7561718224887062536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005797 n : ℚ) / (Int.gcd (A005797 n) (A119349 n) : ℚ)

end

end A002639.P7561718224887062536

/-! ## A002639.P795601028864785677

`A106617(A005797(n)/A026300(n))`
-/

namespace A002639.P795601028864785677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (SequenceMachineLib.roundAway ((A005797 n : ℚ) / (A026300 n : ℚ))).toNat

end

end A002639.P795601028864785677

/-!
# A002640: Numbers k such that (k^2 + k + 1)/3 is prime.

The programs for A002640, there is no canonical definition to state claims against.
-/

/-! ## A002640.P12003015399463878489

`3*A111251(n+1)+1`
-/

namespace A002640.P12003015399463878489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111251 (n + 1) + 1

end

end A002640.P12003015399463878489

/-! ## A002640.P5090181615514361148

`3*A002504(n+1)-2`
-/

namespace A002640.P5090181615514361148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002504 (n + 1) - 2

end

end A002640.P5090181615514361148

/-! ## A002640.P10001587800226291068

`A121259(n+1)+A111251(n+1)`
-/

namespace A002640.P10001587800226291068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121259 (n + 1) + A111251 (n + 1)

end

end A002640.P10001587800226291068

/-! ## A002640.P3164383967401534710

`ceil(A002407(n+1)/A002504(n+1))`
-/

namespace A002640.P3164383967401534710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002407 (n + 1) : ℚ) / (A002504 (n + 1) : ℚ)⌉

end

end A002640.P3164383967401534710

/-! ## A002640.P8438051025702908985

`A002504(n+1)+A121259(n+1)-1`
-/

namespace A002640.P8438051025702908985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1) + (A121259 (n + 1) - 1)

end

end A002640.P8438051025702908985

/-! ## A002640.P18216910255635520045

`A111251(n+1)+A111251(n+1)+A002504(n+1)`
-/

namespace A002640.P18216910255635520045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) + (A111251 (n + 1) + A002504 (n + 1))

end

end A002640.P18216910255635520045

/-! ## A002640.P9789769677976855435

`A016777(A111251(n+1))`
-/

namespace A002640.P9789769677976855435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A111251 (n + 1)).toNat

end

end A002640.P9789769677976855435

/-! ## A002640.P1005889214252998241

`A016777(A002504(n+1)-1)`
-/

namespace A002640.P1005889214252998241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A002504 (n + 1) - 1).toNat

end

end A002640.P1005889214252998241

/-! ## A002640.P7044714007933405451

`∩[A085746(n+1), A016777(n)]`
-/

namespace A002640.P7044714007933405451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002640.P7044714007933405451

/-! ## A002640.P14554467758800826667

`A008486(A002504(n+1)-1)+1`
-/

namespace A002640.P14554467758800826667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A002504 (n + 1) - 1).toNat + 1

end

end A002640.P14554467758800826667

/-! ## A002640.P9375683573788165095

`A005843(A002504(n+1)-1)+A002504(n+1)`
-/

namespace A002640.P9375683573788165095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002504 (n + 1) - 1).toNat + A002504 (n + 1)

end

end A002640.P9375683573788165095

/-! ## A002640.P18165636296400500740

`∩[A033627(n+1), A085746(n+1)]`
-/

namespace A002640.P18165636296400500740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002640.P18165636296400500740

/-! ## A002640.P13038817074751530864

`A111251(n+1)+A004273(A111251(n+1)+1)`
-/

namespace A002640.P13038817074751530864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) + A004273 (A111251 (n + 1) + 1).toNat

end

end A002640.P13038817074751530864

/-! ## A002640.P18048645654931480550

`A111251(n+1)+A004280(A111251(n+1)+2)`
-/

namespace A002640.P18048645654931480550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) + A004280 (A111251 (n + 1) + 2).toNat

end

end A002640.P18048645654931480550

/-! ## A002640.P9707195555766353558

`A001651(A121259(n+1))`
-/

namespace A002640.P9707195555766353558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A121259 (n + 1)).toNat

end

end A002640.P9707195555766353558

/-! ## A002640.P4426728277932636337

`eq[A081256(n+1), A092076(n)]`
-/

namespace A002640.P4426728277932636337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002640.P4426728277932636337

/-! ## A002640.P3926403148226818835

`eq[A081256(n+1), A208994(n)]`
-/

namespace A002640.P3926403148226818835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002640.P3926403148226818835

/-! ## A002640.P13386203330856690078

`eq[A081256(n+1), A305185(n+1)]`
-/

namespace A002640.P13386203330856690078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002640.P13386203330856690078

/-! ## A002640.P3757362488867247498

`A026488(A002504(n+1)+1)`
-/

namespace A002640.P3757362488867247498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (A002504 (n + 1) + 1).toNat

end

end A002640.P3757362488867247498

/-! ## A002640.P17052816764432324898

`∩[A026488(n+1), A085746(n+1)]`
-/

namespace A002640.P17052816764432324898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002640.P17052816764432324898

/-!
# A002641: Numbers k such that (k^2 + k + 1)/7 is prime.

The programs for A002641, there is no canonical definition to state claims against.
-/

/-! ## A002641.P3497055816750176807

`∩[A047348(n+1), A085746(n+1)]`
-/

namespace A002641.P3497055816750176807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002641.P3497055816750176807

/-! ## A002641.P265534243285155020

`eq[7, A330742(n²+1+n)]`
-/

namespace A002641.P265534243285155020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330742 (n ^ 2 + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002641.P265534243285155020

/-! ## A002641.P16540953464990062591

`eq[10, A000005(A008814(4*n+1))]`
-/

namespace A002641.P16540953464990062591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008814 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002641.P16540953464990062591

/-! ## A002641.P14796338268572498095

`eq[1, A107279(A057356(A000124(n)))]`
-/

namespace A002641.P14796338268572498095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A057356 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002641.P14796338268572498095

/-! ## A002641.P3369673893112181798

`record[A127093(A017017(A005097(n+1)))]`
-/

namespace A002641.P3369673893112181798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A017017 (A005097 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002641.P3369673893112181798

/-!
# A002644: Numbers k such that (k^2 + k + 1)/21 is prime.

The programs for A002644, there is no canonical definition to state claims against.
-/

/-! ## A002644.P7378821533798746689

`eq[7, A326067(A208994(n))]`
-/

namespace A002644.P7378821533798746689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326067 (A208994 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002644.P7378821533798746689

/-! ## A002644.P8176897601153591461

`eq[7, A051119(1+floor((n²+n)/3))]`
-/

namespace A002644.P8176897601153591461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (1 + ⌊(n ^ 2 + n : ℚ) / 3⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002644.P8176897601153591461

/-! ## A002644.P24479198793487072

`eq[7, A052126(floor((n²+n)/3)+1)]`
-/

namespace A002644.P24479198793487072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (⌊(n ^ 2 + n : ℚ) / 3⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002644.P24479198793487072

/-! ## A002644.P2680085962593763329

`eq[4, A322867(n²+1+n)]`
-/

namespace A002644.P2680085962593763329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322867 (n ^ 2 + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002644.P2680085962593763329

/-!
# A002645: Quartan primes: primes of the form x^4 + y^4, x > 0, y > 0.

The programs for A002645, there is no canonical definition to state claims against.
-/

/-! ## A002645.P9064972994986681759

`∩[A003336(n+1), A028916(n+1)]`
-/

namespace A002645.P9064972994986681759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002645.P9064972994986681759

/-! ## A002645.P4914238617026679427

`∩[A004831(n+1), A028916(n+1)]`
-/

namespace A002645.P4914238617026679427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002645.P4914238617026679427

/-! ## A002645.P16102781520580755033

`∩[A028916(n+1), A344187(n+1)]`
-/

namespace A002645.P16102781520580755033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002645.P16102781520580755033

/-! ## A002645.P442817990846957642

`∩[A003336(n+1), A140834(n+1)]`
-/

namespace A002645.P442817990846957642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002645.P442817990846957642

/-! ## A002645.P1648781259202418254

`∩[A004831(n+1), A140834(n+1)]`
-/

namespace A002645.P1648781259202418254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002645.P1648781259202418254

/-! ## A002645.P18063556981664784292

`∩[A140834(n+1), A344187(n+1)]`
-/

namespace A002645.P18063556981664784292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002645.P18063556981664784292

/-! ## A002645.P16246394219833568427

`p?[A003336(n+1)]`
-/

namespace A002645.P16246394219833568427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002645.P16246394219833568427

/-! ## A002645.P14009262908240096468

`p?[A004831(n+1)]`
-/

namespace A002645.P14009262908240096468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002645.P14009262908240096468

/-! ## A002645.P11985568225565951931

`p?[A344187(n+1)]`
-/

namespace A002645.P11985568225565951931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002645.P11985568225565951931

/-! ## A002645.P7342776382993604616

`∩[A003336(n+1), A045390(n+1)]`
-/

namespace A002645.P7342776382993604616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002645.P7342776382993604616

/-!
# A002646: Half-quartan primes: primes of the form p = (x^4 + y^4)/2.

The programs for A002646, there is no canonical definition to state claims against.
-/

/-! ## A002646.P979383016743255903

`∩[A182277(n+1), A343588(n+1)]/2`
-/

namespace A002646.P979383016743255903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343588 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A002646.P979383016743255903

/-! ## A002646.P10313493755395064317

`∩[A135797(n+1), A282353(n+1)]`
-/

namespace A002646.P10313493755395064317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002646.P10313493755395064317

/-! ## A002646.P16956379602656809547

`∩[A135797(n+1), A165816(n+1)]`
-/

namespace A002646.P16956379602656809547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002646.P16956379602656809547

/-! ## A002646.P3347160926104794784

`∩[A105389(n+1), A135797(n+1)]`
-/

namespace A002646.P3347160926104794784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002646.P3347160926104794784

/-! ## A002646.P18160634343897485667

`p?[A135797(n+1)]`
-/

namespace A002646.P18160634343897485667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002646.P18160634343897485667

/-! ## A002646.P7856339544391374925

`p?[A271576(n+2)]`
-/

namespace A002646.P7856339544391374925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271576 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002646.P7856339544391374925

/-! ## A002646.P13288777039231336203

`p?[A345645(n+2)]`
-/

namespace A002646.P13288777039231336203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345645 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002646.P13288777039231336203

/-! ## A002646.P4552216565667145278

`p?[floor(A003336(n+1)/2)]`
-/

namespace A002646.P4552216565667145278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003336 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002646.P4552216565667145278

/-! ## A002646.P10069532177880631193

`p?[floor(A004831(n+1)/2)]`
-/

namespace A002646.P10069532177880631193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004831 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002646.P10069532177880631193

/-!
# A002647: Sextan primes: p = (x^6 + y^6)/(x^2 + y^2).

The programs for A002647, there is no canonical definition to state claims against.
-/

/-! ## A002647.P16465322423772016651

`A351536(or(A088994(n), A266047(n+1)))`
-/

namespace A002647.P16465322423772016651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351536 (Int.lor (A088994 n) (A266047 (n + 1))).toNat

end

end A002647.P16465322423772016651

/-!
# A002648: A variant of the cuban primes: primes p = (x^3 - y^3)/(x - y) where x = y + 2.

The programs for A002648, there is no canonical definition to state claims against.
-/

/-! ## A002648.P13274018225027632972

`3*A111051(n+1)²+1`
-/

namespace A002648.P13274018225027632972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111051 (n + 1) ^ 2 + 1

end

end A002648.P13274018225027632972

/-! ## A002648.P1305178935850654757

`A158480(A111051(n+1)/2)`
-/

namespace A002648.P1305178935850654757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 (SequenceMachineLib.roundAway ((A111051 (n + 1) : ℚ) / 2)).toNat

end

end A002648.P1305178935850654757

/-! ## A002648.P2892258945428671709

`A056107(A111051(n+1))`
-/

namespace A002648.P2892258945428671709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 (A111051 (n + 1)).toNat

end

end A002648.P2892258945428671709

/-! ## A002648.P15850986926656151470

`A265722(A008588(n))+A033428(A111051(n+1))`
-/

namespace A002648.P15850986926656151470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265722 (A008588 n).toNat + A033428 (A111051 (n + 1)).toNat

end

end A002648.P15850986926656151470

/-! ## A002648.P11765135921511187507

`A005897(A111051(n+1))/A040000(A008486(n))`
-/

namespace A002648.P11765135921511187507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005897 (A111051 (n + 1)).toNat : ℚ) / (A040000 (A008486 n).toNat : ℚ)

end

end A002648.P11765135921511187507

/-! ## A002648.P7371528922849845418

`A005897(A111051(n+1))/A040000(A008619(n))`
-/

namespace A002648.P7371528922849845418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005897 (A111051 (n + 1)).toNat : ℚ) / (A040000 (A008619 n).toNat : ℚ)

end

end A002648.P7371528922849845418

/-! ## A002648.P4603100156546824691

`A005897(A111051(n+1))/A040000(A008620(n))`
-/

namespace A002648.P4603100156546824691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005897 (A111051 (n + 1)).toNat : ℚ) / (A040000 (A008620 n).toNat : ℚ)

end

end A002648.P4603100156546824691

/-! ## A002648.P15960933458949897512

`A005897(A111051(n+1))/A133265(A005843(n))`
-/

namespace A002648.P15960933458949897512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005897 (A111051 (n + 1)).toNat : ℚ) / (A133265 (A005843 n).toNat : ℚ)

end

end A002648.P15960933458949897512

/-! ## A002648.P6540639580286457434

`record[A125257(A008486(n+1))]`
-/

namespace A002648.P6540639580286457434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125257 (A008486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002648.P6540639580286457434

/-! ## A002648.P11397304977342858147

`record[A125257(A008619(A016969(n)))]`
-/

namespace A002648.P11397304977342858147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125257 (A008619 (A016969 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002648.P11397304977342858147

/-! ## A002648.P5668161194817582028

`p?[3*n²+1]`
-/

namespace A002648.P5668161194817582028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A002648.P5668161194817582028

/-!
# A002649: Quintan primes: p = (x^5 - y^5)/(x - y).

The programs for A002649, there is no canonical definition to state claims against.
-/

/-! ## A002649.P17101663390442989373

`p?[A299505(n+1)]`
-/

namespace A002649.P17101663390442989373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002649.P17101663390442989373

/-! ## A002649.P4474315696914074771

`p?[record[A299505(A065648(n))]]`
-/

namespace A002649.P4474315696914074771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299505 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002649.P4474315696914074771

/-! ## A002649.P10253707583101383440

`p?[record[A299505(A100727(n))]]`
-/

namespace A002649.P10253707583101383440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299505 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002649.P10253707583101383440

/-! ## A002649.P11784844932769777668

`p?[record[A299505(A106466(n))]]`
-/

namespace A002649.P11784844932769777668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299505 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002649.P11784844932769777668

/-! ## A002649.P8738041555501672092

`∩[A045453(n+1), A299505(n+1)]`
-/

namespace A002649.P8738041555501672092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002649.P8738041555501672092

/-!
# A002650: Quintan primes: p = (x^5 + y^5)/(x + y).

The programs for A002650, there is no canonical definition to state claims against.
-/

/-! ## A002650.P10957981353200640280

`record[A119288(A003347(n+2))]`
-/

namespace A002650.P10957981353200640280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A003347 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002650.P10957981353200640280

/-!
# A002652: Theta series of Kleinian lattice Z[(1 + sqrt(-7))/ 2] in 1 complex (or 2 real) dimensions.

The programs for A002652, there is no canonical definition to state claims against.
-/

/-! ## A002652.P153893354417101078

`A033719(A195161(n))`
-/

namespace A002652.P153893354417101078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (A195161 n).toNat

end

end A002652.P153893354417101078

/-! ## A002652.P11945415043409749067

`A033719(4*n)`
-/

namespace A002652.P11945415043409749067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (4 * n)

end

end A002652.P11945415043409749067

/-! ## A002652.P6572272351892029663

`A033719(A008574(n))-A008574(n)%2`
-/

namespace A002652.P6572272351892029663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (A008574 n).toNat - Int.tmod (A008574 n) 2

end

end A002652.P6572272351892029663

/-! ## A002652.P6027376717586780049

`A020639(A004277(n))*A110399(A004277(2*n))`
-/

namespace A002652.P6027376717586780049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A110399 (A004277 (2 * n)).toNat

end

end A002652.P6027376717586780049

/-! ## A002652.P16142985837090310914

`A205975(n)/A324969(n+1)`
-/

namespace A002652.P16142985837090310914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205975 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A002652.P16142985837090310914

/-! ## A002652.P258324531727370534

`A028594(n)/A205976(n)*A205975(n)`
-/

namespace A002652.P258324531727370534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028594 n : ℚ) / (A205976 n : ℚ) * (A205975 n : ℚ)

end

end A002652.P258324531727370534

/-! ## A002652.P2712105981622366614

`A028594(n)*A205975(n)/A205976(n)`
-/

namespace A002652.P2712105981622366614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028594 n * A205975 n : ℚ) / (A205976 n : ℚ)

end

end A002652.P2712105981622366614

/-! ## A002652.P10504366962272357884

`A209455(n)/A215928(n)`
-/

namespace A002652.P10504366962272357884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209455 n : ℚ) / (A215928 n : ℚ)

end

end A002652.P10504366962272357884

/-! ## A002652.P14599729816454714250

`A209455(n)/A000129(A028310(n))`
-/

namespace A002652.P14599729816454714250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209455 n : ℚ) / (A000129 (A028310 n).toNat : ℚ)

end

end A002652.P14599729816454714250

/-! ## A002652.P5398670456389239797

`A209455(n)/(A052542(n)-A000129(n))`
-/

namespace A002652.P5398670456389239797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209455 n : ℚ) / (A052542 n - A000129 n : ℚ)

end

end A002652.P5398670456389239797

/-! ## A002652.P3876320438998521569

`A028594(n)/A209456(n)*A209455(n)`
-/

namespace A002652.P3876320438998521569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028594 n : ℚ) / (A209456 n : ℚ) * (A209455 n : ℚ)

end

end A002652.P3876320438998521569

/-! ## A002652.P7177079863886985848

`A028594(n)*A209455(n)/A209456(n)`
-/

namespace A002652.P7177079863886985848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028594 n * A209455 n : ℚ) / (A209456 n : ℚ)

end

end A002652.P7177079863886985848

/-! ## A002652.P9059169188794380472

`A170770(9*n)`
-/

namespace A002652.P9059169188794380472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170770 (9 * n)

end

end A002652.P9059169188794380472

/-!
# A002653: Expansion of (theta_3(z)*theta_3(7z)+theta_2(z)*theta_2(7z))^3.

The programs for A002653, there is no canonical definition to state claims against.
-/

/-! ## A002653.P3524427638492092017

`A171945(A038163(n))`
-/

namespace A002653.P3524427638492092017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171945 (A038163 n).toNat

end

end A002653.P3524427638492092017

/-!
# A002654: Number of ways of writing n as a sum of at most two nonzero squares, where order matters; also (number of divisors of n of form 4m+1) - (number of divisors of form 4m+3).

The programs for A002654, the canonical program `A002654.P11574922253888480122` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002654 has offset 1).

The definition of A002654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002654.P14441847389434732824

`∑{d}[n+1, A056594(#-1)]`
-/

namespace A002654.P14441847389434732824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1)

end

end A002654.P14441847389434732824

namespace A002654

/-- `∑{d}[n+1, A056594(#-1)]` -/
def P14441847389434732824.Spec : Prop :=
  ∀ n, P14441847389434732824.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P11574922253888480122

`A001826(n+1)-A001842(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002654

/-- `A001826(n+1)-A001842(n+1)` -/
def P11574922253888480122.Spec : Prop :=
  ∀ n, P11574922253888480122.a n = A002654 (n + 1)

theorem P11574922253888480122.correct : P11574922253888480122.Spec := by
  intro n
  simp only [A002654, Nat.add_sub_cancel]

end A002654

/-! ## A002654.P11639318277348683924

`A053866(n+1)+2*A025441(n+1)`
-/

namespace A002654.P11639318277348683924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) + 2 * A025441 (n + 1)

end

end A002654.P11639318277348683924

namespace A002654

/-- `A053866(n+1)+2*A025441(n+1)` -/
def P11639318277348683924.Spec : Prop :=
  ∀ n, P11639318277348683924.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P3416106041536492541

`∑{#}[n, A010052(#+1)*A010052(n+1-(#+1))]`
-/

namespace A002654.P3416106041536492541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010052 (k + 1) * A010052 (n + 1 - (k + 1))

end

end A002654.P3416106041536492541

namespace A002654

/-- `∑{#}[n, A010052(#+1)*A010052(n+1-(#+1))]` -/
def P3416106041536492541.Spec : Prop :=
  ∀ n, P3416106041536492541.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P16638980975925580588

`Δ[A014200(n)]`
-/

namespace A002654.P16638980975925580588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002654.P16638980975925580588

namespace A002654

/-- `Δ[A014200(n)]` -/
def P16638980975925580588.Spec : Prop :=
  ∀ n, P16638980975925580588.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P15505074145370199153

`abs(A113652(n+1))`
-/

namespace A002654.P15505074145370199153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113652 (n + 1)|

end

end A002654.P15505074145370199153

namespace A002654

/-- `abs(A113652(n+1))` -/
def P15505074145370199153.Spec : Prop :=
  ∀ n, P15505074145370199153.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P1995033328981431625

`Δ[A014198(n)/4]`
-/

namespace A002654.P1995033328981431625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014198 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002654.P1995033328981431625

namespace A002654

/-- `Δ[A014198(n)/4]` -/
def P1995033328981431625.Spec : Prop :=
  ∀ n, P1995033328981431625.a n = (A002654 (n + 1) : ℚ)

end A002654

/-! ## A002654.P17433179985106831031

`A105673(n+1)/2`
-/

namespace A002654.P17433179985106831031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105673 (n + 1) : ℚ) / 2

end

end A002654.P17433179985106831031

namespace A002654

/-- `A105673(n+1)/2` -/
def P17433179985106831031.Spec : Prop :=
  ∀ n, P17433179985106831031.a n = (A002654 (n + 1) : ℚ)

theorem P17433179985106831031.correct : P17433179985106831031.Spec := by
  intro n
  simp only [A002654, Nat.add_sub_cancel, A002654.P17433179985106831031.a, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A105673, A105673.P14538287794614071707.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002654

/-! ## A002654.P2133574796113806860

`A004018(n+1)/4`
-/

namespace A002654.P2133574796113806860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 (n + 1) : ℚ) / 4

end

end A002654.P2133574796113806860

namespace A002654

/-- `A004018(n+1)/4` -/
def P2133574796113806860.Spec : Prop :=
  ∀ n, P2133574796113806860.a n = (A002654 (n + 1) : ℚ)

end A002654

/-! ## A002654.P16046928720336364309

`A050456(n+1)%16`
-/

namespace A002654.P16046928720336364309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050456 (n + 1)) 16

end

end A002654.P16046928720336364309

namespace A002654

/-- `A050456(n+1)%16` -/
def P16046928720336364309.Spec : Prop :=
  ∀ n, P16046928720336364309.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P6044084438301482117

`A321824(n+1)%16`
-/

namespace A002654.P6044084438301482117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321824 (n + 1)) 16

end

end A002654.P6044084438301482117

namespace A002654

/-- `A321824(n+1)%16` -/
def P6044084438301482117.Spec : Prop :=
  ∀ n, P6044084438301482117.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P1535189217107231836

`A111938(n+1)/(n+1)`
-/

namespace A002654.P1535189217107231836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111938 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002654.P1535189217107231836

namespace A002654

/-- `A111938(n+1)/(n+1)` -/
def P1535189217107231836.Spec : Prop :=
  ∀ n, P1535189217107231836.a n = (A002654 (n + 1) : ℚ)

end A002654

/-! ## A002654.P1368303085362972938

`A002265(Δ[A014198(n)])`
-/

namespace A002654.P1368303085362972938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A002654.P1368303085362972938

namespace A002654

/-- `A002265(Δ[A014198(n)])` -/
def P1368303085362972938.Spec : Prop :=
  ∀ n, P1368303085362972938.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P4365112056652467247

`A002265(A004018(n+1))`
-/

namespace A002654.P4365112056652467247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004018 (n + 1)).toNat

end

end A002654.P4365112056652467247

namespace A002654

/-- `A002265(A004018(n+1))` -/
def P4365112056652467247.Spec : Prop :=
  ∀ n, P4365112056652467247.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P11876190630100466463

`A008442(A000265(n+1))`
-/

namespace A002654.P11876190630100466463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008442 (A000265 (n + 1)).toNat

end

end A002654.P11876190630100466463

namespace A002654

/-- `A008442(A000265(n+1))` -/
def P11876190630100466463.Spec : Prop :=
  ∀ n, P11876190630100466463.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P1738478283095634251

`A001281(A105673(n+1))`
-/

namespace A002654.P1738478283095634251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A105673 (n + 1)).toNat

end

end A002654.P1738478283095634251

namespace A002654

/-- `A001281(A105673(n+1))` -/
def P1738478283095634251.Spec : Prop :=
  ∀ n, P1738478283095634251.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P16557633844080179941

`A008624(A004018(n+1)+1)`
-/

namespace A002654.P16557633844080179941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A004018 (n + 1) + 1).toNat

end

end A002654.P16557633844080179941

namespace A002654

/-- `A008624(A004018(n+1)+1)` -/
def P16557633844080179941.Spec : Prop :=
  ∀ n, P16557633844080179941.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P7561727826410916050

`A002265(2*A105673(n+1))`
-/

namespace A002654.P7561727826410916050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A105673 (n + 1)).toNat

end

end A002654.P7561727826410916050

namespace A002654

/-- `A002265(2*A105673(n+1))` -/
def P7561727826410916050.Spec : Prop :=
  ∀ n, P7561727826410916050.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P927988805244367601

`A110656(2*A004018(n+1))`
-/

namespace A002654.P927988805244367601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (2 * A004018 (n + 1)).toNat

end

end A002654.P927988805244367601

namespace A002654

/-- `A110656(2*A004018(n+1))` -/
def P927988805244367601.Spec : Prop :=
  ∀ n, P927988805244367601.a n = A002654 (n + 1)

end A002654

/-! ## A002654.P11601177281264771585

`A014200(n+1)-A014200(n)`
-/

namespace A002654.P11601177281264771585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (n + 1) - A014200 n

end

end A002654.P11601177281264771585

namespace A002654

/-- `A014200(n+1)-A014200(n)` -/
def P11601177281264771585.Spec : Prop :=
  ∀ n, P11601177281264771585.a n = A002654 (n + 1)

end A002654

/-!
# A002655: Expansion of Product_{i >= 1} (1 - q^i)*(1 - q^(7*i)).

The programs for A002655, there is no canonical definition to state claims against.
-/

/-! ## A002655.P4917678939590218795

`A030201(3*n+1)`
-/

namespace A002655.P4917678939590218795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (3 * n + 1)

end

end A002655.P4917678939590218795

/-! ## A002655.P15695381760904636715

`A030201(n+1+n+n)%5`
-/

namespace A002655.P15695381760904636715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030201 (n + 1 + (n + n))) 5

end

end A002655.P15695381760904636715

/-! ## A002655.P7389326872732211124

`or(A000007(n), A030201(A016777(n)))`
-/

namespace A002655.P7389326872732211124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A030201 (A016777 n).toNat)

end

end A002655.P7389326872732211124

/-! ## A002655.P7469255278483977257

`A030201(A016777(n))+A000007(n+1)`
-/

namespace A002655.P7469255278483977257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A016777 n).toNat + A000007 (n + 1)

end

end A002655.P7469255278483977257

/-! ## A002655.P2125655685363737078

`A030201(A016777(n))+A000038(n+1)`
-/

namespace A002655.P2125655685363737078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A016777 n).toNat + A000038 (n + 1)

end

end A002655.P2125655685363737078

/-! ## A002655.P13885464013735289758

`A000034(2*n)*A030201(A016777(n))`
-/

namespace A002655.P13885464013735289758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A030201 (A016777 n).toNat

end

end A002655.P13885464013735289758

/-! ## A002655.P18122151470152812757

`A030201(A016777(n))/A000108(gcd(n, n+1))`
-/

namespace A002655.P18122151470152812757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030201 (A016777 n).toNat : ℚ) / (A000108 (Nat.gcd n (n + 1)) : ℚ)

end

end A002655.P18122151470152812757

/-! ## A002655.P12957646883431855781

`A030201(A016777(n))-A000007(n)*A030201(n)`
-/

namespace A002655.P12957646883431855781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A016777 n).toNat - A000007 n * A030201 n

end

end A002655.P12957646883431855781

/-! ## A002655.P11373166399239392562

`A030201(A016777(n))-A000038(n)*A030201(n)`
-/

namespace A002655.P11373166399239392562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A016777 n).toNat - A000038 n * A030201 n

end

end A002655.P11373166399239392562

/-! ## A002655.P3042050041745428587

`-A030201(Δ[A033579(n)])`
-/

namespace A002655.P3042050041745428587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A030201 (f1 (n + 1) - f1 n).toNat

end

end A002655.P3042050041745428587

/-!
# A002657: Numerators of Cauchy numbers of second type (= Bernoulli numbers B_n^{(n)}).

The programs for A002657, there is no canonical definition to state claims against.
-/

/-! ## A002657.P13606098400703431625

`A002401(n)/gcd(A002401(n), A003418(n))`
-/

namespace A002657.P13606098400703431625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002401 n : ℚ) / (Int.gcd (A002401 n) (A003418 n) : ℚ)

end

end A002657.P13606098400703431625

/-! ## A002657.P8948690850470191179

`A195287(A004905(n+1))+A141417(n)`
-/

namespace A002657.P8948690850470191179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195287 (A004905 (n + 1)).toNat + A141417 n

end

end A002657.P8948690850470191179

/-! ## A002657.P155258115267187199

`A195287(A181352(n))+A141417(n)`
-/

namespace A002657.P155258115267187199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195287 (A181352 n).toNat + A141417 n

end

end A002657.P155258115267187199

/-! ## A002657.P10912349279772405356

`A195287(A145461(n+1))+A141417(n)`
-/

namespace A002657.P10912349279772405356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195287 (A145461 (n + 1)).toNat + A141417 n

end

end A002657.P10912349279772405356

/-! ## A002657.P2937781248172883349

`A140825(∑[comp[Δ[(n+1)*n^3]+n]])`
-/

namespace A002657.P2937781248172883349
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140825 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002657.P2937781248172883349

/-!
# A002658: a(0) = a(1) = 1; for n > 0, a(n+1) = a(n)*(a(0) + ... + a(n-1)) + a(n)*(a(n) + 1)/2.

The programs for A002658, the canonical program `A002658.P5876569559279847237` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002658 has offset 0).

The definition of A002658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002658.P5876569559279847237

`a(n-1)*(a(n-1)/a(n-2)+(a(n-1)+a(n-2))/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002658

/-- `a(n-1)*(a(n-1)/a(n-2)+(a(n-1)+a(n-2))/2)` -/
def P5876569559279847237.Spec : Prop :=
  ∀ n, P5876569559279847237.a n = (A002658 n : ℚ)

end A002658

/-! ## A002658.P13090079261763484638

`Δ[C(a(n-1), 2)+2]` with `a(0)=1`
-/

namespace A002658.P13090079261763484638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (f1 (n - 1)) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A002658.P13090079261763484638

namespace A002658

/-- `Δ[C(a(n-1), 2)+2]` -/
def P13090079261763484638.Spec : Prop :=
  ∀ n, P13090079261763484638.a n = A002658 n

end A002658

/-! ## A002658.P5258886451649615565

`A103410(floor(acot(n)+n))`
-/

namespace A002658.P5258886451649615565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103410 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A002658.P5258886451649615565

namespace A002658

/-- `A103410(floor(acot(n)+n))` -/
def P5258886451649615565.Spec : Prop :=
  ∀ n, P5258886451649615565.a n = A002658 n

end A002658

/-! ## A002658.P5977890603724581364

`A103410(n)-floor(acot(n))`
-/

namespace A002658.P5977890603724581364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103410 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A002658.P5977890603724581364

namespace A002658

/-- `A103410(n)-floor(acot(n))` -/
def P5977890603724581364.Spec : Prop :=
  ∀ n, P5977890603724581364.a n = A002658 n

end A002658

/-! ## A002658.P110264299553744989

`A103410(xor(n, floor(acot(n))))`
-/

namespace A002658.P110264299553744989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103410 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A002658.P110264299553744989

namespace A002658

/-- `A103410(xor(n, floor(acot(n))))` -/
def P110264299553744989.Spec : Prop :=
  ∀ n, P110264299553744989.a n = A002658 n

end A002658

/-!
# A002659: a(n) = 2*sigma(n) - 1.

The programs for A002659, the canonical program `A002659.P8948138163684764047` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002659 has offset 1).

The definition of A002659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(n+1)-1` (program `A002659.P8948138163684764047`, by `A002659.P8948138163684764047.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002659.P10160211641234387559

`A074400(n+1)-1`
-/

namespace A002659.P10160211641234387559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - 1

end

end A002659.P10160211641234387559

namespace A002659

/-- `A074400(n+1)-1` -/
def P10160211641234387559.Spec : Prop :=
  ∀ n, P10160211641234387559.a n = A002659 (n + 1)

end A002659

/-! ## A002659.P8948138163684764047

`2*A000203(n+1)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002659

/-- `2*A000203(n+1)-1` -/
def P8948138163684764047.Spec : Prop :=
  ∀ n, P8948138163684764047.a n = A002659 (n + 1)

theorem P8948138163684764047.correct : P8948138163684764047.Spec := by
  intro n
  simp only [A002659, Nat.add_sub_cancel]

end A002659

/-! ## A002659.P16989493801420297240

`∑{d}[1+n, 2*#]-1`
-/

namespace A002659.P16989493801420297240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 2 * d : ℕ) : ℤ) - 1

end

end A002659.P16989493801420297240

namespace A002659

/-- `∑{d}[1+n, 2*#]-1` -/
def P16989493801420297240.Spec : Prop :=
  ∀ n, P16989493801420297240.a n = A002659 (n + 1)

end A002659

/-! ## A002659.P1551797643235661441

`row(2*∑{d}[1+n, #]²)`
-/

namespace A002659.P1551797643235661441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (2 * (∑ d ∈ Nat.divisors (f1 n), d) ^ 2)

end

end A002659.P1551797643235661441

namespace A002659

/-- `row(2*∑{d}[1+n, #]²)` -/
def P1551797643235661441.Spec : Prop :=
  ∀ n, (P1551797643235661441.a n : ℤ) = A002659 (n + 1)

end A002659

/-! ## A002659.P12483919142469467142

`2*∑{d}[xor(n, -1), #]-1`
-/

namespace A002659.P12483919142469467142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d) : ℕ) : ℤ) - 1

end

end A002659.P12483919142469467142

namespace A002659

/-- `2*∑{d}[xor(n, -1), #]-1` -/
def P12483919142469467142.Spec : Prop :=
  ∀ n, P12483919142469467142.a n = A002659 (n + 1)

end A002659

/-! ## A002659.P3422613085445981052

`∑{d}[n+1, #%#²+#]`
-/

namespace A002659.P3422613085445981052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % d ^ 2 + d)

end

end A002659.P3422613085445981052

namespace A002659

/-- `∑{d}[n+1, #%#²+#]` -/
def P3422613085445981052.Spec : Prop :=
  ∀ n, (P3422613085445981052.a n : ℤ) = A002659 (n + 1)

end A002659

/-! ## A002659.P9816044497232945389

`∑{d}[n+1, ceil(n/#+#)]`
-/

namespace A002659.P9816044497232945389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈(n : ℚ) / (d : ℚ) + (d : ℚ)⌉

end

end A002659.P9816044497232945389

namespace A002659

/-- `∑{d}[n+1, ceil(n/#+#)]` -/
def P9816044497232945389.Spec : Prop :=
  ∀ n, P9816044497232945389.a n = A002659 (n + 1)

end A002659

/-! ## A002659.P5134879784830566599

`xor(-1, -(2*∑{d}[n+1, #]))`
-/

namespace A002659.P5134879784830566599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((2 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ))

end

end A002659.P5134879784830566599

namespace A002659

/-- `xor(-1, -(2*∑{d}[n+1, #]))` -/
def P5134879784830566599.Spec : Prop :=
  ∀ n, P5134879784830566599.a n = A002659 (n + 1)

end A002659

/-! ## A002659.P17497154862057635046

`Δ[2*A160664(n)]-1`
-/

namespace A002659.P17497154862057635046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A002659.P17497154862057635046

namespace A002659

/-- `Δ[2*A160664(n)]-1` -/
def P17497154862057635046.Spec : Prop :=
  ∀ n, P17497154862057635046.a n = A002659 (n + 1)

end A002659

/-! ## A002659.P14218731870737831232

`2*A039653(n+1)+1`
-/

namespace A002659.P14218731870737831232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039653 (n + 1) + 1

end

end A002659.P14218731870737831232

namespace A002659

/-- `2*A039653(n+1)+1` -/
def P14218731870737831232.Spec : Prop :=
  ∀ n, P14218731870737831232.a n = A002659 (n + 1)

end A002659

/-! ## A002659.P8200207417765515128

`A326136(2*(n+1))-1`
-/

namespace A002659.P8200207417765515128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326136 (2 * (n + 1)) - 1

end

end A002659.P8200207417765515128

namespace A002659

/-- `A326136(2*(n+1))-1` -/
def P8200207417765515128.Spec : Prop :=
  ∀ n, P8200207417765515128.a n = A002659 (n + 1)

end A002659

/-! ## A002659.P14355232146395289011

`A239050(n+1)/2-1`
-/

namespace A002659.P14355232146395289011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239050 (n + 1) : ℚ) / 2 - 1

end

end A002659.P14355232146395289011

namespace A002659

/-- `A239050(n+1)/2-1` -/
def P14355232146395289011.Spec : Prop :=
  ∀ n, P14355232146395289011.a n = (A002659 (n + 1) : ℚ)

theorem P14355232146395289011.correct : P14355232146395289011.Spec := by
  intro n
  simp only [A002659, Nat.add_sub_cancel, A002659.P14355232146395289011.a, A002659.P8948138163684764047.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A239050, A239050.P11778751463060976919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002659

/-! ## A002659.P14688203395283688852

`2*A088580(n+1)-3`
-/

namespace A002659.P14688203395283688852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088580 (n + 1) - 3

end

end A002659.P14688203395283688852

namespace A002659

/-- `2*A088580(n+1)-3` -/
def P14688203395283688852.Spec : Prop :=
  ∀ n, P14688203395283688852.a n = A002659 (n + 1)

theorem P14688203395283688852.correct : P14688203395283688852.Spec := by
  intro n
  simp only [A002659, Nat.add_sub_cancel, A002659.P14688203395283688852.a, A002659.P8948138163684764047.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002659

/-! ## A002659.P3622694536779465406

`A274536(n+1)/3-1`
-/

namespace A002659.P3622694536779465406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (n + 1) : ℚ) / 3 - 1

end

end A002659.P3622694536779465406

namespace A002659

/-- `A274536(n+1)/3-1` -/
def P3622694536779465406.Spec : Prop :=
  ∀ n, P3622694536779465406.a n = (A002659 (n + 1) : ℚ)

theorem P3622694536779465406.correct : P3622694536779465406.Spec := by
  intro n
  simp only [A002659, Nat.add_sub_cancel, A002659.P3622694536779465406.a, A002659.P8948138163684764047.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A274536, A274536.P12250643141026633019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002659

/-! ## A002659.P5301793973018021524

`A319528(n+1)/4-1`
-/

namespace A002659.P5301793973018021524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319528 (n + 1) : ℚ) / 4 - 1

end

end A002659.P5301793973018021524

namespace A002659

/-- `A319528(n+1)/4-1` -/
def P5301793973018021524.Spec : Prop :=
  ∀ n, P5301793973018021524.a n = (A002659 (n + 1) : ℚ)

theorem P5301793973018021524.correct : P5301793973018021524.Spec := by
  intro n
  simp only [A002659, Nat.add_sub_cancel, A002659.P5301793973018021524.a, A002659.P8948138163684764047.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A319528, A319528.P5610714732727847470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002659

/-! ## A002659.P5444251033717280844

`A326122(n+1)/5-1`
-/

namespace A002659.P5444251033717280844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326122 (n + 1) : ℚ) / 5 - 1

end

end A002659.P5444251033717280844

namespace A002659

/-- `A326122(n+1)/5-1` -/
def P5444251033717280844.Spec : Prop :=
  ∀ n, P5444251033717280844.a n = (A002659 (n + 1) : ℚ)

theorem P5444251033717280844.correct : P5444251033717280844.Spec := by
  intro n
  simp only [A002659, Nat.add_sub_cancel, A002659.P5444251033717280844.a, A002659.P8948138163684764047.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326122, A326122.P5183926465066856116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002659

/-! ## A002659.P12022664523872448100

`A294015(n+1)+2*n`
-/

namespace A002659.P12022664523872448100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1) + (2 * n : ℤ)

end

end A002659.P12022664523872448100

namespace A002659

/-- `A294015(n+1)+2*n` -/
def P12022664523872448100.Spec : Prop :=
  ∀ n, P12022664523872448100.a n = A002659 (n + 1)

theorem P12022664523872448100.correct : P12022664523872448100.Spec := by
  intro n
  simp only [A002659, Nat.add_sub_cancel, A002659.P12022664523872448100.a, A002659.P8948138163684764047.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A294015, A294015.P9060703257274913068.a, A091818, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002659

/-! ## A002659.P4449038560466782588

`A091818(n+1)+Δ[n²]`
-/

namespace A002659.P4449038560466782588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A002659.P4449038560466782588

namespace A002659

/-- `A091818(n+1)+Δ[n²]` -/
def P4449038560466782588.Spec : Prop :=
  ∀ n, P4449038560466782588.a n = A002659 (n + 1)

theorem P4449038560466782588.correct : P4449038560466782588.Spec := by
  intro n
  simp only [A002659, Nat.add_sub_cancel, A002659.P4449038560466782588.f1, A002659.P4449038560466782588.a, A002659.P8948138163684764047.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A091818, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002659

/-! ## A002659.P13836952248583450626

`abs(2*A143348(n+1))-1`
-/

namespace A002659.P13836952248583450626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A143348 (n + 1)| - 1

end

end A002659.P13836952248583450626

namespace A002659

/-- `abs(2*A143348(n+1))-1` -/
def P13836952248583450626.Spec : Prop :=
  ∀ n, P13836952248583450626.a n = A002659 (n + 1)

end A002659

/-! ## A002659.P9908527894924849402

`2*sqrt(A072861(n+1))-1`
-/

namespace A002659.P9908527894924849402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A072861 (n + 1) : ℝ) - 1

end

end A002659.P9908527894924849402

namespace A002659

/-- `2*sqrt(A072861(n+1))-1` -/
def P9908527894924849402.Spec : Prop :=
  ∀ n, P9908527894924849402.a n = (A002659 (n + 1) : ℝ)

end A002659

/-!
# A002660: a(n) = Sum_{d|n, d <= 3} d^2 + 3*Sum_{d|n, d>3} d.

The programs for A002660, the canonical program `A002660.P16048840246445908259` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002660 has offset 1).

The definition of A002660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002660.P16048840246445908259

`3*∑{d}[n+1, #]+(-1)^n-3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002660

/-- `3*∑{d}[n+1, #]+(-1)^n-3` -/
def P16048840246445908259.Spec : Prop :=
  ∀ n, P16048840246445908259.a n = A002660 (n + 1)

theorem P16048840246445908259.correct : P16048840246445908259.Spec := by
  intro n
  simp only [A002660, Nat.add_sub_cancel]

end A002660

/-! ## A002660.P11764141793065152802

`∑{d}[n+1, #*A158799(#-1)]`
-/

namespace A002660.P11764141793065152802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A158799 (d - 1)

end

end A002660.P11764141793065152802

namespace A002660

/-- `∑{d}[n+1, #*A158799(#-1)]` -/
def P11764141793065152802.Spec : Prop :=
  ∀ n, P11764141793065152802.a n = A002660 (n + 1)

end A002660

/-! ## A002660.P5487169432136372591

`3*A000203(n+1)-4/gcd(2, n)`
-/

namespace A002660.P5487169432136372591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000203 (n + 1) : ℚ) - 4 / (Nat.gcd 2 n : ℚ)

end

end A002660.P5487169432136372591

namespace A002660

/-- `3*A000203(n+1)-4/gcd(2, n)` -/
def P5487169432136372591.Spec : Prop :=
  ∀ n, P5487169432136372591.a n = (A002660 (n + 1) : ℚ)

end A002660

/-! ## A002660.P3196097001205161569

`∑{d}[1+n, #]*3-A105397(∏{p}[n+1, #])`
-/

namespace A002660.P3196097001205161569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d) * 3 : ℕ) : ℤ) - A105397 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A002660.P3196097001205161569

namespace A002660

/-- `∑{d}[1+n, #]*3-A105397(∏{p}[n+1, #])` -/
def P3196097001205161569.Spec : Prop :=
  ∀ n, P3196097001205161569.a n = A002660 (n + 1)

end A002660

/-! ## A002660.P4764912434714840182

`A272027(n+1)-A010694(n)`
-/

namespace A002660.P4764912434714840182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) - A010694 n

end

end A002660.P4764912434714840182

namespace A002660

/-- `A272027(n+1)-A010694(n)` -/
def P4764912434714840182.Spec : Prop :=
  ∀ n, P4764912434714840182.a n = A002660 (n + 1)

end A002660

/-! ## A002660.P1452569502909652007

`A033999(n)+3*A039653(n+1)`
-/

namespace A002660.P1452569502909652007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 3 * A039653 (n + 1)

end

end A002660.P1452569502909652007

namespace A002660

/-- `A033999(n)+3*A039653(n+1)` -/
def P1452569502909652007.Spec : Prop :=
  ∀ n, P1452569502909652007.a n = A002660 (n + 1)

end A002660

/-! ## A002660.P14794114174183944260

`A272027(n+1)-2*A000034(n)`
-/

namespace A002660.P14794114174183944260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) - 2 * A000034 n

end

end A002660.P14794114174183944260

namespace A002660

/-- `A272027(n+1)-2*A000034(n)` -/
def P14794114174183944260.Spec : Prop :=
  ∀ n, P14794114174183944260.a n = A002660 (n + 1)

end A002660

/-! ## A002660.P10127923907037869691

`A014682(A002659(n+1))-A010684(n)`
-/

namespace A002660.P10127923907037869691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A002659 (n + 1)).toNat - A010684 n

end

end A002660.P10127923907037869691

namespace A002660

/-- `A014682(A002659(n+1))-A010684(n)` -/
def P10127923907037869691.Spec : Prop :=
  ∀ n, P10127923907037869691.a n = A002660 (n + 1)

end A002660

/-! ## A002660.P16894827315736842474

`A272027(n+1)-4/A000034(n+1)`
-/

namespace A002660.P16894827315736842474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) - 4 / (A000034 (n + 1) : ℚ)

end

end A002660.P16894827315736842474

namespace A002660

/-- `A272027(n+1)-4/A000034(n+1)` -/
def P16894827315736842474.Spec : Prop :=
  ∀ n, P16894827315736842474.a n = (A002660 (n + 1) : ℚ)

end A002660

/-! ## A002660.P2004604273105298448

`A001651(A002659(n+1)-A000035(n))`
-/

namespace A002660.P2004604273105298448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A002659 (n + 1) - A000035 n).toNat

end

end A002660.P2004604273105298448

namespace A002660

/-- `A001651(A002659(n+1)-A000035(n))` -/
def P2004604273105298448.Spec : Prop :=
  ∀ n, P2004604273105298448.a n = A002660 (n + 1)

end A002660

/-! ## A002660.P15807452099604089847

`A001651(A002659(n+1))-A010673(n)`
-/

namespace A002660.P15807452099604089847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A002659 (n + 1)).toNat - A010673 n

end

end A002660.P15807452099604089847

namespace A002660

/-- `A001651(A002659(n+1))-A010673(n)` -/
def P15807452099604089847.Spec : Prop :=
  ∀ n, P15807452099604089847.a n = A002660 (n + 1)

end A002660

/-! ## A002660.P11428340730108851798

`A001651(A074400(n+1)-A000034(n))`
-/

namespace A002660.P11428340730108851798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A074400 (n + 1) - A000034 n).toNat

end

end A002660.P11428340730108851798

namespace A002660

/-- `A001651(A074400(n+1)-A000034(n))` -/
def P11428340730108851798.Spec : Prop :=
  ∀ n, P11428340730108851798.a n = A002660 (n + 1)

end A002660

/-! ## A002660.P11805373311898451384

`A001651(xor(A000035(n), A002659(n+1)))`
-/

namespace A002660.P11805373311898451384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (Int.xor (A000035 n) (A002659 (n + 1))).toNat

end

end A002660.P11805373311898451384

namespace A002660

/-- `A001651(xor(A000035(n), A002659(n+1)))` -/
def P11805373311898451384.Spec : Prop :=
  ∀ n, P11805373311898451384.a n = A002660 (n + 1)

end A002660

/-!
# A002661: Least integer having Radon random number n.

The programs for A002661, the canonical program `A002661.P6939868411298538595` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002661 has offset 1).

The definition of A002661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002661.P6939868411298538595

`ceil(C(n+2, floor((n+2)/2))/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002661

/-- `ceil(C(n+2, floor((n+2)/2))/2)` -/
def P6939868411298538595.Spec : Prop :=
  ∀ n, P6939868411298538595.a n = A002661 (n + 1)

theorem P6939868411298538595.correct : P6939868411298538595.Spec := by
  intro n
  simp only [A002661, Nat.add_sub_cancel]

end A002661

/-! ## A002661.P13861854386065182955

`2*A001405(n)-A028303(n)`
-/

namespace A002661.P13861854386065182955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 n - A028303 n

end

end A002661.P13861854386065182955

namespace A002661

/-- `2*A001405(n)-A028303(n)` -/
def P13861854386065182955.Spec : Prop :=
  ∀ n, P13861854386065182955.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P5422539993527805096

`ceil(A001405(n+2)/2)`
-/

namespace A002661.P5422539993527805096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001405 (n + 2) : ℚ) / 2⌉

end

end A002661.P5422539993527805096

namespace A002661

/-- `ceil(A001405(n+2)/2)` -/
def P5422539993527805096.Spec : Prop :=
  ∀ n, P5422539993527805096.a n = A002661 (n + 1)

theorem P5422539993527805096.correct : P5422539993527805096.Spec := by
  intro n
  simp only [A002661, Nat.add_sub_cancel, A002661.P5422539993527805096.a, A002661.P6939868411298538595.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002661

/-! ## A002661.P18258948455402452026

`ceil(A210736(n+3)/2)`
-/

namespace A002661.P18258948455402452026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210736 (n + 3) : ℚ) / 2⌉

end

end A002661.P18258948455402452026

namespace A002661

/-- `ceil(A210736(n+3)/2)` -/
def P18258948455402452026.Spec : Prop :=
  ∀ n, P18258948455402452026.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P10192500256237238285

`ceil((∑[A037952(n+1)]+1)/2)`
-/

namespace A002661.P10192500256237238285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2⌉

end

end A002661.P10192500256237238285

namespace A002661

/-- `ceil((∑[A037952(n+1)]+1)/2)` -/
def P10192500256237238285.Spec : Prop :=
  ∀ n, P10192500256237238285.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P4286273046477045488

`A001405(n+2)-A366108(n+3)`
-/

namespace A002661.P4286273046477045488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 2) - A366108 (n + 3)

end

end A002661.P4286273046477045488

namespace A002661

/-- `A001405(n+2)-A366108(n+3)` -/
def P4286273046477045488.Spec : Prop :=
  ∀ n, P4286273046477045488.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P10111989427095748354

`ceil(Δ[A036256(n+1)/2])`
-/

namespace A002661.P10111989427095748354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036256 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A002661.P10111989427095748354

namespace A002661

/-- `ceil(Δ[A036256(n+1)/2])` -/
def P10111989427095748354.Spec : Prop :=
  ∀ n, P10111989427095748354.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P15796506083621023350

`round(A191527(n+2)/(n+1))`
-/

namespace A002661.P15796506083621023350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191527 (n + 2) : ℚ) / (n + 1 : ℚ))

end

end A002661.P15796506083621023350

namespace A002661

/-- `round(A191527(n+2)/(n+1))` -/
def P15796506083621023350.Spec : Prop :=
  ∀ n, P15796506083621023350.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P6310482837057620706

`record[ceil(A046899(n)/2)]`
-/

namespace A002661.P6310482837057620706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046899 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002661.P6310482837057620706

namespace A002661

/-- `record[ceil(A046899(n)/2)]` -/
def P6310482837057620706.Spec : Prop :=
  ∀ n, P6310482837057620706.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P17898760997960427307

`A063886(n+1)-floor(C(n+1, floor(n/2))/(n+1))`
-/

namespace A002661.P17898760997960427307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (n + 1) - ⌊(Nat.choose (n + 1) ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A002661.P17898760997960427307

namespace A002661

/-- `A063886(n+1)-floor(C(n+1, floor(n/2))/(n+1))` -/
def P17898760997960427307.Spec : Prop :=
  ∀ n, P17898760997960427307.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P5449381608423980781

`round(C(n+2, A002265(2*n)+1)/2)`
-/

namespace A002661.P5449381608423980781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) (A002265 (2 * n) + 1).toNat : ℚ) / 2)

end

end A002661.P5449381608423980781

namespace A002661

/-- `round(C(n+2, A002265(2*n)+1)/2)` -/
def P5449381608423980781.Spec : Prop :=
  ∀ n, P5449381608423980781.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P2987595242892233299

`floor((C(n+2, A002265(2*(n+2)))+1)/2)`
-/

namespace A002661.P2987595242892233299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) (A002265 (2 * (n + 2))).toNat + 1 : ℚ) / 2⌋

end

end A002661.P2987595242892233299

namespace A002661

/-- `floor((C(n+2, A002265(2*(n+2)))+1)/2)` -/
def P2987595242892233299.Spec : Prop :=
  ∀ n, P2987595242892233299.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P6836833075018399111

`record[floor((A034869(n)+1)/2)]`
-/

namespace A002661.P6836833075018399111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034869 n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002661.P6836833075018399111

namespace A002661

/-- `record[floor((A034869(n)+1)/2)]` -/
def P6836833075018399111.Spec : Prop :=
  ∀ n, P6836833075018399111.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P3447806620250440430

`A130380(n+2)-A006079(n+3)`
-/

namespace A002661.P3447806620250440430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130380 (n + 2) - A006079 (n + 3)

end

end A002661.P3447806620250440430

namespace A002661

/-- `A130380(n+2)-A006079(n+3)` -/
def P3447806620250440430.Spec : Prop :=
  ∀ n, P3447806620250440430.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P12452639728135258334

`A172281(A074148(n+2))`
-/

namespace A002661.P12452639728135258334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172281 (A074148 (n + 2)).toNat

end

end A002661.P12452639728135258334

namespace A002661

/-- `A172281(A074148(n+2))` -/
def P12452639728135258334.Spec : Prop :=
  ∀ n, P12452639728135258334.a n = A002661 (n + 1)

end A002661

/-! ## A002661.P16830897560100681053

`record[A193596(∑[A002265(n)])]`
-/

namespace A002661.P16830897560100681053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193596 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002661.P16830897560100681053

namespace A002661

/-- `record[A193596(∑[A002265(n)])]` -/
def P16830897560100681053.Spec : Prop :=
  ∀ n, P16830897560100681053.a n = A002661 (n + 1)

end A002661

/-!
# A002662: a(n) = 2^n - 1 - n*(n+1)/2.

The programs for A002662, the canonical program `A002662.P6774456480096010218` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002662 has offset 0).

The definition of A002662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-1-n*(n+1)/2` (program `A002662.P701378321547089455`, by `A002662.P701378321547089455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002662.P6774456480096010218

`2^n-C(n, 2)-n-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002662

/-- `2^n-C(n, 2)-n-1` -/
def P6774456480096010218.Spec : Prop :=
  ∀ n, P6774456480096010218.a n = A002662 n

theorem P6774456480096010218.correct : P6774456480096010218.Spec := by
  intro n
  simp only [A002662]

end A002662

/-! ## A002662.P701378321547089455

`2^n-1-n*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002662.P701378321547089455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℚ) - (n * (n + 1) : ℚ) / 2

end

end A002662.P701378321547089455

namespace A002662

/-- `2^n-1-n*(n+1)/2` -/
def P701378321547089455.Spec : Prop :=
  ∀ n, P701378321547089455.a n = (A002662 n : ℚ)

theorem P701378321547089455.correct : P701378321547089455.Spec := by
  intro n
  simp only [A002662, Nat.add_sub_cancel, A002662.P701378321547089455.a, A002662.P6774456480096010218.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002662

/-! ## A002662.P8096451368380312843

`ogf(x^3/(1-5x+9x^2-7x^3+2x^4))`
-/

namespace A002662.P8096451368380312843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -5, 9, -7, 2] n

end

end A002662.P8096451368380312843

namespace A002662

/-- `ogf(x^3/(1-5x+9x^2-7x^3+2x^4))` -/
def P8096451368380312843.Spec : Prop :=
  ∀ n, P8096451368380312843.a n = A002662 n

end A002662

/-! ## A002662.P3585621691872458592

`∑{#}[n, C(n, #+3)]`
-/

namespace A002662.P3585621691872458592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n (k + 3)

end

end A002662.P3585621691872458592

namespace A002662

/-- `∑{#}[n, C(n, #+3)]` -/
def P3585621691872458592.Spec : Prop :=
  ∀ n, (P3585621691872458592.a n : ℤ) = A002662 n

end A002662

/-! ## A002662.P10642716263193127946

`xor(2^n-1, ∑[n])`
-/

namespace A002662.P10642716263193127946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002662.P10642716263193127946

namespace A002662

/-- `xor(2^n-1, ∑[n])` -/
def P10642716263193127946.Spec : Prop :=
  ∀ n, P10642716263193127946.a n = A002662 n

end A002662

/-! ## A002662.P7752037068023637630

`2^n-1-C(n+1, 2)`
-/

namespace A002662.P7752037068023637630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1 - (Nat.choose (n + 1) 2 : ℤ)

end

end A002662.P7752037068023637630

namespace A002662

/-- `2^n-1-C(n+1, 2)` -/
def P7752037068023637630.Spec : Prop :=
  ∀ n, P7752037068023637630.a n = A002662 n

theorem P7752037068023637630.correct : P7752037068023637630.Spec := by
  intro n
  simp only [A002662, Nat.add_sub_cancel, A002662.P7752037068023637630.a, A002662.P6774456480096010218.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002662

/-! ## A002662.P3304364433058118641

`∑{#}[n-1, 2^#+#-n]`
-/

namespace A002662.P3304364433058118641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((2 ^ k + k : ℤ) - (n : ℤ))

end

end A002662.P3304364433058118641

namespace A002662

/-- `∑{#}[n-1, 2^#+#-n]` -/
def P3304364433058118641.Spec : Prop :=
  ∀ n, P3304364433058118641.a n = A002662 n

end A002662

/-! ## A002662.P12436521626806885982

`∑[Δ[2*a(n-1)]-n]` with `a(0)=1, a(1)=1`
-/

namespace A002662.P12436521626806885982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P12436521626806885982

namespace A002662

/-- `∑[Δ[2*a(n-1)]-n]` -/
def P12436521626806885982.Spec : Prop :=
  ∀ n, P12436521626806885982.a n = A002662 n

end A002662

/-! ## A002662.P6001913850146628311

`∑[∑[2*a(n-1)+1]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A002662.P6001913850146628311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  2 * f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P6001913850146628311

namespace A002662

/-- `∑[∑[2*a(n-1)+1]]` -/
def P6001913850146628311.Spec : Prop :=
  ∀ n, (P6001913850146628311.a n : ℤ) = A002662 n

end A002662

/-! ## A002662.P18339800499281764632

`∑[∑[∑[2*a(n-1)]]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A002662.P18339800499281764632
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P18339800499281764632

namespace A002662

/-- `∑[∑[∑[2*a(n-1)]]]` -/
def P18339800499281764632.Spec : Prop :=
  ∀ n, (P18339800499281764632.a n : ℤ) = A002662 n

end A002662

/-! ## A002662.P16609262540385359026

`C(n-1, 2)+2*a(n-1)` with `a(0)=0`
-/

namespace A002662.P16609262540385359026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose ((n : ℤ) - 1).toNat 2 + 2 * a (n - 1)

end

end A002662.P16609262540385359026

namespace A002662

/-- `C(n-1, 2)+2*a(n-1)` -/
def P16609262540385359026.Spec : Prop :=
  ∀ n, (P16609262540385359026.a n : ℤ) = A002662 n

end A002662

/-! ## A002662.P16438315312020460013

`∑[∑[or(3, lcm(2, a(n-1)))]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A002662.P16438315312020460013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f2 =>
  Nat.lor 3 (Nat.lcm 2 (f2 (n - 1)))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P16438315312020460013

namespace A002662

/-- `∑[∑[or(3, lcm(2, a(n-1)))]]` -/
def P16438315312020460013.Spec : Prop :=
  ∀ n, (P16438315312020460013.a n : ℤ) = A002662 n

end A002662

/-! ## A002662.P12246034318952430321

`∑[∑[a(n-1)+a(n-1)+1]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A002662.P12246034318952430321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P12246034318952430321

namespace A002662

/-- `∑[∑[a(n-1)+a(n-1)+1]]` -/
def P12246034318952430321.Spec : Prop :=
  ∀ n, (P12246034318952430321.a n : ℤ) = A002662 n

end A002662

/-! ## A002662.P1762944058955301090

`∑[a(n-1)-(2-a(n-1)-n)]` with `a(0)=0, a(1)=0`
-/

namespace A002662.P1762944058955301090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P1762944058955301090

namespace A002662

/-- `∑[a(n-1)-(2-a(n-1)-n)]` -/
def P1762944058955301090.Spec : Prop :=
  ∀ n, P1762944058955301090.a n = A002662 n

end A002662

/-! ## A002662.P13574077468765660998

`∑[A131577(n)-n]`
-/

namespace A002662.P13574077468765660998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P13574077468765660998

namespace A002662

/-- `∑[A131577(n)-n]` -/
def P13574077468765660998.Spec : Prop :=
  ∀ n, P13574077468765660998.a n = A002662 n

end A002662

/-! ## A002662.P9145267165142651353

`∑[A000295(abs(1-n))]`
-/

namespace A002662.P9145267165142651353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P9145267165142651353

namespace A002662

/-- `∑[A000295(abs(1-n))]` -/
def P9145267165142651353.Spec : Prop :=
  ∀ n, P9145267165142651353.a n = A002662 n

end A002662

/-! ## A002662.P14997443489953448075

`∑[∑[A166444(n)]-n]`
-/

namespace A002662.P14997443489953448075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P14997443489953448075

namespace A002662

/-- `∑[∑[A166444(n)]-n]` -/
def P14997443489953448075.Spec : Prop :=
  ∀ n, P14997443489953448075.a n = A002662 n

end A002662

/-! ## A002662.P14201912113655177223

`∑[Δ[A011782(n)]-n]`
-/

namespace A002662.P14201912113655177223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P14201912113655177223

namespace A002662

/-- `∑[Δ[A011782(n)]-n]` -/
def P14201912113655177223.Spec : Prop :=
  ∀ n, P14201912113655177223.a n = A002662 n

end A002662

/-! ## A002662.P16632666439625194701

`∑[A034008(n+1)-n]`
-/

namespace A002662.P16632666439625194701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P16632666439625194701

namespace A002662

/-- `∑[A034008(n+1)-n]` -/
def P16632666439625194701.Spec : Prop :=
  ∀ n, P16632666439625194701.a n = A002662 n

end A002662

/-! ## A002662.P14902259285109214301

`∑[A094373(n)-(n+1)]`
-/

namespace A002662.P14902259285109214301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002662.P14902259285109214301

namespace A002662

/-- `∑[A094373(n)-(n+1)]` -/
def P14902259285109214301.Spec : Prop :=
  ∀ n, P14902259285109214301.a n = A002662 n

end A002662

/-!
# A002663: a(n) = 2^n - C(n,0) - C(n,1) - C(n,2) - C(n,3).

The programs for A002663, the canonical program `A002663.P16035654248427437417` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002663 has offset 0).

The definition of A002663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-C(n, 0)-C(n, 1)-C(n, 2)-C(n, 3)` (program `A002663.P16035654248427437417`, by `A002663.P16035654248427437417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002663.P17903630589566311370

`2*a(n-1)+C(n-1, 3)` with `a(0)=0`
-/

namespace A002663.P17903630589566311370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + Nat.choose ((n : ℤ) - 1).toNat 3

end

end A002663.P17903630589566311370

namespace A002663

/-- `2*a(n-1)+C(n-1, 3)` -/
def P17903630589566311370.Spec : Prop :=
  ∀ n, (P17903630589566311370.a n : ℤ) = A002663 n

end A002663

/-! ## A002663.P16035654248427437417

`2^n-C(n, 0)-C(n, 1)-C(n, 2)-C(n, 3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002663

/-- `2^n-C(n, 0)-C(n, 1)-C(n, 2)-C(n, 3)` -/
def P16035654248427437417.Spec : Prop :=
  ∀ n, P16035654248427437417.a n = A002663 n

theorem P16035654248427437417.correct : P16035654248427437417.Spec := by
  intro n
  simp only [A002663]

end A002663

/-! ## A002663.P5367389771272728704

`2^n-A000125(n)`
-/

namespace A002663.P5367389771272728704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000125 n

end

end A002663.P5367389771272728704

namespace A002663

/-- `2^n-A000125(n)` -/
def P5367389771272728704.Spec : Prop :=
  ∀ n, P5367389771272728704.a n = A002663 n

theorem P5367389771272728704.correct : P5367389771272728704.Spec := by
  intro n
  simp only [A002663, Nat.add_sub_cancel, A002663.P5367389771272728704.a, A002663.P16035654248427437417.a, A000125, A000125.P10762125132202112265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002663

/-! ## A002663.P18399789581191502950

`ogf(x^4/(1-6x+14x^2-16x^3+9x^4-2x^5))`
-/

namespace A002663.P18399789581191502950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1] [1, -6, 14, -16, 9, -2] n

end

end A002663.P18399789581191502950

namespace A002663

/-- `ogf(x^4/(1-6x+14x^2-16x^3+9x^4-2x^5))` -/
def P18399789581191502950.Spec : Prop :=
  ∀ n, P18399789581191502950.a n = A002663 n

end A002663

/-! ## A002663.P5206478254519435348

`(6*2^n-n^3-5*n-6)/6`
-/

namespace A002663.P5206478254519435348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 2 ^ n : ℤ) - (n ^ 3 : ℤ) - (5 * n : ℤ) - 6 : ℚ) / 6

end

end A002663.P5206478254519435348

namespace A002663

/-- `(6*2^n-n^3-5*n-6)/6` -/
def P5206478254519435348.Spec : Prop :=
  ∀ n, P5206478254519435348.a n = (A002663 n : ℚ)

theorem P5206478254519435348.correct : P5206478254519435348.Spec := by
  intro n
  simp only [A002663, Nat.add_sub_cancel, A002663.P5206478254519435348.a, A002663.P16035654248427437417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002663

/-! ## A002663.P4880378791627373128

`∑{#}[n, C(n, #+4)]`
-/

namespace A002663.P4880378791627373128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n (k + 4)

end

end A002663.P4880378791627373128

namespace A002663

/-- `∑{#}[n, C(n, #+4)]` -/
def P4880378791627373128.Spec : Prop :=
  ∀ n, (P4880378791627373128.a n : ℤ) = A002663 n

end A002663

/-! ## A002663.P16904518821215338215

`2^n-∑[C(n, 2)+1]`
-/

namespace A002663.P16904518821215338215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002663.P16904518821215338215

namespace A002663

/-- `2^n-∑[C(n, 2)+1]` -/
def P16904518821215338215.Spec : Prop :=
  ∀ n, P16904518821215338215.a n = A002663 n

end A002663

/-! ## A002663.P8916557607988068525

`2^n-1-n-C(n, 2)-C(n, 3)`
-/

namespace A002663.P8916557607988068525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1 - (n : ℤ) - (Nat.choose n 2 : ℤ) - (Nat.choose n 3 : ℤ)

end

end A002663.P8916557607988068525

namespace A002663

/-- `2^n-1-n-C(n, 2)-C(n, 3)` -/
def P8916557607988068525.Spec : Prop :=
  ∀ n, P8916557607988068525.a n = A002663 n

theorem P8916557607988068525.correct : P8916557607988068525.Spec := by
  intro n
  simp only [A002663, Nat.add_sub_cancel, A002663.P8916557607988068525.a, A002663.P16035654248427437417.a, SequenceMachineLib.memo_apply]
  try simp

end A002663

/-! ## A002663.P15240849976349404256

`∑[A324172(n)/2]`
-/

namespace A002663.P15240849976349404256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324172 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002663.P15240849976349404256

namespace A002663

/-- `∑[A324172(n)/2]` -/
def P15240849976349404256.Spec : Prop :=
  ∀ n, P15240849976349404256.a n = (A002663 n : ℚ)

end A002663

/-! ## A002663.P6366649879934787167

`∑[A002662(abs(1-n))]`
-/

namespace A002663.P6366649879934787167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002663.P6366649879934787167

namespace A002663

/-- `∑[A002662(abs(1-n))]` -/
def P6366649879934787167.Spec : Prop :=
  ∀ n, P6366649879934787167.a n = A002663 n

end A002663

/-! ## A002663.P8805130047244816452

`∑[A011782(n)-∑[abs(1-n)]]`
-/

namespace A002663.P8805130047244816452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002663.P8805130047244816452

namespace A002663

/-- `∑[A011782(n)-∑[abs(1-n)]]` -/
def P8805130047244816452.Spec : Prop :=
  ∀ n, P8805130047244816452.a n = A002663 n

end A002663

/-! ## A002663.P15234514606145300198

`A000225(n)+∑[n-∑[n]]-n`
-/

namespace A002663.P15234514606145300198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A002663.P15234514606145300198

namespace A002663

/-- `A000225(n)+∑[n-∑[n]]-n` -/
def P15234514606145300198.Spec : Prop :=
  ∀ n, P15234514606145300198.a n = A002663 n

end A002663

/-! ## A002663.P6254251329846246401

`A002664(n)+A000332(n)`
-/

namespace A002663.P6254251329846246401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002664 n + A000332 n

end

end A002663.P6254251329846246401

namespace A002663

/-- `A002664(n)+A000332(n)` -/
def P6254251329846246401.Spec : Prop :=
  ∀ n, P6254251329846246401.a n = A002663 n

end A002663

/-! ## A002663.P16400353723813887383

`A342379(n)+A130543(n)`
-/

namespace A002663.P16400353723813887383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342379 n + A130543 n

end

end A002663.P16400353723813887383

namespace A002663

/-- `A342379(n)+A130543(n)` -/
def P16400353723813887383.Spec : Prop :=
  ∀ n, P16400353723813887383.a n = A002663 n

end A002663

/-! ## A002663.P13107960675676996974

`A000225(n)-A004006(n)`
-/

namespace A002663.P13107960675676996974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A004006 n

end

end A002663.P13107960675676996974

namespace A002663

/-- `A000225(n)-A004006(n)` -/
def P13107960675676996974.Spec : Prop :=
  ∀ n, P13107960675676996974.a n = A002663 n

theorem P13107960675676996974.correct : P13107960675676996974.Spec := by
  intro n
  simp only [A002663, Nat.add_sub_cancel, A002663.P13107960675676996974.a, A002663.P16035654248427437417.a, A000225, A000225.P6535533121115206393.a, A004006, A004006.P3732720668660365450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002663

/-! ## A002663.P14303540810584009972

`A020873(n)-A074742(n)`
-/

namespace A002663.P14303540810584009972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020873 n - A074742 n

end

end A002663.P14303540810584009972

namespace A002663

/-- `A020873(n)-A074742(n)` -/
def P14303540810584009972.Spec : Prop :=
  ∀ n, P14303540810584009972.a n = A002663 n

end A002663

/-! ## A002663.P103818650808646090

`A000918(n)-A283551(n)`
-/

namespace A002663.P103818650808646090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A283551 n

end

end A002663.P103818650808646090

namespace A002663

/-- `A000918(n)-A283551(n)` -/
def P103818650808646090.Spec : Prop :=
  ∀ n, P103818650808646090.a n = A002663 n

end A002663

/-! ## A002663.P4617429142579990878

`A220425(n)-A341209(n)`
-/

namespace A002663.P4617429142579990878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220425 n - A341209 n

end

end A002663.P4617429142579990878

namespace A002663

/-- `A220425(n)-A341209(n)` -/
def P4617429142579990878.Spec : Prop :=
  ∀ n, P4617429142579990878.a n = A002663 n

end A002663

/-! ## A002663.P15982365505179162720

`abs(A000079(n)-A000125(n))`
-/

namespace A002663.P15982365505179162720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A000125 n|

end

end A002663.P15982365505179162720

namespace A002663

/-- `abs(A000079(n)-A000125(n))` -/
def P15982365505179162720.Spec : Prop :=
  ∀ n, P15982365505179162720.a n = A002663 n

end A002663

/-! ## A002663.P3796982464370497679

`A000051(n)-A011826(n+1)`
-/

namespace A002663.P3796982464370497679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A011826 (n + 1)

end

end A002663.P3796982464370497679

namespace A002663

/-- `A000051(n)-A011826(n+1)` -/
def P3796982464370497679.Spec : Prop :=
  ∀ n, P3796982464370497679.a n = A002663 n

end A002663

/-!
# A002664: a(n) = 2^n - C(n,0) - ... - C(n,4).

The programs for A002664, the canonical program `A002664.P1797995334448599653` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002664 has offset 0).

The definition of A002664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002664.P1797995334448599653

`2*a(n-1)+C(n-1, 4)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002664

/-- `2*a(n-1)+C(n-1, 4)` -/
def P1797995334448599653.Spec : Prop :=
  ∀ n, (P1797995334448599653.a n : ℤ) = A002664 n

theorem P1797995334448599653.correct : P1797995334448599653.Spec := by
  intro n
  simp only [A002664]

end A002664

/-! ## A002664.P15526035046866905491

`2^n-n^4/24+n^3/12-11*n²/24-7*n/12-1`
-/

namespace A002664.P15526035046866905491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (n ^ 4 : ℚ) / 24 + (n ^ 3 : ℚ) / 12 - (11 * n ^ 2 : ℚ) / 24 - (7 * n : ℚ) / 12 - 1

end

end A002664.P15526035046866905491

namespace A002664

/-- `2^n-n^4/24+n^3/12-11*n²/24-7*n/12-1` -/
def P15526035046866905491.Spec : Prop :=
  ∀ n, P15526035046866905491.a n = (A002664 n : ℚ)

end A002664

/-! ## A002664.P5856769545724260484

`ogf(x^5/(1-7x+20x^2-30x^3+25x^4-11x^5+2x^6))`
-/

namespace A002664.P5856769545724260484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 1] [1, -7, 20, -30, 25, -11, 2] n

end

end A002664.P5856769545724260484

namespace A002664

/-- `ogf(x^5/(1-7x+20x^2-30x^3+25x^4-11x^5+2x^6))` -/
def P5856769545724260484.Spec : Prop :=
  ∀ n, P5856769545724260484.a n = A002664 n

end A002664

/-! ## A002664.P1374191957164475649

`∑{#}[n, C(n, #+5)]`
-/

namespace A002664.P1374191957164475649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n (k + 5)

end

end A002664.P1374191957164475649

namespace A002664

/-- `∑{#}[n, C(n, #+5)]` -/
def P1374191957164475649.Spec : Prop :=
  ∀ n, (P1374191957164475649.a n : ℤ) = A002664 n

end A002664

/-! ## A002664.P4544745218604353147

`∑[A002663(abs(1-n))]`
-/

namespace A002664.P4544745218604353147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002663 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002664.P4544745218604353147

namespace A002664

/-- `∑[A002663(abs(1-n))]` -/
def P4544745218604353147.Spec : Prop :=
  ∀ n, P4544745218604353147.a n = A002664 n

end A002664

/-! ## A002664.P2321237803785358737

`xor(A000225(n), A055795(n+1))`
-/

namespace A002664.P2321237803785358737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A055795 (n + 1))

end

end A002664.P2321237803785358737

namespace A002664

/-- `xor(A000225(n), A055795(n+1))` -/
def P2321237803785358737.Spec : Prop :=
  ∀ n, P2321237803785358737.a n = A002664 n

end A002664

/-! ## A002664.P11815637983768708149

`abs(A000127(n+1)-A131577(n+1))`
-/

namespace A002664.P11815637983768708149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000127 (n + 1) - A131577 (n + 1)|

end

end A002664.P11815637983768708149

namespace A002664

/-- `abs(A000127(n+1)-A131577(n+1))` -/
def P11815637983768708149.Spec : Prop :=
  ∀ n, P11815637983768708149.a n = A002664 n

end A002664

/-! ## A002664.P11144420622300963605

`Δ[A035038(n)]`
-/

namespace A002664.P11144420622300963605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002664.P11144420622300963605

namespace A002664

/-- `Δ[A035038(n)]` -/
def P11144420622300963605.Spec : Prop :=
  ∀ n, P11144420622300963605.a n = A002664 n

end A002664

/-! ## A002664.P14606048082043858901

`Δ[Δ[A035039(n)]]`
-/

namespace A002664.P14606048082043858901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002664.P14606048082043858901

namespace A002664

/-- `Δ[Δ[A035039(n)]]` -/
def P14606048082043858901.Spec : Prop :=
  ∀ n, P14606048082043858901.a n = A002664 n

end A002664

/-!
# A002665: Continued fraction expansion of Lehmer's constant.

The programs for A002665, there is no canonical definition to state claims against.
-/

/-! ## A002665.P15293056407034929725

`∑[A362049(∑[A041457(n)])]`
-/

namespace A002665.P15293056407034929725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041457 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362049 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002665.P15293056407034929725

/-! ## A002665.P17015113012190949838

`Δ[Δ[A246099(A000598(n))]]`
-/

namespace A002665.P17015113012190949838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246099 (A000598 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002665.P17015113012190949838

/-!
# A002670: Denominator of constant term in polynomial arising from numerical integration formula.

The programs for A002670, there is no canonical definition to state claims against.
-/

/-! ## A002670.P14936572963069815679

`A306371(∑[A029579(n)²])`
-/

namespace A002670.P14936572963069815679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306371 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002670.P14936572963069815679

/-! ## A002670.P8722371942128551288

`A000010(A277457(n)+A237770(n))`
-/

namespace A002670.P8722371942128551288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A277457 n + A237770 n).toNat

end

end A002670.P8722371942128551288

/-!
# A002671: a(n) = 4^n*(2*n+1)!.

The programs for A002671, the canonical program `A002671.P4461295106705287957` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002671 has offset 0).

The definition of A002671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*(2*n+1)!` (program `A002671.P4461295106705287957`, by `A002671.P4461295106705287957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002671.P4461295106705287957

`4^n*(2*n+1)!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002671

/-- `4^n*(2*n+1)!` -/
def P4461295106705287957.Spec : Prop :=
  ∀ n, (P4461295106705287957.a n : ℤ) = A002671 n

theorem P4461295106705287957.correct : P4461295106705287957.Spec := by
  intro n
  simp only [A002671]

end A002671

/-! ## A002671.P754947623721873744

`(2*n+1)!*4^n`
-/

namespace A002671.P754947623721873744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1) * 4 ^ n

end

end A002671.P754947623721873744

namespace A002671

/-- `(2*n+1)!*4^n` -/
def P754947623721873744.Spec : Prop :=
  ∀ n, (P754947623721873744.a n : ℤ) = A002671 n

theorem P754947623721873744.correct : P754947623721873744.Spec := by
  intro n
  simp only [A002671, Nat.add_sub_cancel, A002671.P754947623721873744.a, A002671.P4461295106705287957.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002671

/-! ## A002671.P5585608162959636156

`record[(-2)^n*∏[n+1]]`
-/

namespace A002671.P5585608162959636156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002671.P5585608162959636156

namespace A002671

/-- `record[(-2)^n*∏[n+1]]` -/
def P5585608162959636156.Spec : Prop :=
  ∀ n, P5585608162959636156.a n = A002671 n

end A002671

/-! ## A002671.P15540730894542048545

`(n+1+n)!/4^-n`
-/

namespace A002671.P15540730894542048545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1 + n) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A002671.P15540730894542048545

namespace A002671

/-- `(n+1+n)!/4^-n` -/
def P15540730894542048545.Spec : Prop :=
  ∀ n, P15540730894542048545.a n = (A002671 n : ℚ)

end A002671

/-! ## A002671.P18175293780972575610

`(16*n+8)*n*a(n-1)` with `a(0)=1`
-/

namespace A002671.P18175293780972575610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (16 * n + 8) * (n * a (n - 1))

end

end A002671.P18175293780972575610

namespace A002671

/-- `(16*n+8)*n*a(n-1)` -/
def P18175293780972575610.Spec : Prop :=
  ∀ n, (P18175293780972575610.a n : ℤ) = A002671 n

end A002671

/-!
# A002673: Numerators of central difference coefficients M_{3}^(2n+1).

The programs for A002673, there is no canonical definition to state claims against.
-/

/-! ## A002673.P147115529663327992

`A047279(A349823(n!))`
-/

namespace A002673.P147115529663327992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047279 (A349823 (Nat.factorial n)).toNat

end

end A002673.P147115529663327992

/-!
# A002674: a(n) = (2n)!/2.

The programs for A002674, the canonical program `A002674.P4479616391924833120` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002674 has offset 1).

The definition of A002674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002674.P4479616391924833120

`(n+1)*(2*(n+1)-1)!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002674

/-- `(n+1)*(2*(n+1)-1)!` -/
def P4479616391924833120.Spec : Prop :=
  ∀ n, (P4479616391924833120.a n : ℤ) = A002674 (n + 1)

theorem P4479616391924833120.correct : P4479616391924833120.Spec := by
  intro n
  simp only [A002674, Nat.add_sub_cancel]

end A002674

/-! ## A002674.P12822308072580180249

`(2*(n+1))!/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002674.P12822308072580180249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1)) : ℚ) / 2

end

end A002674.P12822308072580180249

namespace A002674

/-- `(2*(n+1))!/2` -/
def P12822308072580180249.Spec : Prop :=
  ∀ n, P12822308072580180249.a n = (A002674 (n + 1) : ℚ)

end A002674

/-! ## A002674.P513057189089938462

`A010050(n+1)/2`
-/

namespace A002674.P513057189089938462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 (n + 1) : ℚ) / 2

end

end A002674.P513057189089938462

namespace A002674

/-- `A010050(n+1)/2` -/
def P513057189089938462.Spec : Prop :=
  ∀ n, P513057189089938462.a n = (A002674 (n + 1) : ℚ)

end A002674

/-! ## A002674.P10887495254715101373

`Δ[n²]!*(n+1)`
-/

namespace A002674.P10887495254715101373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * (n + 1)

end

end A002674.P10887495254715101373

namespace A002674

/-- `Δ[n²]!*(n+1)` -/
def P10887495254715101373.Spec : Prop :=
  ∀ n, (P10887495254715101373.a n : ℤ) = A002674 (n + 1)

theorem P10887495254715101373.correct : P10887495254715101373.Spec := by
  intro n
  simp only [A002674, Nat.add_sub_cancel, A002674.P10887495254715101373.f1, A002674.P10887495254715101373.a, A002674.P4479616391924833120.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002674

/-! ## A002674.P1486956391235818862

`(n+1)*record[xor(1, n)!]`
-/

namespace A002674.P1486956391235818862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002674.P1486956391235818862

namespace A002674

/-- `(n+1)*record[xor(1, n)!]` -/
def P1486956391235818862.Spec : Prop :=
  ∀ n, (P1486956391235818862.a n : ℤ) = A002674 (n + 1)

end A002674

/-!
# A002675: Numerators of coefficients for central differences M_{4}^(2*n).

The programs for A002675, there is no canonical definition to state claims against.
-/

/-! ## A002675.P12015956203985457803

`A002678(2*n+3)`
-/

namespace A002675.P12015956203985457803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002678 (2 * n + 3)

end

end A002675.P12015956203985457803

/-! ## A002675.P18184796133471600916

`or(1, A002678(Δ[A005563(n)]))`
-/

namespace A002675.P18184796133471600916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002678 (f1 (n + 1) - f1 n).toNat)

end

end A002675.P18184796133471600916

/-! ## A002675.P4722064178223809778

`or(1, A002678(A144396(n+1)))`
-/

namespace A002675.P4722064178223809778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002678 (A144396 (n + 1)).toNat)

end

end A002675.P4722064178223809778

/-! ## A002675.P15593261586892530066

`A008836(n+1)²-(1-A002678(Δ[A005563(n)]))`
-/

namespace A002675.P15593261586892530066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 - (1 - A002678 (f1 (n + 1) - f1 n).toNat)

end

end A002675.P15593261586892530066

/-! ## A002675.P1032079751032797528

`A002678(A144396(n+1))/A092505(A092505(n+1))`
-/

namespace A002675.P1032079751032797528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002678 (A144396 (n + 1)).toNat : ℚ) / (A092505 (A092505 (n + 1)).toNat : ℚ)

end

end A002675.P1032079751032797528

/-! ## A002675.P12338494474928269052

`gcd(∑[A000079(n)²], A104042(2*n+1))`
-/

namespace A002675.P12338494474928269052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A104042 (2 * n + 1))

end

end A002675.P12338494474928269052

/-! ## A002675.P2476769246945912042

`gcd(abs(A104042(2*n+1)), A069112(2*(n+1)))`
-/

namespace A002675.P2476769246945912042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A104042 (2 * n + 1)| (A069112 (2 * (n + 1)))

end

end A002675.P2476769246945912042

/-! ## A002675.P14855794229694419067

`gcd(2*A104042(2*n+1), A126646(2*n+1))`
-/

namespace A002675.P14855794229694419067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A104042 (2 * n + 1)) (A126646 (2 * n + 1))

end

end A002675.P14855794229694419067

/-! ## A002675.P7149464555229501240

`A002678(A144396(n+1))^A147503(A038548(n+1))`
-/

namespace A002675.P7149464555229501240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002678 (A144396 (n + 1)).toNat : ℚ) ^ (A147503 (A038548 (n + 1)).toNat : ℤ)

end

end A002675.P7149464555229501240

/-! ## A002675.P16483166785202159771

`lcm(A020707(n+1), A104042(2*n+1))/A020707(n+1)`
-/

namespace A002675.P16483166785202159771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020707 (n + 1)) (A104042 (2 * n + 1)) : ℚ) / (A020707 (n + 1) : ℚ)

end

end A002675.P16483166785202159771

/-!
# A002676: Denominators of coefficients for central differences M_{4}^(2*n).

The programs for A002676, there is no canonical definition to state claims against.
-/

/-! ## A002676.P7540670425065514692

`(n+2)/2*A002677(n+1)`
-/

namespace A002676.P7540670425065514692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A002677 (n + 1) : ℚ)

end

end A002676.P7540670425065514692

/-! ## A002676.P1141214086977284661

`(n+2)*A002679(2*n+3)/2`
-/

namespace A002676.P1141214086977284661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((A002679 (2 * n + 3) : ℚ) / 2)

end

end A002676.P1141214086977284661

/-! ## A002676.P6945864282647996187

`A324004(2*(n+2))*A348048(A064062(n))`
-/

namespace A002676.P6945864282647996187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324004 (2 * (n + 2)) * A348048 (A064062 n).toNat

end

end A002676.P6945864282647996187

/-! ## A002676.P14821337016635716098

`lcm(A284376(A256195(n)), A324004(2*(n+2)))`
-/

namespace A002676.P14821337016635716098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A284376 (A256195 n).toNat) (A324004 (2 * (n + 2)))

end

end A002676.P14821337016635716098

/-!
# A002677: Denominators of coefficients for central differences M_{3}'^(2*n+1).

The programs for A002677, there is no canonical definition to state claims against.
-/

/-! ## A002677.P384970057656225564

`2/(n+2)*A002676(n+2)`
-/

namespace A002677.P384970057656225564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A002676 (n + 2) : ℚ)

end

end A002677.P384970057656225564

/-! ## A002677.P7621276897970021942

`A002679(2*n+3)`
-/

namespace A002677.P7621276897970021942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002679 (2 * n + 3)

end

end A002677.P7621276897970021942

/-! ## A002677.P5927153094255746218

`or(A000007(n), A002679(A144396(n+1)))`
-/

namespace A002677.P5927153094255746218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A002679 (A144396 (n + 1)).toNat)

end

end A002677.P5927153094255746218

/-! ## A002677.P9578377852832244487

`A002679(A144396(n+1))/A007318(C(2, n))`
-/

namespace A002677.P9578377852832244487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002679 (A144396 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A002677.P9578377852832244487

/-! ## A002677.P13737461947672400998

`A001804(2*n+3)/gcd(A001804(2*n+3), A068605(2*n+3))`
-/

namespace A002677.P13737461947672400998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001804 (2 * n + 3) : ℚ) / (Int.gcd (A001804 (2 * n + 3)) (A068605 (2 * n + 3)) : ℚ)

end

end A002677.P13737461947672400998

/-!
# A002678: Numerators of the Taylor coefficients of (e^x-1)^2.

The programs for A002678, there is no canonical definition to state claims against.
-/

/-! ## A002678.P17951331141369067755

`gcd(A104042(n), A116419(n))`
-/

namespace A002678.P17951331141369067755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104042 n) (A116419 n)

end

end A002678.P17951331141369067755

/-! ## A002678.P14059288178035507398

`gcd(2*A104042(n), A126646(n))`
-/

namespace A002678.P14059288178035507398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A104042 n) (A126646 n)

end

end A002678.P14059288178035507398

/-! ## A002678.P15379878580529281817

`gcd(abs(A104042(n)), A069112(n+1))`
-/

namespace A002678.P15379878580529281817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A104042 n| (A069112 (n + 1))

end

end A002678.P15379878580529281817

/-! ## A002678.P7282977669335956518

`lcm(A020707(n), A104042(n))/A020707(n)`
-/

namespace A002678.P7282977669335956518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020707 n) (A104042 n) : ℚ) / (A020707 n : ℚ)

end

end A002678.P7282977669335956518

/-! ## A002678.P8047671110686215321

`gcd(A104042(n)², A126646(n))`
-/

namespace A002678.P8047671110686215321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104042 n ^ 2) (A126646 n)

end

end A002678.P8047671110686215321

/-! ## A002678.P17553199316520877036

`∑[2^n]/gcd((n+2)!, ∑[2^n])`
-/

namespace A002678.P17553199316520877036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd (Nat.factorial (n + 2)) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A002678.P17553199316520877036

/-! ## A002678.P6895785427632827312

`A068605(n+2)/gcd(A001804(n+2), A068605(n+2))`
-/

namespace A002678.P6895785427632827312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068605 (n + 2) : ℚ) / (Int.gcd (A001804 (n + 2)) (A068605 (n + 2)) : ℚ)

end

end A002678.P6895785427632827312

/-!
# A002679: Denominator of 2*Stirling_2(n,2)/n!.

The programs for A002679, there is no canonical definition to state claims against.
-/

/-! ## A002679.P3535516846866179689

`A001804(n+2)/gcd(A001804(n+2), A068605(n+2))`
-/

namespace A002679.P3535516846866179689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001804 (n + 2) : ℚ) / (Int.gcd (A001804 (n + 2)) (A068605 (n + 2)) : ℚ)

end

end A002679.P3535516846866179689

/-! ## A002679.P14765989558680775819

`A001804(n+2)*A002678(n+2)/A068605(n+2)`
-/

namespace A002679.P14765989558680775819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001804 (n + 2) * A002678 (n + 2) : ℚ) / (A068605 (n + 2) : ℚ)

end

end A002679.P14765989558680775819

/-!
# A002680: Denominators of coefficients of polynomials arising from Chebyshev quadrature.

The programs for A002680, there is no canonical definition to state claims against.
-/

/-! ## A002680.P13157502059401996687

`A324123(∑[∑[n%2]])`
-/

namespace A002680.P13157502059401996687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324123 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002680.P13157502059401996687

/-! ## A002680.P13514992124592588545

`A324123(∑[A110654(n)])`
-/

namespace A002680.P13514992124592588545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324123 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002680.P13514992124592588545

/-! ## A002680.P1526698697525496524

`A324123(record[A257022(n)])`
-/

namespace A002680.P1526698697525496524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002680.P1526698697525496524

/-! ## A002680.P12957654709188481197

`A324123(record[A307018(n)])`
-/

namespace A002680.P12957654709188481197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002680.P12957654709188481197

/-! ## A002680.P6252294184594772572

`A324123(A002620(n+1))`
-/

namespace A002680.P6252294184594772572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324123 (A002620 (n + 1)).toNat

end

end A002680.P6252294184594772572

/-!
# A002681: Numerators of coefficients for repeated integration.

The programs for A002681, there is no canonical definition to state claims against.
-/

/-! ## A002681.P10929410107121530990

`(-1)^n*A086892(A112957(n+2))`
-/

namespace A002681.P10929410107121530990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A086892 (A112957 (n + 2)).toNat

end

end A002681.P10929410107121530990

/-!
# A002685: Coefficients for numerical integration.

The programs for A002685, there is no canonical definition to state claims against.
-/

/-! ## A002685.P3293014443983058963

`A170824(n+1)*A328884(n+1)`
-/

namespace A002685.P3293014443983058963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1) * A328884 (n + 1)

end

end A002685.P3293014443983058963

/-! ## A002685.P12818069523995521512

`A248909(n+1)*A328884(n+1)`
-/

namespace A002685.P12818069523995521512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1) * A328884 (n + 1)

end

end A002685.P12818069523995521512

/-! ## A002685.P6823808595376546160

`A268354(n+1)*A328884(n+1)`
-/

namespace A002685.P6823808595376546160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (n + 1) * A328884 (n + 1)

end

end A002685.P6823808595376546160

/-! ## A002685.P7194022968402323626

`lcm(A161127(n+1), A328884(n+1))`
-/

namespace A002685.P7194022968402323626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A161127 (n + 1)) (A328884 (n + 1))

end

end A002685.P7194022968402323626

/-! ## A002685.P14543347154969387805

`A131065(A004396(n))*A328884(n+1)`
-/

namespace A002685.P14543347154969387805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131065 (A004396 n).toNat * A328884 (n + 1)

end

end A002685.P14543347154969387805

/-!
# A002686: Coefficients for numerical integration.

The programs for A002686, there is no canonical definition to state claims against.
-/

/-! ## A002686.P908526253707068489

`A170824(n+1)*A328885(n+1)`
-/

namespace A002686.P908526253707068489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1) * A328885 (n + 1)

end

end A002686.P908526253707068489

/-! ## A002686.P7667974827616475840

`A248909(n+1)*A328885(n+1)`
-/

namespace A002686.P7667974827616475840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1) * A328885 (n + 1)

end

end A002686.P7667974827616475840

/-! ## A002686.P4263713661092155608

`A268354(n+1)*A328885(n+1)`
-/

namespace A002686.P4263713661092155608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (n + 1) * A328885 (n + 1)

end

end A002686.P4263713661092155608

/-! ## A002686.P5182790959542660891

`A319101((n+1)*Δ[n^3])*A328885(n+1)`
-/

namespace A002686.P5182790959542660891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319101 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat * A328885 (n + 1)

end

end A002686.P5182790959542660891

/-! ## A002686.P15529795049108333074

`A109010((n+1)/ceil(xor(n, n+1)/4))*A328885(n+1)`
-/

namespace A002686.P15529795049108333074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat * A328885 (n + 1)

end

end A002686.P15529795049108333074

/-!
# A002687: Numerators of coefficients for repeated integration.

The programs for A002687, there is no canonical definition to state claims against.
-/

/-! ## A002687.P12804951990926131231

`A165472(∑[a(n-1)²])` with `a(0)=3, a(1)=4, a(2)=10`
-/

namespace A002687.P12804951990926131231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 10] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002687.P12804951990926131231

/-!
# A002689: Denominators of coefficients for repeated integration.

The programs for A002689, there is no canonical definition to state claims against.
-/

/-! ## A002689.P7377491463396733879

`A195189(n)/(n+1)²`
-/

namespace A002689.P7377491463396733879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195189 n : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A002689.P7377491463396733879

/-! ## A002689.P53362910060518119

`gcd(A174727(n), A195189(n))`
-/

namespace A002689.P53362910060518119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174727 n) (A195189 n)

end

end A002689.P53362910060518119

/-!
# A002690: a(n) = (n+1) * (2*n)! / n!.

The programs for A002690, the canonical program `A002690.P12431698616157886521` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002690 has offset 0).

The definition of A002690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002690.P12431698616157886521

`4*n*a(n-1)+4*(2*n-3)*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002690

/-- `4*n*a(n-1)+4*(2*n-3)*a(n-2)` -/
def P12431698616157886521.Spec : Prop :=
  ∀ n, P12431698616157886521.a n = A002690 n

theorem P12431698616157886521.correct : P12431698616157886521.Spec := by
  intro n
  simp only [A002690]

end A002690

/-! ## A002690.P7651698852253147885

`(n+1)*A001813(n)`
-/

namespace A002690.P7651698852253147885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001813 n

end

end A002690.P7651698852253147885

namespace A002690

/-- `(n+1)*A001813(n)` -/
def P7651698852253147885.Spec : Prop :=
  ∀ n, P7651698852253147885.a n = A002690 n

end A002690

/-! ## A002690.P9643223867705411320

`2^n*A001193(n)`
-/

namespace A002690.P9643223867705411320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001193 n

end

end A002690.P9643223867705411320

namespace A002690

/-- `2^n*A001193(n)` -/
def P9643223867705411320.Spec : Prop :=
  ∀ n, P9643223867705411320.a n = A002690 n

end A002690

/-! ## A002690.P15573486827327093562

`(n+1)*(2*n)!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002690.P15573486827327093562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n : ℚ)

end

end A002690.P15573486827327093562

namespace A002690

/-- `(n+1)*(2*n)!/n!` -/
def P15573486827327093562.Spec : Prop :=
  ∀ n, P15573486827327093562.a n = (A002690 n : ℚ)

end A002690

/-! ## A002690.P12112732209780968676

`(1+n)!*C(2*n, n)`
-/

namespace A002690.P12112732209780968676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (1 + n) * Nat.choose (2 * n) n

end

end A002690.P12112732209780968676

namespace A002690

/-- `(1+n)!*C(2*n, n)` -/
def P12112732209780968676.Spec : Prop :=
  ∀ n, (P12112732209780968676.a n : ℤ) = A002690 n

end A002690

/-! ## A002690.P13282889910946027399

`C(2*n, n)*∏[n+1]`
-/

namespace A002690.P13282889910946027399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002690.P13282889910946027399

namespace A002690

/-- `C(2*n, n)*∏[n+1]` -/
def P13282889910946027399.Spec : Prop :=
  ∀ n, (P13282889910946027399.a n : ℤ) = A002690 n

end A002690

/-! ## A002690.P13042746723446496007

`(n+1)*∏[floor(abs(4*n-ϕ))]`
-/

namespace A002690.P13042746723446496007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002690.P13042746723446496007

namespace A002690

/-- `(n+1)*∏[floor(abs(4*n-ϕ))]` -/
def P13042746723446496007.Spec : Prop :=
  ∀ n, P13042746723446496007.a n = A002690 n

end A002690

/-! ## A002690.P9493659367918831388

`floor((n+1)*(4-2/n)*a(n-1))` with `a(0)=1`
-/

namespace A002690.P9493659367918831388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) * ((4 - 2 / (n : ℚ)) * (a (n - 1) : ℚ))⌋

end

end A002690.P9493659367918831388

namespace A002690

/-- `floor((n+1)*(4-2/n)*a(n-1))` -/
def P9493659367918831388.Spec : Prop :=
  ∀ n, P9493659367918831388.a n = A002690 n

end A002690

/-! ## A002690.P594861873837397692

`∏[lcm(2, 1-2*n)]/2+(4*n-2)*a(n-1)` with `a(0)=1`
-/

namespace A002690.P594861873837397692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (2 * n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 + ((4 * n : ℤ) - 2 : ℚ) * a (n - 1)

end

end A002690.P594861873837397692

namespace A002690

/-- `∏[lcm(2, 1-2*n)]/2+(4*n-2)*a(n-1)` -/
def P594861873837397692.Spec : Prop :=
  ∀ n, P594861873837397692.a n = (A002690 n : ℚ)

end A002690

/-! ## A002690.P16406937315705228838

`lcm(2^n, ∏[1-2*n])+(4*n-2)*a(n-1)` with `a(0)=1`
-/

namespace A002690.P16406937315705228838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (2 ^ n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) + ((4 * n : ℤ) - 2) * a (n - 1)

end

end A002690.P16406937315705228838

namespace A002690

/-- `lcm(2^n, ∏[1-2*n])+(4*n-2)*a(n-1)` -/
def P16406937315705228838.Spec : Prop :=
  ∀ n, P16406937315705228838.a n = A002690 n

end A002690

/-!
# A002691: a(n) = (n+2) * (2n+1) * (2n-1)! / (n-1)!.

The programs for A002691, there is no canonical definition to state claims against.
-/

/-! ## A002691.P9683626645517531525

`(n+2)*∏[4*n+2]/4`
-/

namespace A002691.P9683626645517531525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4)

end

end A002691.P9683626645517531525

/-! ## A002691.P13992366640241056451

`(n+2)!*C(2*n+1, n)/2`
-/

namespace A002691.P13992366640241056451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) * Nat.choose (2 * n + 1) n : ℚ) / 2

end

end A002691.P13992366640241056451

/-! ## A002691.P1642313131479887396

`A370706(∑[n+3])`
-/

namespace A002691.P1642313131479887396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370706 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002691.P1642313131479887396

/-! ## A002691.P9535145896157918250

`A002690(n+1)/4`
-/

namespace A002691.P9535145896157918250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002690 (n + 1) : ℚ) / 4

end

end A002691.P9535145896157918250

/-! ## A002691.P17252580245568946398

`(n+2)*A292219(∑[n])/2`
-/

namespace A002691.P17252580245568946398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A292219 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A002691.P17252580245568946398

/-! ## A002691.P3069374138863051042

`A000108(n+1)*Δ[(n+2)!]/4`
-/

namespace A002691.P3069374138863051042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 4

end

end A002691.P3069374138863051042

/-! ## A002691.P12037140140737972789

`record[A038455(n+1)*A080036(n)]`
-/

namespace A002691.P12037140140737972789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038455 (n + 1) * A080036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002691.P12037140140737972789

/-! ## A002691.P12562264684692984378

`record[A038455(n+1)*A038722(n+1)]`
-/

namespace A002691.P12562264684692984378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038455 (n + 1) * A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002691.P12562264684692984378

/-!
# A002694: Binomial coefficients C(2n, n-2).

The programs for A002694, the canonical program `A002694.P4701693230279570942` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002694 has offset 2).

The definition of A002694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+2), n)` (program `A002694.P4701693230279570942`, by `A002694.P4701693230279570942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002694.P453175899185292264

`∑{#}[n+2, C(n+2, #)*C(n+2, #+2)]`
-/

namespace A002694.P453175899185292264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 2) k * Nat.choose (n + 2) (k + 2)

end

end A002694.P453175899185292264

namespace A002694

/-- `∑{#}[n+2, C(n+2, #)*C(n+2, #+2)]` -/
def P453175899185292264.Spec : Prop :=
  ∀ n, (P453175899185292264.a n : ℤ) = A002694 (n + 2)

end A002694

/-! ## A002694.P8500570593817255938

`A002054(n+1)*2*(n+2)/(n+4)`
-/

namespace A002694.P8500570593817255938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002054 (n + 1) * 2 * (n + 2 : ℤ) : ℚ) / (n + 4 : ℚ)

end

end A002694.P8500570593817255938

namespace A002694

/-- `A002054(n+1)*2*(n+2)/(n+4)` -/
def P8500570593817255938.Spec : Prop :=
  ∀ n, P8500570593817255938.a n = (A002694 (n + 2) : ℚ)

end A002694

/-! ## A002694.P4701693230279570942

`C(2*(n+2), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002694

/-- `C(2*(n+2), n)` -/
def P4701693230279570942.Spec : Prop :=
  ∀ n, (P4701693230279570942.a n : ℤ) = A002694 (n + 2)

theorem P4701693230279570942.correct : P4701693230279570942.Spec := by
  intro n
  simp only [A002694, Nat.add_sub_cancel]

end A002694

/-! ## A002694.P15174132517168904707

`Δ[A371964(n+3)]`
-/

namespace A002694.P15174132517168904707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371964 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002694.P15174132517168904707

namespace A002694

/-- `Δ[A371964(n+3)]` -/
def P15174132517168904707.Spec : Prop :=
  ∀ n, P15174132517168904707.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P16266759865815918611

`A037951(2*(n+2))`
-/

namespace A002694.P16266759865815918611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (2 * (n + 2))

end

end A002694.P16266759865815918611

namespace A002694

/-- `A037951(2*(n+2))` -/
def P16266759865815918611.Spec : Prop :=
  ∀ n, P16266759865815918611.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P16467672953653127437

`A037956(2*(n+2))`
-/

namespace A002694.P16467672953653127437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 (2 * (n + 2))

end

end A002694.P16467672953653127437

namespace A002694

/-- `A037956(2*(n+2))` -/
def P16467672953653127437.Spec : Prop :=
  ∀ n, P16467672953653127437.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P12935530485127368504

`A048060(2*(n+2))+1`
-/

namespace A002694.P12935530485127368504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048060 (2 * (n + 2)) + 1

end

end A002694.P12935530485127368504

namespace A002694

/-- `A048060(2*(n+2))+1` -/
def P12935530485127368504.Spec : Prop :=
  ∀ n, P12935530485127368504.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P2188630337827043421

`(n+2)/2*A002057(n)`
-/

namespace A002694.P2188630337827043421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A002057 n : ℚ)

end

end A002694.P2188630337827043421

namespace A002694

/-- `(n+2)/2*A002057(n)` -/
def P2188630337827043421.Spec : Prop :=
  ∀ n, P2188630337827043421.a n = (A002694 (n + 2) : ℚ)

end A002694

/-! ## A002694.P14752614512095954014

`(n+1)/3*Δ[A000108(n+2)]`
-/

namespace A002694.P14752614512095954014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (f1 (n + 1) - f1 n : ℚ)

end

end A002694.P14752614512095954014

namespace A002694

/-- `(n+1)/3*Δ[A000108(n+2)]` -/
def P14752614512095954014.Spec : Prop :=
  ∀ n, P14752614512095954014.a n = (A002694 (n + 2) : ℚ)

end A002694

/-! ## A002694.P8960128321034247960

`∑[A007946(n)-A002057(n)]`
-/

namespace A002694.P8960128321034247960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007946 n - A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002694.P8960128321034247960

namespace A002694

/-- `∑[A007946(n)-A002057(n)]` -/
def P8960128321034247960.Spec : Prop :=
  ∀ n, P8960128321034247960.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P17893995019287457906

`A024483(n+3)-A002057(n)`
-/

namespace A002694.P17893995019287457906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024483 (n + 3) - A002057 n

end

end A002694.P17893995019287457906

namespace A002694

/-- `A024483(n+3)-A002057(n)` -/
def P17893995019287457906.Spec : Prop :=
  ∀ n, P17893995019287457906.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P5331634138820523971

`2*A172061(n)-A172025(n)`
-/

namespace A002694.P5331634138820523971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172061 n - A172025 n

end

end A002694.P5331634138820523971

namespace A002694

/-- `2*A172061(n)-A172025(n)` -/
def P5331634138820523971.Spec : Prop :=
  ∀ n, P5331634138820523971.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P13163972742866740582

`A038665(n+1)-A005807(n+2)`
-/

namespace A002694.P13163972742866740582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038665 (n + 1) - A005807 (n + 2)

end

end A002694.P13163972742866740582

namespace A002694

/-- `A038665(n+1)-A005807(n+2)` -/
def P13163972742866740582.Spec : Prop :=
  ∀ n, P13163972742866740582.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P4850005898072626019

`A265610(n+2)-A002054(n+1)`
-/

namespace A002694.P4850005898072626019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265610 (n + 2) - A002054 (n + 1)

end

end A002694.P4850005898072626019

namespace A002694

/-- `A265610(n+2)-A002054(n+1)` -/
def P4850005898072626019.Spec : Prop :=
  ∀ n, P4850005898072626019.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P1212938995326963188

`A001791(n+2)-A000245(n+2)`
-/

namespace A002694.P1212938995326963188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 2) - A000245 (n + 2)

end

end A002694.P1212938995326963188

namespace A002694

/-- `A001791(n+2)-A000245(n+2)` -/
def P1212938995326963188.Spec : Prop :=
  ∀ n, P1212938995326963188.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P13177803381530563282

`A001791(n+2)-A071724(n+2)`
-/

namespace A002694.P13177803381530563282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 2) - A071724 (n + 2)

end

end A002694.P13177803381530563282

namespace A002694

/-- `A001791(n+2)-A071724(n+2)` -/
def P13177803381530563282.Spec : Prop :=
  ∀ n, P13177803381530563282.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P7203733394700106369

`A344191(n+2)-A000108(n+2)`
-/

namespace A002694.P7203733394700106369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344191 (n + 2) - A000108 (n + 2)

end

end A002694.P7203733394700106369

namespace A002694

/-- `A344191(n+2)-A000108(n+2)` -/
def P7203733394700106369.Spec : Prop :=
  ∀ n, P7203733394700106369.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P8761476405803092785

`2*A002054(n+1)-A002057(n)`
-/

namespace A002694.P8761476405803092785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002054 (n + 1) - A002057 n

end

end A002694.P8761476405803092785

namespace A002694

/-- `2*A002054(n+1)-A002057(n)` -/
def P8761476405803092785.Spec : Prop :=
  ∀ n, P8761476405803092785.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P15236067663865652353

`A037955(2*n+3)+A037953(2*n+3)`
-/

namespace A002694.P15236067663865652353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n + 3) + A037953 (2 * n + 3)

end

end A002694.P15236067663865652353

namespace A002694

/-- `A037955(2*n+3)+A037953(2*n+3)` -/
def P15236067663865652353.Spec : Prop :=
  ∀ n, P15236067663865652353.a n = A002694 (n + 2)

end A002694

/-! ## A002694.P14127437427754543976

`(n+3)*A000108(n+2)-A000108(n+3)`
-/

namespace A002694.P14127437427754543976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000108 (n + 2) - A000108 (n + 3)

end

end A002694.P14127437427754543976

namespace A002694

/-- `(n+3)*A000108(n+2)-A000108(n+3)` -/
def P14127437427754543976.Spec : Prop :=
  ∀ n, P14127437427754543976.a n = A002694 (n + 2)

end A002694

/-!
# A002695: P_n'(3), where P_n is n-th Legendre polynomial.

The programs for A002695, the canonical program `A002695.P1761537967106017533` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002695 has offset 1).

The definition of A002695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002695.P14372599227171599886

`∑{#}[n, (#+1)*C(n+1+#+1, #+1)*C(n+1, #+1)/2]`
-/

namespace A002695.P14372599227171599886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k + 1) * Nat.choose (n + 1 + (k + 1)) (k + 1) * Nat.choose (n + 1) (k + 1) : ℚ) / 2

end

end A002695.P14372599227171599886

namespace A002695

/-- `∑{#}[n, (#+1)*C(n+1+#+1, #+1)*C(n+1, #+1)/2]` -/
def P14372599227171599886.Spec : Prop :=
  ∀ n, P14372599227171599886.a n = (A002695 (n + 1) : ℚ)

end A002695

/-! ## A002695.P1761537967106017533

`(n+2)*(n+1)*A001003(n+1)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002695

/-- `(n+2)*(n+1)*A001003(n+1)/2` -/
def P1761537967106017533.Spec : Prop :=
  ∀ n, P1761537967106017533.a n = (A002695 (n + 1) : ℚ)

end A002695

/-! ## A002695.P2491459633188973509

`∑[A108666(n+1)]`
-/

namespace A002695.P2491459633188973509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002695.P2491459633188973509

namespace A002695

/-- `∑[A108666(n+1)]` -/
def P2491459633188973509.Spec : Prop :=
  ∀ n, P2491459633188973509.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P8153573945040005472

`∑[∑[∑[A377198(n)]]]`
-/

namespace A002695.P8153573945040005472
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002695.P8153573945040005472

namespace A002695

/-- `∑[∑[∑[A377198(n)]]]` -/
def P8153573945040005472.Spec : Prop :=
  ∀ n, P8153573945040005472.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P6866833218562437376

`∑[n+1]*A001003(n+1)`
-/

namespace A002695.P6866833218562437376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001003 (n + 1)

end

end A002695.P6866833218562437376

namespace A002695

/-- `∑[n+1]*A001003(n+1)` -/
def P6866833218562437376.Spec : Prop :=
  ∀ n, P6866833218562437376.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P15806284021170106150

`∑[(n+1)*A047781(n+1)]`
-/

namespace A002695.P15806284021170106150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002695.P15806284021170106150

namespace A002695

/-- `∑[(n+1)*A047781(n+1)]` -/
def P15806284021170106150.Spec : Prop :=
  ∀ n, P15806284021170106150.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P13216452888735178743

`(n+1)/2*A176479(n+1)`
-/

namespace A002695.P13216452888735178743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A176479 (n + 1) : ℚ)

end

end A002695.P13216452888735178743

namespace A002695

/-- `(n+1)/2*A176479(n+1)` -/
def P13216452888735178743.Spec : Prop :=
  ∀ n, P13216452888735178743.a n = (A002695 (n + 1) : ℚ)

end A002695

/-! ## A002695.P11995290243226774541

`abs(∑[n+1]*A080243(n+1))`
-/

namespace A002695.P11995290243226774541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A080243 (n + 1)|

end

end A002695.P11995290243226774541

namespace A002695

/-- `abs(∑[n+1]*A080243(n+1))` -/
def P11995290243226774541.Spec : Prop :=
  ∀ n, P11995290243226774541.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P4243935665608140170

`∑[(n+1)*A247623(2*n+1)]`
-/

namespace A002695.P4243935665608140170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A247623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002695.P4243935665608140170

namespace A002695

/-- `∑[(n+1)*A247623(2*n+1)]` -/
def P4243935665608140170.Spec : Prop :=
  ∀ n, P4243935665608140170.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P2398555934932393887

`∑[A109984(n)+A001850(n)]`
-/

namespace A002695.P2398555934932393887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109984 n + A001850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002695.P2398555934932393887

namespace A002695

/-- `∑[A109984(n)+A001850(n)]` -/
def P2398555934932393887.Spec : Prop :=
  ∀ n, P2398555934932393887.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P14755065103149686487

`A277652(n+1)+A035029(n)`
-/

namespace A002695.P14755065103149686487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277652 (n + 1) + A035029 n

end

end A002695.P14755065103149686487

namespace A002695

/-- `A277652(n+1)+A035029(n)` -/
def P14755065103149686487.Spec : Prop :=
  ∀ n, P14755065103149686487.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P13105081317832281547

`A035029(n)+n*A089382(n)`
-/

namespace A002695.P13105081317832281547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035029 n + (n : ℤ) * A089382 n

end

end A002695.P13105081317832281547

namespace A002695

/-- `A035029(n)+n*A089382(n)` -/
def P13105081317832281547.Spec : Prop :=
  ∀ n, P13105081317832281547.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P6743612752900560552

`A000217(n+1)/2*A006318(n+1)`
-/

namespace A002695.P6743612752900560552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / 2 * (A006318 (n + 1) : ℚ)

end

end A002695.P6743612752900560552

namespace A002695

/-- `A000217(n+1)/2*A006318(n+1)` -/
def P6743612752900560552.Spec : Prop :=
  ∀ n, P6743612752900560552.a n = (A002695 (n + 1) : ℚ)

end A002695

/-! ## A002695.P12111766886541824166

`A001003(n+1)*A038722(A000124(n))`
-/

namespace A002695.P12111766886541824166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (n + 1) * A038722 (A000124 n).toNat

end

end A002695.P12111766886541824166

namespace A002695

/-- `A001003(n+1)*A038722(A000124(n))` -/
def P12111766886541824166.Spec : Prop :=
  ∀ n, P12111766886541824166.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P18241773953209645809

`A000217(n+1)*A110440(A000217(n))`
-/

namespace A002695.P18241773953209645809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A110440 (A000217 n).toNat

end

end A002695.P18241773953209645809

namespace A002695

/-- `A000217(n+1)*A110440(A000217(n))` -/
def P18241773953209645809.Spec : Prop :=
  ∀ n, P18241773953209645809.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P1702533901651117545

`A001003(n+1)*A001263(A000096(n+1))`
-/

namespace A002695.P1702533901651117545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (n + 1) * A001263 (A000096 (n + 1)).toNat

end

end A002695.P1702533901651117545

namespace A002695

/-- `A001003(n+1)*A001263(A000096(n+1))` -/
def P1702533901651117545.Spec : Prop :=
  ∀ n, P1702533901651117545.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P4662640669882509520

`A001003(n+1)/A025235(n)*A374487(n)`
-/

namespace A002695.P4662640669882509520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 1) : ℚ) / (A025235 n : ℚ) * (A374487 n : ℚ)

end

end A002695.P4662640669882509520

namespace A002695

/-- `A001003(n+1)/A025235(n)*A374487(n)` -/
def P4662640669882509520.Spec : Prop :=
  ∀ n, P4662640669882509520.a n = (A002695 (n + 1) : ℚ)

end A002695

/-! ## A002695.P248088533762272924

`A001003(n+1)/A071356(n)*A374497(n)`
-/

namespace A002695.P248088533762272924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 1) : ℚ) / (A071356 n : ℚ) * (A374497 n : ℚ)

end

end A002695.P248088533762272924

namespace A002695

/-- `A001003(n+1)/A071356(n)*A374497(n)` -/
def P248088533762272924.Spec : Prop :=
  ∀ n, P248088533762272924.a n = (A002695 (n + 1) : ℚ)

end A002695

/-! ## A002695.P5310005230563518698

`A001003(n+1)+A000096(n)*A001003(n+1)`
-/

namespace A002695.P5310005230563518698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (n + 1) + A000096 n * A001003 (n + 1)

end

end A002695.P5310005230563518698

namespace A002695

/-- `A001003(n+1)+A000096(n)*A001003(n+1)` -/
def P5310005230563518698.Spec : Prop :=
  ∀ n, P5310005230563518698.a n = A002695 (n + 1)

end A002695

/-! ## A002695.P2800473890530987872

`A006318(n+1)/A014431(n+2)*A374487(n)`
-/

namespace A002695.P2800473890530987872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 (n + 1) : ℚ) / (A014431 (n + 2) : ℚ) * (A374487 n : ℚ)

end

end A002695.P2800473890530987872

namespace A002695

/-- `A006318(n+1)/A014431(n+2)*A374487(n)` -/
def P2800473890530987872.Spec : Prop :=
  ∀ n, P2800473890530987872.a n = (A002695 (n + 1) : ℚ)

end A002695

/-!
# A002696: Binomial coefficients C(2n,n-3).

The programs for A002696, the canonical program `A002696.P13626081867527226002` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002696 has offset 3).

The definition of A002696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+3), n)` (program `A002696.P13626081867527226002`, by `A002696.P13626081867527226002.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002696.P4087641212839576552

`∑{#}[n+3, C(n+3, #)*C(n+3, #+3)]`
-/

namespace A002696.P4087641212839576552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 3) k * Nat.choose (n + 3) (k + 3)

end

end A002696.P4087641212839576552

namespace A002696

/-- `∑{#}[n+3, C(n+3, #)*C(n+3, #+3)]` -/
def P4087641212839576552.Spec : Prop :=
  ∀ n, (P4087641212839576552.a n : ℤ) = A002696 (n + 3)

end A002696

/-! ## A002696.P13626081867527226002

`C(2*(n+3), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002696

/-- `C(2*(n+3), n)` -/
def P13626081867527226002.Spec : Prop :=
  ∀ n, (P13626081867527226002.a n : ℤ) = A002696 (n + 3)

theorem P13626081867527226002.correct : P13626081867527226002.Spec := by
  intro n
  simp only [A002696, Nat.add_sub_cancel]

end A002696

/-! ## A002696.P13478386686152401407

`A037953(2*(n+3))`
-/

namespace A002696.P13478386686152401407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (2 * (n + 3))

end

end A002696.P13478386686152401407

namespace A002696

/-- `A037953(2*(n+3))` -/
def P13478386686152401407.Spec : Prop :=
  ∀ n, P13478386686152401407.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P5863173374308148193

`A037957(2*(n+3))`
-/

namespace A002696.P5863173374308148193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (2 * (n + 3))

end

end A002696.P5863173374308148193

namespace A002696

/-- `A037957(2*(n+3))` -/
def P5863173374308148193.Spec : Prop :=
  ∀ n, P5863173374308148193.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P1416438672007112704

`(n+3)/3*A003517(n+2)`
-/

namespace A002696.P1416438672007112704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A003517 (n + 2) : ℚ)

end

end A002696.P1416438672007112704

namespace A002696

/-- `(n+3)/3*A003517(n+2)` -/
def P1416438672007112704.Spec : Prop :=
  ∀ n, P1416438672007112704.a n = (A002696 (n + 3) : ℚ)

end A002696

/-! ## A002696.P4278830591262391282

`record[or(A037957(n), A210628(n))]`
-/

namespace A002696.P4278830591262391282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037957 n) (A210628 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002696.P4278830591262391282

namespace A002696

/-- `record[or(A037957(n), A210628(n))]` -/
def P4278830591262391282.Spec : Prop :=
  ∀ n, P4278830591262391282.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P13740827135238158116

`2*A172063(n)-A172062(n)`
-/

namespace A002696.P13740827135238158116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172063 n - A172062 n

end

end A002696.P13740827135238158116

namespace A002696

/-- `2*A172063(n)-A172062(n)` -/
def P13740827135238158116.Spec : Prop :=
  ∀ n, P13740827135238158116.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P17286814039870001625

`A001791(n+3)-A002057(n+2)`
-/

namespace A002696.P17286814039870001625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 3) - A002057 (n + 2)

end

end A002696.P17286814039870001625

namespace A002696

/-- `A001791(n+3)-A002057(n+2)` -/
def P17286814039870001625.Spec : Prop :=
  ∀ n, P17286814039870001625.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P7073698362102423147

`A002058(n+5)-A003517(n+2)`
-/

namespace A002696.P7073698362102423147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002058 (n + 5) - A003517 (n + 2)

end

end A002696.P7073698362102423147

namespace A002696

/-- `A002058(n+5)-A003517(n+2)` -/
def P7073698362102423147.Spec : Prop :=
  ∀ n, P7073698362102423147.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P15151839789359807202

`A003516(n+3)-A002694(n+3)`
-/

namespace A002696.P15151839789359807202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003516 (n + 3) - A002694 (n + 3)

end

end A002696.P15151839789359807202

namespace A002696

/-- `A003516(n+3)-A002694(n+3)` -/
def P15151839789359807202.Spec : Prop :=
  ∀ n, P15151839789359807202.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P4385177277119595687

`A006659(n+2)/2-A000344(n+3)`
-/

namespace A002696.P4385177277119595687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006659 (n + 2) : ℚ) / 2 - (A000344 (n + 3) : ℚ)

end

end A002696.P4385177277119595687

namespace A002696

/-- `A006659(n+2)/2-A000344(n+3)` -/
def P4385177277119595687.Spec : Prop :=
  ∀ n, P4385177277119595687.a n = (A002696 (n + 3) : ℚ)

end A002696

/-! ## A002696.P9192673834216976933

`A003516(n+3)-A006659(n+2)/2`
-/

namespace A002696.P9192673834216976933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003516 (n + 3) : ℚ) - (A006659 (n + 2) : ℚ) / 2

end

end A002696.P9192673834216976933

namespace A002696

/-- `A003516(n+3)-A006659(n+2)/2` -/
def P9192673834216976933.Spec : Prop :=
  ∀ n, P9192673834216976933.a n = (A002696 (n + 3) : ℚ)

end A002696

/-! ## A002696.P3325286671090652008

`(A003516(n+3)-A000344(n+3))/2`
-/

namespace A002696.P3325286671090652008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003516 (n + 3) - A000344 (n + 3) : ℚ) / 2

end

end A002696.P3325286671090652008

namespace A002696

/-- `(A003516(n+3)-A000344(n+3))/2` -/
def P3325286671090652008.Spec : Prop :=
  ∀ n, P3325286671090652008.a n = (A002696 (n + 3) : ℚ)

end A002696

/-! ## A002696.P16241651799535828398

`(A002058(n+6)-A006659(n+2))/2`
-/

namespace A002696.P16241651799535828398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002058 (n + 6) - A006659 (n + 2) : ℚ) / 2

end

end A002696.P16241651799535828398

namespace A002696

/-- `(A002058(n+6)-A006659(n+2))/2` -/
def P16241651799535828398.Spec : Prop :=
  ∀ n, P16241651799535828398.a n = (A002696 (n + 3) : ℚ)

end A002696

/-! ## A002696.P4495638933828649127

`A003516(n+3)-(A003516(n+2)+A002054(n+2))`
-/

namespace A002696.P4495638933828649127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003516 (n + 3) - (A003516 (n + 2) + A002054 (n + 2))

end

end A002696.P4495638933828649127

namespace A002696

/-- `A003516(n+3)-(A003516(n+2)+A002054(n+2))` -/
def P4495638933828649127.Spec : Prop :=
  ∀ n, P4495638933828649127.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P15728523815360799631

`A034870((n+3)²+n)`
-/

namespace A002696.P15728523815360799631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 ((n + 3) ^ 2 + n)

end

end A002696.P15728523815360799631

namespace A002696

/-- `A034870((n+3)²+n)` -/
def P15728523815360799631.Spec : Prop :=
  ∀ n, P15728523815360799631.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P11408018478715359756

`A159965(∑[n+2]+3)`
-/

namespace A002696.P11408018478715359756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A002696.P11408018478715359756

namespace A002696

/-- `A159965(∑[n+2]+3)` -/
def P11408018478715359756.Spec : Prop :=
  ∀ n, P11408018478715359756.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P471432718051327867

`A193635(∑[n+3])`
-/

namespace A002696.P471432718051327867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002696.P471432718051327867

namespace A002696

/-- `A193635(∑[n+3])` -/
def P471432718051327867.Spec : Prop :=
  ∀ n, P471432718051327867.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P12592050507415954179

`A329959((n+3)²-∑[n+1])`
-/

namespace A002696.P12592050507415954179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329959 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002696.P12592050507415954179

namespace A002696

/-- `A329959((n+3)²-∑[n+1])` -/
def P12592050507415954179.Spec : Prop :=
  ∀ n, P12592050507415954179.a n = A002696 (n + 3)

end A002696

/-! ## A002696.P1377400441312398723

`A094527(A167614(n+2))`
-/

namespace A002696.P1377400441312398723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (A167614 (n + 2)).toNat

end

end A002696.P1377400441312398723

namespace A002696

/-- `A094527(A167614(n+2))` -/
def P1377400441312398723.Spec : Prop :=
  ∀ n, P1377400441312398723.a n = A002696 (n + 3)

end A002696

/-!
# A002697: a(n) = n*4^(n-1).

The programs for A002697, the canonical program `A002697.P1935225976950990343` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002697 has offset 0).

The definition of A002697 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*4^(n-1)` (program `A002697.P3703142366738485904`, by `A002697.P3703142366738485904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002697.P3703142366738485904

`n*4^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002697.P3703142366738485904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A002697.P3703142366738485904

namespace A002697

/-- `n*4^(n-1)` -/
def P3703142366738485904.Spec : Prop :=
  ∀ n, P3703142366738485904.a n = (A002697 n : ℚ)

theorem P3703142366738485904.correct : P3703142366738485904.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002697, Nat.add_sub_cancel, A002697.P3703142366738485904.a, A002697.P1935225976950990343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002697, Nat.add_sub_cancel, A002697.P3703142366738485904.a, A002697.P1935225976950990343.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A002697

/-! ## A002697.P6965686033713898346

`ogf(x/(1-8x+16x^2))`
-/

namespace A002697.P6965686033713898346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, 16] n

end

end A002697.P6965686033713898346

namespace A002697

/-- `ogf(x/(1-8x+16x^2))` -/
def P6965686033713898346.Spec : Prop :=
  ∀ n, P6965686033713898346.a n = A002697 n

end A002697

/-! ## A002697.P1935225976950990343

`8*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002697

/-- `8*a(n-1)-16*a(n-2)` -/
def P1935225976950990343.Spec : Prop :=
  ∀ n, P1935225976950990343.a n = A002697 n

theorem P1935225976950990343.correct : P1935225976950990343.Spec := by
  intro n
  simp only [A002697]

end A002697

/-! ## A002697.P4045034411681957114

`A002699(n)/2`
-/

namespace A002697.P4045034411681957114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002699 n : ℚ) / 2

end

end A002697.P4045034411681957114

namespace A002697

/-- `A002699(n)/2` -/
def P4045034411681957114.Spec : Prop :=
  ∀ n, P4045034411681957114.a n = (A002697 n : ℚ)

end A002697

/-! ## A002697.P18029955468206936482

`∑{#}[n, #*C(2*n, 2*#)]`
-/

namespace A002697.P18029955468206936482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), k * Nat.choose (2 * n) (2 * k)

end

end A002697.P18029955468206936482

namespace A002697

/-- `∑{#}[n, #*C(2*n, 2*#)]` -/
def P18029955468206936482.Spec : Prop :=
  ∀ n, (P18029955468206936482.a n : ℤ) = A002697 n

end A002697

/-! ## A002697.P16016465022484051181

`abs(n*∑[4*a(n-1)])` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A002697.P16016465022484051181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002697.P16016465022484051181

namespace A002697

/-- `abs(n*∑[4*a(n-1)])` -/
def P16016465022484051181.Spec : Prop :=
  ∀ n, (P16016465022484051181.a n : ℤ) = A002697 n

end A002697

/-! ## A002697.P8650039315229994325

`floor(n*∑[4*a(n-1)])` with `a(0)=0, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A002697.P8650039315229994325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002697.P8650039315229994325

namespace A002697

/-- `floor(n*∑[4*a(n-1)])` -/
def P8650039315229994325.Spec : Prop :=
  ∀ n, (P8650039315229994325.a n : ℤ) = A002697 n

end A002697

/-! ## A002697.P16816946871409766781

`ceil(n*∑[4*a(n-1)])` with `a(0)=0, a(1)=1, a(2)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A002697.P16816946871409766781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002697.P16816946871409766781

namespace A002697

/-- `ceil(n*∑[4*a(n-1)])` -/
def P16816946871409766781.Spec : Prop :=
  ∀ n, (P16816946871409766781.a n : ℤ) = A002697 n

end A002697

/-! ## A002697.P3636874085820781418

`4*a(n-1)/(1-1/n)` with `a(0)=0, a(1)=1`
-/

namespace A002697.P3636874085820781418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 1) / (1 - 1 / (n : ℚ))

end

end A002697.P3636874085820781418

namespace A002697

/-- `4*a(n-1)/(1-1/n)` -/
def P3636874085820781418.Spec : Prop :=
  ∀ n, P3636874085820781418.a n = (A002697 n : ℚ)

end A002697

/-! ## A002697.P14117801031128595823

`record[A235789(n)]`
-/

namespace A002697.P14117801031128595823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002697.P14117801031128595823

namespace A002697

/-- `record[A235789(n)]` -/
def P14117801031128595823.Spec : Prop :=
  ∀ n, P14117801031128595823.a n = A002697 n

end A002697

/-! ## A002697.P2921432769287031812

`A049610(2*n)`
-/

namespace A002697.P2921432769287031812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n)

end

end A002697.P2921432769287031812

namespace A002697

/-- `A049610(2*n)` -/
def P2921432769287031812.Spec : Prop :=
  ∀ n, P2921432769287031812.a n = A002697 n

end A002697

/-! ## A002697.P12666459982855063240

`record[-A168150(n)]`
-/

namespace A002697.P12666459982855063240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002697.P12666459982855063240

namespace A002697

/-- `record[-A168150(n)]` -/
def P12666459982855063240.Spec : Prop :=
  ∀ n, P12666459982855063240.a n = A002697 n

end A002697

/-! ## A002697.P10871655039575997906

`abs(A168150(2*n))`
-/

namespace A002697.P10871655039575997906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168150 (2 * n)|

end

end A002697.P10871655039575997906

namespace A002697

/-- `abs(A168150(2*n))` -/
def P10871655039575997906.Spec : Prop :=
  ∀ n, P10871655039575997906.a n = A002697 n

end A002697

/-! ## A002697.P4383333124378386931

`∑{d}[n, n*A295505(#)]`
-/

namespace A002697.P4383333124378386931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A295505 d

end

end A002697.P4383333124378386931

namespace A002697

/-- `∑{d}[n, n*A295505(#)]` -/
def P4383333124378386931.Spec : Prop :=
  ∀ n, P4383333124378386931.a n = A002697 n

end A002697

/-! ## A002697.P6268866777733867214

`abs(n/2*A009117(n))`
-/

namespace A002697.P6268866777733867214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 2 * (A009117 n : ℚ)|

end

end A002697.P6268866777733867214

namespace A002697

/-- `abs(n/2*A009117(n))` -/
def P6268866777733867214.Spec : Prop :=
  ∀ n, P6268866777733867214.a n = (A002697 n : ℚ)

end A002697

/-! ## A002697.P14299992579409531034

`∑{#}[n, C(n, #)*A027471(#+1)]`
-/

namespace A002697.P14299992579409531034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A027471 (k + 1)

end

end A002697.P14299992579409531034

namespace A002697

/-- `∑{#}[n, C(n, #)*A027471(#+1)]` -/
def P14299992579409531034.Spec : Prop :=
  ∀ n, P14299992579409531034.a n = A002697 n

end A002697

/-! ## A002697.P3647039445232898489

`A336102(A113127(n))`
-/

namespace A002697.P3647039445232898489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A113127 n).toNat

end

end A002697.P3647039445232898489

namespace A002697

/-- `A336102(A113127(n))` -/
def P3647039445232898489.Spec : Prop :=
  ∀ n, P3647039445232898489.a n = A002697 n

end A002697

/-! ## A002697.P12935819738720232200

`A336102(A130824(n))`
-/

namespace A002697.P12935819738720232200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A130824 n).toNat

end

end A002697.P12935819738720232200

namespace A002697

/-- `A336102(A130824(n))` -/
def P12935819738720232200.Spec : Prop :=
  ∀ n, P12935819738720232200.a n = A002697 n

end A002697

/-! ## A002697.P14372786577132460270

`A336102(A111284(n+1))`
-/

namespace A002697.P14372786577132460270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A111284 (n + 1)).toNat

end

end A002697.P14372786577132460270

namespace A002697

/-- `A336102(A111284(n+1))` -/
def P14372786577132460270.Spec : Prop :=
  ∀ n, P14372786577132460270.a n = A002697 n

end A002697

/-! ## A002697.P18051891268867915735

`A336102(A131098(n+1))`
-/

namespace A002697.P18051891268867915735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A131098 (n + 1)).toNat

end

end A002697.P18051891268867915735

namespace A002697

/-- `A336102(A131098(n+1))` -/
def P18051891268867915735.Spec : Prop :=
  ∀ n, P18051891268867915735.a n = A002697 n

end A002697

/-!
# A002698: Coefficients of Chebyshev polynomials: n*(2*n-3)*2^(2*n-5).

The programs for A002698, the canonical program `A002698.P15893764331427218743` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002698 has offset 2).

The definition of A002698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002698.P15893764331427218743

`(n+2)*(2*(n+2)-3)*2^(2*(n+2)-5)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002698

/-- `(n+2)*(2*(n+2)-3)*2^(2*(n+2)-5)` -/
def P15893764331427218743.Spec : Prop :=
  ∀ n, P15893764331427218743.a n = (A002698 (n + 2) : ℚ)

end A002698

/-! ## A002698.P7341696915855277176

`record[(-2)^n/2*∑[n+2]]`
-/

namespace A002698.P7341696915855277176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-2) ^ n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002698.P7341696915855277176

namespace A002698

/-- `record[(-2)^n/2*∑[n+2]]` -/
def P7341696915855277176.Spec : Prop :=
  ∀ n, P7341696915855277176.a n = (A002698 (n + 2) : ℚ)

end A002698

/-! ## A002698.P4639900874598135504

`A001793(Δ[n²])`
-/

namespace A002698.P4639900874598135504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002698.P4639900874598135504

namespace A002698

/-- `A001793(Δ[n²])` -/
def P4639900874598135504.Spec : Prop :=
  ∀ n, P4639900874598135504.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P9212964446400072993

`∑{#}[2*n, A084851(#)]`
-/

namespace A002698.P9212964446400072993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A084851 k

end

end A002698.P9212964446400072993

namespace A002698

/-- `∑{#}[2*n, A084851(#)]` -/
def P9212964446400072993.Spec : Prop :=
  ∀ n, P9212964446400072993.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P10850405003577407912

`A176027(2*n)+4^n`
-/

namespace A002698.P10850405003577407912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 (2 * n) + (4 ^ n : ℤ)

end

end A002698.P10850405003577407912

namespace A002698

/-- `A176027(2*n)+4^n` -/
def P10850405003577407912.Spec : Prop :=
  ∀ n, P10850405003577407912.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P6703048342197728910

`lcm(2*n+1, A001793(2*n+1))`
-/

namespace A002698.P6703048342197728910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A001793 (2 * n + 1))

end

end A002698.P6703048342197728910

namespace A002698

/-- `lcm(2*n+1, A001793(2*n+1))` -/
def P6703048342197728910.Spec : Prop :=
  ∀ n, (P6703048342197728910.a n : ℤ) = A002698 (n + 2)

end A002698

/-! ## A002698.P17562080277418388576

`A002699(n)+A001787(n+1)²`
-/

namespace A002698.P17562080277418388576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 n + A001787 (n + 1) ^ 2

end

end A002698.P17562080277418388576

namespace A002698

/-- `A002699(n)+A001787(n+1)²` -/
def P17562080277418388576.Spec : Prop :=
  ∀ n, P17562080277418388576.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P1216540625470359647

`(A002700(n+1)-A000302(n))/2`
-/

namespace A002698.P1216540625470359647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002700 (n + 1) - A000302 n : ℚ) / 2

end

end A002698.P1216540625470359647

namespace A002698

/-- `(A002700(n+1)-A000302(n))/2` -/
def P1216540625470359647.Spec : Prop :=
  ∀ n, P1216540625470359647.a n = (A002698 (n + 2) : ℚ)

end A002698

/-! ## A002698.P10587931672936883207

`A053545(2*n)+A048474(2*n)`
-/

namespace A002698.P10587931672936883207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053545 (2 * n) + A048474 (2 * n)

end

end A002698.P10587931672936883207

namespace A002698

/-- `A053545(2*n)+A048474(2*n)` -/
def P10587931672936883207.Spec : Prop :=
  ∀ n, P10587931672936883207.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P11009820973101874563

`A087323(2*n)+A048506(2*n)`
-/

namespace A002698.P11009820973101874563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 (2 * n) + A048506 (2 * n)

end

end A002698.P11009820973101874563

namespace A002698

/-- `A087323(2*n)+A048506(2*n)` -/
def P11009820973101874563.Spec : Prop :=
  ∀ n, P11009820973101874563.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P4577272933185470805

`A178987(2*n)+A014480(2*n)`
-/

namespace A002698.P4577272933185470805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 (2 * n) + A014480 (2 * n)

end

end A002698.P4577272933185470805

namespace A002698

/-- `A178987(2*n)+A014480(2*n)` -/
def P4577272933185470805.Spec : Prop :=
  ∀ n, P4577272933185470805.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P5946117690159882231

`A084850(2*n)-A001815(2*n)`
-/

namespace A002698.P5946117690159882231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084850 (2 * n) - A001815 (2 * n)

end

end A002698.P5946117690159882231

namespace A002698

/-- `A084850(2*n)-A001815(2*n)` -/
def P5946117690159882231.Spec : Prop :=
  ∀ n, P5946117690159882231.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P16838888169146226825

`A057711(2*n)+A001787(n+1)²`
-/

namespace A002698.P16838888169146226825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (2 * n) + A001787 (n + 1) ^ 2

end

end A002698.P16838888169146226825

namespace A002698

/-- `A057711(2*n)+A001787(n+1)²` -/
def P16838888169146226825.Spec : Prop :=
  ∀ n, P16838888169146226825.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P4358499955280937657

`A185251(2*n)+A001787(n+1)²`
-/

namespace A002698.P4358499955280937657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185251 (2 * n) + A001787 (n + 1) ^ 2

end

end A002698.P4358499955280937657

namespace A002698

/-- `A185251(2*n)+A001787(n+1)²` -/
def P4358499955280937657.Spec : Prop :=
  ∀ n, P4358499955280937657.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P3867879190144409757

`A185252(2*n)+A001787(n+1)²`
-/

namespace A002698.P3867879190144409757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 (2 * n) + A001787 (n + 1) ^ 2

end

end A002698.P3867879190144409757

namespace A002698

/-- `A185252(2*n)+A001787(n+1)²` -/
def P3867879190144409757.Spec : Prop :=
  ∀ n, P3867879190144409757.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P6919309423453968292

`A001793(2*n+1)+A000007(n+1)`
-/

namespace A002698.P6919309423453968292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (2 * n + 1) + A000007 (n + 1)

end

end A002698.P6919309423453968292

namespace A002698

/-- `A001793(2*n+1)+A000007(n+1)` -/
def P6919309423453968292.Spec : Prop :=
  ∀ n, P6919309423453968292.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P340947080226732461

`A001788(2*n)+A001787(2*n+1)`
-/

namespace A002698.P340947080226732461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (2 * n) + A001787 (2 * n + 1)

end

end A002698.P340947080226732461

namespace A002698

/-- `A001788(2*n)+A001787(2*n+1)` -/
def P340947080226732461.Spec : Prop :=
  ∀ n, P340947080226732461.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P9868557363744322201

`A007466(2*n+1)+A001787(2*n)`
-/

namespace A002698.P9868557363744322201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (2 * n + 1) + A001787 (2 * n)

end

end A002698.P9868557363744322201

namespace A002698

/-- `A007466(2*n+1)+A001787(2*n)` -/
def P9868557363744322201.Spec : Prop :=
  ∀ n, P9868557363744322201.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P14410703025908307393

`A053220(2*n+1)+A001815(2*n)`
-/

namespace A002698.P14410703025908307393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (2 * n + 1) + A001815 (2 * n)

end

end A002698.P14410703025908307393

namespace A002698

/-- `A053220(2*n+1)+A001815(2*n)` -/
def P14410703025908307393.Spec : Prop :=
  ∀ n, P14410703025908307393.a n = A002698 (n + 2)

end A002698

/-! ## A002698.P14976672582747522816

`A104270(2*n+1)+A036289(2*n)`
-/

namespace A002698.P14976672582747522816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (2 * n + 1) + A036289 (2 * n)

end

end A002698.P14976672582747522816

namespace A002698

/-- `A104270(2*n+1)+A036289(2*n)` -/
def P14976672582747522816.Spec : Prop :=
  ∀ n, P14976672582747522816.a n = A002698 (n + 2)

end A002698

/-!
# A002699: a(n) = n*2^(2*n-1).

The programs for A002699, the canonical program `A002699.P18223606466481159600` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002699 has offset 0).

The definition of A002699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^(2*n-1)` (program `A002699.P8219072917935262833`, by `A002699.P8219072917935262833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002699.P2561178793133439529

`ogf(2x/(1-8x+16x^2))`
-/

namespace A002699.P2561178793133439529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -8, 16] n

end

end A002699.P2561178793133439529

namespace A002699

/-- `ogf(2x/(1-8x+16x^2))` -/
def P2561178793133439529.Spec : Prop :=
  ∀ n, P2561178793133439529.a n = A002699 n

end A002699

/-! ## A002699.P8219072917935262833

`n*2^(2*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002699.P8219072917935262833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)

end

end A002699.P8219072917935262833

namespace A002699

/-- `n*2^(2*n-1)` -/
def P8219072917935262833.Spec : Prop :=
  ∀ n, P8219072917935262833.a n = (A002699 n : ℚ)

theorem P8219072917935262833.correct : P8219072917935262833.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002699, Nat.add_sub_cancel, A002699.P8219072917935262833.a, A002699.P18223606466481159600.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002699, Nat.add_sub_cancel, A002699.P8219072917935262833.a, A002699.P18223606466481159600.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A002699

/-! ## A002699.P18223606466481159600

`8*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002699

/-- `8*a(n-1)-16*a(n-2)` -/
def P18223606466481159600.Spec : Prop :=
  ∀ n, P18223606466481159600.a n = A002699 n

theorem P18223606466481159600.correct : P18223606466481159600.Spec := by
  intro n
  simp only [A002699]

end A002699

/-! ## A002699.P7763326501247600741

`n*record[-(-2)^n]`
-/

namespace A002699.P7763326501247600741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-2) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002699.P7763326501247600741

namespace A002699

/-- `n*record[-(-2)^n]` -/
def P7763326501247600741.Spec : Prop :=
  ∀ n, P7763326501247600741.a n = A002699 n

end A002699

/-! ## A002699.P9064225124060274414

`n*∑[4*a(n-1)]/2` with `a(0)=1, a(1)=3`
-/

namespace A002699.P9064225124060274414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A002699.P9064225124060274414

namespace A002699

/-- `n*∑[4*a(n-1)]/2` -/
def P9064225124060274414.Spec : Prop :=
  ∀ n, P9064225124060274414.a n = (A002699 n : ℚ)

end A002699

/-! ## A002699.P197579796959694475

`4*a(n-1)/(1-1/n)` with `a(0)=0, a(1)=2`
-/

namespace A002699.P197579796959694475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * a (n - 1) / (1 - 1 / (n : ℚ))

end

end A002699.P197579796959694475

namespace A002699

/-- `4*a(n-1)/(1-1/n)` -/
def P197579796959694475.Spec : Prop :=
  ∀ n, P197579796959694475.a n = (A002699 n : ℚ)

end A002699

/-! ## A002699.P15125505939021646315

`A057711(2*n)`
-/

namespace A002699.P15125505939021646315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (2 * n)

end

end A002699.P15125505939021646315

namespace A002699

/-- `A057711(2*n)` -/
def P15125505939021646315.Spec : Prop :=
  ∀ n, P15125505939021646315.a n = A002699 n

end A002699

/-! ## A002699.P6638923366532766005

`A185251(2*n)`
-/

namespace A002699.P6638923366532766005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185251 (2 * n)

end

end A002699.P6638923366532766005

namespace A002699

/-- `A185251(2*n)` -/
def P6638923366532766005.Spec : Prop :=
  ∀ n, P6638923366532766005.a n = A002699 n

end A002699

/-! ## A002699.P8751618516662642886

`A185252(2*n)`
-/

namespace A002699.P8751618516662642886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 (2 * n)

end

end A002699.P8751618516662642886

namespace A002699

/-- `A185252(2*n)` -/
def P8751618516662642886.Spec : Prop :=
  ∀ n, P8751618516662642886.a n = A002699 n

end A002699

/-! ## A002699.P18443827882595044931

`A274497(2*n)`
-/

namespace A002699.P18443827882595044931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274497 (2 * n)

end

end A002699.P18443827882595044931

namespace A002699

/-- `A274497(2*n)` -/
def P18443827882595044931.Spec : Prop :=
  ∀ n, P18443827882595044931.a n = A002699 n

end A002699

/-! ## A002699.P11932904589624946078

`A018215(n)/2`
-/

namespace A002699.P11932904589624946078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018215 n : ℚ) / 2

end

end A002699.P11932904589624946078

namespace A002699

/-- `A018215(n)/2` -/
def P11932904589624946078.Spec : Prop :=
  ∀ n, P11932904589624946078.a n = (A002699 n : ℚ)

theorem P11932904589624946078.correct : P11932904589624946078.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002699, Nat.add_sub_cancel, A002699.P11932904589624946078.a, A002699.P18223606466481159600.a, A018215, A018215.P2890906494214168874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002699, Nat.add_sub_cancel, A002699.P11932904589624946078.a, A002699.P18223606466481159600.a, A018215, A018215.P2890906494214168874.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A002699

/-! ## A002699.P532627479946862667

`floor(A050915(n)/2)`
-/

namespace A002699.P532627479946862667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050915 n : ℚ) / 2⌋

end

end A002699.P532627479946862667

namespace A002699

/-- `floor(A050915(n)/2)` -/
def P532627479946862667.Spec : Prop :=
  ∀ n, P532627479946862667.a n = A002699 n

end A002699

/-! ## A002699.P4245662541998602409

`A229504(n+1)/3`
-/

namespace A002699.P4245662541998602409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229504 (n + 1) : ℚ) / 3

end

end A002699.P4245662541998602409

namespace A002699

/-- `A229504(n+1)/3` -/
def P4245662541998602409.Spec : Prop :=
  ∀ n, P4245662541998602409.a n = (A002699 n : ℚ)

end A002699

/-! ## A002699.P4037489642183418235

`A001787(2*n)/2`
-/

namespace A002699.P4037489642183418235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (2 * n) : ℚ) / 2

end

end A002699.P4037489642183418235

namespace A002699

/-- `A001787(2*n)/2` -/
def P4037489642183418235.Spec : Prop :=
  ∀ n, P4037489642183418235.a n = (A002699 n : ℚ)

end A002699

/-! ## A002699.P2213322275452530208

`A005985(2*n)/2`
-/

namespace A002699.P2213322275452530208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005985 (2 * n) : ℚ) / 2

end

end A002699.P2213322275452530208

namespace A002699

/-- `A005985(2*n)/2` -/
def P2213322275452530208.Spec : Prop :=
  ∀ n, P2213322275452530208.a n = (A002699 n : ℚ)

end A002699

/-! ## A002699.P5376387610662569467

`A229135(n)-2*n`
-/

namespace A002699.P5376387610662569467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229135 n - (2 * n : ℤ)

end

end A002699.P5376387610662569467

namespace A002699

/-- `A229135(n)-2*n` -/
def P5376387610662569467.Spec : Prop :=
  ∀ n, P5376387610662569467.a n = A002699 n

end A002699

/-! ## A002699.P12468069888021592407

`n*A000302(n)/2`
-/

namespace A002699.P12468069888021592407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000302 n : ℚ) / 2

end

end A002699.P12468069888021592407

namespace A002699

/-- `n*A000302(n)/2` -/
def P12468069888021592407.Spec : Prop :=
  ∀ n, P12468069888021592407.a n = (A002699 n : ℚ)

theorem P12468069888021592407.correct : P12468069888021592407.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002699, Nat.add_sub_cancel, A002699.P12468069888021592407.a, A002699.P18223606466481159600.a, A000302, A000302.P5166485833484575275.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002699, Nat.add_sub_cancel, A002699.P12468069888021592407.a, A002699.P18223606466481159600.a, A000302, A000302.P5166485833484575275.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A002699

/-! ## A002699.P2940114024656758693

`n*A164908(n)/3`
-/

namespace A002699.P2940114024656758693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A164908 n : ℚ) / 3

end

end A002699.P2940114024656758693

namespace A002699

/-- `n*A164908(n)/3` -/
def P2940114024656758693.Spec : Prop :=
  ∀ n, P2940114024656758693.a n = (A002699 n : ℚ)

end A002699

/-! ## A002699.P7316918136572019224

`A086093(n)-3^n`
-/

namespace A002699.P7316918136572019224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086093 n - (3 ^ n : ℤ)

end

end A002699.P7316918136572019224

namespace A002699

/-- `A086093(n)-3^n` -/
def P7316918136572019224.Spec : Prop :=
  ∀ n, P7316918136572019224.a n = A002699 n

end A002699

/-! ## A002699.P12432290010031550589

`lcm(n, A129952(2*n))`
-/

namespace A002699.P12432290010031550589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A129952 (2 * n))

end

end A002699.P12432290010031550589

namespace A002699

/-- `lcm(n, A129952(2*n))` -/
def P12432290010031550589.Spec : Prop :=
  ∀ n, (P12432290010031550589.a n : ℤ) = A002699 n

end A002699

