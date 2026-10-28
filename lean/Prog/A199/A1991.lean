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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A199100: Number of nX7 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199100, there is no canonical definition to state claims against.
-/

/-! ## A199100.P4517905961655081994

`A199101(A374008(n+1))`
-/

namespace A199100.P4517905961655081994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (A374008 (n + 1)).toNat

end

end A199100.P4517905961655081994

/-!
# A199102: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} C(n,k)*A(x^(n+k)) ).

The programs for A199102, there is no canonical definition to state claims against.
-/

/-! ## A199102.P9907889092752730984

`A112689(∑[A111566(n)+A008805(n)])`
-/

namespace A199102.P9907889092752730984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n + A008805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199102.P9907889092752730984

/-! ## A199102.P430940533064303424

`A033270(A117545(n+2)+A083330(n))`
-/

namespace A199102.P430940533064303424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A117545 (n + 2) + A083330 n).toNat

end

end A199102.P430940533064303424

/-! ## A199102.P17970177152364058916

`A033270(A083330(n)+2-A033270(n+1))`
-/

namespace A199102.P17970177152364058916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A083330 n + (2 - A033270 (n + 1))).toNat

end

end A199102.P17970177152364058916

/-!
# A199103: G.f. satisfies: A(x) = exp( Sum_{n>=1} (1+x)^n * A(x^n) * x^n/n ).

The programs for A199103, there is no canonical definition to state claims against.
-/

/-! ## A199103.P4721890789534546883

`A054404(3*ceil(∑[3^(n-1)/2]))`
-/

namespace A199103.P4721890789534546883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (3 * ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉).toNat

end

end A199103.P4721890789534546883

/-! ## A199103.P11677384315151272048

`floor(sqrt(A007093((n+1)/(2*n+1)*C(3*n, n))))`
-/

namespace A199103.P11677384315151272048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 * n + 1 : ℚ) * (Nat.choose (3 * n) n : ℚ))).toNat)

end

end A199103.P11677384315151272048

/-! ## A199103.P10284168670023572406

`A247357(A114465(n))`
-/

namespace A199103.P10284168670023572406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247357 (A114465 n).toNat

end

end A199103.P10284168670023572406

/-!
# A199104: G.f. satisfies: A(x) = exp( Sum_{n>=1} A(x^n)/(1-x)^n * x^n/n ).

The programs for A199104, there is no canonical definition to state claims against.
-/

/-! ## A199104.P989179876799183840

`A001462(A366176(n))`
-/

namespace A199104.P989179876799183840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A366176 n).toNat

end

end A199104.P989179876799183840

/-! ## A199104.P16555627280588774522

`A081753(A223006(n+2))`
-/

namespace A199104.P16555627280588774522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A223006 (n + 2)).toNat

end

end A199104.P16555627280588774522

/-!
# A199105: Numbers k such that lambda(k) < A011773(k) < phi(k), where lambda is the Carmichael reduced totient function and phi the Euler totient function.

The programs for A199105, there is no canonical definition to state claims against.
-/

/-! ## A199105.P6851663018832216060

`8*eq[1, A025924(3*n+1)]`
-/

namespace A199105.P6851663018832216060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199105.P6851663018832216060

/-! ## A199105.P13954154372846575898

`∑[4*A000005(9*n!+11)]`
-/

namespace A199105.P13954154372846575898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (9 * Nat.factorial n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199105.P13954154372846575898

/-!
# A199106: a(n) = 4*12^n - 1.

The programs for A199106, the canonical program `A199106.P7137659470193310895` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199106 has offset 0).

The definition of A199106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*12^n-1` (program `A199106.P7137659470193310895`, by `A199106.P7137659470193310895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199106.P7137659470193310895

`4*12^n-1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199106

/-- `4*12^n-1` -/
def P7137659470193310895.Spec : Prop :=
  ∀ n, P7137659470193310895.a n = A199106 n

theorem P7137659470193310895.correct : P7137659470193310895.Spec := by
  intro n
  simp only [A199106]

end A199106

/-! ## A199106.P5009105073925585396

`ogf((3+8x)/(1-13x+12x^2))`
-/

namespace A199106.P5009105073925585396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8] [1, -13, 12] n

end

end A199106.P5009105073925585396

namespace A199106

/-- `ogf((3+8x)/(1-13x+12x^2))` -/
def P5009105073925585396.Spec : Prop :=
  ∀ n, P5009105073925585396.a n = A199106 n

end A199106

/-! ## A199106.P1419901705760164319

`or(11, 12*a(n-1))` with `a(0)=3`
-/

namespace A199106.P1419901705760164319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 11 (12 * a (n - 1))

end

end A199106.P1419901705760164319

namespace A199106

/-- `or(11, 12*a(n-1))` -/
def P1419901705760164319.Spec : Prop :=
  ∀ n, (P1419901705760164319.a n : ℤ) = A199106 n

end A199106

/-! ## A199106.P17073398107964350077

`xor(11, 12*a(n-1))` with `a(0)=3`
-/

namespace A199106.P17073398107964350077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 11 (12 * a (n - 1))

end

end A199106.P17073398107964350077

namespace A199106

/-- `xor(11, 12*a(n-1))` -/
def P17073398107964350077.Spec : Prop :=
  ∀ n, (P17073398107964350077.a n : ℤ) = A199106 n

end A199106

/-! ## A199106.P3105640722400023262

`∑[12*a(n-1)]` with `a(0)=3, a(1)=44`
-/

namespace A199106.P3105640722400023262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 44] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199106.P3105640722400023262

namespace A199106

/-- `∑[12*a(n-1)]` -/
def P3105640722400023262.Spec : Prop :=
  ∀ n, (P3105640722400023262.a n : ℤ) = A199106 n

end A199106

/-! ## A199106.P4186596948465048920

`or(1, 2*A199031(n))`
-/

namespace A199106.P4186596948465048920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A199031 n)

end

end A199106.P4186596948465048920

namespace A199106

/-- `or(1, 2*A199031(n))` -/
def P4186596948465048920.Spec : Prop :=
  ∀ n, P4186596948465048920.a n = A199106 n

end A199106

/-! ## A199106.P9475383161337265990

`record[Δ[A282023(n*and(1, n))]]`
-/

namespace A199106.P9475383161337265990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282023 (n * Nat.land 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199106.P9475383161337265990

namespace A199106

/-- `record[Δ[A282023(n*and(1, n))]]` -/
def P9475383161337265990.Spec : Prop :=
  ∀ n, P9475383161337265990.a n = A199106 n

end A199106

/-! ## A199106.P4970648158999034846

`abs(1-A282023(2*n+1))`
-/

namespace A199106.P4970648158999034846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A282023 (2 * n + 1)|

end

end A199106.P4970648158999034846

namespace A199106

/-- `abs(1-A282023(2*n+1))` -/
def P4970648158999034846.Spec : Prop :=
  ∀ n, P4970648158999034846.a n = A199106 n

end A199106

/-!
# A199107: a(n) = 5*12^n - 1.

The programs for A199107, the canonical program `A199107.P1233943977852573305` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199107 has offset 0).

The definition of A199107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*12^n-1` (program `A199107.P1233943977852573305`, by `A199107.P1233943977852573305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199107.P1233943977852573305

`5*12^n-1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199107

/-- `5*12^n-1` -/
def P1233943977852573305.Spec : Prop :=
  ∀ n, P1233943977852573305.a n = A199107 n

theorem P1233943977852573305.correct : P1233943977852573305.Spec := by
  intro n
  simp only [A199107]

end A199107

/-! ## A199107.P14553373312034715478

`ogf((4+7x)/(1-13x+12x^2))`
-/

namespace A199107.P14553373312034715478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7] [1, -13, 12] n

end

end A199107.P14553373312034715478

namespace A199107

/-- `ogf((4+7x)/(1-13x+12x^2))` -/
def P14553373312034715478.Spec : Prop :=
  ∀ n, P14553373312034715478.a n = A199107 n

end A199107

/-! ## A199107.P3084175877369226400

`or(11, 12*a(n-1))` with `a(0)=4`
-/

namespace A199107.P3084175877369226400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 11 (12 * a (n - 1))

end

end A199107.P3084175877369226400

namespace A199107

/-- `or(11, 12*a(n-1))` -/
def P3084175877369226400.Spec : Prop :=
  ∀ n, (P3084175877369226400.a n : ℤ) = A199107 n

end A199107

/-! ## A199107.P10552807903753204158

`xor(11, 12*a(n-1))` with `a(0)=4`
-/

namespace A199107.P10552807903753204158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor 11 (12 * a (n - 1))

end

end A199107.P10552807903753204158

namespace A199107

/-- `xor(11, 12*a(n-1))` -/
def P10552807903753204158.Spec : Prop :=
  ∀ n, (P10552807903753204158.a n : ℤ) = A199107 n

end A199107

/-! ## A199107.P3573251663844882245

`abs(12*(a(n-1)+1)-1)` with `a(0)=4`
-/

namespace A199107.P3573251663844882245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |12 * (a (n - 1) + 1) - 1|

end

end A199107.P3573251663844882245

namespace A199107

/-- `abs(12*(a(n-1)+1)-1)` -/
def P3573251663844882245.Spec : Prop :=
  ∀ n, P3573251663844882245.a n = A199107 n

end A199107

/-! ## A199107.P7435938224279852975

`Δ[A173535(n)-n]`
-/

namespace A199107.P7435938224279852975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173535 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199107.P7435938224279852975

namespace A199107

/-- `Δ[A173535(n)-n]` -/
def P7435938224279852975.Spec : Prop :=
  ∀ n, P7435938224279852975.a n = A199107 n

end A199107

/-! ## A199107.P6360877165345401128

`Δ[∑[A011782(n)*A052934(n)]-n]`
-/

namespace A199107.P6360877165345401128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A052934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199107.P6360877165345401128

namespace A199107

/-- `Δ[∑[A011782(n)*A052934(n)]-n]` -/
def P6360877165345401128.Spec : Prop :=
  ∀ n, P6360877165345401128.a n = A199107 n

end A199107

/-!
# A199108: a(n) = 4*3^n + 1.

The programs for A199108, the canonical program `A199108.P18019774811813591843` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199108 has offset 0).

The definition of A199108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*3^n+1` (program `A199108.P18019774811813591843`, by `A199108.P18019774811813591843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199108.P18019774811813591843

`4*3^n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199108

/-- `4*3^n+1` -/
def P18019774811813591843.Spec : Prop :=
  ∀ n, (P18019774811813591843.a n : ℤ) = A199108 n

theorem P18019774811813591843.correct : P18019774811813591843.Spec := by
  intro n
  simp only [A199108]

end A199108

/-! ## A199108.P4801861257465488082

`ogf((5-7x)/(1-4x+3x^2))`
-/

namespace A199108.P4801861257465488082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -7] [1, -4, 3] n

end

end A199108.P4801861257465488082

namespace A199108

/-- `ogf((5-7x)/(1-4x+3x^2))` -/
def P4801861257465488082.Spec : Prop :=
  ∀ n, P4801861257465488082.a n = A199108 n

end A199108

/-! ## A199108.P9142312747509962271

`or(1, 4*3^n)`
-/

namespace A199108.P9142312747509962271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * 3 ^ n)

end

end A199108.P9142312747509962271

namespace A199108

/-- `or(1, 4*3^n)` -/
def P9142312747509962271.Spec : Prop :=
  ∀ n, (P9142312747509962271.a n : ℤ) = A199108 n

end A199108

/-! ## A199108.P11712408561644054111

`xor(1, 4*3^n)`
-/

namespace A199108.P11712408561644054111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * 3 ^ n)

end

end A199108.P11712408561644054111

namespace A199108

/-- `xor(1, 4*3^n)` -/
def P11712408561644054111.Spec : Prop :=
  ∀ n, (P11712408561644054111.a n : ℤ) = A199108 n

end A199108

/-! ## A199108.P8234888124854698398

`∑[3*a(n-1)]` with `a(0)=5, a(1)=8`
-/

namespace A199108.P8234888124854698398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199108.P8234888124854698398

namespace A199108

/-- `∑[3*a(n-1)]` -/
def P8234888124854698398.Spec : Prop :=
  ∀ n, (P8234888124854698398.a n : ℤ) = A199108 n

end A199108

/-! ## A199108.P6400926902322004308

`abs(2-3*a(n-1))` with `a(0)=5`
-/

namespace A199108.P6400926902322004308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |2 - 3 * a (n - 1)|

end

end A199108.P6400926902322004308

namespace A199108

/-- `abs(2-3*a(n-1))` -/
def P6400926902322004308.Spec : Prop :=
  ∀ n, P6400926902322004308.a n = A199108 n

end A199108

/-! ## A199108.P9763562331912113051

`and(3*a(n-1), -3)` with `a(0)=5`
-/

namespace A199108.P9763562331912113051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.land (3 * a (n - 1)) (-3)

end

end A199108.P9763562331912113051

namespace A199108

/-- `and(3*a(n-1), -3)` -/
def P9763562331912113051.Spec : Prop :=
  ∀ n, P9763562331912113051.a n = A199108 n

end A199108

/-! ## A199108.P6075446748657650193

`floor(3*a(n-1)-ϕ)` with `a(0)=5`
-/

namespace A199108.P6075446748657650193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(3 * a (n - 1) : ℝ) - Real.goldenRatio⌋

end

end A199108.P6075446748657650193

namespace A199108

/-- `floor(3*a(n-1)-ϕ)` -/
def P6075446748657650193.Spec : Prop :=
  ∀ n, P6075446748657650193.a n = A199108 n

end A199108

/-! ## A199108.P5523867081850704287

`record[3*a(n-2)-2]` with `a(0)=5, a(1)=0`
-/

namespace A199108.P5523867081850704287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  3 * f1 (n - 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199108.P5523867081850704287

namespace A199108

/-- `record[3*a(n-2)-2]` -/
def P5523867081850704287.Spec : Prop :=
  ∀ n, P5523867081850704287.a n = A199108 n

end A199108

/-! ## A199108.P7004409825826756868

`-or(2, -(3*a(n-1)))` with `a(0)=5`
-/

namespace A199108.P7004409825826756868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  -Int.lor 2 (-(3 * a (n - 1)))

end

end A199108.P7004409825826756868

namespace A199108

/-- `-or(2, -(3*a(n-1)))` -/
def P7004409825826756868.Spec : Prop :=
  ∀ n, P7004409825826756868.a n = A199108 n

end A199108

/-! ## A199108.P7628672718118228302

`-xor(2, -(3*a(n-1)))` with `a(0)=5`
-/

namespace A199108.P7628672718118228302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  -Int.xor 2 (-(3 * a (n - 1)))

end

end A199108.P7628672718118228302

namespace A199108

/-- `-xor(2, -(3*a(n-1)))` -/
def P7628672718118228302.Spec : Prop :=
  ∀ n, P7628672718118228302.a n = A199108 n

end A199108

/-! ## A199108.P7691872618137932191

`-ceil(ϕ-3*a(n-1))` with `a(0)=5`
-/

namespace A199108.P7691872618137932191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  -⌈Real.goldenRatio - (3 * a (n - 1) : ℝ)⌉

end

end A199108.P7691872618137932191

namespace A199108

/-- `-ceil(ϕ-3*a(n-1))` -/
def P7691872618137932191.Spec : Prop :=
  ∀ n, P7691872618137932191.a n = A199108 n

end A199108

/-! ## A199108.P16423951458612838438

`2*(3/2*a(n-1)-1)` with `a(0)=5`
-/

namespace A199108.P16423951458612838438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  2 * ((3 : ℚ) / 2 * a (n - 1) - 1)

end

end A199108.P16423951458612838438

namespace A199108

/-- `2*(3/2*a(n-1)-1)` -/
def P16423951458612838438.Spec : Prop :=
  ∀ n, P16423951458612838438.a n = (A199108 n : ℚ)

theorem P16423951458612838438.correct : P16423951458612838438.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199108, Nat.add_sub_cancel, A199108.P16423951458612838438.a, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199108, Nat.add_sub_cancel, A199108.P16423951458612838438.a, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199108

/-! ## A199108.P7771543672327802860

`floor(a(n-1)+2*(a(n-1)-1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199108.P7771543672327802860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 2 * (a (n - 1) - 1)

end

end A199108.P7771543672327802860

namespace A199108

/-- `floor(a(n-1)+2*(a(n-1)-1))` -/
def P7771543672327802860.Spec : Prop :=
  ∀ n, P7771543672327802860.a n = A199108 n

theorem P7771543672327802860.correct : P7771543672327802860.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199108, Nat.add_sub_cancel, A199108.P7771543672327802860.a, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199108, Nat.add_sub_cancel, A199108.P7771543672327802860.a, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199108

/-! ## A199108.P10837054836833568738

`floor(a(n-1)-2*(1-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199108.P10837054836833568738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - 2 * (1 - a (n - 1))

end

end A199108.P10837054836833568738

namespace A199108

/-- `floor(a(n-1)-2*(1-a(n-1)))` -/
def P10837054836833568738.Spec : Prop :=
  ∀ n, P10837054836833568738.a n = A199108 n

theorem P10837054836833568738.correct : P10837054836833568738.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199108, Nat.add_sub_cancel, A199108.P10837054836833568738.a, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199108, Nat.add_sub_cancel, A199108.P10837054836833568738.a, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199108

/-! ## A199108.P1264037989478136948

`∑[a(n-1)+a(n-1)+a(n-1)]` with `a(0)=5, a(1)=8`
-/

namespace A199108.P1264037989478136948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199108.P1264037989478136948

namespace A199108

/-- `∑[a(n-1)+a(n-1)+a(n-1)]` -/
def P1264037989478136948.Spec : Prop :=
  ∀ n, (P1264037989478136948.a n : ℤ) = A199108 n

end A199108

/-! ## A199108.P14111221750757337063

`floor(a(n-1)+a(n-1)+a(n-1)-2)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199108.P14111221750757337063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - 2))

end

end A199108.P14111221750757337063

namespace A199108

/-- `floor(a(n-1)+a(n-1)+a(n-1)-2)` -/
def P14111221750757337063.Spec : Prop :=
  ∀ n, P14111221750757337063.a n = A199108 n

theorem P14111221750757337063.correct : P14111221750757337063.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199108, Nat.add_sub_cancel, A199108.P14111221750757337063.a, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199108, Nat.add_sub_cancel, A199108.P14111221750757337063.a, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199108

/-! ## A199108.P17588116706399491937

`floor(a(n-1)-(2-a(n-1)-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199108.P17588116706399491937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (2 - a (n - 1) - a (n - 1))

end

end A199108.P17588116706399491937

namespace A199108

/-- `floor(a(n-1)-(2-a(n-1)-a(n-1)))` -/
def P17588116706399491937.Spec : Prop :=
  ∀ n, P17588116706399491937.a n = A199108 n

theorem P17588116706399491937.correct : P17588116706399491937.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199108, Nat.add_sub_cancel, A199108.P17588116706399491937.a, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199108, Nat.add_sub_cancel, A199108.P17588116706399491937.a, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199108

/-! ## A199108.P4493950632744985092

`record[A162766(n+1)+1]`
-/

namespace A199108.P4493950632744985092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162766 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199108.P4493950632744985092

namespace A199108

/-- `record[A162766(n+1)+1]` -/
def P4493950632744985092.Spec : Prop :=
  ∀ n, P4493950632744985092.a n = A199108 n

end A199108

/-! ## A199108.P12568741410573596485

`record[A166552(n+2)+1]`
-/

namespace A199108.P12568741410573596485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199108.P12568741410573596485

namespace A199108

/-- `record[A166552(n+2)+1]` -/
def P12568741410573596485.Spec : Prop :=
  ∀ n, P12568741410573596485.a n = A199108 n

end A199108

/-!
# A199109: a(n) = (7*3^n + 1)/2.

The programs for A199109, the canonical program `A199109.P6137584353103682020` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199109 has offset 0).

The definition of A199109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*3^n+1)/2` (program `A199109.P1380724493336933800`, by `A199109.P1380724493336933800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199109.P7131107077943282478

`ogf((4-5x)/(1-4x+3x^2))`
-/

namespace A199109.P7131107077943282478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5] [1, -4, 3] n

end

end A199109.P7131107077943282478

namespace A199109

/-- `ogf((4-5x)/(1-4x+3x^2))` -/
def P7131107077943282478.Spec : Prop :=
  ∀ n, P7131107077943282478.a n = A199109 n

end A199109

/-! ## A199109.P6137584353103682020

`3*a(n-1)-1` with `a(0)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199109

/-- `3*a(n-1)-1` -/
def P6137584353103682020.Spec : Prop :=
  ∀ n, P6137584353103682020.a n = A199109 n

theorem P6137584353103682020.correct : P6137584353103682020.Spec := by
  intro n
  simp only [A199109]

end A199109

/-! ## A199109.P10742991251689156809

`A237930(n)+1`
-/

namespace A199109.P10742991251689156809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237930 n + 1

end

end A199109.P10742991251689156809

namespace A199109

/-- `A237930(n)+1` -/
def P10742991251689156809.Spec : Prop :=
  ∀ n, P10742991251689156809.a n = A199109 n

end A199109

/-! ## A199109.P11924690050632449983

`A000244(n+1)+A003462(n)+1`
-/

namespace A199109.P11924690050632449983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) + A003462 n + 1

end

end A199109.P11924690050632449983

namespace A199109

/-- `A000244(n+1)+A003462(n)+1` -/
def P11924690050632449983.Spec : Prop :=
  ∀ n, P11924690050632449983.a n = A199109 n

end A199109

/-! ## A199109.P1380724493336933800

`(7*3^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199109.P1380724493336933800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * 3 ^ n + 1 : ℚ) / 2

end

end A199109.P1380724493336933800

namespace A199109

/-- `(7*3^n+1)/2` -/
def P1380724493336933800.Spec : Prop :=
  ∀ n, P1380724493336933800.a n = (A199109 n : ℚ)

theorem P1380724493336933800.correct : P1380724493336933800.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199109, Nat.add_sub_cancel, A199109.P1380724493336933800.a, A199109.P6137584353103682020.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199109, Nat.add_sub_cancel, A199109.P1380724493336933800.a, A199109.P6137584353103682020.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199109

/-! ## A199109.P13832903284136543998

`lcm(3, a(n-1))-1` with `a(0)=4`
-/

namespace A199109.P13832903284136543998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - 1

end

end A199109.P13832903284136543998

namespace A199109

/-- `lcm(3, a(n-1))-1` -/
def P13832903284136543998.Spec : Prop :=
  ∀ n, P13832903284136543998.a n = A199109 n

end A199109

/-! ## A199109.P14628090525684710955

`a(n-1)/cot(atan(3))-1` with `a(0)=4`
-/

namespace A199109.P14628090525684710955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) - 1

end

end A199109.P14628090525684710955

namespace A199109

/-- `a(n-1)/cot(atan(3))-1` -/
def P14628090525684710955.Spec : Prop :=
  ∀ n, P14628090525684710955.a n = (A199109 n : ℝ)

end A199109

/-! ## A199109.P14562554525111641946

`a(n-1)+a(n-1)+a(n-1)-1` with `a(0)=4`
-/

namespace A199109.P14562554525111641946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - 1))

end

end A199109.P14562554525111641946

namespace A199109

/-- `a(n-1)+a(n-1)+a(n-1)-1` -/
def P14562554525111641946.Spec : Prop :=
  ∀ n, P14562554525111641946.a n = A199109 n

theorem P14562554525111641946.correct : P14562554525111641946.Spec := by
  intro n
  simp only [A199109, Nat.add_sub_cancel, A199109.P14562554525111641946.a, A199109.P6137584353103682020.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199109

/-! ## A199109.P3202639646672520652

`a(n-1)-(1-a(n-1)-a(n-1))` with `a(0)=4`
-/

namespace A199109.P3202639646672520652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 1))

end

end A199109.P3202639646672520652

namespace A199109

/-- `a(n-1)-(1-a(n-1)-a(n-1))` -/
def P3202639646672520652.Spec : Prop :=
  ∀ n, P3202639646672520652.a n = A199109 n

theorem P3202639646672520652.correct : P3202639646672520652.Spec := by
  intro n
  simp only [A199109, Nat.add_sub_cancel, A199109.P3202639646672520652.a, A199109.P6137584353103682020.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199109

/-! ## A199109.P11357255909533506128

`Δ[A103177(n)]`
-/

namespace A199109.P11357255909533506128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199109.P11357255909533506128

namespace A199109

/-- `Δ[A103177(n)]` -/
def P11357255909533506128.Spec : Prop :=
  ∀ n, P11357255909533506128.a n = A199109 n

end A199109

/-! ## A199109.P8172291716157528507

`A116952(n)+3`
-/

namespace A199109.P8172291716157528507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116952 n + 3

end

end A199109.P8172291716157528507

namespace A199109

/-- `A116952(n)+3` -/
def P8172291716157528507.Spec : Prop :=
  ∀ n, P8172291716157528507.a n = A199109 n

end A199109

/-! ## A199109.P14815362578210680830

`Δ[A108765(n)]+1`
-/

namespace A199109.P14815362578210680830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A199109.P14815362578210680830

namespace A199109

/-- `Δ[A108765(n)]+1` -/
def P14815362578210680830.Spec : Prop :=
  ∀ n, P14815362578210680830.a n = A199109 n

end A199109

/-! ## A199109.P13925080040195079880

`∑[A082541(n)]+3`
-/

namespace A199109.P13925080040195079880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A199109.P13925080040195079880

namespace A199109

/-- `∑[A082541(n)]+3` -/
def P13925080040195079880.Spec : Prop :=
  ∀ n, P13925080040195079880.a n = A199109 n

end A199109

/-! ## A199109.P1816861345914103876

`∑[A141495(n+1)]+1`
-/

namespace A199109.P1816861345914103876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A199109.P1816861345914103876

namespace A199109

/-- `∑[A141495(n+1)]+1` -/
def P1816861345914103876.Spec : Prop :=
  ∀ n, P1816861345914103876.a n = A199109 n

end A199109

/-! ## A199109.P12937466036176501357

`∑[A027107(n)+1]+2`
-/

namespace A199109.P12937466036176501357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027107 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A199109.P12937466036176501357

namespace A199109

/-- `∑[A027107(n)+1]+2` -/
def P12937466036176501357.Spec : Prop :=
  ∀ n, P12937466036176501357.a n = A199109 n

end A199109

/-! ## A199109.P8241734458131467950

`A007051(n)+3^(n+1)`
-/

namespace A199109.P8241734458131467950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (3 ^ (n + 1) : ℤ)

end

end A199109.P8241734458131467950

namespace A199109

/-- `A007051(n)+3^(n+1)` -/
def P8241734458131467950.Spec : Prop :=
  ∀ n, P8241734458131467950.a n = A199109 n

end A199109

/-! ## A199109.P14182675677604485773

`A057198(n+1)+3^n`
-/

namespace A199109.P14182675677604485773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057198 (n + 1) + (3 ^ n : ℤ)

end

end A199109.P14182675677604485773

namespace A199109

/-- `A057198(n+1)+3^n` -/
def P14182675677604485773.Spec : Prop :=
  ∀ n, P14182675677604485773.a n = A199109 n

end A199109

/-! ## A199109.P631763485847006121

`A134931(n)+3^n+2`
-/

namespace A199109.P631763485847006121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134931 n + (3 ^ n + 2 : ℤ)

end

end A199109.P631763485847006121

namespace A199109

/-- `A134931(n)+3^n+2` -/
def P631763485847006121.Spec : Prop :=
  ∀ n, P631763485847006121.a n = A199109 n

end A199109

/-! ## A199109.P2078742698859132685

`A124302(n+1)+3^(n+1)`
-/

namespace A199109.P2078742698859132685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) + (3 ^ (n + 1) : ℤ)

end

end A199109.P2078742698859132685

namespace A199109

/-- `A124302(n+1)+3^(n+1)` -/
def P2078742698859132685.Spec : Prop :=
  ∀ n, P2078742698859132685.a n = A199109 n

end A199109

/-! ## A199109.P1284362300518180863

`A067771(n)+A048473(n)`
-/

namespace A199109.P1284362300518180863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 n + A048473 n

end

end A199109.P1284362300518180863

namespace A199109

/-- `A067771(n)+A048473(n)` -/
def P1284362300518180863.Spec : Prop :=
  ∀ n, P1284362300518180863.a n = A199109 n

end A199109

/-!
# A199110: a(n) = 7*3^n + 1.

The programs for A199110, the canonical program `A199110.P7196430325754821755` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199110 has offset 0).

The definition of A199110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*3^n+1` (program `A199110.P7196430325754821755`, by `A199110.P7196430325754821755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199110.P7196430325754821755

`7*3^n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199110

/-- `7*3^n+1` -/
def P7196430325754821755.Spec : Prop :=
  ∀ n, (P7196430325754821755.a n : ℤ) = A199110 n

theorem P7196430325754821755.correct : P7196430325754821755.Spec := by
  intro n
  simp only [A199110]

end A199110

/-! ## A199110.P67987164411690651

`ogf((8-10x)/(1-4x+3x^2))`
-/

namespace A199110.P67987164411690651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -10] [1, -4, 3] n

end

end A199110.P67987164411690651

namespace A199110

/-- `ogf((8-10x)/(1-4x+3x^2))` -/
def P67987164411690651.Spec : Prop :=
  ∀ n, P67987164411690651.a n = A199110 n

end A199110

/-! ## A199110.P15598014568578060831

`2*A199109(n)`
-/

namespace A199110.P15598014568578060831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199109 n

end

end A199110.P15598014568578060831

namespace A199110

/-- `2*A199109(n)` -/
def P15598014568578060831.Spec : Prop :=
  ∀ n, P15598014568578060831.a n = A199110 n

end A199110

/-! ## A199110.P488526737302961713

`∑[3*a(n-1)]` with `a(0)=8, a(1)=14`
-/

namespace A199110.P488526737302961713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 14] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199110.P488526737302961713

namespace A199110

/-- `∑[3*a(n-1)]` -/
def P488526737302961713.Spec : Prop :=
  ∀ n, (P488526737302961713.a n : ℤ) = A199110 n

end A199110

/-! ## A199110.P18215240387870185941

`abs(2-3*a(n-1))` with `a(0)=8`
-/

namespace A199110.P18215240387870185941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |2 - 3 * a (n - 1)|

end

end A199110.P18215240387870185941

namespace A199110

/-- `abs(2-3*a(n-1))` -/
def P18215240387870185941.Spec : Prop :=
  ∀ n, P18215240387870185941.a n = A199110 n

end A199110

/-! ## A199110.P14305881761984032982

`abs(2-lcm(3, a(n-1)))` with `a(0)=8`
-/

namespace A199110.P14305881761984032982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |2 - (Int.lcm 3 (a (n - 1)) : ℤ)|

end

end A199110.P14305881761984032982

namespace A199110

/-- `abs(2-lcm(3, a(n-1)))` -/
def P14305881761984032982.Spec : Prop :=
  ∀ n, P14305881761984032982.a n = A199110 n

end A199110

/-! ## A199110.P7702411852812339970

`floor(3*a(n-1)-ϕ)` with `a(0)=8`
-/

namespace A199110.P7702411852812339970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌊(3 * a (n - 1) : ℝ) - Real.goldenRatio⌋

end

end A199110.P7702411852812339970

namespace A199110

/-- `floor(3*a(n-1)-ϕ)` -/
def P7702411852812339970.Spec : Prop :=
  ∀ n, P7702411852812339970.a n = A199110 n

end A199110

/-! ## A199110.P15367606280123619540

`3*(a(n-1)-2/3)` with `a(0)=8`
-/

namespace A199110.P15367606280123619540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  3 * (a (n - 1) - (2 : ℚ) / 3)

end

end A199110.P15367606280123619540

namespace A199110

/-- `3*(a(n-1)-2/3)` -/
def P15367606280123619540.Spec : Prop :=
  ∀ n, P15367606280123619540.a n = (A199110 n : ℚ)

theorem P15367606280123619540.correct : P15367606280123619540.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199110, Nat.add_sub_cancel, A199110.P15367606280123619540.a, A199110.P7196430325754821755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199110, Nat.add_sub_cancel, A199110.P15367606280123619540.a, A199110.P7196430325754821755.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199110

/-! ## A199110.P15515964951439821565

`Δ[3*a(n-1)-2*n]` with `a(0)=5`
-/

namespace A199110.P15515964951439821565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  3 * f1 (n - 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199110.P15515964951439821565

namespace A199110

/-- `Δ[3*a(n-1)-2*n]` -/
def P15515964951439821565.Spec : Prop :=
  ∀ n, P15515964951439821565.a n = A199110 n

end A199110

/-! ## A199110.P5278879389138604798

`floor(a(n-1)+2*(a(n-1)-1))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199110.P5278879389138604798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 2 * (a (n - 1) - 1)

end

end A199110.P5278879389138604798

namespace A199110

/-- `floor(a(n-1)+2*(a(n-1)-1))` -/
def P5278879389138604798.Spec : Prop :=
  ∀ n, P5278879389138604798.a n = A199110 n

theorem P5278879389138604798.correct : P5278879389138604798.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199110, Nat.add_sub_cancel, A199110.P5278879389138604798.a, A199110.P7196430325754821755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199110, Nat.add_sub_cancel, A199110.P5278879389138604798.a, A199110.P7196430325754821755.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199110

/-! ## A199110.P4840788823375365345

`floor(a(n-1)-2*(1-a(n-1)))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199110.P4840788823375365345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - 2 * (1 - a (n - 1))

end

end A199110.P4840788823375365345

namespace A199110

/-- `floor(a(n-1)-2*(1-a(n-1)))` -/
def P4840788823375365345.Spec : Prop :=
  ∀ n, P4840788823375365345.a n = A199110 n

theorem P4840788823375365345.correct : P4840788823375365345.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199110, Nat.add_sub_cancel, A199110.P4840788823375365345.a, A199110.P7196430325754821755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199110, Nat.add_sub_cancel, A199110.P4840788823375365345.a, A199110.P7196430325754821755.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199110

/-! ## A199110.P12412275724213112429

`floor(a(n-1)+a(n-1)+a(n-1)-2)` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199110.P12412275724213112429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - 2))

end

end A199110.P12412275724213112429

namespace A199110

/-- `floor(a(n-1)+a(n-1)+a(n-1)-2)` -/
def P12412275724213112429.Spec : Prop :=
  ∀ n, P12412275724213112429.a n = A199110 n

theorem P12412275724213112429.correct : P12412275724213112429.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199110, Nat.add_sub_cancel, A199110.P12412275724213112429.a, A199110.P7196430325754821755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199110, Nat.add_sub_cancel, A199110.P12412275724213112429.a, A199110.P7196430325754821755.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199110

/-! ## A199110.P3719569854370274723

`floor(a(n-1)-(2-a(n-1)-a(n-1)))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199110.P3719569854370274723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - (2 - a (n - 1) - a (n - 1))

end

end A199110.P3719569854370274723

namespace A199110

/-- `floor(a(n-1)-(2-a(n-1)-a(n-1)))` -/
def P3719569854370274723.Spec : Prop :=
  ∀ n, P3719569854370274723.a n = A199110 n

theorem P3719569854370274723.correct : P3719569854370274723.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199110, Nat.add_sub_cancel, A199110.P3719569854370274723.a, A199110.P7196430325754821755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199110, Nat.add_sub_cancel, A199110.P3719569854370274723.a, A199110.P7196430325754821755.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199110

/-! ## A199110.P9002470648169356828

`Δ[2*A103177(n)]`
-/

namespace A199110.P9002470648169356828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199110.P9002470648169356828

namespace A199110

/-- `Δ[2*A103177(n)]` -/
def P9002470648169356828.Spec : Prop :=
  ∀ n, P9002470648169356828.a n = A199110 n

end A199110

/-! ## A199110.P4160511776284473809

`2*(A237930(n)+1)`
-/

namespace A199110.P4160511776284473809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A237930 n + 1)

end

end A199110.P4160511776284473809

namespace A199110

/-- `2*(A237930(n)+1)` -/
def P4160511776284473809.Spec : Prop :=
  ∀ n, P4160511776284473809.a n = A199110 n

end A199110

/-! ## A199110.P18154902949129119009

`2*(A116952(n)+3)`
-/

namespace A199110.P18154902949129119009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116952 n + 3)

end

end A199110.P18154902949129119009

namespace A199110

/-- `2*(A116952(n)+3)` -/
def P18154902949129119009.Spec : Prop :=
  ∀ n, P18154902949129119009.a n = A199110 n

end A199110

/-! ## A199110.P10271447083743969856

`2*(Δ[A108765(n)]+1)`
-/

namespace A199110.P10271447083743969856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A199110.P10271447083743969856

namespace A199110

/-- `2*(Δ[A108765(n)]+1)` -/
def P10271447083743969856.Spec : Prop :=
  ∀ n, P10271447083743969856.a n = A199110 n

end A199110

/-! ## A199110.P16061304259931193032

`record[A166481(n+2)+1]`
-/

namespace A199110.P16061304259931193032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166481 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199110.P16061304259931193032

namespace A199110

/-- `record[A166481(n+2)+1]` -/
def P16061304259931193032.Spec : Prop :=
  ∀ n, P16061304259931193032.a n = A199110 n

end A199110

/-! ## A199110.P8217333953472772680

`A258598(n)%A198645(n)`
-/

namespace A199110.P8217333953472772680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258598 n) (A198645 n)

end

end A199110.P8217333953472772680

namespace A199110

/-- `A258598(n)%A198645(n)` -/
def P8217333953472772680.Spec : Prop :=
  ∀ n, P8217333953472772680.a n = A199110 n

end A199110

/-! ## A199110.P12611280718581141735

`(A011782(n+1)+A003949(n+1))/A011782(n+1)`
-/

namespace A199110.P12611280718581141735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) + A003949 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A199110.P12611280718581141735

namespace A199110

/-- `(A011782(n+1)+A003949(n+1))/A011782(n+1)` -/
def P12611280718581141735.Spec : Prop :=
  ∀ n, P12611280718581141735.a n = (A199110 n : ℚ)

end A199110

/-!
# A199111: a(n) = 8*3^n + 1.

The programs for A199111, the canonical program `A199111.P16186390846937489639` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199111 has offset 0).

The definition of A199111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*3^n+1` (program `A199111.P16186390846937489639`, by `A199111.P16186390846937489639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199111.P16186390846937489639

`8*3^n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199111

/-- `8*3^n+1` -/
def P16186390846937489639.Spec : Prop :=
  ∀ n, (P16186390846937489639.a n : ℤ) = A199111 n

theorem P16186390846937489639.correct : P16186390846937489639.Spec := by
  intro n
  simp only [A199111]

end A199111

/-! ## A199111.P12703109450595347180

`ogf((9-11x)/(1-4x+3x^2))`
-/

namespace A199111.P12703109450595347180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -11] [1, -4, 3] n

end

end A199111.P12703109450595347180

namespace A199111

/-- `ogf((9-11x)/(1-4x+3x^2))` -/
def P12703109450595347180.Spec : Prop :=
  ∀ n, P12703109450595347180.a n = A199111 n

end A199111

/-! ## A199111.P9199593376263070115

`or(1, 8*3^n)`
-/

namespace A199111.P9199593376263070115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * 3 ^ n)

end

end A199111.P9199593376263070115

namespace A199111

/-- `or(1, 8*3^n)` -/
def P9199593376263070115.Spec : Prop :=
  ∀ n, (P9199593376263070115.a n : ℤ) = A199111 n

end A199111

/-! ## A199111.P1733883280428626107

`xor(1, 8*3^n)`
-/

namespace A199111.P1733883280428626107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * 3 ^ n)

end

end A199111.P1733883280428626107

namespace A199111

/-- `xor(1, 8*3^n)` -/
def P1733883280428626107.Spec : Prop :=
  ∀ n, (P1733883280428626107.a n : ℤ) = A199111 n

end A199111

/-! ## A199111.P12110500133654246778

`Δ[lcm(4, 3^n)+n]`
-/

namespace A199111.P12110500133654246778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (3 ^ n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199111.P12110500133654246778

namespace A199111

/-- `Δ[lcm(4, 3^n)+n]` -/
def P12110500133654246778.Spec : Prop :=
  ∀ n, P12110500133654246778.a n = A199111 n

end A199111

/-! ## A199111.P500305875833849598

`∑[3*a(n-1)]` with `a(0)=9, a(1)=16`
-/

namespace A199111.P500305875833849598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 16] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199111.P500305875833849598

namespace A199111

/-- `∑[3*a(n-1)]` -/
def P500305875833849598.Spec : Prop :=
  ∀ n, (P500305875833849598.a n : ℤ) = A199111 n

end A199111

/-! ## A199111.P17148078886643792468

`abs(2-3*a(n-1))` with `a(0)=9`
-/

namespace A199111.P17148078886643792468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  |2 - 3 * a (n - 1)|

end

end A199111.P17148078886643792468

namespace A199111

/-- `abs(2-3*a(n-1))` -/
def P17148078886643792468.Spec : Prop :=
  ∀ n, P17148078886643792468.a n = A199111 n

end A199111

/-! ## A199111.P15292597667001985474

`and(3*a(n-1), -3)` with `a(0)=9`
-/

namespace A199111.P15292597667001985474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  Int.land (3 * a (n - 1)) (-3)

end

end A199111.P15292597667001985474

namespace A199111

/-- `and(3*a(n-1), -3)` -/
def P15292597667001985474.Spec : Prop :=
  ∀ n, P15292597667001985474.a n = A199111 n

end A199111

/-! ## A199111.P15141622109834403114

`floor(3*a(n-1)-ϕ)` with `a(0)=9`
-/

namespace A199111.P15141622109834403114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  ⌊(3 * a (n - 1) : ℝ) - Real.goldenRatio⌋

end

end A199111.P15141622109834403114

namespace A199111

/-- `floor(3*a(n-1)-ϕ)` -/
def P15141622109834403114.Spec : Prop :=
  ∀ n, P15141622109834403114.a n = A199111 n

end A199111

/-! ## A199111.P18018588839002138380

`3*(a(n-1)-2/3)` with `a(0)=9`
-/

namespace A199111.P18018588839002138380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  3 * (a (n - 1) - (2 : ℚ) / 3)

end

end A199111.P18018588839002138380

namespace A199111

/-- `3*(a(n-1)-2/3)` -/
def P18018588839002138380.Spec : Prop :=
  ∀ n, P18018588839002138380.a n = (A199111 n : ℚ)

theorem P18018588839002138380.correct : P18018588839002138380.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199111, Nat.add_sub_cancel, A199111.P18018588839002138380.a, A199111.P16186390846937489639.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199111, Nat.add_sub_cancel, A199111.P18018588839002138380.a, A199111.P16186390846937489639.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199111

/-! ## A199111.P7565954022404596991

`Δ[A003946(n+1)+n]`
-/

namespace A199111.P7565954022404596991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199111.P7565954022404596991

namespace A199111

/-- `Δ[A003946(n+1)+n]` -/
def P7565954022404596991.Spec : Prop :=
  ∀ n, P7565954022404596991.a n = A199111 n

end A199111

/-! ## A199111.P9094508716320833805

`Δ[A083313(n+1)+A005056(n)+n]`
-/

namespace A199111.P9094508716320833805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 (n + 1) + A005056 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199111.P9094508716320833805

namespace A199111

/-- `Δ[A083313(n+1)+A005056(n)+n]` -/
def P9094508716320833805.Spec : Prop :=
  ∀ n, P9094508716320833805.a n = A199111 n

end A199111

/-! ## A199111.P7679928621436610748

`Δ[Δ[3*a(n-1)]+n]` with `a(0)=2`
-/

namespace A199111.P7679928621436610748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199111.P7679928621436610748

namespace A199111

/-- `Δ[Δ[3*a(n-1)]+n]` -/
def P7679928621436610748.Spec : Prop :=
  ∀ n, P7679928621436610748.a n = A199111 n

end A199111

/-! ## A199111.P5335576742847946847

`A176413(n)%A198646(n)`
-/

namespace A199111.P5335576742847946847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176413 n) (A198646 n)

end

end A199111.P5335576742847946847

namespace A199111

/-- `A176413(n)%A198646(n)` -/
def P5335576742847946847.Spec : Prop :=
  ∀ n, P5335576742847946847.a n = A199111 n

end A199111

/-! ## A199111.P16792003524502563193

`Δ[A052944(n)+Δ[A027649(n)]]`
-/

namespace A199111.P16792003524502563193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199111.P16792003524502563193

namespace A199111

/-- `Δ[A052944(n)+Δ[A027649(n)]]` -/
def P16792003524502563193.Spec : Prop :=
  ∀ n, P16792003524502563193.a n = A199111 n

theorem P16792003524502563193.correct : P16792003524502563193.Spec := by
  intro n
  simp only [A199111, Nat.add_sub_cancel, A199111.P16792003524502563193.f2, A199111.P16792003524502563193.f1, A199111.P16792003524502563193.a, A199111.P16186390846937489639.a, A027649, A027649.P2434933350896167885.a, A052944, A052944.P8155758912192775135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199111

/-! ## A199111.P797563931714891910

`Δ[4*(sqrt(A001019(n))+2)+n]`
-/

namespace A199111.P797563931714891910
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * (Real.sqrt (A001019 n : ℝ) + 2) + (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199111.P797563931714891910

namespace A199111

/-- `Δ[4*(sqrt(A001019(n))+2)+n]` -/
def P797563931714891910.Spec : Prop :=
  ∀ n, P797563931714891910.a n = (A199111 n : ℝ)

end A199111

/-! ## A199111.P3571238273281734598

`(A212703(n+1)+A027471(n+2))/A027471(n+2)`
-/

namespace A199111.P3571238273281734598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212703 (n + 1) + A027471 (n + 2) : ℚ) / (A027471 (n + 2) : ℚ)

end

end A199111.P3571238273281734598

namespace A199111

/-- `(A212703(n+1)+A027471(n+2))/A027471(n+2)` -/
def P3571238273281734598.Spec : Prop :=
  ∀ n, P3571238273281734598.a n = (A199111 n : ℚ)

end A199111

/-!
# A199112: a(n) = 10*3^n+1.

The programs for A199112, the canonical program `A199112.P3820334855337971107` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199112 has offset 0).

The definition of A199112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*3^n+1` (program `A199112.P3820334855337971107`, by `A199112.P3820334855337971107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199112.P3820334855337971107

`10*3^n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199112

/-- `10*3^n+1` -/
def P3820334855337971107.Spec : Prop :=
  ∀ n, (P3820334855337971107.a n : ℤ) = A199112 n

theorem P3820334855337971107.correct : P3820334855337971107.Spec := by
  intro n
  simp only [A199112]

end A199112

/-! ## A199112.P5971087240262299392

`ogf((11-13x)/(1-4x+3x^2))`
-/

namespace A199112.P5971087240262299392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -13] [1, -4, 3] n

end

end A199112.P5971087240262299392

namespace A199112

/-- `ogf((11-13x)/(1-4x+3x^2))` -/
def P5971087240262299392.Spec : Prop :=
  ∀ n, P5971087240262299392.a n = A199112 n

end A199112

/-! ## A199112.P609497494130717027

`or(1, 10*3^n)`
-/

namespace A199112.P609497494130717027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 * 3 ^ n)

end

end A199112.P609497494130717027

namespace A199112

/-- `or(1, 10*3^n)` -/
def P609497494130717027.Spec : Prop :=
  ∀ n, (P609497494130717027.a n : ℤ) = A199112 n

end A199112

/-! ## A199112.P100242375629234896

`xor(1, 10*3^n)`
-/

namespace A199112.P100242375629234896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 * 3 ^ n)

end

end A199112.P100242375629234896

namespace A199112

/-- `xor(1, 10*3^n)` -/
def P100242375629234896.Spec : Prop :=
  ∀ n, (P100242375629234896.a n : ℤ) = A199112 n

end A199112

/-! ## A199112.P10151439704939122789

`Δ[lcm(5, 3^n)+n]`
-/

namespace A199112.P10151439704939122789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (3 ^ n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199112.P10151439704939122789

namespace A199112

/-- `Δ[lcm(5, 3^n)+n]` -/
def P10151439704939122789.Spec : Prop :=
  ∀ n, P10151439704939122789.a n = A199112 n

end A199112

/-! ## A199112.P2786491262879885333

`∑[3*a(n-1)]` with `a(0)=11, a(1)=20`
-/

namespace A199112.P2786491262879885333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 20] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199112.P2786491262879885333

namespace A199112

/-- `∑[3*a(n-1)]` -/
def P2786491262879885333.Spec : Prop :=
  ∀ n, (P2786491262879885333.a n : ℤ) = A199112 n

end A199112

/-! ## A199112.P8636445728225821112

`abs(2-3*a(n-1))` with `a(0)=11`
-/

namespace A199112.P8636445728225821112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  |2 - 3 * a (n - 1)|

end

end A199112.P8636445728225821112

namespace A199112

/-- `abs(2-3*a(n-1))` -/
def P8636445728225821112.Spec : Prop :=
  ∀ n, P8636445728225821112.a n = A199112 n

end A199112

/-! ## A199112.P14766206555377006143

`3*(a(n-1)-2/3)` with `a(0)=11`
-/

namespace A199112.P14766206555377006143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [11] fun n a =>
  3 * (a (n - 1) - (2 : ℚ) / 3)

end

end A199112.P14766206555377006143

namespace A199112

/-- `3*(a(n-1)-2/3)` -/
def P14766206555377006143.Spec : Prop :=
  ∀ n, P14766206555377006143.a n = (A199112 n : ℚ)

theorem P14766206555377006143.correct : P14766206555377006143.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199112, Nat.add_sub_cancel, A199112.P14766206555377006143.a, A199112.P3820334855337971107.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199112, Nat.add_sub_cancel, A199112.P14766206555377006143.a, A199112.P3820334855337971107.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199112

/-! ## A199112.P9852459755733503790

`A188793(2*n+5)`
-/

namespace A199112.P9852459755733503790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188793 (2 * n + 5)

end

end A199112.P9852459755733503790

namespace A199112

/-- `A188793(2*n+5)` -/
def P9852459755733503790.Spec : Prop :=
  ∀ n, P9852459755733503790.a n = A199112 n

end A199112

/-! ## A199112.P6489991209647046858

`record[2*A162813(n+1)+1]`
-/

namespace A199112.P6489991209647046858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162813 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199112.P6489991209647046858

namespace A199112

/-- `record[2*A162813(n+1)+1]` -/
def P6489991209647046858.Spec : Prop :=
  ∀ n, P6489991209647046858.a n = A199112 n

end A199112

/-! ## A199112.P17971890193992177151

`abs(11*3^n-A024023(n))`
-/

namespace A199112.P17971890193992177151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * 3 ^ n : ℤ) - A024023 n|

end

end A199112.P17971890193992177151

namespace A199112

/-- `abs(11*3^n-A024023(n))` -/
def P17971890193992177151.Spec : Prop :=
  ∀ n, P17971890193992177151.a n = A199112 n

end A199112

/-! ## A199112.P1784759015562795613

`abs(A007051(n+3)-A237930(n))`
-/

namespace A199112.P1784759015562795613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007051 (n + 3) - A237930 n|

end

end A199112.P1784759015562795613

namespace A199112

/-- `abs(A007051(n+3)-A237930(n))` -/
def P1784759015562795613.Spec : Prop :=
  ∀ n, P1784759015562795613.a n = A199112 n

end A199112

/-! ## A199112.P4174479208358268939

`(A116530(n+1)+2)/2`
-/

namespace A199112.P4174479208358268939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116530 (n + 1) + 2 : ℚ) / 2

end

end A199112.P4174479208358268939

namespace A199112

/-- `(A116530(n+1)+2)/2` -/
def P4174479208358268939.Spec : Prop :=
  ∀ n, P4174479208358268939.a n = (A199112 n : ℚ)

end A199112

/-! ## A199112.P5681548155684049621

`Δ[A057198(n+1)²]/Δ[A057198(n+1)]`
-/

namespace A199112.P5681548155684049621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057198 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057198 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A199112.P5681548155684049621

namespace A199112

/-- `Δ[A057198(n+1)²]/Δ[A057198(n+1)]` -/
def P5681548155684049621.Spec : Prop :=
  ∀ n, P5681548155684049621.a n = (A199112 n : ℚ)

end A199112

/-!
# A199113: a(n) = (11*3^n+1)/2.

The programs for A199113, the canonical program `A199113.P8564963332754865843` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199113 has offset 0).

The definition of A199113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*3^n+1)/2` (program `A199113.P9921092473701571148`, by `A199113.P9921092473701571148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199113.P15806288706874940739

`ogf((6-7x)/(1-4x+3x^2))`
-/

namespace A199113.P15806288706874940739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -7] [1, -4, 3] n

end

end A199113.P15806288706874940739

namespace A199113

/-- `ogf((6-7x)/(1-4x+3x^2))` -/
def P15806288706874940739.Spec : Prop :=
  ∀ n, P15806288706874940739.a n = A199113 n

end A199113

/-! ## A199113.P8564963332754865843

`3*a(n-1)-1` with `a(0)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199113

/-- `3*a(n-1)-1` -/
def P8564963332754865843.Spec : Prop :=
  ∀ n, P8564963332754865843.a n = A199113 n

theorem P8564963332754865843.correct : P8564963332754865843.Spec := by
  intro n
  simp only [A199113]

end A199113

/-! ## A199113.P9921092473701571148

`(11*3^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199113.P9921092473701571148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 3 ^ n + 1 : ℚ) / 2

end

end A199113.P9921092473701571148

namespace A199113

/-- `(11*3^n+1)/2` -/
def P9921092473701571148.Spec : Prop :=
  ∀ n, P9921092473701571148.a n = (A199113 n : ℚ)

theorem P9921092473701571148.correct : P9921092473701571148.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199113, Nat.add_sub_cancel, A199113.P9921092473701571148.a, A199113.P8564963332754865843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199113, Nat.add_sub_cancel, A199113.P9921092473701571148.a, A199113.P8564963332754865843.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199113

/-! ## A199113.P12322698547053354665

`lcm(3, a(n-1))-1` with `a(0)=6, a(1)=17`
-/

namespace A199113.P12322698547053354665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 17] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - 1

end

end A199113.P12322698547053354665

namespace A199113

/-- `lcm(3, a(n-1))-1` -/
def P12322698547053354665.Spec : Prop :=
  ∀ n, P12322698547053354665.a n = A199113 n

end A199113

/-! ## A199113.P7580014536189469367

`a(n-1)/cot(atan(3))-1` with `a(0)=6`
-/

namespace A199113.P7580014536189469367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) - 1

end

end A199113.P7580014536189469367

namespace A199113

/-- `a(n-1)/cot(atan(3))-1` -/
def P7580014536189469367.Spec : Prop :=
  ∀ n, P7580014536189469367.a n = (A199113 n : ℝ)

end A199113

/-! ## A199113.P7127961416166506120

`A052909(n+1)+1`
-/

namespace A199113.P7127961416166506120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052909 (n + 1) + 1

end

end A199113.P7127961416166506120

namespace A199113

/-- `A052909(n+1)+1` -/
def P7127961416166506120.Spec : Prop :=
  ∀ n, P7127961416166506120.a n = A199113 n

end A199113

/-! ## A199113.P12814588121957852902

`A224785(2*n)+5`
-/

namespace A199113.P12814588121957852902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224785 (2 * n) + 5

end

end A199113.P12814588121957852902

namespace A199113

/-- `A224785(2*n)+5` -/
def P12814588121957852902.Spec : Prop :=
  ∀ n, P12814588121957852902.a n = A199113 n

end A199113

/-! ## A199113.P15326092865261668144

`A239288(3*(n+1))+2`
-/

namespace A199113.P15326092865261668144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239288 (3 * (n + 1)) + 2

end

end A199113.P15326092865261668144

namespace A199113

/-- `A239288(3*(n+1))+2` -/
def P15326092865261668144.Spec : Prop :=
  ∀ n, P15326092865261668144.a n = A199113 n

end A199113

/-! ## A199113.P1910065110072244723

`A057198(n+1)+3^(n+1)`
-/

namespace A199113.P1910065110072244723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057198 (n + 1) + (3 ^ (n + 1) : ℤ)

end

end A199113.P1910065110072244723

namespace A199113

/-- `A057198(n+1)+3^(n+1)` -/
def P1910065110072244723.Spec : Prop :=
  ∀ n, P1910065110072244723.a n = A199113 n

end A199113

/-! ## A199113.P14214073361856150249

`A007051(n)+A005030(n)`
-/

namespace A199113.P14214073361856150249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A005030 n

end

end A199113.P14214073361856150249

namespace A199113

/-- `A007051(n)+A005030(n)` -/
def P14214073361856150249.Spec : Prop :=
  ∀ n, P14214073361856150249.a n = A199113 n

end A199113

/-! ## A199113.P888848478703476176

`A199109(n)+A008776(n)`
-/

namespace A199113.P888848478703476176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199109 n + A008776 n

end

end A199113.P888848478703476176

namespace A199113

/-- `A199109(n)+A008776(n)` -/
def P888848478703476176.Spec : Prop :=
  ∀ n, P888848478703476176.a n = A199113 n

end A199113

/-! ## A199113.P8153678876466053962

`A171498(n)+A067771(n)`
-/

namespace A199113.P8153678876466053962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171498 n + A067771 n

end

end A199113.P8153678876466053962

namespace A199113

/-- `A171498(n)+A067771(n)` -/
def P8153678876466053962.Spec : Prop :=
  ∀ n, P8153678876466053962.a n = A199113 n

end A199113

/-! ## A199113.P11568326383137593594

`A198643(n)+A115098(n)`
-/

namespace A199113.P11568326383137593594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198643 n + A115098 n

end

end A199113.P11568326383137593594

namespace A199113

/-- `A198643(n)+A115098(n)` -/
def P11568326383137593594.Spec : Prop :=
  ∀ n, P11568326383137593594.a n = A199113 n

end A199113

/-! ## A199113.P12564852213198462066

`A168610(n)+A168569(n)`
-/

namespace A199113.P12564852213198462066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168610 n + A168569 n

end

end A199113.P12564852213198462066

namespace A199113

/-- `A168610(n)+A168569(n)` -/
def P12564852213198462066.Spec : Prop :=
  ∀ n, P12564852213198462066.a n = A199113 n

end A199113

/-! ## A199113.P4735695848687719096

`A003462(n)+A005030(n)+1`
-/

namespace A199113.P4735695848687719096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A005030 n + 1)

end

end A199113.P4735695848687719096

namespace A199113

/-- `A003462(n)+A005030(n)+1` -/
def P4735695848687719096.Spec : Prop :=
  ∀ n, P4735695848687719096.a n = A199113 n

end A199113

/-! ## A199113.P5468382059575068033

`A067771(n+1)+A024023(n)`
-/

namespace A199113.P5468382059575068033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 (n + 1) + A024023 n

end

end A199113.P5468382059575068033

namespace A199113

/-- `A067771(n+1)+A024023(n)` -/
def P5468382059575068033.Spec : Prop :=
  ∀ n, P5468382059575068033.a n = A199113 n

end A199113

/-! ## A199113.P12975742942619603821

`A115099(n)+A116952(n)+1`
-/

namespace A199113.P12975742942619603821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115099 n + (A116952 n + 1)

end

end A199113.P12975742942619603821

namespace A199113

/-- `A115099(n)+A116952(n)+1` -/
def P12975742942619603821.Spec : Prop :=
  ∀ n, P12975742942619603821.a n = A199113 n

end A199113

/-! ## A199113.P638060938765932485

`A237930(n)+A052919(n+1)`
-/

namespace A199113.P638060938765932485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237930 n + A052919 (n + 1)

end

end A199113.P638060938765932485

namespace A199113

/-- `A237930(n)+A052919(n+1)` -/
def P638060938765932485.Spec : Prop :=
  ∀ n, P638060938765932485.a n = A199113 n

end A199113

/-! ## A199113.P14925518494096379095

`A259821(n+1)+A134931(n)`
-/

namespace A199113.P14925518494096379095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259821 (n + 1) + A134931 n

end

end A199113.P14925518494096379095

namespace A199113

/-- `A259821(n+1)+A134931(n)` -/
def P14925518494096379095.Spec : Prop :=
  ∀ n, P14925518494096379095.a n = A199113 n

end A199113

/-! ## A199113.P778604251261488445

`A007051(n+2)+A000244(n)`
-/

namespace A199113.P778604251261488445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 2) + A000244 n

end

end A199113.P778604251261488445

namespace A199113

/-- `A007051(n+2)+A000244(n)` -/
def P778604251261488445.Spec : Prop :=
  ∀ n, P778604251261488445.a n = A199113 n

end A199113

/-!
# A199114: a(n) = 11*3^n+1.

The programs for A199114, the canonical program `A199114.P12823177751072762605` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199114 has offset 0).

The definition of A199114 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*3^n+1` (program `A199114.P12823177751072762605`, by `A199114.P12823177751072762605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199114.P12823177751072762605

`11*3^n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199114

/-- `11*3^n+1` -/
def P12823177751072762605.Spec : Prop :=
  ∀ n, (P12823177751072762605.a n : ℤ) = A199114 n

theorem P12823177751072762605.correct : P12823177751072762605.Spec := by
  intro n
  simp only [A199114]

end A199114

/-! ## A199114.P7093915952375386472

`ogf((12-14x)/(1-4x+3x^2))`
-/

namespace A199114.P7093915952375386472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -14] [1, -4, 3] n

end

end A199114.P7093915952375386472

namespace A199114

/-- `ogf((12-14x)/(1-4x+3x^2))` -/
def P7093915952375386472.Spec : Prop :=
  ∀ n, P7093915952375386472.a n = A199114 n

end A199114

/-! ## A199114.P16917468309737273916

`2*A199113(n)`
-/

namespace A199114.P16917468309737273916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199113 n

end

end A199114.P16917468309737273916

namespace A199114

/-- `2*A199113(n)` -/
def P16917468309737273916.Spec : Prop :=
  ∀ n, P16917468309737273916.a n = A199114 n

end A199114

/-! ## A199114.P9642772291744726191

`∑[3*a(n-1)]` with `a(0)=12, a(1)=22`
-/

namespace A199114.P9642772291744726191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 22] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199114.P9642772291744726191

namespace A199114

/-- `∑[3*a(n-1)]` -/
def P9642772291744726191.Spec : Prop :=
  ∀ n, (P9642772291744726191.a n : ℤ) = A199114 n

end A199114

/-! ## A199114.P9617233294604735791

`3*(a(n-1)-2/3)` with `a(0)=12`
-/

namespace A199114.P9617233294604735791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  3 * (a (n - 1) - (2 : ℚ) / 3)

end

end A199114.P9617233294604735791

namespace A199114

/-- `3*(a(n-1)-2/3)` -/
def P9617233294604735791.Spec : Prop :=
  ∀ n, P9617233294604735791.a n = (A199114 n : ℚ)

theorem P9617233294604735791.correct : P9617233294604735791.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199114, Nat.add_sub_cancel, A199114.P9617233294604735791.a, A199114.P12823177751072762605.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199114, Nat.add_sub_cancel, A199114.P9617233294604735791.a, A199114.P12823177751072762605.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199114

/-! ## A199114.P1887020977302916212

`Δ[3*a(n-1)-2*n]` with `a(0)=7`
-/

namespace A199114.P1887020977302916212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  3 * f1 (n - 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199114.P1887020977302916212

namespace A199114

/-- `Δ[3*a(n-1)-2*n]` -/
def P1887020977302916212.Spec : Prop :=
  ∀ n, P1887020977302916212.a n = A199114 n

end A199114

/-! ## A199114.P12094050803044196741

`lcm(2, A120354(n)+1)`
-/

namespace A199114.P12094050803044196741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A120354 n + 1)

end

end A199114.P12094050803044196741

namespace A199114

/-- `lcm(2, A120354(n)+1)` -/
def P12094050803044196741.Spec : Prop :=
  ∀ n, (P12094050803044196741.a n : ℤ) = A199114 n

end A199114

/-! ## A199114.P15423808043476803927

`xor(1, A198646(n)+3)`
-/

namespace A199114.P15423808043476803927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A198646 n + 3)

end

end A199114.P15423808043476803927

namespace A199114

/-- `xor(1, A198646(n)+3)` -/
def P15423808043476803927.Spec : Prop :=
  ∀ n, P15423808043476803927.a n = A199114 n

end A199114

/-! ## A199114.P17793964886444709112

`2*(A052909(n+1)+1)`
-/

namespace A199114.P17793964886444709112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052909 (n + 1) + 1)

end

end A199114.P17793964886444709112

namespace A199114

/-- `2*(A052909(n+1)+1)` -/
def P17793964886444709112.Spec : Prop :=
  ∀ n, P17793964886444709112.a n = A199114 n

end A199114

/-! ## A199114.P14693949983944205150

`2*(A224785(2*n+1)+2)`
-/

namespace A199114.P14693949983944205150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A224785 (2 * n + 1) + 2)

end

end A199114.P14693949983944205150

namespace A199114

/-- `2*(A224785(2*n+1)+2)` -/
def P14693949983944205150.Spec : Prop :=
  ∀ n, P14693949983944205150.a n = A199114 n

end A199114

/-! ## A199114.P1274070625153178460

`lcm(A105397(n), A199113(n))`
-/

namespace A199114.P1274070625153178460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105397 n) (A199113 n)

end

end A199114.P1274070625153178460

namespace A199114

/-- `lcm(A105397(n), A199113(n))` -/
def P1274070625153178460.Spec : Prop :=
  ∀ n, (P1274070625153178460.a n : ℤ) = A199114 n

end A199114

/-! ## A199114.P2524555327188344035

`2*(A007051(n)+A005030(n))`
-/

namespace A199114.P2524555327188344035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 n + A005030 n)

end

end A199114.P2524555327188344035

namespace A199114

/-- `2*(A007051(n)+A005030(n))` -/
def P2524555327188344035.Spec : Prop :=
  ∀ n, P2524555327188344035.a n = A199114 n

end A199114

/-! ## A199114.P143398451449297738

`2*(A199109(n)+A008776(n))`
-/

namespace A199114.P143398451449297738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199109 n + A008776 n)

end

end A199114.P143398451449297738

namespace A199114

/-- `2*(A199109(n)+A008776(n))` -/
def P143398451449297738.Spec : Prop :=
  ∀ n, P143398451449297738.a n = A199114 n

end A199114

/-! ## A199114.P17027682105336735162

`2*(A171498(n)+A067771(n))`
-/

namespace A199114.P17027682105336735162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A171498 n + A067771 n)

end

end A199114.P17027682105336735162

namespace A199114

/-- `2*(A171498(n)+A067771(n))` -/
def P17027682105336735162.Spec : Prop :=
  ∀ n, P17027682105336735162.a n = A199114 n

end A199114

/-! ## A199114.P6212371583448778100

`2*(A198643(n)+A115098(n))`
-/

namespace A199114.P6212371583448778100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198643 n + A115098 n)

end

end A199114.P6212371583448778100

namespace A199114

/-- `2*(A198643(n)+A115098(n))` -/
def P6212371583448778100.Spec : Prop :=
  ∀ n, P6212371583448778100.a n = A199114 n

end A199114

/-! ## A199114.P3051851139580768990

`2*(A168610(n)+A168569(n))`
-/

namespace A199114.P3051851139580768990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168610 n + A168569 n)

end

end A199114.P3051851139580768990

namespace A199114

/-- `2*(A168610(n)+A168569(n))` -/
def P3051851139580768990.Spec : Prop :=
  ∀ n, P3051851139580768990.a n = A199114 n

end A199114

/-! ## A199114.P11851113445182441736

`2*(A198644(n)-A134931(n))`
-/

namespace A199114.P11851113445182441736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198644 n - A134931 n)

end

end A199114.P11851113445182441736

namespace A199114

/-- `2*(A198644(n)-A134931(n))` -/
def P11851113445182441736.Spec : Prop :=
  ∀ n, P11851113445182441736.a n = A199114 n

end A199114

/-! ## A199114.P5646831156932198883

`Δ[A233656(n+2)+A034472(n)]`
-/

namespace A199114.P5646831156932198883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233656 (n + 2) + A034472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199114.P5646831156932198883

namespace A199114

/-- `Δ[A233656(n+2)+A034472(n)]` -/
def P5646831156932198883.Spec : Prop :=
  ∀ n, P5646831156932198883.a n = A199114 n

end A199114

/-! ## A199114.P9535150618720161924

`(A120354(n)+A120353(n+1))/A120354(n)`
-/

namespace A199114.P9535150618720161924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120354 n + A120353 (n + 1) : ℚ) / (A120354 n : ℚ)

end

end A199114.P9535150618720161924

namespace A199114

/-- `(A120354(n)+A120353(n+1))/A120354(n)` -/
def P9535150618720161924.Spec : Prop :=
  ∀ n, P9535150618720161924.a n = (A199114 n : ℚ)

end A199114

/-!
# A199115: a(n) = 5*4^n+1.

The programs for A199115, the canonical program `A199115.P17558246874276297654` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199115 has offset 0).

The definition of A199115 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*4^n+1` (program `A199115.P17558246874276297654`, by `A199115.P17558246874276297654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199115.P17558246874276297654

`5*4^n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199115

/-- `5*4^n+1` -/
def P17558246874276297654.Spec : Prop :=
  ∀ n, (P17558246874276297654.a n : ℤ) = A199115 n

theorem P17558246874276297654.correct : P17558246874276297654.Spec := by
  intro n
  simp only [A199115]

end A199115

/-! ## A199115.P5546513617671297348

`ogf((6-9x)/(1-5x+4x^2))`
-/

namespace A199115.P5546513617671297348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -9] [1, -5, 4] n

end

end A199115.P5546513617671297348

namespace A199115

/-- `ogf((6-9x)/(1-5x+4x^2))` -/
def P5546513617671297348.Spec : Prop :=
  ∀ n, P5546513617671297348.a n = A199115 n

end A199115

/-! ## A199115.P12793492300114991219

`3*A136412(n)`
-/

namespace A199115.P12793492300114991219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A136412 n

end

end A199115.P12793492300114991219

namespace A199115

/-- `3*A136412(n)` -/
def P12793492300114991219.Spec : Prop :=
  ∀ n, P12793492300114991219.a n = A199115 n

end A199115

/-! ## A199115.P89797741463029410

`∑[4*a(n-1)]` with `a(0)=6, a(1)=15`
-/

namespace A199115.P89797741463029410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 15] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199115.P89797741463029410

namespace A199115

/-- `∑[4*a(n-1)]` -/
def P89797741463029410.Spec : Prop :=
  ∀ n, (P89797741463029410.a n : ℤ) = A199115 n

end A199115

/-! ## A199115.P13086681965724089882

`abs(3-4*a(n-1))` with `a(0)=6`
-/

namespace A199115.P13086681965724089882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  |3 - 4 * a (n - 1)|

end

end A199115.P13086681965724089882

namespace A199115

/-- `abs(3-4*a(n-1))` -/
def P13086681965724089882.Spec : Prop :=
  ∀ n, P13086681965724089882.a n = A199115 n

end A199115

/-! ## A199115.P17067307595848845147

`record[3-2*a(n-1)]` with `a(0)=6`
-/

namespace A199115.P17067307595848845147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  3 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199115.P17067307595848845147

namespace A199115

/-- `record[3-2*a(n-1)]` -/
def P17067307595848845147.Spec : Prop :=
  ∀ n, P17067307595848845147.a n = A199115 n

end A199115

/-! ## A199115.P18146739750970083299

`4*(a(n-1)-3/4)` with `a(0)=6`
-/

namespace A199115.P18146739750970083299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  4 * (a (n - 1) - (3 : ℚ) / 4)

end

end A199115.P18146739750970083299

namespace A199115

/-- `4*(a(n-1)-3/4)` -/
def P18146739750970083299.Spec : Prop :=
  ∀ n, P18146739750970083299.a n = (A199115 n : ℚ)

theorem P18146739750970083299.correct : P18146739750970083299.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199115, Nat.add_sub_cancel, A199115.P18146739750970083299.a, A199115.P17558246874276297654.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199115, Nat.add_sub_cancel, A199115.P18146739750970083299.a, A199115.P17558246874276297654.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199115

/-! ## A199115.P9591625914420206342

`floor(a(n-1)+3*(a(n-1)-1))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A199115.P9591625914420206342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 3 * (a (n - 1) - 1)

end

end A199115.P9591625914420206342

namespace A199115

/-- `floor(a(n-1)+3*(a(n-1)-1))` -/
def P9591625914420206342.Spec : Prop :=
  ∀ n, P9591625914420206342.a n = A199115 n

theorem P9591625914420206342.correct : P9591625914420206342.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199115, Nat.add_sub_cancel, A199115.P9591625914420206342.a, A199115.P17558246874276297654.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199115, Nat.add_sub_cancel, A199115.P9591625914420206342.a, A199115.P17558246874276297654.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199115

/-! ## A199115.P14422757544049439413

`floor(a(n-1)-3*(1-a(n-1)))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A199115.P14422757544049439413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) - 3 * (1 - a (n - 1))

end

end A199115.P14422757544049439413

namespace A199115

/-- `floor(a(n-1)-3*(1-a(n-1)))` -/
def P14422757544049439413.Spec : Prop :=
  ∀ n, P14422757544049439413.a n = A199115 n

theorem P14422757544049439413.correct : P14422757544049439413.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199115, Nat.add_sub_cancel, A199115.P14422757544049439413.a, A199115.P17558246874276297654.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199115, Nat.add_sub_cancel, A199115.P14422757544049439413.a, A199115.P17558246874276297654.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199115

/-! ## A199115.P2887234015636780732

`A083575(2*n)`
-/

namespace A199115.P2887234015636780732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 (2 * n)

end

end A199115.P2887234015636780732

namespace A199115

/-- `A083575(2*n)` -/
def P2887234015636780732.Spec : Prop :=
  ∀ n, P2887234015636780732.a n = A199115 n

end A199115

/-! ## A199115.P12002617672660281307

`Δ[3*A164044(n)]`
-/

namespace A199115.P12002617672660281307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A164044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199115.P12002617672660281307

namespace A199115

/-- `Δ[3*A164044(n)]` -/
def P12002617672660281307.Spec : Prop :=
  ∀ n, P12002617672660281307.a n = A199115 n

end A199115

/-! ## A199115.P4058092080269818578

`record[3*A255138(n)]`
-/

namespace A199115.P4058092080269818578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199115.P4058092080269818578

namespace A199115

/-- `record[3*A255138(n)]` -/
def P4058092080269818578.Spec : Prop :=
  ∀ n, P4058092080269818578.a n = A199115 n

end A199115

/-! ## A199115.P5547938690742875476

`3*(A020989(n)+1)`
-/

namespace A199115.P5547938690742875476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A020989 n + 1)

end

end A199115.P5547938690742875476

namespace A199115

/-- `3*(A020989(n)+1)` -/
def P5547938690742875476.Spec : Prop :=
  ∀ n, P5547938690742875476.a n = A199115 n

end A199115

/-! ## A199115.P6860997111812730864

`A122973(n+1)/2`
-/

namespace A199115.P6860997111812730864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122973 (n + 1) : ℚ) / 2

end

end A199115.P6860997111812730864

namespace A199115

/-- `A122973(n+1)/2` -/
def P6860997111812730864.Spec : Prop :=
  ∀ n, P6860997111812730864.a n = (A199115 n : ℚ)

end A199115

/-! ## A199115.P7154211489416456439

`(A199209(n)+1)/2`
-/

namespace A199115.P7154211489416456439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199209 n + 1 : ℚ) / 2

end

end A199115.P7154211489416456439

namespace A199115

/-- `(A199209(n)+1)/2` -/
def P7154211489416456439.Spec : Prop :=
  ∀ n, P7154211489416456439.a n = (A199115 n : ℚ)

theorem P7154211489416456439.correct : P7154211489416456439.Spec := by
  intro n
  simp only [A199115, Nat.add_sub_cancel, A199115.P7154211489416456439.a, A199115.P17558246874276297654.a, A199209, A199209.P9937275797404371116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199115

/-! ## A199115.P4772018057665756644

`3*(A135583(n)-1)`
-/

namespace A199115.P4772018057665756644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A135583 n - 1)

end

end A199115.P4772018057665756644

namespace A199115

/-- `3*(A135583(n)-1)` -/
def P4772018057665756644.Spec : Prop :=
  ∀ n, P4772018057665756644.a n = A199115 n

end A199115

/-! ## A199115.P15788735316441447096

`3*A048573(2*n)`
-/

namespace A199115.P15788735316441447096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048573 (2 * n)

end

end A199115.P15788735316441447096

namespace A199115

/-- `3*A048573(2*n)` -/
def P15788735316441447096.Spec : Prop :=
  ∀ n, P15788735316441447096.a n = A199115 n

end A199115

/-! ## A199115.P10801120586245354030

`3*(3-A165752(n))`
-/

namespace A199115.P10801120586245354030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 - A165752 n)

end

end A199115.P10801120586245354030

namespace A199115

/-- `3*(3-A165752(n))` -/
def P10801120586245354030.Spec : Prop :=
  ∀ n, P10801120586245354030.a n = A199115 n

end A199115

/-! ## A199115.P13546150867153377383

`3*A171231(2*n)`
-/

namespace A199115.P13546150867153377383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A171231 (2 * n)

end

end A199115.P13546150867153377383

namespace A199115

/-- `3*A171231(2*n)` -/
def P13546150867153377383.Spec : Prop :=
  ∀ n, P13546150867153377383.a n = A199115 n

end A199115

/-! ## A199115.P2925195252118689561

`3*A255138(2*n)`
-/

namespace A199115.P2925195252118689561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255138 (2 * n)

end

end A199115.P2925195252118689561

namespace A199115

/-- `3*A255138(2*n)` -/
def P2925195252118689561.Spec : Prop :=
  ∀ n, P2925195252118689561.a n = A199115 n

end A199115

/-!
# A199116: a(n) = 6*4^n + 1.

The programs for A199116, the canonical program `A199116.P5574724828079957201` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199116 has offset 0).

The definition of A199116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*4^n+1` (program `A199116.P5574724828079957201`, by `A199116.P5574724828079957201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199116.P5574724828079957201

`6*4^n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199116

/-- `6*4^n+1` -/
def P5574724828079957201.Spec : Prop :=
  ∀ n, (P5574724828079957201.a n : ℤ) = A199116 n

theorem P5574724828079957201.correct : P5574724828079957201.Spec := by
  intro n
  simp only [A199116]

end A199116

/-! ## A199116.P2442278981970507954

`ogf((7-10x)/(1-5x+4x^2))`
-/

namespace A199116.P2442278981970507954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -10] [1, -5, 4] n

end

end A199116.P2442278981970507954

namespace A199116

/-- `ogf((7-10x)/(1-5x+4x^2))` -/
def P2442278981970507954.Spec : Prop :=
  ∀ n, P2442278981970507954.a n = A199116 n

end A199116

/-! ## A199116.P13337571923360515475

`or(1, 6*4^n)`
-/

namespace A199116.P13337571923360515475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * 4 ^ n)

end

end A199116.P13337571923360515475

namespace A199116

/-- `or(1, 6*4^n)` -/
def P13337571923360515475.Spec : Prop :=
  ∀ n, (P13337571923360515475.a n : ℤ) = A199116 n

end A199116

/-! ## A199116.P11445550021397608157

`xor(1, 6*4^n)`
-/

namespace A199116.P11445550021397608157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * 4 ^ n)

end

end A199116.P11445550021397608157

namespace A199116

/-- `xor(1, 6*4^n)` -/
def P11445550021397608157.Spec : Prop :=
  ∀ n, (P11445550021397608157.a n : ℤ) = A199116 n

end A199116

/-! ## A199116.P1655755055004012035

`∑[4*a(n-1)]` with `a(0)=7, a(1)=18`
-/

namespace A199116.P1655755055004012035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 18] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199116.P1655755055004012035

namespace A199116

/-- `∑[4*a(n-1)]` -/
def P1655755055004012035.Spec : Prop :=
  ∀ n, (P1655755055004012035.a n : ℤ) = A199116 n

end A199116

/-! ## A199116.P2055125678225899752

`abs(3-4*a(n-1))` with `a(0)=7`
-/

namespace A199116.P2055125678225899752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  |3 - 4 * a (n - 1)|

end

end A199116.P2055125678225899752

namespace A199116

/-- `abs(3-4*a(n-1))` -/
def P2055125678225899752.Spec : Prop :=
  ∀ n, P2055125678225899752.a n = A199116 n

end A199116

/-! ## A199116.P216922229816122890

`or(2, Δ[4^(n+1)])/2`
-/

namespace A199116.P216922229816122890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A199116.P216922229816122890

namespace A199116

/-- `or(2, Δ[4^(n+1)])/2` -/
def P216922229816122890.Spec : Prop :=
  ∀ n, P216922229816122890.a n = (A199116 n : ℚ)

end A199116

/-! ## A199116.P6925029231604167275

`xor(2, Δ[4^(n+1)])/2`
-/

namespace A199116.P6925029231604167275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A199116.P6925029231604167275

namespace A199116

/-- `xor(2, Δ[4^(n+1)])/2` -/
def P6925029231604167275.Spec : Prop :=
  ∀ n, P6925029231604167275.a n = (A199116 n : ℚ)

end A199116

/-! ## A199116.P9124923268392535980

`record[3-2*a(n-1)]` with `a(0)=7`
-/

namespace A199116.P9124923268392535980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  3 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199116.P9124923268392535980

namespace A199116

/-- `record[3-2*a(n-1)]` -/
def P9124923268392535980.Spec : Prop :=
  ∀ n, P9124923268392535980.a n = A199116 n

end A199116

/-! ## A199116.P17613939475771530556

`record[Δ[(-2)^(n+1)]+1]`
-/

namespace A199116.P17613939475771530556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199116.P17613939475771530556

namespace A199116

/-- `record[Δ[(-2)^(n+1)]+1]` -/
def P17613939475771530556.Spec : Prop :=
  ∀ n, P17613939475771530556.a n = A199116 n

end A199116

/-! ## A199116.P3491979362315957444

`Δ[or(n, 2^(n+1+n))]`
-/

namespace A199116.P3491979362315957444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 ^ (n + 1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199116.P3491979362315957444

namespace A199116

/-- `Δ[or(n, 2^(n+1+n))]` -/
def P3491979362315957444.Spec : Prop :=
  ∀ n, P3491979362315957444.a n = A199116 n

end A199116

/-! ## A199116.P2759654738620074821

`Δ[xor(n, 2^(n+1+n))]`
-/

namespace A199116.P2759654738620074821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 ^ (n + 1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199116.P2759654738620074821

namespace A199116

/-- `Δ[xor(n, 2^(n+1+n))]` -/
def P2759654738620074821.Spec : Prop :=
  ∀ n, P2759654738620074821.a n = A199116 n

end A199116

/-! ## A199116.P5827499301025889398

`4*(a(n-1)-3/4)` with `a(0)=7`
-/

namespace A199116.P5827499301025889398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  4 * (a (n - 1) - (3 : ℚ) / 4)

end

end A199116.P5827499301025889398

namespace A199116

/-- `4*(a(n-1)-3/4)` -/
def P5827499301025889398.Spec : Prop :=
  ∀ n, P5827499301025889398.a n = (A199116 n : ℚ)

theorem P5827499301025889398.correct : P5827499301025889398.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199116, Nat.add_sub_cancel, A199116.P5827499301025889398.a, A199116.P5574724828079957201.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199116, Nat.add_sub_cancel, A199116.P5827499301025889398.a, A199116.P5574724828079957201.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199116

/-! ## A199116.P1914930603695846575

`floor(a(n-1)+3*(a(n-1)-1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199116.P1914930603695846575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 3 * (a (n - 1) - 1)

end

end A199116.P1914930603695846575

namespace A199116

/-- `floor(a(n-1)+3*(a(n-1)-1))` -/
def P1914930603695846575.Spec : Prop :=
  ∀ n, P1914930603695846575.a n = A199116 n

theorem P1914930603695846575.correct : P1914930603695846575.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199116, Nat.add_sub_cancel, A199116.P1914930603695846575.a, A199116.P5574724828079957201.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199116, Nat.add_sub_cancel, A199116.P1914930603695846575.a, A199116.P5574724828079957201.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199116

/-! ## A199116.P10351022621580468882

`floor(a(n-1)-3*(1-a(n-1)))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199116.P10351022621580468882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - 3 * (1 - a (n - 1))

end

end A199116.P10351022621580468882

namespace A199116

/-- `floor(a(n-1)-3*(1-a(n-1)))` -/
def P10351022621580468882.Spec : Prop :=
  ∀ n, P10351022621580468882.a n = A199116 n

theorem P10351022621580468882.correct : P10351022621580468882.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199116, Nat.add_sub_cancel, A199116.P10351022621580468882.a, A199116.P5574724828079957201.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199116, Nat.add_sub_cancel, A199116.P10351022621580468882.a, A199116.P5574724828079957201.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199116

/-! ## A199116.P18346209857751449326

`A181565(Δ[n²])`
-/

namespace A199116.P18346209857751449326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199116.P18346209857751449326

namespace A199116

/-- `A181565(Δ[n²])` -/
def P18346209857751449326.Spec : Prop :=
  ∀ n, P18346209857751449326.a n = A199116 n

end A199116

/-! ## A199116.P13807169765525164842

`A201630(Δ[n²])`
-/

namespace A199116.P13807169765525164842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201630 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199116.P13807169765525164842

namespace A199116

/-- `A201630(Δ[n²])` -/
def P13807169765525164842.Spec : Prop :=
  ∀ n, P13807169765525164842.a n = A199116 n

end A199116

/-! ## A199116.P13210573389319774041

`A280173(Δ[n²])`
-/

namespace A199116.P13210573389319774041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280173 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199116.P13210573389319774041

namespace A199116

/-- `A280173(Δ[n²])` -/
def P13210573389319774041.Spec : Prop :=
  ∀ n, P13210573389319774041.a n = A199116 n

end A199116

/-! ## A199116.P7208036031473977136

`A280345(Δ[n²])`
-/

namespace A199116.P7208036031473977136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280345 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199116.P7208036031473977136

namespace A199116

/-- `A280345(Δ[n²])` -/
def P7208036031473977136.Spec : Prop :=
  ∀ n, P7208036031473977136.a n = A199116 n

end A199116

/-! ## A199116.P12257226308092676786

`Δ[A221130(n+1)]`
-/

namespace A199116.P12257226308092676786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199116.P12257226308092676786

namespace A199116

/-- `Δ[A221130(n+1)]` -/
def P12257226308092676786.Spec : Prop :=
  ∀ n, P12257226308092676786.a n = A199116 n

end A199116

/-!
# A199117: Integer values of A048153(n)/n in the order they appear in A048153.

The programs for A199117, the canonical program `A199117.P5498081074860020057` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199117 has offset 1).

The definition of A199117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199117.P13624193483203937309

`A048153(lt[3*n, lcm(6, n)])/or(1, 3*n+1)`
-/

namespace A199117.P13624193483203937309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / (Nat.lor 1 (3 * n + 1) : ℚ)

end

end A199117.P13624193483203937309

namespace A199117

/-- `A048153(lt[3*n, lcm(6, n)])/or(1, 3*n+1)` -/
def P13624193483203937309.Spec : Prop :=
  ∀ n, P13624193483203937309.a n = (A199117 (n + 1) : ℚ)

end A199117

/-! ## A199117.P8346395907266987527

`A048153(∑[4/gcd(2, n)]-1)/or(1, 3*n+1)`
-/

namespace A199117.P8346395907266987527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048153 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat : ℚ) / (Nat.lor 1 (3 * n + 1) : ℚ)

end

end A199117.P8346395907266987527

namespace A199117

/-- `A048153(∑[4/gcd(2, n)]-1)/or(1, 3*n+1)` -/
def P8346395907266987527.Spec : Prop :=
  ∀ n, P8346395907266987527.a n = (A199117 (n + 1) : ℚ)

end A199117

/-! ## A199117.P15347524903276150836

`A048153(∑[3^and(1, n)]+n)/or(1, 3*n+1)`
-/

namespace A199117.P15347524903276150836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048153 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / (Nat.lor 1 (3 * n + 1) : ℚ)

end

end A199117.P15347524903276150836

namespace A199117

/-- `A048153(∑[3^and(1, n)]+n)/or(1, 3*n+1)` -/
def P15347524903276150836.Spec : Prop :=
  ∀ n, P15347524903276150836.a n = (A199117 (n + 1) : ℚ)

end A199117

/-! ## A199117.P14122108570482496484

`A231589(or(1, 3*n+1))%A084060(n)`
-/

namespace A199117.P14122108570482496484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231589 (Nat.lor 1 (3 * n + 1))) (A084060 n)

end

end A199117.P14122108570482496484

namespace A199117

/-- `A231589(or(1, 3*n+1))%A084060(n)` -/
def P14122108570482496484.Spec : Prop :=
  ∀ n, P14122108570482496484.a n = A199117 (n + 1)

end A199117

/-! ## A199117.P1558213182138704537

`A048153(or(1, 3*n+1))/lt[3, A020639(n+6)]`
-/

namespace A199117.P1558213182138704537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048153 (Nat.lor 1 (3 * n + 1)) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ)

end

end A199117.P1558213182138704537

namespace A199117

/-- `A048153(or(1, 3*n+1))/lt[3, A020639(n+6)]` -/
def P1558213182138704537.Spec : Prop :=
  ∀ n, P1558213182138704537.a n = (A199117 (n + 1) : ℚ)

end A199117

/-! ## A199117.P220154700639193143

`A231589(A007310(n+1))%A084060(n)`
-/

namespace A199117.P220154700639193143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231589 (A007310 (n + 1)).toNat) (A084060 n)

end

end A199117.P220154700639193143

namespace A199117

/-- `A231589(A007310(n+1))%A084060(n)` -/
def P220154700639193143.Spec : Prop :=
  ∀ n, P220154700639193143.a n = A199117 (n + 1)

end A199117

/-! ## A199117.P5498081074860020057

`floor(A048153(A007310(n+1))/A016777(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A199117

/-- `floor(A048153(A007310(n+1))/A016777(n))` -/
def P5498081074860020057.Spec : Prop :=
  ∀ n, P5498081074860020057.a n = A199117 (n + 1)

theorem P5498081074860020057.correct : P5498081074860020057.Spec := by
  intro n
  simp only [A199117, Nat.add_sub_cancel]

end A199117

/-! ## A199117.P14208695699928383768

`A048153(A007310(n+1))/Δ[A032528(n)]`
-/

namespace A199117.P14208695699928383768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048153 (A007310 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A199117.P14208695699928383768

namespace A199117

/-- `A048153(A007310(n+1))/Δ[A032528(n)]` -/
def P14208695699928383768.Spec : Prop :=
  ∀ n, P14208695699928383768.a n = (A199117 (n + 1) : ℚ)

end A199117

/-!
# A199118: Number of partitions of n into terms of (1,3)-Ulam sequence, cf. A002859.

The programs for A199118, there is no canonical definition to state claims against.
-/

/-! ## A199118.P16311851602139893628

`A248333(A347548(n+6)+3)`
-/

namespace A199118.P16311851602139893628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A347548 (n + 6) + 3).toNat

end

end A199118.P16311851602139893628

/-! ## A199118.P13477988273558024091

`A008616(A267757(n+1)%A111441(n+1))`
-/

namespace A199118.P13477988273558024091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.tmod (A267757 (n + 1)) (A111441 (n + 1))).toNat

end

end A199118.P13477988273558024091

/-! ## A199118.P15435843915989618598

`A394247(A306483(n))`
-/

namespace A199118.P15435843915989618598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A306483 n).toNat

end

end A199118.P15435843915989618598

/-! ## A199118.P7911166337230040979

`A280451(n)+A010060(A326256(3*(n+1)))`
-/

namespace A199118.P7911166337230040979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280451 n + A010060 (A326256 (3 * (n + 1))).toNat

end

end A199118.P7911166337230040979

/-!
# A199122: Number of partitions of n into terms of (2,3)-Ulam sequence, cf. A001857.

The programs for A199122, there is no canonical definition to state claims against.
-/

/-! ## A199122.P15230587760595538288

`A000700(∑[A120263(A182522(n))])`
-/

namespace A199122.P15230587760595538288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (A182522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199122.P15230587760595538288

/-! ## A199122.P9403771428743952408

`A000700(lt[A319885(n+1), A256598(2*n+1)])`
-/

namespace A199122.P9403771428743952408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256598 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A199122.P9403771428743952408

/-!
# A199123: Number of partitions of n into distinct terms of (2,3)-Ulam sequence, cf. A001857.

The programs for A199123, there is no canonical definition to state claims against.
-/

/-! ## A199123.P15430584998797403310

`A178487(A003114(3*(n+1))*A358011(n))`
-/

namespace A199123.P15430584998797403310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A003114 (3 * (n + 1)) * A358011 n).toNat

end

end A199123.P15430584998797403310

/-! ## A199123.P18441684900845076658

`A103921(lcm(A002622(n), A219107(n)))`
-/

namespace A199123.P18441684900845076658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (Int.lcm (A002622 n) (A219107 n))

end

end A199123.P18441684900845076658

/-! ## A199123.P17264018756406163101

`A224782(lcm(A077074(n), A154533(n)))`
-/

namespace A199123.P17264018756406163101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (Int.lcm (A077074 n) (A154533 n))

end

end A199123.P17264018756406163101

/-! ## A199123.P16952060633176734192

`A073490(A360885(n))+2*A184171(n)-A046675(n)`
-/

namespace A199123.P16952060633176734192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A360885 n).toNat + (2 * A184171 n - A046675 n)

end

end A199123.P16952060633176734192

/-! ## A199123.P5002757318071322491

`A081603(A001970(n+1)+∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A199123.P5002757318071322491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A001970 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ)).toNat

end

end A199123.P5002757318071322491

/-!
# A199124: Least prime having 1 more digit and higher sum of digits than the preceding term.

The programs for A199124, there is no canonical definition to state claims against.
-/

/-! ## A199124.P13945863422292174176

`10^n+A199190(n+1)`
-/

namespace A199124.P13945863422292174176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + A199190 (n + 1)

end

end A199124.P13945863422292174176

/-! ## A199124.P12846030590451861664

`A011557(n)+record[A199190(n+1)]`
-/

namespace A199124.P12846030590451861664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199124.P12846030590451861664

/-! ## A199124.P10085254899647001944

`A199190(n+1)+A002283(n)+1`
-/

namespace A199124.P10085254899647001944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199190 (n + 1) + A002283 n + 1

end

end A199124.P10085254899647001944

/-!
# A199125: Number of n X n 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199125, there is no canonical definition to state claims against.
-/

/-! ## A199125.P15979730124256994903

`A199133(∑[4*n]+1)`
-/

namespace A199125.P15979730124256994903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199125.P15979730124256994903

/-! ## A199125.P9278449773148299404

`and(-1, A199133(A001844(n)))`
-/

namespace A199125.P9278449773148299404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A199133 (A001844 n).toNat)

end

end A199125.P9278449773148299404

/-! ## A199125.P13190017481415726746

`record[A199133(A330613(n+1))]`
-/

namespace A199125.P13190017481415726746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199125.P13190017481415726746

/-! ## A199125.P10454124759269581025

`record[A003982(n)*A199133(n+1)]`
-/

namespace A199125.P10454124759269581025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A199133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199125.P10454124759269581025

/-! ## A199125.P4653011744748473720

`record[gcd(A112467(n), A199133(n+1))]`
-/

namespace A199125.P4653011744748473720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A199133 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199125.P4653011744748473720

/-!
# A199126: Number of nX1 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199126, there is no canonical definition to state claims against.
-/

/-! ## A199126.P13830405804243378047

`A199133(∑[n]+1)`
-/

namespace A199126.P13830405804243378047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199126.P13830405804243378047

/-! ## A199126.P5646054618743749312

`A199133(A000124(n))%A000747(n)`
-/

namespace A199126.P5646054618743749312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199133 (A000124 n).toNat) (A000747 n)

end

end A199126.P5646054618743749312

/-! ## A199126.P6449649345561933013

`gcd(A151878(n), A199133(A000124(n)))`
-/

namespace A199126.P6449649345561933013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A199133 (A000124 n).toNat)

end

end A199126.P6449649345561933013

/-! ## A199126.P13420860534558869941

`lcm(A033999(n), A199133(A000124(n)))`
-/

namespace A199126.P13420860534558869941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A199133 (A000124 n).toNat)

end

end A199126.P13420860534558869941

/-! ## A199126.P3603460039932059716

`or(A000007(n), A199133(A000124(n)))`
-/

namespace A199126.P3603460039932059716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A199133 (A000124 n).toNat)

end

end A199126.P3603460039932059716

/-!
# A199127: Number of n X 2 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199127, the canonical program `A199127.P12814231701045362921` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199127 has offset 1).

The definition of A199127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199127.P12814231701045362921

`A022916(A335129(n+4))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A199127

/-- `A022916(A335129(n+4))` -/
def P12814231701045362921.Spec : Prop :=
  ∀ n, P12814231701045362921.a n = A199127 (n + 1)

theorem P12814231701045362921.correct : P12814231701045362921.Spec := by
  intro n
  simp only [A199127, Nat.add_sub_cancel]

end A199127

/-! ## A199127.P11753750690574068967

`A036453(n+1)*A199094(n+1)`
-/

namespace A199127.P11753750690574068967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A199094 (n + 1)

end

end A199127.P11753750690574068967

namespace A199127

/-- `A036453(n+1)*A199094(n+1)` -/
def P11753750690574068967.Spec : Prop :=
  ∀ n, P11753750690574068967.a n = A199127 (n + 1)

end A199127

/-! ## A199127.P4627338195442411981

`A020639(A008458(n))*A199094(n+1)`
-/

namespace A199127.P4627338195442411981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A199094 (n + 1)

end

end A199127.P4627338195442411981

namespace A199127

/-- `A020639(A008458(n))*A199094(n+1)` -/
def P4627338195442411981.Spec : Prop :=
  ∀ n, P4627338195442411981.a n = A199127 (n + 1)

end A199127

/-! ## A199127.P16606660947611039658

`A020639(A008574(n))*A199094(n+1)`
-/

namespace A199127.P16606660947611039658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A199094 (n + 1)

end

end A199127.P16606660947611039658

namespace A199127

/-- `A020639(A008574(n))*A199094(n+1)` -/
def P16606660947611039658.Spec : Prop :=
  ∀ n, P16606660947611039658.a n = A199127 (n + 1)

end A199127

/-! ## A199127.P488779869915287674

`A020639(A103517(n))*A199094(n+1)`
-/

namespace A199127.P488779869915287674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A199094 (n + 1)

end

end A199127.P488779869915287674

namespace A199127

/-- `A020639(A103517(n))*A199094(n+1)` -/
def P488779869915287674.Spec : Prop :=
  ∀ n, P488779869915287674.a n = A199127 (n + 1)

end A199127

/-! ## A199127.P11220155257761590733

`A000034(A000040(n+1))*A199094(n+1)`
-/

namespace A199127.P11220155257761590733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000040 (n + 1)).toNat * A199094 (n + 1)

end

end A199127.P11220155257761590733

namespace A199127

/-- `A000034(A000040(n+1))*A199094(n+1)` -/
def P11220155257761590733.Spec : Prop :=
  ∀ n, P11220155257761590733.a n = A199127 (n + 1)

end A199127

/-! ## A199127.P14761566865637909482

`A000005(A008578(n+1))*A199094(n+1)`
-/

namespace A199127.P14761566865637909482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A199094 (n + 1)

end

end A199127.P14761566865637909482

namespace A199127

/-- `A000005(A008578(n+1))*A199094(n+1)` -/
def P14761566865637909482.Spec : Prop :=
  ∀ n, P14761566865637909482.a n = A199127 (n + 1)

end A199127

/-! ## A199127.P3584659420963479768

`A020639(A073659(n+1))*A199094(n+1)`
-/

namespace A199127.P3584659420963479768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A073659 (n + 1)).toNat * A199094 (n + 1)

end

end A199127.P3584659420963479768

namespace A199127

/-- `A020639(A073659(n+1))*A199094(n+1)` -/
def P3584659420963479768.Spec : Prop :=
  ∀ n, P3584659420963479768.a n = A199127 (n + 1)

end A199127

/-! ## A199127.P8067067631342204144

`A141056(A242332(n+1))*A199094(n+1)`
-/

namespace A199127.P8067067631342204144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (A242332 (n + 1)).toNat * A199094 (n + 1)

end

end A199127.P8067067631342204144

namespace A199127

/-- `A141056(A242332(n+1))*A199094(n+1)` -/
def P8067067631342204144.Spec : Prop :=
  ∀ n, P8067067631342204144.a n = A199127 (n + 1)

end A199127

/-!
# A199128: Number of nX3 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199128, there is no canonical definition to state claims against.
-/

/-! ## A199128.P5141151200604887435

`A264955(n+1)/6`
-/

namespace A199128.P5141151200604887435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264955 (n + 1) : ℚ) / 6

end

end A199128.P5141151200604887435

/-! ## A199128.P4931990330706049508

`A199133(∑[n+2]+4)`
-/

namespace A199128.P4931990330706049508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199128.P4931990330706049508

/-! ## A199128.P7848181730459088059

`A199133(A167614(n+1))%(n+2)!`
-/

namespace A199128.P7848181730459088059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199133 (A167614 (n + 1)).toNat) (Nat.factorial (n + 2) : ℤ)

end

end A199128.P7848181730459088059

/-! ## A199128.P15825591016312634049

`lcm(A001221(n+2), A199133(A167614(n+1)))`
-/

namespace A199128.P15825591016312634049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A199133 (A167614 (n + 1)).toNat)

end

end A199128.P15825591016312634049

/-! ## A199128.P14859140031016445607

`A007318(C(n, 2))*A199133(A167614(n+1))`
-/

namespace A199128.P14859140031016445607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A199133 (A167614 (n + 1)).toNat

end

end A199128.P14859140031016445607

/-!
# A199129: Number of nX4 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199129, there is no canonical definition to state claims against.
-/

/-! ## A199129.P4459088772053421683

`A199133(A374004(n+1))`
-/

namespace A199129.P4459088772053421683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A374004 (n + 1)).toNat

end

end A199129.P4459088772053421683

/-! ## A199129.P9093683496891875247

`A199133(A141214(n)+7)`
-/

namespace A199129.P9093683496891875247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A141214 n + 7).toNat

end

end A199129.P9093683496891875247

/-! ## A199129.P9395379091884991998

`A199133(A052905(n)+9)`
-/

namespace A199129.P9395379091884991998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A052905 n + 9).toNat

end

end A199129.P9395379091884991998

/-! ## A199129.P16770287477016458285

`A199133(A055999(n)+10)`
-/

namespace A199129.P16770287477016458285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A055999 n + 10).toNat

end

end A199129.P16770287477016458285

/-! ## A199129.P4642758886738268540

`A199133(A167614(n+2)+1)`
-/

namespace A199129.P4642758886738268540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A167614 (n + 2) + 1).toNat

end

end A199129.P4642758886738268540

/-!
# A199130: Number of nX5 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199130, there is no canonical definition to state claims against.
-/

/-! ## A199130.P3605025090338024476

`A199133(A374005(n+1))`
-/

namespace A199130.P3605025090338024476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A374005 (n + 1)).toNat

end

end A199130.P3605025090338024476

/-! ## A199130.P18323669496249033916

`A199133(A167499(n+3))`
-/

namespace A199130.P18323669496249033916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A167499 (n + 3)).toNat

end

end A199130.P18323669496249033916

/-! ## A199130.P3164795959522216170

`A199133(A155212(n)+13)`
-/

namespace A199130.P3164795959522216170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A155212 n + 13).toNat

end

end A199130.P3164795959522216170

/-! ## A199130.P15683728712304984516

`A199133(eq[7, A066657(n)])`
-/

namespace A199130.P15683728712304984516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199130.P15683728712304984516

/-! ## A199130.P8337275774900139364

`A199133(Δ[A264443(n)])`
-/

namespace A199130.P8337275774900139364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (f1 (n + 1) - f1 n).toNat

end

end A199130.P8337275774900139364

/-!
# A199131: Number of nX6 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199131, there is no canonical definition to state claims against.
-/

/-! ## A199131.P1568370522874550279

`A199133(C(n+6, 2)+6)`
-/

namespace A199131.P1568370522874550279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (Nat.choose (n + 6) 2 + 6)

end

end A199131.P1568370522874550279

/-! ## A199131.P17079746997511199962

`A199133(A374007(n+1))`
-/

namespace A199131.P17079746997511199962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A374007 (n + 1)).toNat

end

end A199131.P17079746997511199962

/-! ## A199131.P8596482221906177013

`A199133(A166136(n+4))`
-/

namespace A199131.P8596482221906177013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A166136 (n + 4)).toNat

end

end A199131.P8596482221906177013

/-! ## A199131.P14138762706934169893

`A199133(A055998(n+3)+9)`
-/

namespace A199131.P14138762706934169893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A055998 (n + 3) + 9).toNat

end

end A199131.P14138762706934169893

/-! ## A199131.P11124811394342476522

`A199133(Δ[A023545(n+1)]+10)`
-/

namespace A199131.P11124811394342476522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (f1 (n + 1) - f1 n + 10).toNat

end

end A199131.P11124811394342476522

/-!
# A199132: Number of nX7 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199132, there is no canonical definition to state claims against.
-/

/-! ## A199132.P2029277241072734026

`A199133(A374008(n+1))`
-/

namespace A199132.P2029277241072734026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A374008 (n + 1)).toNat

end

end A199132.P2029277241072734026

/-! ## A199132.P14462684102392220261

`A199133(A056119(n)+28)`
-/

namespace A199132.P14462684102392220261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A056119 n + 28).toNat

end

end A199132.P14462684102392220261

/-! ## A199132.P4638768878756175808

`A199133(eq[11, A066657(n)])`
-/

namespace A199132.P4638768878756175808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199132.P4638768878756175808

/-! ## A199132.P15325063127258738665

`A199133(A052905(n+3)+12)`
-/

namespace A199132.P15325063127258738665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A052905 (n + 3) + 12).toNat

end

end A199132.P15325063127258738665

/-! ## A199132.P18096600279641309079

`A199133(eq[8, A131818(n+1)])`
-/

namespace A199132.P18096600279641309079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199132.P18096600279641309079

/-!
# A199133: T(n,k)=Number of nXk 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199133, there is no canonical definition to state claims against.
-/

/-! ## A199133.P3723148032945560976

`A199246(gcd((n+1)*(n+3)², (n+1)*Δ[n^3]))`
-/

namespace A199133.P3723148032945560976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (Int.gcd ((n + 1) * (n + 3) ^ 2 : ℤ) ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))))

end

end A199133.P3723148032945560976

/-! ## A199133.P6985723921830809215

`A090106(A199246(n+1))`
-/

namespace A199133.P6985723921830809215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A199246 (n + 1)).toNat

end

end A199133.P6985723921830809215

/-! ## A199133.P16405820209919959142

`A199246(A001222(2^(n+1)))`
-/

namespace A199133.P16405820209919959142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A001222 (2 ^ (n + 1))).toNat

end

end A199133.P16405820209919959142

/-! ## A199133.P18277372331597207602

`A006577(2^A199246(n+1))`
-/

namespace A199133.P18277372331597207602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A199246 (n + 1) : ℤ))).toNat

end

end A199133.P18277372331597207602

/-! ## A199133.P13017523663897339049

`A051904(2^A199246(n+1))`
-/

namespace A199133.P13017523663897339049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A199246 (n + 1) : ℤ))).toNat

end

end A199133.P13017523663897339049

/-!
# A199134: Indices of Greedy Queens (see A065188) below main diagonal.

The programs for A199134, there is no canonical definition to state claims against.
-/

/-! ## A199134.P17721237324619120883

`A275893(n)+1`
-/

namespace A199134.P17721237324619120883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 n + 1

end

end A199134.P17721237324619120883

/-! ## A199134.P1267509005505631480

`comp[A275894(n)]+1`
-/

namespace A199134.P1267509005505631480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A199134.P1267509005505631480

/-! ## A199134.P9379921823440716998

`A275889(n)+a(n-1)` with `a(0)=4`
-/

namespace A199134.P9379921823440716998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A275889 n + a (n - 1)

end

end A199134.P9379921823440716998

/-! ## A199134.P16281105387849643776

`n-(A023443(n)-A275893(n))`
-/

namespace A199134.P16281105387849643776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A275893 n)

end

end A199134.P16281105387849643776

/-! ## A199134.P15104525304037681559

`A003842(n)-(A003849(n)-A275893(n))`
-/

namespace A199134.P15104525304037681559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n - (A003849 n - A275893 n)

end

end A199134.P15104525304037681559

/-! ## A199134.P2098398240929319810

`A065189(A294428(n+1))`
-/

namespace A199134.P2098398240929319810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (A294428 (n + 1)).toNat

end

end A199134.P2098398240929319810

/-! ## A199134.P10469242455403485409

`A275896(A294428(n+1)-1)+1`
-/

namespace A199134.P10469242455403485409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (A294428 (n + 1) - 1).toNat + 1

end

end A199134.P10469242455403485409

/-! ## A199134.P174424947055284038

`A020725(A275893(n))`
-/

namespace A199134.P174424947055284038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A275893 n).toNat

end

end A199134.P174424947055284038

/-! ## A199134.P8871436362652445555

`lt[A275895(n), n]+1`
-/

namespace A199134.P8871436362652445555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A199134.P8871436362652445555

/-! ## A199134.P13327695885957584622

`lt[A065185(n+2), 0]+2`
-/

namespace A199134.P13327695885957584622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A199134.P13327695885957584622

/-!
# A199135: Number of realizable assembly words with n rigid vertices.

The programs for A199135, there is no canonical definition to state claims against.
-/

/-! ## A199135.P7396133070413916094

`A052382(A127128(n+1))+A001318(n)`
-/

namespace A199135.P7396133070413916094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A127128 (n + 1)).toNat + A001318 n

end

end A199135.P7396133070413916094

/-!
# A199136: Number of irreducible assembly words with n rigid vertices.

The programs for A199136, there is no canonical definition to state claims against.
-/

/-! ## A199136.P6707271966675245248

`A364062(∑[4*n]+1)`
-/

namespace A199136.P6707271966675245248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364062 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199136.P6707271966675245248

/-!
# A199137: G.f. satisfies: A(x) = exp( Sum_{n>=1} C(2*n,n)/2 * A(x^n) * x^n/n ).

The programs for A199137, there is no canonical definition to state claims against.
-/

/-! ## A199137.P13219863856499217611

`A339843(n)+A055641(A042482(n))`
-/

namespace A199137.P13219863856499217611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339843 n + A055641 (A042482 n).toNat

end

end A199137.P13219863856499217611

/-! ## A199137.P16045167837586083376

`A215020(A215037(n))+A081696(n)`
-/

namespace A199137.P16045167837586083376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215020 (A215037 n).toNat + A081696 n

end

end A199137.P16045167837586083376

/-! ## A199137.P11528720186997263185

`A339843(n)+A182581(A002294(n))`
-/

namespace A199137.P11528720186997263185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339843 n + A182581 (A002294 n).toNat

end

end A199137.P11528720186997263185

/-!
# A199138: Number of prime assembly words with n rigid vertices.

The programs for A199138, there is no canonical definition to state claims against.
-/

/-! ## A199138.P15900451611444748512

`A004273(A138212(n))`
-/

namespace A199138.P15900451611444748512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A138212 n).toNat

end

end A199138.P15900451611444748512

/-! ## A199138.P16646129179784355689

`A005408(A138212(n)-1)`
-/

namespace A199138.P16646129179784355689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A138212 n - 1).toNat

end

end A199138.P16646129179784355689

/-!
# A199139: Number of assembly graphs with n rigid vertices and assembly number 2.

The programs for A199139, there is no canonical definition to state claims against.
-/

/-! ## A199139.P13212268238028148111

`round(A001921(n)/166)`
-/

namespace A199139.P13212268238028148111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001921 n : ℚ) / 166)

end

end A199139.P13212268238028148111

/-!
# A199140: Number of assembly graphs with n rigid vertices and no crossings.

The programs for A199140, there is no canonical definition to state claims against.
-/

/-! ## A199140.P292103811927956822

`A368095(2*(n+1))+A005669(A050033(n+1))`
-/

namespace A199140.P292103811927956822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368095 (2 * (n + 1)) + A005669 (A050033 (n + 1)).toNat

end

end A199140.P292103811927956822

/-!
# A199141: Number of n X n 0..3 arrays with values 0..3 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199141, there is no canonical definition to state claims against.
-/

/-! ## A199141.P16142825007656931567

`A199149(∑[4*n]+1)`
-/

namespace A199141.P16142825007656931567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199141.P16142825007656931567

/-!
# A199142: Number of n X 1 0..3 arrays with values 0..3 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199142, the canonical program `A199142.P7959540127299029398` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199142 has offset 1).

The definition of A199142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199142.P12290066433435499027

`ogf((x-2x^2-2x^3+3x^4+x^5)/(1-3x-x^2+7x^3-x^4-3x^5))`
-/

namespace A199142.P12290066433435499027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, -2, 3, 1] [1, -3, -1, 7, -1, -3] n

end

end A199142.P12290066433435499027

namespace A199142

/-- `ogf((x-2x^2-2x^3+3x^4+x^5)/(1-3x-x^2+7x^3-x^4-3x^5))` -/
def P12290066433435499027.Spec : Prop :=
  ∀ n, P12290066433435499027.a n = A199142 (n + 1)

end A199142

/-! ## A199142.P7959540127299029398

`3*a(n-1)+a(n-2)-7*a(n-3)+a(n-4)+3*a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A199142

/-- `3*a(n-1)+a(n-2)-7*a(n-3)+a(n-4)+3*a(n-5)` -/
def P7959540127299029398.Spec : Prop :=
  ∀ n, P7959540127299029398.a n = A199142 (n + 1)

theorem P7959540127299029398.correct : P7959540127299029398.Spec := by
  intro n
  simp only [A199142, Nat.add_sub_cancel]

end A199142

/-! ## A199142.P7526711441578360614

`A199149(∑[n]+1)`
-/

namespace A199142.P7526711441578360614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199142.P7526711441578360614

namespace A199142

/-- `A199149(∑[n]+1)` -/
def P7526711441578360614.Spec : Prop :=
  ∀ n, P7526711441578360614.a n = A199142 (n + 1)

end A199142

/-! ## A199142.P13694504435074569573

`A241349(∑[n]+1)`
-/

namespace A199142.P13694504435074569573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199142.P13694504435074569573

namespace A199142

/-- `A241349(∑[n]+1)` -/
def P13694504435074569573.Spec : Prop :=
  ∀ n, P13694504435074569573.a n = A199142 (n + 1)

end A199142

/-! ## A199142.P4734610761729755869

`or(char[1], A241349(A000124(n)))`
-/

namespace A199142.P4734610761729755869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A241349 (A000124 n).toNat)

end

end A199142.P4734610761729755869

namespace A199142

/-- `or(char[1], A241349(A000124(n)))` -/
def P4734610761729755869.Spec : Prop :=
  ∀ n, P4734610761729755869.a n = A199142 (n + 1)

end A199142

/-!
# A199143: Number of nX2 0..3 arrays with values 0..3 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199143, there is no canonical definition to state claims against.
-/

/-! ## A199143.P11737177102898517181

`A199149(∑[n+1]+2)`
-/

namespace A199143.P11737177102898517181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199143.P11737177102898517181

/-! ## A199143.P4335682801510030507

`record[root(A199149(n+2), A059268(n))]`
-/

namespace A199143.P4335682801510030507
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A199149 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199143.P4335682801510030507

/-! ## A199143.P1876390459278392934

`record[gcd(A159854(n), A199149(n+1))]`
-/

namespace A199143.P1876390459278392934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159854 n) (A199149 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199143.P1876390459278392934

/-! ## A199143.P6242003196806825157

`record[gcd(A055137(n), A199149(n+4))]`
-/

namespace A199143.P6242003196806825157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A199149 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199143.P6242003196806825157

/-! ## A199143.P2704466070365815706

`A199149(A000096(n)+3)*A226444(n)`
-/

namespace A199143.P2704466070365815706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A000096 n + 3).toNat * A226444 n

end

end A199143.P2704466070365815706

/-!
# A199144: Number of n X 3 0..3 arrays with values 0..3 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199144, there is no canonical definition to state claims against.
-/

/-! ## A199144.P11313535825128399266

`A199149(∑[n+2]+4)`
-/

namespace A199144.P11313535825128399266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199144.P11313535825128399266

/-! ## A199144.P6321121674085202710

`record[gcd(A199149(n+1), A303913(n))]`
-/

namespace A199144.P6321121674085202710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A199149 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199144.P6321121674085202710

/-! ## A199144.P6235260446622374967

`A199149(A167614(n+1))+A185036(n)`
-/

namespace A199144.P6235260446622374967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A167614 (n + 1)).toNat + A185036 n

end

end A199144.P6235260446622374967

/-! ## A199144.P957613356957475782

`A199149(A167614(n+1))+A185236(n)`
-/

namespace A199144.P957613356957475782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A167614 (n + 1)).toNat + A185236 n

end

end A199144.P957613356957475782

/-! ## A199144.P339897202878593983

`A326455(n)+A199149(A167614(n+1))`
-/

namespace A199144.P339897202878593983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n + A199149 (A167614 (n + 1)).toNat

end

end A199144.P339897202878593983

/-!
# A199145: Number of nX4 0..3 arrays with values 0..3 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199145, there is no canonical definition to state claims against.
-/

/-! ## A199145.P13860334172469684031

`A199149(A374004(n+1))`
-/

namespace A199145.P13860334172469684031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A374004 (n + 1)).toNat

end

end A199145.P13860334172469684031

/-! ## A199145.P2310832246818790634

`A199149(A141214(n)+7)`
-/

namespace A199145.P2310832246818790634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A141214 n + 7).toNat

end

end A199145.P2310832246818790634

/-! ## A199145.P8776158668608471493

`A199149(A052905(n)+9)`
-/

namespace A199145.P8776158668608471493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A052905 n + 9).toNat

end

end A199145.P8776158668608471493

/-! ## A199145.P10876858657198687119

`A199149(A055999(n)+10)`
-/

namespace A199145.P10876858657198687119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A055999 n + 10).toNat

end

end A199145.P10876858657198687119

/-! ## A199145.P4629376752428029900

`A199149(A167614(n+2)+1)`
-/

namespace A199145.P4629376752428029900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A167614 (n + 2) + 1).toNat

end

end A199145.P4629376752428029900

/-!
# A199146: Number of nX5 0..3 arrays with values 0..3 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199146, there is no canonical definition to state claims against.
-/

/-! ## A199146.P2860007326227967159

`A199149(A374005(n+1))`
-/

namespace A199146.P2860007326227967159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A374005 (n + 1)).toNat

end

end A199146.P2860007326227967159

/-! ## A199146.P366372519916898606

`A199149(A155212(n)+13)`
-/

namespace A199146.P366372519916898606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A155212 n + 13).toNat

end

end A199146.P366372519916898606

/-! ## A199146.P16492250501032848490

`A199149(eq[7, A066657(n)])`
-/

namespace A199146.P16492250501032848490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199146.P16492250501032848490

/-! ## A199146.P1915287650460292283

`A199149(A000096(n+3)+6)`
-/

namespace A199146.P1915287650460292283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A000096 (n + 3) + 6).toNat

end

end A199146.P1915287650460292283

/-! ## A199146.P655512133153156169

`A199149(eq[6, A131818(n+1)])`
-/

namespace A199146.P655512133153156169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199146.P655512133153156169

/-!
# A199147: Number of nX6 0..3 arrays with values 0..3 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199147, there is no canonical definition to state claims against.
-/

/-! ## A199147.P4308849925463327940

`A199149(A374007(n+1))`
-/

namespace A199147.P4308849925463327940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A374007 (n + 1)).toNat

end

end A199147.P4308849925463327940

/-! ## A199147.P15286277307412510077

`A199149(eq[8, A243070(n+1)])`
-/

namespace A199147.P15286277307412510077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199147.P15286277307412510077

/-!
# A199148: Number of nX7 0..3 arrays with values 0..3 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199148, there is no canonical definition to state claims against.
-/

/-! ## A199148.P12880536272555030200

`A199149(A374008(n+1))`
-/

namespace A199148.P12880536272555030200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (A374008 (n + 1)).toNat

end

end A199148.P12880536272555030200

/-!
# A199149: T(n,k)=Number of nXk 0..3 arrays with values 0..3 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A199149, there is no canonical definition to state claims against.
-/

/-! ## A199149.P16024669658025196481

`A198669(n+1)-A185033(A185036(n))`
-/

namespace A199149.P16024669658025196481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (n + 1) - A185033 (A185036 n).toNat

end

end A199149.P16024669658025196481

/-! ## A199149.P1527459212683529583

`A198669(n+1)-A185033(A185236(n))`
-/

namespace A199149.P1527459212683529583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (n + 1) - A185033 (A185236 n).toNat

end

end A199149.P1527459212683529583

/-! ## A199149.P11518381259530436655

`A198669(n+1)-A008687(A090318(n+1))`
-/

namespace A199149.P11518381259530436655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (n + 1) - A008687 (A090318 (n + 1)).toNat

end

end A199149.P11518381259530436655

/-! ## A199149.P15686064171854960560

`A198669(n+1)-A285007(A284997(n+1))`
-/

namespace A199149.P15686064171854960560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (n + 1) - A285007 (A284997 (n + 1)).toNat

end

end A199149.P15686064171854960560

/-! ## A199149.P12584312408708281382

`A198669(A043320(n+1))`
-/

namespace A199149.P12584312408708281382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (A043320 (n + 1)).toNat

end

end A199149.P12584312408708281382

/-!
# A199163: E.g.f.: Product_{n>=1} 1/(1 - x^n/n!)^(2^n).

The programs for A199163, there is no canonical definition to state claims against.
-/

/-! ## A199163.P16872461941639247929

`A049692(A018927(n+1)+1)-A220800(n+1)`
-/

namespace A199163.P16872461941639247929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049692 (A018927 (n + 1) + 1).toNat - A220800 (n + 1)

end

end A199163.P16872461941639247929

/-!
# A199164: G.f.: exp( Sum_{n>=1} (x^n/n) / [Sum_{k=0..n} C(n,k)^2*(-x)^k] ).

The programs for A199164, there is no canonical definition to state claims against.
-/

/-! ## A199164.P9862524989785017643

`floor((A233583(n!+1)+n)/ϕ)`
-/

namespace A199164.P9862524989785017643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A233583 (Nat.factorial n + 1) + (n : ℤ) : ℝ) / Real.goldenRatio⌋

end

end A199164.P9862524989785017643

/-! ## A199164.P16726699850780304338

`n*a(n-1)-A064514(a(n-1))` with `a(0)=1`
-/

namespace A199164.P16726699850780304338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A064514 (a (n - 1)).toNat

end

end A199164.P16726699850780304338

/-! ## A199164.P119024757841781022

`n*a(n-1)-A196055(a(n-1))` with `a(0)=1`
-/

namespace A199164.P119024757841781022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A196055 (a (n - 1)).toNat

end

end A199164.P119024757841781022

/-!
# A199166: Smallest number with all identical digits having n prime factors with multiplicity.

The programs for A199166, there is no canonical definition to state claims against.
-/

/-! ## A199166.P12575243918624563157

`A055035(ceil(10^n/9)+3)`
-/

namespace A199166.P12575243918624563157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (⌈(10 ^ n : ℚ) / 9⌉ + 3).toNat

end

end A199166.P12575243918624563157

/-!
# A199168: Numbers whose digits are a permutation of (0,...,m) for some m.

The programs for A199168, there is no canonical definition to state claims against.
-/

/-! ## A199168.P17805252221535705976

`∩[A215014(n+1), A107411(n)]`
-/

namespace A199168.P17805252221535705976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199168.P17805252221535705976

/-! ## A199168.P16812963304397729858

`∩[A215014(n+1), A394775(n+1)]`
-/

namespace A199168.P16812963304397729858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199168.P16812963304397729858

/-! ## A199168.P4278503839897660477

`∩[A376300(n+1), A107411(n)]`
-/

namespace A199168.P4278503839897660477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199168.P4278503839897660477

/-! ## A199168.P15487577646161400664

`∩[A376300(n+1), A394775(n+1)]`
-/

namespace A199168.P15487577646161400664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199168.P15487577646161400664

/-! ## A199168.P3359703116557941326

`∩[A215014(n+1), A305701(n+1)]`
-/

namespace A199168.P3359703116557941326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199168.P3359703116557941326

/-! ## A199168.P1748738930574428158

`∩[A305701(n+1), A376300(n+1)]`
-/

namespace A199168.P1748738930574428158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199168.P1748738930574428158

/-! ## A199168.P1788968458426097314

`∩[A043489(n+1), A215014(n+1)]`
-/

namespace A199168.P1788968458426097314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199168.P1788968458426097314

/-! ## A199168.P14686723633765680295

`∩[A043489(n+1), A394775(n+1)]`
-/

namespace A199168.P14686723633765680295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199168.P14686723633765680295

/-! ## A199168.P4725814068780868943

`∩[A011540(n+1), A215014(n+1)]`
-/

namespace A199168.P4725814068780868943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199168.P4725814068780868943

/-!
# A199190: Least integer having a larger digital sum than the previous term and such that 10^(n-1) + a(n) is a prime.

The programs for A199190, there is no canonical definition to state claims against.
-/

/-! ## A199190.P13460997375600058955

`A199124(n+1)-10^n`
-/

namespace A199190.P13460997375600058955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199124 (n + 1) - (10 ^ n : ℤ)

end

end A199190.P13460997375600058955

/-! ## A199190.P14365739617284111711

`abs(A199124(n+1)-A011557(n))`
-/

namespace A199190.P14365739617284111711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199124 (n + 1) - A011557 n|

end

end A199190.P14365739617284111711

/-! ## A199190.P5407464088508873586

`(A199124(n+1)-A011557(n))*A000041(C(2, n+2))`
-/

namespace A199190.P5407464088508873586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A199124 (n + 1) - A011557 n) * A000041 (Nat.choose 2 (n + 2))

end

end A199190.P5407464088508873586

/-! ## A199190.P1364367431041247338

`A199124(n+1)-A011557(n)-2%A000041(C(2, n))`
-/

namespace A199190.P1364367431041247338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199124 (n + 1) - A011557 n - Int.tmod 2 (A000041 (Nat.choose 2 n))

end

end A199190.P1364367431041247338

/-! ## A199190.P17947919312311766051

`(A199124(n+1)-A011557(n))/A014963(2*n+1)%2`
-/

namespace A199190.P17947919312311766051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199124 (n + 1) - A011557 n : ℚ) / (Int.tmod (A014963 (2 * n + 1)) 2 : ℚ)

end

end A199190.P17947919312311766051

/-!
# A199191: Numbers k such that 3^(2k-3) + 3^(k-1) + 1 is prime.

The programs for A199191, there is no canonical definition to state claims against.
-/

/-! ## A199191.P2724153018810675859

`A176008(n+1)+1`
-/

namespace A199191.P2724153018810675859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176008 (n + 1) + 1

end

end A199191.P2724153018810675859

/-! ## A199191.P1668633903014790632

`A020725(A176008(n+1))`
-/

namespace A199191.P1668633903014790632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A176008 (n + 1)).toNat

end

end A199191.P1668633903014790632

/-!
# A199192: Primes of the form 3^(2n-3)+3^(n-1)+1.

The programs for A199192, there is no canonical definition to state claims against.
-/

/-! ## A199192.P5718192698911648904

`A198410(A199191(n+1))`
-/

namespace A199192.P5718192698911648904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198410 (A199191 (n + 1)).toNat

end

end A199192.P5718192698911648904

/-! ## A199192.P3996207529185866747

`A198410(A176008(n+1)+1)`
-/

namespace A199192.P3996207529185866747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198410 (A176008 (n + 1) + 1).toNat

end

end A199192.P3996207529185866747

/-! ## A199192.P10590858535692017602

`∩[A239710(n+1), A154105(n)]`
-/

namespace A199192.P10590858535692017602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199192.P10590858535692017602

/-!
# A199193: Number of n X n 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199193, there is no canonical definition to state claims against.
-/

/-! ## A199193.P9668354472681684148

`A199201(∑[4*n]+1)`
-/

namespace A199193.P9668354472681684148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199193.P9668354472681684148

/-!
# A199194: Number of nX1 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199194, there is no canonical definition to state claims against.
-/

/-! ## A199194.P615270611501378197

`A199256(∑[n]+1)`
-/

namespace A199194.P615270611501378197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199194.P615270611501378197

/-! ## A199194.P142161217316677060

`and(-1, A199256(A000124(n)))`
-/

namespace A199194.P142161217316677060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A199256 (A000124 n).toNat)

end

end A199194.P142161217316677060

/-! ## A199194.P6916224047962957835

`A000027(A199256(C(n+1, 2)+1))`
-/

namespace A199194.P6916224047962957835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A199256 (Nat.choose (n + 1) 2 + 1)).toNat

end

end A199194.P6916224047962957835

/-! ## A199194.P14723345570309536415

`A119335(n)*A199256(A000124(n))`
-/

namespace A199194.P14723345570309536415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A199256 (A000124 n).toNat

end

end A199194.P14723345570309536415

/-! ## A199194.P1938226320877107986

`A175782(n)*A199256(A000124(n))`
-/

namespace A199194.P1938226320877107986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175782 n * A199256 (A000124 n).toNat

end

end A199194.P1938226320877107986

/-!
# A199195: Number of nX2 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199195, there is no canonical definition to state claims against.
-/

/-! ## A199195.P15758808901252514649

`A199201(∑[dr(n)+2])`
-/

namespace A199195.P15758808901252514649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199195.P15758808901252514649

/-! ## A199195.P1034784977203001068

`A199201(∑[n+1]+2)`
-/

namespace A199195.P1034784977203001068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199195.P1034784977203001068

/-! ## A199195.P13893878121509803288

`A199201(A133263(n+1))%Δ[5^n]`
-/

namespace A199195.P13893878121509803288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199201 (A133263 (n + 1)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199195.P13893878121509803288

/-! ## A199195.P3781757654217314791

`or(A023969(n), A199201(A000096(n)+3))`
-/

namespace A199195.P3781757654217314791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023969 n) (A199201 (A000096 n + 3).toNat)

end

end A199195.P3781757654217314791

/-! ## A199195.P1147821166975825343

`A139040(n+1)*A199201(A000096(n)+3)`
-/

namespace A199195.P1147821166975825343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (n + 1) * A199201 (A000096 n + 3).toNat

end

end A199195.P1147821166975825343

/-!
# A199196: Number of nX3 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199196, there is no canonical definition to state claims against.
-/

/-! ## A199196.P7054427563222475262

`A199201(∑[n+2]+4)`
-/

namespace A199196.P7054427563222475262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199196.P7054427563222475262

/-! ## A199196.P6384818346635291855

`record[A010054(n)*A199201(n+3)]`
-/

namespace A199196.P6384818346635291855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A199201 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199196.P6384818346635291855

/-! ## A199196.P18102939867242784954

`lcm((-1)^n, A199201(A167614(n+1)))`
-/

namespace A199196.P18102939867242784954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A199201 (A167614 (n + 1)).toNat)

end

end A199196.P18102939867242784954

/-! ## A199196.P17850865976335771293

`record[gcd(A199201(n+5), A199220(n+1))]`
-/

namespace A199196.P17850865976335771293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A199201 (n + 5)) (A199220 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199196.P17850865976335771293

/-! ## A199196.P15790494609457297875

`A199201(A167614(n+1))+A011742(n)`
-/

namespace A199196.P15790494609457297875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (A167614 (n + 1)).toNat + A011742 n

end

end A199196.P15790494609457297875

/-!
# A199197: Number of nX4 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199197, there is no canonical definition to state claims against.
-/

/-! ## A199197.P6755755528615552143

`A199201(A141214(n)+7)`
-/

namespace A199197.P6755755528615552143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (A141214 n + 7).toNat

end

end A199197.P6755755528615552143

/-! ## A199197.P1387168116477535924

`A199201(A052905(n)+9)`
-/

namespace A199197.P1387168116477535924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (A052905 n + 9).toNat

end

end A199197.P1387168116477535924

/-! ## A199197.P8791276945780020505

`A199201(A055999(n)+10)`
-/

namespace A199197.P8791276945780020505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (A055999 n + 10).toNat

end

end A199197.P8791276945780020505

/-! ## A199197.P10836893869125891858

`A199201(eq[5, A066657(n)])`
-/

namespace A199197.P10836893869125891858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199197.P10836893869125891858

/-! ## A199197.P15050819410030000579

`A199201(Δ[A005286(n)]+5)`
-/

namespace A199197.P15050819410030000579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (f1 (n + 1) - f1 n + 5).toNat

end

end A199197.P15050819410030000579

/-!
# A199198: Number of nX5 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199198, there is no canonical definition to state claims against.
-/

/-! ## A199198.P9333541655336484151

`A199201(A077169(n+5))`
-/

namespace A199198.P9333541655336484151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (A077169 (n + 5)).toNat

end

end A199198.P9333541655336484151

/-! ## A199198.P13010593908914872363

`A199201(A155212(n)+13)`
-/

namespace A199198.P13010593908914872363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (A155212 n + 13).toNat

end

end A199198.P13010593908914872363

/-! ## A199198.P10425211087031107036

`A199201(A056000(n)+15)`
-/

namespace A199198.P10425211087031107036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (A056000 n + 15).toNat

end

end A199198.P10425211087031107036

/-! ## A199198.P14605093590306288761

`A199201(eq[7, A066657(n)])`
-/

namespace A199198.P14605093590306288761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199198.P14605093590306288761

/-!
# A199199: Number of nX6 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199199, there is no canonical definition to state claims against.
-/

/-! ## A199199.P10424183800954179923

`A199201(A374007(n+1))`
-/

namespace A199199.P10424183800954179923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (A374007 (n + 1)).toNat

end

end A199199.P10424183800954179923

