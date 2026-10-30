import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C039
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-! ## A377101.P3147060798179060724

`A289497(A227899(n+1)+A000984(n))`
-/

namespace A377101.P3147060798179060724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A227899 (n + 1) + A000984 n).toNat

end

end A377101.P3147060798179060724

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

/-! ## A377108.P10627691124475018624

`A350656(A026801(n+1)%A217927(3*n+2))`
-/

namespace A377108.P10627691124475018624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350656 (Int.tmod (A026801 (n + 1)) (A217927 (3 * n + 2))).toNat

end

end A377108.P10627691124475018624

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

/-! ## A377108.P2418092296770716129

`A350656(A026801(n+1)%A250022(n+1))`
-/

namespace A377108.P2418092296770716129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350656 (Int.tmod (A026801 (n + 1)) (A250022 (n + 1))).toNat

end

end A377108.P2418092296770716129

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

The programs for A377109, the canonical program `A377109.P4469544860175913685` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377109 has offset 0).

The definition of A377109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377109.P11013866405063021024

`ogf((1-6x+7x^2+2x^3)/(1-8x+14x^2+8x^3-23x^4))`
-/

namespace A377109.P11013866405063021024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 7, 2] [1, -8, 14, 8, -23] n

end

end A377109.P11013866405063021024

namespace A377109

/-- `ogf((1-6x+7x^2+2x^3)/(1-8x+14x^2+8x^3-23x^4))` -/
def P11013866405063021024.Spec : Prop :=
  ∀ n, P11013866405063021024.a n = A377109 n

end A377109

/-! ## A377109.P4469544860175913685

`8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=38`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377109

/-- `8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` -/
def P4469544860175913685.Spec : Prop :=
  ∀ n, P4469544860175913685.a n = A377109 n

theorem P4469544860175913685.correct : P4469544860175913685.Spec := by
  intro n
  simp only [A377109]

end A377109

/-! ## A377109.P14082418275171176710

`∑{#}[n, C(n, #)*A188570(#)]`
-/

namespace A377109.P14082418275171176710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A188570 k

end

end A377109.P14082418275171176710

namespace A377109

/-- `∑{#}[n, C(n, #)*A188570(#)]` -/
def P14082418275171176710.Spec : Prop :=
  ∀ n, P14082418275171176710.a n = A377109 n

end A377109

/-! ## A377109.P5339544977960730039

`∑{#}[n, (-1)^(n-#)*C(n, #)*A377113(#)]`
-/

namespace A377109.P5339544977960730039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A377113 k : ℚ)

end

end A377109.P5339544977960730039

namespace A377109

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A377113(#)]` -/
def P5339544977960730039.Spec : Prop :=
  ∀ n, P5339544977960730039.a n = (A377109 n : ℚ)

end A377109

/-!
# A377110: a(n) = coefficient of sqrt(2) in the expansion of (2 + sqrt(2) + sqrt(3))^n.

The programs for A377110, the canonical program `A377110.P9546124040608554708` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377110 has offset 0).

The definition of A377110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377110.P3350797940237802908

`ogf((x-4x^2+5x^3)/(1-8x+14x^2+8x^3-23x^4))`
-/

namespace A377110.P3350797940237802908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -4, 5] [1, -8, 14, 8, -23] n

end

end A377110.P3350797940237802908

namespace A377110

/-- `ogf((x-4x^2+5x^3)/(1-8x+14x^2+8x^3-23x^4))` -/
def P3350797940237802908.Spec : Prop :=
  ∀ n, P3350797940237802908.a n = A377110 n

end A377110

/-! ## A377110.P9546124040608554708

`8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=23`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377110

/-- `8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` -/
def P9546124040608554708.Spec : Prop :=
  ∀ n, P9546124040608554708.a n = A377110 n

theorem P9546124040608554708.correct : P9546124040608554708.Spec := by
  intro n
  simp only [A377110]

end A377110

/-! ## A377110.P17801898895896364955

`∑{#}[n, C(n, #)*A188571(#)]`
-/

namespace A377110.P17801898895896364955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A188571 k

end

end A377110.P17801898895896364955

namespace A377110

/-- `∑{#}[n, C(n, #)*A188571(#)]` -/
def P17801898895896364955.Spec : Prop :=
  ∀ n, P17801898895896364955.a n = A377110 n

end A377110

/-! ## A377110.P5024759475877243449

`∑{#}[n, (-1)^(n-#)*C(n, #)*A377114(#)]`
-/

namespace A377110.P5024759475877243449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A377114 k : ℚ)

end

end A377110.P5024759475877243449

namespace A377110

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A377114(#)]` -/
def P5024759475877243449.Spec : Prop :=
  ∀ n, P5024759475877243449.a n = (A377110 n : ℚ)

end A377110

/-!
# A377111: a(n) = coefficient of sqrt(3) in the expansion of (2 + sqrt(2) + sqrt(3))^n.

The programs for A377111, the canonical program `A377111.P15457899144143238899` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377111 has offset 0).

The definition of A377111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377111.P6946801443675209314

`ogf((x-4x^2+3x^3)/(1-8x+14x^2+8x^3-23x^4))`
-/

namespace A377111.P6946801443675209314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -4, 3] [1, -8, 14, 8, -23] n

end

end A377111.P6946801443675209314

namespace A377111

/-- `ogf((x-4x^2+3x^3)/(1-8x+14x^2+8x^3-23x^4))` -/
def P6946801443675209314.Spec : Prop :=
  ∀ n, P6946801443675209314.a n = A377111 n

end A377111

/-! ## A377111.P15457899144143238899

`8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=21`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377111

/-- `8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` -/
def P15457899144143238899.Spec : Prop :=
  ∀ n, P15457899144143238899.a n = A377111 n

theorem P15457899144143238899.correct : P15457899144143238899.Spec := by
  intro n
  simp only [A377111]

end A377111

/-! ## A377111.P12306734493620325980

`∑{#}[n, C(n, #)*A188572(#)]`
-/

namespace A377111.P12306734493620325980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A188572 k

end

end A377111.P12306734493620325980

namespace A377111

/-- `∑{#}[n, C(n, #)*A188572(#)]` -/
def P12306734493620325980.Spec : Prop :=
  ∀ n, P12306734493620325980.a n = A377111 n

end A377111

/-! ## A377111.P5720622664077256558

`∑{#}[n, (-1)^(n-#)*C(n, #)*A377115(#)]`
-/

namespace A377111.P5720622664077256558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A377115 k : ℚ)

end

end A377111.P5720622664077256558

namespace A377111

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A377115(#)]` -/
def P5720622664077256558.Spec : Prop :=
  ∀ n, P5720622664077256558.a n = (A377111 n : ℚ)

end A377111

/-!
# A377112: a(n) = coefficient of sqrt(6) in the expansion of (2 + sqrt(2) + sqrt(3))^n.

The programs for A377112, the canonical program `A377112.P15771709293350858854` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377112 has offset 0).

The definition of A377112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377112.P4234187351745190845

`ogf((2x^2-4x^3)/(1-8x+14x^2+8x^3-23x^4))`
-/

namespace A377112.P4234187351745190845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -4] [1, -8, 14, 8, -23] n

end

end A377112.P4234187351745190845

namespace A377112

/-- `ogf((2x^2-4x^3)/(1-8x+14x^2+8x^3-23x^4))` -/
def P4234187351745190845.Spec : Prop :=
  ∀ n, P4234187351745190845.a n = A377112 n

end A377112

/-! ## A377112.P15771709293350858854

`8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=12`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377112

/-- `8*a(n-1)-14*a(n-2)-8*a(n-3)+23*a(n-4)` -/
def P15771709293350858854.Spec : Prop :=
  ∀ n, P15771709293350858854.a n = A377112 n

theorem P15771709293350858854.correct : P15771709293350858854.Spec := by
  intro n
  simp only [A377112]

end A377112

/-! ## A377112.P8521614016563467275

`∑{#}[n, C(n, #)*A188573(#)]`
-/

namespace A377112.P8521614016563467275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A188573 k

end

end A377112.P8521614016563467275

namespace A377112

/-- `∑{#}[n, C(n, #)*A188573(#)]` -/
def P8521614016563467275.Spec : Prop :=
  ∀ n, P8521614016563467275.a n = A377112 n

end A377112

/-! ## A377112.P13090798595298719691

`∑{#}[n, (-1)^(n-#)*C(n, #)*A377116(#)]`
-/

namespace A377112.P13090798595298719691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A377116 k : ℚ)

end

end A377112.P13090798595298719691

namespace A377112

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A377116(#)]` -/
def P13090798595298719691.Spec : Prop :=
  ∀ n, P13090798595298719691.a n = (A377112 n : ℚ)

end A377112

/-!
# A377113: a(n) = coefficient of the term that is independent of sqrt(2), sqrt(3), and sqrt(6) in the expansion of (3 + sqrt(2) + sqrt(3))^n.

The programs for A377113, the canonical program `A377113.P8879792708680173058` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377113 has offset 0).

The definition of A377113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377113.P9501404806774281397

`ogf((1-9x+22x^2-12x^3)/(1-12x+44x^2-48x^3-8x^4))`
-/

namespace A377113.P9501404806774281397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9, 22, -12] [1, -12, 44, -48, -8] n

end

end A377113.P9501404806774281397

namespace A377113

/-- `ogf((1-9x+22x^2-12x^3)/(1-12x+44x^2-48x^3-8x^4))` -/
def P9501404806774281397.Spec : Prop :=
  ∀ n, P9501404806774281397.a n = A377113 n

end A377113

/-! ## A377113.P8879792708680173058

`12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=3, a(2)=14, a(3)=72`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377113

/-- `12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` -/
def P8879792708680173058.Spec : Prop :=
  ∀ n, P8879792708680173058.a n = A377113 n

theorem P8879792708680173058.correct : P8879792708680173058.Spec := by
  intro n
  simp only [A377113]

end A377113

/-! ## A377113.P13256419373986023684

`∑{#}[n, C(n, #)*A377109(#)]`
-/

namespace A377113.P13256419373986023684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A377109 k

end

end A377113.P13256419373986023684

namespace A377113

/-- `∑{#}[n, C(n, #)*A377109(#)]` -/
def P13256419373986023684.Spec : Prop :=
  ∀ n, P13256419373986023684.a n = A377113 n

end A377113

/-!
# A377114: a(n) = coefficient of sqrt(2) in the expansion of (3 + sqrt(2) + sqrt(3))^n.

The programs for A377114, the canonical program `A377114.P12035356588864379255` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377114 has offset 0).

The definition of A377114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377114.P13378679678113748268

`ogf((x-6x^2+10x^3)/(1-12x+44x^2-48x^3-8x^4))`
-/

namespace A377114.P13378679678113748268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -6, 10] [1, -12, 44, -48, -8] n

end

end A377114.P13378679678113748268

namespace A377114

/-- `ogf((x-6x^2+10x^3)/(1-12x+44x^2-48x^3-8x^4))` -/
def P13378679678113748268.Spec : Prop :=
  ∀ n, P13378679678113748268.a n = A377114 n

end A377114

/-! ## A377114.P12035356588864379255

`12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=38`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377114

/-- `12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` -/
def P12035356588864379255.Spec : Prop :=
  ∀ n, P12035356588864379255.a n = A377114 n

theorem P12035356588864379255.correct : P12035356588864379255.Spec := by
  intro n
  simp only [A377114]

end A377114

/-! ## A377114.P16894889188643624203

`∑{#}[n, C(n, #)*A377110(#)]`
-/

namespace A377114.P16894889188643624203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A377110 k

end

end A377114.P16894889188643624203

namespace A377114

/-- `∑{#}[n, C(n, #)*A377110(#)]` -/
def P16894889188643624203.Spec : Prop :=
  ∀ n, P16894889188643624203.a n = A377114 n

end A377114

/-!
# A377115: a(n) = coefficient of sqrt(3) in the expansion of (3 + sqrt(2) + sqrt(3))^n.

The programs for A377115, the canonical program `A377115.P13558609988100347718` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377115 has offset 0).

The definition of A377115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377115.P9138024541950736316

`ogf((x-6x^2+8x^3)/(1-12x+44x^2-48x^3-8x^4))`
-/

namespace A377115.P9138024541950736316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -6, 8] [1, -12, 44, -48, -8] n

end

end A377115.P9138024541950736316

namespace A377115

/-- `ogf((x-6x^2+8x^3)/(1-12x+44x^2-48x^3-8x^4))` -/
def P9138024541950736316.Spec : Prop :=
  ∀ n, P9138024541950736316.a n = A377115 n

end A377115

/-! ## A377115.P13558609988100347718

`12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=36`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377115

/-- `12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` -/
def P13558609988100347718.Spec : Prop :=
  ∀ n, P13558609988100347718.a n = A377115 n

theorem P13558609988100347718.correct : P13558609988100347718.Spec := by
  intro n
  simp only [A377115]

end A377115

/-! ## A377115.P13262463394437783939

`∑{#}[n, C(n, #)*A377111(#)]`
-/

namespace A377115.P13262463394437783939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A377111 k

end

end A377115.P13262463394437783939

namespace A377115

/-- `∑{#}[n, C(n, #)*A377111(#)]` -/
def P13262463394437783939.Spec : Prop :=
  ∀ n, P13262463394437783939.a n = A377115 n

end A377115

/-!
# A377116: a(n) = coefficient of sqrt(6) in the expansion of (3 + sqrt(2) + sqrt(3))^n.

The programs for A377116, the canonical program `A377116.P10066225661394656742` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377116 has offset 0).

The definition of A377116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377116.P4887846405811627232

`ogf((2x^2-6x^3)/(1-12x+44x^2-48x^3-8x^4))`
-/

namespace A377116.P4887846405811627232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -6] [1, -12, 44, -48, -8] n

end

end A377116.P4887846405811627232

namespace A377116

/-- `ogf((2x^2-6x^3)/(1-12x+44x^2-48x^3-8x^4))` -/
def P4887846405811627232.Spec : Prop :=
  ∀ n, P4887846405811627232.a n = A377116 n

end A377116

/-! ## A377116.P10066225661394656742

`12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=18`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377116

/-- `12*a(n-1)-44*a(n-2)+48*a(n-3)+8*a(n-4)` -/
def P10066225661394656742.Spec : Prop :=
  ∀ n, P10066225661394656742.a n = A377116 n

theorem P10066225661394656742.correct : P10066225661394656742.Spec := by
  intro n
  simp only [A377116]

end A377116

/-! ## A377116.P8523972550753230243

`∑{#}[n, C(n, #)*A377112(#)]`
-/

namespace A377116.P8523972550753230243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A377112 k

end

end A377116.P8523972550753230243

namespace A377116

/-- `∑{#}[n, C(n, #)*A377112(#)]` -/
def P8523972550753230243.Spec : Prop :=
  ∀ n, P8523972550753230243.a n = A377116 n

end A377116

/-!
# A377117: a(n) = coefficient of the term that is independent of 2^(1/3) and 2^(2/3) in the expansion of (2^(1/3) + 2^(2/3))^n.

The programs for A377117, the canonical program `A377117.P3513186085625323130` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377117 has offset 0).

The definition of A377117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377117.P10717688782361927756

`ogf((1+x-2x^2-6x^3-6x^4)/(1-6x^2-6x^3))`
-/

namespace A377117.P10717688782361927756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -6, -6] [1, 0, -6, -6] n

end

end A377117.P10717688782361927756

namespace A377117

/-- `ogf((1+x-2x^2-6x^3-6x^4)/(1-6x^2-6x^3))` -/
def P10717688782361927756.Spec : Prop :=
  ∀ n, P10717688782361927756.a n = A377117 n

end A377117

/-! ## A377117.P3513186085625323130

`6*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=6, a(4)=24`

The canonical program, it is in `Seq.B000.C048`.
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

The programs for A377118, the canonical program `A377118.P16566090511075571075` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377118 has offset 0).

The definition of A377118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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

/-! ## A377118.P16566090511075571075

`6*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377118

/-- `6*a(n-2)+6*a(n-3)` -/
def P16566090511075571075.Spec : Prop :=
  ∀ n, (P16566090511075571075.a n : ℤ) = A377118 n

theorem P16566090511075571075.correct : P16566090511075571075.Spec := by
  intro n
  simp only [A377118]

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

/-! ## A377118.P17079362336988836170

`∑{#}[n, (-1)^(n-#)*C(n, #)*A377315(#)]`
-/

namespace A377118.P17079362336988836170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A377315 k : ℚ)

end

end A377118.P17079362336988836170

namespace A377118

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A377315(#)]` -/
def P17079362336988836170.Spec : Prop :=
  ∀ n, P17079362336988836170.a n = (A377118 n : ℚ)

end A377118

/-!
# A377119: a(n) = coefficient of 2^(2/3) in the expansion of (2^(1/3) + 2^(2/3))^n.

The programs for A377119, the canonical program `A377119.P712227800788692233` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377119 has offset 0).

The definition of A377119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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

/-! ## A377119.P712227800788692233

`6*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377119

/-- `6*a(n-2)+6*a(n-3)` -/
def P712227800788692233.Spec : Prop :=
  ∀ n, (P712227800788692233.a n : ℤ) = A377119 n

theorem P712227800788692233.correct : P712227800788692233.Spec := by
  intro n
  simp only [A377119]

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

/-! ## A377119.P2792410303010915963

`∑{#}[n, (-1)^(n-#)*C(n, #)*A108368(#)]`
-/

namespace A377119.P2792410303010915963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A108368 k : ℚ)

end

end A377119.P2792410303010915963

namespace A377119

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A108368(#)]` -/
def P2792410303010915963.Spec : Prop :=
  ∀ n, P2792410303010915963.a n = (A377119 n : ℚ)

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

The programs for A377121, the canonical program `A377121.P11187764455851854479` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377121 has offset 1).

The definition of A377121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377121.P11187764455851854479

`record[(n+1)/A090387(A000010(n+1))]`

The canonical program, it is in `Seq.B003.C005`.
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

/-! ## A377122.P14394444226885781857

`A130734(A339507(n+1))`
-/

namespace A377122.P14394444226885781857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A339507 (n + 1)).toNat

end

end A377122.P14394444226885781857

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

/-! ## A377123.P4824876081008822507

`A378961(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A377123.P4824876081008822507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A378961 (n + 1) + a (A023443 n).toNat

end

end A377123.P4824876081008822507

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

/-! ## A377124.P17821561091538940085

`A376838(1+n)%8`
-/

namespace A377124.P17821561091538940085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376838 (1 + n)) 8

end

end A377124.P17821561091538940085

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

/-! ## A377128.P14469502649817737971

`A185238(and(n, A000041(2*n+3)))`
-/

namespace A377128.P14469502649817737971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (Int.land (n : ℤ) (A000041 (2 * n + 3))).toNat

end

end A377128.P14469502649817737971

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

/-! ## A377142.P13285474763125812839

`and(-9, A291901(n+1))`
-/

namespace A377142.P13285474763125812839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-9) (A291901 (n + 1))

end

end A377142.P13285474763125812839

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

/-!
# A377145: a(n) = Sum_{k=0..n} binomial(k+2,2) * binomial(k,n-k)^2.

The programs for A377145, the canonical program `A377145.P10585403693191859163` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377145 has offset 0).

The definition of A377145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#+2, 2)*C(#, n-#)²]` (program `A377145.P10585403693191859163`, by `A377145.P10585403693191859163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377145.P10585403693191859163

`∑{#}[n, C(#+2, 2)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377145

/-- `∑{#}[n, C(#+2, 2)*C(#, n-#)²]` -/
def P10585403693191859163.Spec : Prop :=
  ∀ n, (P10585403693191859163.a n : ℤ) = A377145 n

theorem P10585403693191859163.correct : P10585403693191859163.Spec := by
  intro n
  simp only [A377145]

end A377145

/-! ## A377145.P9565822476140482772

`A299499(A167614(n+1)-1)`
-/

namespace A377145.P9565822476140482772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A167614 (n + 1) - 1).toNat

end

end A377145.P9565822476140482772

namespace A377145

/-- `A299499(A167614(n+1)-1)` -/
def P9565822476140482772.Spec : Prop :=
  ∀ n, P9565822476140482772.a n = A377145 n

end A377145

/-! ## A377145.P16891390220556867818

`A299499(A000217(n+2)+2)`
-/

namespace A377145.P16891390220556867818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A000217 (n + 2) + 2).toNat

end

end A377145.P16891390220556867818

namespace A377145

/-- `A299499(A000217(n+2)+2)` -/
def P16891390220556867818.Spec : Prop :=
  ∀ n, P16891390220556867818.a n = A377145 n

end A377145

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

namespace A377145

/-- `A299499(eq[3, A002260(n+1)])` -/
def P5630234187537209.Spec : Prop :=
  ∀ n, P5630234187537209.a n = A377145 n

end A377145

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

namespace A377145

/-- `A299499(A099047(n+1)+∑[n])` -/
def P2063069368616983171.Spec : Prop :=
  ∀ n, P2063069368616983171.a n = A377145 n

end A377145

/-!
# A377146: a(n) = Sum_{k=0..floor(n/2)} binomial(k+2,2) * binomial(k,n-2*k)^2.

The programs for A377146, the canonical program `A377146.P4614409254658908709` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377146 has offset 0).

The definition of A377146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(#+2, 2)*C(#, n-2*#)²]` (program `A377146.P4614409254658908709`, by `A377146.P4614409254658908709.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377146.P4614409254658908709

`∑{#}[floor(n/2), C(#+2, 2)*C(#, n-2*#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377146

/-- `∑{#}[floor(n/2), C(#+2, 2)*C(#, n-2*#)²]` -/
def P4614409254658908709.Spec : Prop :=
  ∀ n, (P4614409254658908709.a n : ℤ) = A377146 n

theorem P4614409254658908709.correct : P4614409254658908709.Spec := by
  intro n
  simp only [A377146]

end A377146

/-!
# A377147: a(n) = Sum_{k=0..floor(n/3)} binomial(k+2,2) * binomial(k,n-3*k)^2.

The programs for A377147, the canonical program `A377147.P15564233089359234331` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377147 has offset 0).

The definition of A377147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(#+2, 2)*C(#, n-3*#)²]` (program `A377147.P15564233089359234331`, by `A377147.P15564233089359234331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377147.P15564233089359234331

`∑{#}[floor(n/3), C(#+2, 2)*C(#, n-3*#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377147

/-- `∑{#}[floor(n/3), C(#+2, 2)*C(#, n-3*#)²]` -/
def P15564233089359234331.Spec : Prop :=
  ∀ n, (P15564233089359234331.a n : ℤ) = A377147 n

theorem P15564233089359234331.correct : P15564233089359234331.Spec := by
  intro n
  simp only [A377147]

end A377147

/-!
# A377148: a(n) = Sum_{k=0..n} binomial(k+3,3) * binomial(k,n-k)^2.

The programs for A377148, the canonical program `A377148.P16200827614478729172` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377148 has offset 0).

The definition of A377148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#+3, 3)*C(#, n-#)²]` (program `A377148.P16200827614478729172`, by `A377148.P16200827614478729172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377148.P16200827614478729172

`∑{#}[n, C(#+3, 3)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377148

/-- `∑{#}[n, C(#+3, 3)*C(#, n-#)²]` -/
def P16200827614478729172.Spec : Prop :=
  ∀ n, (P16200827614478729172.a n : ℤ) = A377148 n

theorem P16200827614478729172.correct : P16200827614478729172.Spec := by
  intro n
  simp only [A377148]

end A377148

/-! ## A377148.P8326150055071414465

`A299499(A167614(n+2))`
-/

namespace A377148.P8326150055071414465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A167614 (n + 2)).toNat

end

end A377148.P8326150055071414465

namespace A377148

/-- `A299499(A167614(n+2))` -/
def P8326150055071414465.Spec : Prop :=
  ∀ n, P8326150055071414465.a n = A377148 n

end A377148

/-! ## A377148.P1647442047716132088

`A299499(A055999(n)+9)`
-/

namespace A377148.P1647442047716132088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A055999 n + 9).toNat

end

end A377148.P1647442047716132088

namespace A377148

/-- `A299499(A055999(n)+9)` -/
def P1647442047716132088.Spec : Prop :=
  ∀ n, P1647442047716132088.a n = A377148 n

end A377148

/-! ## A377148.P1344475386443203930

`A299499(A000124(n+3)+2)`
-/

namespace A377148.P1344475386443203930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A000124 (n + 3) + 2).toNat

end

end A377148.P1344475386443203930

namespace A377148

/-- `A299499(A000124(n+3)+2)` -/
def P1344475386443203930.Spec : Prop :=
  ∀ n, P1344475386443203930.a n = A377148 n

end A377148

/-!
# A377149: a(n) = Sum_{k=0..floor(n/2)} binomial(k+3,3) * binomial(k,n-2*k)^2.

The programs for A377149, the canonical program `A377149.P6034539112607176289` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377149 has offset 0).

The definition of A377149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(#+3, 3)*C(#, n-2*#)²]` (program `A377149.P6034539112607176289`, by `A377149.P6034539112607176289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377149.P6034539112607176289

`∑{#}[floor(n/2), C(#+3, 3)*C(#, n-2*#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377149

/-- `∑{#}[floor(n/2), C(#+3, 3)*C(#, n-2*#)²]` -/
def P6034539112607176289.Spec : Prop :=
  ∀ n, (P6034539112607176289.a n : ℤ) = A377149 n

theorem P6034539112607176289.correct : P6034539112607176289.Spec := by
  intro n
  simp only [A377149]

end A377149

/-!
# A377150: a(n) = Sum_{k=0..floor(n/3)} binomial(k+3,3) * binomial(k,n-3*k)^2.

The programs for A377150, the canonical program `A377150.P17483558602326970700` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377150 has offset 0).

The definition of A377150 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(#+3, 3)*C(#, n-3*#)²]` (program `A377150.P17483558602326970700`, by `A377150.P17483558602326970700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377150.P17483558602326970700

`∑{#}[floor(n/3), C(#+3, 3)*C(#, n-3*#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377150

/-- `∑{#}[floor(n/3), C(#+3, 3)*C(#, n-3*#)²]` -/
def P17483558602326970700.Spec : Prop :=
  ∀ n, (P17483558602326970700.a n : ℤ) = A377150 n

theorem P17483558602326970700.correct : P17483558602326970700.Spec := by
  intro n
  simp only [A377150]

end A377150

/-!
# A377152: a(n) = Sum_{k=0..n} binomial(k+4,4) * binomial(k,n-k)^2.

The programs for A377152, the canonical program `A377152.P17261015440268201457` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377152 has offset 0).

The definition of A377152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#+4, 4)*C(#, n-#)²]` (program `A377152.P17261015440268201457`, by `A377152.P17261015440268201457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377152.P17261015440268201457

`∑{#}[n, C(#+4, 4)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377152

/-- `∑{#}[n, C(#+4, 4)*C(#, n-#)²]` -/
def P17261015440268201457.Spec : Prop :=
  ∀ n, (P17261015440268201457.a n : ℤ) = A377152 n

theorem P17261015440268201457.correct : P17261015440268201457.Spec := by
  intro n
  simp only [A377152]

end A377152

/-! ## A377152.P10969551339096711381

`A299499(A000217(n+4)+4)`
-/

namespace A377152.P10969551339096711381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A000217 (n + 4) + 4).toNat

end

end A377152.P10969551339096711381

namespace A377152

/-- `A299499(A000217(n+4)+4)` -/
def P10969551339096711381.Spec : Prop :=
  ∀ n, P10969551339096711381.a n = A377152 n

end A377152

/-! ## A377152.P16968395544606267908

`A299499(A051936(n+4)+13)`
-/

namespace A377152.P16968395544606267908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A051936 (n + 4) + 13).toNat

end

end A377152.P16968395544606267908

namespace A377152

/-- `A299499(A051936(n+4)+13)` -/
def P16968395544606267908.Spec : Prop :=
  ∀ n, P16968395544606267908.a n = A377152 n

end A377152

/-!
# A377153: a(n) = Sum_{k=0..n} binomial(k+5,5) * binomial(k,n-k)^2.

The programs for A377153, the canonical program `A377153.P1152614977315309173` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377153 has offset 0).

The definition of A377153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#+5, 5)*C(#, n-#)²]` (program `A377153.P1152614977315309173`, by `A377153.P1152614977315309173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377153.P1152614977315309173

`∑{#}[n, C(#+5, 5)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377153

/-- `∑{#}[n, C(#+5, 5)*C(#, n-#)²]` -/
def P1152614977315309173.Spec : Prop :=
  ∀ n, (P1152614977315309173.a n : ℤ) = A377153 n

theorem P1152614977315309173.correct : P1152614977315309173.Spec := by
  intro n
  simp only [A377153]

end A377153

/-! ## A377153.P8605653795017367157

`A299499(A167499(n+4))`
-/

namespace A377153.P8605653795017367157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A167499 (n + 4)).toNat

end

end A377153.P8605653795017367157

namespace A377153

/-- `A299499(A167499(n+4))` -/
def P8605653795017367157.Spec : Prop :=
  ∀ n, P8605653795017367157.a n = A377153 n

end A377153

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

/-! ## A377156.P16845735948017633004

`A398872(A172422(n+2))`
-/

namespace A377156.P16845735948017633004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398872 (A172422 (n + 2)).toNat

end

end A377156.P16845735948017633004

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

/-!
# A377158: a(n) = Sum_{k=0..n} binomial(k+6,6) * binomial(k,n-k)^2.

The programs for A377158, the canonical program `A377158.P4445656886988946876` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377158 has offset 0).

The definition of A377158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#+6, 6)*C(#, n-#)²]` (program `A377158.P4445656886988946876`, by `A377158.P4445656886988946876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377158.P4445656886988946876

`∑{#}[n, C(#+6, 6)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377158

/-- `∑{#}[n, C(#+6, 6)*C(#, n-#)²]` -/
def P4445656886988946876.Spec : Prop :=
  ∀ n, (P4445656886988946876.a n : ℤ) = A377158 n

theorem P4445656886988946876.correct : P4445656886988946876.Spec := by
  intro n
  simp only [A377158]

end A377158

/-!
# A377159: a(n) = Sum_{k=0..n} binomial(k+7,7) * binomial(k,n-k)^2.

The programs for A377159, the canonical program `A377159.P11097124433687800316` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377159 has offset 0).

The definition of A377159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#+7, 7)*C(#, n-#)²]` (program `A377159.P11097124433687800316`, by `A377159.P11097124433687800316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377159.P11097124433687800316

`∑{#}[n, C(#+7, 7)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377159

/-- `∑{#}[n, C(#+7, 7)*C(#, n-#)²]` -/
def P11097124433687800316.Spec : Prop :=
  ∀ n, (P11097124433687800316.a n : ℤ) = A377159 n

theorem P11097124433687800316.correct : P11097124433687800316.Spec := by
  intro n
  simp only [A377159]

end A377159

/-!
# A377160: Numbers k such that A000217(k) is not cubefree.

The programs for A377160, the canonical program `A377160.P11394877982396804790` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377160 has offset 1).

The definition of A377160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377160.P11394877982396804790

`lt[2, A176166(1+n)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A377160

/-- `lt[2, A176166(1+n)]+1` -/
def P11394877982396804790.Spec : Prop :=
  ∀ n, (P11394877982396804790.a n : ℤ) = A377160 (n + 1)

theorem P11394877982396804790.correct : P11394877982396804790.Spec := by
  intro n
  simp only [A377160, Nat.add_sub_cancel]

end A377160

/-! ## A377160.P16649293560743620806

`∑[runs[A209775(A062378(1+n))]]`
-/

namespace A377160.P16649293560743620806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209775 (A062378 (1 + n)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377160.P16649293560743620806

namespace A377160

/-- `∑[runs[A209775(A062378(1+n))]]` -/
def P16649293560743620806.Spec : Prop :=
  ∀ n, (P16649293560743620806.a n : ℤ) = A377160 (n + 1)

end A377160

/-! ## A377160.P8304788363520993860

`∑[runs[A174344(A360540(n+1))]]`
-/

namespace A377160.P8304788363520993860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A360540 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377160.P8304788363520993860

namespace A377160

/-- `∑[runs[A174344(A360540(n+1))]]` -/
def P8304788363520993860.Spec : Prop :=
  ∀ n, (P8304788363520993860.a n : ℤ) = A377160 (n + 1)

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

The programs for A377165, the canonical program `A377165.P12946154727019804590` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377165 has offset 0).

The definition of A377165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `76+275*n` (program `A377165.P12946154727019804590`, by `A377165.P12946154727019804590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377165.P12946154727019804590

`76+275*n`

The canonical program, it is in `Seq.B000.C048`.
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

The programs for A377166, the canonical program `A377166.P13405868699537035248` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377166 has offset 0).

The definition of A377166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((21x+123x^2+129x^3+4x^4+129x^5+123x^6+21x^7)/(1-x-2x^4+2x^5+x^8-x^9))` (program `A377166.P13405868699537035248`, by `A377166.P13405868699537035248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377166.P13405868699537035248

`ogf((21x+123x^2+129x^3+4x^4+129x^5+123x^6+21x^7)/(1-x-2x^4+2x^5+x^8-x^9))`

The canonical program, it is in `Seq.B000.C048`.
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

The programs for A377167, the canonical program `A377167.P5087279671940007888` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377167 has offset 1).

The definition of A377167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377167.P5087279671940007888

`comp[record[and(2*n+3, n+1)]]`

The canonical program, it is in `Seq.B000.C048`.
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

The programs for A377169, the canonical program `A377169.P13273382759041118257` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377169 has offset 1).

The definition of A377169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377169.P13273382759041118257

`comp[or(2*n, n)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377169

/-- `comp[or(2*n, n)]` -/
def P13273382759041118257.Spec : Prop :=
  ∀ n, (P13273382759041118257.a n : ℤ) = A377169 (n + 1)

theorem P13273382759041118257.correct : P13273382759041118257.Spec := by
  intro n
  simp only [A377169, Nat.add_sub_cancel]

end A377169

/-! ## A377169.P2069486479564322943

`comp[and(2*n, -n)+n]`
-/

namespace A377169.P2069486479564322943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377169.P2069486479564322943

namespace A377169

/-- `comp[and(2*n, -n)+n]` -/
def P2069486479564322943.Spec : Prop :=
  ∀ n, (P2069486479564322943.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P11433309697570493271

`comp[xor(n, and(2*n, -n))]`
-/

namespace A377169.P11433309697570493271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (2 * n : ℤ) (-(n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377169.P11433309697570493271

namespace A377169

/-- `comp[xor(n, and(2*n, -n))]` -/
def P11433309697570493271.Spec : Prop :=
  ∀ n, (P11433309697570493271.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P11430847418639661055

`comp[or(n+n, n)-1]+1`
-/

namespace A377169.P11430847418639661055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (n + n) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377169.P11430847418639661055

namespace A377169

/-- `comp[or(n+n, n)-1]+1` -/
def P11430847418639661055.Spec : Prop :=
  ∀ n, (P11430847418639661055.a n : ℤ) = A377169 (n + 1)

end A377169

/-! ## A377169.P13274434844152079423

`comp[xor(n, floor(n/2))+n+ceil(n/2)]`
-/

namespace A377169.P13274434844152079423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + ((n : ℤ) + ⌈(n : ℚ) / 2⌉)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377169.P13274434844152079423

namespace A377169

/-- `comp[xor(n, floor(n/2))+n+ceil(n/2)]` -/
def P13274434844152079423.Spec : Prop :=
  ∀ n, (P13274434844152079423.a n : ℤ) = A377169 (n + 1)

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

/-! ## A377169.P6975127080509249368

`∑[runs[n-A173022(n)]]`
-/

namespace A377169.P6975127080509249368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A173022 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377169.P6975127080509249368

namespace A377169

/-- `∑[runs[n-A173022(n)]]` -/
def P6975127080509249368.Spec : Prop :=
  ∀ n, (P6975127080509249368.a n : ℤ) = A377169 (n + 1)

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
# A377170: Sum of the nonnegative terms in the n-th row of A365968.

The programs for A377170, the canonical program `A377170.P17835521171478167915` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377170 has offset 0).

The definition of A377170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A384868, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A377170.P17835521171478167915

`1/2*∑{#}[2^n-1, abs(A384868(#+2^n-1))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A377170

/-- `1/2*∑{#}[2^n-1, abs(A384868(#+2^n-1))]` -/
def P17835521171478167915.Spec : Prop :=
  ∀ n, P17835521171478167915.a n = (A377170 n : ℚ)

end A377170

/-! ## A377170.P15677445314693695392

`A118041(n)-A000194(A000522(n))`
-/

namespace A377170.P15677445314693695392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118041 n - A000194 (A000522 n).toNat

end

end A377170.P15677445314693695392

namespace A377170

/-- `A118041(n)-A000194(A000522(n))` -/
def P15677445314693695392.Spec : Prop :=
  ∀ n, P15677445314693695392.a n = A377170 n

end A377170

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

/-! ## A377178.P8996394774501870764

`A059350(comp[A304090(2*n+1)-A282291(n+1)]+1)`
-/

namespace A377178.P8996394774501870764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304090 (2 * n + 1) - A282291 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059350 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A377178.P8996394774501870764

/-! ## A377178.P3607509410488241797

`A003629(A030124(n+1)%A101752(n+5))`
-/

namespace A377178.P3607509410488241797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (Int.tmod (A030124 (n + 1)) (A101752 (n + 5))).toNat

end

end A377178.P3607509410488241797

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

/-! ## A377185.P18275158755810488585

`A174726(A007051(n+4))+A001359(n+4)`
-/

namespace A377185.P18275158755810488585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (A007051 (n + 4)).toNat + A001359 (n + 4)

end

end A377185.P18275158755810488585

/-!
# A377186: Expansion of 1/(1 - 4*x^2 - 4*x^3)^(3/2).

The programs for A377186, the canonical program `A377186.P444211418962947482` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377186 has offset 0).

The definition of A377186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377186.P12553338784167625190

`∑{#}[floor(n/2), (2*#+1)*C(2*#, #)*C(#, n-2*#)]`
-/

namespace A377186.P12553338784167625190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 * k + 1) * Nat.choose (2 * k) k * Nat.choose k ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A377186.P12553338784167625190

namespace A377186

/-- `∑{#}[floor(n/2), (2*#+1)*C(2*#, #)*C(#, n-2*#)]` -/
def P12553338784167625190.Spec : Prop :=
  ∀ n, (P12553338784167625190.a n : ℤ) = A377186 n

end A377186

/-! ## A377186.P444211418962947482

`(4*(n+1)*a(n-2)+2*(2*n+3)*a(n-3))/n` with `a(0)=1, a(1)=0, a(2)=6`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377186

/-- `(4*(n+1)*a(n-2)+2*(2*n+3)*a(n-3))/n` -/
def P444211418962947482.Spec : Prop :=
  ∀ n, P444211418962947482.a n = (A377186 n : ℚ)

end A377186

/-!
# A377189: Expansion of 1/(1 - 4*x^2 - 4*x^3)^(5/2).

The programs for A377189, the canonical program `A377189.P8914776000570455070` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377189 has offset 0).

The definition of A377189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377189.P8914776000570455070

`(4*(n+3)*a(n-2)+2*(2*n+9)*a(n-3))/n` with `a(0)=1, a(1)=0, a(2)=10`

The canonical program, it is in `Seq.B000.C048`.
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

The programs for A377190, the canonical program `A377190.P7655791740087415295` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377190 has offset 0).

The definition of A377190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377190.P7655791740087415295

`(4*(n+5)*a(n-2)+2*(2*n+15)*a(n-3))/n` with `a(0)=1, a(1)=0, a(2)=14`

The canonical program, it is in `Seq.B000.C048`.
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

/-! ## A377191.P879041017635496977

`col(A043562(n))`
-/

namespace A377191.P879041017635496977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A043562 n).toNat

end

end A377191.P879041017635496977

/-! ## A377191.P4037244998391966295

`1-A136522(n)`
-/

namespace A377191.P4037244998391966295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A136522 n

end

end A377191.P4037244998391966295

/-! ## A377191.P1338658610838277964

`7%A261675(n)`
-/

namespace A377191.P1338658610838277964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A261675 n)

end

end A377191.P1338658610838277964

/-! ## A377191.P6935886011459629353

`13%A261913(n)`
-/

namespace A377191.P6935886011459629353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 13 (A261913 n)

end

end A377191.P6935886011459629353

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

The programs for A377194, the canonical program `A377194.P12538662390913571082` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377194 has offset 0).

The definition of A377194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377194.P12538662390913571082

`∑{#}[n, (2*#+1)*C(2*#, #)*C(2*#, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377194

/-- `∑{#}[n, (2*#+1)*C(2*#, #)*C(2*#, n-#)]` -/
def P12538662390913571082.Spec : Prop :=
  ∀ n, (P12538662390913571082.a n : ℤ) = A377194 n

theorem P12538662390913571082.correct : P12538662390913571082.Spec := by
  intro n
  simp only [A377194]

end A377194

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

The programs for A377197, the canonical program `A377197.P5113279114065174890` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377197 has offset 0).

The definition of A377197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377197.P5113279114065174890

`(6*n*a(n-1)-5*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C048`.
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

/-! ## A377197.P4943136507775122632

`A163842(A000124(n)%A000346(n))`
-/

namespace A377197.P4943136507775122632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (Int.tmod (A000124 n) (A000346 n)).toNat

end

end A377197.P4943136507775122632

namespace A377197

/-- `A163842(A000124(n)%A000346(n))` -/
def P4943136507775122632.Spec : Prop :=
  ∀ n, P4943136507775122632.a n = A377197 n

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

/-! ## A377197.P306442572027751173

`A163842(A000124(n)*A323022(3*n+1))`
-/

namespace A377197.P306442572027751173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (A000124 n * A323022 (3 * n + 1)).toNat

end

end A377197.P306442572027751173

namespace A377197

/-- `A163842(A000124(n)*A323022(3*n+1))` -/
def P306442572027751173.Spec : Prop :=
  ∀ n, P306442572027751173.a n = A377197 n

end A377197

/-!
# A377198: Expansion of 1/(1 - 4*x/(1-x)^2)^(3/2).

The programs for A377198, the canonical program `A377198.P8471227929727770088` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377198 has offset 0).

The definition of A377198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377198.P8471227929727770088

`((7*n-1)*a(n-1)-(7*n-20)*a(n-2)+(n-3)*a(n-3))/n` with `a(0)=1, a(1)=6, a(2)=42`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377198

/-- `((7*n-1)*a(n-1)-(7*n-20)*a(n-2)+(n-3)*a(n-3))/n` -/
def P8471227929727770088.Spec : Prop :=
  ∀ n, P8471227929727770088.a n = (A377198 n : ℚ)

end A377198

/-!
# A377199: Expansion of 1/(1 - 4*x/(1-x))^(5/2).

The programs for A377199, the canonical program `A377199.P8315431317473134197` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377199 has offset 0).

The definition of A377199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377199.P8315431317473134197

`(2*(3*n+2)*a(n-1)-5*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A377199

/-- `(2*(3*n+2)*a(n-1)-5*(n-2)*a(n-2))/n` -/
def P8315431317473134197.Spec : Prop :=
  ∀ n, P8315431317473134197.a n = (A377199 n : ℚ)

end A377199

