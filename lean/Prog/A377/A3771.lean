import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C033
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C001
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
# A377100: G.f. A(x) satisfies A(x) = A(x^3)/A(x^2) + A(x)^2.

The programs for A377100, there is no canonical definition to state claims against.
-/

/-! ## A377100.P7236420205287231109

`A100196(A217924(n)-A004526(n))`
-/

namespace A377100.P7236420205287231109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A217924 n - A004526 n).toNat

end

end A377100.P7236420205287231109

/-! ## A377100.P11903825417752624567

`A070000(A070031(n)-A363225(n))`
-/

namespace A377100.P11903825417752624567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (A070031 n - A363225 n).toNat

end

end A377100.P11903825417752624567

/-! ## A377100.P1445969076151315395

`A100196(xor(A004526(n), A217924(n)))`
-/

namespace A377100.P1445969076151315395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.xor (A004526 n) (A217924 n)).toNat

end

end A377100.P1445969076151315395

/-! ## A377100.P8863065727354018840

`A100196(A217924(n)-A033270(n+1))`
-/

namespace A377100.P8863065727354018840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A217924 n - A033270 (n + 1)).toNat

end

end A377100.P8863065727354018840

/-!
# A377101: G.f. A(x) satisfies Sum_{n>=1} A(x^n - x^(n+1)) = x + x^2.

The programs for A377101, there is no canonical definition to state claims against.
-/

/-! ## A377101.P6504449198569551333

`A289497(A225485(n+1)+A000984(n))`
-/

namespace A377101.P6504449198569551333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A225485 (n + 1) + A000984 n).toNat

end

end A377101.P6504449198569551333

/-! ## A377101.P233885077081177394

`A289497(A266224(n+1)+A000984(n))`
-/

namespace A377101.P233885077081177394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A266224 (n + 1) + A000984 n).toNat

end

end A377101.P233885077081177394

/-! ## A377101.P13874384178030385625

`A289497(A368779(n+1)+A000984(n))`
-/

namespace A377101.P13874384178030385625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A368779 (n + 1) + A000984 n).toNat

end

end A377101.P13874384178030385625

/-! ## A377101.P13611625716487997272

`A238525(n+2)+A076885(A076866(n))`
-/

namespace A377101.P13611625716487997272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238525 (n + 2) + A076885 (A076866 n).toNat

end

end A377101.P13611625716487997272

/-!
# A377102: G.f. A(x) satisfies Sum_{n>=1} A(x^n - 2*x^(n+1)) = x.

The programs for A377102, there is no canonical definition to state claims against.
-/

/-! ## A377102.P4901784704628045228

`xor(A273302(A336227(n)), A303022(2*n+1))`
-/

namespace A377102.P4901784704628045228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A273302 (A336227 n).toNat) (A303022 (2 * n + 1))

end

end A377102.P4901784704628045228

/-!
# A377103: G.f. A(x) satisfies Sum_{n>=1} A(x^n - 3*x^(n+1)) = x.

The programs for A377103, there is no canonical definition to state claims against.
-/

/-! ## A377103.P6104598651620464912

`A145392(A326080(n²))`
-/

namespace A377103.P6104598651620464912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145392 (A326080 (n ^ 2)).toNat

end

end A377103.P6104598651620464912

/-!
# A377105: E.g.f. A(x) satisfies [x^k] A(x)^(n*(n+1)/2+1) = 0 for k = n*(n-1)/2+2 through k = n*(n+1)/2+1 for n >= 1, with a(0) = a(1) = 1.

The programs for A377105, there is no canonical definition to state claims against.
-/

/-! ## A377105.P6464878377057949946

`∏[A091371(∏[A006093(n+1)])]`
-/

namespace A377105.P6464878377057949946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A377105.P6464878377057949946

/-! ## A377105.P5827664166619661059

`∏[A229817(∏[A100330(n+1)])]`
-/

namespace A377105.P5827664166619661059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229817 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A377105.P5827664166619661059

/-!
# A377106: G.f. A(x) satisfies A(x)^3 = A( x^3 + 9*x*A(x)^3 ), with A(0)=0, A'(0)=1.

The programs for A377106, there is no canonical definition to state claims against.
-/

/-! ## A377106.P15273558067906247676

`or(n, A280226(A104454(n)))`
-/

namespace A377106.P15273558067906247676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A280226 (A104454 n).toNat)

end

end A377106.P15273558067906247676

/-!
# A377108: G.f.: Sum_{k>=1} x^(8*k-1) * Product_{j=1..k-1} (1-x^(7*k+j-1))/(1-x^j).

The programs for A377108, there is no canonical definition to state claims against.
-/

/-! ## A377108.P16473607586844617450

`A198318(n+1-A186747(A198317(n)))`
-/

namespace A377108.P16473607586844617450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 ((n + 1 : ℤ) - A186747 (A198317 n).toNat).toNat

end

end A377108.P16473607586844617450

/-! ## A377108.P5368592906308617330

`A198318(n+1)-A185219(A186729(2*n))`
-/

namespace A377108.P5368592906308617330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (n + 1) - A185219 (A186729 (2 * n)).toNat

end

end A377108.P5368592906308617330

/-! ## A377108.P10575502422908910316

`A026801(n+1)-A026801(A328702(3*n+2))`
-/

namespace A377108.P10575502422908910316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026801 (n + 1) - A026801 (A328702 (3 * n + 2)).toNat

end

end A377108.P10575502422908910316

/-!
# A377109: a(n) = coefficient of the term that is independent of sqrt(2), sqrt(3), and sqrt(6) in the expansion of (2 + sqrt(2) + sqrt(3))^n.

The programs for A377109, the canonical program `A377109.P4469544860175913685` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377109 has offset 0).

The definition of A377109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377109.P4469544860175913685

`8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=38`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377109

/-- `8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` -/
def P4469544860175913685.Spec : Prop :=
  ∀ n, P4469544860175913685.a n = A377109 n

theorem P4469544860175913685.correct : P4469544860175913685.Spec := by
  intro n
  simp only [A377109]

end A377109

/-! ## A377109.P5919882144377055002

`A225643(A055773(2*n))+A109318(n)`
-/

namespace A377109.P5919882144377055002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 (A055773 (2 * n)).toNat + A109318 n

end

end A377109.P5919882144377055002

namespace A377109

/-- `A225643(A055773(2*n))+A109318(n)` -/
def P5919882144377055002.Spec : Prop :=
  ∀ n, P5919882144377055002.a n = A377109 n

end A377109

/-!
# A377110: a(n) = coefficient of sqrt(2) in the expansion of (2 + sqrt(2) + sqrt(3))^n.

The programs for A377110, the canonical program `A377110.P9546124040608554708` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377110 has offset 0).

The definition of A377110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377110.P9546124040608554708

`8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=23`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377110

/-- `8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` -/
def P9546124040608554708.Spec : Prop :=
  ∀ n, P9546124040608554708.a n = A377110 n

theorem P9546124040608554708.correct : P9546124040608554708.Spec := by
  intro n
  simp only [A377110]

end A377110

/-! ## A377110.P5573422171531414125

`A106612(A106568(n)-A106570(n))`
-/

namespace A377110.P5573422171531414125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A106568 n - A106570 n).toNat

end

end A377110.P5573422171531414125

namespace A377110

/-- `A106612(A106568(n)-A106570(n))` -/
def P5573422171531414125.Spec : Prop :=
  ∀ n, P5573422171531414125.a n = A377110 n

end A377110

/-! ## A377110.P16788020015827515166

`A003463(n)-A002265(A000045(3*n))`
-/

namespace A377110.P16788020015827515166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A002265 (A000045 (3 * n)).toNat

end

end A377110.P16788020015827515166

namespace A377110

/-- `A003463(n)-A002265(A000045(3*n))` -/
def P16788020015827515166.Spec : Prop :=
  ∀ n, P16788020015827515166.a n = A377110 n

end A377110

/-!
# A377111: a(n) = coefficient of sqrt(3) in the expansion of (2 + sqrt(2) + sqrt(3))^n.

The programs for A377111, the canonical program `A377111.P15457899144143238899` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377111 has offset 0).

The definition of A377111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377111.P15457899144143238899

`8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=21`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377111

/-- `8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` -/
def P15457899144143238899.Spec : Prop :=
  ∀ n, P15457899144143238899.a n = A377111 n

theorem P15457899144143238899.correct : P15457899144143238899.Spec := by
  intro n
  simp only [A377111]

end A377111

/-! ## A377111.P15215005986713067600

`A026741(A083858(n)+A015535(n))`
-/

namespace A377111.P15215005986713067600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A083858 n + A015535 n).toNat

end

end A377111.P15215005986713067600

namespace A377111

/-- `A026741(A083858(n)+A015535(n))` -/
def P15215005986713067600.Spec : Prop :=
  ∀ n, P15215005986713067600.a n = A377111 n

end A377111

/-!
# A377112: a(n) = coefficient of sqrt(6) in the expansion of (2 + sqrt(2) + sqrt(3))^n.

The programs for A377112, the canonical program `A377112.P15771709293350858854` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377112 has offset 0).

The definition of A377112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377112.P15771709293350858854

`8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=12`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377112

/-- `8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` -/
def P15771709293350858854.Spec : Prop :=
  ∀ n, P15771709293350858854.a n = A377112 n

theorem P15771709293350858854.correct : P15771709293350858854.Spec := by
  intro n
  simp only [A377112]

end A377112

/-! ## A377112.P408357147248004170

`A013941(A089165(n))`
-/

namespace A377112.P408357147248004170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013941 (A089165 n).toNat

end

end A377112.P408357147248004170

namespace A377112

/-- `A013941(A089165(n))` -/
def P408357147248004170.Spec : Prop :=
  ∀ n, P408357147248004170.a n = A377112 n

end A377112

/-!
# A377113: a(n) = coefficient of the term that is independent of sqrt(2), sqrt(3), and sqrt(6) in the expansion of (3 + sqrt(2) + sqrt(3))^n.

The programs for A377113, the canonical program `A377113.P8879792708680173058` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377113 has offset 0).

The definition of A377113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377113.P8879792708680173058

`12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=3, a(2)=14, a(3)=72`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377113

/-- `12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` -/
def P8879792708680173058.Spec : Prop :=
  ∀ n, P8879792708680173058.a n = A377113 n

theorem P8879792708680173058.correct : P8879792708680173058.Spec := by
  intro n
  simp only [A377113]

end A377113

/-!
# A377114: a(n) = coefficient of sqrt(2) in the expansion of (3 + sqrt(2) + sqrt(3))^n.

The programs for A377114, the canonical program `A377114.P12035356588864379255` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377114 has offset 0).

The definition of A377114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377114.P12035356588864379255

`12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=38`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377114

/-- `12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` -/
def P12035356588864379255.Spec : Prop :=
  ∀ n, P12035356588864379255.a n = A377114 n

theorem P12035356588864379255.correct : P12035356588864379255.Spec := by
  intro n
  simp only [A377114]

end A377114

/-! ## A377114.P8196485958820200284

`A135030(n)-A079203(A098576(n))`
-/

namespace A377114.P8196485958820200284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135030 n - A079203 (A098576 n).toNat

end

end A377114.P8196485958820200284

namespace A377114

/-- `A135030(n)-A079203(A098576(n))` -/
def P8196485958820200284.Spec : Prop :=
  ∀ n, P8196485958820200284.a n = A377114 n

end A377114

/-!
# A377115: a(n) = coefficient of sqrt(3) in the expansion of (3 + sqrt(2) + sqrt(3))^n.

The programs for A377115, the canonical program `A377115.P13558609988100347718` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377115 has offset 0).

The definition of A377115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377115.P13558609988100347718

`12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=36`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377115

/-- `12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` -/
def P13558609988100347718.Spec : Prop :=
  ∀ n, P13558609988100347718.a n = A377115 n

theorem P13558609988100347718.correct : P13558609988100347718.Spec := by
  intro n
  simp only [A377115]

end A377115

/-! ## A377115.P10847271785301333721

`A071669(A293776(n)*A394684(n))`
-/

namespace A377115.P10847271785301333721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 (A293776 n * A394684 n).toNat

end

end A377115.P10847271785301333721

namespace A377115

/-- `A071669(A293776(n)*A394684(n))` -/
def P10847271785301333721.Spec : Prop :=
  ∀ n, P10847271785301333721.a n = A377115 n

end A377115

/-!
# A377116: a(n) = coefficient of sqrt(6) in the expansion of (3 + sqrt(2) + sqrt(3))^n.

The programs for A377116, the canonical program `A377116.P10066225661394656742` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377116 has offset 0).

The definition of A377116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377116.P10066225661394656742

`12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=18`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377116

/-- `12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` -/
def P10066225661394656742.Spec : Prop :=
  ∀ n, P10066225661394656742.a n = A377116 n

theorem P10066225661394656742.correct : P10066225661394656742.Spec := by
  intro n
  simp only [A377116]

end A377116

/-! ## A377116.P17246357820161475950

`A277661(n)+A194186(A363666(n+1))`
-/

namespace A377116.P17246357820161475950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277661 n + A194186 (A363666 (n + 1)).toNat

end

end A377116.P17246357820161475950

namespace A377116

/-- `A277661(n)+A194186(A363666(n+1))` -/
def P17246357820161475950.Spec : Prop :=
  ∀ n, P17246357820161475950.a n = A377116 n

end A377116

/-!
# A377117: a(n) = coefficient of the term that is independent of 2^(1/3) and 2^(2/3) in the expansion of (2^(1/3) + 2^(2/3))^n.

The programs for A377117, the canonical program `A377117.P3513186085625323130` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377117 has offset 0).

The definition of A377117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377117.P3513186085625323130

`6*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=6, a(4)=24`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377117

/-- `6*a(n-2)+6*a(n-3)` -/
def P3513186085625323130.Spec : Prop :=
  ∀ n, (P3513186085625323130.a n : ℤ) = A377117 n

theorem P3513186085625323130.correct : P3513186085625323130.Spec := by
  intro n
  simp only [A377117]

end A377117

/-! ## A377117.P16394722223624966758

`A008953(A154638(n))*A126292(n)`
-/

namespace A377117.P16394722223624966758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008953 (A154638 n).toNat * A126292 n

end

end A377117.P16394722223624966758

namespace A377117

/-- `A008953(A154638(n))*A126292(n)` -/
def P16394722223624966758.Spec : Prop :=
  ∀ n, P16394722223624966758.a n = A377117 n

end A377117

/-! ## A377117.P10979138223258307734

`A002215(n+1)*A185283(A321994(n+1))`
-/

namespace A377117.P10979138223258307734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002215 (n + 1) * A185283 (A321994 (n + 1)).toNat

end

end A377117.P10979138223258307734

namespace A377117

/-- `A002215(n+1)*A185283(A321994(n+1))` -/
def P10979138223258307734.Spec : Prop :=
  ∀ n, P10979138223258307734.a n = A377117 n

end A377117

/-!
# A377118: a(n) = coefficient of 2^(1/3) in the expansion of (2^(1/3) + 2^(2/3))^n.

The programs for A377118, the canonical program `A377118.P16566090511075571075` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377118 has offset 0).

The definition of A377118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377118.P16566090511075571075

`6*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377118

/-- `6*a(n-2)+6*a(n-3)` -/
def P16566090511075571075.Spec : Prop :=
  ∀ n, (P16566090511075571075.a n : ℤ) = A377118 n

theorem P16566090511075571075.correct : P16566090511075571075.Spec := by
  intro n
  simp only [A377118]

end A377118

/-! ## A377118.P11504608022439885458

`ogf((x+2x^2)/(1-6x^2-6x^3))`
-/

namespace A377118.P11504608022439885458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 0, -6, -6] n

end

end A377118.P11504608022439885458

namespace A377118

/-- `ogf((x+2x^2)/(1-6x^2-6x^3))` -/
def P11504608022439885458.Spec : Prop :=
  ∀ n, P11504608022439885458.a n = A377118 n

end A377118

/-! ## A377118.P9086796141221330467

`6*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A377118.P9086796141221330467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  6 * (a (n - 2) + a (n - 3))

end

end A377118.P9086796141221330467

namespace A377118

/-- `6*(a(n-2)+a(n-3))` -/
def P9086796141221330467.Spec : Prop :=
  ∀ n, (P9086796141221330467.a n : ℤ) = A377118 n

theorem P9086796141221330467.correct : P9086796141221330467.Spec := by
  intro n
  simp only [A377118, Nat.add_sub_cancel, A377118.P9086796141221330467.a, A377118.P16566090511075571075.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A377118

/-! ## A377118.P8822834382294104733

`A070939(A075834(n))*A217137(n+1)`
-/

namespace A377118.P8822834382294104733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A075834 n).toNat * A217137 (n + 1)

end

end A377118.P8822834382294104733

namespace A377118

/-- `A070939(A075834(n))*A217137(n+1)` -/
def P8822834382294104733.Spec : Prop :=
  ∀ n, P8822834382294104733.a n = A377118 n

end A377118

/-!
# A377119: a(n) = coefficient of 2^(2/3) in the expansion of (2^(1/3) + 2^(2/3))^n.

The programs for A377119, the canonical program `A377119.P712227800788692233` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377119 has offset 0).

The definition of A377119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377119.P712227800788692233

`6*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377119

/-- `6*a(n-2)+6*a(n-3)` -/
def P712227800788692233.Spec : Prop :=
  ∀ n, (P712227800788692233.a n : ℤ) = A377119 n

theorem P712227800788692233.correct : P712227800788692233.Spec := by
  intro n
  simp only [A377119]

end A377119

/-! ## A377119.P2920745203729370413

`ogf((x+x^2)/(1-6x^2-6x^3))`
-/

namespace A377119.P2920745203729370413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 0, -6, -6] n

end

end A377119.P2920745203729370413

namespace A377119

/-- `ogf((x+x^2)/(1-6x^2-6x^3))` -/
def P2920745203729370413.Spec : Prop :=
  ∀ n, P2920745203729370413.a n = A377119 n

end A377119

/-! ## A377119.P17831554007908297138

`6*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A377119.P17831554007908297138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  6 * (a (n - 2) + a (n - 3))

end

end A377119.P17831554007908297138

namespace A377119

/-- `6*(a(n-2)+a(n-3))` -/
def P17831554007908297138.Spec : Prop :=
  ∀ n, (P17831554007908297138.a n : ℤ) = A377119 n

theorem P17831554007908297138.correct : P17831554007908297138.Spec := by
  intro n
  simp only [A377119, Nat.add_sub_cancel, A377119.P17831554007908297138.a, A377119.P712227800788692233.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A377119

/-!
# A377120: a(n) = number of iterations of x -> 2 x + 3 to reach a nonprime, starting with prime(n) .

The programs for A377120, there is no canonical definition to state claims against.
-/

/-! ## A377120.P4061929666634152153

`A165053((A087681(n+1)+A064191(n+1))*A000009(n))`
-/

namespace A377120.P4061929666634152153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 ((A087681 (n + 1) + A064191 (n + 1)) * A000009 n).toNat

end

end A377120.P4061929666634152153

/-! ## A377120.P2971436761010929194

`A277544(A321854(n+1)+A223379(n+1))`
-/

namespace A377120.P2971436761010929194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A321854 (n + 1) + A223379 (n + 1)).toNat

end

end A377120.P2971436761010929194

/-! ## A377120.P2947112103929230473

`A010145(A124506(2*n+5)+A010127(n))`
-/

namespace A377120.P2947112103929230473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010145 (A124506 (2 * n + 5) + A010127 n).toNat

end

end A377120.P2947112103929230473

/-!
# A377121: Numbers whose totient is refactorable.

The programs for A377121, the canonical program `A377121.P11187764455851854479` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377121 has offset 1).

The definition of A377121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377121.P11187764455851854479

`record[(n+1)/A090387(A000010(n+1))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A377121

/-- `record[(n+1)/A090387(A000010(n+1))]` -/
def P11187764455851854479.Spec : Prop :=
  ∀ n, P11187764455851854479.a n = (A377121 (n + 1) : ℚ)

end A377121

/-! ## A377121.P6943045708312931242

`eq[1, A298734(A000010(n+1))]+1`
-/

namespace A377121.P6943045708312931242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377121.P6943045708312931242

namespace A377121

/-- `eq[1, A298734(A000010(n+1))]+1` -/
def P6943045708312931242.Spec : Prop :=
  ∀ n, (P6943045708312931242.a n : ℤ) = A377121 (n + 1)

end A377121

/-!
# A377122: Number of subsets of the first n nonzero decimal palindromes whose sum is a nonzero decimal palindrome.

The programs for A377122, there is no canonical definition to state claims against.
-/

/-! ## A377122.P10425699048860651488

`A339507(n+1)-A057427(A057182(n+1))`
-/

namespace A377122.P10425699048860651488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339507 (n + 1) - A057427 (A057182 (n + 1)).toNat

end

end A377122.P10425699048860651488

/-! ## A377122.P11436668073186016351

`A339507(n+1)-A057427(A223081(n+1))`
-/

namespace A377122.P11436668073186016351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339507 (n + 1) - A057427 (A223081 (n + 1)).toNat

end

end A377122.P11436668073186016351

/-! ## A377122.P11675927536651842714

`A339507(n+1)-A057427(A227060(2*(n+1)))`
-/

namespace A377122.P11675927536651842714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339507 (n + 1) - A057427 (A227060 (2 * (n + 1))).toNat

end

end A377122.P11675927536651842714

/-! ## A377122.P17825172068435558462

`∑[A153671(Δ[A339507(n)])]`
-/

namespace A377122.P17825172068435558462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339507 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377122.P17825172068435558462

/-! ## A377122.P881567303640750145

`A339507(n+1)-A373125(A298878(n+5))`
-/

namespace A377122.P881567303640750145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339507 (n + 1) - A373125 (A298878 (n + 5)).toNat

end

end A377122.P881567303640750145

/-!
# A377123: Number of subsets of the first n nonzero triangular numbers whose sum is a nonzero triangular number.

The programs for A377123, there is no canonical definition to state claims against.
-/

/-! ## A377123.P9142869063624259472

`∑[A378961(n+1)]`
-/

namespace A377123.P9142869063624259472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377123.P9142869063624259472

/-! ## A377123.P13558304181442774400

`A271485(n)+A117173(A271485(n))`
-/

namespace A377123.P13558304181442774400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271485 n + A117173 (A271485 n).toNat

end

end A377123.P13558304181442774400

/-! ## A377123.P10318941163084204727

`A308629(A344604(n+1))`
-/

namespace A377123.P10318941163084204727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308629 (A344604 (n + 1)).toNat

end

end A377123.P10318941163084204727

/-! ## A377123.P17976053543357975359

`A003003(A082552(n+2))`
-/

namespace A377123.P17976053543357975359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A082552 (n + 2)).toNat

end

end A377123.P17976053543357975359

/-! ## A377123.P11293876514308242356

`A374698(n+2)+A250000(A361394(n))`
-/

namespace A377123.P11293876514308242356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374698 (n + 2) + A250000 (A361394 n).toNat

end

end A377123.P11293876514308242356

/-!
# A377124: Phase shift (original name "sfasamento") of the tetration base 10*n at any height greater than or equal to 3.

The programs for A377124, there is no canonical definition to state claims against.
-/

/-! ## A377124.P1325546379539242636

`(((n+1)/10^val(n+1, 10))^4)%10`
-/

namespace A377124.P1325546379539242636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)) ^ 4)) 10

end

end A377124.P1325546379539242636

/-! ## A377124.P4406971672875704625

`A376838(n+1)%8`
-/

namespace A377124.P4406971672875704625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376838 (n + 1)) 8

end

end A377124.P4406971672875704625

/-! ## A377124.P15505399093711290258

`A001016((n+1)/10^val(n+1, 10))%10`
-/

namespace A377124.P15505399093711290258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001016 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat) 10

end

end A377124.P15505399093711290258

/-! ## A377124.P10780308976540005299

`and(7, A376838((n+1)/10^val(n+1, 10)))`
-/

namespace A377124.P10780308976540005299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A376838 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat)

end

end A377124.P10780308976540005299

/-! ## A377124.P18273789279136159963

`A070514(A004151(n+1))`
-/

namespace A377124.P18273789279136159963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070514 (A004151 (n + 1)).toNat

end

end A377124.P18273789279136159963

/-! ## A377124.P7125314906014779970

`A070514(A004719(n+1))`
-/

namespace A377124.P7125314906014779970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070514 (A004719 (n + 1)).toNat

end

end A377124.P7125314906014779970

/-! ## A377124.P8107697823499769235

`A070514(A367610(n+1))`
-/

namespace A377124.P8107697823499769235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070514 (A367610 (n + 1)).toNat

end

end A377124.P8107697823499769235

/-! ## A377124.P5332663839990363704

`A376838(A068822(n+1))`
-/

namespace A377124.P5332663839990363704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376838 (A068822 (n + 1)).toNat

end

end A377124.P5332663839990363704

/-! ## A377124.P4417253334575832970

`A376838(A132741(n+1))`
-/

namespace A377124.P4417253334575832970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376838 (A132741 (n + 1)).toNat

end

end A377124.P4417253334575832970

/-! ## A377124.P16065475599130323040

`A376838(A370181(n+1))`
-/

namespace A377124.P16065475599130323040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376838 (A370181 (n + 1)).toNat

end

end A377124.P16065475599130323040

/-!
# A377125: Number of subsets of the first n perfect powers whose sum is a perfect power.

The programs for A377125, there is no canonical definition to state claims against.
-/

/-! ## A377125.P8984126752568586630

`A347655(A272195(n+1))`
-/

namespace A377125.P8984126752568586630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (A272195 (n + 1)).toNat

end

end A377125.P8984126752568586630

/-!
# A377128: Number of polycubes of size n and symmetry class BD.

The programs for A377128, there is no canonical definition to state claims against.
-/

/-! ## A377128.P5105821941898427147

`A185238(A057944(2*n)-n)`
-/

namespace A377128.P5105821941898427147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A057944 (2 * n) - (n : ℤ)).toNat

end

end A377128.P5105821941898427147

/-! ## A377128.P4013046054062035604

`A140645(n+1)%A290105(A288126(n))`
-/

namespace A377128.P4013046054062035604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140645 (n + 1)) (A290105 (A288126 n).toNat)

end

end A377128.P4013046054062035604

/-! ## A377128.P5441678347919794744

`A151795(A017872(n+1))`
-/

namespace A377128.P5441678347919794744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A017872 (n + 1)).toNat

end

end A377128.P5441678347919794744

/-! ## A377128.P12870079623559196515

`A213727(A034578(n+2))`
-/

namespace A377128.P12870079623559196515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 (A034578 (n + 2)).toNat

end

end A377128.P12870079623559196515

/-! ## A377128.P11682107055627328617

`A307197(A034542(n+1))`
-/

namespace A377128.P11682107055627328617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307197 (A034542 (n + 1)).toNat

end

end A377128.P11682107055627328617

/-!
# A377129: Number of polycubes of size n and symmetry class CCC.

The programs for A377129, there is no canonical definition to state claims against.
-/

/-! ## A377129.P15784496388662895578

`A025466(A163205(n+1)+2)`
-/

namespace A377129.P15784496388662895578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A163205 (n + 1) + 2).toNat

end

end A377129.P15784496388662895578

/-! ## A377129.P10197580907012829556

`A079684(A383239(n+1)%A064380(n+2))`
-/

namespace A377129.P10197580907012829556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079684 (Int.tmod (A383239 (n + 1)) (A064380 (n + 2))).toNat

end

end A377129.P10197580907012829556

/-! ## A377129.P7118808071631935955

`and(A221205(n), A377155(n+1))`
-/

namespace A377129.P7118808071631935955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A221205 n) (A377155 (n + 1))

end

end A377129.P7118808071631935955

/-! ## A377129.P5164596351890992239

`and(A146937(n+1), A377155(n+1))`
-/

namespace A377129.P5164596351890992239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146937 (n + 1)) (A377155 (n + 1))

end

end A377129.P5164596351890992239

/-! ## A377129.P15533559277254699916

`and(A146938(n+1), A377155(n+1))`
-/

namespace A377129.P15533559277254699916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146938 (n + 1)) (A377155 (n + 1))

end

end A377129.P15533559277254699916

/-!
# A377130: Number of polycubes of size n and symmetry class DEE.

The programs for A377130, there is no canonical definition to state claims against.
-/

/-! ## A377130.P16626131259521835369

`A025465(A011934(n*A011737(n)))`
-/

namespace A377130.P16626131259521835369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A011934 ((n : ℤ) * A011737 n).toNat).toNat

end

end A377130.P16626131259521835369

/-! ## A377130.P2904412772543033488

`val(A100145(A108971(n+1)), A095391(n))`
-/

namespace A377130.P2904412772543033488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A100145 (A108971 (n + 1)).toNat).toNat (A095391 n).toNat

end

end A377130.P2904412772543033488

/-! ## A377130.P14655486243054765633

`A090181(ceil(A124460(2*(n+1))/A044002(n+1)))`
-/

namespace A377130.P14655486243054765633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 ⌈(A124460 (2 * (n + 1)) : ℚ) / (A044002 (n + 1) : ℚ)⌉.toNat

end

end A377130.P14655486243054765633

/-! ## A377130.P7564828219595002167

`A090181(ceil(A124460(2*(n+1))/A044025(n+1)))`
-/

namespace A377130.P7564828219595002167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 ⌈(A124460 (2 * (n + 1)) : ℚ) / (A044025 (n + 1) : ℚ)⌉.toNat

end

end A377130.P7564828219595002167

/-! ## A377130.P436110124441300828

`A014083(A316076(n+1))`
-/

namespace A377130.P436110124441300828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (A316076 (n + 1)).toNat

end

end A377130.P436110124441300828

/-!
# A377131: Number of polycubes of size n and symmetry class R.

The programs for A377131, there is no canonical definition to state claims against.
-/

/-! ## A377131.P1236331256758777163

`val(A360098(n+4), 8)`
-/

namespace A377131.P1236331256758777163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A360098 (n + 4)).toNat 8

end

end A377131.P1236331256758777163

/-! ## A377131.P6599196089921407583

`A061265(A105127(n+1))`
-/

namespace A377131.P6599196089921407583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061265 (A105127 (n + 1)).toNat

end

end A377131.P6599196089921407583

/-! ## A377131.P943026644932229580

`A046314(A325349(n))%2`
-/

namespace A377131.P943026644932229580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046314 (A325349 n).toNat) 2

end

end A377131.P943026644932229580

/-! ## A377131.P10592241483491641995

`A318720(A299274(n))%2`
-/

namespace A377131.P10592241483491641995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318720 (A299274 n).toNat) 2

end

end A377131.P10592241483491641995

/-! ## A377131.P2339666752818759227

`A335463(A300978(n))%2`
-/

namespace A377131.P2339666752818759227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335463 (A300978 n).toNat) 2

end

end A377131.P2339666752818759227

/-! ## A377131.P13014053275894071864

`A347935(A285175(n+1))%3`
-/

namespace A377131.P13014053275894071864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347935 (A285175 (n + 1)).toNat) 3

end

end A377131.P13014053275894071864

/-! ## A377131.P14638677885793734420

`val(A124944(A143773(n+1)), 5)`
-/

namespace A377131.P14638677885793734420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124944 (A143773 (n + 1)).toNat).toNat 5

end

end A377131.P14638677885793734420

/-! ## A377131.P2994637347954706506

`val(A111725(A141729(n+3)), 14)`
-/

namespace A377131.P2994637347954706506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A111725 (A141729 (n + 3)).toNat).toNat 14

end

end A377131.P2994637347954706506

/-! ## A377131.P16509414341858911300

`val(∑{d}[n+1, #], A061486(A051991(n+1)))`
-/

namespace A377131.P16509414341858911300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), d) (A061486 (A051991 (n + 1)).toNat).toNat

end

end A377131.P16509414341858911300

/-! ## A377131.P7260231832077644064

`A330551(gcd(A173815(n+1), A211024(n)))`
-/

namespace A377131.P7260231832077644064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330551 (Int.gcd (A173815 (n + 1)) (A211024 n))

end

end A377131.P7260231832077644064

/-!
# A377132: The expansion of 1/(1 - G(x)*x), where G(x) is the ordinary generating function of the Carlitz-Riordan q-Catalan numbers for q = 2 (A015083).

The programs for A377132, there is no canonical definition to state claims against.
-/

/-! ## A377132.P8081538735343928054

`A316470(2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A377132.P8081538735343928054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A316470 (2 * a (n - 1)).toNat

end

end A377132.P8081538735343928054

/-! ## A377132.P9707122010317889391

`A076436(ceil(a(n-1)²/a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A377132.P9707122010317889391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A076436 ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉.toNat

end

end A377132.P9707122010317889391

/-!
# A377133: Triangle read by rows: T(n,k) is the maximum volume of an integer-sided box that can be made from a piece of paper of size n X k by cutting away identical squares at each corner and folding up the sides, n >= 3, 3 <= k <= n.

The programs for A377133, there is no canonical definition to state claims against.
-/

/-! ## A377133.P5961673078874367157

`A075362(n+1)+A011765(A066833(3*n+4))`
-/

namespace A377133.P5961673078874367157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + A011765 (A066833 (3 * n + 4)).toNat

end

end A377133.P5961673078874367157

/-!
# A377135: Number of maximal chains in the poset of n-ary words of length n ordered by B covers A iff A_i <= B_i for 1 <= i <= n.

The programs for A377135, there is no canonical definition to state claims against.
-/

/-! ## A377135.P11986013444126442984

`A187783(2*n²)`
-/

namespace A377135.P11986013444126442984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (2 * n ^ 2)

end

end A377135.P11986013444126442984

/-! ## A377135.P584087603240278856

`A089759(A082375(n²²))`
-/

namespace A377135.P584087603240278856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (A082375 ((n ^ 2) ^ 2)).toNat

end

end A377135.P584087603240278856

/-!
# A377137: Array read by rows (blocks). Each row is a permutation of a block of consecutive numbers; the blocks are disjoint and every positive number belongs to some block. Row n contains 3n/2 elements if n is even, and (n+1)/2 elements if n is odd; ; see Comments.

The programs for A377137, there is no canonical definition to state claims against.
-/

/-! ## A377137.P12635091964477551830

`A378626(∑[n]+1)`
-/

namespace A377137.P12635091964477551830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378626 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A377137.P12635091964477551830

/-!
# A377141: Numbers whose cubes have more square divisors than the cube of any smaller number.

The programs for A377141, there is no canonical definition to state claims against.
-/

/-! ## A377141.P14034013673355374550

`record[A052126(A248686(n+1))]`
-/

namespace A377141.P14034013673355374550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A248686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377141.P14034013673355374550

/-! ## A377141.P2290769907381084923

`A124315(A175943(n+1))`
-/

namespace A377141.P2290769907381084923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124315 (A175943 (n + 1)).toNat

end

end A377141.P2290769907381084923

/-! ## A377141.P15748239060285948796

`record[A357978(record[A051703(n)])]`
-/

namespace A377141.P15748239060285948796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357978 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377141.P15748239060285948796

/-! ## A377141.P6829190560967395524

`record[A051119(A096115(n+1))]`
-/

namespace A377141.P6829190560967395524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A096115 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377141.P6829190560967395524

/-! ## A377141.P9187386418337617484

`record[Δ[A061395(A133928(n+1))]]`
-/

namespace A377141.P9187386418337617484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A133928 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377141.P9187386418337617484

/-!
# A377142: Numbers m such that phi(2*m-1)/2 = phi(2*m) - 1, where phi = A000010.

The programs for A377142, there is no canonical definition to state claims against.
-/

/-! ## A377142.P5615339801436594504

`(A376337(n+1)+1)/2`
-/

namespace A377142.P5615339801436594504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376337 (n + 1) + 1 : ℚ) / 2

end

end A377142.P5615339801436594504

/-! ## A377142.P8476924549704579456

`ceil(A376337(n+1)/2)`
-/

namespace A377142.P8476924549704579456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A376337 (n + 1) : ℚ) / 2⌉

end

end A377142.P8476924549704579456

/-! ## A377142.P10633638670786135940

`record[A169628(n+1)-A375354(n+1)]`
-/

namespace A377142.P10633638670786135940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (n + 1) - A375354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377142.P10633638670786135940

/-! ## A377142.P2506047955667693690

`∪[A156695(3*(n+1)), A019279(n+1)]`
-/

namespace A377142.P2506047955667693690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156695 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377142.P2506047955667693690

/-!
# A377145: a(n) = Sum_{k=0..n} binomial(k+2,2) * binomial(k,n-k)^2.

The programs for A377145, there is no canonical definition to state claims against.
-/

/-! ## A377145.P9565822476140482772

`A299499(A167614(n+1)-1)`
-/

namespace A377145.P9565822476140482772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A167614 (n + 1) - 1).toNat

end

end A377145.P9565822476140482772

/-! ## A377145.P5630234187537209

`A299499(eq[3, A002260(n+1)])`
-/

namespace A377145.P5630234187537209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377145.P5630234187537209

/-! ## A377145.P2063069368616983171

`A299499(A099047(n+1)+∑[n])`
-/

namespace A377145.P2063069368616983171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A099047 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A377145.P2063069368616983171

/-! ## A377145.P18159349728060742301

`A299499(ceil((A031297(n+3)²-n)/2))`
-/

namespace A377145.P18159349728060742301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 ⌈(A031297 (n + 3) ^ 2 - (n : ℤ) : ℚ) / 2⌉.toNat

end

end A377145.P18159349728060742301

/-!
# A377148: a(n) = Sum_{k=0..n} binomial(k+3,3) * binomial(k,n-k)^2.

The programs for A377148, there is no canonical definition to state claims against.
-/

/-! ## A377148.P8326150055071414465

`A299499(A167614(n+2))`
-/

namespace A377148.P8326150055071414465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A167614 (n + 2)).toNat

end

end A377148.P8326150055071414465

/-! ## A377148.P1647442047716132088

`A299499(A055999(n)+9)`
-/

namespace A377148.P1647442047716132088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A055999 n + 9).toNat

end

end A377148.P1647442047716132088

/-! ## A377148.P6274464186125708989

`A299499(A000217(n+4)-A210585(n+1))`
-/

namespace A377148.P6274464186125708989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A000217 (n + 4) - A210585 (n + 1)).toNat

end

end A377148.P6274464186125708989

/-! ## A377148.P4146920809104782253

`A299499(A000217(n+4)-A269364(n+1))`
-/

namespace A377148.P4146920809104782253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A000217 (n + 4) - A269364 (n + 1)).toNat

end

end A377148.P4146920809104782253

/-!
# A377152: a(n) = Sum_{k=0..n} binomial(k+4,4) * binomial(k,n-k)^2.

The programs for A377152, there is no canonical definition to state claims against.
-/

/-! ## A377152.P10969551339096711381

`A299499(A000217(n+4)+4)`
-/

namespace A377152.P10969551339096711381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A000217 (n + 4) + 4).toNat

end

end A377152.P10969551339096711381

/-! ## A377152.P16968395544606267908

`A299499(A051936(n+4)+13)`
-/

namespace A377152.P16968395544606267908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A051936 (n + 4) + 13).toNat

end

end A377152.P16968395544606267908

/-!
# A377153: a(n) = Sum_{k=0..n} binomial(k+5,5) * binomial(k,n-k)^2.

The programs for A377153, there is no canonical definition to state claims against.
-/

/-! ## A377153.P8605653795017367157

`A299499(A167499(n+4))`
-/

namespace A377153.P8605653795017367157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A167499 (n + 4)).toNat

end

end A377153.P8605653795017367157

/-!
# A377154: Expansion of e.g.f. exp(Sum_{k>=1} A000082(k)*x^k/k).

The programs for A377154, there is no canonical definition to state claims against.
-/

/-! ## A377154.P7685134645548155360

`A000165(n)-A316524(A005649(n))`
-/

namespace A377154.P7685134645548155360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n - A316524 (A005649 n).toNat

end

end A377154.P7685134645548155360

/-!
# A377155: Number of 3-dimensional polyominoes (or polycubes) with n cells and rotational symmetry group of order exactly 12.

The programs for A377155, there is no canonical definition to state claims against.
-/

/-! ## A377155.P5460496010755692495

`2*A377128(n+1)+A377129(n+1)+A377130(n+1)`
-/

namespace A377155.P5460496010755692495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A377128 (n + 1) + A377129 (n + 1) + A377130 (n + 1)

end

end A377155.P5460496010755692495

/-!
# A377156: Numbers k such that the set of divisors of k that are Zumkeller numbers can be partitioned into two disjoint subsets with equal sum.

The programs for A377156, there is no canonical definition to state claims against.
-/

/-! ## A377156.P1847080490337250550

`∩[A228383(2*(n+1)), A208984(n+2)]`
-/

namespace A377156.P1847080490337250550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228383 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208984 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377156.P1847080490337250550

/-! ## A377156.P7351558338777769614

`A208984(A070939(n)+A065666(n+2))`
-/

namespace A377156.P7351558338777769614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208984 (A070939 n + A065666 (n + 2)).toNat

end

end A377156.P7351558338777769614

/-!
# A377159: a(n) = Sum_{k=0..n} binomial(k+7,7) * binomial(k,n-k)^2.

The programs for A377159, there is no canonical definition to state claims against.
-/

/-! ## A377159.P1189076268369292128

`A345960(A007051(n))-A213718(2*n+3)`
-/

namespace A377159.P1189076268369292128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345960 (A007051 n).toNat - A213718 (2 * n + 3)

end

end A377159.P1189076268369292128

/-!
# A377160: Numbers k such that A000217(k) is not cubefree.

The programs for A377160, the canonical program `A377160.P10435987301358930042` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377160 has offset 1).

The definition of A377160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377160.P10435987301358930042

`lt[2, A176166(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A377160

/-- `lt[2, A176166(n+1)]+1` -/
def P10435987301358930042.Spec : Prop :=
  ∀ n, (P10435987301358930042.a n : ℤ) = A377160 (n + 1)

theorem P10435987301358930042.correct : P10435987301358930042.Spec := by
  intro n
  simp only [A377160, Nat.add_sub_cancel]

end A377160

/-! ## A377160.P7500444726504764246

`lt[1, A050361(A179865(n+1))]`
-/

namespace A377160.P7500444726504764246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A377160.P7500444726504764246

namespace A377160

/-- `lt[1, A050361(A179865(n+1))]` -/
def P7500444726504764246.Spec : Prop :=
  ∀ n, (P7500444726504764246.a n : ℤ) = A377160 (n + 1)

end A377160

/-! ## A377160.P14357983846645496946

`eq[0, A212793(A000217(n+1))]+1`
-/

namespace A377160.P14357983846645496946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (A000217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377160.P14357983846645496946

namespace A377160

/-- `eq[0, A212793(A000217(n+1))]+1` -/
def P14357983846645496946.Spec : Prop :=
  ∀ n, (P14357983846645496946.a n : ℤ) = A377160 (n + 1)

end A377160

/-!
# A377165: a(n) = 76 + 275*n.

The programs for A377165, the canonical program `A377165.P12946154727019804590` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377165 has offset 0).

The definition of A377165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `76+275*n` (program `A377165.P12946154727019804590`, by `A377165.P12946154727019804590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377165.P12946154727019804590

`76+275*n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377165

/-- `76+275*n` -/
def P12946154727019804590.Spec : Prop :=
  ∀ n, (P12946154727019804590.a n : ℤ) = A377165 n

theorem P12946154727019804590.correct : P12946154727019804590.Spec := by
  intro n
  simp only [A377165]

end A377165

/-!
# A377166: Expansion of g.f. x*(21 + 123*x + 129*x^2 + 4*x^3 + 129*x^4 + 123*x^5 + 21*x^6)/((1 - x)^3*(1 + x + x^2 + x^3)^2).

The programs for A377166, the canonical program `A377166.P13405868699537035248` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377166 has offset 0).

The definition of A377166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((21x+123x^2+129x^3+4x^4+129x^5+123x^6+21x^7)/(1-x-2x^4+2x^5+x^8-x^9))` (program `A377166.P13405868699537035248`, by `A377166.P13405868699537035248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377166.P13405868699537035248

`ogf((21x+123x^2+129x^3+4x^4+129x^5+123x^6+21x^7)/(1-x-2x^4+2x^5+x^8-x^9))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377166

/-- `ogf((21x+123x^2+129x^3+4x^4+129x^5+123x^6+21x^7)/(1-x-2x^4+2x^5+x^8-x^9))` -/
def P13405868699537035248.Spec : Prop :=
  ∀ n, P13405868699537035248.a n = A377166 n

theorem P13405868699537035248.correct : P13405868699537035248.Spec := by
  intro n
  simp only [A377166]

end A377166

/-!
# A377167: Nonnegative integers containing isolated zeros in their binary representation.

The programs for A377167, the canonical program `A377167.P5087279671940007888` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377167 has offset 1).

The definition of A377167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377167.P5087279671940007888

`comp[record[and(2*n+3, n+1)]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377167

/-- `comp[record[and(2*n+3, n+1)]]` -/
def P5087279671940007888.Spec : Prop :=
  ∀ n, (P5087279671940007888.a n : ℤ) = A377167 (n + 1)

theorem P5087279671940007888.correct : P5087279671940007888.Spec := by
  intro n
  simp only [A377167, Nat.add_sub_cancel]

end A377167

/-! ## A377167.P11448693843234397776

`comp[A175054(n+1)]`
-/

namespace A377167.P11448693843234397776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377167.P11448693843234397776

namespace A377167

/-- `comp[A175054(n+1)]` -/
def P11448693843234397776.Spec : Prop :=
  ∀ n, (P11448693843234397776.a n : ℤ) = A377167 (n + 1)

end A377167

/-! ## A377167.P10504911575359836508

`∪[A004748(n+1), A130824(n)]`
-/

namespace A377167.P10504911575359836508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377167.P10504911575359836508

namespace A377167

/-- `∪[A004748(n+1), A130824(n)]` -/
def P10504911575359836508.Spec : Prop :=
  ∀ n, (P10504911575359836508.a n : ℤ) = A377167 (n + 1)

end A377167

/-! ## A377167.P7370359927915140614

`lt[char[record[and(2*n+3, n+1)]], 1]`
-/

namespace A377167.P7370359927915140614
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 3) (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A377167.P7370359927915140614

namespace A377167

/-- `lt[char[record[and(2*n+3, n+1)]], 1]` -/
def P7370359927915140614.Spec : Prop :=
  ∀ n, (P7370359927915140614.a n : ℤ) = A377167 (n + 1)

end A377167

/-! ## A377167.P17657580067453253114

`comp[A175047(n+1)]`
-/

namespace A377167.P17657580067453253114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377167.P17657580067453253114

namespace A377167

/-- `comp[A175047(n+1)]` -/
def P17657580067453253114.Spec : Prop :=
  ∀ n, (P17657580067453253114.a n : ℤ) = A377167 (n + 1)

end A377167

/-! ## A377167.P7392637882608980869

`eq[n*A000007(n), char[A175047(n+1)]]`
-/

namespace A377167.P7392637882608980869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A377167.P7392637882608980869

namespace A377167

/-- `eq[n*A000007(n), char[A175047(n+1)]]` -/
def P7392637882608980869.Spec : Prop :=
  ∀ n, (P7392637882608980869.a n : ℤ) = A377167 (n + 1)

end A377167

/-! ## A377167.P6135022617655490857

`lt[A001222(n+1), A045755(A337375(2*n+1))]`
-/

namespace A377167.P6135022617655490857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045755 (A337375 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377167.P6135022617655490857

namespace A377167

/-- `lt[A001222(n+1), A045755(A337375(2*n+1))]` -/
def P6135022617655490857.Spec : Prop :=
  ∀ n, (P6135022617655490857.a n : ℤ) = A377167 (n + 1)

end A377167

/-!
# A377169: Nonnegative integers containing isolated ones in their binary representation.

The programs for A377169, the canonical program `A377169.P8799785100845338612` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377169 has offset 1).

The definition of A377169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377169.P8799785100845338612

`comp[or(n, 2*n)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377169

/-- `comp[or(n, 2*n)]` -/
def P8799785100845338612.Spec : Prop :=
  ∀ n, (P8799785100845338612.a n : ℤ) = A377169 (n + 1)

theorem P8799785100845338612.correct : P8799785100845338612.Spec := by
  intro n
  simp only [A377169, Nat.add_sub_cancel]

end A377169

/-! ## A377169.P5122850648489544221

`comp[A163617(n)]`
-/

namespace A377169.P5122850648489544221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377169.P5122850648489544221

namespace A377169

/-- `comp[A163617(n)]` -/
def P5122850648489544221.Spec : Prop :=
  ∀ n, (P5122850648489544221.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P10031877409638909390

`comp[A213064(n)+n]`
-/

namespace A377169.P10031877409638909390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377169.P10031877409638909390

namespace A377169

/-- `comp[A213064(n)+n]` -/
def P10031877409638909390.Spec : Prop :=
  ∀ n, (P10031877409638909390.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P14830401854576803037

`eq[1, A144790(n+1)]+1`
-/

namespace A377169.P14830401854576803037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377169.P14830401854576803037

namespace A377169

/-- `eq[1, A144790(n+1)]+1` -/
def P14830401854576803037.Spec : Prop :=
  ∀ n, (P14830401854576803037.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P5270991432104968343

`comp[A269174(and(n, A269174(n)))]`
-/

namespace A377169.P5270991432104968343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (Int.land (n : ℤ) (A269174 n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377169.P5270991432104968343

namespace A377169

/-- `comp[A269174(and(n, A269174(n)))]` -/
def P5270991432104968343.Spec : Prop :=
  ∀ n, (P5270991432104968343.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P7382726421814212951

`lt[1, A277937(n)+1]`
-/

namespace A377169.P7382726421814212951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A377169.P7382726421814212951

namespace A377169

/-- `lt[1, A277937(n)+1]` -/
def P7382726421814212951.Spec : Prop :=
  ∀ n, (P7382726421814212951.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P15124873730739452452

`lt[A014082(n), n*A277937(n)]`
-/

namespace A377169.P15124873730739452452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377169.P15124873730739452452

namespace A377169

/-- `lt[A014082(n), n*A277937(n)]` -/
def P15124873730739452452.Spec : Prop :=
  ∀ n, (P15124873730739452452.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P7119940495084663323

`eq[0, char[or(n, 2*n)]]`
-/

namespace A377169.P7119940495084663323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377169.P7119940495084663323

namespace A377169

/-- `eq[0, char[or(n, 2*n)]]` -/
def P7119940495084663323.Spec : Prop :=
  ∀ n, (P7119940495084663323.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P17986398730873881443

`lt[char[or(n, 2*n)], 1]`
-/

namespace A377169.P17986398730873881443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A377169.P17986398730873881443

namespace A377169

/-- `lt[char[or(n, 2*n)], 1]` -/
def P17986398730873881443.Spec : Prop :=
  ∀ n, (P17986398730873881443.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P17385572177928630735

`eq[2, gcd(2, A246029(n))]`
-/

namespace A377169.P17385572177928630735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A246029 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377169.P17385572177928630735

namespace A377169

/-- `eq[2, gcd(2, A246029(n))]` -/
def P17385572177928630735.Spec : Prop :=
  ∀ n, (P17385572177928630735.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P12166205723185970060

`lt[A246596(n)-A277937(n), A246596(n)]`
-/

namespace A377169.P12166205723185970060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 n - A277937 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377169.P12166205723185970060

namespace A377169

/-- `lt[A246596(n)-A277937(n), A246596(n)]` -/
def P12166205723185970060.Spec : Prop :=
  ∀ n, (P12166205723185970060.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P16368338245369645674

`lt[A246660(n)-A277937(n), A246660(n)]`
-/

namespace A377169.P16368338245369645674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n - A277937 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377169.P16368338245369645674

namespace A377169

/-- `lt[A246660(n)-A277937(n), A246660(n)]` -/
def P16368338245369645674.Spec : Prop :=
  ∀ n, (P16368338245369645674.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P18163803064487732588

`A026741(comp[or(n, A026741(n))])`
-/

namespace A377169.P18163803064487732588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A026741 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A377169.P18163803064487732588

namespace A377169

/-- `A026741(comp[or(n, A026741(n))])` -/
def P18163803064487732588.Spec : Prop :=
  ∀ n, P18163803064487732588.a n = A377169 (n + 1)

end A377169

/-!
# A377173: Rectangular array, by antidiagonals: (row 1) = r(1) = A000040 (primes); (row n) = r(n) = prime(r(n-1)) for n>=1.

The programs for A377173, there is no canonical definition to state claims against.
-/

/-! ## A377173.P10272738638725139384

`A354967(comp[∑[n]]+1)`
-/

namespace A377173.P10272738638725139384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354967 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A377173.P10272738638725139384

/-! ## A377173.P9499474183097636937

`A000040(A354967(n+1))`
-/

namespace A377173.P9499474183097636937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A354967 (n + 1)).toNat

end

end A377173.P9499474183097636937

/-! ## A377173.P17235437815969436085

`A008578(A354967(n+1)+1)`
-/

namespace A377173.P17235437815969436085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A354967 (n + 1) + 1).toNat

end

end A377173.P17235437815969436085

/-! ## A377173.P242825574463546560

`A177849(n)+A006093(A354967(n+1))`
-/

namespace A377173.P242825574463546560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n + A006093 (A354967 (n + 1)).toNat

end

end A377173.P242825574463546560

/-! ## A377173.P8000409521216328421

`A181819(2^A354967(n+1))`
-/

namespace A377173.P8000409521216328421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A354967 (n + 1) : ℤ))).toNat

end

end A377173.P8000409521216328421

/-!
# A377174: Primes p such that 5/2 is a primitive root modulo p.

The programs for A377174, there is no canonical definition to state claims against.
-/

/-! ## A377174.P2833965315514676047

`filter[A091923(2*n+1), A225181(#)]`
-/

namespace A377174.P2833965315514676047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091923 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A377174.P2833965315514676047

/-! ## A377174.P3629852058120797730

`∩[A237662(n+1), A320601(n+1)]`
-/

namespace A377174.P3629852058120797730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377174.P3629852058120797730

/-! ## A377174.P4956300785871246188

`∩[A237662(n+1), A355274(n+1)]`
-/

namespace A377174.P4956300785871246188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377174.P4956300785871246188

/-!
# A377175: Primes p such that -5/2 is a primitive root modulo p.

The programs for A377175, there is no canonical definition to state claims against.
-/

/-! ## A377175.P5475994721415116782

`∩[A296925(n+1), A107686(n)]`
-/

namespace A377175.P5475994721415116782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377175.P5475994721415116782

/-! ## A377175.P6522871556721359540

`∩[A168543(n+1), A296925(n+1)]`
-/

namespace A377175.P6522871556721359540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377175.P6522871556721359540

/-! ## A377175.P16273051230087629816

`∩[A246448(n+1), A296925(n+1)]`
-/

namespace A377175.P16273051230087629816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377175.P16273051230087629816

/-! ## A377175.P17510576593149698599

`∩[A267983(n+1), A296925(n+1)]`
-/

namespace A377175.P17510576593149698599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377175.P17510576593149698599

/-! ## A377175.P11282481970598149528

`∩[A296925(n+1), A334966(n+1)]`
-/

namespace A377175.P11282481970598149528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377175.P11282481970598149528

/-!
# A377176: Primes p such that 7/2 is a primitive root modulo p.

The programs for A377176, there is no canonical definition to state claims against.
-/

/-! ## A377176.P13941979938863027959

`∩[A038886(n+1), A321993(n+1)]`
-/

namespace A377176.P13941979938863027959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377176.P13941979938863027959

/-! ## A377176.P4276951562274916054

`A038886(lt[A026768(n), A271454(n)])`
-/

namespace A377176.P4276951562274916054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038886 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377176.P4276951562274916054

/-! ## A377176.P11416877979630385675

`A038886(lt[A000700(n), A083399(n+1)])`
-/

namespace A377176.P11416877979630385675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038886 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377176.P11416877979630385675

/-! ## A377176.P10745259128236254976

`A038886(lt[A101752(n+1), A005476(n)])`
-/

namespace A377176.P10745259128236254976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038886 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377176.P10745259128236254976

/-! ## A377176.P10531710714383601370

`A038886(lt[A101752(n+1), A007331(n)])`
-/

namespace A377176.P10531710714383601370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038886 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377176.P10531710714383601370

/-!
# A377177: Primes p such that -7/2 is a primitive root modulo p.

The programs for A377177, there is no canonical definition to state claims against.
-/

/-! ## A377177.P13183987985722282800

`∩[A191061(n+1), A247151(n+1)]`
-/

namespace A377177.P13183987985722282800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377177.P13183987985722282800

/-! ## A377177.P14981276086591590410

`∩[A247151(n+1), A274504(n+3)]`
-/

namespace A377177.P14981276086591590410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274504 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377177.P14981276086591590410

/-!
# A377178: Primes p such that 9/2 is a primitive root modulo p.

The programs for A377178, there is no canonical definition to state claims against.
-/

/-! ## A377178.P16841189417620284638

`A003629(A030124(n+1)%A289000(3*n+2))`
-/

namespace A377178.P16841189417620284638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (Int.tmod (A030124 (n + 1)) (A289000 (3 * n + 2))).toNat

end

end A377178.P16841189417620284638

/-! ## A377178.P3607509410488241797

`A003629(A030124(n+1)%A101752(n+5))`
-/

namespace A377178.P3607509410488241797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (Int.tmod (A030124 (n + 1)) (A101752 (n + 5))).toNat

end

end A377178.P3607509410488241797

/-! ## A377178.P14766940307144344425

`∩[A165354(A340932(n+1)), A360556(n+1)]`
-/

namespace A377178.P14766940307144344425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165354 (A340932 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377178.P14766940307144344425

/-!
# A377185: Average of twin prime pairs A014574 such that the largest odd divisor of the average is the midpoint of the cousin prime pairs A087679.

The programs for A377185, there is no canonical definition to state claims against.
-/

/-! ## A377185.P6656392344591137999

`A014574(A161428(n+1)^Δ[(n+2)*ceil((n+1)/7)])`
-/

namespace A377185.P6656392344591137999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌈(n + 1 : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (SequenceMachineLib.roundAway ((A161428 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A377185.P6656392344591137999

/-!
# A377186: Expansion of 1/(1 - 4*x^2 - 4*x^3)^(3/2).

The programs for A377186, the canonical program `A377186.P444211418962947482` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377186 has offset 0).

The definition of A377186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377186.P444211418962947482

`(4*(n+1)*a(n-2)+2*(2*n+3)*a(n-3))/n` with `a(0)=1, a(1)=0, a(2)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377186

/-- `(4*(n+1)*a(n-2)+2*(2*n+3)*a(n-3))/n` -/
def P444211418962947482.Spec : Prop :=
  ∀ n, P444211418962947482.a n = (A377186 n : ℚ)

end A377186

/-!
# A377189: Expansion of 1/(1 - 4*x^2 - 4*x^3)^(5/2).

The programs for A377189, the canonical program `A377189.P8914776000570455070` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377189 has offset 0).

The definition of A377189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377189.P8914776000570455070

`(4*(n+3)*a(n-2)+2*(2*n+9)*a(n-3))/n` with `a(0)=1, a(1)=0, a(2)=10`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377189

/-- `(4*(n+3)*a(n-2)+2*(2*n+9)*a(n-3))/n` -/
def P8914776000570455070.Spec : Prop :=
  ∀ n, P8914776000570455070.a n = (A377189 n : ℚ)

end A377189

/-! ## A377189.P10984187420753258677

`A124027(A032006(n+4)+A007318(n))`
-/

namespace A377189.P10984187420753258677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124027 (A032006 (n + 4) + A007318 n).toNat

end

end A377189.P10984187420753258677

namespace A377189

/-- `A124027(A032006(n+4)+A007318(n))` -/
def P10984187420753258677.Spec : Prop :=
  ∀ n, P10984187420753258677.a n = A377189 n

end A377189

/-!
# A377190: Expansion of 1/(1 - 4*x^2 - 4*x^3)^(7/2).

The programs for A377190, the canonical program `A377190.P7655791740087415295` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377190 has offset 0).

The definition of A377190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377190.P7655791740087415295

`(4*(n+5)*a(n-2)+2*(2*n+15)*a(n-3))/n` with `a(0)=1, a(1)=0, a(2)=14`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377190

/-- `(4*(n+5)*a(n-2)+2*(2*n+15)*a(n-3))/n` -/
def P7655791740087415295.Spec : Prop :=
  ∀ n, P7655791740087415295.a n = (A377190 n : ℚ)

end A377190

/-! ## A377190.P3514082976247323326

`A001316(A002103(n))-A098219(n+1)`
-/

namespace A377190.P3514082976247323326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A002103 n).toNat - A098219 (n + 1)

end

end A377190.P3514082976247323326

namespace A377190

/-- `A001316(A002103(n))-A098219(n+1)` -/
def P3514082976247323326.Spec : Prop :=
  ∀ n, P3514082976247323326.a n = A377190 n

end A377190

/-!
# A377191: Smallest number of digits that must be changed in n to obtain a palindrome (without changing the first digit to 0).

The programs for A377191, there is no canonical definition to state claims against.
-/

/-! ## A377191.P4037244998391966295

`1-A136522(n)`
-/

namespace A377191.P4037244998391966295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A136522 n

end

end A377191.P4037244998391966295

/-! ## A377191.P12688989067690485825

`3%A043562(n)`
-/

namespace A377191.P12688989067690485825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A043562 n)

end

end A377191.P12688989067690485825

/-! ## A377191.P1338658610838277964

`7%A261675(n)`
-/

namespace A377191.P1338658610838277964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A261675 n)

end

end A377191.P1338658610838277964

/-! ## A377191.P2234968119022009030

`floor(sqrt(A248327(n)))`
-/

namespace A377191.P2234968119022009030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A248327 n)

end

end A377191.P2234968119022009030

/-! ## A377191.P4858253129294574869

`char[comp[A020485(n)]]`
-/

namespace A377191.P4858253129294574869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A377191.P4858253129294574869

/-! ## A377191.P10898876033033022714

`char[comp[A047813(n)]]`
-/

namespace A377191.P10898876033033022714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A377191.P10898876033033022714

/-! ## A377191.P11152400914330382469

`char[comp[A261423(n)]]`
-/

namespace A377191.P11152400914330382469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A377191.P11152400914330382469

/-! ## A377191.P13076784303395170322

`char[comp[A262188(n)]]`
-/

namespace A377191.P13076784303395170322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A377191.P13076784303395170322

/-! ## A377191.P16106483129449353902

`char[comp[A265525(n)]]`
-/

namespace A377191.P16106483129449353902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A377191.P16106483129449353902

/-! ## A377191.P16216654447690390225

`char[lt[1, A072137(n)]]`
-/

namespace A377191.P16216654447690390225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A377191.P16216654447690390225

/-! ## A377191.P6845136947090920392

`char[comp[A002113(n+1)]]`
-/

namespace A377191.P6845136947090920392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A377191.P6845136947090920392

/-! ## A377191.P1113257133022554250

`A049310(C(2, A256756(n)))`
-/

namespace A377191.P1113257133022554250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (Nat.choose 2 (A256756 n).toNat)

end

end A377191.P1113257133022554250

/-! ## A377191.P10428906784754447098

`A001222(or(1, A072137(n)))`
-/

namespace A377191.P10428906784754447098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 1 (A072137 n)).toNat

end

end A377191.P10428906784754447098

/-! ## A377191.P9741878034840021876

`char[comp[A033865(n)]]`
-/

namespace A377191.P9741878034840021876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A377191.P9741878034840021876

/-!
# A377192: Smallest number with the property that you have to change at least n digits to get a palindrome.

The programs for A377192, there is no canonical definition to state claims against.
-/

/-! ## A377192.P14160553584857396098

`record[A081857(n+1)-A103461(n)]`
-/

namespace A377192.P14160553584857396098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (n + 1) - A103461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377192.P14160553584857396098

/-! ## A377192.P11284392615421067420

`A002283(comp[2*(n+1)])+A002275(n)`
-/

namespace A377192.P11284392615421067420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A002275 n

end

end A377192.P11284392615421067420

/-! ## A377192.P9322424795006723321

`A002283(A004273(n))+round(and(10^n, -2)/9)`
-/

namespace A377192.P9322424795006723321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (A004273 n).toNat + SequenceMachineLib.roundAway ((Int.land (10 ^ n : ℤ) (-2) : ℚ) / 9)

end

end A377192.P9322424795006723321

/-! ## A377192.P5280595831626907477

`A002283(A004273(n))+∑[A178501(n)]`
-/

namespace A377192.P5280595831626907477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (A004273 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377192.P5280595831626907477

/-!
# A377194: Expansion of 1/(1 - 4*x*(1+x)^2)^(3/2).

The programs for A377194, there is no canonical definition to state claims against.
-/

/-! ## A377194.P3333865022231825880

`A004525(A052919(n)*A186924(n))`
-/

namespace A377194.P3333865022231825880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A052919 n * A186924 n).toNat

end

end A377194.P3333865022231825880

/-!
# A377195: Expansion of 1/(1 - 4*x*(1+x)^2)^(5/2).

The programs for A377195, there is no canonical definition to state claims against.
-/

/-! ## A377195.P16087442433630907497

`A144338(A388411(n))-A000959(n+1)`
-/

namespace A377195.P16087442433630907497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (A388411 n).toNat - A000959 (n + 1)

end

end A377195.P16087442433630907497

/-!
# A377197: Expansion of 1/(1 - 4*x/(1-x))^(3/2).

The programs for A377197, the canonical program `A377197.P5113279114065174890` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377197 has offset 0).

The definition of A377197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377197.P5113279114065174890

`(6*n*a(n-1)-5*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377197

/-- `(6*n*a(n-1)-5*(n-2)*a(n-2))/n` -/
def P5113279114065174890.Spec : Prop :=
  ∀ n, P5113279114065174890.a n = (A377197 n : ℚ)

end A377197

/-! ## A377197.P17589623613358627710

`A163842(A057427(n)+A000217(n))`
-/

namespace A377197.P17589623613358627710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (A057427 n + A000217 n).toNat

end

end A377197.P17589623613358627710

namespace A377197

/-- `A163842(A057427(n)+A000217(n))` -/
def P17589623613358627710.Spec : Prop :=
  ∀ n, P17589623613358627710.a n = A377197 n

end A377197

/-! ## A377197.P15260741535735816841

`A163842(A000124(n)-A000007(n))`
-/

namespace A377197.P15260741535735816841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (A000124 n - A000007 n).toNat

end

end A377197.P15260741535735816841

namespace A377197

/-- `A163842(A000124(n)-A000007(n))` -/
def P15260741535735816841.Spec : Prop :=
  ∀ n, P15260741535735816841.a n = A377197 n

end A377197

/-! ## A377197.P6104538660901470742

`A163842(A323022(n+1)+A000217(n))`
-/

namespace A377197.P6104538660901470742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (A323022 (n + 1) + A000217 n).toNat

end

end A377197.P6104538660901470742

namespace A377197

/-- `A163842(A323022(n+1)+A000217(n))` -/
def P6104538660901470742.Spec : Prop :=
  ∀ n, P6104538660901470742.a n = A377197 n

end A377197

/-! ## A377197.P5588175949663918559

`A163842(eq[1, A267480(n)])`
-/

namespace A377197.P5588175949663918559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377197.P5588175949663918559

namespace A377197

/-- `A163842(eq[1, A267480(n)])` -/
def P5588175949663918559.Spec : Prop :=
  ∀ n, P5588175949663918559.a n = A377197 n

end A377197

/-!
# A377198: Expansion of 1/(1 - 4*x/(1-x)^2)^(3/2).

The programs for A377198, the canonical program `A377198.P8471227929727770088` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377198 has offset 0).

The definition of A377198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377198.P8471227929727770088

`((7*n-1)*a(n-1)-(7*n-20)*a(n-2)+(n-3)*a(n-3))/n` with `a(0)=1, a(1)=6, a(2)=42`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377198

/-- `((7*n-1)*a(n-1)-(7*n-20)*a(n-2)+(n-3)*a(n-3))/n` -/
def P8471227929727770088.Spec : Prop :=
  ∀ n, P8471227929727770088.a n = (A377198 n : ℚ)

end A377198

/-!
# A377199: Expansion of 1/(1 - 4*x/(1-x))^(5/2).

The programs for A377199, the canonical program `A377199.P8315431317473134197` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377199 has offset 0).

The definition of A377199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377199.P8315431317473134197

`(2*(3*n+2)*a(n-1)-5*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377199

/-- `(2*(3*n+2)*a(n-1)-5*(n-2)*a(n-2))/n` -/
def P8315431317473134197.Spec : Prop :=
  ∀ n, P8315431317473134197.a n = (A377199 n : ℚ)

end A377199

