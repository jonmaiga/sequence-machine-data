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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A086900: Number of real n X n symmetric (0,1) matrices with positive determinant.

The programs for A086900, there is no canonical definition to state claims against.
-/

/-! ## A086900.P18240616814540942930

`A086899(n+1)-A118996(n+1)`
-/

namespace A086900.P18240616814540942930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086899 (n + 1) - A118996 (n + 1)

end

end A086900.P18240616814540942930

/-! ## A086900.P2198725614976332733

`2^((n+1)*(n+2)/2)-A086906(n+1)-A118996(n+1)`
-/

namespace A086900.P2198725614976332733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ) - (A086906 (n + 1) : ℝ) - (A118996 (n + 1) : ℝ)

end

end A086900.P2198725614976332733

/-!
# A086901: a(1) = a(2) = 1; for n>2, a(n) = 4*a(n-1) + 3*a(n-2).

The programs for A086901, the canonical program `A086901.P11386476425234754782` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086901 has offset 1).

The definition of A086901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+3*a(n-2)` (program `A086901.P11386476425234754782`, by `A086901.P11386476425234754782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086901.P11386476425234754782

`4*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086901

/-- `4*a(n-1)+3*a(n-2)` -/
def P11386476425234754782.Spec : Prop :=
  ∀ n, (P11386476425234754782.a n : ℤ) = A086901 (n + 1)

theorem P11386476425234754782.correct : P11386476425234754782.Spec := by
  intro n
  simp only [A086901, Nat.add_sub_cancel]

end A086901

/-! ## A086901.P2399523382454698445

`A015530(n+1)-3*A015530(n)`
-/

namespace A086901.P2399523382454698445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 1) - 3 * A015530 n

end

end A086901.P2399523382454698445

namespace A086901

/-- `A015530(n+1)-3*A015530(n)` -/
def P2399523382454698445.Spec : Prop :=
  ∀ n, P2399523382454698445.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P2221267949501268900

`ogf((-1+3x)/(-1+4x+3x^2))`
-/

namespace A086901.P2221267949501268900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -4, -3] n

end

end A086901.P2221267949501268900

namespace A086901

/-- `ogf((-1+3x)/(-1+4x+3x^2))` -/
def P2221267949501268900.Spec : Prop :=
  ∀ n, P2221267949501268900.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P11352002855572644349

`3*a(n-2)-(a(n-1)-5*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A086901.P11352002855572644349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 2) - (a (n - 1) - 5 * a (n - 1))

end

end A086901.P11352002855572644349

namespace A086901

/-- `3*a(n-2)-(a(n-1)-5*a(n-1))` -/
def P11352002855572644349.Spec : Prop :=
  ∀ n, P11352002855572644349.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P1108391222329623355

`A108851(n)-A015530(n)`
-/

namespace A086901.P1108391222329623355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 n - A015530 n

end

end A086901.P1108391222329623355

namespace A086901

/-- `A108851(n)-A015530(n)` -/
def P1108391222329623355.Spec : Prop :=
  ∀ n, P1108391222329623355.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P8530304901655654245

`A122558(n)-2*A015530(n)`
-/

namespace A086901.P8530304901655654245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122558 n - 2 * A015530 n

end

end A086901.P8530304901655654245

namespace A086901

/-- `A122558(n)-2*A015530(n)` -/
def P8530304901655654245.Spec : Prop :=
  ∀ n, P8530304901655654245.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P14603507109289218422

`A015530(n)+A122558(n)-A106570(n)`
-/

namespace A086901.P14603507109289218422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 n + (A122558 n - A106570 n)

end

end A086901.P14603507109289218422

namespace A086901

/-- `A015530(n)+A122558(n)-A106570(n)` -/
def P14603507109289218422.Spec : Prop :=
  ∀ n, P14603507109289218422.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P11844183126449016788

`A108851(n)+A108851(n)-A122558(n)`
-/

namespace A086901.P11844183126449016788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 n + (A108851 n - A122558 n)

end

end A086901.P11844183126449016788

namespace A086901

/-- `A108851(n)+A108851(n)-A122558(n)` -/
def P11844183126449016788.Spec : Prop :=
  ∀ n, P11844183126449016788.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P14351198503534783621

`A080042(n)-Δ[A015530(n)]`
-/

namespace A086901.P14351198503534783621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080042 n - (f1 (n + 1) - f1 n)

end

end A086901.P14351198503534783621

namespace A086901

/-- `A080042(n)-Δ[A015530(n)]` -/
def P14351198503534783621.Spec : Prop :=
  ∀ n, P14351198503534783621.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P11825723719811900668

`A015530(n+1)-A106570(n)`
-/

namespace A086901.P11825723719811900668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 1) - A106570 n

end

end A086901.P11825723719811900668

namespace A086901

/-- `A015530(n+1)-A106570(n)` -/
def P11825723719811900668.Spec : Prop :=
  ∀ n, P11825723719811900668.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P1966002374695564092

`2*A108851(n)-A122558(n)`
-/

namespace A086901.P1966002374695564092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108851 n - A122558 n

end

end A086901.P1966002374695564092

namespace A086901

/-- `2*A108851(n)-A122558(n)` -/
def P1966002374695564092.Spec : Prop :=
  ∀ n, P1966002374695564092.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P7142858330736070273

`A106570(n+1)-A108851(n+1)`
-/

namespace A086901.P7142858330736070273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106570 (n + 1) - A108851 (n + 1)

end

end A086901.P7142858330736070273

namespace A086901

/-- `A106570(n+1)-A108851(n+1)` -/
def P7142858330736070273.Spec : Prop :=
  ∀ n, P7142858330736070273.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P4324518651752525114

`A015530(n)+A080042(n)-A015530(n+1)`
-/

namespace A086901.P4324518651752525114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 n + (A080042 n - A015530 (n + 1))

end

end A086901.P4324518651752525114

namespace A086901

/-- `A015530(n)+A080042(n)-A015530(n+1)` -/
def P4324518651752525114.Spec : Prop :=
  ∀ n, P4324518651752525114.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P8186300539966782459

`A126473(n+1)-A080042(n+1)`
-/

namespace A086901.P8186300539966782459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 (n + 1) - A080042 (n + 1)

end

end A086901.P8186300539966782459

namespace A086901

/-- `A126473(n+1)-A080042(n+1)` -/
def P8186300539966782459.Spec : Prop :=
  ∀ n, P8186300539966782459.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P13689822237857900437

`2*A106570(n+1)-A126473(n+1)`
-/

namespace A086901.P13689822237857900437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106570 (n + 1) - A126473 (n + 1)

end

end A086901.P13689822237857900437

namespace A086901

/-- `2*A106570(n+1)-A126473(n+1)` -/
def P13689822237857900437.Spec : Prop :=
  ∀ n, P13689822237857900437.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P2274229615466983394

`A126473(n+1)-2*A108851(n+1)`
-/

namespace A086901.P2274229615466983394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 (n + 1) - 2 * A108851 (n + 1)

end

end A086901.P2274229615466983394

namespace A086901

/-- `A126473(n+1)-2*A108851(n+1)` -/
def P2274229615466983394.Spec : Prop :=
  ∀ n, P2274229615466983394.a n = A086901 (n + 1)

end A086901

/-! ## A086901.P15578540139911439379

`A106570(n+1)-A080042(n+1)/2`
-/

namespace A086901.P15578540139911439379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106570 (n + 1) : ℚ) - (A080042 (n + 1) : ℚ) / 2

end

end A086901.P15578540139911439379

namespace A086901

/-- `A106570(n+1)-A080042(n+1)/2` -/
def P15578540139911439379.Spec : Prop :=
  ∀ n, P15578540139911439379.a n = (A086901 (n + 1) : ℚ)

end A086901

/-!
# A086902: a(n) = 7*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 7.

The programs for A086902, the canonical program `A086902.P696671253393145733` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086902 has offset 0).

The definition of A086902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+a(n-2)` (program `A086902.P696671253393145733`, by `A086902.P696671253393145733.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086902.P696671253393145733

`7*a(n-1)+a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086902

/-- `7*a(n-1)+a(n-2)` -/
def P696671253393145733.Spec : Prop :=
  ∀ n, (P696671253393145733.a n : ℤ) = A086902 n

theorem P696671253393145733.correct : P696671253393145733.Spec := by
  intro n
  simp only [A086902]

end A086902

/-! ## A086902.P6893078808035056055

`ogf((-2+7x)/(-1+7x+x^2))`
-/

namespace A086902.P6893078808035056055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -7, -1] n

end

end A086902.P6893078808035056055

namespace A086902

/-- `ogf((-2+7x)/(-1+7x+x^2))` -/
def P6893078808035056055.Spec : Prop :=
  ∀ n, P6893078808035056055.a n = A086902 n

end A086902

/-! ## A086902.P7789689913620408411

`((7+sqrt(53))/2)^n+((7-sqrt(53))/2)^n`
-/

namespace A086902.P7789689913620408411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + Real.sqrt (53 : ℝ)) / 2) ^ n + ((7 - Real.sqrt (53 : ℝ)) / 2) ^ n

end

end A086902.P7789689913620408411

namespace A086902

/-- `((7+sqrt(53))/2)^n+((7-sqrt(53))/2)^n` -/
def P7789689913620408411.Spec : Prop :=
  ∀ n, P7789689913620408411.a n = (A086902 n : ℝ)

end A086902

/-! ## A086902.P8272380165017878627

`floor(sqrt(A099368(n)+2))`
-/

namespace A086902.P8272380165017878627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A099368 n + 2)

end

end A086902.P8272380165017878627

namespace A086902

/-- `floor(sqrt(A099368(n)+2))` -/
def P8272380165017878627.Spec : Prop :=
  ∀ n, P8272380165017878627.a n = A086902 n

end A086902

/-! ## A086902.P11242235083710728130

`floor(sqrt(A051932(2*n)))`
-/

namespace A086902.P11242235083710728130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A051932 (2 * n))

end

end A086902.P11242235083710728130

namespace A086902

/-- `floor(sqrt(A051932(2*n)))` -/
def P11242235083710728130.Spec : Prop :=
  ∀ n, P11242235083710728130.a n = A086902 n

end A086902

/-!
# A086903: a(n) = 8*a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 8.

The programs for A086903, the canonical program `A086903.P9577980893199714492` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086903 has offset 0).

The definition of A086903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-a(n-2)` (program `A086903.P9577980893199714492`, by `A086903.P9577980893199714492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086903.P9577980893199714492

`8*a(n-1)-a(n-2)` with `a(0)=2, a(1)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086903

/-- `8*a(n-1)-a(n-2)` -/
def P9577980893199714492.Spec : Prop :=
  ∀ n, P9577980893199714492.a n = A086903 n

theorem P9577980893199714492.correct : P9577980893199714492.Spec := by
  intro n
  simp only [A086903]

end A086903

/-! ## A086903.P5000378860629634104

`(4+sqrt(15))^n+(4-sqrt(15))^n`
-/

namespace A086903.P5000378860629634104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 + Real.sqrt (15 : ℝ)) ^ n + (4 - Real.sqrt (15 : ℝ)) ^ n

end

end A086903.P5000378860629634104

namespace A086903

/-- `(4+sqrt(15))^n+(4-sqrt(15))^n` -/
def P5000378860629634104.Spec : Prop :=
  ∀ n, P5000378860629634104.a n = (A086903 n : ℝ)

end A086903

/-! ## A086903.P18305556505768869948

`ogf((2-8x)/(1-8x+x^2))`
-/

namespace A086903.P18305556505768869948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8] [1, -8, 1] n

end

end A086903.P18305556505768869948

namespace A086903

/-- `ogf((2-8x)/(1-8x+x^2))` -/
def P18305556505768869948.Spec : Prop :=
  ∀ n, P18305556505768869948.a n = A086903 n

end A086903

/-! ## A086903.P802118819658272800

`2*A001091(n)`
-/

namespace A086903.P802118819658272800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001091 n

end

end A086903.P802118819658272800

namespace A086903

/-- `2*A001091(n)` -/
def P802118819658272800.Spec : Prop :=
  ∀ n, P802118819658272800.a n = A086903 n

end A086903

/-! ## A086903.P4204299593620953417

`2*A080871(2*n)`
-/

namespace A086903.P4204299593620953417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080871 (2 * n)

end

end A086903.P4204299593620953417

namespace A086903

/-- `2*A080871(2*n)` -/
def P4204299593620953417.Spec : Prop :=
  ∀ n, P4204299593620953417.a n = A086903 n

end A086903

/-! ## A086903.P12768878705619265429

`2*(A248833(n)/5-1)`
-/

namespace A086903.P12768878705619265429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A248833 n : ℚ) / 5 - 1)

end

end A086903.P12768878705619265429

namespace A086903

/-- `2*(A248833(n)/5-1)` -/
def P12768878705619265429.Spec : Prop :=
  ∀ n, P12768878705619265429.a n = (A086903 n : ℚ)

end A086903

/-! ## A086903.P17582531302611744464

`Δ[A136325(n)-A341929(n)]`
-/

namespace A086903.P17582531302611744464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n - A341929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086903.P17582531302611744464

namespace A086903

/-- `Δ[A136325(n)-A341929(n)]` -/
def P17582531302611744464.Spec : Prop :=
  ∀ n, P17582531302611744464.a n = A086903 n

end A086903

/-! ## A086903.P3093673462612847655

`2*(A144479(n)+A001090(n))`
-/

namespace A086903.P3093673462612847655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144479 n + A001090 n)

end

end A086903.P3093673462612847655

namespace A086903

/-- `2*(A144479(n)+A001090(n))` -/
def P3093673462612847655.Spec : Prop :=
  ∀ n, P3093673462612847655.a n = A086903 n

end A086903

/-! ## A086903.P6603650792269759337

`2*(A105426(n)-A001090(n))`
-/

namespace A086903.P6603650792269759337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A105426 n - A001090 n)

end

end A086903.P6603650792269759337

namespace A086903

/-- `2*(A105426(n)-A001090(n))` -/
def P6603650792269759337.Spec : Prop :=
  ∀ n, P6603650792269759337.a n = A086903 n

end A086903

/-! ## A086903.P1482832031789578793

`2*(A070997(n)-A136325(n))`
-/

namespace A086903.P1482832031789578793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A070997 n - A136325 n)

end

end A086903.P1482832031789578793

namespace A086903

/-- `2*(A070997(n)-A136325(n))` -/
def P1482832031789578793.Spec : Prop :=
  ∀ n, P1482832031789578793.a n = A086903 n

end A086903

/-! ## A086903.P10707649425062770656

`2*(Δ[A001090(n)]-A136325(n))`
-/

namespace A086903.P10707649425062770656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A136325 n)

end

end A086903.P10707649425062770656

namespace A086903

/-- `2*(Δ[A001090(n)]-A136325(n))` -/
def P10707649425062770656.Spec : Prop :=
  ∀ n, P10707649425062770656.a n = A086903 n

end A086903

/-! ## A086903.P14853231294739313283

`2*(∑[A070997(n)]-A273053(n+1))`
-/

namespace A086903.P14853231294739313283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A273053 (n + 1))

end

end A086903.P14853231294739313283

namespace A086903

/-- `2*(∑[A070997(n)]-A273053(n+1))` -/
def P14853231294739313283.Spec : Prop :=
  ∀ n, P14853231294739313283.a n = A086903 n

end A086903

/-! ## A086903.P434697111796124163

`2*(A077248(2*n)-A177187(2*n+1))`
-/

namespace A086903.P434697111796124163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077248 (2 * n) - A177187 (2 * n + 1))

end

end A086903.P434697111796124163

namespace A086903

/-- `2*(A077248(2*n)-A177187(2*n+1))` -/
def P434697111796124163.Spec : Prop :=
  ∀ n, P434697111796124163.a n = A086903 n

end A086903

/-! ## A086903.P8434578724825123720

`2*(A281584(2*n+1)-A199338(2*n+1))`
-/

namespace A086903.P8434578724825123720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A281584 (2 * n + 1) - A199338 (2 * n + 1))

end

end A086903.P8434578724825123720

namespace A086903

/-- `2*(A281584(2*n+1)-A199338(2*n+1))` -/
def P8434578724825123720.Spec : Prop :=
  ∀ n, P8434578724825123720.a n = A086903 n

end A086903

/-! ## A086903.P8395544797146366860

`(A272365(n+1)-2)/4`
-/

namespace A086903.P8395544797146366860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272365 (n + 1) - 2 : ℚ) / 4

end

end A086903.P8395544797146366860

namespace A086903

/-- `(A272365(n+1)-2)/4` -/
def P8395544797146366860.Spec : Prop :=
  ∀ n, P8395544797146366860.a n = (A086903 n : ℚ)

end A086903

/-! ## A086903.P1619120551665198775

`2*(A041022(2*n+1)-A041022(2*n))`
-/

namespace A086903.P1619120551665198775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041022 (2 * n + 1) - A041022 (2 * n))

end

end A086903.P1619120551665198775

namespace A086903

/-- `2*(A041022(2*n+1)-A041022(2*n))` -/
def P1619120551665198775.Spec : Prop :=
  ∀ n, P1619120551665198775.a n = A086903 n

end A086903

/-!
# A086904: Write the primes in binary; a(n) = total number of 0's in those which have an n-bit expansion.

The programs for A086904, there is no canonical definition to state claims against.
-/

/-! ## A086904.P3998325261340816348

`A234300(A081161(n)+A028928(n))`
-/

namespace A086904.P3998325261340816348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A081161 n + A028928 n).toNat

end

end A086904.P3998325261340816348

/-! ## A086904.P8785290314871007567

`A336912(A319766(n))+A319768(n)`
-/

namespace A086904.P8785290314871007567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336912 (A319766 n).toNat + A319768 n

end

end A086904.P8785290314871007567

/-! ## A086904.P16234090948636522772

`A234300(or(A028928(n), A081161(n)))`
-/

namespace A086904.P16234090948636522772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (Int.lor (A028928 n) (A081161 n)).toNat

end

end A086904.P16234090948636522772

/-! ## A086904.P8810829786858205657

`A234300(xor(A028928(n), A081161(n)))`
-/

namespace A086904.P8810829786858205657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (Int.xor (A028928 n) (A081161 n)).toNat

end

end A086904.P8810829786858205657

/-!
# A086905: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(k,floor(k/2)).

The programs for A086905, the canonical program `A086905.P17367873536697088158` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086905 has offset 0).

The definition of A086905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086905.P8458619282545013329

`A191790(n)+A059841(n)`
-/

namespace A086905.P8458619282545013329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 n + A059841 n

end

end A086905.P8458619282545013329

namespace A086905

/-- `A191790(n)+A059841(n)` -/
def P8458619282545013329.Spec : Prop :=
  ∀ n, P8458619282545013329.a n = A086905 n

end A086905

/-! ## A086905.P15314762675025235972

`A191790(n)+A000035(n+1)`
-/

namespace A086905.P15314762675025235972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 n + A000035 (n + 1)

end

end A086905.P15314762675025235972

namespace A086905

/-- `A191790(n)+A000035(n+1)` -/
def P15314762675025235972.Spec : Prop :=
  ∀ n, P15314762675025235972.a n = A086905 n

end A086905

/-! ## A086905.P10251499563542294103

`A332754(n+1)+A033999(n)`
-/

namespace A086905.P10251499563542294103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (n + 1) + A033999 n

end

end A086905.P10251499563542294103

namespace A086905

/-- `A332754(n+1)+A033999(n)` -/
def P10251499563542294103.Spec : Prop :=
  ∀ n, P10251499563542294103.a n = A086905 n

end A086905

/-! ## A086905.P12019062458355711936

`A191790(n)-(A000035(n)-1)`
-/

namespace A086905.P12019062458355711936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 n - (A000035 n - 1)

end

end A086905.P12019062458355711936

namespace A086905

/-- `A191790(n)-(A000035(n)-1)` -/
def P12019062458355711936.Spec : Prop :=
  ∀ n, P12019062458355711936.a n = A086905 n

end A086905

/-! ## A086905.P680494365595952368

`abs(∑[a(n-1)/(floor(n/2)/n-1)])` with `a(0)=1`
-/

namespace A086905.P680494365595952368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A086905.P680494365595952368

namespace A086905

/-- `abs(∑[a(n-1)/(floor(n/2)/n-1)])` -/
def P680494365595952368.Spec : Prop :=
  ∀ n, P680494365595952368.a n = (A086905 n : ℚ)

end A086905

/-! ## A086905.P17367873536697088158

`Δ[A174783(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A086905

/-- `Δ[A174783(n)]` -/
def P17367873536697088158.Spec : Prop :=
  ∀ n, P17367873536697088158.a n = A086905 n

theorem P17367873536697088158.correct : P17367873536697088158.Spec := by
  intro n
  simp only [A086905]

end A086905

/-! ## A086905.P12799871868328611745

`abs(∑[A126930(n)])`
-/

namespace A086905.P12799871868328611745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A086905.P12799871868328611745

namespace A086905

/-- `abs(∑[A126930(n)])` -/
def P12799871868328611745.Spec : Prop :=
  ∀ n, P12799871868328611745.a n = A086905 n

end A086905

/-! ## A086905.P307596496535507226

`A001405(n)-a(n-1)` with `a(0)=1`
-/

namespace A086905.P307596496535507226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001405 n - a (n - 1)

end

end A086905.P307596496535507226

namespace A086905

/-- `A001405(n)-a(n-1)` -/
def P307596496535507226.Spec : Prop :=
  ∀ n, P307596496535507226.a n = A086905 n

end A086905

/-! ## A086905.P4973902312918068477

`A014495(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A086905.P4973902312918068477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014495 n + (1 - a (n - 1))

end

end A086905.P4973902312918068477

namespace A086905

/-- `A014495(n)+1-a(n-1)` -/
def P4973902312918068477.Spec : Prop :=
  ∀ n, P4973902312918068477.a n = A086905 n

end A086905

/-! ## A086905.P8879991665530949526

`A210736(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A086905.P8879991665530949526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210736 (n + 1) - a (n - 1)

end

end A086905.P8879991665530949526

namespace A086905

/-- `A210736(n+1)-a(n-1)` -/
def P8879991665530949526.Spec : Prop :=
  ∀ n, P8879991665530949526.a n = A086905 n

end A086905

/-! ## A086905.P8418757691847594351

`Δ[A124642(n)-A059841(n)]`
-/

namespace A086905.P8418757691847594351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 n - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086905.P8418757691847594351

namespace A086905

/-- `Δ[A124642(n)-A059841(n)]` -/
def P8418757691847594351.Spec : Prop :=
  ∀ n, P8418757691847594351.a n = A086905 n

end A086905

/-! ## A086905.P7093096381367165229

`A174783(n+1)-A174783(n)`
-/

namespace A086905.P7093096381367165229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (n + 1) - A174783 n

end

end A086905.P7093096381367165229

namespace A086905

/-- `A174783(n+1)-A174783(n)` -/
def P7093096381367165229.Spec : Prop :=
  ∀ n, P7093096381367165229.a n = A086905 n

theorem P7093096381367165229.correct : P7093096381367165229.Spec := by
  intro n
  simp only [A086905, Nat.add_sub_cancel, A086905.P7093096381367165229.a, A086905.P17367873536697088158.f1, A086905.P17367873536697088158.a, SequenceMachineLib.memo_apply]

end A086905

/-! ## A086905.P13728278765046676119

`abs(∑[A126869(n)-A138364(n)])`
-/

namespace A086905.P13728278765046676119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n - A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A086905.P13728278765046676119

namespace A086905

/-- `abs(∑[A126869(n)-A138364(n)])` -/
def P13728278765046676119.Spec : Prop :=
  ∀ n, P13728278765046676119.a n = A086905 n

end A086905

/-! ## A086905.P1740651404131953159

`A036256(n)-2*A174783(n)`
-/

namespace A086905.P1740651404131953159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n - 2 * A174783 n

end

end A086905.P1740651404131953159

namespace A086905

/-- `A036256(n)-2*A174783(n)` -/
def P1740651404131953159.Spec : Prop :=
  ∀ n, P1740651404131953159.a n = A086905 n

end A086905

/-! ## A086905.P1157170569261507473

`Δ[A000975(n)-A191394(n)]`
-/

namespace A086905.P1157170569261507473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A191394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086905.P1157170569261507473

namespace A086905

/-- `Δ[A000975(n)-A191394(n)]` -/
def P1157170569261507473.Spec : Prop :=
  ∀ n, P1157170569261507473.a n = A086905 n

end A086905

/-! ## A086905.P16710116588066396389

`Δ[xor(A191394(n)+A000975(n+1), A000225(n+1))]`
-/

namespace A086905.P16710116588066396389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A191394 n + A000975 (n + 1)) (A000225 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086905.P16710116588066396389

namespace A086905

/-- `Δ[xor(A191394(n)+A000975(n+1), A000225(n+1))]` -/
def P16710116588066396389.Spec : Prop :=
  ∀ n, P16710116588066396389.a n = A086905 n

end A086905

/-! ## A086905.P2705123155655295569

`C(n, floor(n/2))-a(n-1)` with `a(0)=1`
-/

namespace A086905.P2705123155655295569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) - a (n - 1)

end

end A086905.P2705123155655295569

namespace A086905

/-- `C(n, floor(n/2))-a(n-1)` -/
def P2705123155655295569.Spec : Prop :=
  ∀ n, P2705123155655295569.a n = A086905 n

end A086905

/-! ## A086905.P1278487533897958524

`((-1)^n)²+C(n, ∑[char[2*n+1]])-1-a(n-1)` with `a(0)=1`
-/

namespace A086905.P1278487533897958524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((-1) ^ n) ^ 2 + ((Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1) - a (n - 1)

end

end A086905.P1278487533897958524

namespace A086905

/-- `((-1)^n)²+C(n, ∑[char[2*n+1]])-1-a(n-1)` -/
def P1278487533897958524.Spec : Prop :=
  ∀ n, P1278487533897958524.a n = A086905 n

end A086905

/-! ## A086905.P5775296749201598439

`A101491(∑[n])`
-/

namespace A086905.P5775296749201598439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101491 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086905.P5775296749201598439

namespace A086905

/-- `A101491(∑[n])` -/
def P5775296749201598439.Spec : Prop :=
  ∀ n, P5775296749201598439.a n = A086905 n

end A086905

/-! ## A086905.P6297889921448828545

`A007318(floor((n+1)²/2))-a(n-1)` with `a(0)=1`
-/

namespace A086905.P6297889921448828545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat - a (n - 1)

end

end A086905.P6297889921448828545

namespace A086905

/-- `A007318(floor((n+1)²/2))-a(n-1)` -/
def P6297889921448828545.Spec : Prop :=
  ∀ n, P6297889921448828545.a n = A086905 n

end A086905

/-!
# A086906: Number of symmetric singular n X n (0,1) matrices over the reals.

The programs for A086906, there is no canonical definition to state claims against.
-/

/-! ## A086906.P377626401924441004

`2^((n+1)*(n+2)/2)-A086899(n+1)`
-/

namespace A086906.P377626401924441004
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ) - (A086899 (n + 1) : ℝ)

end

end A086906.P377626401924441004

/-!
# A086909: Middle side of the first primitive d-arithmetic triangle, where d=A072330(n).

The programs for A086909, there is no canonical definition to state claims against.
-/

/-! ## A086909.P16659549018853654678

`2*A089019(n+1)`
-/

namespace A086909.P16659549018853654678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089019 (n + 1)

end

end A086909.P16659549018853654678

/-! ## A086909.P16720116114115813613

`A089019(n+1)+A089019(n%(n+1)+1)`
-/

namespace A086909.P16720116114115813613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089019 (n + 1) + A089019 (n % (n + 1) + 1)

end

end A086909.P16720116114115813613

/-! ## A086909.P17954428669394048024

`A089019(A000027(n+1))+A089019(n+1)`
-/

namespace A086909.P17954428669394048024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089019 (A000027 (n + 1)).toNat + A089019 (n + 1)

end

end A086909.P17954428669394048024

/-! ## A086909.P16094842303772525180

`lcm(A089019(n+1), A174971(n))-A089019(n+1)`
-/

namespace A086909.P16094842303772525180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A089019 (n + 1)) (A174971 n) : ℤ) - A089019 (n + 1)

end

end A086909.P16094842303772525180

/-! ## A086909.P930246328489006261

`A000265(A089019(n+1)+A089019(n+1)+1)-1`
-/

namespace A086909.P930246328489006261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A089019 (n + 1) + A089019 (n + 1) + 1).toNat - 1

end

end A086909.P930246328489006261

/-! ## A086909.P458969437020786108

`A004277(A089019(n+1))`
-/

namespace A086909.P458969437020786108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A089019 (n + 1)).toNat

end

end A086909.P458969437020786108

/-! ## A086909.P17969567960249407941

`A005843(A089019(1-(n-A005843(n))))`
-/

namespace A086909.P17969567960249407941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A089019 (1 - ((n : ℤ) - A005843 n)).toNat).toNat

end

end A086909.P17969567960249407941

/-! ## A086909.P796559473113099782

`A096672(n+1)+A072330(n+1)`
-/

namespace A086909.P796559473113099782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096672 (n + 1) + A072330 (n + 1)

end

end A086909.P796559473113099782

/-! ## A086909.P15039659419899437817

`2/3*A096674(n+1)`
-/

namespace A086909.P15039659419899437817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A096674 (n + 1) : ℚ)

end

end A086909.P15039659419899437817

/-! ## A086909.P16382449277433332888

`A004396(A096674(n+1))`
-/

namespace A086909.P16382449277433332888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A096674 (n + 1)).toNat

end

end A086909.P16382449277433332888

/-!
# A086910: a(1)=1; a(n) = 1 + abs(prime(n) - a(n-1)).

The programs for A086910, the canonical program `A086910.P438496637117305343` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086910 has offset 1).

The definition of A086910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086910.P438496637117305343

`p?[abs(2*n-3)]+1-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086910

/-- `p?[abs(2*n-3)]+1-a(n-1)` -/
def P438496637117305343.Spec : Prop :=
  ∀ n, P438496637117305343.a n = A086910 (n + 1)

theorem P438496637117305343.correct : P438496637117305343.Spec := by
  intro n
  simp only [A086910, Nat.add_sub_cancel]

end A086910

/-! ## A086910.P1251506838783883374

`round(p?[round(8*n/7)]+1-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A086910.P1251506838783883374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 - a (n - 1)

end

end A086910.P1251506838783883374

namespace A086910

/-- `round(p?[round(8*n/7)]+1-a(n-1))` -/
def P1251506838783883374.Spec : Prop :=
  ∀ n, P1251506838783883374.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P16237124588348401054

`or(1, A083236(n+1))`
-/

namespace A086910.P16237124588348401054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A083236 (n + 1))

end

end A086910.P16237124588348401054

namespace A086910

/-- `or(1, A083236(n+1))` -/
def P16237124588348401054.Spec : Prop :=
  ∀ n, P16237124588348401054.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P1692558912369210242

`A135731(n)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A086910.P1692558912369210242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A135731 n - a (n - 1)

end

end A086910.P1692558912369210242

namespace A086910

/-- `A135731(n)-a(n-1)` -/
def P1692558912369210242.Spec : Prop :=
  ∀ n, P1692558912369210242.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P16189021570968296436

`A008864(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A086910.P16189021570968296436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008864 (n + 1) - a (n - 1)

end

end A086910.P16189021570968296436

namespace A086910

/-- `A008864(n+1)-a(n-1)` -/
def P16189021570968296436.Spec : Prop :=
  ∀ n, P16189021570968296436.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P6681288788387503776

`A028815(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A086910.P6681288788387503776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028815 (n + 1) - a (n - 1)

end

end A086910.P6681288788387503776

namespace A086910

/-- `A028815(n+1)-a(n-1)` -/
def P6681288788387503776.Spec : Prop :=
  ∀ n, P6681288788387503776.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P8834244973655669863

`A055670(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A086910.P8834244973655669863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055670 (n + 1) - a (n - 1)

end

end A086910.P8834244973655669863

namespace A086910

/-- `A055670(n+1)-a(n-1)` -/
def P8834244973655669863.Spec : Prop :=
  ∀ n, P8834244973655669863.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P2140920156447059950

`A175216(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A086910.P2140920156447059950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175216 (n + 1) - a (n - 1)

end

end A086910.P2140920156447059950

namespace A086910

/-- `A175216(n+1)-a(n-1)` -/
def P2140920156447059950.Spec : Prop :=
  ∀ n, P2140920156447059950.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P17068592898084376123

`A350171(n+1)-A083236(n)`
-/

namespace A086910.P17068592898084376123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (n + 1) - A083236 n

end

end A086910.P17068592898084376123

namespace A086910

/-- `A350171(n+1)-A083236(n)` -/
def P17068592898084376123.Spec : Prop :=
  ∀ n, P17068592898084376123.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P11366136452015597499

`or(1, A036467(n+1))`
-/

namespace A086910.P11366136452015597499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A036467 (n + 1))

end

end A086910.P11366136452015597499

namespace A086910

/-- `or(1, A036467(n+1))` -/
def P11366136452015597499.Spec : Prop :=
  ∀ n, P11366136452015597499.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P17484521522846524981

`A059841(n+1)+A036467(n+1)`
-/

namespace A086910.P17484521522846524981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A036467 (n + 1)

end

end A086910.P17484521522846524981

namespace A086910

/-- `A059841(n+1)+A036467(n+1)` -/
def P17484521522846524981.Spec : Prop :=
  ∀ n, P17484521522846524981.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P1283845704128704063

`A135528(n+3)+A036467(n+1)`
-/

namespace A086910.P1283845704128704063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 3) + A036467 (n + 1)

end

end A086910.P1283845704128704063

namespace A086910

/-- `A135528(n+3)+A036467(n+1)` -/
def P1283845704128704063.Spec : Prop :=
  ∀ n, P1283845704128704063.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P12660769382961128841

`p?[round(sqrt(n)+n)]+1-a(n-1)` with `a(0)=1`
-/

namespace A086910.P12660769382961128841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (1 - a (n - 1))

end

end A086910.P12660769382961128841

namespace A086910

/-- `p?[round(sqrt(n)+n)]+1-a(n-1)` -/
def P12660769382961128841.Spec : Prop :=
  ∀ n, P12660769382961128841.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P4899455289256756533

`1-(a(n-1)-p?[xor(1, n)])` with `a(0)=1, a(1)=3`
-/

namespace A086910.P4899455289256756533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - (a (n - 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ))

end

end A086910.P4899455289256756533

namespace A086910

/-- `1-(a(n-1)-p?[xor(1, n)])` -/
def P4899455289256756533.Spec : Prop :=
  ∀ n, P4899455289256756533.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P5225198698742177075

`1-(a(n-1)-p?[n-(-1)^n])` with `a(0)=1`
-/

namespace A086910.P5225198698742177075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A086910.P5225198698742177075

namespace A086910

/-- `1-(a(n-1)-p?[n-(-1)^n])` -/
def P5225198698742177075.Spec : Prop :=
  ∀ n, P5225198698742177075.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P4256507749844245418

`or(1, A073739(2*n+1))`
-/

namespace A086910.P4256507749844245418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A073739 (2 * n + 1))

end

end A086910.P4256507749844245418

namespace A086910

/-- `or(1, A073739(2*n+1))` -/
def P4256507749844245418.Spec : Prop :=
  ∀ n, P4256507749844245418.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P13700986729212390620

`A109613(A036467(n+1))`
-/

namespace A086910.P13700986729212390620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A036467 (n + 1)).toNat

end

end A086910.P13700986729212390620

namespace A086910

/-- `A109613(A036467(n+1))` -/
def P13700986729212390620.Spec : Prop :=
  ∀ n, P13700986729212390620.a n = A086910 (n + 1)

end A086910

/-! ## A086910.P5530035677231903504

`A109613(A083236(n+1))`
-/

namespace A086910.P5530035677231903504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A083236 (n + 1)).toNat

end

end A086910.P5530035677231903504

namespace A086910

/-- `A109613(A083236(n+1))` -/
def P5530035677231903504.Spec : Prop :=
  ∀ n, P5530035677231903504.a n = A086910 (n + 1)

end A086910

/-!
# A086912: a(n) = prime(a(n-1)) + abs(prime(n)-a(n-1)).

The programs for A086912, there is no canonical definition to state claims against.
-/

/-! ## A086912.P3002195722993448015

`A081594(A255906(n+1))`
-/

namespace A086912.P3002195722993448015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (A255906 (n + 1)).toNat

end

end A086912.P3002195722993448015

/-! ## A086912.P13829864253841022300

`∑{d}[A156689(A185631(n)), #]`
-/

namespace A086912.P13829864253841022300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A185631 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086912.P13829864253841022300

/-!
# A086914: a(n) = ((n-1)^n/n)*Sum_{k>=1} (k^n/n^k).

The programs for A086914, there is no canonical definition to state claims against.
-/

/-! ## A086914.P7247810928749004863

`record[Δ[A208238(A208183(2*n))]]`
-/

namespace A086914.P7247810928749004863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208238 (A208183 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086914.P7247810928749004863

/-!
# A086915: Triangle read by rows: T(n,k) = 2^k * (n!/k!)*binomial(n-1,k-1).

The programs for A086915, the canonical program `A086915.P10852167916751905758` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086915 has offset 1).

The definition of A086915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086915.P12361195045985387154

`abs(A094587(n)*A185342(n))`
-/

namespace A086915.P12361195045985387154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094587 n * A185342 n|

end

end A086915.P12361195045985387154

namespace A086915

/-- `abs(A094587(n)*A185342(n))` -/
def P12361195045985387154.Spec : Prop :=
  ∀ n, P12361195045985387154.a n = A086915 (n + 1)

end A086915

/-! ## A086915.P10852167916751905758

`A094587(n)*A276985(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A086915

/-- `A094587(n)*A276985(n+1)` -/
def P10852167916751905758.Spec : Prop :=
  ∀ n, P10852167916751905758.a n = A086915 (n + 1)

theorem P10852167916751905758.correct : P10852167916751905758.Spec := by
  intro n
  simp only [A086915, Nat.add_sub_cancel]

end A086915

/-! ## A086915.P5015417646533352363

`2*A094587(n)*A193862(n)`
-/

namespace A086915.P5015417646533352363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094587 n * A193862 n)

end

end A086915.P5015417646533352363

namespace A086915

/-- `2*A094587(n)*A193862(n)` -/
def P5015417646533352363.Spec : Prop :=
  ∀ n, P5015417646533352363.a n = A086915 (n + 1)

end A086915

/-! ## A086915.P6641168154902142001

`2*A105278(n+1)*A059268(n)`
-/

namespace A086915.P6641168154902142001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105278 (n + 1) * A059268 n

end

end A086915.P6641168154902142001

namespace A086915

/-- `2*A105278(n+1)*A059268(n)` -/
def P6641168154902142001.Spec : Prop :=
  ∀ n, P6641168154902142001.a n = A086915 (n + 1)

end A086915

/-! ## A086915.P15471604011861930192

`A013609(A014132(n+1))*A094587(n)`
-/

namespace A086915.P15471604011861930192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A014132 (n + 1)).toNat * A094587 n

end

end A086915.P15471604011861930192

namespace A086915

/-- `A013609(A014132(n+1))*A094587(n)` -/
def P15471604011861930192.Spec : Prop :=
  ∀ n, P15471604011861930192.a n = A086915 (n + 1)

end A086915

/-! ## A086915.P9322235947960339753

`A007318(n)*A126064(A014132(n+1))`
-/

namespace A086915.P9322235947960339753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126064 (A014132 (n + 1)).toNat

end

end A086915.P9322235947960339753

namespace A086915

/-- `A007318(n)*A126064(A014132(n+1))` -/
def P9322235947960339753.Spec : Prop :=
  ∀ n, P9322235947960339753.a n = A086915 (n + 1)

end A086915

/-! ## A086915.P3371729814486399731

`A000079(A002260(n+1))*A105278(n+1)`
-/

namespace A086915.P3371729814486399731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1)).toNat * A105278 (n + 1)

end

end A086915.P3371729814486399731

namespace A086915

/-- `A000079(A002260(n+1))*A105278(n+1)` -/
def P3371729814486399731.Spec : Prop :=
  ∀ n, P3371729814486399731.a n = A086915 (n + 1)

end A086915

/-! ## A086915.P3314034410881233458

`A005843(A059268(n))*A105278(n+1)`
-/

namespace A086915.P3314034410881233458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A059268 n).toNat * A105278 (n + 1)

end

end A086915.P3314034410881233458

namespace A086915

/-- `A005843(A059268(n))*A105278(n+1)` -/
def P3314034410881233458.Spec : Prop :=
  ∀ n, P3314034410881233458.a n = A086915 (n + 1)

end A086915

/-! ## A086915.P10211223768045649966

`A003602(A175332(n+1))*A105278(n+1)`
-/

namespace A086915.P10211223768045649966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A175332 (n + 1)).toNat * A105278 (n + 1)

end

end A086915.P10211223768045649966

namespace A086915

/-- `A003602(A175332(n+1))*A105278(n+1)` -/
def P10211223768045649966.Spec : Prop :=
  ∀ n, P10211223768045649966.a n = A086915 (n + 1)

end A086915

/-! ## A086915.P12323623961811937567

`A005843(A193862(n))*A094587(n)`
-/

namespace A086915.P12323623961811937567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A193862 n).toNat * A094587 n

end

end A086915.P12323623961811937567

namespace A086915

/-- `A005843(A193862(n))*A094587(n)` -/
def P12323623961811937567.Spec : Prop :=
  ∀ n, P12323623961811937567.a n = A086915 (n + 1)

end A086915

/-!
# A086916: Number of digits in terms of A087732.

The programs for A086916, there is no canonical definition to state claims against.
-/

/-! ## A086916.P11861222069281858764

`∑{digits}[A087732(n+1), A324160(#)]`
-/

namespace A086916.P11861222069281858764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A324160 x).sum

end

end A086916.P11861222069281858764

/-! ## A086916.P6897140302493469051

`∑{digits}[A087732(n+1), A001222(A087715(#))]`
-/

namespace A086916.P6897140302493469051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001222 (A087715 x).toNat).sum

end

end A086916.P6897140302493469051

/-! ## A086916.P12492505830794519463

`∑{digits}[A087732(n+1), A001222(A087731(#))]`
-/

namespace A086916.P12492505830794519463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001222 (A087731 x).toNat).sum

end

end A086916.P12492505830794519463

/-! ## A086916.P2318941844932377700

`∑{digits}[A087732(n+1), A055396(A087651(#))]`
-/

namespace A086916.P2318941844932377700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055396 (A087651 x).toNat).sum

end

end A086916.P2318941844932377700

/-! ## A086916.P11431644356539947866

`∑{digits}[A087732(n+1), A087727(A087734(#))]`
-/

namespace A086916.P11431644356539947866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A087727 (A087734 x).toNat).sum

end

end A086916.P11431644356539947866

/-!
# A086917: a(n) = floor(prime(n) - n*(log(n) - log(log(n)) - 1)) for n>=2.

The programs for A086917, there is no canonical definition to state claims against.
-/

/-! ## A086917.P728582114521780197

`A065091(n+1)-A255270(A017919(n))`
-/

namespace A086917.P728582114521780197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A255270 (A017919 n).toNat

end

end A086917.P728582114521780197

/-! ## A086917.P12349865886273560565

`A000040(n+2)-A255270(A129954(n))`
-/

namespace A086917.P12349865886273560565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A255270 (A129954 n).toNat

end

end A086917.P12349865886273560565

/-!
# A086918: Numbers with at least three digits such that the absolute differences between successive digits forms a palindrome (when leading zeros are omitted).

The programs for A086918, there is no canonical definition to state claims against.
-/

/-! ## A086918.P14981349178590764039

`∪[A292731(A130250(2^(n+1))), A328996(n+1)]`
-/

namespace A086918.P14981349178590764039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292731 (A130250 (2 ^ (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086918.P14981349178590764039

/-! ## A086918.P9297700878503532382

`eq[A062329(n), A227961(n+1)]`
-/

namespace A086918.P9297700878503532382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086918.P9297700878503532382

/-! ## A086918.P1584629152503492236

`∩[A069838(n+1), A292451(n+1)]`
-/

namespace A086918.P1584629152503492236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086918.P1584629152503492236

/-! ## A086918.P13839624152290011554

`∩[A069838(n+1), A292731(n+1)]`
-/

namespace A086918.P13839624152290011554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086918.P13839624152290011554

/-! ## A086918.P10569456255571124655

`∩[A119028(n+1), A292451(n+1)]`
-/

namespace A086918.P10569456255571124655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086918.P10569456255571124655

/-!
# A086921: Least number with at least n divisors that are at most its square root.

The programs for A086921, there is no canonical definition to state claims against.
-/

/-! ## A086921.P8487394102648816834

`A061799(2*n+1)`
-/

namespace A086921.P8487394102648816834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (2 * n + 1)

end

end A086921.P8487394102648816834

/-! ## A086921.P13096821295602241548

`and(-1, A061799((n+1)²-n²))`
-/

namespace A086921.P13096821295602241548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A061799 ((n + 1) ^ 2 - n ^ 2))

end

end A086921.P13096821295602241548

/-! ## A086921.P762523725376209526

`A061799((n+1)²-n²)%A119402(n+1)`
-/

namespace A086921.P762523725376209526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061799 ((n + 1) ^ 2 - n ^ 2)) (A119402 (n + 1))

end

end A086921.P762523725376209526

/-! ## A086921.P13778300831450946470

`lcm(A000002(n+1), A061799((n+1)²-n²))`
-/

namespace A086921.P13778300831450946470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000002 (n + 1)) (A061799 ((n + 1) ^ 2 - n ^ 2))

end

end A086921.P13778300831450946470

/-! ## A086921.P8321396303677466489

`A061799(A005408(n))%A037074(n+1)`
-/

namespace A086921.P8321396303677466489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061799 (A005408 n).toNat) (A037074 (n + 1))

end

end A086921.P8321396303677466489

/-! ## A086921.P10708565633438304940

`A005179(A350786(2*n+1))`
-/

namespace A086921.P10708565633438304940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A350786 (2 * n + 1)).toNat

end

end A086921.P10708565633438304940

/-!
# A086922: Number of idempotent n X n (0,1) matrices over the reals.

The programs for A086922, there is no canonical definition to state claims against.
-/

/-! ## A086922.P14509002766489676593

`A335776(n)+2^n`
-/

namespace A086922.P14509002766489676593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335776 n + (2 ^ n : ℤ)

end

end A086922.P14509002766489676593

/-! ## A086922.P4587424388843628164

`A000225(n)+A335776(n)+1`
-/

namespace A086922.P4587424388843628164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A335776 n + 1)

end

end A086922.P4587424388843628164

/-! ## A086922.P6451391100760663622

`A000079(n)+lcm(2, A335776(n))`
-/

namespace A086922.P6451391100760663622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (Int.lcm 2 (A335776 n) : ℤ)

end

end A086922.P6451391100760663622

/-! ## A086922.P3886179217237601339

`record[gcd(A222821(n+1), A342985(n))]`
-/

namespace A086922.P3886179217237601339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222821 (n + 1)) (A342985 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086922.P3886179217237601339

/-! ## A086922.P6247536844860411212

`A340626(A000079(n))+A335776(n)`
-/

namespace A086922.P6247536844860411212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340626 (A000079 n).toNat + A335776 n

end

end A086922.P6247536844860411212

/-!
# A086923: Primes arising in A086920, or 0 if A086920(n) = 0.

The programs for A086923, there is no canonical definition to state claims against.
-/

/-! ## A086923.P7361999729199165628

`p?[∑[(-n%2)^∑[n]]*A109548(n+1)]`
-/

namespace A086923.P7361999729199165628
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-((n % 2 : ℕ) : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A109548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086923.P7361999729199165628

/-!
# A086924: Primes such that sum of the first and last digits is a square.

The programs for A086924, there is no canonical definition to state claims against.
-/

/-! ## A086924.P7174103561982809316

`p?[∪[A337797(n+1), A337837(n+2)]]`
-/

namespace A086924.P7174103561982809316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337797 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337837 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A086924.P7174103561982809316

/-! ## A086924.P1549102059249307288

`p?[A186716(3*n+4)+A186703(n+1)]`
-/

namespace A086924.P1549102059249307288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186716 (3 * n + 4) + A186703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086924.P1549102059249307288

/-!
# A086925: a(1) = 1; a(n+1) = a(n)/spf(a(n)) + number of earlier occurrences of a(n), spf=A020639 = smallest prime factor.

The programs for A086925, there is no canonical definition to state claims against.
-/

/-! ## A086925.P10822307571193338457

`A157790(A308727(n+1))`
-/

namespace A086925.P10822307571193338457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157790 (A308727 (n + 1)).toNat

end

end A086925.P10822307571193338457

/-! ## A086925.P5253614938148293041

`A007895(or(2, A068197(n+1)))`
-/

namespace A086925.P5253614938148293041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.lor 2 (A068197 (n + 1))).toNat

end

end A086925.P5253614938148293041

/-! ## A086925.P8561078741101841381

`A296658(A376532(n+1)+n)`
-/

namespace A086925.P8561078741101841381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (A376532 (n + 1) + (n : ℤ)).toNat

end

end A086925.P8561078741101841381

/-! ## A086925.P10643410594574820352

`A341969(A301750(n+1))+A103298(n)`
-/

namespace A086925.P10643410594574820352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341969 (A301750 (n + 1)).toNat + A103298 n

end

end A086925.P10643410594574820352

/-! ## A086925.P1868934738038119684

`A130161(A175361(n))+A056239(n+3)`
-/

namespace A086925.P1868934738038119684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130161 (A175361 n).toNat + A056239 (n + 3)

end

end A086925.P1868934738038119684

/-!
# A086926: Product of Fibonacci and (shifted) triangular numbers.

The programs for A086926, the canonical program `A086926.P11568517746438091352` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086926 has offset 0).

The definition of A086926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086926.P13526939949576135057

`A000045(n)*n*(n-1)/2`
-/

namespace A086926.P13526939949576135057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2))

end

end A086926.P13526939949576135057

namespace A086926

/-- `A000045(n)*n*(n-1)/2` -/
def P13526939949576135057.Spec : Prop :=
  ∀ n, P13526939949576135057.a n = (A086926 n : ℚ)

end A086926

/-! ## A086926.P11568517746438091352

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=18, a(5)=50`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086926

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P11568517746438091352.Spec : Prop :=
  ∀ n, P11568517746438091352.a n = A086926 n

theorem P11568517746438091352.correct : P11568517746438091352.Spec := by
  intro n
  simp only [A086926]

end A086926

/-! ## A086926.P878485182443179089

`C(n, 2)*A000045(n)`
-/

namespace A086926.P878485182443179089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A000045 n

end

end A086926.P878485182443179089

namespace A086926

/-- `C(n, 2)*A000045(n)` -/
def P878485182443179089.Spec : Prop :=
  ∀ n, P878485182443179089.a n = A086926 n

end A086926

/-! ## A086926.P13110696601567312812

`abs(C(n, 2)*A236191(n))`
-/

namespace A086926.P13110696601567312812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 : ℤ) * A236191 n|

end

end A086926.P13110696601567312812

namespace A086926

/-- `abs(C(n, 2)*A236191(n))` -/
def P13110696601567312812.Spec : Prop :=
  ∀ n, P13110696601567312812.a n = A086926 n

end A086926

/-! ## A086926.P1606845875687814211

`(n-1)/2*A045925(n)`
-/

namespace A086926.P1606845875687814211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 * (A045925 n : ℚ)

end

end A086926.P1606845875687814211

namespace A086926

/-- `(n-1)/2*A045925(n)` -/
def P1606845875687814211.Spec : Prop :=
  ∀ n, P1606845875687814211.a n = (A086926 n : ℚ)

end A086926

/-! ## A086926.P1771181599880840532

`C(n, 2)*A212804(n+1)`
-/

namespace A086926.P1771181599880840532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A212804 (n + 1)

end

end A086926.P1771181599880840532

namespace A086926

/-- `C(n, 2)*A212804(n+1)` -/
def P1771181599880840532.Spec : Prop :=
  ∀ n, P1771181599880840532.a n = A086926 n

end A086926

/-! ## A086926.P6227199331328479674

`C(n, 2)*A324969(n+1)`
-/

namespace A086926.P6227199331328479674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A324969 (n + 1)

end

end A086926.P6227199331328479674

namespace A086926

/-- `C(n, 2)*A324969(n+1)` -/
def P6227199331328479674.Spec : Prop :=
  ∀ n, P6227199331328479674.a n = A086926 n

end A086926

/-! ## A086926.P8234461833895219265

`(A001611(n)-1)*C(n, 2)`
-/

namespace A086926.P8234461833895219265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * (Nat.choose n 2 : ℤ)

end

end A086926.P8234461833895219265

namespace A086926

/-- `(A001611(n)-1)*C(n, 2)` -/
def P8234461833895219265.Spec : Prop :=
  ∀ n, P8234461833895219265.a n = A086926 n

end A086926

/-! ## A086926.P9645238280844935553

`C(n, 2)*A053602(2*n)`
-/

namespace A086926.P9645238280844935553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A053602 (2 * n)

end

end A086926.P9645238280844935553

namespace A086926

/-- `C(n, 2)*A053602(2*n)` -/
def P9645238280844935553.Spec : Prop :=
  ∀ n, P9645238280844935553.a n = A086926 n

end A086926

/-! ## A086926.P15347990218653862449

`C(n, 2)*A103609(2*n)`
-/

namespace A086926.P15347990218653862449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A103609 (2 * n)

end

end A086926.P15347990218653862449

namespace A086926

/-- `C(n, 2)*A103609(2*n)` -/
def P15347990218653862449.Spec : Prop :=
  ∀ n, P15347990218653862449.a n = A086926 n

end A086926

/-! ## A086926.P2556605265017219930

`C(n, 2)*A302126(2*n)`
-/

namespace A086926.P2556605265017219930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A302126 (2 * n)

end

end A086926.P2556605265017219930

namespace A086926

/-- `C(n, 2)*A302126(2*n)` -/
def P2556605265017219930.Spec : Prop :=
  ∀ n, P2556605265017219930.a n = A086926 n

end A086926

/-! ## A086926.P15734866955117354947

`C(n, 2)*Δ[A000071(n+1)]`
-/

namespace A086926.P15734866955117354947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A086926.P15734866955117354947

namespace A086926

/-- `C(n, 2)*Δ[A000071(n+1)]` -/
def P15734866955117354947.Spec : Prop :=
  ∀ n, P15734866955117354947.a n = A086926 n

end A086926

/-! ## A086926.P12373672467427327760

`C(n, 2)*A129982(2*n+1)`
-/

namespace A086926.P12373672467427327760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A129982 (2 * n + 1)

end

end A086926.P12373672467427327760

namespace A086926

/-- `C(n, 2)*A129982(2*n+1)` -/
def P12373672467427327760.Spec : Prop :=
  ∀ n, P12373672467427327760.a n = A086926 n

end A086926

/-! ## A086926.P13842587231729779065

`C(n, 2)*A303427(2*n+1)`
-/

namespace A086926.P13842587231729779065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A303427 (2 * n + 1)

end

end A086926.P13842587231729779065

namespace A086926

/-- `C(n, 2)*A303427(2*n+1)` -/
def P13842587231729779065.Spec : Prop :=
  ∀ n, P13842587231729779065.a n = A086926 n

end A086926

/-! ## A086926.P12123735531616345090

`(∑[n]-n)*Δ[A000045(n+1)]`
-/

namespace A086926.P12123735531616345090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * (f2 (n + 1) - f2 n)

end

end A086926.P12123735531616345090

namespace A086926

/-- `(∑[n]-n)*Δ[A000045(n+1)]` -/
def P12123735531616345090.Spec : Prop :=
  ∀ n, P12123735531616345090.a n = A086926 n

end A086926

/-! ## A086926.P18006855261007933281

`(∑[n]-n)*A000045(2*n-n)`
-/

namespace A086926.P18006855261007933281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * A000045 (2 * n - n)

end

end A086926.P18006855261007933281

namespace A086926

/-- `(∑[n]-n)*A000045(2*n-n)` -/
def P18006855261007933281.Spec : Prop :=
  ∀ n, P18006855261007933281.a n = A086926 n

end A086926

/-! ## A086926.P13580973082767801034

`A390525(n)-A045925(n)`
-/

namespace A086926.P13580973082767801034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390525 n - A045925 n

end

end A086926.P13580973082767801034

namespace A086926

/-- `A390525(n)-A045925(n)` -/
def P13580973082767801034.Spec : Prop :=
  ∀ n, P13580973082767801034.a n = A086926 n

end A086926

/-! ## A086926.P14678668213039240310

`A212804(n+1)*A161680(n)`
-/

namespace A086926.P14678668213039240310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) * A161680 n

end

end A086926.P14678668213039240310

namespace A086926

/-- `A212804(n+1)*A161680(n)` -/
def P14678668213039240310.Spec : Prop :=
  ∀ n, P14678668213039240310.a n = A086926 n

end A086926

/-! ## A086926.P15896338954490951929

`A161680(n)*A324969(n+1)`
-/

namespace A086926.P15896338954490951929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n * A324969 (n + 1)

end

end A086926.P15896338954490951929

namespace A086926

/-- `A161680(n)*A324969(n+1)` -/
def P15896338954490951929.Spec : Prop :=
  ∀ n, P15896338954490951929.a n = A086926 n

end A086926

/-! ## A086926.P8639416062066302713

`(A001611(n)-1)*A161680(n)`
-/

namespace A086926.P8639416062066302713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A161680 n

end

end A086926.P8639416062066302713

namespace A086926

/-- `(A001611(n)-1)*A161680(n)` -/
def P8639416062066302713.Spec : Prop :=
  ∀ n, P8639416062066302713.a n = A086926 n

end A086926

/-!
# A086927: a(n) = 10*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 10.

The programs for A086927, the canonical program `A086927.P15227786678038446849` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086927 has offset 0).

The definition of A086927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+a(n-2)` (program `A086927.P15227786678038446849`, by `A086927.P15227786678038446849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086927.P15227786678038446849

`10*a(n-1)+a(n-2)` with `a(0)=2, a(1)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086927

/-- `10*a(n-1)+a(n-2)` -/
def P15227786678038446849.Spec : Prop :=
  ∀ n, (P15227786678038446849.a n : ℤ) = A086927 n

theorem P15227786678038446849.correct : P15227786678038446849.Spec := by
  intro n
  simp only [A086927]

end A086927

/-! ## A086927.P12847003984191420242

`(5+sqrt(26))^n+(5-sqrt(26))^n`
-/

namespace A086927.P12847003984191420242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 + Real.sqrt (26 : ℝ)) ^ n + (5 - Real.sqrt (26 : ℝ)) ^ n

end

end A086927.P12847003984191420242

namespace A086927

/-- `(5+sqrt(26))^n+(5-sqrt(26))^n` -/
def P12847003984191420242.Spec : Prop :=
  ∀ n, P12847003984191420242.a n = (A086927 n : ℝ)

end A086927

/-! ## A086927.P5290481614336880814

`2*A088320(n)`
-/

namespace A086927.P5290481614336880814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088320 n

end

end A086927.P5290481614336880814

namespace A086927

/-- `2*A088320(n)` -/
def P5290481614336880814.Spec : Prop :=
  ∀ n, P5290481614336880814.a n = A086927 n

end A086927

/-! ## A086927.P8908623555749912185

`ogf((-2+10x)/(-1+10x+x^2))`
-/

namespace A086927.P8908623555749912185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10] [1, -10, -1] n

end

end A086927.P8908623555749912185

namespace A086927

/-- `ogf((-2+10x)/(-1+10x+x^2))` -/
def P8908623555749912185.Spec : Prop :=
  ∀ n, P8908623555749912185.a n = A086927 n

end A086927

/-! ## A086927.P3357232045147101338

`record[A174509(n)+1]`
-/

namespace A086927.P3357232045147101338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174509 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086927.P3357232045147101338

namespace A086927

/-- `record[A174509(n)+1]` -/
def P3357232045147101338.Spec : Prop :=
  ∀ n, P3357232045147101338.a n = A086927 n

end A086927

/-! ## A086927.P13773056413526960568

`2*Δ[A041040(n)]%A041040(n)`
-/

namespace A086927.P13773056413526960568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (f1 (n + 1) - f1 n) (A041040 n)

end

end A086927.P13773056413526960568

namespace A086927

/-- `2*Δ[A041040(n)]%A041040(n)` -/
def P13773056413526960568.Spec : Prop :=
  ∀ n, P13773056413526960568.a n = A086927 n

end A086927

/-!
# A086928: a(n) = 12*a(n-1) + a(n-2), with a(0) = 2 and a(1) = 12.

The programs for A086928, the canonical program `A086928.P2240618517302853141` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086928 has offset 0).

The definition of A086928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)+a(n-2)` (program `A086928.P2240618517302853141`, by `A086928.P2240618517302853141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086928.P2240618517302853141

`12*a(n-1)+a(n-2)` with `a(0)=2, a(1)=12`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086928

/-- `12*a(n-1)+a(n-2)` -/
def P2240618517302853141.Spec : Prop :=
  ∀ n, (P2240618517302853141.a n : ℤ) = A086928 n

theorem P2240618517302853141.correct : P2240618517302853141.Spec := by
  intro n
  simp only [A086928]

end A086928

/-! ## A086928.P3268824922876992809

`2*A089926(n)`
-/

namespace A086928.P3268824922876992809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089926 n

end

end A086928.P3268824922876992809

namespace A086928

/-- `2*A089926(n)` -/
def P3268824922876992809.Spec : Prop :=
  ∀ n, P3268824922876992809.a n = A086928 n

end A086928

/-! ## A086928.P14621358541530114939

`ogf((-2+12x)/(-1+12x+x^2))`
-/

namespace A086928.P14621358541530114939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -12] [1, -12, -1] n

end

end A086928.P14621358541530114939

namespace A086928

/-- `ogf((-2+12x)/(-1+12x+x^2))` -/
def P14621358541530114939.Spec : Prop :=
  ∀ n, P14621358541530114939.a n = A086928 n

end A086928

/-! ## A086928.P5290479416114224397

`(6+sqrt(37))^n+(6-sqrt(37))^n`
-/

namespace A086928.P5290479416114224397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 + Real.sqrt (37 : ℝ)) ^ n + (6 - Real.sqrt (37 : ℝ)) ^ n

end

end A086928.P5290479416114224397

namespace A086928

/-- `(6+sqrt(37))^n+(6-sqrt(37))^n` -/
def P5290479416114224397.Spec : Prop :=
  ∀ n, P5290479416114224397.a n = (A086928 n : ℝ)

end A086928

/-! ## A086928.P17290374612366245609

`lcm(gcd(4, A086594(n)), A089926(n))`
-/

namespace A086928.P17290374612366245609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 4 (A086594 n) : ℤ) (A089926 n)

end

end A086928.P17290374612366245609

namespace A086928

/-- `lcm(gcd(4, A086594(n)), A089926(n))` -/
def P17290374612366245609.Spec : Prop :=
  ∀ n, (P17290374612366245609.a n : ℤ) = A086928 n

end A086928

/-!
# A086929: a(1) = 1, a(n) = n times (the digit reversal of the (n-1)-th partial sum).

The programs for A086929, there is no canonical definition to state claims against.
-/

/-! ## A086929.P5229852099076189818

`(n+1)*A071817(∑[(1-n)²])`
-/

namespace A086929.P5229852099076189818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071817 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086929.P5229852099076189818

/-!
# A086930: Smallest b>1 such that in base b representation the n-th prime is a repunit.

The programs for A086930, there is no canonical definition to state claims against.
-/

/-! ## A086930.P6599240506736997754

`A059711(p?[2*n+1])`
-/

namespace A086930.P6599240506736997754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086930.P6599240506736997754

/-! ## A086930.P14395875924020393321

`A395985(p?[2*n+1])`
-/

namespace A086930.P14395875924020393321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395985 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086930.P14395875924020393321

/-! ## A086930.P3094581880500630597

`A059711(A065091(n+1))`
-/

namespace A086930.P3094581880500630597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (A065091 (n + 1)).toNat

end

end A086930.P3094581880500630597

/-! ## A086930.P10032663601322528565

`A059711(A140475(n+1))`
-/

namespace A086930.P10032663601322528565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (A140475 (n + 1)).toNat

end

end A086930.P10032663601322528565

/-! ## A086930.P2716696975651224821

`A059711(A000040(n+2))`
-/

namespace A086930.P2716696975651224821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (A000040 (n + 2)).toNat

end

end A086930.P2716696975651224821

/-! ## A086930.P1749212289523724481

`A059711(A006005(n+2))`
-/

namespace A086930.P1749212289523724481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (A006005 (n + 2)).toNat

end

end A086930.P1749212289523724481

/-! ## A086930.P7921916173207121416

`A059711(A171577(n+2))`
-/

namespace A086930.P7921916173207121416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (A171577 (n + 2)).toNat

end

end A086930.P7921916173207121416

/-! ## A086930.P2960059760968550330

`A059711(record[A006530(n+3)])`
-/

namespace A086930.P2960059760968550330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086930.P2960059760968550330

/-! ## A086930.P3812596577240846514

`A059711(record[A014963(n+3)])`
-/

namespace A086930.P3812596577240846514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086930.P3812596577240846514

/-! ## A086930.P13405440872464109593

`A059711(record[A020639(n+3)])`
-/

namespace A086930.P13405440872464109593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086930.P13405440872464109593

/-! ## A086930.P12506134505060527830

`A059711(eq[n, A327119(n+1)+1])`
-/

namespace A086930.P12506134505060527830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327119 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A086930.P12506134505060527830

/-! ## A086930.P7828540367102739316

`A059711(lt[A003415(n)², A023443(n)])`
-/

namespace A086930.P7828540367102739316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086930.P7828540367102739316

/-!
# A086931: a(0) = 1, a(n) = spf(n)*a(n-spf(n)), where spf=A020639 (smallest prime factor).

The programs for A086931, there is no canonical definition to state claims against.
-/

/-! ## A086931.P14679286412004043284

`a(n-A020639(n))*A020639(n)` with `a(0)=1`
-/

namespace A086931.P14679286412004043284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A020639 n).toNat * A020639 n

end

end A086931.P14679286412004043284

/-! ## A086931.P13427412687525925678

`a(A004275(A175126(n)))*A020639(n)` with `a(0)=1`
-/

namespace A086931.P13427412687525925678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004275 (A175126 n).toNat).toNat * A020639 n

end

end A086931.P13427412687525925678

/-!
# A086932: Number of non-congruent solutions of x^2 + y^2 == -1 (mod n).

The programs for A086932, the canonical program `A086932.P4579175929926167128` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086932 has offset 1).

The definition of A086932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086932.P4579175929926167128

`lcm(A060968(n+1), A285193(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A086932

/-- `lcm(A060968(n+1), A285193(n))` -/
def P4579175929926167128.Spec : Prop :=
  ∀ n, (P4579175929926167128.a n : ℤ) = A086932 (n + 1)

theorem P4579175929926167128.correct : P4579175929926167128.Spec := by
  intro n
  simp only [A086932, Nat.add_sub_cancel]

end A086932

/-! ## A086932.P1989622645745947593

`A327832(n+1)%4*A204617(n+1)`
-/

namespace A086932.P1989622645745947593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327832 (n + 1)) 4 * A204617 (n + 1)

end

end A086932.P1989622645745947593

namespace A086932

/-- `A327832(n+1)%4*A204617(n+1)` -/
def P1989622645745947593.Spec : Prop :=
  ∀ n, P1989622645745947593.a n = A086932 (n + 1)

end A086932

/-! ## A086932.P12853494037968322368

`and(A201629(n)-(n+1), A060968(n+1))`
-/

namespace A086932.P12853494037968322368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201629 n - (n + 1 : ℤ)) (A060968 (n + 1))

end

end A086932.P12853494037968322368

namespace A086932

/-- `and(A201629(n)-(n+1), A060968(n+1))` -/
def P12853494037968322368.Spec : Prop :=
  ∀ n, P12853494037968322368.a n = A086932 (n + 1)

end A086932

/-! ## A086932.P2652019205739390135

`∑{d}[n+1, A046897(#)*A120630((n+1)/#)]`
-/

namespace A086932.P2652019205739390135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046897 d * A120630 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086932.P2652019205739390135

namespace A086932

/-- `∑{d}[n+1, A046897(#)*A120630((n+1)/#)]` -/
def P2652019205739390135.Spec : Prop :=
  ∀ n, P2652019205739390135.a n = A086932 (n + 1)

end A086932

/-! ## A086932.P11828156890803121132

`A208895(n+1)/A227553(n+1)*A114643(A014673(n+1))`
-/

namespace A086932.P11828156890803121132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208895 (n + 1) : ℚ) / (A227553 (n + 1) : ℚ) * (A114643 (A014673 (n + 1)).toNat : ℚ)

end

end A086932.P11828156890803121132

namespace A086932

/-- `A208895(n+1)/A227553(n+1)*A114643(A014673(n+1))` -/
def P11828156890803121132.Spec : Prop :=
  ∀ n, P11828156890803121132.a n = (A086932 (n + 1) : ℚ)

end A086932

/-! ## A086932.P10165531482188375296

`A060968(n+1)%A075554(n+1)`
-/

namespace A086932.P10165531482188375296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060968 (n + 1)) (A075554 (n + 1))

end

end A086932.P10165531482188375296

namespace A086932

/-- `A060968(n+1)%A075554(n+1)` -/
def P10165531482188375296.Spec : Prop :=
  ∀ n, P10165531482188375296.a n = A086932 (n + 1)

end A086932

/-! ## A086932.P10991332934153331976

`A395768(n+1)%A075554(n+1)`
-/

namespace A086932.P10991332934153331976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395768 (n + 1)) (A075554 (n + 1))

end

end A086932.P10991332934153331976

namespace A086932

/-- `A395768(n+1)%A075554(n+1)` -/
def P10991332934153331976.Spec : Prop :=
  ∀ n, P10991332934153331976.a n = A086932 (n + 1)

end A086932

/-! ## A086932.P13709871012167351231

`A305191(∑[n+1])`
-/

namespace A086932.P13709871012167351231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086932.P13709871012167351231

namespace A086932

/-- `A305191(∑[n+1])` -/
def P13709871012167351231.Spec : Prop :=
  ∀ n, P13709871012167351231.a n = A086932 (n + 1)

end A086932

/-!
# A086933: Number of solutions to x^2 + y^2 = 0 mod n.

The programs for A086933, the canonical program `A086933.P4574553822298761829` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086933 has offset 1).

The definition of A086933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086933.P9803973523308728544

`A229296(n+1)/2`
-/

namespace A086933.P9803973523308728544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229296 (n + 1) : ℚ) / 2

end

end A086933.P9803973523308728544

namespace A086933

/-- `A229296(n+1)/2` -/
def P9803973523308728544.Spec : Prop :=
  ∀ n, P9803973523308728544.a n = (A086933 (n + 1) : ℚ)

end A086933

/-! ## A086933.P4574553822298761829

`∑{d}[n+1, A111938(#)*A374367((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A086933

/-- `∑{d}[n+1, A111938(#)*A374367((n+1)/#)]` -/
def P4574553822298761829.Spec : Prop :=
  ∀ n, P4574553822298761829.a n = A086933 (n + 1)

theorem P4574553822298761829.correct : P4574553822298761829.Spec := by
  intro n
  simp only [A086933, Nat.add_sub_cancel]

end A086933

/-! ## A086933.P10001312249811772204

`C(A229296(3*(n+1)), 2)%A229296(n+1)`
-/

namespace A086933.P10001312249811772204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A229296 (3 * (n + 1))).toNat 2 : ℤ) (A229296 (n + 1))

end

end A086933.P10001312249811772204

namespace A086933

/-- `C(A229296(3*(n+1)), 2)%A229296(n+1)` -/
def P10001312249811772204.Spec : Prop :=
  ∀ n, P10001312249811772204.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P2657410678949630080

`A000217(A229296(3*(n+1)))%A229296(n+1)`
-/

namespace A086933.P2657410678949630080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A229296 (3 * (n + 1))).toNat) (A229296 (n + 1))

end

end A086933.P2657410678949630080

namespace A086933

/-- `A000217(A229296(3*(n+1)))%A229296(n+1)` -/
def P2657410678949630080.Spec : Prop :=
  ∀ n, P2657410678949630080.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P15650407732208624493

`A001281(A229296(n+1))`
-/

namespace A086933.P15650407732208624493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A229296 (n + 1)).toNat

end

end A086933.P15650407732208624493

namespace A086933

/-- `A001281(A229296(n+1))` -/
def P15650407732208624493.Spec : Prop :=
  ∀ n, P15650407732208624493.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P13014653149831426646

`A004524(A229296(n+1)+1)`
-/

namespace A086933.P13014653149831426646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A229296 (n + 1) + 1).toNat

end

end A086933.P13014653149831426646

namespace A086933

/-- `A004524(A229296(n+1)+1)` -/
def P13014653149831426646.Spec : Prop :=
  ∀ n, P13014653149831426646.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P1389758844046156308

`A004526(A229296(n+1)+1)`
-/

namespace A086933.P1389758844046156308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A229296 (n + 1) + 1).toNat

end

end A086933.P1389758844046156308

namespace A086933

/-- `A004526(A229296(n+1)+1)` -/
def P1389758844046156308.Spec : Prop :=
  ∀ n, P1389758844046156308.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P6238117019376478501

`A008619(A229296(n+1)-1)`
-/

namespace A086933.P6238117019376478501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A229296 (n + 1) - 1).toNat

end

end A086933.P6238117019376478501

namespace A086933

/-- `A008619(A229296(n+1)-1)` -/
def P6238117019376478501.Spec : Prop :=
  ∀ n, P6238117019376478501.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P4131683160180155820

`A110654(A229296(n+1)-1)`
-/

namespace A086933.P4131683160180155820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A229296 (n + 1) - 1).toNat

end

end A086933.P4131683160180155820

namespace A086933

/-- `A110654(A229296(n+1)-1)` -/
def P4131683160180155820.Spec : Prop :=
  ∀ n, P4131683160180155820.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P14022853794559898480

`A029579(A229296(n+1)-2)`
-/

namespace A086933.P14022853794559898480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A229296 (n + 1) - 2).toNat

end

end A086933.P14022853794559898480

namespace A086933

/-- `A029579(A229296(n+1)-2)` -/
def P14022853794559898480.Spec : Prop :=
  ∀ n, P14022853794559898480.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P16341219673386175724

`A004525(lcm(2, A229296(n+1)))`
-/

namespace A086933.P16341219673386175724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A229296 (n + 1)))

end

end A086933.P16341219673386175724

namespace A086933

/-- `A004525(lcm(2, A229296(n+1)))` -/
def P16341219673386175724.Spec : Prop :=
  ∀ n, P16341219673386175724.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P1213992175616719170

`-A097140(A229296(n+1)+3)`
-/

namespace A086933.P1213992175616719170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A097140 (A229296 (n + 1) + 3).toNat

end

end A086933.P1213992175616719170

namespace A086933

/-- `-A097140(A229296(n+1)+3)` -/
def P1213992175616719170.Spec : Prop :=
  ∀ n, P1213992175616719170.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P13075993516270737635

`1-A097140(A229296(n+1)+1)`
-/

namespace A086933.P13075993516270737635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A097140 (A229296 (n + 1) + 1).toNat

end

end A086933.P13075993516270737635

namespace A086933

/-- `1-A097140(A229296(n+1)+1)` -/
def P13075993516270737635.Spec : Prop :=
  ∀ n, P13075993516270737635.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P13607131467181459075

`A029578(A229296(n+1)+2)-1`
-/

namespace A086933.P13607131467181459075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A229296 (n + 1) + 2).toNat - 1

end

end A086933.P13607131467181459075

namespace A086933

/-- `A029578(A229296(n+1)+2)-1` -/
def P13607131467181459075.Spec : Prop :=
  ∀ n, P13607131467181459075.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P17174452382232637077

`A004525(A229296(n+1)+A000007(n))`
-/

namespace A086933.P17174452382232637077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A229296 (n + 1) + A000007 n).toNat

end

end A086933.P17174452382232637077

namespace A086933

/-- `A004525(A229296(n+1)+A000007(n))` -/
def P17174452382232637077.Spec : Prop :=
  ∀ n, P17174452382232637077.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P9458468397888559989

`A001221(A001122(n+1))*A029578(A229296(n+1))`
-/

namespace A086933.P9458468397888559989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001122 (n + 1)).toNat * A029578 (A229296 (n + 1)).toNat

end

end A086933.P9458468397888559989

namespace A086933

/-- `A001221(A001122(n+1))*A029578(A229296(n+1))` -/
def P9458468397888559989.Spec : Prop :=
  ∀ n, P9458468397888559989.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P16833380768666194056

`A001221(A323628(n+1))*A029578(A229296(n+1))`
-/

namespace A086933.P16833380768666194056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A323628 (n + 1)).toNat * A029578 (A229296 (n + 1)).toNat

end

end A086933.P16833380768666194056

namespace A086933

/-- `A001221(A323628(n+1))*A029578(A229296(n+1))` -/
def P16833380768666194056.Spec : Prop :=
  ∀ n, P16833380768666194056.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P17184331428047460612

`A076309(5*A229296(n+1))`
-/

namespace A086933.P17184331428047460612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (5 * A229296 (n + 1)).toNat

end

end A086933.P17184331428047460612

namespace A086933

/-- `A076309(5*A229296(n+1))` -/
def P17184331428047460612.Spec : Prop :=
  ∀ n, P17184331428047460612.a n = A086933 (n + 1)

end A086933

/-! ## A086933.P9369962632315524760

`A305191(∑[n]+1)`
-/

namespace A086933.P9369962632315524760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086933.P9369962632315524760

namespace A086933

/-- `A305191(∑[n]+1)` -/
def P9369962632315524760.Spec : Prop :=
  ∀ n, P9369962632315524760.a n = A086933 (n + 1)

end A086933

/-!
# A086934: E.g.f.: (sqrt(Pi)/2)*erf(log(1-x)).

The programs for A086934, there is no canonical definition to state claims against.
-/

/-! ## A086934.P2313594010473836226

`A357861(A127384(n))-(n+1)`
-/

namespace A086934.P2313594010473836226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357861 (A127384 n).toNat - (n + 1 : ℤ)

end

end A086934.P2313594010473836226

/-! ## A086934.P9896017898686727071

`A014137(n)-A118362(A000097(n))`
-/

namespace A086934.P9896017898686727071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n - A118362 (A000097 n).toNat

end

end A086934.P9896017898686727071

/-! ## A086934.P9229654603318974950

`A185195(A190878(n))-A000124(n)`
-/

namespace A086934.P9229654603318974950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (A190878 n).toNat - A000124 n

end

end A086934.P9229654603318974950

/-!
# A086935: a(n) is the smallest square such that n occurs in its decimal representation.

The programs for A086935, there is no canonical definition to state claims against.
-/

/-! ## A086935.P12465370781647758714

`A038690(n)²`
-/

namespace A086935.P12465370781647758714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 n ^ 2

end

end A086935.P12465370781647758714

/-! ## A086935.P5999153865445595168

`A038690(or(n, char[1]))^2`
-/

namespace A086935.P5999153865445595168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) ^ 2

end

end A086935.P5999153865445595168

/-! ## A086935.P5143616845874414133

`A038690(2*n-n)^2`
-/

namespace A086935.P5143616845874414133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (2 * n - n) ^ 2

end

end A086935.P5143616845874414133

/-! ## A086935.P3559373892971770608

`A038690(2*n-n)*A038690(n)`
-/

namespace A086935.P3559373892971770608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (2 * n - n) * A038690 n

end

end A086935.P3559373892971770608

/-! ## A086935.P14099784000422337368

`A000290(A038690(n)%∑[n+1])`
-/

namespace A086935.P14099784000422337368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A038690 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A086935.P14099784000422337368

/-! ## A086935.P14443688866523795227

`A002620(2*A038690(n))`
-/

namespace A086935.P14443688866523795227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A038690 n).toNat

end

end A086935.P14443688866523795227

/-! ## A086935.P11335999693289289831

`A004652(2*A038690(n))`
-/

namespace A086935.P11335999693289289831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A038690 n).toNat

end

end A086935.P11335999693289289831

/-! ## A086935.P10709956369648851091

`A008794(2*A038690(n))`
-/

namespace A086935.P10709956369648851091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A038690 n).toNat

end

end A086935.P10709956369648851091

/-! ## A086935.P12702832961084320385

`A008497(5*A038690(n))`
-/

namespace A086935.P12702832961084320385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008497 (5 * A038690 n).toNat

end

end A086935.P12702832961084320385

/-! ## A086935.P5774858026811345593

`A018796(A038690(n)*A038690(n))`
-/

namespace A086935.P5774858026811345593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A038690 n * A038690 n).toNat

end

end A086935.P5774858026811345593

/-!
# A086936: Number of primes between n and p(n) inclusive.

The programs for A086936, the canonical program `A086936.P4644119331766733027` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086936 has offset 1).

The definition of A086936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086936.P7829412954084886020

`∑[char[comp[p?[xor(1, n)]]]]`
-/

namespace A086936.P7829412954084886020
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P7829412954084886020

namespace A086936

/-- `∑[char[comp[p?[xor(1, n)]]]]` -/
def P7829412954084886020.Spec : Prop :=
  ∀ n, (P7829412954084886020.a n : ℤ) = A086936 (n + 1)

end A086936

/-! ## A086936.P2930616038962677502

`∑[1-char[p?[xor(1, n)]]]`
-/

namespace A086936.P2930616038962677502
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P2930616038962677502

namespace A086936

/-- `∑[1-char[p?[xor(1, n)]]]` -/
def P2930616038962677502.Spec : Prop :=
  ∀ n, P2930616038962677502.a n = A086936 (n + 1)

end A086936

/-! ## A086936.P4644119331766733027

`∑[1-∑{p}[n, val(#, n)]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086936

/-- `∑[1-∑{p}[n, val(#, n)]]` -/
def P4644119331766733027.Spec : Prop :=
  ∀ n, P4644119331766733027.a n = A086936 (n + 1)

theorem P4644119331766733027.correct : P4644119331766733027.Spec := by
  intro n
  simp only [A086936, Nat.add_sub_cancel]

end A086936

/-! ## A086936.P13056796684174652218

`∑[∏{p}[n, 1-val(#, n)]]`
-/

namespace A086936.P13056796684174652218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (1 - (SequenceMachineLib.valuation p n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P13056796684174652218

namespace A086936

/-- `∑[∏{p}[n, 1-val(#, n)]]` -/
def P13056796684174652218.Spec : Prop :=
  ∀ n, P13056796684174652218.a n = A086936 (n + 1)

end A086936

/-! ## A086936.P6101342257500713244

`∑[1-∑{p}[n, C(#, n)]]`
-/

namespace A086936.P6101342257500713244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P6101342257500713244

namespace A086936

/-- `∑[1-∑{p}[n, C(#, n)]]` -/
def P6101342257500713244.Spec : Prop :=
  ∀ n, P6101342257500713244.a n = A086936 (n + 1)

end A086936

/-! ## A086936.P6195523785820791655

`∑[∏{p}[n, 1-C(#, n)]]`
-/

namespace A086936.P6195523785820791655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (1 - (Nat.choose p n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P6195523785820791655

namespace A086936

/-- `∑[∏{p}[n, 1-C(#, n)]]` -/
def P6195523785820791655.Spec : Prop :=
  ∀ n, P6195523785820791655.a n = A086936 (n + 1)

end A086936

/-! ## A086936.P3350237922972454730

`∑[xor(1, ∑{p}[n, C(#, n)])]`
-/

namespace A086936.P3350237922972454730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P3350237922972454730

namespace A086936

/-- `∑[xor(1, ∑{p}[n, C(#, n)])]` -/
def P3350237922972454730.Spec : Prop :=
  ∀ n, (P3350237922972454730.a n : ℤ) = A086936 (n + 1)

end A086936

/-! ## A086936.P5002624942574263056

`∑[∏{p}[n, #%n/#]]`
-/

namespace A086936.P5002624942574263056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p % n : ℕ) : ℚ) / (p : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P5002624942574263056

namespace A086936

/-- `∑[∏{p}[n, #%n/#]]` -/
def P5002624942574263056.Spec : Prop :=
  ∀ n, P5002624942574263056.a n = (A086936 (n + 1) : ℚ)

end A086936

/-! ## A086936.P6585207158989686872

`∑[char[comp[p?[n%3+n]]]]`
-/

namespace A086936.P6585207158989686872
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P6585207158989686872

namespace A086936

/-- `∑[char[comp[p?[n%3+n]]]]` -/
def P6585207158989686872.Spec : Prop :=
  ∀ n, (P6585207158989686872.a n : ℤ) = A086936 (n + 1)

end A086936

/-! ## A086936.P5197021643109757594

`∑[char[comp[p?[n-(-1)^n]]]]`
-/

namespace A086936.P5197021643109757594
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).toNat.Prime) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P5197021643109757594

namespace A086936

/-- `∑[char[comp[p?[n-(-1)^n]]]]` -/
def P5197021643109757594.Spec : Prop :=
  ∀ n, (P5197021643109757594.a n : ℤ) = A086936 (n + 1)

end A086936

/-! ## A086936.P6596708425287120812

`∑[char[A103164(n)]]`
-/

namespace A086936.P6596708425287120812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P6596708425287120812

namespace A086936

/-- `∑[char[A103164(n)]]` -/
def P6596708425287120812.Spec : Prop :=
  ∀ n, (P6596708425287120812.a n : ℤ) = A086936 (n + 1)

end A086936

/-! ## A086936.P175004548866962979

`∑[char[A282462(n)]]`
-/

namespace A086936.P175004548866962979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P175004548866962979

namespace A086936

/-- `∑[char[A282462(n)]]` -/
def P175004548866962979.Spec : Prop :=
  ∀ n, (P175004548866962979.a n : ℤ) = A086936 (n + 1)

end A086936

/-! ## A086936.P18354243261256941229

`∑[C(2, A055671(n))]`
-/

namespace A086936.P18354243261256941229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P18354243261256941229

namespace A086936

/-- `∑[C(2, A055671(n))]` -/
def P18354243261256941229.Spec : Prop :=
  ∀ n, (P18354243261256941229.a n : ℤ) = A086936 (n + 1)

end A086936

/-! ## A086936.P11340258287713591280

`1-A230980(n)+n`
-/

namespace A086936.P11340258287713591280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A230980 n + (n : ℤ)

end

end A086936.P11340258287713591280

namespace A086936

/-- `1-A230980(n)+n` -/
def P11340258287713591280.Spec : Prop :=
  ∀ n, P11340258287713591280.a n = A086936 (n + 1)

end A086936

/-! ## A086936.P11469626159849392232

`∑[(1-A105700(n))²]`
-/

namespace A086936.P11469626159849392232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A105700 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P11469626159849392232

namespace A086936

/-- `∑[(1-A105700(n))²]` -/
def P11469626159849392232.Spec : Prop :=
  ∀ n, P11469626159849392232.a n = A086936 (n + 1)

end A086936

/-! ## A086936.P8958163958943359811

`∑[char[A141468(n+1)]]`
-/

namespace A086936.P8958163958943359811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P8958163958943359811

namespace A086936

/-- `∑[char[A141468(n+1)]]` -/
def P8958163958943359811.Spec : Prop :=
  ∀ n, (P8958163958943359811.a n : ℤ) = A086936 (n + 1)

end A086936

/-! ## A086936.P13767732567041085591

`∑[char[A191558(n+1)]]`
-/

namespace A086936.P13767732567041085591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P13767732567041085591

namespace A086936

/-- `∑[char[A191558(n+1)]]` -/
def P13767732567041085591.Spec : Prop :=
  ∀ n, (P13767732567041085591.a n : ℤ) = A086936 (n + 1)

end A086936

/-! ## A086936.P15474349759533890617

`∑[char[A253073(n+1)]]`
-/

namespace A086936.P15474349759533890617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253073 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P15474349759533890617

namespace A086936

/-- `∑[char[A253073(n+1)]]` -/
def P15474349759533890617.Spec : Prop :=
  ∀ n, (P15474349759533890617.a n : ℤ) = A086936 (n + 1)

end A086936

/-! ## A086936.P4996058616426662756

`∑[1-char[A007918(n)]]`
-/

namespace A086936.P4996058616426662756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P4996058616426662756

namespace A086936

/-- `∑[1-char[A007918(n)]]` -/
def P4996058616426662756.Spec : Prop :=
  ∀ n, P4996058616426662756.a n = A086936 (n + 1)

end A086936

/-! ## A086936.P16597499899444504809

`∑[1-char[A051697(n)]]`
-/

namespace A086936.P16597499899444504809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086936.P16597499899444504809

namespace A086936

/-- `∑[1-char[A051697(n)]]` -/
def P16597499899444504809.Spec : Prop :=
  ∀ n, P16597499899444504809.a n = A086936 (n + 1)

end A086936

/-!
# A086937: Number of distinct zeros of x^2-x-1 mod prime(n).

The programs for A086937, the canonical program `A086937.P4437992644612219470` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086937 has offset 1).

The definition of A086937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086937.P4437992644612219470

`(p?[xor(1, n)]²+1)%5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086937

/-- `(p?[xor(1, n)]²+1)%5` -/
def P4437992644612219470.Spec : Prop :=
  ∀ n, (P4437992644612219470.a n : ℤ) = A086937 (n + 1)

theorem P4437992644612219470.correct : P4437992644612219470.Spec := by
  intro n
  simp only [A086937, Nat.add_sub_cancel]

end A086937

/-! ## A086937.P6219495764758066959

`∑{d}[p?[xor(1, n)], #²]%5`
-/

namespace A086937.P6219495764758066959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d ^ 2) % 5

end

end A086937.P6219495764758066959

namespace A086937

/-- `∑{d}[p?[xor(1, n)], #²]%5` -/
def P6219495764758066959.Spec : Prop :=
  ∀ n, (P6219495764758066959.a n : ℤ) = A086937 (n + 1)

end A086937

/-! ## A086937.P1872357506850060800

`abs((p?[xor(1, n)]²-4)%5)`
-/

namespace A086937.P1872357506850060800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ) - 4) 5|

end

end A086937.P1872357506850060800

namespace A086937

/-- `abs((p?[xor(1, n)]²-4)%5)` -/
def P1872357506850060800.Spec : Prop :=
  ∀ n, P1872357506850060800.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P15339250732171412209

`(p?[n%3+n]²+1)%5`
-/

namespace A086937.P15339250732171412209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1) % 5

end

end A086937.P15339250732171412209

namespace A086937

/-- `(p?[n%3+n]²+1)%5` -/
def P15339250732171412209.Spec : Prop :=
  ∀ n, (P15339250732171412209.a n : ℤ) = A086937 (n + 1)

end A086937

/-! ## A086937.P13865674291351242672

`(p?[round(8*n/7)]²-4)%5`
-/

namespace A086937.P13865674291351242672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 4) 5

end

end A086937.P13865674291351242672

namespace A086937

/-- `(p?[round(8*n/7)]²-4)%5` -/
def P13865674291351242672.Spec : Prop :=
  ∀ n, P13865674291351242672.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P10568623939251365585

`A035187(p?[xor(1, n)])`
-/

namespace A086937.P10568623939251365585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086937.P10568623939251365585

namespace A086937

/-- `A035187(p?[xor(1, n)])` -/
def P10568623939251365585.Spec : Prop :=
  ∀ n, P10568623939251365585.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P10527963020491902759

`A066872(n+1)%5`
-/

namespace A086937.P10527963020491902759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066872 (n + 1)) 5

end

end A086937.P10527963020491902759

namespace A086937

/-- `A066872(n+1)%5` -/
def P10527963020491902759.Spec : Prop :=
  ∀ n, P10527963020491902759.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P583198776133586379

`A166010(n+1)%5`
-/

namespace A086937.P583198776133586379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166010 (n + 1)) 5

end

end A086937.P583198776133586379

namespace A086937

/-- `A166010(n+1)%5` -/
def P583198776133586379.Spec : Prop :=
  ∀ n, P583198776133586379.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P10466465757561077797

`(A000040(n+1)²+1)%5`
-/

namespace A086937.P10466465757561077797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2 + 1) 5

end

end A086937.P10466465757561077797

namespace A086937

/-- `(A000040(n+1)²+1)%5` -/
def P10466465757561077797.Spec : Prop :=
  ∀ n, P10466465757561077797.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P16986022077426270967

`record[A006530(n+2)²+1]%5`
-/

namespace A086937.P16986022077426270967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 5

end

end A086937.P16986022077426270967

namespace A086937

/-- `record[A006530(n+2)²+1]%5` -/
def P16986022077426270967.Spec : Prop :=
  ∀ n, P16986022077426270967.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P17531247894771421821

`record[A020639(n+2)²-4]%5`
-/

namespace A086937.P17531247894771421821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2 - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 5

end

end A086937.P17531247894771421821

namespace A086937

/-- `record[A020639(n+2)²-4]%5` -/
def P17531247894771421821.Spec : Prop :=
  ∀ n, P17531247894771421821.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P1348163946350398236

`A091398(p?[A064429(n)])`
-/

namespace A086937.P1348163946350398236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091398 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086937.P1348163946350398236

namespace A086937

/-- `A091398(p?[A064429(n)])` -/
def P1348163946350398236.Spec : Prop :=
  ∀ n, P1348163946350398236.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P4075451067686013811

`A035187(A000040(n+1))`
-/

namespace A086937.P4075451067686013811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A000040 (n + 1)).toNat

end

end A086937.P4075451067686013811

namespace A086937

/-- `A035187(A000040(n+1))` -/
def P4075451067686013811.Spec : Prop :=
  ∀ n, P4075451067686013811.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P14288758797884689096

`A035187(A001749(n+1))`
-/

namespace A086937.P14288758797884689096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A001749 (n + 1)).toNat

end

end A086937.P14288758797884689096

namespace A086937

/-- `A035187(A001749(n+1))` -/
def P14288758797884689096.Spec : Prop :=
  ∀ n, P14288758797884689096.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P18151004711190590954

`A035187(A001750(n+1))`
-/

namespace A086937.P18151004711190590954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A001750 (n + 1)).toNat

end

end A086937.P18151004711190590954

namespace A086937

/-- `A035187(A001750(n+1))` -/
def P18151004711190590954.Spec : Prop :=
  ∀ n, P18151004711190590954.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P4052316838007192155

`A035227(A063534(n+1))`
-/

namespace A086937.P4052316838007192155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035227 (A063534 (n + 1)).toNat

end

end A086937.P4052316838007192155

namespace A086937

/-- `A035227(A063534(n+1))` -/
def P4052316838007192155.Spec : Prop :=
  ∀ n, P4052316838007192155.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P17621926254621448511

`A053796(A052147(n+1))`
-/

namespace A086937.P17621926254621448511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053796 (A052147 (n + 1)).toNat

end

end A086937.P17621926254621448511

namespace A086937

/-- `A053796(A052147(n+1))` -/
def P17621926254621448511.Spec : Prop :=
  ∀ n, P17621926254621448511.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P15782526512587018419

`A035187(A072900(n+1))`
-/

namespace A086937.P15782526512587018419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A072900 (n + 1)).toNat

end

end A086937.P15782526512587018419

namespace A086937

/-- `A035187(A072900(n+1))` -/
def P15782526512587018419.Spec : Prop :=
  ∀ n, P15782526512587018419.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P11201200028469481965

`A053796(A129071(n+1))`
-/

namespace A086937.P11201200028469481965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053796 (A129071 (n + 1)).toNat

end

end A086937.P11201200028469481965

namespace A086937

/-- `A053796(A129071(n+1))` -/
def P11201200028469481965.Spec : Prop :=
  ∀ n, P11201200028469481965.a n = A086937 (n + 1)

end A086937

/-! ## A086937.P4528744514929599081

`A035187(A161847(n+1))`
-/

namespace A086937.P4528744514929599081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A161847 (n + 1)).toNat

end

end A086937.P4528744514929599081

namespace A086937

/-- `A035187(A161847(n+1))` -/
def P4528744514929599081.Spec : Prop :=
  ∀ n, P4528744514929599081.a n = A086937 (n + 1)

end A086937

/-!
# A086938: Smallest m with A086571(m) = n.

The programs for A086938, there is no canonical definition to state claims against.
-/

/-! ## A086938.P3487401121462892994

`A086572(A086939(n+1))`
-/

namespace A086938.P3487401121462892994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086572 (A086939 (n + 1)).toNat

end

end A086938.P3487401121462892994

/-! ## A086938.P4096409419795313016

`A000188(A000578(n+1)*A262626(3*n+5))`
-/

namespace A086938.P4096409419795313016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000578 (n + 1) * A262626 (3 * n + 5)).toNat

end

end A086938.P4096409419795313016

/-!
# A086939: Greatest m with A086571(m) = n.

The programs for A086939, there is no canonical definition to state claims against.
-/

/-! ## A086939.P3747637468317481271

`A086572(A086938(n+1))`
-/

namespace A086939.P3747637468317481271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086572 (A086938 (n + 1)).toNat

end

end A086939.P3747637468317481271

/-! ## A086939.P13574220419099125036

`(n+1)*A076427(A302392(n+1))`
-/

namespace A086939.P13574220419099125036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076427 (A302392 (n + 1)).toNat

end

end A086939.P13574220419099125036

/-! ## A086939.P4242041229651422920

`(A331910(A248479(n+1))+1)*(n+1)`
-/

namespace A086939.P4242041229651422920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A331910 (A248479 (n + 1)).toNat + 1) * (n + 1 : ℤ)

end

end A086939.P4242041229651422920

/-! ## A086939.P2563385090803554205

`(n+1)*A106493(A016873(2*(n+2)))`
-/

namespace A086939.P2563385090803554205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106493 (A016873 (2 * (n + 2))).toNat

end

end A086939.P2563385090803554205

/-! ## A086939.P2683910275560049509

`(n+1)*A102669(A089767(3*n+4))`
-/

namespace A086939.P2683910275560049509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A102669 (A089767 (3 * n + 4)).toNat

end

end A086939.P2683910275560049509

/-!
# A086940: a(n) = k where R(k+4) = 2.

The programs for A086940, the canonical program `A086940.P16132634987454480918` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086940 has offset 1).

The definition of A086940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086940.P15841101656122212251

`2*(10^(n+1)-2)`
-/

namespace A086940.P15841101656122212251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((10 ^ (n + 1) : ℤ) - 2)

end

end A086940.P15841101656122212251

namespace A086940

/-- `2*(10^(n+1)-2)` -/
def P15841101656122212251.Spec : Prop :=
  ∀ n, P15841101656122212251.a n = A086940 (n + 1)

theorem P15841101656122212251.correct : P15841101656122212251.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086940, Nat.add_sub_cancel, A086940.P15841101656122212251.a, A086940.P16132634987454480918.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086940, Nat.add_sub_cancel, A086940.P15841101656122212251.a, A086940.P16132634987454480918.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086940

/-! ## A086940.P16132634987454480918

`11*a(n-1)-10*a(n-2)` with `a(0)=16, a(1)=196`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086940

/-- `11*a(n-1)-10*a(n-2)` -/
def P16132634987454480918.Spec : Prop :=
  ∀ n, P16132634987454480918.a n = A086940 (n + 1)

theorem P16132634987454480918.correct : P16132634987454480918.Spec := by
  intro n
  simp only [A086940, Nat.add_sub_cancel]

end A086940

/-! ## A086940.P14430275593479550089

`A086942(n+1)/2`
-/

namespace A086940.P14430275593479550089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086942 (n + 1) : ℚ) / 2

end

end A086940.P14430275593479550089

namespace A086940

/-- `A086942(n+1)/2` -/
def P14430275593479550089.Spec : Prop :=
  ∀ n, P14430275593479550089.a n = (A086940 (n + 1) : ℚ)

end A086940

/-! ## A086940.P4838319752157995624

`ogf((16+20x)/(1-11x+10x^2))`
-/

namespace A086940.P4838319752157995624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 20] [1, -11, 10] n

end

end A086940.P4838319752157995624

namespace A086940

/-- `ogf((16+20x)/(1-11x+10x^2))` -/
def P4838319752157995624.Spec : Prop :=
  ∀ n, P4838319752157995624.a n = A086940 (n + 1)

end A086940

/-! ## A086940.P18230202777660762953

`xor(2, ∑[18*10^n])`
-/

namespace A086940.P18230202777660762953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086940.P18230202777660762953

namespace A086940

/-- `xor(2, ∑[18*10^n])` -/
def P18230202777660762953.Spec : Prop :=
  ∀ n, (P18230202777660762953.a n : ℤ) = A086940 (n + 1)

end A086940

/-! ## A086940.P16030028631108784868

`and(-4, ∑[18*10^n])`
-/

namespace A086940.P16030028631108784868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * 10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-4) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A086940.P16030028631108784868

namespace A086940

/-- `and(-4, ∑[18*10^n])` -/
def P16030028631108784868.Spec : Prop :=
  ∀ n, P16030028631108784868.a n = A086940 (n + 1)

end A086940

/-! ## A086940.P6359125010363109102

`abs(xor(-2, -10^(n+1))+10^(n+1)-2)`
-/

namespace A086940.P6359125010363109102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (-(10 ^ (n + 1) : ℤ)) + ((10 ^ (n + 1) : ℤ) - 2)|

end

end A086940.P6359125010363109102

namespace A086940

/-- `abs(xor(-2, -10^(n+1))+10^(n+1)-2)` -/
def P6359125010363109102.Spec : Prop :=
  ∀ n, P6359125010363109102.a n = A086940 (n + 1)

end A086940

/-! ## A086940.P18276400515188762051

`abs(record[10^abs(1-n)-2]+10^(n+1)-2)`
-/

namespace A086940.P18276400515188762051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((10 ^ (n + 1) : ℤ) - 2 : ℚ)|

end

end A086940.P18276400515188762051

namespace A086940

/-- `abs(record[10^abs(1-n)-2]+10^(n+1)-2)` -/
def P18276400515188762051.Spec : Prop :=
  ∀ n, P18276400515188762051.a n = (A086940 (n + 1) : ℚ)

end A086940

/-!
# A086941: a(n) = k where R(k+6) = 3.

The programs for A086941, the canonical program `A086941.P9613645698965422958` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086941 has offset 1).

The definition of A086941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086941.P2726842153515648708

`3*(10^(n+1)-2)`
-/

namespace A086941.P2726842153515648708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((10 ^ (n + 1) : ℤ) - 2)

end

end A086941.P2726842153515648708

namespace A086941

/-- `3*(10^(n+1)-2)` -/
def P2726842153515648708.Spec : Prop :=
  ∀ n, P2726842153515648708.a n = A086941 (n + 1)

theorem P2726842153515648708.correct : P2726842153515648708.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086941, Nat.add_sub_cancel, A086941.P2726842153515648708.a, A086941.P9613645698965422958.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086941, Nat.add_sub_cancel, A086941.P2726842153515648708.a, A086941.P9613645698965422958.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086941

/-! ## A086941.P9613645698965422958

`11*a(n-1)-10*a(n-2)` with `a(0)=24, a(1)=294`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086941

/-- `11*a(n-1)-10*a(n-2)` -/
def P9613645698965422958.Spec : Prop :=
  ∀ n, P9613645698965422958.a n = A086941 (n + 1)

theorem P9613645698965422958.correct : P9613645698965422958.Spec := by
  intro n
  simp only [A086941, Nat.add_sub_cancel]

end A086941

/-! ## A086941.P5843814415479472846

`lcm(3, 2-10^(n+1))`
-/

namespace A086941.P5843814415479472846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (2 - (10 ^ (n + 1) : ℤ))

end

end A086941.P5843814415479472846

namespace A086941

/-- `lcm(3, 2-10^(n+1))` -/
def P5843814415479472846.Spec : Prop :=
  ∀ n, (P5843814415479472846.a n : ℤ) = A086941 (n + 1)

end A086941

/-!
# A086942: Integers k such that R(k+8) = 4.

The programs for A086942, the canonical program `A086942.P10671025876374488277` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086942 has offset 1).

The definition of A086942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086942.P10671025876374488277

`4*10^(n+1)-8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086942

/-- `4*10^(n+1)-8` -/
def P10671025876374488277.Spec : Prop :=
  ∀ n, P10671025876374488277.a n = A086942 (n + 1)

theorem P10671025876374488277.correct : P10671025876374488277.Spec := by
  intro n
  simp only [A086942, Nat.add_sub_cancel]

end A086942

/-! ## A086942.P4865996177518356686

`8*A198971(n)`
-/

namespace A086942.P4865996177518356686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A198971 n

end

end A086942.P4865996177518356686

namespace A086942

/-- `8*A198971(n)` -/
def P4865996177518356686.Spec : Prop :=
  ∀ n, P4865996177518356686.a n = A086942 (n + 1)

end A086942

/-! ## A086942.P12146789354320121336

`2*A086940(n+1)`
-/

namespace A086942.P12146789354320121336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086940 (n + 1)

end

end A086942.P12146789354320121336

namespace A086942

/-- `2*A086940(n+1)` -/
def P12146789354320121336.Spec : Prop :=
  ∀ n, P12146789354320121336.a n = A086942 (n + 1)

end A086942

/-! ## A086942.P14134372176616118211

`4*A099150(n+1)`
-/

namespace A086942.P14134372176616118211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A099150 (n + 1)

end

end A086942.P14134372176616118211

namespace A086942

/-- `4*A099150(n+1)` -/
def P14134372176616118211.Spec : Prop :=
  ∀ n, P14134372176616118211.a n = A086942 (n + 1)

end A086942

/-! ## A086942.P16914978596271252493

`abs(4*xor(-2, -10^(n+1)))`
-/

namespace A086942.P16914978596271252493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * Int.xor (-2) (-(10 ^ (n + 1) : ℤ))|

end

end A086942.P16914978596271252493

namespace A086942

/-- `abs(4*xor(-2, -10^(n+1)))` -/
def P16914978596271252493.Spec : Prop :=
  ∀ n, P16914978596271252493.a n = A086942 (n + 1)

end A086942

/-! ## A086942.P4329603194368787971

`abs(4*record[10^abs(1-n)-2])`
-/

namespace A086942.P4329603194368787971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A086942.P4329603194368787971

namespace A086942

/-- `abs(4*record[10^abs(1-n)-2])` -/
def P4329603194368787971.Spec : Prop :=
  ∀ n, P4329603194368787971.a n = (A086942 (n + 1) : ℚ)

end A086942

/-!
# A086943: Integers k such that R(k+7) = 3.

The programs for A086943, the canonical program `A086943.P11761326943072460489` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086943 has offset 1).

The definition of A086943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086943.P11761326943072460489

`3*10^(n+1)-7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086943

/-- `3*10^(n+1)-7` -/
def P11761326943072460489.Spec : Prop :=
  ∀ n, P11761326943072460489.a n = A086943 (n + 1)

theorem P11761326943072460489.correct : P11761326943072460489.Spec := by
  intro n
  simp only [A086943, Nat.add_sub_cancel]

end A086943

/-! ## A086943.P14158042936200402120

`abs(1-A086941(n+1))`
-/

namespace A086943.P14158042936200402120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A086941 (n + 1)|

end

end A086943.P14158042936200402120

namespace A086943

/-- `abs(1-A086941(n+1))` -/
def P14158042936200402120.Spec : Prop :=
  ∀ n, P14158042936200402120.a n = A086943 (n + 1)

end A086943

/-! ## A086943.P14403750739298259151

`abs(4-A086574(n+1))`
-/

namespace A086943.P14403750739298259151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A086574 (n + 1)|

end

end A086943.P14403750739298259151

namespace A086943

/-- `abs(4-A086574(n+1))` -/
def P14403750739298259151.Spec : Prop :=
  ∀ n, P14403750739298259151.a n = A086943 (n + 1)

end A086943

/-! ## A086943.P13284480478295524888

`abs(6-A198698(n+1))`
-/

namespace A086943.P13284480478295524888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A198698 (n + 1)|

end

end A086943.P13284480478295524888

namespace A086943

/-- `abs(6-A198698(n+1))` -/
def P13284480478295524888.Spec : Prop :=
  ∀ n, P13284480478295524888.a n = A086943 (n + 1)

end A086943

/-! ## A086943.P16614559405095571285

`abs(3*(A133384(n)-5)+2)`
-/

namespace A086943.P16614559405095571285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * (A133384 n - 5) + 2|

end

end A086943.P16614559405095571285

namespace A086943

/-- `abs(3*(A133384(n)-5)+2)` -/
def P16614559405095571285.Spec : Prop :=
  ∀ n, P16614559405095571285.a n = A086943 (n + 1)

end A086943

/-! ## A086943.P9956079917868430903

`round(3/2*A086946(n+1)+ϕ)`
-/

namespace A086943.P9956079917868430903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) / 2 * (A086946 (n + 1) : ℚ) : ℝ) + Real.goldenRatio)

end

end A086943.P9956079917868430903

namespace A086943

/-- `round(3/2*A086946(n+1)+ϕ)` -/
def P9956079917868430903.Spec : Prop :=
  ∀ n, P9956079917868430903.a n = A086943 (n + 1)

end A086943

/-! ## A086943.P14885347883121757203

`Δ[A096483(2*(n+1))-7*(n+1)]`
-/

namespace A086943.P14885347883121757203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096483 (2 * (n + 1)) - (7 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086943.P14885347883121757203

namespace A086943

/-- `Δ[A096483(2*(n+1))-7*(n+1)]` -/
def P14885347883121757203.Spec : Prop :=
  ∀ n, P14885347883121757203.a n = A086943 (n + 1)

end A086943

/-! ## A086943.P11084656763845157560

`Δ[A033175(n)-A017005(n)]`
-/

namespace A086943.P11084656763845157560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033175 n - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086943.P11084656763845157560

namespace A086943

/-- `Δ[A033175(n)-A017005(n)]` -/
def P11084656763845157560.Spec : Prop :=
  ∀ n, P11084656763845157560.a n = A086943 (n + 1)

end A086943

/-! ## A086943.P3210315426902609246

`Δ[∑[A198698(n)]-A016921(n)]`
-/

namespace A086943.P3210315426902609246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086943.P3210315426902609246

namespace A086943

/-- `Δ[∑[A198698(n)]-A016921(n)]` -/
def P3210315426902609246.Spec : Prop :=
  ∀ n, P3210315426902609246.a n = A086943 (n + 1)

end A086943

/-!
# A086944: a(n) = k where R(k+8) = 5.

The programs for A086944, the canonical program `A086944.P12679133145832439248` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086944 has offset 1).

The definition of A086944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086944.P12679133145832439248

`5*10^(n+1)-8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086944

/-- `5*10^(n+1)-8` -/
def P12679133145832439248.Spec : Prop :=
  ∀ n, P12679133145832439248.a n = A086944 (n + 1)

theorem P12679133145832439248.correct : P12679133145832439248.Spec := by
  intro n
  simp only [A086944, Nat.add_sub_cancel]

end A086944

/-! ## A086944.P10985008962297042781

`3*xor(1, ∑[15*10^n])`
-/

namespace A086944.P10985008962297042781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086944.P10985008962297042781

namespace A086944

/-- `3*xor(1, ∑[15*10^n])` -/
def P10985008962297042781.Spec : Prop :=
  ∀ n, (P10985008962297042781.a n : ℤ) = A086944 (n + 1)

end A086944

/-! ## A086944.P2029378209075412226

`3*(∑[10*a(n-1)]-2)/2` with `a(0)=30`
-/

namespace A086944.P2029378209075412226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [30] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) : ℚ) / 2

end

end A086944.P2029378209075412226

namespace A086944

/-- `3*(∑[10*a(n-1)]-2)/2` -/
def P2029378209075412226.Spec : Prop :=
  ∀ n, P2029378209075412226.a n = (A086944 (n + 1) : ℚ)

end A086944

/-! ## A086944.P9802794264601444679

`3*(A205086(n)+3)`
-/

namespace A086944.P9802794264601444679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205086 n + 3)

end

end A086944.P9802794264601444679

namespace A086944

/-- `3*(A205086(n)+3)` -/
def P9802794264601444679.Spec : Prop :=
  ∀ n, P9802794264601444679.a n = A086944 (n + 1)

end A086944

/-! ## A086944.P18354880625588821741

`abs(3-A086576(n+1))`
-/

namespace A086944.P18354880625588821741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A086576 (n + 1)|

end

end A086944.P18354880625588821741

namespace A086944

/-- `abs(3-A086576(n+1))` -/
def P18354880625588821741.Spec : Prop :=
  ∀ n, P18354880625588821741.a n = A086944 (n + 1)

end A086944

/-! ## A086944.P9430203932064448425

`abs(7-A198971(n+1))`
-/

namespace A086944.P9430203932064448425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A198971 (n + 1)|

end

end A086944.P9430203932064448425

namespace A086944

/-- `abs(7-A198971(n+1))` -/
def P9430203932064448425.Spec : Prop :=
  ∀ n, P9430203932064448425.a n = A086944 (n + 1)

end A086944

/-! ## A086944.P11236942214672312227

`3*(A126109(n+1)-3)`
-/

namespace A086944.P11236942214672312227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A126109 (n + 1) - 3)

end

end A086944.P11236942214672312227

namespace A086944

/-- `3*(A126109(n+1)-3)` -/
def P11236942214672312227.Spec : Prop :=
  ∀ n, P11236942214672312227.a n = A086944 (n + 1)

end A086944

/-! ## A086944.P7682270510056990353

`lcm(2, A086949(n+1)+1)`
-/

namespace A086944.P7682270510056990353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A086949 (n + 1) + 1)

end

end A086944.P7682270510056990353

namespace A086944

/-- `lcm(2, A086949(n+1)+1)` -/
def P7682270510056990353.Spec : Prop :=
  ∀ n, (P7682270510056990353.a n : ℤ) = A086944 (n + 1)

end A086944

/-! ## A086944.P6918663457353128605

`xor(1, A177096(n+1)+3)`
-/

namespace A086944.P6918663457353128605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A177096 (n + 1) + 3)

end

end A086944.P6918663457353128605

namespace A086944

/-- `xor(1, A177096(n+1)+3)` -/
def P6918663457353128605.Spec : Prop :=
  ∀ n, P6918663457353128605.a n = A086944 (n + 1)

end A086944

/-!
# A086945: a(n) = 7*10^n - 9.

The programs for A086945, the canonical program `A086945.P11082486979677191122` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086945 has offset 1).

The definition of A086945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*10^(n+1)-9` (program `A086945.P11082486979677191122`, by `A086945.P11082486979677191122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086945.P11082486979677191122

`7*10^(n+1)-9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086945

/-- `7*10^(n+1)-9` -/
def P11082486979677191122.Spec : Prop :=
  ∀ n, P11082486979677191122.a n = A086945 (n + 1)

theorem P11082486979677191122.correct : P11082486979677191122.Spec := by
  intro n
  simp only [A086945, Nat.add_sub_cancel]

end A086945

/-! ## A086945.P6526892495937490965

`abs(2-A086578(n+1))`
-/

namespace A086945.P6526892495937490965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A086578 (n + 1)|

end

end A086945.P6526892495937490965

namespace A086945

/-- `abs(2-A086578(n+1))` -/
def P6526892495937490965.Spec : Prop :=
  ∀ n, P6526892495937490965.a n = A086945 (n + 1)

end A086945

/-! ## A086945.P16641515591599498222

`A366198(A156795(n+1)-1)`
-/

namespace A086945.P16641515591599498222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366198 (A156795 (n + 1) - 1).toNat

end

end A086945.P16641515591599498222

namespace A086945

/-- `A366198(A156795(n+1)-1)` -/
def P16641515591599498222.Spec : Prop :=
  ∀ n, P16641515591599498222.a n = A086945 (n + 1)

end A086945

/-! ## A086945.P3969164772837285997

`Δ[A173806(n+1)-A017173(n)]`
-/

namespace A086945.P3969164772837285997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173806 (n + 1) - A017173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086945.P3969164772837285997

namespace A086945

/-- `Δ[A173806(n+1)-A017173(n)]` -/
def P3969164772837285997.Spec : Prop :=
  ∀ n, P3969164772837285997.a n = A086945 (n + 1)

end A086945

/-! ## A086945.P15164506098168066977

`Δ[A173806(n+1)-A017185(n)]`
-/

namespace A086945.P15164506098168066977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173806 (n + 1) - A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086945.P15164506098168066977

namespace A086945

/-- `Δ[A173806(n+1)-A017185(n)]` -/
def P15164506098168066977.Spec : Prop :=
  ∀ n, P15164506098168066977.a n = A086945 (n + 1)

end A086945

/-! ## A086945.P10313207252223116387

`Δ[A173807(n+1)-A017185(n)]`
-/

namespace A086945.P10313207252223116387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173807 (n + 1) - A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086945.P10313207252223116387

namespace A086945

/-- `Δ[A173807(n+1)-A017185(n)]` -/
def P10313207252223116387.Spec : Prop :=
  ∀ n, P10313207252223116387.a n = A086945 (n + 1)

end A086945

/-! ## A086945.P17191915270010848129

`Δ[A173808(n+1)-A017185(n)]`
-/

namespace A086945.P17191915270010848129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173808 (n + 1) - A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086945.P17191915270010848129

namespace A086945

/-- `Δ[A173808(n+1)-A017185(n)]` -/
def P17191915270010848129.Spec : Prop :=
  ∀ n, P17191915270010848129.a n = A086945 (n + 1)

end A086945

/-!
# A086946: Numbers k such that R(k+6) = 2.

The programs for A086946, the canonical program `A086946.P14785019635272571170` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086946 has offset 1).

The definition of A086946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086946.P13346240399578200022

`2*(10^(n+1)-3)`
-/

namespace A086946.P13346240399578200022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((10 ^ (n + 1) : ℤ) - 3)

end

end A086946.P13346240399578200022

namespace A086946

/-- `2*(10^(n+1)-3)` -/
def P13346240399578200022.Spec : Prop :=
  ∀ n, P13346240399578200022.a n = A086946 (n + 1)

theorem P13346240399578200022.correct : P13346240399578200022.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086946, Nat.add_sub_cancel, A086946.P13346240399578200022.a, A086946.P14785019635272571170.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086946, Nat.add_sub_cancel, A086946.P13346240399578200022.a, A086946.P14785019635272571170.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086946

/-! ## A086946.P14785019635272571170

`11*a(n-1)-10*a(n-2)` with `a(0)=14, a(1)=194`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086946

/-- `11*a(n-1)-10*a(n-2)` -/
def P14785019635272571170.Spec : Prop :=
  ∀ n, P14785019635272571170.a n = A086946 (n + 1)

theorem P14785019635272571170.correct : P14785019635272571170.Spec := by
  intro n
  simp only [A086946, Nat.add_sub_cancel]

end A086946

/-! ## A086946.P13841537056914229546

`lcm(2, 3-10^(n+1))`
-/

namespace A086946.P13841537056914229546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 - (10 ^ (n + 1) : ℤ))

end

end A086946.P13841537056914229546

namespace A086946

/-- `lcm(2, 3-10^(n+1))` -/
def P13841537056914229546.Spec : Prop :=
  ∀ n, (P13841537056914229546.a n : ℤ) = A086946 (n + 1)

end A086946

/-! ## A086946.P3760355681832316118

`or(2, 6*(∑[10*a(n-1)]-1))` with `a(0)=3`
-/

namespace A086946.P3760355681832316118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (6 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1))

end

end A086946.P3760355681832316118

namespace A086946

/-- `or(2, 6*(∑[10*a(n-1)]-1))` -/
def P3760355681832316118.Spec : Prop :=
  ∀ n, P3760355681832316118.a n = A086946 (n + 1)

end A086946

/-! ## A086946.P4909009254928678159

`A177108(n+1)/2`
-/

namespace A086946.P4909009254928678159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177108 (n + 1) : ℚ) / 2

end

end A086946.P4909009254928678159

namespace A086946

/-- `A177108(n+1)/2` -/
def P4909009254928678159.Spec : Prop :=
  ∀ n, P4909009254928678159.a n = (A086946 (n + 1) : ℚ)

end A086946

/-! ## A086946.P14679811252249321382

`A175602(n+1)/4`
-/

namespace A086946.P14679811252249321382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175602 (n + 1) : ℚ) / 4

end

end A086946.P14679811252249321382

namespace A086946

/-- `A175602(n+1)/4` -/
def P14679811252249321382.Spec : Prop :=
  ∀ n, P14679811252249321382.a n = (A086946 (n + 1) : ℚ)

end A086946

/-!
# A086947: Numbers k such that R(k+9) = 3.

The programs for A086947, the canonical program `A086947.P13867445499297307631` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086947 has offset 1).

The definition of A086947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086947.P13444335960977070581

`3*(10^(n+1)-3)`
-/

namespace A086947.P13444335960977070581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((10 ^ (n + 1) : ℤ) - 3)

end

end A086947.P13444335960977070581

namespace A086947

/-- `3*(10^(n+1)-3)` -/
def P13444335960977070581.Spec : Prop :=
  ∀ n, P13444335960977070581.a n = A086947 (n + 1)

theorem P13444335960977070581.correct : P13444335960977070581.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086947, Nat.add_sub_cancel, A086947.P13444335960977070581.a, A086947.P13867445499297307631.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086947, Nat.add_sub_cancel, A086947.P13444335960977070581.a, A086947.P13867445499297307631.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086947

/-! ## A086947.P13867445499297307631

`11*a(n-1)-10*a(n-2)` with `a(0)=21, a(1)=291`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086947

/-- `11*a(n-1)-10*a(n-2)` -/
def P13867445499297307631.Spec : Prop :=
  ∀ n, P13867445499297307631.a n = A086947 (n + 1)

theorem P13867445499297307631.correct : P13867445499297307631.Spec := by
  intro n
  simp only [A086947, Nat.add_sub_cancel]

end A086947

/-! ## A086947.P17956936646654152507

`lcm(3, 3-10^(n+1))`
-/

namespace A086947.P17956936646654152507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (3 - (10 ^ (n + 1) : ℤ))

end

end A086947.P17956936646654152507

namespace A086947

/-- `lcm(3, 3-10^(n+1))` -/
def P17956936646654152507.Spec : Prop :=
  ∀ n, (P17956936646654152507.a n : ℤ) = A086947 (n + 1)

end A086947

/-! ## A086947.P15745246755003055085

`abs(3-A086941(n+1))`
-/

namespace A086947.P15745246755003055085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A086941 (n + 1)|

end

end A086947.P15745246755003055085

namespace A086947

/-- `abs(3-A086941(n+1))` -/
def P15745246755003055085.Spec : Prop :=
  ∀ n, P15745246755003055085.a n = A086947 (n + 1)

end A086947

/-!
# A086948: a(n) = k where R(k+8) = 2.

The programs for A086948, the canonical program `A086948.P16834516796886768430` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086948 has offset 1).

The definition of A086948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086948.P15306764289027296802

`2*(10^(n+1)-4)`
-/

namespace A086948.P15306764289027296802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((10 ^ (n + 1) : ℤ) - 4)

end

end A086948.P15306764289027296802

namespace A086948

/-- `2*(10^(n+1)-4)` -/
def P15306764289027296802.Spec : Prop :=
  ∀ n, P15306764289027296802.a n = A086948 (n + 1)

theorem P15306764289027296802.correct : P15306764289027296802.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086948, Nat.add_sub_cancel, A086948.P15306764289027296802.a, A086948.P16834516796886768430.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086948, Nat.add_sub_cancel, A086948.P15306764289027296802.a, A086948.P16834516796886768430.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086948

/-! ## A086948.P16834516796886768430

`11*a(n-1)-10*a(n-2)` with `a(0)=12, a(1)=192`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086948

/-- `11*a(n-1)-10*a(n-2)` -/
def P16834516796886768430.Spec : Prop :=
  ∀ n, P16834516796886768430.a n = A086948 (n + 1)

theorem P16834516796886768430.correct : P16834516796886768430.Spec := by
  intro n
  simp only [A086948, Nat.add_sub_cancel]

end A086948

/-! ## A086948.P13204102025477797768

`record[Δ[A237341(n+4)]]`
-/

namespace A086948.P13204102025477797768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237341 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086948.P13204102025477797768

namespace A086948

/-- `record[Δ[A237341(n+4)]]` -/
def P13204102025477797768.Spec : Prop :=
  ∀ n, P13204102025477797768.a n = A086948 (n + 1)

end A086948

/-!
# A086949: Numbers k such that R(k+9) = 5.

The programs for A086949, the canonical program `A086949.P15136401588844769382` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086949 has offset 1).

The definition of A086949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086949.P15136401588844769382

`5*10^(n+1)-9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086949

/-- `5*10^(n+1)-9` -/
def P15136401588844769382.Spec : Prop :=
  ∀ n, P15136401588844769382.a n = A086949 (n + 1)

theorem P15136401588844769382.correct : P15136401588844769382.Spec := by
  intro n
  simp only [A086949, Nat.add_sub_cancel]

end A086949

/-! ## A086949.P15304749277400347537

`abs(1-A086944(n+1))`
-/

namespace A086949.P15304749277400347537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A086944 (n + 1)|

end

end A086949.P15304749277400347537

namespace A086949

/-- `abs(1-A086944(n+1))` -/
def P15304749277400347537.Spec : Prop :=
  ∀ n, P15304749277400347537.a n = A086949 (n + 1)

end A086949

/-! ## A086949.P9436558288667418873

`abs(4-A086576(n+1))`
-/

namespace A086949.P9436558288667418873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A086576 (n + 1)|

end

end A086949.P9436558288667418873

namespace A086949

/-- `abs(4-A086576(n+1))` -/
def P9436558288667418873.Spec : Prop :=
  ∀ n, P9436558288667418873.a n = A086949 (n + 1)

end A086949

/-! ## A086949.P5900871627929455267

`abs(8-A198971(n+1))`
-/

namespace A086949.P5900871627929455267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - A198971 (n + 1)|

end

end A086949.P5900871627929455267

namespace A086949

/-- `abs(8-A198971(n+1))` -/
def P5900871627929455267.Spec : Prop :=
  ∀ n, P5900871627929455267.a n = A086949 (n + 1)

end A086949

/-! ## A086949.P16083015546102151806

`record[A086576(abs(1-n))-4]`
-/

namespace A086949.P16083015546102151806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086576 |1 - (n : ℤ)|.toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086949.P16083015546102151806

namespace A086949

/-- `record[A086576(abs(1-n))-4]` -/
def P16083015546102151806.Spec : Prop :=
  ∀ n, P16083015546102151806.a n = A086949 (n + 1)

end A086949

/-! ## A086949.P11617787063350392000

`Δ[A173802(n+1)-A017185(n)]`
-/

namespace A086949.P11617787063350392000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173802 (n + 1) - A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086949.P11617787063350392000

namespace A086949

/-- `Δ[A173802(n+1)-A017185(n)]` -/
def P11617787063350392000.Spec : Prop :=
  ∀ n, P11617787063350392000.a n = A086949 (n + 1)

end A086949

/-! ## A086949.P15610846704028398756

`Δ[A173804(n+1)-A017185(n)]`
-/

namespace A086949.P15610846704028398756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173804 (n + 1) - A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086949.P15610846704028398756

namespace A086949

/-- `Δ[A173804(n+1)-A017185(n)]` -/
def P15610846704028398756.Spec : Prop :=
  ∀ n, P15610846704028398756.a n = A086949 (n + 1)

end A086949

/-!
# A086950: Binomial transform of decagonal numbers A001107.

The programs for A086950, the canonical program `A086950.P2707624330587644297` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086950 has offset 0).

The definition of A086950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086950.P10105021333978600283

`n*2^n*(2*n-1)/2`
-/

namespace A086950.P10105021333978600283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ n : ℚ) * (((2 * n : ℤ) - 1 : ℚ) / 2)

end

end A086950.P10105021333978600283

namespace A086950

/-- `n*2^n*(2*n-1)/2` -/
def P10105021333978600283.Spec : Prop :=
  ∀ n, P10105021333978600283.a n = (A086950 n : ℚ)

theorem P10105021333978600283.correct : P10105021333978600283.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A086950, Nat.add_sub_cancel, A086950.P10105021333978600283.a, A086950.P2707624330587644297.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A086950, Nat.add_sub_cancel, A086950.P10105021333978600283.a, A086950.P2707624330587644297.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086950

/-! ## A086950.P2707624330587644297

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=12`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086950

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P2707624330587644297.Spec : Prop :=
  ∀ n, P2707624330587644297.a n = A086950 n

theorem P2707624330587644297.correct : P2707624330587644297.Spec := by
  intro n
  simp only [A086950]

end A086950

/-! ## A086950.P17890156672423967798

`n*∑[ogf((2x-3x^2+2x^3)/(1-4x+4x^2))]-n`
-/

namespace A086950.P17890156672423967798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3, 2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A086950.P17890156672423967798

namespace A086950

/-- `n*∑[ogf((2x-3x^2+2x^3)/(1-4x+4x^2))]-n` -/
def P17890156672423967798.Spec : Prop :=
  ∀ n, P17890156672423967798.a n = A086950 n

end A086950

/-! ## A086950.P16321198861781569412

`record[∑[n]*A131575(n)]`
-/

namespace A086950.P16321198861781569412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086950.P16321198861781569412

namespace A086950

/-- `record[∑[n]*A131575(n)]` -/
def P16321198861781569412.Spec : Prop :=
  ∀ n, P16321198861781569412.a n = A086950 n

end A086950

/-! ## A086950.P15327781743854633267

`abs(n/2*A143126(n))`
-/

namespace A086950.P15327781743854633267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 2 * (A143126 n : ℚ)|

end

end A086950.P15327781743854633267

namespace A086950

/-- `abs(n/2*A143126(n))` -/
def P15327781743854633267.Spec : Prop :=
  ∀ n, P15327781743854633267.a n = (A086950 n : ℚ)

end A086950

/-! ## A086950.P4490706407741794753

`A084857(n)+A001815(n)`
-/

namespace A086950.P4490706407741794753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084857 n + A001815 n

end

end A086950.P4490706407741794753

namespace A086950

/-- `A084857(n)+A001815(n)` -/
def P4490706407741794753.Spec : Prop :=
  ∀ n, P4490706407741794753.a n = A086950 n

end A086950

/-! ## A086950.P9558328627922172764

`A128796(n)+A001787(n)`
-/

namespace A086950.P9558328627922172764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128796 n + A001787 n

end

end A086950.P9558328627922172764

namespace A086950

/-- `A128796(n)+A001787(n)` -/
def P9558328627922172764.Spec : Prop :=
  ∀ n, P9558328627922172764.a n = A086950 n

end A086950

/-! ## A086950.P4954421054232395207

`A007758(n)-A001787(n)`
-/

namespace A086950.P4954421054232395207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n - A001787 n

end

end A086950.P4954421054232395207

namespace A086950

/-- `A007758(n)-A001787(n)` -/
def P4954421054232395207.Spec : Prop :=
  ∀ n, P4954421054232395207.a n = A086950 n

end A086950

/-! ## A086950.P12800960812401645171

`A248917(n)-A005183(n)`
-/

namespace A086950.P12800960812401645171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248917 n - A005183 n

end

end A086950.P12800960812401645171

namespace A086950

/-- `A248917(n)-A005183(n)` -/
def P12800960812401645171.Spec : Prop :=
  ∀ n, P12800960812401645171.a n = A086950 n

end A086950

/-! ## A086950.P7504908287505610814

`lcm(A000384(n), A001787(n))`
-/

namespace A086950.P7504908287505610814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000384 n) (A001787 n)

end

end A086950.P7504908287505610814

namespace A086950

/-- `lcm(A000384(n), A001787(n))` -/
def P7504908287505610814.Spec : Prop :=
  ∀ n, (P7504908287505610814.a n : ℤ) = A086950 n

end A086950

/-! ## A086950.P8107607011314785767

`lcm(A004273(n), A118442(n))`
-/

namespace A086950.P8107607011314785767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004273 n) (A118442 n)

end

end A086950.P8107607011314785767

namespace A086950

/-- `lcm(A004273(n), A118442(n))` -/
def P8107607011314785767.Spec : Prop :=
  ∀ n, (P8107607011314785767.a n : ℤ) = A086950 n

end A086950

/-! ## A086950.P123604209352260335

`A276041(n)-A053220(n+1)`
-/

namespace A086950.P123604209352260335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276041 n - A053220 (n + 1)

end

end A086950.P123604209352260335

namespace A086950

/-- `A276041(n)-A053220(n+1)` -/
def P123604209352260335.Spec : Prop :=
  ∀ n, P123604209352260335.a n = A086950 n

end A086950

/-! ## A086950.P11056474343531331424

`A001788(n)+3*A001815(n)`
-/

namespace A086950.P11056474343531331424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + 3 * A001815 n

end

end A086950.P11056474343531331424

namespace A086950

/-- `A001788(n)+3*A001815(n)` -/
def P11056474343531331424.Spec : Prop :=
  ∀ n, P11056474343531331424.a n = A086950 n

end A086950

/-! ## A086950.P5660422009649459229

`2*A084899(n)-A001788(n)`
-/

namespace A086950.P5660422009649459229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084899 n - A001788 n

end

end A086950.P5660422009649459229

namespace A086950

/-- `2*A084899(n)-A001788(n)` -/
def P5660422009649459229.Spec : Prop :=
  ∀ n, P5660422009649459229.a n = A086950 n

end A086950

/-! ## A086950.P17980237298863917943

`A128796(n)+A036289(n)/2`
-/

namespace A086950.P17980237298863917943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128796 n : ℚ) + (A036289 n : ℚ) / 2

end

end A086950.P17980237298863917943

namespace A086950

/-- `A128796(n)+A036289(n)/2` -/
def P17980237298863917943.Spec : Prop :=
  ∀ n, P17980237298863917943.a n = (A086950 n : ℚ)

end A086950

/-! ## A086950.P2892387659678630306

`A007758(n)-A036289(n)/2`
-/

namespace A086950.P2892387659678630306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 n : ℚ) - (A036289 n : ℚ) / 2

end

end A086950.P2892387659678630306

namespace A086950

/-- `A007758(n)-A036289(n)/2` -/
def P2892387659678630306.Spec : Prop :=
  ∀ n, P2892387659678630306.a n = (A086950 n : ℚ)

end A086950

/-! ## A086950.P8230320415053728148

`lcm(A060747(n), A085750(n+1))`
-/

namespace A086950.P8230320415053728148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060747 n) (A085750 (n + 1))

end

end A086950.P8230320415053728148

namespace A086950

/-- `lcm(A060747(n), A085750(n+1))` -/
def P8230320415053728148.Spec : Prop :=
  ∀ n, (P8230320415053728148.a n : ℤ) = A086950 n

end A086950

/-! ## A086950.P9289909699899694279

`A007758(n)-n*A011782(n)`
-/

namespace A086950.P9289909699899694279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n - (n : ℤ) * A011782 n

end

end A086950.P9289909699899694279

namespace A086950

/-- `A007758(n)-n*A011782(n)` -/
def P9289909699899694279.Spec : Prop :=
  ∀ n, P9289909699899694279.a n = A086950 n

end A086950

/-! ## A086950.P356874220042785122

`n*A036289(n)-A001787(n)`
-/

namespace A086950.P356874220042785122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036289 n - A001787 n

end

end A086950.P356874220042785122

namespace A086950

/-- `n*A036289(n)-A001787(n)` -/
def P356874220042785122.Spec : Prop :=
  ∀ n, P356874220042785122.a n = A086950 n

end A086950

/-! ## A086950.P11439044306716749171

`n*A134401(n)-A001787(n)`
-/

namespace A086950.P11439044306716749171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134401 n - A001787 n

end

end A086950.P11439044306716749171

namespace A086950

/-- `n*A134401(n)-A001787(n)` -/
def P11439044306716749171.Spec : Prop :=
  ∀ n, P11439044306716749171.a n = A086950 n

end A086950

/-!
# A086951: a(n) = n*3^n*(4*n - 1)/9.

The programs for A086951, the canonical program `A086951.P8575879792533779110` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086951 has offset 0).

The definition of A086951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086951.P8575879792533779110

`n*3^n*(4*n-1)/9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086951

/-- `n*3^n*(4*n-1)/9` -/
def P8575879792533779110.Spec : Prop :=
  ∀ n, P8575879792533779110.a n = (A086951 n : ℚ)

end A086951

/-! ## A086951.P7341693118984628432

`floor(3^(n-2)*A033991(n))`
-/

namespace A086951.P7341693118984628432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A033991 n : ℚ)⌋

end

end A086951.P7341693118984628432

namespace A086951

/-- `floor(3^(n-2)*A033991(n))` -/
def P7341693118984628432.Spec : Prop :=
  ∀ n, P7341693118984628432.a n = A086951 n

end A086951

/-! ## A086951.P10262874114876299874

`A062189(n)-lcm(n, n/3*3^n)`
-/

namespace A086951.P10262874114876299874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062189 n - (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / 3 * (3 ^ n : ℚ))) : ℤ)

end

end A086951.P10262874114876299874

namespace A086951

/-- `A062189(n)-lcm(n, n/3*3^n)` -/
def P10262874114876299874.Spec : Prop :=
  ∀ n, P10262874114876299874.a n = A086951 n

end A086951

/-! ## A086951.P639222325292945913

`A129530(n)+A084900(n)`
-/

namespace A086951.P639222325292945913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129530 n + A084900 n

end

end A086951.P639222325292945913

namespace A086951

/-- `A129530(n)+A084900(n)` -/
def P639222325292945913.Spec : Prop :=
  ∀ n, P639222325292945913.a n = A086951 n

end A086951

/-! ## A086951.P1801707835992389948

`A062189(n)-A027471(n+1)`
-/

namespace A086951.P1801707835992389948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062189 n - A027471 (n + 1)

end

end A086951.P1801707835992389948

namespace A086951

/-- `A062189(n)-A027471(n+1)` -/
def P1801707835992389948.Spec : Prop :=
  ∀ n, P1801707835992389948.a n = A086951 n

end A086951

/-! ## A086951.P2318280218144604357

`A062189(n)-∑[A229277(n)/3]`
-/

namespace A086951.P2318280218144604357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229277 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062189 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086951.P2318280218144604357

namespace A086951

/-- `A062189(n)-∑[A229277(n)/3]` -/
def P2318280218144604357.Spec : Prop :=
  ∀ n, P2318280218144604357.a n = (A086951 n : ℚ)

end A086951

/-! ## A086951.P7095786938489503307

`A062189(n)-(2*A082133(n)-n)`
-/

namespace A086951.P7095786938489503307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062189 n - (2 * A082133 n - (n : ℤ))

end

end A086951.P7095786938489503307

namespace A086951

/-- `A062189(n)-(2*A082133(n)-n)` -/
def P7095786938489503307.Spec : Prop :=
  ∀ n, P7095786938489503307.a n = A086951 n

end A086951

/-! ## A086951.P15688739557632506873

`A062189(n)-n/3*A000244(n)`
-/

namespace A086951.P15688739557632506873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062189 n : ℚ) - (n : ℚ) / 3 * (A000244 n : ℚ)

end

end A086951.P15688739557632506873

namespace A086951

/-- `A062189(n)-n/3*A000244(n)` -/
def P15688739557632506873.Spec : Prop :=
  ∀ n, P15688739557632506873.a n = (A086951 n : ℚ)

end A086951

/-! ## A086951.P10738875887589832646

`A062189(n)-abs(n*A287479(2*n))`
-/

namespace A086951.P10738875887589832646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062189 n - |(n : ℤ) * A287479 (2 * n)|

end

end A086951.P10738875887589832646

namespace A086951

/-- `A062189(n)-abs(n*A287479(2*n))` -/
def P10738875887589832646.Spec : Prop :=
  ∀ n, P10738875887589832646.a n = A086951 n

end A086951

/-! ## A086951.P4521607594413307764

`A129530(n)+A383136(n)+A129530(n)`
-/

namespace A086951.P4521607594413307764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129530 n + (A383136 n + A129530 n)

end

end A086951.P4521607594413307764

namespace A086951

/-- `A129530(n)+A383136(n)+A129530(n)` -/
def P4521607594413307764.Spec : Prop :=
  ∀ n, P4521607594413307764.a n = A086951 n

end A086951

/-! ## A086951.P8611689679473911376

`(A128797(n)+A069515(n+1))/3`
-/

namespace A086951.P8611689679473911376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128797 n + A069515 (n + 1) : ℚ) / 3

end

end A086951.P8611689679473911376

namespace A086951

/-- `(A128797(n)+A069515(n+1))/3` -/
def P8611689679473911376.Spec : Prop :=
  ∀ n, P8611689679473911376.a n = (A086951 n : ℚ)

end A086951

/-! ## A086951.P2616645241635980665

`A002412(n)*A025192(n)/(n+1)`
-/

namespace A086951.P2616645241635980665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002412 n * A025192 n : ℚ) / (n + 1 : ℚ)

end

end A086951.P2616645241635980665

namespace A086951

/-- `A002412(n)*A025192(n)/(n+1)` -/
def P2616645241635980665.Spec : Prop :=
  ∀ n, P2616645241635980665.a n = (A086951 n : ℚ)

end A086951

/-!
# A086952: a(n) = n^2*4^n/4.

The programs for A086952, the canonical program `A086952.P12511397300879814166` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086952 has offset 0).

The definition of A086952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086952.P12511397300879814166

`n²*4^n/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086952

/-- `n²*4^n/4` -/
def P12511397300879814166.Spec : Prop :=
  ∀ n, P12511397300879814166.a n = (A086952 n : ℚ)

end A086952

/-! ## A086952.P8150453185596300084

`lcm(n, (n/2^(1-n))²)`
-/

namespace A086952.P8150453185596300084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (((n : ℚ) / (2 : ℚ) ^ (1 - (n : ℤ) : ℤ)) ^ 2))

end

end A086952.P8150453185596300084

namespace A086952

/-- `lcm(n, (n/2^(1-n))²)` -/
def P8150453185596300084.Spec : Prop :=
  ∀ n, (P8150453185596300084.a n : ℤ) = A086952 n

end A086952

/-! ## A086952.P13206615463461784901

`4^(n-2)*Δ[C(2*n, 3)]`
-/

namespace A086952.P13206615463461784901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A086952.P13206615463461784901

namespace A086952

/-- `4^(n-2)*Δ[C(2*n, 3)]` -/
def P13206615463461784901.Spec : Prop :=
  ∀ n, P13206615463461784901.a n = (A086952 n : ℚ)

end A086952

/-! ## A086952.P10095905841965968736

`(2^floor(n²*acot(n)))²*n²`
-/

namespace A086952.P10095905841965968736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)) ^ 2 * (n ^ 2 : ℚ)

end

end A086952.P10095905841965968736

namespace A086952

/-- `(2^floor(n²*acot(n)))²*n²` -/
def P10095905841965968736.Spec : Prop :=
  ∀ n, P10095905841965968736.a n = (A086952 n : ℚ)

end A086952

/-! ## A086952.P8589695550505112868

`n²*∑[4*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A086952.P8589695550505112868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086952.P8589695550505112868

namespace A086952

/-- `n²*∑[4*a(n-1)]` -/
def P8589695550505112868.Spec : Prop :=
  ∀ n, (P8589695550505112868.a n : ℤ) = A086952 n

end A086952

/-! ## A086952.P5561263658308660369

`(2*n/(n-1))²*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A086952.P5561263658308660369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((2 * n : ℚ) / ((n : ℤ) - 1 : ℚ)) ^ 2 * a (n - 1)

end

end A086952.P5561263658308660369

namespace A086952

/-- `(2*n/(n-1))²*a(n-1)` -/
def P5561263658308660369.Spec : Prop :=
  ∀ n, P5561263658308660369.a n = (A086952 n : ℚ)

end A086952

/-! ## A086952.P9688968177315743479

`A001787(n)²`
-/

namespace A086952.P9688968177315743479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n ^ 2

end

end A086952.P9688968177315743479

namespace A086952

/-- `A001787(n)²` -/
def P9688968177315743479.Spec : Prop :=
  ∀ n, P9688968177315743479.a n = A086952 n

end A086952

/-! ## A086952.P4992672327674191953

`A118442(n)²`
-/

namespace A086952.P4992672327674191953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118442 n ^ 2

end

end A086952.P4992672327674191953

namespace A086952

/-- `A118442(n)²` -/
def P4992672327674191953.Spec : Prop :=
  ∀ n, P4992672327674191953.a n = A086952 n

end A086952

/-! ## A086952.P17159643050799677323

`n*A002697(n)`
-/

namespace A086952.P17159643050799677323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002697 n

end

end A086952.P17159643050799677323

namespace A086952

/-- `n*A002697(n)` -/
def P17159643050799677323.Spec : Prop :=
  ∀ n, P17159643050799677323.a n = A086952 n

end A086952

/-! ## A086952.P15057106318372313285

`Δ[A098821(n)]²`
-/

namespace A086952.P15057106318372313285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A086952.P15057106318372313285

namespace A086952

/-- `Δ[A098821(n)]²` -/
def P15057106318372313285.Spec : Prop :=
  ∀ n, P15057106318372313285.a n = A086952 n

end A086952

/-! ## A086952.P4324628461068790575

`A085750(n+1)²`
-/

namespace A086952.P4324628461068790575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085750 (n + 1) ^ 2

end

end A086952.P4324628461068790575

namespace A086952

/-- `A085750(n+1)²` -/
def P4324628461068790575.Spec : Prop :=
  ∀ n, P4324628461068790575.a n = A086952 n

end A086952

/-! ## A086952.P13874181144656585663

`A097067(n+1)²`
-/

namespace A086952.P13874181144656585663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n + 1) ^ 2

end

end A086952.P13874181144656585663

namespace A086952

/-- `A097067(n+1)²` -/
def P13874181144656585663.Spec : Prop :=
  ∀ n, P13874181144656585663.a n = A086952 n

end A086952

/-! ## A086952.P282376679815690345

`A139756(n+1)²`
-/

namespace A086952.P282376679815690345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) ^ 2

end

end A086952.P282376679815690345

namespace A086952

/-- `A139756(n+1)²` -/
def P282376679815690345.Spec : Prop :=
  ∀ n, P282376679815690345.a n = A086952 n

end A086952

/-! ## A086952.P18343028944796118833

`(1-A005183(n))²`
-/

namespace A086952.P18343028944796118833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A005183 n) ^ 2

end

end A086952.P18343028944796118833

namespace A086952

/-- `(1-A005183(n))²` -/
def P18343028944796118833.Spec : Prop :=
  ∀ n, P18343028944796118833.a n = A086952 n

end A086952

/-! ## A086952.P2839419641090572593

`(A036289(n)/2)²`
-/

namespace A086952.P2839419641090572593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A036289 n : ℚ) / 2) ^ 2

end

end A086952.P2839419641090572593

namespace A086952

/-- `(A036289(n)/2)²` -/
def P2839419641090572593.Spec : Prop :=
  ∀ n, P2839419641090572593.a n = (A086952 n : ℚ)

end A086952

/-! ## A086952.P11841396409526991666

`(n-A215149(n))²`
-/

namespace A086952.P11841396409526991666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A215149 n) ^ 2

end

end A086952.P11841396409526991666

namespace A086952

/-- `(n-A215149(n))²` -/
def P11841396409526991666.Spec : Prop :=
  ∀ n, P11841396409526991666.a n = A086952 n

end A086952

/-! ## A086952.P2523502971193784900

`(n*A011782(n))²`
-/

namespace A086952.P2523502971193784900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A011782 n) ^ 2

end

end A086952.P2523502971193784900

namespace A086952

/-- `(n*A011782(n))²` -/
def P2523502971193784900.Spec : Prop :=
  ∀ n, P2523502971193784900.a n = A086952 n

end A086952

/-! ## A086952.P1861009660698960156

`(n*A123344(n))²`
-/

namespace A086952.P1861009660698960156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A123344 n) ^ 2

end

end A086952.P1861009660698960156

namespace A086952

/-- `(n*A123344(n))²` -/
def P1861009660698960156.Spec : Prop :=
  ∀ n, P1861009660698960156.a n = A086952 n

end A086952

/-! ## A086952.P4340384113514292543

`(n*A131577(n))²`
-/

namespace A086952.P4340384113514292543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A131577 n) ^ 2

end

end A086952.P4340384113514292543

namespace A086952

/-- `(n*A131577(n))²` -/
def P4340384113514292543.Spec : Prop :=
  ∀ n, P4340384113514292543.a n = A086952 n

end A086952

/-! ## A086952.P14460343827003212408

`(n*A154589(n))²`
-/

namespace A086952.P14460343827003212408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A154589 n) ^ 2

end

end A086952.P14460343827003212408

namespace A086952

/-- `(n*A154589(n))²` -/
def P14460343827003212408.Spec : Prop :=
  ∀ n, P14460343827003212408.a n = A086952 n

end A086952

/-!
# A086953: Binomial transform of (-1)^mod(n,3) (A257075).

The programs for A086953, the canonical program `A086953.P11034586102236523776` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086953 has offset 0).

The definition of A086953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086953.P11034586102236523776

`A024493(n)-A131708(n)+A024495(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A086953

/-- `A024493(n)-A131708(n)+A024495(n)` -/
def P11034586102236523776.Spec : Prop :=
  ∀ n, P11034586102236523776.a n = A086953 n

theorem P11034586102236523776.correct : P11034586102236523776.Spec := by
  intro n
  simp only [A086953]

end A086953

/-! ## A086953.P16958691258352192259

`A131370(n+1)/2`
-/

namespace A086953.P16958691258352192259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131370 (n + 1) : ℚ) / 2

end

end A086953.P16958691258352192259

namespace A086953

/-- `A131370(n+1)/2` -/
def P16958691258352192259.Spec : Prop :=
  ∀ n, P16958691258352192259.a n = (A086953 n : ℚ)

end A086953

/-! ## A086953.P14191731590152969183

`ogf((1-3x+3x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A086953.P14191731590152969183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -3, 3, -2] n

end

end A086953.P14191731590152969183

namespace A086953

/-- `ogf((1-3x+3x^2)/(1-3x+3x^2-2x^3))` -/
def P14191731590152969183.Spec : Prop :=
  ∀ n, P14191731590152969183.a n = A086953 n

end A086953

/-! ## A086953.P7940789551662755878

`2*(a(n-1)-round(cos(n%6)))` with `a(0)=1`
-/

namespace A086953.P7940789551662755878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ)))

end

end A086953.P7940789551662755878

namespace A086953

/-- `2*(a(n-1)-round(cos(n%6)))` -/
def P7940789551662755878.Spec : Prop :=
  ∀ n, P7940789551662755878.a n = A086953 n

end A086953

/-! ## A086953.P16537219998540927989

`2^(n-2)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A086953.P16537219998540927989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (a (n - 1) - a (n - 2))

end

end A086953.P16537219998540927989

namespace A086953

/-- `2^(n-2)+a(n-1)-a(n-2)` -/
def P16537219998540927989.Spec : Prop :=
  ∀ n, P16537219998540927989.a n = (A086953 n : ℚ)

end A086953

/-! ## A086953.P1047466687586792799

`2*(a(n-1)-∑[a(n-1)-a(n-2)])` with `a(0)=1, a(1)=0`
-/

namespace A086953.P1047466687586792799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086953.P1047466687586792799

namespace A086953

/-- `2*(a(n-1)-∑[a(n-1)-a(n-2)])` -/
def P1047466687586792799.Spec : Prop :=
  ∀ n, P1047466687586792799.a n = A086953 n

end A086953

/-! ## A086953.P9970993560980503043

`A024493(n)-A128834(n)`
-/

namespace A086953.P9970993560980503043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n - A128834 n

end

end A086953.P9970993560980503043

namespace A086953

/-- `A024493(n)-A128834(n)` -/
def P9970993560980503043.Spec : Prop :=
  ∀ n, P9970993560980503043.a n = A086953 n

end A086953

/-! ## A086953.P10253770724035705731

`A131370(n)-A130772(n)`
-/

namespace A086953.P10253770724035705731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131370 n - A130772 n

end

end A086953.P10253770724035705731

namespace A086953

/-- `A131370(n)-A130772(n)` -/
def P10253770724035705731.Spec : Prop :=
  ∀ n, P10253770724035705731.a n = A086953 n

end A086953

/-! ## A086953.P15740695315371196886

`A024495(n)+A010892(n+1)`
-/

namespace A086953.P15740695315371196886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n + A010892 (n + 1)

end

end A086953.P15740695315371196886

namespace A086953

/-- `A024495(n)+A010892(n+1)` -/
def P15740695315371196886.Spec : Prop :=
  ∀ n, P15740695315371196886.a n = A086953 n

end A086953

/-! ## A086953.P3030770859324940754

`A131708(n)+A087204(n+1)`
-/

namespace A086953.P3030770859324940754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n + A087204 (n + 1)

end

end A086953.P3030770859324940754

namespace A086953

/-- `A131708(n)+A087204(n+1)` -/
def P3030770859324940754.Spec : Prop :=
  ∀ n, P3030770859324940754.a n = A086953 n

end A086953

/-! ## A086953.P112503568263928474

`A133511(n)+A131090(n+1)`
-/

namespace A086953.P112503568263928474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n + A131090 (n + 1)

end

end A086953.P112503568263928474

namespace A086953

/-- `A133511(n)+A131090(n+1)` -/
def P112503568263928474.Spec : Prop :=
  ∀ n, P112503568263928474.a n = A086953 n

end A086953

/-! ## A086953.P6457733482534174130

`A024493(n)+A010892(n+2)`
-/

namespace A086953.P6457733482534174130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n + A010892 (n + 2)

end

end A086953.P6457733482534174130

namespace A086953

/-- `A024493(n)+A010892(n+2)` -/
def P6457733482534174130.Spec : Prop :=
  ∀ n, P6457733482534174130.a n = A086953 n

end A086953

/-! ## A086953.P16793405464837299730

`A130151(n+2)+A001045(n)`
-/

namespace A086953.P16793405464837299730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 (n + 2) + A001045 n

end

end A086953.P16793405464837299730

namespace A086953

/-- `A130151(n+2)+A001045(n)` -/
def P16793405464837299730.Spec : Prop :=
  ∀ n, P16793405464837299730.a n = A086953 n

end A086953

/-! ## A086953.P11747085908146497123

`A128834(n+2)+A024495(n)`
-/

namespace A086953.P11747085908146497123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (n + 2) + A024495 n

end

end A086953.P11747085908146497123

namespace A086953

/-- `A128834(n+2)+A024495(n)` -/
def P11747085908146497123.Spec : Prop :=
  ∀ n, P11747085908146497123.a n = A086953 n

end A086953

/-! ## A086953.P9030954467425042387

`A131708(n)+A057079(n+2)`
-/

namespace A086953.P9030954467425042387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n + A057079 (n + 2)

end

end A086953.P9030954467425042387

namespace A086953

/-- `A131708(n)+A057079(n+2)` -/
def P9030954467425042387.Spec : Prop :=
  ∀ n, P9030954467425042387.a n = A086953 n

end A086953

/-! ## A086953.P3636911884640347899

`A131370(n)+A109265(n+2)`
-/

namespace A086953.P3636911884640347899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131370 n + A109265 (n + 2)

end

end A086953.P3636911884640347899

namespace A086953

/-- `A131370(n)+A109265(n+2)` -/
def P3636911884640347899.Spec : Prop :=
  ∀ n, P3636911884640347899.a n = A086953 n

end A086953

/-! ## A086953.P4088855388776611064

`A111927(n)+1-A128834(n)`
-/

namespace A086953.P4088855388776611064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 n + (1 - A128834 n)

end

end A086953.P4088855388776611064

namespace A086953

/-- `A111927(n)+1-A128834(n)` -/
def P4088855388776611064.Spec : Prop :=
  ∀ n, P4088855388776611064.a n = A086953 n

end A086953

/-! ## A086953.P16866031878097069979

`A130772(n+2)+A130707(n)`
-/

namespace A086953.P16866031878097069979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130772 (n + 2) + A130707 n

end

end A086953.P16866031878097069979

namespace A086953

/-- `A130772(n+2)+A130707(n)` -/
def P16866031878097069979.Spec : Prop :=
  ∀ n, P16866031878097069979.a n = A086953 n

end A086953

/-! ## A086953.P5970175032110145494

`A131370(n)-A184334(n+1)`
-/

namespace A086953.P5970175032110145494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131370 n - A184334 (n + 1)

end

end A086953.P5970175032110145494

namespace A086953

/-- `A131370(n)-A184334(n+1)` -/
def P5970175032110145494.Spec : Prop :=
  ∀ n, P5970175032110145494.a n = A086953 n

end A086953

/-! ## A086953.P13057152355935718980

`A111927(n)+2-A164965(n)`
-/

namespace A086953.P13057152355935718980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 n + (2 - A164965 n)

end

end A086953.P13057152355935718980

namespace A086953

/-- `A111927(n)+2-A164965(n)` -/
def P13057152355935718980.Spec : Prop :=
  ∀ n, P13057152355935718980.a n = A086953 n

end A086953

/-!
# A086954: Binomial transform of A061800.

The programs for A086954, the canonical program `A086954.P18319544927579439676` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086954 has offset 0).

The definition of A086954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086954.P12206184049309475935

`A086953(n)+n*2^(n-1)`
-/

namespace A086954.P12206184049309475935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086953 n : ℚ) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A086954.P12206184049309475935

namespace A086954

/-- `A086953(n)+n*2^(n-1)` -/
def P12206184049309475935.Spec : Prop :=
  ∀ n, P12206184049309475935.a n = (A086954 n : ℚ)

end A086954

/-! ## A086954.P18319544927579439676

`or(A001787(n), A086953(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A086954

/-- `or(A001787(n), A086953(n))` -/
def P18319544927579439676.Spec : Prop :=
  ∀ n, P18319544927579439676.a n = A086954 n

theorem P18319544927579439676.correct : P18319544927579439676.Spec := by
  intro n
  simp only [A086954]

end A086954

/-! ## A086954.P3682844196426303087

`A001787(n)+Δ[A130707(n)]`
-/

namespace A086954.P3682844196426303087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (f1 (n + 1) - f1 n)

end

end A086954.P3682844196426303087

namespace A086954

/-- `A001787(n)+Δ[A130707(n)]` -/
def P3682844196426303087.Spec : Prop :=
  ∀ n, P3682844196426303087.a n = A086954 n

end A086954

/-! ## A086954.P10614485471530111752

`A139756(n+1)+A086953(n)`
-/

namespace A086954.P10614485471530111752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + A086953 n

end

end A086954.P10614485471530111752

namespace A086954

/-- `A139756(n+1)+A086953(n)` -/
def P10614485471530111752.Spec : Prop :=
  ∀ n, P10614485471530111752.a n = A086954 n

end A086954

/-! ## A086954.P6554356085237937993

`A005183(n)+A086953(n)-1`
-/

namespace A086954.P6554356085237937993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n + (A086953 n - 1)

end

end A086954.P6554356085237937993

namespace A086954

/-- `A005183(n)+A086953(n)-1` -/
def P6554356085237937993.Spec : Prop :=
  ∀ n, P6554356085237937993.a n = A086954 n

end A086954

/-! ## A086954.P877126553425336112

`A097067(n+1)+Δ[A130707(n)]`
-/

namespace A086954.P877126553425336112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n + 1) + (f1 (n + 1) - f1 n)

end

end A086954.P877126553425336112

namespace A086954

/-- `A097067(n+1)+Δ[A130707(n)]` -/
def P877126553425336112.Spec : Prop :=
  ∀ n, P877126553425336112.a n = A086954 n

end A086954

/-! ## A086954.P1505687394911067038

`A001792(n)-Δ[A086953(n+1)]`
-/

namespace A086954.P1505687394911067038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - (f1 (n + 1) - f1 n)

end

end A086954.P1505687394911067038

namespace A086954

/-- `A001792(n)-Δ[A086953(n+1)]` -/
def P1505687394911067038.Spec : Prop :=
  ∀ n, P1505687394911067038.a n = A086954 n

end A086954

/-! ## A086954.P16379303936688914963

`or(n/2*A000079(n), A086953(n))`
-/

namespace A086954.P16379303936688914963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (A000079 n : ℚ))) (A086953 n)

end

end A086954.P16379303936688914963

namespace A086954

/-- `or(n/2*A000079(n), A086953(n))` -/
def P16379303936688914963.Spec : Prop :=
  ∀ n, P16379303936688914963.a n = A086954 n

end A086954

/-! ## A086954.P9087068944168342854

`or(A001792(n)-2^n, A086953(n))`
-/

namespace A086954.P9087068944168342854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001792 n - (2 ^ n : ℤ)) (A086953 n)

end

end A086954.P9087068944168342854

namespace A086954

/-- `or(A001792(n)-2^n, A086953(n))` -/
def P9087068944168342854.Spec : Prop :=
  ∀ n, P9087068944168342854.a n = A086954 n

end A086954

/-! ## A086954.P9363412276897201989

`or(n*A011782(n+2)/4, A086953(n))`
-/

namespace A086954.P9363412276897201989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n : ℚ) * ((A011782 (n + 2) : ℚ) / 4))) (A086953 n)

end

end A086954.P9363412276897201989

namespace A086954

/-- `or(n*A011782(n+2)/4, A086953(n))` -/
def P9363412276897201989.Spec : Prop :=
  ∀ n, P9363412276897201989.a n = A086954 n

end A086954

/-! ## A086954.P7023159207107812866

`or(xor(2, n*A011782(n)+2), A086953(n))`
-/

namespace A086954.P7023159207107812866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.xor 2 ((n : ℤ) * A011782 n + 2)) (A086953 n)

end

end A086954.P7023159207107812866

namespace A086954

/-- `or(xor(2, n*A011782(n)+2), A086953(n))` -/
def P7023159207107812866.Spec : Prop :=
  ∀ n, P7023159207107812866.a n = A086954 n

end A086954

/-! ## A086954.P14389983083467555004

`or(n*(A131577(n)+1)-n, A086953(n))`
-/

namespace A086954.P14389983083467555004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * (A131577 n + 1) - (n : ℤ)) (A086953 n)

end

end A086954.P14389983083467555004

namespace A086954

/-- `or(n*(A131577(n)+1)-n, A086953(n))` -/
def P14389983083467555004.Spec : Prop :=
  ∀ n, P14389983083467555004.a n = A086954 n

end A086954

/-! ## A086954.P16422755084400947066

`A010892(n+1)+A024495(n)+A001787(n)`
-/

namespace A086954.P16422755084400947066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + (A024495 n + A001787 n)

end

end A086954.P16422755084400947066

namespace A086954

/-- `A010892(n+1)+A024495(n)+A001787(n)` -/
def P16422755084400947066.Spec : Prop :=
  ∀ n, P16422755084400947066.a n = A086954 n

end A086954

/-! ## A086954.P17436287389316083236

`A093041(n+1)+A093041(n)-A000079(n)`
-/

namespace A086954.P17436287389316083236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093041 (n + 1) + (A093041 n - A000079 n)

end

end A086954.P17436287389316083236

namespace A086954

/-- `A093041(n+1)+A093041(n)-A000079(n)` -/
def P17436287389316083236.Spec : Prop :=
  ∀ n, P17436287389316083236.a n = A086954 n

end A086954

/-! ## A086954.P9273732890598193967

`or(A036289(n)/2, A086953(n))`
-/

namespace A086954.P9273732890598193967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A036289 n : ℚ) / 2)) (A086953 n)

end

end A086954.P9273732890598193967

namespace A086954

/-- `or(A036289(n)/2, A086953(n))` -/
def P9273732890598193967.Spec : Prop :=
  ∀ n, P9273732890598193967.a n = A086954 n

end A086954

/-! ## A086954.P14176066614660619452

`Δ[A130707(n)+∑[A097067(n)]]`
-/

namespace A086954.P14176066614660619452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086954.P14176066614660619452

namespace A086954

/-- `Δ[A130707(n)+∑[A097067(n)]]` -/
def P14176066614660619452.Spec : Prop :=
  ∀ n, P14176066614660619452.a n = A086954 n

end A086954

/-! ## A086954.P12386988761451677664

`Δ[A001787(n)-2*A024495(n)]`
-/

namespace A086954.P12386988761451677664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - 2 * A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086954.P12386988761451677664

namespace A086954

/-- `Δ[A001787(n)-2*A024495(n)]` -/
def P12386988761451677664.Spec : Prop :=
  ∀ n, P12386988761451677664.a n = A086954 n

end A086954

/-! ## A086954.P9720195285293910740

`or(n*(A000051(n)-1)/2, A086953(n))`
-/

namespace A086954.P9720195285293910740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (((n : ℤ) * (A000051 n - 1) : ℚ) / 2)) (A086953 n)

end

end A086954.P9720195285293910740

namespace A086954

/-- `or(n*(A000051(n)-1)/2, A086953(n))` -/
def P9720195285293910740.Spec : Prop :=
  ∀ n, P9720195285293910740.a n = A086954 n

end A086954

/-! ## A086954.P7239278299021744970

`Δ[n/2*A000079(n)-A086953(n+1)]`
-/

namespace A086954.P7239278299021744970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A000079 n : ℚ) - (A086953 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086954.P7239278299021744970

namespace A086954

/-- `Δ[n/2*A000079(n)-A086953(n+1)]` -/
def P7239278299021744970.Spec : Prop :=
  ∀ n, P7239278299021744970.a n = (A086954 n : ℚ)

end A086954

/-! ## A086954.P10304109579238069984

`or(n*2^n/A020639(A001223(n+1)), A086953(n))`
-/

namespace A086954.P10304109579238069984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n * 2 ^ n : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ))) (A086953 n)

end

end A086954.P10304109579238069984

namespace A086954

/-- `or(n*2^n/A020639(A001223(n+1)), A086953(n))` -/
def P10304109579238069984.Spec : Prop :=
  ∀ n, P10304109579238069984.a n = A086954 n

end A086954

/-!
# A086955: a(n) = n^2 + 2*n + 2 - (-1)^n.

The programs for A086955, the canonical program `A086955.P10126615188685107471` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086955 has offset 0).

The definition of A086955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+2*n+2-(-1)^n` (program `A086955.P10126615188685107471`, by `A086955.P10126615188685107471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086955.P10126615188685107471

`n²+2*n+2-(-1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086955

/-- `n²+2*n+2-(-1)^n` -/
def P10126615188685107471.Spec : Prop :=
  ∀ n, P10126615188685107471.a n = A086955 n

theorem P10126615188685107471.correct : P10126615188685107471.Spec := by
  intro n
  simp only [A086955]

end A086955

/-! ## A086955.P17438889628512134609

`∑[abs(Δ[xor(1, n²)])]`
-/

namespace A086955.P17438889628512134609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086955.P17438889628512134609

namespace A086955

/-- `∑[abs(Δ[xor(1, n²)])]` -/
def P17438889628512134609.Spec : Prop :=
  ∀ n, P17438889628512134609.a n = A086955 n

end A086955

/-! ## A086955.P2627054967385329745

`abs(xor((n+1)², -2))`
-/

namespace A086955.P2627054967385329745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n + 1) ^ 2 : ℤ) (-2)|

end

end A086955.P2627054967385329745

namespace A086955

/-- `abs(xor((n+1)², -2))` -/
def P2627054967385329745.Spec : Prop :=
  ∀ n, P2627054967385329745.a n = A086955 n

end A086955

/-! ## A086955.P12100913334387005514

`xor(2, ∑[xor(3, 2*n)])`
-/

namespace A086955.P12100913334387005514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086955.P12100913334387005514

namespace A086955

/-- `xor(2, ∑[xor(3, 2*n)])` -/
def P12100913334387005514.Spec : Prop :=
  ∀ n, (P12100913334387005514.a n : ℤ) = A086955 n

end A086955

/-! ## A086955.P7664585719165484857

`-xor(-2, (n+1)²)`
-/

namespace A086955.P7664585719165484857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-2) ((n + 1) ^ 2 : ℤ)

end

end A086955.P7664585719165484857

namespace A086955

/-- `-xor(-2, (n+1)²)` -/
def P7664585719165484857.Spec : Prop :=
  ∀ n, P7664585719165484857.a n = A086955 n

end A086955

/-! ## A086955.P2723569630378605869

`xor(3, n*(n+2)+2)`
-/

namespace A086955.P2723569630378605869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n * (n + 2) + 2)

end

end A086955.P2723569630378605869

namespace A086955

/-- `xor(3, n*(n+2)+2)` -/
def P2723569630378605869.Spec : Prop :=
  ∀ n, (P2723569630378605869.a n : ℤ) = A086955 n

end A086955

/-! ## A086955.P16264839958328558702

`∑[a(n-2)+4]` with `a(0)=1, a(1)=5, a(2)=3`
-/

namespace A086955.P16264839958328558702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 3] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086955.P16264839958328558702

namespace A086955

/-- `∑[a(n-2)+4]` -/
def P16264839958328558702.Spec : Prop :=
  ∀ n, (P16264839958328558702.a n : ℤ) = A086955 n

end A086955

/-! ## A086955.P16535078654114937324

`abs(or(2, -((n+1)²+2)))`
-/

namespace A086955.P16535078654114937324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-((n + 1) ^ 2 + 2 : ℤ))|

end

end A086955.P16535078654114937324

namespace A086955

/-- `abs(or(2, -((n+1)²+2)))` -/
def P16535078654114937324.Spec : Prop :=
  ∀ n, P16535078654114937324.a n = A086955 n

end A086955

/-! ## A086955.P9537032170195441997

`-or(2, -((n+1)²+2))`
-/

namespace A086955.P9537032170195441997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-((n + 1) ^ 2 + 2 : ℤ))

end

end A086955.P9537032170195441997

namespace A086955

/-- `-or(2, -((n+1)²+2))` -/
def P9537032170195441997.Spec : Prop :=
  ∀ n, P9537032170195441997.a n = A086955 n

end A086955

/-! ## A086955.P250418748233203298

`or((n+1)², gcd(2, n+1))`
-/

namespace A086955.P250418748233203298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((n + 1) ^ 2) (Nat.gcd 2 (n + 1))

end

end A086955.P250418748233203298

namespace A086955

/-- `or((n+1)², gcd(2, n+1))` -/
def P250418748233203298.Spec : Prop :=
  ∀ n, (P250418748233203298.a n : ℤ) = A086955 n

end A086955

/-! ## A086955.P3817387732646788082

`or(and(1, n)+1, (n+1)²)`
-/

namespace A086955.P3817387732646788082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.land 1 n + 1) ((n + 1) ^ 2)

end

end A086955.P3817387732646788082

namespace A086955

/-- `or(and(1, n)+1, (n+1)²)` -/
def P3817387732646788082.Spec : Prop :=
  ∀ n, (P3817387732646788082.a n : ℤ) = A086955 n

end A086955

/-! ## A086955.P1349380868161701666

`∑[4*n-a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A086955.P1349380868161701666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (4 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086955.P1349380868161701666

namespace A086955

/-- `∑[4*n-a(n-1)]` -/
def P1349380868161701666.Spec : Prop :=
  ∀ n, P1349380868161701666.a n = A086955 n

end A086955

/-! ## A086955.P12500028021711030922

`ogf((1+4x-3x^2+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A086955.P12500028021711030922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3, 2] [1, -2, 0, 2, -1] n

end

end A086955.P12500028021711030922

namespace A086955

/-- `ogf((1+4x-3x^2+2x^3)/(1-2x+2x^3-x^4))` -/
def P12500028021711030922.Spec : Prop :=
  ∀ n, P12500028021711030922.a n = A086955 n

end A086955

/-! ## A086955.P2483557563142794333

`floor((or(1, (n+1)²)/(n+1))²)`
-/

namespace A086955.P2483557563142794333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lor 1 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)) ^ 2⌋

end

end A086955.P2483557563142794333

namespace A086955

/-- `floor((or(1, (n+1)²)/(n+1))²)` -/
def P2483557563142794333.Spec : Prop :=
  ∀ n, P2483557563142794333.a n = A086955 n

end A086955

/-! ## A086955.P6591791407815649114

`round((or(1, (n+1)²)/(n+1))²)`
-/

namespace A086955.P6591791407815649114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 1 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)) ^ 2)

end

end A086955.P6591791407815649114

namespace A086955

/-- `round((or(1, (n+1)²)/(n+1))²)` -/
def P6591791407815649114.Spec : Prop :=
  ∀ n, P6591791407815649114.a n = A086955 n

end A086955

/-! ## A086955.P8487394076212450866

`∑[A086970(n)]`
-/

namespace A086955.P8487394076212450866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086955.P8487394076212450866

namespace A086955

/-- `∑[A086970(n)]` -/
def P8487394076212450866.Spec : Prop :=
  ∀ n, P8487394076212450866.a n = A086955 n

end A086955

/-! ## A086955.P4429447611296108766

`∪[A005899(n), A016754(n)]`
-/

namespace A086955.P4429447611296108766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086955.P4429447611296108766

namespace A086955

/-- `∪[A005899(n), A016754(n)]` -/
def P4429447611296108766.Spec : Prop :=
  ∀ n, (P4429447611296108766.a n : ℤ) = A086955 n

end A086955

/-! ## A086955.P16314336651444421052

`A343007(n+1)%A214345(n)`
-/

namespace A086955.P16314336651444421052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343007 (n + 1)) (A214345 n)

end

end A086955.P16314336651444421052

namespace A086955

/-- `A343007(n+1)%A214345(n)` -/
def P16314336651444421052.Spec : Prop :=
  ∀ n, P16314336651444421052.a n = A086955 n

end A086955

/-! ## A086955.P1746851875104081653

`A332044(n+2)%A028878(n)`
-/

namespace A086955.P1746851875104081653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332044 (n + 2)) (A028878 n)

end

end A086955.P1746851875104081653

namespace A086955

/-- `A332044(n+2)%A028878(n)` -/
def P1746851875104081653.Spec : Prop :=
  ∀ n, P1746851875104081653.a n = A086955 n

end A086955

/-! ## A086955.P14247640553281075992

`Δ[∑[n²]+or(1, n)]`
-/

namespace A086955.P14247640553281075992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A086955.P14247640553281075992

namespace A086955

/-- `Δ[∑[n²]+or(1, n)]` -/
def P14247640553281075992.Spec : Prop :=
  ∀ n, P14247640553281075992.a n = A086955 n

end A086955

/-!
# A086956: a(1)=1, for n>1: a(n) is the smallest divisor of n occurring earlier at most twice.

The programs for A086956, there is no canonical definition to state claims against.
-/

/-! ## A086956.P11238591279132864128

`gcd(n+1, A086964(n+1)%A086962(n+1))`
-/

namespace A086956.P11238591279132864128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A086964 (n + 1)) (A086962 (n + 1)))

end

end A086956.P11238591279132864128

/-! ## A086956.P6767737659082362591

`gcd(A086960(n+1)%(n+1), A086962(n+1))`
-/

namespace A086956.P6767737659082362591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A086960 (n + 1)) (n + 1 : ℤ)) (A086962 (n + 1))

end

end A086956.P6767737659082362591

/-! ## A086956.P3123625670905645152

`gcd((n+1)%A086961(n+1), A086964(n+1))`
-/

namespace A086956.P3123625670905645152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (n + 1 : ℤ) (A086961 (n + 1))) (A086964 (n + 1))

end

end A086956.P3123625670905645152

/-! ## A086956.P14495291970887684020

`gcd(A086961(n+1)%A086960(n+1), A086963(n+1))`
-/

namespace A086956.P14495291970887684020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A086961 (n + 1)) (A086960 (n + 1))) (A086963 (n + 1))

end

end A086956.P14495291970887684020

/-! ## A086956.P14180523622860416233

`gcd(A066990(n+1), A086961(A086961(n+1)))`
-/

namespace A086956.P14180523622860416233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066990 (n + 1)) (A086961 (A086961 (n + 1)).toNat)

end

end A086956.P14180523622860416233

/-!
# A086957: Smallest m with A086956(m)=n.

The programs for A086957, there is no canonical definition to state claims against.
-/

/-! ## A086957.P7867719183954340658

`A138223(n+1)*A349294(A349294(n+1))`
-/

namespace A086957.P7867719183954340658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138223 (n + 1) * A349294 (A349294 (n + 1)).toNat

end

end A086957.P7867719183954340658

/-! ## A086957.P9389002789026972419

`(n+1)*A138223(n+1)%A200209(n+1)`
-/

namespace A086957.P9389002789026972419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A138223 (n + 1)) (A200209 (n + 1))

end

end A086957.P9389002789026972419

/-! ## A086957.P15990359340157574853

`A086710(A002252(n+1))*A138223(n+1)`
-/

namespace A086957.P15990359340157574853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086710 (A002252 (n + 1)).toNat * A138223 (n + 1)

end

end A086957.P15990359340157574853

/-! ## A086957.P17673239883909468309

`A120236(A120235(n+1))*A138223(n+1)`
-/

namespace A086957.P17673239883909468309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120236 (A120235 (n + 1)).toNat * A138223 (n + 1)

end

end A086957.P17673239883909468309

/-! ## A086957.P13885245227919802704

`A055396(A001248(n+1))*A138223(n+1)`
-/

namespace A086957.P13885245227919802704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A001248 (n + 1)).toNat * A138223 (n + 1)

end

end A086957.P13885245227919802704

/-!
# A086958: m such that A086956(m)=n and A086956(k)=n for exactly one k

The programs for A086958, there is no canonical definition to state claims against.
-/

/-! ## A086958.P9770760722594189777

`A086960(A086957(n+1)*A213217(n))`
-/

namespace A086958.P9770760722594189777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086960 (A086957 (n + 1) * A213217 n).toNat

end

end A086958.P9770760722594189777

/-! ## A086958.P13672531461872800781

`A086964(A086957(n+1)*A213217(n))`
-/

namespace A086958.P13672531461872800781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086964 (A086957 (n + 1) * A213217 n).toNat

end

end A086958.P13672531461872800781

/-! ## A086958.P5157980763471756550

`A086960(A086957(n+1)^A055642(n))`
-/

namespace A086958.P5157980763471756550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086960 (SequenceMachineLib.roundAway ((A086957 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A086958.P5157980763471756550

/-! ## A086958.P5598354646809894902

`A086964(A086957(n+1)^A055642(n))`
-/

namespace A086958.P5598354646809894902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086964 (SequenceMachineLib.roundAway ((A086957 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A086958.P5598354646809894902

/-! ## A086958.P9588582641953463624

`A086960(A086957(n+1)^A123895(n))`
-/

namespace A086958.P9588582641953463624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086960 (SequenceMachineLib.roundAway ((A086957 (n + 1) : ℚ) ^ (A123895 n : ℤ))).toNat

end

end A086958.P9588582641953463624

/-!
# A086959: Greatest m with A086956(m)=n.

The programs for A086959, there is no canonical definition to state claims against.
-/

/-! ## A086959.P11068391860342113498

`A086961(A086957(n+1))`
-/

namespace A086959.P11068391860342113498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A086957 (n + 1)).toNat

end

end A086959.P11068391860342113498

/-! ## A086959.P7772432380551298377

`A086960(A086958(n+1))`
-/

namespace A086959.P7772432380551298377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086960 (A086958 (n + 1)).toNat

end

end A086959.P7772432380551298377

/-! ## A086959.P15984930874700379939

`A086963(A086957(2*n+1-n))`
-/

namespace A086959.P15984930874700379939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086963 (A086957 (2 * n + 1 - n)).toNat

end

end A086959.P15984930874700379939

/-! ## A086959.P9713921277496545795

`A086962(A086958(2*n+1-n))`
-/

namespace A086959.P9713921277496545795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086962 (A086958 (2 * n + 1 - n)).toNat

end

end A086959.P9713921277496545795

/-! ## A086959.P3076399707720420869

`A086963(lcm(n+1, A086957(n+1)))`
-/

namespace A086959.P3076399707720420869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086963 (Int.lcm (n + 1 : ℤ) (A086957 (n + 1)))

end

end A086959.P3076399707720420869

/-!
# A086960: a(A086957(n))=A086958(n), a(A086958(n))=A086959(n), a(A086959(n))=A086957(n), see A086956.

The programs for A086960, there is no canonical definition to state claims against.
-/

/-! ## A086960.P476034896311236164

`A086964(A086962(n+1))`
-/

namespace A086960.P476034896311236164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086964 (A086962 (n + 1)).toNat

end

end A086960.P476034896311236164

/-! ## A086960.P817623137285467265

`A086963(A086964(n+1))`
-/

namespace A086960.P817623137285467265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086963 (A086964 (n + 1)).toNat

end

end A086960.P817623137285467265

/-! ## A086960.P405214644071090631

`A086964(A086961(A086964(A086956(A086957(n+1)))))`
-/

namespace A086960.P405214644071090631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086964 (A086961 (A086964 (A086956 (A086957 (n + 1)).toNat).toNat).toNat).toNat

end

end A086960.P405214644071090631

/-! ## A086960.P1337801008237082575

`A086964(A086961(A086964(A086956(A086958(n+1)))))`
-/

namespace A086960.P1337801008237082575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086964 (A086961 (A086964 (A086956 (A086958 (n + 1)).toNat).toNat).toNat).toNat

end

end A086960.P1337801008237082575

/-! ## A086960.P2720674766643737242

`A086964(A086961(A086964(A086956(A086959(n+1)))))`
-/

namespace A086960.P2720674766643737242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086964 (A086961 (A086964 (A086956 (A086959 (n + 1)).toNat).toNat).toNat).toNat

end

end A086960.P2720674766643737242

/-!
# A086961: a(A086957(n))=A086959(n), a(A086958(n))=A086957(n), a(A086959(n))=A086958(n), see A086956.

The programs for A086961, there is no canonical definition to state claims against.
-/

/-! ## A086961.P15820250974822573196

`A086963(A086962(n+1))`
-/

namespace A086961.P15820250974822573196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086963 (A086962 (n + 1)).toNat

end

end A086961.P15820250974822573196

/-! ## A086961.P55442799466754569

`A086960(A086960(n+1))`
-/

namespace A086961.P55442799466754569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086960 (A086960 (n + 1)).toNat

end

end A086961.P55442799466754569

/-! ## A086961.P15959517758175315936

`A086962(A086964(n+1))`
-/

namespace A086961.P15959517758175315936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086962 (A086964 (n + 1)).toNat

end

end A086961.P15959517758175315936

/-! ## A086961.P17276157840788536586

`A086964(A086963(n+1))`
-/

namespace A086961.P17276157840788536586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086964 (A086963 (n + 1)).toNat

end

end A086961.P17276157840788536586

/-!
# A086962: a(A086957(n))=A086957(n), a(A086958(n))=A086959(n), a(A086959(n))=A086958(n), see A086956.

The programs for A086962, there is no canonical definition to state claims against.
-/

/-! ## A086962.P9458180976370845739

`A086964(A086960(n+1))`
-/

namespace A086962.P9458180976370845739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086964 (A086960 (n + 1)).toNat

end

end A086962.P9458180976370845739

/-! ## A086962.P102293264304366702

`A086961(A086964(n+1))`
-/

namespace A086962.P102293264304366702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A086964 (n + 1)).toNat

end

end A086962.P102293264304366702

/-! ## A086962.P9334424086019183030

`A086961(A086963(A086960(A086571(A086938(n+1)))))`
-/

namespace A086962.P9334424086019183030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A086963 (A086960 (A086571 (A086938 (n + 1)).toNat).toNat).toNat).toNat

end

end A086962.P9334424086019183030

/-! ## A086962.P16113052559797262686

`A086961(A086963(A086960(A086571(A086939(n+1)))))`
-/

namespace A086962.P16113052559797262686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A086963 (A086960 (A086571 (A086939 (n + 1)).toNat).toNat).toNat).toNat

end

end A086962.P16113052559797262686

/-! ## A086962.P5065020602610892879

`A086961(A086963(A086960(A086956(A086957(n+1)))))`
-/

namespace A086962.P5065020602610892879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A086963 (A086960 (A086956 (A086957 (n + 1)).toNat).toNat).toNat).toNat

end

end A086962.P5065020602610892879

/-!
# A086963: a(A086957(n))=A086959(n), a(A086958(n))=A086958(n), a(A086959(n))=A086957(n), see A086956.

The programs for A086963, there is no canonical definition to state claims against.
-/

/-! ## A086963.P5292803918323797371

`A086961(A086962(n+1))`
-/

namespace A086963.P5292803918323797371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A086962 (n + 1)).toNat

end

end A086963.P5292803918323797371

/-! ## A086963.P14727522134892841194

`A086962(A086960(n+1))`
-/

namespace A086963.P14727522134892841194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086962 (A086960 (n + 1)).toNat

end

end A086963.P14727522134892841194

/-! ## A086963.P11491102680655841149

`A086960(A086964(n+1))`
-/

namespace A086963.P11491102680655841149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086960 (A086964 (n + 1)).toNat

end

end A086963.P11491102680655841149

/-! ## A086963.P5228009320908481829

`A086961(A086961(A086964(A086956(A086957(n+1)))))`
-/

namespace A086963.P5228009320908481829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A086961 (A086964 (A086956 (A086957 (n + 1)).toNat).toNat).toNat).toNat

end

end A086963.P5228009320908481829

/-! ## A086963.P12045169341887661767

`A086961(A086961(A086964(A086956(A086958(n+1)))))`
-/

namespace A086963.P12045169341887661767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A086961 (A086964 (A086956 (A086958 (n + 1)).toNat).toNat).toNat).toNat

end

end A086963.P12045169341887661767

/-!
# A086964: a(A086957(n))=A086958(n), a(A086958(n))=A086957(n), a(A086959(n))=A086959(n), see A086956.

The programs for A086964, there is no canonical definition to state claims against.
-/

/-! ## A086964.P15136172037684082654

`A086960(A086962(n+1))`
-/

namespace A086964.P15136172037684082654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086960 (A086962 (n + 1)).toNat

end

end A086964.P15136172037684082654

/-! ## A086964.P14680825944967076561

`A086963(A086960(n+1))`
-/

namespace A086964.P14680825944967076561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086963 (A086960 (n + 1)).toNat

end

end A086964.P14680825944967076561

/-! ## A086964.P9432748743391182641

`A086962(A086961(n+1))`
-/

namespace A086964.P9432748743391182641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086962 (A086961 (n + 1)).toNat

end

end A086964.P9432748743391182641

/-! ## A086964.P12546426681812691448

`A086961(A086963(n+1))`
-/

namespace A086964.P12546426681812691448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A086963 (n + 1)).toNat

end

end A086964.P12546426681812691448

/-!
# A086965: Number of distinct zeros of x^3-x-1 mod prime(n).

The programs for A086965, there is no canonical definition to state claims against.
-/

/-! ## A086965.P15369420424727289475

`A256572(n+1)+char[2]`
-/

namespace A086965.P15369420424727289475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256572 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A086965.P15369420424727289475

/-! ## A086965.P3073836777610415048

`A030199(p?[xor(1, n)])+1`
-/

namespace A086965.P3073836777610415048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030199 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A086965.P3073836777610415048

/-! ## A086965.P4694262196288493506

`∑{d}[p?[xor(1, n)], A030199(#)]`
-/

namespace A086965.P4694262196288493506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030199 d

end

end A086965.P4694262196288493506

/-! ## A086965.P1751068831073700227

`A256572(n*C(2, C(2, n))+1)`
-/

namespace A086965.P1751068831073700227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256572 (n * Nat.choose 2 (Nat.choose 2 n) + 1)

end

end A086965.P1751068831073700227

/-! ## A086965.P17601618548607576090

`A030199(p?[A056847(n)])+1`
-/

namespace A086965.P17601618548607576090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030199 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086965.P17601618548607576090

/-! ## A086965.P2585582081289190961

`A030199(A000040(n+1))+1`
-/

namespace A086965.P2585582081289190961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030199 (A000040 (n + 1)).toNat + 1

end

end A086965.P2585582081289190961

/-! ## A086965.P17696002204745139304

`xor(A185012(n), A256572(n+1))`
-/

namespace A086965.P17696002204745139304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A256572 (n + 1))

end

end A086965.P17696002204745139304

/-! ## A086965.P5270926547391780103

`A030199(A006093(n+1)+1)+1`
-/

namespace A086965.P5270926547391780103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030199 (A006093 (n + 1) + 1).toNat + 1

end

end A086965.P5270926547391780103

/-! ## A086965.P5780271990119636541

`A030199(p?[(n+1)*A001222(n+1)])+1`
-/

namespace A086965.P5780271990119636541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030199 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086965.P5780271990119636541

/-! ## A086965.P14671624543464384909

`A256572(and(1, Δ[A102029(n+1)])+n+1)`
-/

namespace A086965.P14671624543464384909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256572 (Int.land 1 (f1 (n + 1) - f1 n) + (n : ℤ) + 1).toNat

end

end A086965.P14671624543464384909

/-!
# A086966: Number of distinct zeros of x^4-x-1 mod prime(n).

The programs for A086966, there is no canonical definition to state claims against.
-/

/-! ## A086966.P17954763704734834703

`A242830(A109658(n+1)+n+10)`
-/

namespace A086966.P17954763704734834703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (A109658 (n + 1) + (n + 10 : ℤ)).toNat

end

end A086966.P17954763704734834703

/-! ## A086966.P2426262582287324641

`A239504(n)%A060500(∑[A244472(n+2)])`
-/

namespace A086966.P2426262582287324641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239504 n) (A060500 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A086966.P2426262582287324641

/-! ## A086966.P15908192278143912751

`A361924(n+1)%A376365(A361974(3*n+4))`
-/

namespace A086966.P15908192278143912751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361924 (n + 1)) (A376365 (A361974 (3 * n + 4)).toNat)

end

end A086966.P15908192278143912751

/-! ## A086966.P9543014471128954296

`A386577(A099763(n+2))`
-/

namespace A086966.P9543014471128954296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386577 (A099763 (n + 2)).toNat

end

end A086966.P9543014471128954296

/-! ## A086966.P6388010523272544706

`A319284(A247278(n+2))%A345147(n+1)`
-/

namespace A086966.P6388010523272544706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319284 (A247278 (n + 2)).toNat) (A345147 (n + 1))

end

end A086966.P6388010523272544706

/-!
# A086968: Numbers n such that n^2 is a sum k-th prime + k for some k.

The programs for A086968, there is no canonical definition to state claims against.
-/

/-! ## A086968.P6977915076041234874

`sqrt(A104992(n+1))`
-/

namespace A086968.P6977915076041234874
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A104992 (n + 1) : ℝ)

end

end A086968.P6977915076041234874

/-! ## A086968.P7373318909244844488

`A000027(root(A104992(n+1), 2))`
-/

namespace A086968.P7373318909244844488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A104992 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A086968.P7373318909244844488

/-! ## A086968.P1843525032547224625

`sqrt(A104269(n+1)+A064371(n+2))`
-/

namespace A086968.P1843525032547224625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A104269 (n + 1) + A064371 (n + 2) : ℝ)

end

end A086968.P1843525032547224625

/-! ## A086968.P8447354564674115351

`root(A104992(n+1), 2)*A007318(∑[n])`
-/

namespace A086968.P8447354564674115351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104992 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A086968.P8447354564674115351

/-! ## A086968.P5670680975175111534

`root(A104992(n+1), A020639(2*(n+1)))`
-/

namespace A086968.P5670680975175111534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104992 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A086968.P5670680975175111534

/-!
# A086970: Fix 1, then exchange the subsequent odd numbers in pairs.

The programs for A086970, the canonical program `A086970.P15348351523083055553` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086970 has offset 0).

The definition of A086970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086970.P15348351523083055553

`4*n-a(n-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086970

/-- `4*n-a(n-1)` -/
def P15348351523083055553.Spec : Prop :=
  ∀ n, P15348351523083055553.a n = A086970 n

theorem P15348351523083055553.correct : P15348351523083055553.Spec := by
  intro n
  simp only [A086970]

end A086970

/-! ## A086970.P5953367207663317610

`n+abs(2-(n+1)*(-1)^n)`
-/

namespace A086970.P5953367207663317610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + |2 - (n + 1 : ℤ) * (-1) ^ n|

end

end A086970.P5953367207663317610

namespace A086970

/-- `n+abs(2-(n+1)*(-1)^n)` -/
def P5953367207663317610.Spec : Prop :=
  ∀ n, P5953367207663317610.a n = A086970 n

end A086970

/-! ## A086970.P10216427227166962535

`A005408(A014681(n))`
-/

namespace A086970.P10216427227166962535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A014681 n).toNat

end

end A086970.P10216427227166962535

namespace A086970

/-- `A005408(A014681(n))` -/
def P10216427227166962535.Spec : Prop :=
  ∀ n, P10216427227166962535.a n = A086970 n

end A086970

/-! ## A086970.P1200742323055751823

`abs(Δ[xor(1, n²)])`
-/

namespace A086970.P1200742323055751823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A086970.P1200742323055751823

namespace A086970

/-- `abs(Δ[xor(1, n²)])` -/
def P1200742323055751823.Spec : Prop :=
  ∀ n, P1200742323055751823.a n = A086970 n

end A086970

/-! ## A086970.P15730017935325048953

`abs(2*xor(1, -n)-1)`
-/

namespace A086970.P15730017935325048953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * Int.xor 1 (-(n : ℤ)) - 1|

end

end A086970.P15730017935325048953

namespace A086970

/-- `abs(2*xor(1, -n)-1)` -/
def P15730017935325048953.Spec : Prop :=
  ∀ n, P15730017935325048953.a n = A086970 n

end A086970

/-! ## A086970.P4559502490700043787

`abs(1-2*xor(1, n+1))`
-/

namespace A086970.P4559502490700043787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * Nat.xor 1 (n + 1) : ℤ)|

end

end A086970.P4559502490700043787

namespace A086970

/-- `abs(1-2*xor(1, n+1))` -/
def P4559502490700043787.Spec : Prop :=
  ∀ n, P4559502490700043787.a n = A086970 n

end A086970

/-! ## A086970.P5129489323093790978

`abs(1-xor(3, 1-2*n))`
-/

namespace A086970.P5129489323093790978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.xor 3 (1 - (2 * n : ℤ))|

end

end A086970.P5129489323093790978

namespace A086970

/-- `abs(1-xor(3, 1-2*n))` -/
def P5129489323093790978.Spec : Prop :=
  ∀ n, P5129489323093790978.a n = A086970 n

end A086970

/-! ## A086970.P14314615078827671218

`abs(xor(2, n-1+n)+2)`
-/

namespace A086970.P14314615078827671218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 ((n : ℤ) - 1 + (n : ℤ)) + 2|

end

end A086970.P14314615078827671218

namespace A086970

/-- `abs(xor(2, n-1+n)+2)` -/
def P14314615078827671218.Spec : Prop :=
  ∀ n, P14314615078827671218.a n = A086970 n

end A086970

/-! ## A086970.P16621183670962263011

`∑[4-a(n-1)]` with `a(0)=1, a(1)=4, a(2)=-2`
-/

namespace A086970.P16621183670962263011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, -2] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086970.P16621183670962263011

namespace A086970

/-- `∑[4-a(n-1)]` -/
def P16621183670962263011.Spec : Prop :=
  ∀ n, P16621183670962263011.a n = A086970 n

end A086970

/-! ## A086970.P15276799847230657781

`∑[ogf((1+4x-3x^2+2x^3)/(1-x^2))]`
-/

namespace A086970.P15276799847230657781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3, 2] [1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086970.P15276799847230657781

namespace A086970

/-- `∑[ogf((1+4x-3x^2+2x^3)/(1-x^2))]` -/
def P15276799847230657781.Spec : Prop :=
  ∀ n, P15276799847230657781.a n = A086970 n

end A086970

/-! ## A086970.P13125907885361128299

`ogf((1+4x-3x^2+2x^3)/(1-x-x^2+x^3))`
-/

namespace A086970.P13125907885361128299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3, 2] [1, -1, -1, 1] n

end

end A086970.P13125907885361128299

namespace A086970

/-- `ogf((1+4x-3x^2+2x^3)/(1-x-x^2+x^3))` -/
def P13125907885361128299.Spec : Prop :=
  ∀ n, P13125907885361128299.a n = A086970 n

end A086970

/-! ## A086970.P17742358069178089263

`Δ[and(2, lcm(n+1, n-1))+n²]`
-/

namespace A086970.P17742358069178089263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Int.lcm (n + 1 : ℤ) ((n : ℤ) - 1)) + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A086970.P17742358069178089263

namespace A086970

/-- `Δ[and(2, lcm(n+1, n-1))+n²]` -/
def P17742358069178089263.Spec : Prop :=
  ∀ n, P17742358069178089263.a n = A086970 n

end A086970

/-! ## A086970.P9165474815082465685

`abs(2-A157142(n))`
-/

namespace A086970.P9165474815082465685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A157142 n|

end

end A086970.P9165474815082465685

namespace A086970

/-- `abs(2-A157142(n))` -/
def P9165474815082465685.Spec : Prop :=
  ∀ n, P9165474815082465685.a n = A086970 n

end A086970

/-! ## A086970.P16654493753152356541

`Δ[A040003(n)+n²]`
-/

namespace A086970.P16654493753152356541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086970.P16654493753152356541

namespace A086970

/-- `Δ[A040003(n)+n²]` -/
def P16654493753152356541.Spec : Prop :=
  ∀ n, P16654493753152356541.a n = A086970 n

end A086970

/-! ## A086970.P4372993259393027499

`A091998(n+1)%A016825(n)`
-/

namespace A086970.P4372993259393027499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091998 (n + 1)) (A016825 n)

end

end A086970.P4372993259393027499

namespace A086970

/-- `A091998(n+1)%A016825(n)` -/
def P4372993259393027499.Spec : Prop :=
  ∀ n, P4372993259393027499.a n = A086970 n

end A086970

/-! ## A086970.P12813602645360773614

`A231002(n+1)%A016825(n)`
-/

namespace A086970.P12813602645360773614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231002 (n + 1)) (A016825 n)

end

end A086970.P12813602645360773614

namespace A086970

/-- `A231002(n+1)%A016825(n)` -/
def P12813602645360773614.Spec : Prop :=
  ∀ n, P12813602645360773614.a n = A086970 n

end A086970

/-! ## A086970.P1920331980952609937

`A322490(n+1)%A016825(n)`
-/

namespace A086970.P1920331980952609937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322490 (n + 1)) (A016825 n)

end

end A086970.P1920331980952609937

namespace A086970

/-- `A322490(n+1)%A016825(n)` -/
def P1920331980952609937.Spec : Prop :=
  ∀ n, P1920331980952609937.a n = A086970 n

end A086970

/-! ## A086970.P6119360419740449715

`A167534(n)%A177964(n+1)`
-/

namespace A086970.P6119360419740449715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167534 n) (A177964 (n + 1))

end

end A086970.P6119360419740449715

namespace A086970

/-- `A167534(n)%A177964(n+1)` -/
def P6119360419740449715.Spec : Prop :=
  ∀ n, P6119360419740449715.a n = A086970 n

end A086970

/-! ## A086970.P11982635094490799611

`A113801(n+1)%A063225(n+1)`
-/

namespace A086970.P11982635094490799611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113801 (n + 1)) (A063225 (n + 1))

end

end A086970.P11982635094490799611

namespace A086970

/-- `A113801(n+1)%A063225(n+1)` -/
def P11982635094490799611.Spec : Prop :=
  ∀ n, P11982635094490799611.a n = A086970 n

end A086970

/-! ## A086970.P2433160234565542189

`A113541(n+1)%A177964(n+1)`
-/

namespace A086970.P2433160234565542189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113541 (n + 1)) (A177964 (n + 1))

end

end A086970.P2433160234565542189

namespace A086970

/-- `A113541(n+1)%A177964(n+1)` -/
def P2433160234565542189.Spec : Prop :=
  ∀ n, P2433160234565542189.a n = A086970 n

end A086970

/-!
# A086971: Number of semiprime divisors of n.

The programs for A086971, the canonical program `A086971.P8267424955413097261` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086971 has offset 1).

The definition of A086971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A079275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086971.P8267424955413097261

`A056170(n+1)+A079275(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A086971

/-- `A056170(n+1)+A079275(n+1)` -/
def P8267424955413097261.Spec : Prop :=
  ∀ n, P8267424955413097261.a n = A086971 (n + 1)

theorem P8267424955413097261.correct : P8267424955413097261.Spec := by
  intro n
  simp only [A086971, Nat.add_sub_cancel]

end A086971

/-! ## A086971.P17261894246887500071

`A106404(n+1)+A106405(n+1)`
-/

namespace A086971.P17261894246887500071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (n + 1) + A106405 (n + 1)

end

end A086971.P17261894246887500071

namespace A086971

/-- `A106404(n+1)+A106405(n+1)` -/
def P17261894246887500071.Spec : Prop :=
  ∀ n, P17261894246887500071.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P11314981751516711550

`∑{d}[n+1, A064911(#)]`
-/

namespace A086971.P11314981751516711550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064911 d

end

end A086971.P11314981751516711550

namespace A086971

/-- `∑{d}[n+1, A064911(#)]` -/
def P11314981751516711550.Spec : Prop :=
  ∀ n, P11314981751516711550.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P2080021643138071442

`A198332(A073184(n+1))/2`
-/

namespace A086971.P2080021643138071442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198332 (A073184 (n + 1)).toNat : ℚ) / 2

end

end A086971.P2080021643138071442

namespace A086971

/-- `A198332(A073184(n+1))/2` -/
def P2080021643138071442.Spec : Prop :=
  ∀ n, P2080021643138071442.a n = (A086971 (n + 1) : ℚ)

end A086971

/-! ## A086971.P8849068866204254394

`A000005(n+1)-A262095(n+1)`
-/

namespace A086971.P8849068866204254394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A262095 (n + 1)

end

end A086971.P8849068866204254394

namespace A086971

/-- `A000005(n+1)-A262095(n+1)` -/
def P8849068866204254394.Spec : Prop :=
  ∀ n, P8849068866204254394.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P6112145808759847537

`A350331(n+1)-A001221(n+1)`
-/

namespace A086971.P6112145808759847537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350331 (n + 1) - A001221 (n + 1)

end

end A086971.P6112145808759847537

namespace A086971

/-- `A350331(n+1)-A001221(n+1)` -/
def P6112145808759847537.Spec : Prop :=
  ∀ n, P6112145808759847537.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P17647591740368608226

`A345354(n+1)-A079275(n+1)`
-/

namespace A086971.P17647591740368608226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345354 (n + 1) - A079275 (n + 1)

end

end A086971.P17647591740368608226

namespace A086971

/-- `A345354(n+1)-A079275(n+1)` -/
def P17647591740368608226.Spec : Prop :=
  ∀ n, P17647591740368608226.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P15436781613878225771

`∑{d}[n+1, A186719(A001222(#)+1)]-1`
-/

namespace A086971.P15436781613878225771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186719 (A001222 d + 1).toNat - 1

end

end A086971.P15436781613878225771

namespace A086971

/-- `∑{d}[n+1, A186719(A001222(#)+1)]-1` -/
def P15436781613878225771.Spec : Prop :=
  ∀ n, P15436781613878225771.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P8597736511385660657

`A001221(A003557(n+1))+C(A001221(n+1), 2)`
-/

namespace A086971.P8597736511385660657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003557 (n + 1)).toNat + (Nat.choose (A001221 (n + 1)).toNat 2 : ℤ)

end

end A086971.P8597736511385660657

namespace A086971

/-- `A001221(A003557(n+1))+C(A001221(n+1), 2)` -/
def P8597736511385660657.Spec : Prop :=
  ∀ n, P8597736511385660657.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P1476380265617990928

`A001221(A071773(n+1))+C(A001221(n+1), 2)`
-/

namespace A086971.P1476380265617990928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A071773 (n + 1)).toNat + (Nat.choose (A001221 (n + 1)).toNat 2 : ℤ)

end

end A086971.P1476380265617990928

namespace A086971

/-- `A001221(A071773(n+1))+C(A001221(n+1), 2)` -/
def P1476380265617990928.Spec : Prop :=
  ∀ n, P1476380265617990928.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P12984054277662932936

`A055212(n+1)+A083399(n+1)-A262095(n+1)`
-/

namespace A086971.P12984054277662932936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) + (A083399 (n + 1) - A262095 (n + 1))

end

end A086971.P12984054277662932936

namespace A086971

/-- `A055212(n+1)+A083399(n+1)-A262095(n+1)` -/
def P12984054277662932936.Spec : Prop :=
  ∀ n, P12984054277662932936.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P7083755346876741781

`A106405(n+1)+A205745(n+1)-A305614(n+1)`
-/

namespace A086971.P7083755346876741781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106405 (n + 1) + (A205745 (n + 1) - A305614 (n + 1))

end

end A086971.P7083755346876741781

namespace A086971

/-- `A106405(n+1)+A205745(n+1)-A305614(n+1)` -/
def P7083755346876741781.Spec : Prop :=
  ∀ n, P7083755346876741781.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P2080788618698348205

`A106405(A003961(n+1))`
-/

namespace A086971.P2080788618698348205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106405 (A003961 (n + 1)).toNat

end

end A086971.P2080788618698348205

namespace A086971

/-- `A106405(A003961(n+1))` -/
def P2080788618698348205.Spec : Prop :=
  ∀ n, P2080788618698348205.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P9965694679141160519

`A106405(A045965(n+1))`
-/

namespace A086971.P9965694679141160519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106405 (A045965 (n + 1)).toNat

end

end A086971.P9965694679141160519

namespace A086971

/-- `A106405(A045965(n+1))` -/
def P9965694679141160519.Spec : Prop :=
  ∀ n, P9965694679141160519.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P443740972406214627

`A106405(A064988(n+1))`
-/

namespace A086971.P443740972406214627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106405 (A064988 (n + 1)).toNat

end

end A086971.P443740972406214627

namespace A086971

/-- `A106405(A064988(n+1))` -/
def P443740972406214627.Spec : Prop :=
  ∀ n, P443740972406214627.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P12588057021102093126

`∑{d}[n+1, A101637(#²)]`
-/

namespace A086971.P12588057021102093126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101637 (d ^ 2)

end

end A086971.P12588057021102093126

namespace A086971

/-- `∑{d}[n+1, A101637(#²)]` -/
def P12588057021102093126.Spec : Prop :=
  ∀ n, P12588057021102093126.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P5191040802969792879

`A101606(2*A003961(n+1))-A101606(n+1)`
-/

namespace A086971.P5191040802969792879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (2 * A003961 (n + 1)).toNat - A101606 (n + 1)

end

end A086971.P5191040802969792879

namespace A086971

/-- `A101606(2*A003961(n+1))-A101606(n+1)` -/
def P5191040802969792879.Spec : Prop :=
  ∀ n, P5191040802969792879.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P813865914375477431

`A101606(2*A064988(n+1))-A101606(n+1)`
-/

namespace A086971.P813865914375477431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (2 * A064988 (n + 1)).toNat - A101606 (n + 1)

end

end A086971.P813865914375477431

namespace A086971

/-- `A101606(2*A064988(n+1))-A101606(n+1)` -/
def P813865914375477431.Spec : Prop :=
  ∀ n, P813865914375477431.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P6666236694990288862

`A101606(lcm(2, A003961(n+1)))-A101606(n+1)`
-/

namespace A086971.P6666236694990288862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (Int.lcm 2 (A003961 (n + 1))) - A101606 (n + 1)

end

end A086971.P6666236694990288862

namespace A086971

/-- `A101606(lcm(2, A003961(n+1)))-A101606(n+1)` -/
def P6666236694990288862.Spec : Prop :=
  ∀ n, P6666236694990288862.a n = A086971 (n + 1)

end A086971

/-! ## A086971.P11407794123059835545

`A101606(2*A297002(n+1))-A101606(n+1)`
-/

namespace A086971.P11407794123059835545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (2 * A297002 (n + 1)).toNat - A101606 (n + 1)

end

end A086971.P11407794123059835545

namespace A086971

/-- `A101606(2*A297002(n+1))-A101606(n+1)` -/
def P11407794123059835545.Spec : Prop :=
  ∀ n, P11407794123059835545.a n = A086971 (n + 1)

end A086971

/-!
# A086972: a(n) = n*3^(n-1) + (3^n + 1)/2.

The programs for A086972, the canonical program `A086972.P628227835051383847` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086972 has offset 0).

The definition of A086972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086972.P628227835051383847

`n*3^(n-1)+(3^n+1)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086972

/-- `n*3^(n-1)+(3^n+1)/2` -/
def P628227835051383847.Spec : Prop :=
  ∀ n, P628227835051383847.a n = (A086972 n : ℚ)

end A086972

/-! ## A086972.P18056861328557674826

`1/2*(A081038(n)+1)`
-/

namespace A086972.P18056861328557674826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A081038 n + 1 : ℚ)

end

end A086972.P18056861328557674826

namespace A086972

/-- `1/2*(A081038(n)+1)` -/
def P18056861328557674826.Spec : Prop :=
  ∀ n, P18056861328557674826.a n = (A086972 n : ℚ)

end A086972

/-! ## A086972.P9861734366639643149

`∑[ogf((1-4x+5x^2)/(1-6x+9x^2))]`
-/

namespace A086972.P9861734366639643149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 5] [1, -6, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086972.P9861734366639643149

namespace A086972

/-- `∑[ogf((1-4x+5x^2)/(1-6x+9x^2))]` -/
def P9861734366639643149.Spec : Prop :=
  ∀ n, P9861734366639643149.a n = A086972 n

end A086972

/-! ## A086972.P8210211368160603619

`∑[3*a(n-1)*ratio[n+1]]` with `a(0)=1, a(1)=2`
-/

namespace A086972.P8210211368160603619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * (f1 (n - 1) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086972.P8210211368160603619

namespace A086972

/-- `∑[3*a(n-1)*ratio[n+1]]` -/
def P8210211368160603619.Spec : Prop :=
  ∀ n, P8210211368160603619.a n = (A086972 n : ℚ)

end A086972

/-! ## A086972.P14762051813043757953

`∑[(3/(n+1)+3)*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A086972.P14762051813043757953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (3 / (n + 1 : ℚ) + 3) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086972.P14762051813043757953

namespace A086972

/-- `∑[(3/(n+1)+3)*a(n-1)]` -/
def P14762051813043757953.Spec : Prop :=
  ∀ n, P14762051813043757953.a n = (A086972 n : ℚ)

end A086972

/-! ## A086972.P8499702149561887724

`∑[A199923(n)]`
-/

namespace A086972.P8499702149561887724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086972.P8499702149561887724

namespace A086972

/-- `∑[A199923(n)]` -/
def P8499702149561887724.Spec : Prop :=
  ∀ n, P8499702149561887724.a n = A086972 n

end A086972

/-! ## A086972.P1743239098545538364

`Δ[A082133(n)]`
-/

namespace A086972.P1743239098545538364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086972.P1743239098545538364

namespace A086972

/-- `Δ[A082133(n)]` -/
def P1743239098545538364.Spec : Prop :=
  ∀ n, P1743239098545538364.a n = A086972 n

end A086972

/-! ## A086972.P16835884993349177899

`ceil(A081038(n)/2)`
-/

namespace A086972.P16835884993349177899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081038 n : ℚ) / 2⌉

end

end A086972.P16835884993349177899

namespace A086972

/-- `ceil(A081038(n)/2)` -/
def P16835884993349177899.Spec : Prop :=
  ∀ n, P16835884993349177899.a n = A086972 n

end A086972

/-! ## A086972.P2286429940394958489

`Δ[n*A124302(n)]`
-/

namespace A086972.P2286429940394958489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086972.P2286429940394958489

namespace A086972

/-- `Δ[n*A124302(n)]` -/
def P2286429940394958489.Spec : Prop :=
  ∀ n, P2286429940394958489.a n = A086972 n

end A086972

/-! ## A086972.P5303648957131402263

`(∑[A120926(n+1)]+1)/2`
-/

namespace A086972.P5303648957131402263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120926 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A086972.P5303648957131402263

namespace A086972

/-- `(∑[A120926(n+1)]+1)/2` -/
def P5303648957131402263.Spec : Prop :=
  ∀ n, P5303648957131402263.a n = (A086972 n : ℚ)

end A086972

/-!
# A086974: Numbers of the form p^2 * q * r with distinct primes p, q and r such that p^2 < q*r.

The programs for A086974, there is no canonical definition to state claims against.
-/

/-! ## A086974.P12981214331640877140

`∩[A069116(n+1), A085987(n+1)]`
-/

namespace A086974.P12981214331640877140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086974.P12981214331640877140

/-! ## A086974.P14252600322965328975

`∩[A069116(n+1), A356413(n+1)]`
-/

namespace A086974.P14252600322965328975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086974.P14252600322965328975

/-! ## A086974.P10089865283445254744

`A085987(lt[A065666(n+1), A291877(n+1)])`
-/

namespace A086974.P10089865283445254744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086974.P10089865283445254744

/-! ## A086974.P2265395270756874907

`A085987(lt[A340547(3*n+5), A189682(n+1)])`
-/

namespace A086974.P2265395270756874907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340547 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086974.P2265395270756874907

/-! ## A086974.P15002167396864696670

`A085987(lt[A340547(3*n+5), A307414(n+1)])`
-/

namespace A086974.P15002167396864696670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340547 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086974.P15002167396864696670

/-!
# A086975: Numbers of the form p^2 * q * r with primes p < q < r.

The programs for A086975, the canonical program `A086975.P13296721778976903198` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086975 has offset 1).

The definition of A086975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086975.P13296721778976903198

`filter[A085987(n+1), A319710(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A086975

/-- `filter[A085987(n+1), A319710(#)]` -/
def P13296721778976903198.Spec : Prop :=
  ∀ n, P13296721778976903198.a n = A086975 (n + 1)

theorem P13296721778976903198.correct : P13296721778976903198.Spec := by
  intro n
  simp only [A086975, Nat.add_sub_cancel]

end A086975

/-! ## A086975.P11777450031839108995

`filter[A086974(n+1), A319710(#)]`
-/

namespace A086975.P11777450031839108995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A086975.P11777450031839108995

namespace A086975

/-- `filter[A086974(n+1), A319710(#)]` -/
def P11777450031839108995.Spec : Prop :=
  ∀ n, P11777450031839108995.a n = A086975 (n + 1)

end A086975

/-! ## A086975.P6395959796864061459

`filter[A366825(n+1), A101637(#)]`
-/

namespace A086975.P6395959796864061459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A086975.P6395959796864061459

namespace A086975

/-- `filter[A366825(n+1), A101637(#)]` -/
def P6395959796864061459.Spec : Prop :=
  ∀ n, P6395959796864061459.a n = A086975 (n + 1)

end A086975

/-! ## A086975.P16967472999174758641

`∩[A030630(n+1), A366825(n+1)]`
-/

namespace A086975.P16967472999174758641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P16967472999174758641

namespace A086975

/-- `∩[A030630(n+1), A366825(n+1)]` -/
def P16967472999174758641.Spec : Prop :=
  ∀ n, (P16967472999174758641.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P8548926073421014474

`∩[A085987(n+1), A366825(n+1)]`
-/

namespace A086975.P8548926073421014474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P8548926073421014474

namespace A086975

/-- `∩[A085987(n+1), A366825(n+1)]` -/
def P8548926073421014474.Spec : Prop :=
  ∀ n, (P8548926073421014474.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P9620562616713815438

`∩[A086974(n+1), A366825(n+1)]`
-/

namespace A086975.P9620562616713815438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P9620562616713815438

namespace A086975

/-- `∩[A086974(n+1), A366825(n+1)]` -/
def P9620562616713815438.Spec : Prop :=
  ∀ n, (P9620562616713815438.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P12744223615006904480

`∩[A307341(n+1), A366825(n+1)]`
-/

namespace A086975.P12744223615006904480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P12744223615006904480

namespace A086975

/-- `∩[A307341(n+1), A366825(n+1)]` -/
def P12744223615006904480.Spec : Prop :=
  ∀ n, (P12744223615006904480.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P3915311074525251740

`∩[A356413(n+1), A366825(n+1)]`
-/

namespace A086975.P3915311074525251740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P3915311074525251740

namespace A086975

/-- `∩[A356413(n+1), A366825(n+1)]` -/
def P3915311074525251740.Spec : Prop :=
  ∀ n, (P3915311074525251740.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P6156735338131463488

`filter[A397710(n+1), A101637(#)]`
-/

namespace A086975.P6156735338131463488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A086975.P6156735338131463488

namespace A086975

/-- `filter[A397710(n+1), A101637(#)]` -/
def P6156735338131463488.Spec : Prop :=
  ∀ n, P6156735338131463488.a n = A086975 (n + 1)

end A086975

/-! ## A086975.P1062754286829788266

`∩[A030630(n+1), A397710(n+1)]`
-/

namespace A086975.P1062754286829788266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P1062754286829788266

namespace A086975

/-- `∩[A030630(n+1), A397710(n+1)]` -/
def P1062754286829788266.Spec : Prop :=
  ∀ n, (P1062754286829788266.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P15216022614267900294

`∩[A085987(n+1), A397710(n+1)]`
-/

namespace A086975.P15216022614267900294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P15216022614267900294

namespace A086975

/-- `∩[A085987(n+1), A397710(n+1)]` -/
def P15216022614267900294.Spec : Prop :=
  ∀ n, (P15216022614267900294.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P4328647579949328736

`∩[A086974(n+1), A397710(n+1)]`
-/

namespace A086975.P4328647579949328736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P4328647579949328736

namespace A086975

/-- `∩[A086974(n+1), A397710(n+1)]` -/
def P4328647579949328736.Spec : Prop :=
  ∀ n, (P4328647579949328736.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P9830497231988751505

`∩[A350371(n+1), A366825(n+1)]`
-/

namespace A086975.P9830497231988751505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P9830497231988751505

namespace A086975

/-- `∩[A350371(n+1), A366825(n+1)]` -/
def P9830497231988751505.Spec : Prop :=
  ∀ n, (P9830497231988751505.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P15605478914430179291

`∩[A085987(n+1), A398264(n+1)]`
-/

namespace A086975.P15605478914430179291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P15605478914430179291

namespace A086975

/-- `∩[A085987(n+1), A398264(n+1)]` -/
def P15605478914430179291.Spec : Prop :=
  ∀ n, (P15605478914430179291.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P10879596901055798496

`∩[A086974(n+1), A398264(n+1)]`
-/

namespace A086975.P10879596901055798496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P10879596901055798496

namespace A086975

/-- `∩[A086974(n+1), A398264(n+1)]` -/
def P10879596901055798496.Spec : Prop :=
  ∀ n, (P10879596901055798496.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P17337970982358143626

`∩[A307342(n+1), A366825(n+1)]`
-/

namespace A086975.P17337970982358143626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P17337970982358143626

namespace A086975

/-- `∩[A307342(n+1), A366825(n+1)]` -/
def P17337970982358143626.Spec : Prop :=
  ∀ n, (P17337970982358143626.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P6490710296110967905

`∩[A014613(n+1), A366825(n+1)]`
-/

namespace A086975.P6490710296110967905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P6490710296110967905

namespace A086975

/-- `∩[A014613(n+1), A366825(n+1)]` -/
def P6490710296110967905.Spec : Prop :=
  ∀ n, (P6490710296110967905.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P18201321045881542200

`∩[A014613(n+1), A397710(n+1)]`
-/

namespace A086975.P18201321045881542200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P18201321045881542200

namespace A086975

/-- `∩[A014613(n+1), A397710(n+1)]` -/
def P18201321045881542200.Spec : Prop :=
  ∀ n, (P18201321045881542200.a n : ℤ) = A086975 (n + 1)

end A086975

/-! ## A086975.P14781720786861797456

`∩[A323350(n+1), A366825(n+1)]`
-/

namespace A086975.P14781720786861797456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086975.P14781720786861797456

namespace A086975

/-- `∩[A323350(n+1), A366825(n+1)]` -/
def P14781720786861797456.Spec : Prop :=
  ∀ n, (P14781720786861797456.a n : ℤ) = A086975 (n + 1)

end A086975

/-!
# A086977: Increasing peaks in the prime gap sequence A000230.

The programs for A086977, there is no canonical definition to state claims against.
-/

/-! ## A086977.P18031358568779576610

`A000230(A086980(n+1)/2)`
-/

namespace A086977.P18031358568779576610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway ((A086980 (n + 1) : ℚ) / 2)).toNat

end

end A086977.P18031358568779576610

/-! ## A086977.P702950558964186791

`A086978(n+1)-A086980(n+1)`
-/

namespace A086977.P702950558964186791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086978 (n + 1) - A086980 (n + 1)

end

end A086977.P702950558964186791

/-! ## A086977.P11645866769639980800

`A000230(A014682(A086980(n+1)))`
-/

namespace A086977.P11645866769639980800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A014682 (A086980 (n + 1)).toNat).toNat

end

end A086977.P11645866769639980800

/-! ## A086977.P1475441362698293788

`A001632(A086980(n+1)/2)-A086980(n+1)`
-/

namespace A086977.P1475441362698293788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001632 (SequenceMachineLib.roundAway ((A086980 (n + 1) : ℚ) / 2)).toNat - A086980 (n + 1)

end

end A086977.P1475441362698293788

/-! ## A086977.P8892203732321374189

`A086978(n+1)-A001223(A086979(n+1))`
-/

namespace A086977.P8892203732321374189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086978 (n + 1) - A001223 (A086979 (n + 1)).toNat

end

end A086977.P8892203732321374189

/-!
# A086978: Increasing peaks in the prime gap sequence A001632.

The programs for A086978, there is no canonical definition to state claims against.
-/

/-! ## A086978.P16484929008760963169

`A001632(A086980(n+1)/2)`
-/

namespace A086978.P16484929008760963169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001632 (SequenceMachineLib.roundAway ((A086980 (n + 1) : ℚ) / 2)).toNat

end

end A086978.P16484929008760963169

/-! ## A086978.P13587505553759777724

`A086980(n+1)+A086977(n+1)`
-/

namespace A086978.P13587505553759777724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086980 (n + 1) + A086977 (n + 1)

end

end A086978.P13587505553759777724

/-! ## A086978.P8444348614208320689

`A086980(n+1)+A000230(A086980(n+1)/2)`
-/

namespace A086978.P8444348614208320689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086980 (n + 1) + A000230 (SequenceMachineLib.roundAway ((A086980 (n + 1) : ℚ) / 2)).toNat

end

end A086978.P8444348614208320689

/-! ## A086978.P13579565275435929440

`A086977(n+1)+A001223(A086979(n+1))`
-/

namespace A086978.P13579565275435929440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086977 (n + 1) + A001223 (A086979 (n + 1)).toNat

end

end A086978.P13579565275435929440

/-!
# A086979: Increasing peaks in the prime gap sequence A038664.

The programs for A086979, there is no canonical definition to state claims against.
-/

/-! ## A086979.P9391950109470867951

`A066493(A086980(n+1))`
-/

namespace A086979.P9391950109470867951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066493 (A086980 (n + 1)).toNat

end

end A086979.P9391950109470867951

/-! ## A086979.P9091210334322983323

`A038664(A086980(n+1)/2)`
-/

namespace A086979.P9091210334322983323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038664 (SequenceMachineLib.roundAway ((A086980 (n + 1) : ℚ) / 2)).toNat

end

end A086979.P9091210334322983323

/-! ## A086979.P15963547996489328432

`A038664((A086978(n+1)-A086977(n+1))/2)`
-/

namespace A086979.P15963547996489328432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038664 (SequenceMachineLib.roundAway ((A086978 (n + 1) - A086977 (n + 1) : ℚ) / 2)).toNat

end

end A086979.P15963547996489328432

/-!
# A086980: Late occurring prime gaps in the prime gap sequence A001223.

The programs for A086980, there is no canonical definition to state claims against.
-/

/-! ## A086980.P16932658434899378463

`A086978(n+1)-A086977(n+1)`
-/

namespace A086980.P16932658434899378463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086978 (n + 1) - A086977 (n + 1)

end

end A086980.P16932658434899378463

/-! ## A086980.P5013838932416248540

`A086978(A000027(n+1))%A086977(n+1)`
-/

namespace A086980.P5013838932416248540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086978 (A000027 (n + 1)).toNat) (A086977 (n + 1))

end

end A086980.P5013838932416248540

/-! ## A086980.P1320887236451449566

`A028310(A086978(n+1)%A086977(n+1))`
-/

namespace A086980.P1320887236451449566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A086978 (n + 1)) (A086977 (n + 1))).toNat

end

end A086980.P1320887236451449566

/-! ## A086980.P8476718976708713122

`or(A086978(n+1), A188038(n+1))%A086977(n+1)`
-/

namespace A086980.P8476718976708713122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A086978 (n + 1)) (A188038 (n + 1))) (A086977 (n + 1))

end

end A086980.P8476718976708713122

/-! ## A086980.P16070052010053588508

`A086978(n+1)%A086977(A348553(n))`
-/

namespace A086980.P16070052010053588508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086978 (n + 1)) (A086977 (A348553 n).toNat)

end

end A086980.P16070052010053588508

/-!
# A086981: a(n) = smallest k where (10^k+1)=0 mod prime(n)^2, or 0 if no such k exists.

The programs for A086981, there is no canonical definition to state claims against.
-/

/-! ## A086981.P11510682731539610937

`A000040(A242420(A242420(n+1)))*A240665(n+1)`
-/

namespace A086981.P11510682731539610937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A242420 (A242420 (n + 1)).toNat).toNat * A240665 (n + 1)

end

end A086981.P11510682731539610937

/-! ## A086981.P16713969192723387986

`p?[A069799(n+1)]*A240665(n+1)`
-/

namespace A086981.P16713969192723387986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A240665 (n + 1)

end

end A086981.P16713969192723387986

/-! ## A086981.P4441526105765041746

`p?[A105119(n+1)]*A240665(n+1)`
-/

namespace A086981.P4441526105765041746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A240665 (n + 1)

end

end A086981.P4441526105765041746

/-! ## A086981.P1874493146291202781

`p?[A293448(n+1)]*A240665(n+1)`
-/

namespace A086981.P1874493146291202781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A240665 (n + 1)

end

end A086981.P1874493146291202781

/-! ## A086981.P15372183616602038546

`p?[A263650(n+1)]*A240665(n+1)`
-/

namespace A086981.P15372183616602038546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A240665 (n + 1)

end

end A086981.P15372183616602038546

/-! ## A086981.P7767331476923646788

`p?[A175500(n+1)]*A240665(n+1)`
-/

namespace A086981.P7767331476923646788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A240665 (n + 1)

end

end A086981.P7767331476923646788

/-! ## A086981.P16201911051726924615

`A006530(A073603(n+1))*A240665(n+1)`
-/

namespace A086981.P16201911051726924615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073603 (n + 1)).toNat * A240665 (n + 1)

end

end A086981.P16201911051726924615

/-! ## A086981.P3493148175553456879

`A020639(A006094(n+1))*A240665(n+1)`
-/

namespace A086981.P3493148175553456879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006094 (n + 1)).toNat * A240665 (n + 1)

end

end A086981.P3493148175553456879

/-! ## A086981.P16616357191364052030

`A069531(A137922(n+2))*A137922(n+2)`
-/

namespace A086981.P16616357191364052030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A137922 (n + 2)).toNat * A137922 (n + 2)

end

end A086981.P16616357191364052030

/-! ## A086981.P1402227806529614897

`A160656(n+1)*A240665(n+1)`
-/

namespace A086981.P1402227806529614897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (n + 1) * A240665 (n + 1)

end

end A086981.P1402227806529614897

/-!
# A086982: Numbers n such that 10^n+1 is not squarefree.

The programs for A086982, there is no canonical definition to state claims against.
-/

/-! ## A086982.P4899955908831598244

`lt[A119704(n), A057934(A028310(n))]`
-/

namespace A086982.P4899955908831598244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119704 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057934 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A086982.P4899955908831598244

/-! ## A086982.P700120557834004651

`lt[A000051(A119704(n)), A344897(n)]`
-/

namespace A086982.P700120557834004651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A119704 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A086982.P700120557834004651

/-! ## A086982.P10358410343932273557

`lt[A119704(n), A057934(A233583(n+1))]`
-/

namespace A086982.P10358410343932273557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119704 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057934 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A086982.P10358410343932273557

/-! ## A086982.P3267987828624001435

`lt[A095370(2*(n+1))-A095370(n+1), A057934(n+1)]+1`
-/

namespace A086982.P3267987828624001435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (2 * (n + 1)) - A095370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A086982.P3267987828624001435

/-! ## A086982.P17554666174952750072

`eq[1, A182581(A344897(n))]`
-/

namespace A086982.P17554666174952750072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (A344897 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086982.P17554666174952750072

/-!
# A086983: Primes of the form 2^r*p^s - 1, where p is an odd prime.

The programs for A086983, the canonical program `A086983.P17990529017750356607` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086983 has offset 1).

The definition of A086983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086983.P8068387312130103398

`p?[eq[1, A336158(A336158(n+1))]]`
-/

namespace A086983.P8068387312130103398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A336158 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A086983.P8068387312130103398

namespace A086983

/-- `p?[eq[1, A336158(A336158(n+1))]]` -/
def P8068387312130103398.Spec : Prop :=
  ∀ n, (P8068387312130103398.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P17990529017750356607

`p?[A070915(n+1)-1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A086983

/-- `p?[A070915(n+1)-1]` -/
def P17990529017750356607.Spec : Prop :=
  ∀ n, P17990529017750356607.a n = A086983 (n + 1)

theorem P17990529017750356607.correct : P17990529017750356607.Spec := by
  intro n
  simp only [A086983, Nat.add_sub_cancel]

end A086983

/-! ## A086983.P4400704086188719215

`eq[A175126(n), A340363(n+1)]`
-/

namespace A086983.P4400704086188719215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P4400704086188719215

namespace A086983

/-- `eq[A175126(n), A340363(n+1)]` -/
def P4400704086188719215.Spec : Prop :=
  ∀ n, (P4400704086188719215.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P5742415373494912715

`p?[n*A293810(A293810(n+1))]`
-/

namespace A086983.P5742415373494912715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A293810 (A293810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086983.P5742415373494912715

namespace A086983

/-- `p?[n*A293810(A293810(n+1))]` -/
def P5742415373494912715.Spec : Prop :=
  ∀ n, P5742415373494912715.a n = A086983 (n + 1)

end A086983

/-! ## A086983.P6608500260831331555

`eq[A003415(n), A062513(n+1)]`
-/

namespace A086983.P6608500260831331555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P6608500260831331555

namespace A086983

/-- `eq[A003415(n), A062513(n+1)]` -/
def P6608500260831331555.Spec : Prop :=
  ∀ n, (P6608500260831331555.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P8791071084160183889

`eq[A018783(n), A062513(n+1)]`
-/

namespace A086983.P8791071084160183889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P8791071084160183889

namespace A086983

/-- `eq[A018783(n), A062513(n+1)]` -/
def P8791071084160183889.Spec : Prop :=
  ∀ n, (P8791071084160183889.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P8775899322867698093

`eq[A032741(n), A062513(n+1)]`
-/

namespace A086983.P8775899322867698093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P8775899322867698093

namespace A086983

/-- `eq[A032741(n), A062513(n+1)]` -/
def P8775899322867698093.Spec : Prop :=
  ∀ n, (P8775899322867698093.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P16341736531908962107

`eq[A062513(n+1), A105700(n)]`
-/

namespace A086983.P16341736531908962107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P16341736531908962107

namespace A086983

/-- `eq[A062513(n+1), A105700(n)]` -/
def P16341736531908962107.Spec : Prop :=
  ∀ n, (P16341736531908962107.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P1810369686161942577

`eq[A062319(n), A158377(n+1)]`
-/

namespace A086983.P1810369686161942577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P1810369686161942577

namespace A086983

/-- `eq[A062319(n), A158377(n+1)]` -/
def P1810369686161942577.Spec : Prop :=
  ∀ n, (P1810369686161942577.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P11355418850976381656

`eq[A062513(n+1), A175126(n)]`
-/

namespace A086983.P11355418850976381656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P11355418850976381656

namespace A086983

/-- `eq[A062513(n+1), A175126(n)]` -/
def P11355418850976381656.Spec : Prop :=
  ∀ n, (P11355418850976381656.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P3669891491890551211

`eq[A003415(n), A340363(n+1)]`
-/

namespace A086983.P3669891491890551211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P3669891491890551211

namespace A086983

/-- `eq[A003415(n), A340363(n+1)]` -/
def P3669891491890551211.Spec : Prop :=
  ∀ n, (P3669891491890551211.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P4441583108879619294

`eq[A007920(n), A340362(n+1)]`
-/

namespace A086983.P4441583108879619294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P4441583108879619294

namespace A086983

/-- `eq[A007920(n), A340362(n+1)]` -/
def P4441583108879619294.Spec : Prop :=
  ∀ n, (P4441583108879619294.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P3904707148759425409

`eq[A003415(n), A345045(n+1)]`
-/

namespace A086983.P3904707148759425409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P3904707148759425409

namespace A086983

/-- `eq[A003415(n), A345045(n+1)]` -/
def P3904707148759425409.Spec : Prop :=
  ∀ n, (P3904707148759425409.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P1062674318042092460

`eq[A003415(n), A345047(n+1)]`
-/

namespace A086983.P1062674318042092460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345047 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P1062674318042092460

namespace A086983

/-- `eq[A003415(n), A345047(n+1)]` -/
def P1062674318042092460.Spec : Prop :=
  ∀ n, (P1062674318042092460.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P17135790726121619514

`eq[A018783(n), A340363(n+1)]`
-/

namespace A086983.P17135790726121619514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P17135790726121619514

namespace A086983

/-- `eq[A018783(n), A340363(n+1)]` -/
def P17135790726121619514.Spec : Prop :=
  ∀ n, (P17135790726121619514.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P13863486469483056187

`eq[A018783(n), A340365(n+1)]`
-/

namespace A086983.P13863486469483056187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340365 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P13863486469483056187

namespace A086983

/-- `eq[A018783(n), A340365(n+1)]` -/
def P13863486469483056187.Spec : Prop :=
  ∀ n, (P13863486469483056187.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P17398031083166549974

`eq[A018783(n), A345045(n+1)]`
-/

namespace A086983.P17398031083166549974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P17398031083166549974

namespace A086983

/-- `eq[A018783(n), A345045(n+1)]` -/
def P17398031083166549974.Spec : Prop :=
  ∀ n, (P17398031083166549974.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P174277705149597160

`eq[A018783(n), A345047(n+1)]`
-/

namespace A086983.P174277705149597160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345047 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P174277705149597160

namespace A086983

/-- `eq[A018783(n), A345047(n+1)]` -/
def P174277705149597160.Spec : Prop :=
  ∀ n, (P174277705149597160.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P16427061797749292137

`eq[A062513(n+1), A302055(n)]`
-/

namespace A086983.P16427061797749292137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P16427061797749292137

namespace A086983

/-- `eq[A062513(n+1), A302055(n)]` -/
def P16427061797749292137.Spec : Prop :=
  ∀ n, (P16427061797749292137.a n : ℤ) = A086983 (n + 1)

end A086983

/-! ## A086983.P10312745156138216626

`eq[A032741(n), A340363(n+1)]`
-/

namespace A086983.P10312745156138216626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086983.P10312745156138216626

namespace A086983

/-- `eq[A032741(n), A340363(n+1)]` -/
def P10312745156138216626.Spec : Prop :=
  ∀ n, (P10312745156138216626.a n : ℤ) = A086983 (n + 1)

end A086983

/-!
# A086984: Number of arrangements of n labeled balls in n labeled columns where only 1 column may have more than 1 ball.

The programs for A086984, there is no canonical definition to state claims against.
-/

/-! ## A086984.P3942468377910842702

`(n+1)!*A048493(n)`
-/

namespace A086984.P3942468377910842702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A048493 n

end

end A086984.P3942468377910842702

/-! ## A086984.P10995078132497392261

`(A001787(n+1)-n)*∏[n+1]`
-/

namespace A086984.P10995078132497392261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001787 (n + 1) - (n : ℤ)) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A086984.P10995078132497392261

/-! ## A086984.P17309590055441808908

`((n+1)*A000225(n)+1)*∏[n+1]`
-/

namespace A086984.P17309590055441808908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000225 n + 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A086984.P17309590055441808908

/-! ## A086984.P13498203155671843186

`record[A094587(n)]*A048493(n)`
-/

namespace A086984.P13498203155671843186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A048493 n

end

end A086984.P13498203155671843186

/-! ## A086984.P12244657998883551448

`record[A008615(n)!]*A048493(n)`
-/

namespace A086984.P12244657998883551448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A048493 n

end

end A086984.P12244657998883551448

/-! ## A086984.P18069493761265979787

`record[A008624(n)!]*A048493(n)`
-/

namespace A086984.P18069493761265979787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A048493 n

end

end A086984.P18069493761265979787

/-! ## A086984.P4819110893583525518

`A000407(n)-A086985(n+1)`
-/

namespace A086984.P4819110893583525518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 n - A086985 (n + 1)

end

end A086984.P4819110893583525518

/-!
# A086985: a(n) = A000407(n) - A086984(n).

The programs for A086985, there is no canonical definition to state claims against.
-/

/-! ## A086985.P3779518286310278925

`A000407(n)-A086984(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086985.P3779518286310278925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 n - A086984 (n + 1)

end

end A086985.P3779518286310278925

/-! ## A086985.P12939213020083325935

`∏[4*n+2]/2-(n+1)!*A048493(n)`
-/

namespace A086985.P12939213020083325935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 - ((Nat.factorial (n + 1) : ℤ) * A048493 n : ℚ)

end

end A086985.P12939213020083325935

/-! ## A086985.P15514456753438427971

`∏[4*n+2]/2-(A001787(n+1)-n)*∏[n+1]`
-/

namespace A086985.P15514456753438427971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 - ((A001787 (n + 1) - (n : ℤ)) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ)

end

end A086985.P15514456753438427971

/-! ## A086985.P31343941185147697

`A000108(n+1)/2*(n+2)!-A086984(n+1)`
-/

namespace A086985.P31343941185147697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / 2 * (Nat.factorial (n + 2) : ℚ) - (A086984 (n + 1) : ℚ)

end

end A086985.P31343941185147697

/-! ## A086985.P5072182670370850936

`∏[A020639(A000010(n+2))+4*n]-A086984(n+1)`
-/

namespace A086985.P5072182670370850936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A086984 (n + 1)

end

end A086985.P5072182670370850936

/-!
# A086986: Numbers j such that sigma(j) can be represented as Sum_{i=0..k} sigma(m+i), with k>0.

The programs for A086986, there is no canonical definition to state claims against.
-/

/-! ## A086986.P11734001180597807895

`lt[A175811(2*n+5), A020652(A168547(n+4))]`
-/

namespace A086986.P11734001180597807895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175811 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (A168547 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A086986.P11734001180597807895

/-! ## A086986.P2777083841154547655

`lt[A160552(A175770(2*n+5)), A112070(2*n+1)]`
-/

namespace A086986.P2777083841154547655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A175770 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112070 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A086986.P2777083841154547655

/-! ## A086986.P14180297235354743016

`∑[A036584(A004273(n^3))]`
-/

namespace A086986.P14180297235354743016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 (A004273 (n ^ 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086986.P14180297235354743016

/-! ## A086986.P6544156316709565473

`lt[A193963(n+2), or(n+1, A193955(2*n))]`
-/

namespace A086986.P6544156316709565473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A193955 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A086986.P6544156316709565473

/-! ## A086986.P11697495914519700617

`eq[A189632(n+1), A322308(n)]`
-/

namespace A086986.P11697495914519700617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322308 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086986.P11697495914519700617

/-!
# A086987: a(n) = A000203(A086986(n)).

The programs for A086987, there is no canonical definition to state claims against.
-/

/-! ## A086987.P10582842671130599711

`A000203(A086986(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086987.P10582842671130599711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A086986 (n + 1)).toNat

end

end A086987.P10582842671130599711

/-! ## A086987.P16187857990517778822

`A272027(eq[A189632(n+1), A322308(n)])/3`
-/

namespace A086987.P16187857990517778822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322308 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 3

end

end A086987.P16187857990517778822

/-! ## A086987.P13706688532088554300

`A274536(eq[A189632(n+1), A322308(n)])/6`
-/

namespace A086987.P13706688532088554300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322308 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 6

end

end A086987.P13706688532088554300

/-!
# A086988: Sum of odd indexed divisors of n.

The programs for A086988, there is no canonical definition to state claims against.
-/

/-! ## A086988.P5868085389981471924

`A000203(n+1)-A086989(n+1)`
-/

namespace A086988.P5868085389981471924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A086989 (n + 1)

end

end A086988.P5868085389981471924

/-! ## A086988.P16327406101757890908

`A086989(n+1)+A071323(n+1)`
-/

namespace A086988.P16327406101757890908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086989 (n + 1) + A071323 (n + 1)

end

end A086988.P16327406101757890908

/-! ## A086988.P11215613073209392219

`(A071323(n+1)+Δ[A160664(n)])/2`
-/

namespace A086988.P11215613073209392219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071323 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A086988.P11215613073209392219

/-! ## A086988.P17130254530083350003

`(A071323(n+1)+A000203(n+1))/2`
-/

namespace A086988.P17130254530083350003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071323 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A086988.P17130254530083350003

/-! ## A086988.P7309851800628342029

`A038572(A071323(n+1)+A000203(n+1))`
-/

namespace A086988.P7309851800628342029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A071323 (n + 1) + A000203 (n + 1)).toNat

end

end A086988.P7309851800628342029

/-! ## A086988.P2682941462030735126

`A004525(A071323(n+1)+Δ[A160664(n)])`
-/

namespace A086988.P2682941462030735126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A071323 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A086988.P2682941462030735126

/-! ## A086988.P15740828573236381695

`A004526(A071323(n+1)+Δ[A160664(n)])`
-/

namespace A086988.P15740828573236381695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A071323 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A086988.P15740828573236381695

/-! ## A086988.P7296905990144492451

`A025480(A071323(n+1)+Δ[A160664(n)])`
-/

namespace A086988.P7296905990144492451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A071323 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A086988.P7296905990144492451

/-! ## A086988.P7688114449410192007

`A004525(A071323(n+1)+A000203(n+1))`
-/

namespace A086988.P7688114449410192007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A071323 (n + 1) + A000203 (n + 1)).toNat

end

end A086988.P7688114449410192007

/-! ## A086988.P11775607125214198221

`A004526(A071323(n+1)+A000203(n+1))`
-/

namespace A086988.P11775607125214198221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A071323 (n + 1) + A000203 (n + 1)).toNat

end

end A086988.P11775607125214198221

/-! ## A086988.P17189835904485140240

`A025480(A071323(n+1)+A000203(n+1))`
-/

namespace A086988.P17189835904485140240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A071323 (n + 1) + A000203 (n + 1)).toNat

end

end A086988.P17189835904485140240

/-! ## A086988.P15079285505546480534

`A026741(A071323(n+1)+A000203(n+1))`
-/

namespace A086988.P15079285505546480534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A071323 (n + 1) + A000203 (n + 1)).toNat

end

end A086988.P15079285505546480534

/-!
# A086989: Sum of even-indexed divisors of n.

The programs for A086989, there is no canonical definition to state claims against.
-/

/-! ## A086989.P5453387174744885842

`∑{d}[n+1, #]-A086988(n+1)`
-/

namespace A086989.P5453387174744885842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A086988 (n + 1)

end

end A086989.P5453387174744885842

/-! ## A086989.P17133369856107718069

`Δ[A160664(n)]-A086988(n+1)`
-/

namespace A086989.P17133369856107718069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A086988 (n + 1)

end

end A086989.P17133369856107718069

/-! ## A086989.P7426812810560139585

`A000203(n+1)-A086988(n+1)`
-/

namespace A086989.P7426812810560139585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A086988 (n + 1)

end

end A086989.P7426812810560139585

/-! ## A086989.P5633039554984650852

`A086988(n+1)-A071323(n+1)`
-/

namespace A086989.P5633039554984650852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086988 (n + 1) - A071323 (n + 1)

end

end A086989.P5633039554984650852

/-! ## A086989.P16678745801479434868

`(A000203(n+1)-A071323(n+1))/2`
-/

namespace A086989.P16678745801479434868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A071323 (n + 1) : ℚ) / 2

end

end A086989.P16678745801479434868

/-! ## A086989.P7766974644398612346

`A004525(Δ[A160664(n)]-A071323(n+1))`
-/

namespace A086989.P7766974644398612346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n - A071323 (n + 1)).toNat

end

end A086989.P7766974644398612346

/-! ## A086989.P3711625650135901455

`A004526(Δ[A160664(n)]-A071323(n+1))`
-/

namespace A086989.P3711625650135901455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n - A071323 (n + 1)).toNat

end

end A086989.P3711625650135901455

/-! ## A086989.P17322071561928800690

`A025480(Δ[A160664(n)]-A071323(n+1))`
-/

namespace A086989.P17322071561928800690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n - A071323 (n + 1)).toNat

end

end A086989.P17322071561928800690

/-! ## A086989.P9299339668440662408

`A004525(A000203(n+1)-A071323(n+1))`
-/

namespace A086989.P9299339668440662408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000203 (n + 1) - A071323 (n + 1)).toNat

end

end A086989.P9299339668440662408

/-!
# A086991: Numbers of claw-free simple graphs (not necessarily connected) on n nodes.

The programs for A086991, there is no canonical definition to state claims against.
-/

/-! ## A086991.P4374967857213812862

`A080907(A279561(n))+n`
-/

namespace A086991.P4374967857213812862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A279561 n).toNat + (n : ℤ)

end

end A086991.P4374967857213812862

/-! ## A086991.P16745652529235462006

`A255938(A229811(n+1)+round(∑{e}[n+1, #+n]/(n+1)))`
-/

namespace A086991.P16745652529235462006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 (A229811 (n + 1) + SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + n) : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A086991.P16745652529235462006

/-! ## A086991.P13902345025833096621

`A023193(A305206(n)+A003480(n))`
-/

namespace A086991.P13902345025833096621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A305206 n + A003480 n).toNat

end

end A086991.P13902345025833096621

/-!
# A086992: Product of nonzero digits in n-th row of Pascal's triangle.

The programs for A086992, there is no canonical definition to state claims against.
-/

/-! ## A086992.P17081527044727858079

`∏{digits}[A003590(n), A028310(#)]`
-/

namespace A086992.P17081527044727858079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A086992.P17081527044727858079

/-! ## A086992.P2892824170715287308

`∏{digits}[A003590(n), A051801(#)]`
-/

namespace A086992.P2892824170715287308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A051801 x).prod

end

end A086992.P2892824170715287308

/-! ## A086992.P11028967112079117125

`∏{digits}[A003590(n), A219209(#)]`
-/

namespace A086992.P11028967112079117125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A219209 x).prod

end

end A086992.P11028967112079117125

/-! ## A086992.P12615159524158678462

`∏{digits}[A092846(n), A028310(#)]`
-/

namespace A086992.P12615159524158678462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A086992.P12615159524158678462

/-! ## A086992.P4970661513494468975

`∏{digits}[A092846(n), A051801(#)]`
-/

namespace A086992.P4970661513494468975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A051801 x).prod

end

end A086992.P4970661513494468975

/-!
# A086994: Decimal expansion of Pi written in base 2.

The programs for A086994, there is no canonical definition to state claims against.
-/

/-! ## A086994.P8071999918975326276

`A007088(xor(n, xor(n, A000796(n))))`
-/

namespace A086994.P8071999918975326276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A000796 (n + 1)))).toNat

end

end A086994.P8071999918975326276

/-! ## A086994.P9366240153076469012

`A007088(A000796(n+1)-Δ[A000796(n)])`
-/

namespace A086994.P9366240153076469012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000796 (n + 1 + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A086994.P9366240153076469012

/-! ## A086994.P14053621170963198247

`A007088(A123153(n+1)/A000040(n+1))`
-/

namespace A086994.P14053621170963198247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A123153 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A086994.P14053621170963198247

/-! ## A086994.P7642079536122400429

`A007088(Δ[A059582(n)])`
-/

namespace A086994.P7642079536122400429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n).toNat

end

end A086994.P7642079536122400429

/-! ## A086994.P5386522899430019026

`A007088(A059582(n+1)-A059582(n))`
-/

namespace A086994.P5386522899430019026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A059582 (n + 1) - A059582 n).toNat

end

end A086994.P5386522899430019026

/-!
# A086995: Number of 1's in binary representation of n-th decimal digit in expansion of Pi.

The programs for A086995, there is no canonical definition to state claims against.
-/

/-! ## A086995.P1406277741659609734

`dr(A086994(n))`
-/

namespace A086995.P1406277741659609734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086994 (n + 1))

end

end A086995.P1406277741659609734

/-! ## A086995.P11225923585774626228

`A086342(A072448(n+1))`
-/

namespace A086995.P11225923585774626228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A072448 (n + 1)).toNat

end

end A086995.P11225923585774626228

/-! ## A086995.P1544091607555321860

`A086342(A261197(n+1))`
-/

namespace A086995.P1544091607555321860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A261197 (n + 1)).toNat

end

end A086995.P1544091607555321860

/-! ## A086995.P12172746303062428700

`∑{digits}[A086994(n), A000035(#)]`
-/

namespace A086995.P12172746303062428700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A086995.P12172746303062428700

/-! ## A086995.P5200309425498335352

`∑{digits}[A086994(n), A000045(#)]`
-/

namespace A086995.P5200309425498335352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A086995.P5200309425498335352

/-! ## A086995.P11590754925626893875

`∑{digits}[A086994(n), A000217(#)]`
-/

namespace A086995.P11590754925626893875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000217 x).sum

end

end A086995.P11590754925626893875

/-! ## A086995.P5063441846163201240

`∑{digits}[A086994(n), A003987(#)]`
-/

namespace A086995.P5063441846163201240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003987 x).sum

end

end A086995.P5063441846163201240

/-! ## A086995.P12972169283163903699

`∑{digits}[A086994(n), A004525(#)]`
-/

namespace A086995.P12972169283163903699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004525 x).sum

end

end A086995.P12972169283163903699

/-! ## A086995.P8684194187929527506

`∑{digits}[A086994(n), A005187(#)]`
-/

namespace A086995.P8684194187929527506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005187 x).sum

end

end A086995.P8684194187929527506

/-! ## A086995.P15570125993666683788

`∑{digits}[A086994(n), A005811(#)]`
-/

namespace A086995.P15570125993666683788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005811 x).sum

end

end A086995.P15570125993666683788

/-! ## A086995.P8878974128459731518

`∑{digits}[A086994(n), A010060(#)]`
-/

namespace A086995.P8878974128459731518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010060 x).sum

end

end A086995.P8878974128459731518

/-! ## A086995.P9887203278345921752

`∑{digits}[A086994(n), A051868(#)]`
-/

namespace A086995.P9887203278345921752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A051868 x).sum

end

end A086995.P9887203278345921752

/-! ## A086995.P8163645728710920157

`∑{digits}[A086994(n), A091435(#)]`
-/

namespace A086995.P8163645728710920157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A091435 x).sum

end

end A086995.P8163645728710920157

/-! ## A086995.P8898068669555155200

`A171558(∑{digits}[A086994(n), #])`
-/

namespace A086995.P8898068669555155200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171558 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A086995.P8898068669555155200

/-! ## A086995.P15295829503963797357

`A001222(∏{digits}[A086994(n), #+1])`
-/

namespace A086995.P15295829503963797357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A086995.P15295829503963797357

/-! ## A086995.P6038248649753583530

`A001222(2^∑{digits}[A086994(n), #])`
-/

namespace A086995.P6038248649753583530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A086995.P6038248649753583530

/-! ## A086995.P10946430216311884950

`A000120(A046974(n)+1-A059582(n))`
-/

namespace A086995.P10946430216311884950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A046974 n + (1 - A059582 n)).toNat

end

end A086995.P10946430216311884950

/-! ## A086995.P1332755208922000123

`A000120(1-(A059582(n)-A046974(n)))`
-/

namespace A086995.P1332755208922000123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (1 - (A059582 n - A046974 n)).toNat

end

end A086995.P1332755208922000123

/-! ## A086995.P11677024485115942950

`A000120(Δ[A059582(n)])`
-/

namespace A086995.P11677024485115942950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A086995.P11677024485115942950

/-! ## A086995.P10398788317804130695

`A086342(Δ[A059582(n)])`
-/

namespace A086995.P10398788317804130695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (f1 (n + 1) - f1 n).toNat

end

end A086995.P10398788317804130695

/-!
# A086996: Decimal expansion of e (A001113) written in base 2.

The programs for A086996, there is no canonical definition to state claims against.
-/

/-! ## A086996.P5521270165901378551

`A007088(A073212(n)-A000796(n))`
-/

namespace A086996.P5521270165901378551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A073212 n - A000796 (n + 1)).toNat

end

end A086996.P5521270165901378551

/-! ## A086996.P6753472437601995867

`A007088(A000796(n)-A187747(n))`
-/

namespace A086996.P6753472437601995867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000796 (n + 1) - A187747 n).toNat

end

end A086996.P6753472437601995867

/-! ## A086996.P9341755609799984426

`A007088(A123152(n+1)-(A187747(n)+1))`
-/

namespace A086996.P9341755609799984426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A123152 (n + 1) - (A187747 n + 1)).toNat

end

end A086996.P9341755609799984426

/-! ## A086996.P3752032380950900122

`A007088(A007318(C(2, n))*A001355(2*(n+1)))`
-/

namespace A086996.P3752032380950900122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A007318 (Nat.choose 2 n) * A001355 (2 * (n + 1))).toNat

end

end A086996.P3752032380950900122

/-! ## A086996.P5922589922745324633

`A007088(A014963(A008458(n))*A001113(n))`
-/

namespace A086996.P5922589922745324633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A014963 (A008458 n).toNat * A001113 (n + 1)).toNat

end

end A086996.P5922589922745324633

/-! ## A086996.P2181919640052348305

`A007088(A001113(n)^A014963(A008458(n)))`
-/

namespace A086996.P2181919640052348305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A001113 (n + 1) : ℚ) ^ (A014963 (A008458 n).toNat : ℤ))).toNat

end

end A086996.P2181919640052348305

/-! ## A086996.P10090003639369971222

`A007088(sqrt(A248558(n+1)))`
-/

namespace A086996.P10090003639369971222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (Real.sqrt (A248558 (n + 1) : ℝ))).toNat

end

end A086996.P10090003639369971222

/-!
# A086997: Number of 1's in binary representation of n-th decimal digit in expansion of e.

The programs for A086997, there is no canonical definition to state claims against.
-/

/-! ## A086997.P2221689106645656803

`dr(A086996(n))`
-/

namespace A086997.P2221689106645656803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086996 (n + 1))

end

end A086997.P2221689106645656803

/-! ## A086997.P13849653325671235225

`A000120(A000796(n)-A187747(n))`
-/

namespace A086997.P13849653325671235225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000796 (n + 1) - A187747 n).toNat

end

end A086997.P13849653325671235225

/-! ## A086997.P11814279068712793912

`A000120(A001113(n)*A117592(n))`
-/

namespace A086997.P11814279068712793912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) * A117592 n).toNat

end

end A086997.P11814279068712793912

/-! ## A086997.P5123301092652019591

`A000120(A001113(n)*A060594(n+1))`
-/

namespace A086997.P5123301092652019591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) * A060594 (n + 1)).toNat

end

end A086997.P5123301092652019591

/-! ## A086997.P8894767335718683411

`A000120(A001113(n)*A068068(n+1))`
-/

namespace A086997.P8894767335718683411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) * A068068 (n + 1)).toNat

end

end A086997.P8894767335718683411

/-! ## A086997.P2554518217952675181

`A000120(A001113(n)-val(A000040(n+1), 2))`
-/

namespace A086997.P2554518217952675181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)).toNat

end

end A086997.P2554518217952675181

/-! ## A086997.P6138424277249234748

`A000120(A001113(n)*A006519(n+2))`
-/

namespace A086997.P6138424277249234748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) * A006519 (n + 2)).toNat

end

end A086997.P6138424277249234748

/-! ## A086997.P10143651827994317432

`A000120(A001113(n)*A048896(n))`
-/

namespace A086997.P10143651827994317432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) * A048896 n).toNat

end

end A086997.P10143651827994317432

/-! ## A086997.P14497242423709320608

`A000120(A001113(n)*A060632(n))`
-/

namespace A086997.P14497242423709320608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) * A060632 n).toNat

end

end A086997.P14497242423709320608

/-! ## A086997.P17492671687005304761

`A000120(A001113(n)/2*A001316(n))`
-/

namespace A086997.P17492671687005304761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A001113 (n + 1) : ℚ) / 2 * (A001316 n : ℚ))).toNat

end

end A086997.P17492671687005304761

/-! ## A086997.P380708299649351869

`A000120(lcm(A001113(n), A001316(n)))`
-/

namespace A086997.P380708299649351869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A001113 (n + 1)) (A001316 n))

end

end A086997.P380708299649351869

/-! ## A086997.P15295448806888843637

`A000120(A001113(n)*A001316(n))`
-/

namespace A086997.P15295448806888843637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) * A001316 n).toNat

end

end A086997.P15295448806888843637

/-! ## A086997.P819187145756360113

`A000120(A001113(n)*A062383(n))`
-/

namespace A086997.P819187145756360113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) * A062383 n).toNat

end

end A086997.P819187145756360113

/-! ## A086997.P11437038247406099486

`A000120(A001113(n)*A164281(n))`
-/

namespace A086997.P11437038247406099486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) * A164281 n).toNat

end

end A086997.P11437038247406099486

/-! ## A086997.P16648168901938884829

`A086342(A014963(∑[n+1])*A001113(n))`
-/

namespace A086997.P16648168901938884829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A001113 (n + 1)).toNat

end

end A086997.P16648168901938884829

/-! ## A086997.P8726994642066571588

`A000120(A001113(n)*A102376(n+1))`
-/

namespace A086997.P8726994642066571588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001113 (n + 1) * A102376 (n + 1)).toNat

end

end A086997.P8726994642066571588

