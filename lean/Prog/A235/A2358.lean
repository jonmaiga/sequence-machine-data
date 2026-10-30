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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A235800: Length of n-th vertical line segment from left to right in a diagram of a two-dimensional version of the 3x+1 (or Collatz) problem.

The programs for A235800, the canonical program `A235800.P7194715415041466143` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235800 has offset 1).

The definition of A235800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235800.P12898663363214048593

`ogf((3+x+x^2)/(1-2x^2+x^4))`
-/

namespace A235800.P12898663363214048593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 1] [1, 0, -2, 0, 1] n

end

end A235800.P12898663363214048593

namespace A235800

/-- `ogf((3+x+x^2)/(1-2x^2+x^4))` -/
def P12898663363214048593.Spec : Prop :=
  ∀ n, P12898663363214048593.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P7194715415041466143

`2*a(n-2)-a(n-4)` with `a(0)=3, a(1)=1, a(2)=7, a(3)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235800

/-- `2*a(n-2)-a(n-4)` -/
def P7194715415041466143.Spec : Prop :=
  ∀ n, P7194715415041466143.a n = A235800 (n + 1)

theorem P7194715415041466143.correct : P7194715415041466143.Spec := by
  intro n
  simp only [A235800, Nat.add_sub_cancel]

end A235800

/-! ## A235800.P10955054564173388005

`A006370(n+1)-A193356(n+1)`
-/

namespace A235800.P10955054564173388005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (n + 1) - A193356 (n + 1)

end

end A235800.P10955054564173388005

namespace A235800

/-- `A006370(n+1)-A193356(n+1)` -/
def P10955054564173388005.Spec : Prop :=
  ∀ n, P10955054564173388005.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P11108185419646677971

`∑[∑[ogf((3+x+x^2)/(1+2x+x^2))]]`
-/

namespace A235800.P11108185419646677971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 1] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235800.P11108185419646677971

namespace A235800

/-- `∑[∑[ogf((3+x+x^2)/(1+2x+x^2))]]` -/
def P11108185419646677971.Spec : Prop :=
  ∀ n, P11108185419646677971.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P4262148929581552798

`a(n-2)+gcd(2, n)²` with `a(0)=3, a(1)=1`
-/

namespace A235800.P4262148929581552798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 2) + Nat.gcd 2 n ^ 2

end

end A235800.P4262148929581552798

namespace A235800

/-- `a(n-2)+gcd(2, n)²` -/
def P4262148929581552798.Spec : Prop :=
  ∀ n, (P4262148929581552798.a n : ℤ) = A235800 (n + 1)

end A235800

/-! ## A235800.P14458090004831161593

`∑[gcd(4, n²)-a(n-1)]` with `a(0)=3`
-/

namespace A235800.P14458090004831161593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  (Nat.gcd 4 (n ^ 2) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235800.P14458090004831161593

namespace A235800

/-- `∑[gcd(4, n²)-a(n-1)]` -/
def P14458090004831161593.Spec : Prop :=
  ∀ n, P14458090004831161593.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P3271657124946914758

`∑[3*(n+1)]%(3*n+5)`
-/

namespace A235800.P3271657124946914758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (3 * n + 5)

end

end A235800.P3271657124946914758

namespace A235800

/-- `∑[3*(n+1)]%(3*n+5)` -/
def P3271657124946914758.Spec : Prop :=
  ∀ n, (P3271657124946914758.a n : ℤ) = A235800 (n + 1)

end A235800

/-! ## A235800.P2316533759614473388

`floor((3/4+n)²/a(n-1))` with `a(0)=3`
-/

namespace A235800.P2316533759614473388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊((3 : ℚ) / 4 + (n : ℚ)) ^ 2 / (a (n - 1) : ℚ)⌋

end

end A235800.P2316533759614473388

namespace A235800

/-- `floor((3/4+n)²/a(n-1))` -/
def P2316533759614473388.Spec : Prop :=
  ∀ n, P2316533759614473388.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P18423111968137674224

`floor(2/a(n-1)*∑[n])+1` with `a(0)=3`
-/

namespace A235800.P18423111968137674224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊2 / (a (n - 1) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + 1

end

end A235800.P18423111968137674224

namespace A235800

/-- `floor(2/a(n-1)*∑[n])+1` -/
def P18423111968137674224.Spec : Prop :=
  ∀ n, P18423111968137674224.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P11630541694893907384

`ceil((n-1+ϕ)²/a(n-1))` with `a(0)=3`
-/

namespace A235800.P11630541694893907384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(((n : ℤ) - 1 : ℝ) + Real.goldenRatio) ^ 2 / (a (n - 1) : ℝ)⌉

end

end A235800.P11630541694893907384

namespace A235800

/-- `ceil((n-1+ϕ)²/a(n-1))` -/
def P11630541694893907384.Spec : Prop :=
  ∀ n, P11630541694893907384.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P186258465147567385

`∑[a(n-2)+3*(-1)^n]` with `a(0)=3, a(1)=-2`
-/

namespace A235800.P186258465147567385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2] fun n f1 =>
  f1 (n - 2) + 3 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235800.P186258465147567385

namespace A235800

/-- `∑[a(n-2)+3*(-1)^n]` -/
def P186258465147567385.Spec : Prop :=
  ∀ n, P186258465147567385.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P2446217531237646803

`a(n-2)+4^((n+1)%2)` with `a(0)=3, a(1)=1`
-/

namespace A235800.P2446217531237646803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 2) + 4 ^ ((n + 1) % 2)

end

end A235800.P2446217531237646803

namespace A235800

/-- `a(n-2)+4^((n+1)%2)` -/
def P2446217531237646803.Spec : Prop :=
  ∀ n, (P2446217531237646803.a n : ℤ) = A235800 (n + 1)

end A235800

/-! ## A235800.P1922996556690076541

`∑[5-a(n-1)]-a(n-1)` with `a(0)=3, a(1)=1`
-/

namespace A235800.P1922996556690076541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A235800.P1922996556690076541

namespace A235800

/-- `∑[5-a(n-1)]-a(n-1)` -/
def P1922996556690076541.Spec : Prop :=
  ∀ n, P1922996556690076541.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P2957442537511654118

`floor((n+1)*n/a(n-1))+1` with `a(0)=3`
-/

namespace A235800.P2957442537511654118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(n + 1 : ℚ) * ((n : ℚ) / (a (n - 1) : ℚ))⌋ + 1

end

end A235800.P2957442537511654118

namespace A235800

/-- `floor((n+1)*n/a(n-1))+1` -/
def P2957442537511654118.Spec : Prop :=
  ∀ n, P2957442537511654118.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P6415712567197547398

`floor(lcm(2, lcm(n+1, n+3))/(n+2))`
-/

namespace A235800.P6415712567197547398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (Nat.lcm (n + 1) (n + 3)) : ℚ) / (n + 2 : ℚ)⌋

end

end A235800.P6415712567197547398

namespace A235800

/-- `floor(lcm(2, lcm(n+1, n+3))/(n+2))` -/
def P6415712567197547398.Spec : Prop :=
  ∀ n, P6415712567197547398.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P12549278409841715338

`∑{d}[abs(a(n-2)), #]+a(n-2)` with `a(0)=3, a(1)=1`
-/

namespace A235800.P12549278409841715338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + a (n - 2)

end

end A235800.P12549278409841715338

namespace A235800

/-- `∑{d}[abs(a(n-2)), #]+a(n-2)` -/
def P12549278409841715338.Spec : Prop :=
  ∀ n, (P12549278409841715338.a n : ℤ) = A235800 (n + 1)

end A235800

/-! ## A235800.P11341053626082909571

`floor((2*n+3)/gcd(n+1, n-1)²)`
-/

namespace A235800.P11341053626082909571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 3 : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) ^ 2 : ℚ)⌋

end

end A235800.P11341053626082909571

namespace A235800

/-- `floor((2*n+3)/gcd(n+1, n-1)²)` -/
def P11341053626082909571.Spec : Prop :=
  ∀ n, P11341053626082909571.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P17164421176092438946

`floor(a(n-2)+2^(n/a(n-1)))` with `a(0)=3, a(1)=1`
-/

namespace A235800.P17164421176092438946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  ⌊(a (n - 2) : ℝ) + (2 : ℝ) ^ ((n : ℚ) / (a (n - 1) : ℚ) : ℝ)⌋

end

end A235800.P17164421176092438946

namespace A235800

/-- `floor(a(n-2)+2^(n/a(n-1)))` -/
def P17164421176092438946.Spec : Prop :=
  ∀ n, P17164421176092438946.a n = A235800 (n + 1)

end A235800

/-! ## A235800.P3760856228117532805

`a(n-2)+a(n-2)-a(n-4)` with `a(0)=3, a(1)=1, a(2)=7, a(3)=2`
-/

namespace A235800.P3760856228117532805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 7, 2] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 4))

end

end A235800.P3760856228117532805

namespace A235800

/-- `a(n-2)+a(n-2)-a(n-4)` -/
def P3760856228117532805.Spec : Prop :=
  ∀ n, P3760856228117532805.a n = A235800 (n + 1)

theorem P3760856228117532805.correct : P3760856228117532805.Spec := by
  intro n
  simp only [A235800, Nat.add_sub_cancel, A235800.P3760856228117532805.a, A235800.P7194715415041466143.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A235800

/-! ## A235800.P17687687523922915816

`A064680(xor(1, n))+1`
-/

namespace A235800.P17687687523922915816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (Nat.xor 1 n) + 1

end

end A235800.P17687687523922915816

namespace A235800

/-- `A064680(xor(1, n))+1` -/
def P17687687523922915816.Spec : Prop :=
  ∀ n, P17687687523922915816.a n = A235800 (n + 1)

end A235800

/-!
# A235801: Length of n-th horizontal line segment in a diagram of a two-dimensional version of the 3x+1 (or Collatz) problem.

The programs for A235801, the canonical program `A235801.P2570540222332843264` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235801 has offset 0).

The definition of A235801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235801.P2570540222332843264

`ogf((x+2x^2+3x^3+7x^4+5x^5+6x^6+5x^7+4x^8+3x^9+3x^10+x^11)/(1-2x^6+x^12))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235801

/-- `ogf((x+2x^2+3x^3+7x^4+5x^5+6x^6+5x^7+4x^8+3x^9+3x^10+x^11)/(1-2x^6+x^12))` -/
def P2570540222332843264.Spec : Prop :=
  ∀ n, P2570540222332843264.a n = A235801 n

theorem P2570540222332843264.correct : P2570540222332843264.Spec := by
  intro n
  simp only [A235801]

end A235801

/-! ## A235801.P9986508740970972437

`2*n-n%A329494(n)`
-/

namespace A235801.P9986508740970972437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod (n : ℤ) (A329494 n)

end

end A235801.P9986508740970972437

namespace A235801

/-- `2*n-n%A329494(n)` -/
def P9986508740970972437.Spec : Prop :=
  ∀ n, P9986508740970972437.a n = A235801 n

end A235801

/-! ## A235801.P10879966482782610194

`A050533(n)%A267027(n+1)`
-/

namespace A235801.P10879966482782610194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050533 n) (A267027 (n + 1))

end

end A235801.P10879966482782610194

namespace A235801

/-- `A050533(n)%A267027(n+1)` -/
def P10879966482782610194.Spec : Prop :=
  ∀ n, P10879966482782610194.a n = A235801 n

end A235801

/-! ## A235801.P6557727913271258794

`∑[n²]%A266072(n+1)+n`
-/

namespace A235801.P6557727913271258794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A266072 (n + 1)) + (n : ℤ)

end

end A235801.P6557727913271258794

namespace A235801

/-- `∑[n²]%A266072(n+1)+n` -/
def P6557727913271258794.Spec : Prop :=
  ∀ n, P6557727913271258794.a n = A235801 n

end A235801

/-! ## A235801.P6806230476108095681

`Δ[A000217(n-A285872(n))]+n`
-/

namespace A235801.P6806230476108095681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) - A285872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A235801.P6806230476108095681

namespace A235801

/-- `Δ[A000217(n-A285872(n))]+n` -/
def P6806230476108095681.Spec : Prop :=
  ∀ n, P6806230476108095681.a n = A235801 n

end A235801

/-! ## A235801.P15041155036519750466

`A285872(n+1)%(A285872(n)+1)+n`
-/

namespace A235801.P15041155036519750466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285872 (n + 1)) (A285872 n + 1) + (n : ℤ)

end

end A235801.P15041155036519750466

namespace A235801

/-- `A285872(n+1)%(A285872(n)+1)+n` -/
def P15041155036519750466.Spec : Prop :=
  ∀ n, P15041155036519750466.a n = A235801 n

end A235801

/-! ## A235801.P10555332155934062872

`Δ[A002265(A004523(n+1))]*A004523(n+1)+n`
-/

namespace A235801.P10555332155934062872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004523 (n + 1) + (n : ℤ)

end

end A235801.P10555332155934062872

namespace A235801

/-- `Δ[A002265(A004523(n+1))]*A004523(n+1)+n` -/
def P10555332155934062872.Spec : Prop :=
  ∀ n, P10555332155934062872.a n = A235801 n

end A235801

/-! ## A235801.P12378952526815617970

`2*n-A342369(A014682(n))`
-/

namespace A235801.P12378952526815617970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A342369 (A014682 n).toNat

end

end A235801.P12378952526815617970

namespace A235801

/-- `2*n-A342369(A014682(n))` -/
def P12378952526815617970.Spec : Prop :=
  ∀ n, P12378952526815617970.a n = A235801 n

end A235801

/-! ## A235801.P17592022467884866880

`A059841(n)*A175676(2*n+1)+n`
-/

namespace A235801.P17592022467884866880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A175676 (2 * n + 1) + (n : ℤ)

end

end A235801.P17592022467884866880

namespace A235801

/-- `A059841(n)*A175676(2*n+1)+n` -/
def P17592022467884866880.Spec : Prop :=
  ∀ n, P17592022467884866880.a n = A235801 n

end A235801

/-! ## A235801.P15873491499431083497

`A059620(2*n+1)*A175676(2*n+1)+n`
-/

namespace A235801.P15873491499431083497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 (2 * n + 1) * A175676 (2 * n + 1) + (n : ℤ)

end

end A235801.P15873491499431083497

namespace A235801

/-- `A059620(2*n+1)*A175676(2*n+1)+n` -/
def P15873491499431083497.Spec : Prop :=
  ∀ n, P15873491499431083497.a n = A235801 n

end A235801

/-! ## A235801.P6684080369131619290

`A175676(lcm(2, n)+1+n)+n`
-/

namespace A235801.P6684080369131619290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (Nat.lcm 2 n + 1 + n) + (n : ℤ)

end

end A235801.P6684080369131619290

namespace A235801

/-- `A175676(lcm(2, n)+1+n)+n` -/
def P6684080369131619290.Spec : Prop :=
  ∀ n, P6684080369131619290.a n = A235801 n

end A235801

/-! ## A235801.P5357028462930841934

`A175676(A109043(n)+1+n)+n`
-/

namespace A235801.P5357028462930841934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A109043 n + 1 + (n : ℤ)).toNat + (n : ℤ)

end

end A235801.P5357028462930841934

namespace A235801

/-- `A175676(A109043(n)+1+n)+n` -/
def P5357028462930841934.Spec : Prop :=
  ∀ n, P5357028462930841934.a n = A235801 n

end A235801

/-!
# A235802: Expansion of e.g.f.: 1/(1 - x)^(2/(2-x)).

The programs for A235802, there is no canonical definition to state claims against.
-/

/-! ## A235802.P3824395226243698791

`A193425(n)/2^n`
-/

namespace A235802.P3824395226243698791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193425 n : ℚ) / (2 ^ n : ℚ)

end

end A235802.P3824395226243698791

/-! ## A235802.P1926135827913380839

`ceil(A193425(n)/∑[A011782(n)])`
-/

namespace A235802.P1926135827913380839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193425 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A235802.P1926135827913380839

/-! ## A235802.P9420410099427627982

`lcm(A107751(n), A193425(n))/A000079(n)`
-/

namespace A235802.P9420410099427627982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A107751 n) (A193425 n) : ℚ) / (A000079 n : ℚ)

end

end A235802.P9420410099427627982

/-! ## A235802.P14128685079483205195

`A000007(n+2)+A193425(n)/∑[A011782(n)]`
-/

namespace A235802.P14128685079483205195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 2) : ℚ) + (A193425 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A235802.P14128685079483205195

/-! ## A235802.P10610805667179930755

`(A000027(n+1)-n)*A193425(n)/∑[A011782(n)]`
-/

namespace A235802.P10610805667179930755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ) : ℚ) * ((A193425 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A235802.P10610805667179930755

/-!
# A235803: Rectangular array read by upward antidiagonals: A(n,k) = 1 + sqrt(k)*((1+sqrt(k))^n - (1-sqrt(k))^n)/2, n,k >= 0.

The programs for A235803, the canonical program `A235803.P4429470764184942778` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235803 has offset 0).

The definition of A235803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235803.P4429470764184942778

`1+sqrt(col(n))*((1+sqrt(col(n)))^(row(n)-col(n))-(1-sqrt(col(n)))^(row(n)-col(n)))/2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235803

/-- `1+sqrt(col(n))*((1+sqrt(col(n)))^(row(n)-col(n))-(1-sqrt(col(n)))^(row(n)-col(n)))/2` -/
def P4429470764184942778.Spec : Prop :=
  ∀ n, P4429470764184942778.a n = (A235803 n : ℝ)

end A235803

/-! ## A235803.P11442644095689284730

`A000005(A141021(n)^A098805(n))`
-/

namespace A235803.P11442644095689284730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A141021 n : ℚ) ^ (A098805 n : ℤ))).toNat

end

end A235803.P11442644095689284730

namespace A235803

/-- `A000005(A141021(n)^A098805(n))` -/
def P11442644095689284730.Spec : Prop :=
  ∀ n, P11442644095689284730.a n = A235803 n

end A235803

/-! ## A235803.P14883127789048282504

`A302998(n)+Δ[A285189(A299905(n))]`
-/

namespace A235803.P14883127789048282504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A299905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 n + (f1 (n + 1) - f1 n)

end

end A235803.P14883127789048282504

namespace A235803

/-- `A302998(n)+Δ[A285189(A299905(n))]` -/
def P14883127789048282504.Spec : Prop :=
  ∀ n, P14883127789048282504.a n = A235803 n

end A235803

/-! ## A235803.P994361072680924567

`A303484(n)+Δ[A285189(A299905(n))]`
-/

namespace A235803.P994361072680924567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A299905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303484 n + (f1 (n + 1) - f1 n)

end

end A235803.P994361072680924567

namespace A235803

/-- `A303484(n)+Δ[A285189(A299905(n))]` -/
def P994361072680924567.Spec : Prop :=
  ∀ n, P994361072680924567.a n = A235803 n

end A235803

/-! ## A235803.P3163443101953471549

`A302998(n)+Δ[A173636(A174545(n))]`
-/

namespace A235803.P3163443101953471549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173636 (A174545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 n + (f1 (n + 1) - f1 n)

end

end A235803.P3163443101953471549

namespace A235803

/-- `A302998(n)+Δ[A173636(A174545(n))]` -/
def P3163443101953471549.Spec : Prop :=
  ∀ n, P3163443101953471549.a n = A235803 n

end A235803

/-!
# A235804: Rectangular array read by upward antidiagonals: A(n,k) = n-2+k*2^(n-3), n>=3, k>=0.

The programs for A235804, there is no canonical definition to state claims against.
-/

/-! ## A235804.P6037431051335016416

`1+col(n)*(2^(row(n)-col(n))-1)+row(n)`
-/

namespace A235804.P6037431051335016416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (SequenceMachineLib.triCol n : ℚ) * ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) - 1) + (SequenceMachineLib.triRow n : ℚ)

end

end A235804.P6037431051335016416

/-! ## A235804.P5238046488721083289

`A057728(n+1)+a(n-round(sqrt(2*n)))` with `a(0)=1`
-/

namespace A235804.P5238046488721083289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057728 (n + 1) + a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A235804.P5238046488721083289

/-! ## A235804.P5485518336700920480

`A140129(A224195(n+1))+A025581(n)`
-/

namespace A235804.P5485518336700920480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140129 (A224195 (n + 1)).toNat + A025581 n

end

end A235804.P5485518336700920480

/-! ## A235804.P11001231322177630818

`A296062(A193902(n))+A002260(n+1)`
-/

namespace A235804.P11001231322177630818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 (A193902 n).toNat + A002260 (n + 1)

end

end A235804.P11001231322177630818

/-! ## A235804.P1153519561349118951

`A002262(n)+A296062(A193902(n))+1`
-/

namespace A235804.P1153519561349118951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A296062 (A193902 n).toNat + 1)

end

end A235804.P1153519561349118951

/-! ## A235804.P5519145205537479221

`A140129(A224195(n+1))+log2(A130321(n))`
-/

namespace A235804.P5519145205537479221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A140129 (A224195 (n + 1)).toNat : ℝ) + Real.logb 2 (A130321 n : ℝ)

end

end A235804.P5519145205537479221

/-! ## A235804.P15060719937002422884

`A140129(A224195(n+1))-∑[A167407(n)]`
-/

namespace A235804.P15060719937002422884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140129 (A224195 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235804.P15060719937002422884

/-! ## A235804.P10175440460260162008

`A004736(n+1)+A002262(n)*A130321(n)`
-/

namespace A235804.P10175440460260162008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002262 n * A130321 n

end

end A235804.P10175440460260162008

/-! ## A235804.P9935778058467250871

`A004736(n+1)+A002262(n)*A057728(n+1)`
-/

namespace A235804.P9935778058467250871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002262 n * A057728 (n + 1)

end

end A235804.P9935778058467250871

/-! ## A235804.P14661426251206664143

`A296062(A193902(n))+A000005(A059268(n))`
-/

namespace A235804.P14661426251206664143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 (A193902 n).toNat + A000005 (A059268 n).toNat

end

end A235804.P14661426251206664143

/-!
# A235807: Numbers k such that k^3 has one or more occurrences of exactly five different digits.

The programs for A235807, there is no canonical definition to state claims against.
-/

/-! ## A235807.P756501655675182681

`lt[sqrt(A292163(n+2)), A292142(2*n)]`
-/

namespace A235807.P756501655675182681
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A292163 (n + 2) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292142 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A235807.P756501655675182681

/-! ## A235807.P16011475679553795124

`A107576(3*n+4)+A107576(A030436(n))`
-/

namespace A235807.P16011475679553795124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107576 (3 * n + 4) + A107576 (A030436 n).toNat

end

end A235807.P16011475679553795124

/-! ## A235807.P17405640754673147476

`A048273(A282115(2*n+3)+A267502(n+2))`
-/

namespace A235807.P17405640754673147476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (A282115 (2 * n + 3) + A267502 (n + 2)).toNat

end

end A235807.P17405640754673147476

/-!
# A235813: Number of (n+1) X (2+1) 0..3 arrays with the sum of each 2 X 2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235813, there is no canonical definition to state claims against.
-/

/-! ## A235813.P15426486945127561965

`A235815(∑[n+1]+2)`
-/

namespace A235813.P15426486945127561965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235815 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235813.P15426486945127561965

/-! ## A235813.P18437594594835070536

`record[A010054(n)*A235815(n+2)]`
-/

namespace A235813.P18437594594835070536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235815 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235813.P18437594594835070536

/-! ## A235813.P8046883995411468248

`record[gcd(A122201(n), A235815(n+3))]`
-/

namespace A235813.P8046883995411468248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122201 n) (A235815 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235813.P8046883995411468248

/-! ## A235813.P2886082726657423232

`record[A154990(n+1)*A235815(n+3)]`
-/

namespace A235813.P2886082726657423232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A235815 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235813.P2886082726657423232

/-!
# A235814: Number of (n+1)X(3+1) 0..3 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235814, there is no canonical definition to state claims against.
-/

/-! ## A235814.P16725691194024963800

`A235815(A167614(n+1))`
-/

namespace A235814.P16725691194024963800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235815 (A167614 (n + 1)).toNat

end

end A235814.P16725691194024963800

/-! ## A235814.P3764644155159974766

`A235815(∑[n+3]+1)`
-/

namespace A235814.P3764644155159974766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235815 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235814.P3764644155159974766

/-!
# A235816: Number of (n+1)X(2+1) 0..3 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235816, there is no canonical definition to state claims against.
-/

/-! ## A235816.P13371260269035170198

`A235818(∑[n+2])`
-/

namespace A235816.P13371260269035170198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235816.P13371260269035170198

/-! ## A235816.P7625215898820839533

`lcm(2, A235818(A000096(n+1)))`
-/

namespace A235816.P7625215898820839533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235818 (A000096 (n + 1)).toNat)

end

end A235816.P7625215898820839533

/-! ## A235816.P4276054751028722871

`record[root(A235818(n+2), A207611(n+3))]`
-/

namespace A235816.P4276054751028722871
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235818 (n + 2) : ℝ) ^ (1 / (A207611 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235816.P4276054751028722871

/-!
# A235817: Number of (n+1)X(3+1) 0..3 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235817, there is no canonical definition to state claims against.
-/

/-! ## A235817.P8151125427398170641

`A235818(∑[n+3]+1)`
-/

namespace A235817.P8151125427398170641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235818 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235817.P8151125427398170641

/-!
# A235819: Number of (2+1)X(n+1) 0..3 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235819, there is no canonical definition to state claims against.
-/

/-! ## A235819.P5483583057057180334

`A235818(∑[n+1]+2)`
-/

namespace A235819.P5483583057057180334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235818 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235819.P5483583057057180334

/-! ## A235819.P768164434710728659

`record[A235818(A166017(n+1)+1)]`
-/

namespace A235819.P768164434710728659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235818 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235819.P768164434710728659

/-! ## A235819.P9673730913056976372

`record[gcd(A002262(n), A235818(n+2))]`
-/

namespace A235819.P9673730913056976372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235818 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235819.P9673730913056976372

/-! ## A235819.P6033018568122497826

`record[lcm(A197870(n), A235818(n+2))]`
-/

namespace A235819.P6033018568122497826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A197870 n) (A235818 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235819.P6033018568122497826

/-!
# A235820: Number of (3+1)X(n+1) 0..3 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235820, there is no canonical definition to state claims against.
-/

/-! ## A235820.P16981392016148155875

`A235818(∑[n+2]+4)`
-/

namespace A235820.P16981392016148155875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235818 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235820.P16981392016148155875

/-! ## A235820.P17492524839990577307

`lcm(2, A235818(A167614(n+1)))`
-/

namespace A235820.P17492524839990577307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235818 (A167614 (n + 1)).toNat)

end

end A235820.P17492524839990577307

/-! ## A235820.P8455804010483801019

`record[A055137(n)*A235818(n+4)]`
-/

namespace A235820.P8455804010483801019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n * A235818 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235820.P8455804010483801019

/-!
# A235821: Number of (4+1) X (n+1) 0..3 arrays with the difference of the upper and lower median value of each 2 X 2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235821, there is no canonical definition to state claims against.
-/

/-! ## A235821.P3489172255227746680

`A235818(A020752(n+1))`
-/

namespace A235821.P3489172255227746680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235818 (A020752 (n + 1)).toNat

end

end A235821.P3489172255227746680

/-! ## A235821.P12687198051404372843

`A235818(A055999(n)+10)`
-/

namespace A235821.P12687198051404372843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235818 (A055999 n + 10).toNat

end

end A235821.P12687198051404372843

/-!
# A235822: Number of (n+1)X(2+1) 0..3 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235822, there is no canonical definition to state claims against.
-/

/-! ## A235822.P5434497262933546249

`A235824(∑[n+2])`
-/

namespace A235822.P5434497262933546249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235822.P5434497262933546249

/-! ## A235822.P5165511610854998519

`record[A235824(abs(A201163(n)))]`
-/

namespace A235822.P5165511610854998519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235822.P5165511610854998519

/-! ## A235822.P14531475982039284832

`record[A235824(Δ[A003453(n+5)])]`
-/

namespace A235822.P14531475982039284832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235822.P14531475982039284832

/-!
# A235823: Number of (n+1)X(3+1) 0..3 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235823, there is no canonical definition to state claims against.
-/

/-! ## A235823.P3506859403880575313

`A235824(∑[n+3]+1)`
-/

namespace A235823.P3506859403880575313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235823.P3506859403880575313

/-!
# A235825: Number of (2+1)X(n+1) 0..3 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235825, there is no canonical definition to state claims against.
-/

/-! ## A235825.P17457690016651622740

`A235824(∑[n+1]+2)`
-/

namespace A235825.P17457690016651622740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235825.P17457690016651622740

/-! ## A235825.P4212677955528776839

`record[A235824(A286235(n+1)+1)]`
-/

namespace A235825.P4212677955528776839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235825.P4212677955528776839

/-! ## A235825.P14862207324843431384

`A319387(n)+A235824(A000096(n)+3)`
-/

namespace A235825.P14862207324843431384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n + A235824 (A000096 n + 3).toNat

end

end A235825.P14862207324843431384

/-! ## A235825.P4385847212798707010

`A319401(n)+A235824(A000096(n)+3)`
-/

namespace A235825.P4385847212798707010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319401 n + A235824 (A000096 n + 3).toNat

end

end A235825.P4385847212798707010

/-!
# A235826: Number of (3+1)X(n+1) 0..3 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235826, there is no canonical definition to state claims against.
-/

/-! ## A235826.P4927915038249049073

`A235824(∑[n+2]+4)`
-/

namespace A235826.P4927915038249049073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235826.P4927915038249049073

/-! ## A235826.P758634535776554743

`and(-1, A235824(A167614(n+1)))`
-/

namespace A235826.P758634535776554743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A235824 (A167614 (n + 1)).toNat)

end

end A235826.P758634535776554743

/-! ## A235826.P5018761985991691268

`A235824(A167614(n+1))+A008767(n)`
-/

namespace A235826.P5018761985991691268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 (A167614 (n + 1)).toNat + A008767 n

end

end A235826.P5018761985991691268

/-!
# A235827: Number of (4+1)X(n+1) 0..3 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235827, there is no canonical definition to state claims against.
-/

/-! ## A235827.P18287570104081671653

`A235824(A020752(n+1))`
-/

namespace A235827.P18287570104081671653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 (A020752 (n + 1)).toNat

end

end A235827.P18287570104081671653

/-! ## A235827.P15643816454759910193

`A235824(A167614(n+2)+1)`
-/

namespace A235827.P15643816454759910193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 (A167614 (n + 2) + 1).toNat

end

end A235827.P15643816454759910193

/-!
# A235829: Number of (n+1)X(2+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235829, there is no canonical definition to state claims against.
-/

/-! ## A235829.P13155270254553880560

`A235833(∑[n+2])`
-/

namespace A235829.P13155270254553880560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235829.P13155270254553880560

/-! ## A235829.P2804745520764703435

`record[A235833(abs(A201163(n)))]`
-/

namespace A235829.P2804745520764703435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235829.P2804745520764703435

/-! ## A235829.P3835138816940232192

`record[A235833(Δ[A003453(n+5)])]`
-/

namespace A235829.P3835138816940232192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235829.P3835138816940232192

/-! ## A235829.P1766203505790125532

`record[root(A235833(n+2), A335322(n+2))]`
-/

namespace A235829.P1766203505790125532
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235833 (n + 2) : ℝ) ^ (1 / (A335322 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235829.P1766203505790125532

/-! ## A235829.P11363630512235145138

`record[root(A235833(n+2), A136126(n+3))]`
-/

namespace A235829.P11363630512235145138
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235833 (n + 2) : ℝ) ^ (1 / (A136126 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235829.P11363630512235145138

/-!
# A235830: Number of (n+1) X (3+1) 0..2 arrays with the difference of the upper median and minimum value of each 2 X 2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235830, there is no canonical definition to state claims against.
-/

/-! ## A235830.P12359296920444551549

`A235833(∑[n+3]+1)`
-/

namespace A235830.P12359296920444551549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235830.P12359296920444551549

/-! ## A235830.P5512184892619793720

`record[A235833(A198464(n+1))]`
-/

namespace A235830.P5512184892619793720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235830.P5512184892619793720

/-!
# A235831: Number of (n+1)X(4+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235831, there is no canonical definition to state claims against.
-/

/-! ## A235831.P16566679173386457684

`A235833(A141214(n+1))`
-/

namespace A235831.P16566679173386457684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A141214 (n + 1)).toNat

end

end A235831.P16566679173386457684

/-! ## A235831.P14884383928615702679

`A235833(A027379(n+2))`
-/

namespace A235831.P14884383928615702679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A027379 (n + 2)).toNat

end

end A235831.P14884383928615702679

/-! ## A235831.P11015019317925050068

`A235833(A055998(n+2))`
-/

namespace A235831.P11015019317925050068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A055998 (n + 2)).toNat

end

end A235831.P11015019317925050068

/-!
# A235832: Number of (n+1)X(5+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235832, there is no canonical definition to state claims against.
-/

/-! ## A235832.P8746835415911575330

`A235833(Δ[A264443(n)])`
-/

namespace A235832.P8746835415911575330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (f1 (n + 1) - f1 n).toNat

end

end A235832.P8746835415911575330

/-! ## A235832.P17586438509842601372

`A235833(eq[5, A200370(n+1)])`
-/

namespace A235832.P17586438509842601372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235832.P17586438509842601372

/-!
# A235834: Number of (2+1)X(n+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235834, there is no canonical definition to state claims against.
-/

/-! ## A235834.P6515958067010629692

`A235833(∑[n+1]+2)`
-/

namespace A235834.P6515958067010629692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235834.P6515958067010629692

/-! ## A235834.P1945696037275775691

`record[A235833(A114091(n+1)+1)]`
-/

namespace A235834.P1945696037275775691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235834.P1945696037275775691

/-! ## A235834.P17757509779415521287

`record[A110330(n)*A235833(n+3)]`
-/

namespace A235834.P17757509779415521287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110330 n * A235833 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235834.P17757509779415521287

/-! ## A235834.P2042347909550124540

`record[A129686(n+1)*A235833(n+3)]`
-/

namespace A235834.P2042347909550124540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129686 (n + 1) * A235833 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235834.P2042347909550124540

/-! ## A235834.P11919888728563534958

`A235833(A152948(n+3))+A228953(n+1)`
-/

namespace A235834.P11919888728563534958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A152948 (n + 3)).toNat + A228953 (n + 1)

end

end A235834.P11919888728563534958

/-!
# A235835: Number of (3+1)X(n+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235835, there is no canonical definition to state claims against.
-/

/-! ## A235835.P3862167830813243663

`A235833(∑[n+2]+4)`
-/

namespace A235835.P3862167830813243663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235835.P3862167830813243663

/-! ## A235835.P9429850085431550449

`A235833(A167614(n+1))+A011731(n)`
-/

namespace A235835.P9429850085431550449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A167614 (n + 1)).toNat + A011731 n

end

end A235835.P9429850085431550449

/-! ## A235835.P6620635001988301548

`A235833(A167614(n+1))+A025466(n)`
-/

namespace A235835.P6620635001988301548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A167614 (n + 1)).toNat + A025466 n

end

end A235835.P6620635001988301548

/-! ## A235835.P687823595029958904

`A235833(A167614(n+1))+A025469(n)`
-/

namespace A235835.P687823595029958904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A167614 (n + 1)).toNat + A025469 n

end

end A235835.P687823595029958904

/-! ## A235835.P3551044041903490842

`A235833(A167614(n+1))+A031346(n)`
-/

namespace A235835.P3551044041903490842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A167614 (n + 1)).toNat + A031346 n

end

end A235835.P3551044041903490842

/-!
# A235836: Number of (4+1)X(n+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235836, there is no canonical definition to state claims against.
-/

/-! ## A235836.P4047546671690163761

`A235833(∑[n+3]+7)`
-/

namespace A235836.P4047546671690163761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235836.P4047546671690163761

/-! ## A235836.P13876448798399800769

`char[A000700(n)]*A235833(A052905(n)+9)`
-/

namespace A235836.P13876448798399800769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A235833 (A052905 n + 9).toNat

end

end A235836.P13876448798399800769

/-! ## A235836.P6662427164885835852

`char[A151950(n)]*A235833(A052905(n)+9)`
-/

namespace A235836.P6662427164885835852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A235833 (A052905 n + 9).toNat

end

end A235836.P6662427164885835852

/-!
# A235837: Number of (5+1)X(n+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A235837, there is no canonical definition to state claims against.
-/

/-! ## A235837.P17221204440749295169

`A235833(A155212(n)+13)`
-/

namespace A235837.P17221204440749295169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A155212 n + 13).toNat

end

end A235837.P17221204440749295169

/-!
# A235838: Number of (n+1)X(1+1) 0..2 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235838, there is no canonical definition to state claims against.
-/

/-! ## A235838.P11464421791207666223

`A235842(∑[n]+1)`
-/

namespace A235838.P11464421791207666223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235842 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235838.P11464421791207666223

/-! ## A235838.P6859854728635215159

`A236427(∑[n]+1)`
-/

namespace A235838.P6859854728635215159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235838.P6859854728635215159

/-! ## A235838.P4366563166133921571

`or(1, A235842(A000124(n)))`
-/

namespace A235838.P4366563166133921571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235842 (A000124 n).toNat)

end

end A235838.P4366563166133921571

/-! ## A235838.P346171029963506913

`record[A235842(A056534(n+1))]`
-/

namespace A235838.P346171029963506913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235842 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235838.P346171029963506913

/-! ## A235838.P17119717933639334010

`A235842(A000124(n))%A235842(n+1)²`
-/

namespace A235838.P17119717933639334010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235842 (A000124 n).toNat) (A235842 (n + 1) ^ 2)

end

end A235838.P17119717933639334010

/-!
# A235839: Number of (n+1)X(2+1) 0..2 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235839, there is no canonical definition to state claims against.
-/

/-! ## A235839.P3846290712239514252

`A235842(∑[n+1]+2)`
-/

namespace A235839.P3846290712239514252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235842 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235839.P3846290712239514252

/-! ## A235839.P13293599018828928721

`record[A010054(n)*A235842(n+2)]`
-/

namespace A235839.P13293599018828928721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235842 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235839.P13293599018828928721

/-! ## A235839.P16511364098918250557

`record[root(A235842(n+2), A065158(n+1))]`
-/

namespace A235839.P16511364098918250557
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235842 (n + 2) : ℝ) ^ (1 / (A065158 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235839.P16511364098918250557

/-! ## A235839.P9187230869611155834

`A243832(n)+A235842(A133263(n+1))`
-/

namespace A235839.P9187230869611155834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243832 n + A235842 (A133263 (n + 1)).toNat

end

end A235839.P9187230869611155834

/-! ## A235839.P14553233121517524582

`A235842(A133263(n+1))/A119963(n)`
-/

namespace A235839.P14553233121517524582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235842 (A133263 (n + 1)).toNat : ℚ) / (A119963 n : ℚ)

end

end A235839.P14553233121517524582

/-!
# A235840: Number of (n+1)X(3+1) 0..2 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235840, there is no canonical definition to state claims against.
-/

/-! ## A235840.P2576612345408543623

`A235842(∑[n+2]+4)`
-/

namespace A235840.P2576612345408543623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235842 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235840.P2576612345408543623

/-! ## A235840.P3945705909048906899

`record[A235842(A139372(2*(n+2)))]`
-/

namespace A235840.P3945705909048906899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235842 (A139372 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235840.P3945705909048906899

/-! ## A235840.P9807483397244904856

`A235842(A167614(n+1))+A035041(n)`
-/

namespace A235840.P9807483397244904856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235842 (A167614 (n + 1)).toNat + A035041 n

end

end A235840.P9807483397244904856

/-! ## A235840.P15792374217589110456

`A235842(A167614(n+1))+A107846(n)`
-/

namespace A235840.P15792374217589110456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235842 (A167614 (n + 1)).toNat + A107846 n

end

end A235840.P15792374217589110456

/-!
# A235841: Number of (n+1)X(4+1) 0..2 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235841, there is no canonical definition to state claims against.
-/

/-! ## A235841.P9045363449729559030

`A235842(∑[n+3]+7)`
-/

namespace A235841.P9045363449729559030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235842 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235841.P9045363449729559030

/-! ## A235841.P9374508212120775648

`A235842(A055998(n+2))%A235854(n+1)`
-/

namespace A235841.P9374508212120775648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235842 (A055998 (n + 2)).toNat) (A235854 (n + 1))

end

end A235841.P9374508212120775648

/-!
# A235843: Number of (n+1) X (1+1) 0..3 arrays with the upper median unequal to the lower median in every 2 X 2 subblock.

The programs for A235843, there is no canonical definition to state claims against.
-/

/-! ## A235843.P17571196846293218279

`A235849(∑[n]+1)`
-/

namespace A235843.P17571196846293218279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235849 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235843.P17571196846293218279

/-! ## A235843.P9041396118700488808

`record[A010054(n)*A235849(n+1)]`
-/

namespace A235843.P9041396118700488808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235843.P9041396118700488808

/-! ## A235843.P1351651656570179326

`record[A235849(n+1)/A118185(n)]`
-/

namespace A235843.P1351651656570179326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235849 (n + 1) : ℚ) / (A118185 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235843.P1351651656570179326

/-! ## A235843.P7876879305039271346

`record[root(A235849(n+1), A004070(n))]`
-/

namespace A235843.P7876879305039271346
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235849 (n + 1) : ℝ) ^ (1 / (A004070 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235843.P7876879305039271346

/-! ## A235843.P12252639384859387852

`record[gcd(A002262(n), A235849(n+1))]`
-/

namespace A235843.P12252639384859387852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235849 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235843.P12252639384859387852

/-!
# A235844: Number of (n+1)X(2+1) 0..3 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A235844, there is no canonical definition to state claims against.
-/

/-! ## A235844.P12940659474173683636

`A235849(∑[n+1]+2)`
-/

namespace A235844.P12940659474173683636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235849 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235844.P12940659474173683636

/-! ## A235844.P1599851977520765257

`record[A010054(n)*A235849(n+2)]`
-/

namespace A235844.P1599851977520765257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235849 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235844.P1599851977520765257

/-! ## A235844.P3881115099482427121

`record[gcd(A002262(n), A235849(n+2))]`
-/

namespace A235844.P3881115099482427121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235849 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235844.P3881115099482427121

/-!
# A235845: Number of (n+1)X(3+1) 0..3 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A235845, there is no canonical definition to state claims against.
-/

/-! ## A235845.P6358347230191203957

`A235849(∑[n+2]+4)`
-/

namespace A235845.P6358347230191203957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235849 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235845.P6358347230191203957

/-! ## A235845.P7257137631357304524

`lcm(2, A235849(A167614(n+1)))`
-/

namespace A235845.P7257137631357304524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235849 (A167614 (n + 1)).toNat)

end

end A235845.P7257137631357304524

/-! ## A235845.P17061987467457245025

`A057427(n+1)*A235849(A167614(n+1))`
-/

namespace A235845.P17061987467457245025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A235849 (A167614 (n + 1)).toNat

end

end A235845.P17061987467457245025

/-! ## A235845.P13012791090325442627

`A064284(n+1)*A235849(A167614(n+1))`
-/

namespace A235845.P13012791090325442627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064284 (n + 1) * A235849 (A167614 (n + 1)).toNat

end

end A235845.P13012791090325442627

/-! ## A235845.P5918007527384797104

`A105769(n+1)*A235849(A167614(n+1))`
-/

namespace A235845.P5918007527384797104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105769 (n + 1) * A235849 (A167614 (n + 1)).toNat

end

end A235845.P5918007527384797104

/-!
# A235846: Number of (n+1)X(4+1) 0..3 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A235846, there is no canonical definition to state claims against.
-/

/-! ## A235846.P4428469547291047864

`A235849(A141214(n)+7)`
-/

namespace A235846.P4428469547291047864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235849 (A141214 n + 7).toNat

end

end A235846.P4428469547291047864

/-! ## A235846.P6521898931686982576

`A235849(A141214(n+1))`
-/

namespace A235846.P6521898931686982576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235849 (A141214 (n + 1)).toNat

end

end A235846.P6521898931686982576

/-!
# A235847: Number of (n+1)X(5+1) 0..3 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A235847, there is no canonical definition to state claims against.
-/

/-! ## A235847.P13416227853637220584

`A235849(A052905(n+2)+1)`
-/

namespace A235847.P13416227853637220584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235849 (A052905 (n + 2) + 1).toNat

end

end A235847.P13416227853637220584

/-!
# A235850: Number of (n+1) X (1+1) 0..3 arrays with the upper median equal to the lower median in every 2 X 2 subblock.

The programs for A235850, there is no canonical definition to state claims against.
-/

/-! ## A235850.P2920954838680686000

`A235856(∑[n]+1)`
-/

namespace A235850.P2920954838680686000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235850.P2920954838680686000

/-! ## A235850.P2134279710814705722

`lcm(2, A235856(A000124(n)))`
-/

namespace A235850.P2134279710814705722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235856 (A000124 n).toNat)

end

end A235850.P2134279710814705722

/-! ## A235850.P186026156884574924

`record[A010054(n)*A235856(n+1)]`
-/

namespace A235850.P186026156884574924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235850.P186026156884574924

/-! ## A235850.P13579078254878980337

`record[root(A235856(n+1), A140996(n))]`
-/

namespace A235850.P13579078254878980337
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235856 (n + 1) : ℝ) ^ (1 / (A140996 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235850.P13579078254878980337

/-! ## A235850.P14589892393705028911

`record[gcd(A002262(n), A235856(n+1))]`
-/

namespace A235850.P14589892393705028911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235856 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235850.P14589892393705028911

/-!
# A235851: Number of (n+1) X (2+1) 0..3 arrays with the upper median equal to the lower median in every 2 X 2 subblock.

The programs for A235851, there is no canonical definition to state claims against.
-/

/-! ## A235851.P17169085062837577465

`A235856(∑[n+1]+2)`
-/

namespace A235851.P17169085062837577465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235851.P17169085062837577465

/-! ## A235851.P15898111971816028877

`record[A010054(n)*A235856(n+2)]`
-/

namespace A235851.P15898111971816028877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235856 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235851.P15898111971816028877

/-! ## A235851.P4304581958400049437

`record[gcd(A002262(n), A235856(n+2))]`
-/

namespace A235851.P4304581958400049437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235856 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235851.P4304581958400049437

/-! ## A235851.P13964206373874655386

`A235856(A133263(n+1))+A102683(2*n)`
-/

namespace A235851.P13964206373874655386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A133263 (n + 1)).toNat + A102683 (2 * n)

end

end A235851.P13964206373874655386

/-! ## A235851.P11561026092741924004

`A235856(A133263(n+1))+A122840(2*n+1)`
-/

namespace A235851.P11561026092741924004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A133263 (n + 1)).toNat + A122840 (2 * n + 1)

end

end A235851.P11561026092741924004

/-!
# A235852: Number of (n+1)X(3+1) 0..3 arrays with the upper median equal to the lower median in every 2X2 subblock.

The programs for A235852, there is no canonical definition to state claims against.
-/

/-! ## A235852.P1405383712751898462

`A235856(∑[n+2]+4)`
-/

namespace A235852.P1405383712751898462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235852.P1405383712751898462

/-! ## A235852.P13164087042203579226

`lcm(2, A235856(A167614(n+1)))`
-/

namespace A235852.P13164087042203579226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235856 (A167614 (n + 1)).toNat)

end

end A235852.P13164087042203579226

/-! ## A235852.P16800834651306734431

`A235856(A167614(n+1))+A011744(n)`
-/

namespace A235852.P16800834651306734431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A167614 (n + 1)).toNat + A011744 n

end

end A235852.P16800834651306734431

/-! ## A235852.P992633743828172279

`A235856(A167614(n+1))+A111895(n+1)`
-/

namespace A235852.P992633743828172279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A167614 (n + 1)).toNat + A111895 (n + 1)

end

end A235852.P992633743828172279

/-! ## A235852.P17839473111319312445

`lcm(A065941(n), A235856(A034856(n+2)))`
-/

namespace A235852.P17839473111319312445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065941 n) (A235856 (A034856 (n + 2)).toNat)

end

end A235852.P17839473111319312445

/-!
# A235853: Number of (n+1)X(4+1) 0..3 arrays with the upper median equal to the lower median in every 2X2 subblock.

The programs for A235853, there is no canonical definition to state claims against.
-/

/-! ## A235853.P17016615425143037053

`A235856(A374004(n+1))`
-/

namespace A235853.P17016615425143037053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A374004 (n + 1)).toNat

end

end A235853.P17016615425143037053

/-! ## A235853.P9394889366307213338

`A235856(A055999(n)+10)`
-/

namespace A235853.P9394889366307213338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A055999 n + 10).toNat

end

end A235853.P9394889366307213338

/-! ## A235853.P3933219785563886273

`A235856(A167614(n+2)+1)`
-/

namespace A235853.P3933219785563886273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A167614 (n + 2) + 1).toNat

end

end A235853.P3933219785563886273

/-! ## A235853.P8377230132847547660

`A235856(A141214(n+1))`
-/

namespace A235853.P8377230132847547660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A141214 (n + 1)).toNat

end

end A235853.P8377230132847547660

/-! ## A235853.P2518820225705691788

`A235856(A056000(n)+7)`
-/

namespace A235853.P2518820225705691788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A056000 n + 7).toNat

end

end A235853.P2518820225705691788

/-!
# A235854: Number of (n+1)X(5+1) 0..3 arrays with the upper median equal to the lower median in every 2X2 subblock.

The programs for A235854, there is no canonical definition to state claims against.
-/

/-! ## A235854.P11372007342070334960

`A235856(A374005(n+1))`
-/

namespace A235854.P11372007342070334960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A374005 (n + 1)).toNat

end

end A235854.P11372007342070334960

/-! ## A235854.P13087725167448971792

`A235856(A173036(n)+A016825(n))`
-/

namespace A235854.P13087725167448971792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A173036 n + A016825 n).toNat

end

end A235854.P13087725167448971792

/-! ## A235854.P18097554095243111880

`A235856(Δ[A264443(n)])`
-/

namespace A235854.P18097554095243111880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (f1 (n + 1) - f1 n).toNat

end

end A235854.P18097554095243111880

/-! ## A235854.P16533199994848918634

`A235856(A052905(n+2)+1)`
-/

namespace A235854.P16533199994848918634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A052905 (n + 2) + 1).toNat

end

end A235854.P16533199994848918634

/-! ## A235854.P12693859459723879393

`A235856(eq[2, A193592(n)-2])`
-/

namespace A235854.P12693859459723879393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235854.P12693859459723879393

/-!
# A235855: Number of (n+1)X(6+1) 0..3 arrays with the upper median equal to the lower median in every 2X2 subblock.

The programs for A235855, there is no canonical definition to state claims against.
-/

/-! ## A235855.P17913159330883059724

`A235856(A374007(n+1))`
-/

namespace A235855.P17913159330883059724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (A374007 (n + 1)).toNat

end

end A235855.P17913159330883059724

/-! ## A235855.P14833836636165182237

`A235856(eq[5, A193592(n)])`
-/

namespace A235855.P14833836636165182237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235855.P14833836636165182237

/-!
# A235859: Define a(4)=3, then a(n+1) is the smallest prime P such that a(n) <= P < 2*n with 2*n-P=Q prime and, if not possible, a(n+1) is the smallest prime P such that P < a(n) < 2*n with 2*n-P=Q prime.

The programs for A235859, there is no canonical definition to state claims against.
-/

/-! ## A235859.P12046579432707562990

`A007918(A266342(A166019(n+1))+A007918(2*n))`
-/

namespace A235859.P12046579432707562990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A266342 (A166019 (n + 1)).toNat + A007918 (2 * n)).toNat

end

end A235859.P12046579432707562990

/-! ## A235859.P11307532547272438647

`A227345(A101943(3*n))+A007918(2*n)`
-/

namespace A235859.P11307532547272438647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A101943 (3 * n)).toNat + A007918 (2 * n)

end

end A235859.P11307532547272438647

/-!
# A235863: Exponent of the multiplicative group G_n:={x+iy: x^2+y^2==1 (mod n); 0 <= x,y < n} where i=sqrt(-1).

The programs for A235863, there is no canonical definition to state claims against.
-/

/-! ## A235863.P8622269665387520162

`gcd(A046092(A144280(n+1)), A060968(n+1))`
-/

namespace A235863.P8622269665387520162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046092 (A144280 (n + 1)).toNat) (A060968 (n + 1))

end

end A235863.P8622269665387520162

/-! ## A235863.P4008735226569226449

`A042946(A003136(n+1)*A051903(2*(n+2)))`
-/

namespace A235863.P4008735226569226449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042946 (A003136 (n + 1) * A051903 (2 * (n + 2))).toNat

end

end A235863.P4008735226569226449

/-! ## A235863.P13881115192188719670

`A082991(lcm(A005893(n), A052905(n)))`
-/

namespace A235863.P13881115192188719670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082991 (Int.lcm (A005893 n) (A052905 n))

end

end A235863.P13881115192188719670

/-! ## A235863.P17344995511874601125

`gcd(A057923(A003945(n)), A060968(n+1))`
-/

namespace A235863.P17344995511874601125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057923 (A003945 n).toNat) (A060968 (n + 1))

end

end A235863.P17344995511874601125

/-!
# A235864: G-Lehmer numbers: Composite numbers k such that A060968(k) divides A201629(k).

The programs for A235864, there is no canonical definition to state claims against.
-/

/-! ## A235864.P15657316119173446807

`∪[A071700(n+1), A182221(n+1)]`
-/

namespace A235864.P15657316119173446807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235864.P15657316119173446807

/-!
# A235865: G-Carmichael numbers: Composite number such that A235863(n) divides A201629(n).

The programs for A235865, there is no canonical definition to state claims against.
-/

/-! ## A235865.P708422562302152905

`eq[1, A186114(A151693(n))]`
-/

namespace A235865.P708422562302152905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A151693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235865.P708422562302152905

/-! ## A235865.P18438451594568397578

`record[A140472(A102717(n+1)+1)]`
-/

namespace A235865.P18438451594568397578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A102717 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235865.P18438451594568397578

/-! ## A235865.P7321891464992313858

`eq[1, A002262(floor((A170841(n)/3+1)/4))]`
-/

namespace A235865.P7321891464992313858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ⌊((A170841 n : ℚ) / 3 + 1) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235865.P7321891464992313858

/-! ## A235865.P5903464321238415313

`eq[A051006(A170841(n)), A101455(n+1)]`
-/

namespace A235865.P5903464321238415313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051006 (A170841 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235865.P5903464321238415313

/-! ## A235865.P763838359483027221

`eq[A007814(n+1), A170874(A170838(n))]`
-/

namespace A235865.P763838359483027221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170874 (A170838 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235865.P763838359483027221

/-!
# A235866: G-cyclic numbers: numbers n such that gcd(n,A060968(n))=1.

The programs for A235866, the canonical program `A235866.P13257973449972346556` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235866 has offset 1).

The definition of A235866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235866.P13257973449972346556

`eq[1, A324873(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A235866

/-- `eq[1, A324873(n+1)]+1` -/
def P13257973449972346556.Spec : Prop :=
  ∀ n, (P13257973449972346556.a n : ℤ) = A235866 (n + 1)

theorem P13257973449972346556.correct : P13257973449972346556.Spec := by
  intro n
  simp only [A235866, Nat.add_sub_cancel]

end A235866

/-! ## A235866.P7503253906726864190

`filter[2*n+1, A324873(#)]`
-/

namespace A235866.P7503253906726864190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324873 (f1 j) = 1) n)

end

end A235866.P7503253906726864190

namespace A235866

/-- `filter[2*n+1, A324873(#)]` -/
def P7503253906726864190.Spec : Prop :=
  ∀ n, (P7503253906726864190.a n : ℤ) = A235866 (n + 1)

end A235866

/-! ## A235866.P1589006668922221498

`eq[2, A324873(A093178(n)+n)]`
-/

namespace A235866.P1589006668922221498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324873 (A093178 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235866.P1589006668922221498

namespace A235866

/-- `eq[2, A324873(A093178(n)+n)]` -/
def P1589006668922221498.Spec : Prop :=
  ∀ n, (P1589006668922221498.a n : ℤ) = A235866 (n + 1)

end A235866

/-! ## A235866.P16356370098404767820

`record[A004442(n)/A324873(n+1)]`
-/

namespace A235866.P16356370098404767820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 n : ℚ) / (A324873 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235866.P16356370098404767820

namespace A235866

/-- `record[A004442(n)/A324873(n+1)]` -/
def P16356370098404767820.Spec : Prop :=
  ∀ n, P16356370098404767820.a n = (A235866 (n + 1) : ℚ)

end A235866

/-! ## A235866.P8926546443900293829

`record[A109613(n)/A324873(n+1)]`
-/

namespace A235866.P8926546443900293829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 n : ℚ) / (A324873 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235866.P8926546443900293829

namespace A235866

/-- `record[A109613(n)/A324873(n+1)]` -/
def P8926546443900293829.Spec : Prop :=
  ∀ n, P8926546443900293829.a n = (A235866 (n + 1) : ℚ)

end A235866

/-! ## A235866.P11843547977748042512

`eq[1, gcd(n+1, A060968(n+1))]+1`
-/

namespace A235866.P11843547977748042512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A060968 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A235866.P11843547977748042512

namespace A235866

/-- `eq[1, gcd(n+1, A060968(n+1))]+1` -/
def P11843547977748042512.Spec : Prop :=
  ∀ n, (P11843547977748042512.a n : ℤ) = A235866 (n + 1)

end A235866

/-! ## A235866.P16165241194956837251

`eq[4, A324873(A008574(n))]`
-/

namespace A235866.P16165241194956837251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324873 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235866.P16165241194956837251

namespace A235866

/-- `eq[4, A324873(A008574(n))]` -/
def P16165241194956837251.Spec : Prop :=
  ∀ n, (P16165241194956837251.a n : ℤ) = A235866 (n + 1)

end A235866

/-! ## A235866.P15218695074136751369

`record[lcm(n+1, A086932(n+1))/A060968(n+1)]`
-/

namespace A235866.P15218695074136751369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A086932 (n + 1)) : ℚ) / (A060968 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235866.P15218695074136751369

namespace A235866

/-- `record[lcm(n+1, A086932(n+1))/A060968(n+1)]` -/
def P15218695074136751369.Spec : Prop :=
  ∀ n, P15218695074136751369.a n = (A235866 (n + 1) : ℚ)

end A235866

/-! ## A235866.P3497338995936555663

`eq[A000035(n), A324873(A093178(n))]`
-/

namespace A235866.P3497338995936555663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324873 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235866.P3497338995936555663

namespace A235866

/-- `eq[A000035(n), A324873(A093178(n))]` -/
def P3497338995936555663.Spec : Prop :=
  ∀ n, (P3497338995936555663.a n : ℤ) = A235866 (n + 1)

end A235866

/-! ## A235866.P14768195216983025867

`record[A062300(n+1)/A324873(A062300(n+1))]`
-/

namespace A235866.P14768195216983025867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062300 (n + 1) : ℚ) / (A324873 (A062300 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235866.P14768195216983025867

namespace A235866

/-- `record[A062300(n+1)/A324873(A062300(n+1))]` -/
def P14768195216983025867.Spec : Prop :=
  ∀ n, P14768195216983025867.a n = (A235866 (n + 1) : ℚ)

end A235866

/-! ## A235866.P17512753832095306141

`lt[A000005(A324873(n+1)²), 3]+1`
-/

namespace A235866.P17512753832095306141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A324873 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A235866.P17512753832095306141

namespace A235866

/-- `lt[A000005(A324873(n+1)²), 3]+1` -/
def P17512753832095306141.Spec : Prop :=
  ∀ n, (P17512753832095306141.a n : ℤ) = A235866 (n + 1)

end A235866

/-!
# A235868: Union of 2 and powers of odd primes.

The programs for A235868, the canonical program `A235868.P15545439241699027154` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235868 has offset 1).

The definition of A235868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235868.P14865606815055079534

`∪[A014210(n), A061345(n)]`
-/

namespace A235868.P14865606815055079534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P14865606815055079534

namespace A235868

/-- `∪[A014210(n), A061345(n)]` -/
def P14865606815055079534.Spec : Prop :=
  ∀ n, (P14865606815055079534.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P14190816441546704664

`∪[A014211(n), A061345(n)]`
-/

namespace A235868.P14190816441546704664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P14190816441546704664

namespace A235868

/-- `∪[A014211(n), A061345(n)]` -/
def P14190816441546704664.Spec : Prop :=
  ∀ n, (P14190816441546704664.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P1894614241287854383

`∪[A033844(n), A061345(n)]`
-/

namespace A235868.P1894614241287854383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P1894614241287854383

namespace A235868

/-- `∪[A033844(n), A061345(n)]` -/
def P1894614241287854383.Spec : Prop :=
  ∀ n, (P1894614241287854383.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P9142954773717997462

`∪[A037028(n), A061345(n)]`
-/

namespace A235868.P9142954773717997462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P9142954773717997462

namespace A235868

/-- `∪[A037028(n), A061345(n)]` -/
def P9142954773717997462.Spec : Prop :=
  ∀ n, (P9142954773717997462.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P480172905432455932

`∪[A038833(n), A061345(n)]`
-/

namespace A235868.P480172905432455932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P480172905432455932

namespace A235868

/-- `∪[A038833(n), A061345(n)]` -/
def P480172905432455932.Spec : Prop :=
  ∀ n, (P480172905432455932.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P15545439241699027154

`∪[A042988(n), A061345(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A235868

/-- `∪[A042988(n), A061345(n)]` -/
def P15545439241699027154.Spec : Prop :=
  ∀ n, (P15545439241699027154.a n : ℤ) = A235868 (n + 1)

theorem P15545439241699027154.correct : P15545439241699027154.Spec := by
  intro n
  simp only [A235868, Nat.add_sub_cancel]

end A235868

/-! ## A235868.P1919519950881012370

`∪[A042990(n), A061345(n)]`
-/

namespace A235868.P1919519950881012370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P1919519950881012370

namespace A235868

/-- `∪[A042990(n), A061345(n)]` -/
def P1919519950881012370.Spec : Prop :=
  ∀ n, (P1919519950881012370.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P18422165753863832134

`∪[A060191(n), A061345(n)]`
-/

namespace A235868.P18422165753863832134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P18422165753863832134

namespace A235868

/-- `∪[A060191(n), A061345(n)]` -/
def P18422165753863832134.Spec : Prop :=
  ∀ n, (P18422165753863832134.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P12512919959956665846

`∪[A061067(n), A061345(n)]`
-/

namespace A235868.P12512919959956665846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061067 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P12512919959956665846

namespace A235868

/-- `∪[A061067(n), A061345(n)]` -/
def P12512919959956665846.Spec : Prop :=
  ∀ n, (P12512919959956665846.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P1951591181684663024

`∪[A061345(n), A063535(n)]`
-/

namespace A235868.P1951591181684663024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P1951591181684663024

namespace A235868

/-- `∪[A061345(n), A063535(n)]` -/
def P1951591181684663024.Spec : Prop :=
  ∀ n, (P1951591181684663024.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P6710220556257797861

`∪[A061345(n), A093503(n)]`
-/

namespace A235868.P6710220556257797861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093503 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P6710220556257797861

namespace A235868

/-- `∪[A061345(n), A093503(n)]` -/
def P6710220556257797861.Spec : Prop :=
  ∀ n, (P6710220556257797861.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P14473607328732613494

`∪[A061345(n), A243896(n)]`
-/

namespace A235868.P14473607328732613494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243896 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P14473607328732613494

namespace A235868

/-- `∪[A061345(n), A243896(n)]` -/
def P14473607328732613494.Spec : Prop :=
  ∀ n, (P14473607328732613494.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P6617320637234372405

`∪[A029977(n+1), A061345(n)]`
-/

namespace A235868.P6617320637234372405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P6617320637234372405

namespace A235868

/-- `∪[A029977(n+1), A061345(n)]` -/
def P6617320637234372405.Spec : Prop :=
  ∀ n, (P6617320637234372405.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P3083844897884040488

`∪[A000040(n+1), A244623(n+1)]`
-/

namespace A235868.P3083844897884040488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235868.P3083844897884040488

namespace A235868

/-- `∪[A000040(n+1), A244623(n+1)]` -/
def P3083844897884040488.Spec : Prop :=
  ∀ n, (P3083844897884040488.a n : ℤ) = A235868 (n + 1)

end A235868

/-! ## A235868.P16580199719861779940

`record[A034699(n+1)/ceil(xor(n+1, n)/4)]`
-/

namespace A235868.P16580199719861779940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) : ℚ) / (⌈(Nat.xor (n + 1) n : ℚ) / 4⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235868.P16580199719861779940

namespace A235868

/-- `record[A034699(n+1)/ceil(xor(n+1, n)/4)]` -/
def P16580199719861779940.Spec : Prop :=
  ∀ n, P16580199719861779940.a n = (A235868 (n + 1) : ℚ)

end A235868

/-! ## A235868.P10625935454554703863

`filter[A000961(n+1), A098725(#)]`
-/

namespace A235868.P10625935454554703863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A235868.P10625935454554703863

namespace A235868

/-- `filter[A000961(n+1), A098725(#)]` -/
def P10625935454554703863.Spec : Prop :=
  ∀ n, P10625935454554703863.a n = A235868 (n + 1)

end A235868

/-! ## A235868.P3617064068617170917

`filter[A000961(n+1), A166486(#)]`
-/

namespace A235868.P3617064068617170917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A235868.P3617064068617170917

namespace A235868

/-- `filter[A000961(n+1), A166486(#)]` -/
def P3617064068617170917.Spec : Prop :=
  ∀ n, P3617064068617170917.a n = A235868 (n + 1)

end A235868

/-! ## A235868.P6369302639201584227

`filter[A380757(n+1), A098725(#)]`
-/

namespace A235868.P6369302639201584227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A235868.P6369302639201584227

namespace A235868

/-- `filter[A380757(n+1), A098725(#)]` -/
def P6369302639201584227.Spec : Prop :=
  ∀ n, P6369302639201584227.a n = A235868 (n + 1)

end A235868

/-! ## A235868.P5921910053547136231

`filter[A380757(n+1), A166486(#)]`
-/

namespace A235868.P5921910053547136231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A235868.P5921910053547136231

namespace A235868

/-- `filter[A380757(n+1), A166486(#)]` -/
def P5921910053547136231.Spec : Prop :=
  ∀ n, P5921910053547136231.a n = A235868 (n + 1)

end A235868

/-! ## A235868.P13324633831510100556

`filter[A337694(n+1), A137794(#)]`
-/

namespace A235868.P13324633831510100556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A235868.P13324633831510100556

namespace A235868

/-- `filter[A337694(n+1), A137794(#)]` -/
def P13324633831510100556.Spec : Prop :=
  ∀ n, P13324633831510100556.a n = A235868 (n + 1)

end A235868

/-!
# A235870: Expansion of ( f(-q)^12 + 22 * q * f(-q)^6 * f(-q^5)^6 + 125 * q^2 * f(-q^5)^12 ) / (f(-q) * f(-q^5))^2 in powers of q where f() is a Ramanujan theta function.

The programs for A235870, the canonical program `A235870.P554458521654699800` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235870 has offset 0).

The definition of A235870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235870.P554458521654699800

`∑{#}[n, A028887(#)*A028887(n-#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A235870

/-- `∑{#}[n, A028887(#)*A028887(n-#)]` -/
def P554458521654699800.Spec : Prop :=
  ∀ n, P554458521654699800.a n = A235870 n

theorem P554458521654699800.correct : P554458521654699800.Spec := by
  intro n
  simp only [A235870]

end A235870

/-!
# A235871: Primes p such that p+2, p+24 and p+246 are also primes.

The programs for A235871, there is no canonical definition to state claims against.
-/

/-! ## A235871.P6166036407123960113

`A001359(A191126(n+1)+A090874(n))`
-/

namespace A235871.P6166036407123960113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A191126 (n + 1) + A090874 n).toNat

end

end A235871.P6166036407123960113

/-!
# A235872: Number of solutions to the equation x^2=0 in the ring of Gaussian integers modulo n.

The programs for A235872, the canonical program `A235872.P7071108027476958609` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235872 has offset 1).

The definition of A235872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235872.P12185993033696061414

`lcm(∏{p}[n+1, #^val(n+1, #²)]², 2^val(n+1, 2))`
-/

namespace A235872.P12185993033696061414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2) (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A235872.P12185993033696061414

namespace A235872

/-- `lcm(∏{p}[n+1, #^val(n+1, #²)]², 2^val(n+1, 2))` -/
def P12185993033696061414.Spec : Prop :=
  ∀ n, (P12185993033696061414.a n : ℤ) = A235872 (n + 1)

end A235872

/-! ## A235872.P9061323669141781696

`(val(n+1, 2)%2+1)*∏{p}[n+1, #^val(n+1, #²)]²`
-/

namespace A235872.P9061323669141781696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 % 2 + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2

end

end A235872.P9061323669141781696

namespace A235872

/-- `(val(n+1, 2)%2+1)*∏{p}[n+1, #^val(n+1, #²)]²` -/
def P9061323669141781696.Spec : Prop :=
  ∀ n, (P9061323669141781696.a n : ℤ) = A235872 (n + 1)

end A235872

/-! ## A235872.P7071108027476958609

`gcd(n+1, A358821(n+2))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A235872

/-- `gcd(n+1, A358821(n+2))` -/
def P7071108027476958609.Spec : Prop :=
  ∀ n, (P7071108027476958609.a n : ℤ) = A235872 (n + 1)

theorem P7071108027476958609.correct : P7071108027476958609.Spec := by
  intro n
  simp only [A235872, Nat.add_sub_cancel]

end A235872

/-! ## A235872.P4408442781665210755

`lcm(2^val(n+1, 2), A008833(n+1))`
-/

namespace A235872.P4408442781665210755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A008833 (n + 1))

end

end A235872.P4408442781665210755

namespace A235872

/-- `lcm(2^val(n+1, 2), A008833(n+1))` -/
def P4408442781665210755.Spec : Prop :=
  ∀ n, (P4408442781665210755.a n : ℤ) = A235872 (n + 1)

end A235872

/-! ## A235872.P12578711783276994393

`(n+1)/A007913((n+1)/2^val(n+1, 2))`
-/

namespace A235872.P12578711783276994393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ)

end

end A235872.P12578711783276994393

namespace A235872

/-- `(n+1)/A007913((n+1)/2^val(n+1, 2))` -/
def P12578711783276994393.Spec : Prop :=
  ∀ n, P12578711783276994393.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P7319478770018361450

`(n+1)/A007913((n+1)/(or(n, n+1)-n))`
-/

namespace A235872.P7319478770018361450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat : ℚ)

end

end A235872.P7319478770018361450

namespace A235872

/-- `(n+1)/A007913((n+1)/(or(n, n+1)-n))` -/
def P7319478770018361450.Spec : Prop :=
  ∀ n, P7319478770018361450.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P14759931612758774392

`(n+1)/A007913((n+1)/xor(n, or(n, n+1)))`
-/

namespace A235872.P14759931612758774392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat : ℚ)

end

end A235872.P14759931612758774392

namespace A235872

/-- `(n+1)/A007913((n+1)/xor(n, or(n, n+1)))` -/
def P14759931612758774392.Spec : Prop :=
  ∀ n, P14759931612758774392.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P5278205720458148740

`(n+1)/A007913((n+1)/and(n+1, -(n+1)))`
-/

namespace A235872.P5278205720458148740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

end

end A235872.P5278205720458148740

namespace A235872

/-- `(n+1)/A007913((n+1)/and(n+1, -(n+1)))` -/
def P5278205720458148740.Spec : Prop :=
  ∀ n, P5278205720458148740.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P14046873804409257638

`(n+1)/A007913((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A235872.P14046873804409257638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat : ℚ)

end

end A235872.P14046873804409257638

namespace A235872

/-- `(n+1)/A007913((n+1)/ceil(xor(n, n+1)/2))` -/
def P14046873804409257638.Spec : Prop :=
  ∀ n, P14046873804409257638.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P12507560312666416086

`(n+1)/A007913(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A235872.P12507560312666416086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat : ℚ)

end

end A235872.P12507560312666416086

namespace A235872

/-- `(n+1)/A007913(2*(n+1)/(xor(n, n+1)+1))` -/
def P12507560312666416086.Spec : Prop :=
  ∀ n, P12507560312666416086.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P14106354090515830429

`(n+1)/A007913((n+1)/(1-and(n, n+1)+n))`
-/

namespace A235872.P14106354090515830429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℚ))).toNat : ℚ)

end

end A235872.P14106354090515830429

namespace A235872

/-- `(n+1)/A007913((n+1)/(1-and(n, n+1)+n))` -/
def P14106354090515830429.Spec : Prop :=
  ∀ n, P14106354090515830429.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P746093722832556784

`(n+1)/A007913((n+1)/xor(n+1, and(n, n+1)))`
-/

namespace A235872.P746093722832556784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor (n + 1) (Nat.land n (n + 1)) : ℚ))).toNat : ℚ)

end

end A235872.P746093722832556784

namespace A235872

/-- `(n+1)/A007913((n+1)/xor(n+1, and(n, n+1)))` -/
def P746093722832556784.Spec : Prop :=
  ∀ n, P746093722832556784.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P505134995592796892

`(n+1)/A007913((n+1)/floor((xor(n, n+1)+1)/2))`
-/

namespace A235872.P505134995592796892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌊(Nat.xor n (n + 1) + 1 : ℚ) / 2⌋ : ℚ))).toNat : ℚ)

end

end A235872.P505134995592796892

namespace A235872

/-- `(n+1)/A007913((n+1)/floor((xor(n, n+1)+1)/2))` -/
def P505134995592796892.Spec : Prop :=
  ∀ n, P505134995592796892.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P16287503572870098617

`(n+1)/A007913((n+1)/(n+1)%(xor(n, n+1)+1))`
-/

namespace A235872.P16287503572870098617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (((n + 1) % (Nat.xor n (n + 1) + 1) : ℕ) : ℚ))).toNat : ℚ)

end

end A235872.P16287503572870098617

namespace A235872

/-- `(n+1)/A007913((n+1)/(n+1)%(xor(n, n+1)+1))` -/
def P16287503572870098617.Spec : Prop :=
  ∀ n, P16287503572870098617.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P10164129077269957621

`A008833(n+1)*A056832(n+1)`
-/

namespace A235872.P10164129077269957621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A056832 (n + 1)

end

end A235872.P10164129077269957621

namespace A235872

/-- `A008833(n+1)*A056832(n+1)` -/
def P10164129077269957621.Spec : Prop :=
  ∀ n, P10164129077269957621.a n = A235872 (n + 1)

end A235872

/-! ## A235872.P9474157300245408821

`(n+1)/A007913(A000265(n+1))`
-/

namespace A235872.P9474157300245408821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (A000265 (n + 1)).toNat : ℚ)

end

end A235872.P9474157300245408821

namespace A235872

/-- `(n+1)/A007913(A000265(n+1))` -/
def P9474157300245408821.Spec : Prop :=
  ∀ n, P9474157300245408821.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P5971952362488360825

`(n+1)/A076109(A007913(n+1))`
-/

namespace A235872.P5971952362488360825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A076109 (A007913 (n + 1)).toNat : ℚ)

end

end A235872.P5971952362488360825

namespace A235872

/-- `(n+1)/A076109(A007913(n+1))` -/
def P5971952362488360825.Spec : Prop :=
  ∀ n, P5971952362488360825.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P13365048268172590909

`(n+1)/A007913(A153733(n)+1)`
-/

namespace A235872.P13365048268172590909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (A153733 n + 1).toNat : ℚ)

end

end A235872.P13365048268172590909

namespace A235872

/-- `(n+1)/A007913(A153733(n)+1)` -/
def P13365048268172590909.Spec : Prop :=
  ∀ n, P13365048268172590909.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P4031753641643643667

`(n+1)/A007913(A214682(n+1))`
-/

namespace A235872.P4031753641643643667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (A214682 (n + 1)).toNat : ℚ)

end

end A235872.P4031753641643643667

namespace A235872

/-- `(n+1)/A007913(A214682(n+1))` -/
def P4031753641643643667.Spec : Prop :=
  ∀ n, P4031753641643643667.a n = (A235872 (n + 1) : ℚ)

end A235872

/-! ## A235872.P14688310120222761560

`lcm(A006519(n+1), A008833(n+1))`
-/

namespace A235872.P14688310120222761560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A008833 (n + 1))

end

end A235872.P14688310120222761560

namespace A235872

/-- `lcm(A006519(n+1), A008833(n+1))` -/
def P14688310120222761560.Spec : Prop :=
  ∀ n, (P14688310120222761560.a n : ℤ) = A235872 (n + 1)

end A235872

/-!
# A235873: Primes in the tribonacci-like sequence, A141523.

The programs for A235873, there is no canonical definition to state claims against.
-/

/-! ## A235873.P14563146996424637021

`A141523(A235862(n+1))`
-/

namespace A235873.P14563146996424637021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 (A235862 (n + 1)).toNat

end

end A235873.P14563146996424637021

/-! ## A235873.P5203463961948051870

`p?[2*a(n-1)-a(n-4)]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A235873.P5203463961948051870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 1, 5] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235873.P5203463961948051870

/-! ## A235873.P5885572857998625424

`p?[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A235873.P5885572857998625424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A235873.P5885572857998625424

/-! ## A235873.P4850050485531322493

`p?[A141523(n)]`
-/

namespace A235873.P4850050485531322493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235873.P4850050485531322493

/-!
# A235874: First term of the earliest sequence of n consecutive strong primes.

The programs for A235874, there is no canonical definition to state claims against.
-/

/-! ## A235874.P5837107325822116892

`A151800(A158940(n+2))`
-/

namespace A235874.P5837107325822116892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A158940 (n + 2)).toNat

end

end A235874.P5837107325822116892

/-!
# A235875: The number of integers that are smaller than n and whose array of divisors begins like the array of divisors of n.

The programs for A235875, there is no canonical definition to state claims against.
-/

/-! ## A235875.P623639208172633093

`A328194(n+1)+A116609(A036561(n))`
-/

namespace A235875.P623639208172633093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (n + 1) + A116609 (A036561 n).toNat

end

end A235875.P623639208172633093

/-! ## A235875.P11271630791905912825

`A328194(n+1)+A019428(A163756(n))`
-/

namespace A235875.P11271630791905912825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (n + 1) + A019428 (A163756 n).toNat

end

end A235875.P11271630791905912825

/-! ## A235875.P18264029604763987548

`A328194(n+1)+A057427(A069203(n+1))`
-/

namespace A235875.P18264029604763987548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (n + 1) + A057427 (A069203 (n + 1)).toNat

end

end A235875.P18264029604763987548

/-! ## A235875.P4646977971674181144

`A328194(n+1)+A001222(A192594(n+1))`
-/

namespace A235875.P4646977971674181144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (n + 1) + A001222 (A192594 (n + 1)).toNat

end

end A235875.P4646977971674181144

/-! ## A235875.P7863951844040144705

`A328194(n+1)+A257991(A316151(n+1))`
-/

namespace A235875.P7863951844040144705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (n + 1) + A257991 (A316151 (n + 1)).toNat

end

end A235875.P7863951844040144705

/-! ## A235875.P14676437541848259176

`A328194(n+1)+A057428(A069203(n+1))*A057428(n)`
-/

namespace A235875.P14676437541848259176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (n + 1) + A057428 (A069203 (n + 1)).toNat * A057428 n

end

end A235875.P14676437541848259176

/-! ## A235875.P10186140861314301562

`A328194(n+1)+A131576(A131604(n+1))`
-/

namespace A235875.P10186140861314301562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (n + 1) + A131576 (A131604 (n + 1)).toNat

end

end A235875.P10186140861314301562

/-!
# A235876: Number of (n+1)X(n+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2X2 subblock.

The programs for A235876, there is no canonical definition to state claims against.
-/

/-! ## A235876.P14515822398167120751

`A235884(∑[4*n]+1)`
-/

namespace A235876.P14515822398167120751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235876.P14515822398167120751

/-! ## A235876.P10636118854285662289

`lcm(3, A235884(n²+(n+1)²))`
-/

namespace A235876.P10636118854285662289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A235884 (n ^ 2 + (n + 1) ^ 2))

end

end A235876.P10636118854285662289

/-! ## A235876.P3769470692919856550

`record[A235884(A152271(n²))]`
-/

namespace A235876.P3769470692919856550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235876.P3769470692919856550

/-! ## A235876.P1187737946455760274

`record[A003982(n)*A235884(n+1)]`
-/

namespace A235876.P1187737946455760274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235876.P1187737946455760274

/-! ## A235876.P8524882784728617141

`record[gcd(A114327(n), A235884(n+1))]`
-/

namespace A235876.P8524882784728617141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A235884 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235876.P8524882784728617141

/-!
# A235877: Number of (n+1) X (1+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235877, the canonical program `A235877.P7341332797196613739` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235877 has offset 1).

The definition of A235877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235877.P1902944181374486543

`ogf((21-54x)/(1-5x+6x^2))`
-/

namespace A235877.P1902944181374486543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, -54] [1, -5, 6] n

end

end A235877.P1902944181374486543

namespace A235877

/-- `ogf((21-54x)/(1-5x+6x^2))` -/
def P1902944181374486543.Spec : Prop :=
  ∀ n, P1902944181374486543.a n = A235877 (n + 1)

end A235877

/-! ## A235877.P7341332797196613739

`3*(2^(n+2)+3^(n+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235877

/-- `3*(2^(n+2)+3^(n+1))` -/
def P7341332797196613739.Spec : Prop :=
  ∀ n, (P7341332797196613739.a n : ℤ) = A235877 (n + 1)

theorem P7341332797196613739.correct : P7341332797196613739.Spec := by
  intro n
  simp only [A235877, Nat.add_sub_cancel]

end A235877

/-! ## A235877.P4746296630410489571

`lcm(2, a(n-1))+3^(n+1)` with `a(0)=21`
-/

namespace A235877.P4746296630410489571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 3 ^ (n + 1)

end

end A235877.P4746296630410489571

namespace A235877

/-- `lcm(2, a(n-1))+3^(n+1)` -/
def P4746296630410489571.Spec : Prop :=
  ∀ n, (P4746296630410489571.a n : ℤ) = A235877 (n + 1)

end A235877

/-! ## A235877.P12477193279639672965

`5*a(n-1)-6*a(n-2)` with `a(0)=21, a(1)=51`
-/

namespace A235877.P12477193279639672965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21, 51] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2)

end

end A235877.P12477193279639672965

namespace A235877

/-- `5*a(n-1)-6*a(n-2)` -/
def P12477193279639672965.Spec : Prop :=
  ∀ n, P12477193279639672965.a n = A235877 (n + 1)

theorem P12477193279639672965.correct : P12477193279639672965.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A235877, Nat.add_sub_cancel, A235877.P12477193279639672965.a, A235877.P7341332797196613739.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A235877, Nat.add_sub_cancel, A235877.P12477193279639672965.a, A235877.P7341332797196613739.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A235877

/-! ## A235877.P204328209535885718

`a(n-1)+a(n-1)+3^(n+1)` with `a(0)=21`
-/

namespace A235877.P204328209535885718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21] fun n a =>
  a (n - 1) + (a (n - 1) + 3 ^ (n + 1))

end

end A235877.P204328209535885718

namespace A235877

/-- `a(n-1)+a(n-1)+3^(n+1)` -/
def P204328209535885718.Spec : Prop :=
  ∀ n, (P204328209535885718.a n : ℤ) = A235877 (n + 1)

theorem P204328209535885718.correct : P204328209535885718.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A235877, Nat.add_sub_cancel, A235877.P204328209535885718.a, A235877.P7341332797196613739.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A235877, Nat.add_sub_cancel, A235877.P204328209535885718.a, A235877.P7341332797196613739.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A235877

/-! ## A235877.P7633442305387368216

`A087719(n+2)-6`
-/

namespace A235877.P7633442305387368216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087719 (n + 2) - 6

end

end A235877.P7633442305387368216

namespace A235877

/-- `A087719(n+2)-6` -/
def P7633442305387368216.Spec : Prop :=
  ∀ n, P7633442305387368216.a n = A235877 (n + 1)

theorem P7633442305387368216.correct : P7633442305387368216.Spec := by
  intro n
  simp only [A235877, Nat.add_sub_cancel, A235877.P7633442305387368216.a, A235877.P7341332797196613739.a, A087719, A087719.P17722521489382406220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235877

/-! ## A235877.P2935574261537888640

`A254362(n+2)-6`
-/

namespace A235877.P2935574261537888640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254362 (n + 2) - 6

end

end A235877.P2935574261537888640

namespace A235877

/-- `A254362(n+2)-6` -/
def P2935574261537888640.Spec : Prop :=
  ∀ n, P2935574261537888640.a n = A235877 (n + 1)

theorem P2935574261537888640.correct : P2935574261537888640.Spec := by
  intro n
  simp only [A235877, Nat.add_sub_cancel, A235877.P2935574261537888640.a, A235877.P7341332797196613739.a, A254362, A254362.P6743988378768268642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235877

/-! ## A235877.P15596250527674388047

`∑[6*A007689(n)]+9`
-/

namespace A235877.P15596250527674388047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9

end

end A235877.P15596250527674388047

namespace A235877

/-- `∑[6*A007689(n)]+9` -/
def P15596250527674388047.Spec : Prop :=
  ∀ n, P15596250527674388047.a n = A235877 (n + 1)

end A235877

/-! ## A235877.P8009061881010793264

`A081808(n+1)+3^(n+2)`
-/

namespace A235877.P8009061881010793264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081808 (n + 1) + (3 ^ (n + 2) : ℤ)

end

end A235877.P8009061881010793264

namespace A235877

/-- `A081808(n+1)+3^(n+2)` -/
def P8009061881010793264.Spec : Prop :=
  ∀ n, P8009061881010793264.a n = A235877 (n + 1)

theorem P8009061881010793264.correct : P8009061881010793264.Spec := by
  intro n
  simp only [A235877, Nat.add_sub_cancel, A235877.P8009061881010793264.a, A235877.P7341332797196613739.a, A081808, A081808.P2560799609935196517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A235877

/-! ## A235877.P794716327600366022

`A007283(n+2)+3^(n+2)`
-/

namespace A235877.P794716327600366022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 2) + (3 ^ (n + 2) : ℤ)

end

end A235877.P794716327600366022

namespace A235877

/-- `A007283(n+2)+3^(n+2)` -/
def P794716327600366022.Spec : Prop :=
  ∀ n, P794716327600366022.a n = A235877 (n + 1)

theorem P794716327600366022.correct : P794716327600366022.Spec := by
  intro n
  simp only [A235877, Nat.add_sub_cancel, A235877.P794716327600366022.a, A235877.P7341332797196613739.a, A007283, A007283.P7218590649391847614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A235877

/-! ## A235877.P8768060003492500226

`A007689(n+2)+2^(n+3)`
-/

namespace A235877.P8768060003492500226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 (n + 2) + (2 ^ (n + 3) : ℤ)

end

end A235877.P8768060003492500226

namespace A235877

/-- `A007689(n+2)+2^(n+3)` -/
def P8768060003492500226.Spec : Prop :=
  ∀ n, P8768060003492500226.a n = A235877 (n + 1)

theorem P8768060003492500226.correct : P8768060003492500226.Spec := by
  intro n
  simp only [A235877, Nat.add_sub_cancel, A235877.P8768060003492500226.a, A235877.P7341332797196613739.a, A007689, A007689.P5844437503402331617.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A235877

/-! ## A235877.P14472116179777587559

`A085279(n+3)+2^(n+2)`
-/

namespace A235877.P14472116179777587559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 (n + 3) + (2 ^ (n + 2) : ℤ)

end

end A235877.P14472116179777587559

namespace A235877

/-- `A085279(n+3)+2^(n+2)` -/
def P14472116179777587559.Spec : Prop :=
  ∀ n, P14472116179777587559.a n = A235877 (n + 1)

end A235877

/-! ## A235877.P5447640148769301611

`A091629(n+2)+3^(n+2)`
-/

namespace A235877.P5447640148769301611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091629 (n + 2) + (3 ^ (n + 2) : ℤ)

end

end A235877.P5447640148769301611

namespace A235877

/-- `A091629(n+2)+3^(n+2)` -/
def P5447640148769301611.Spec : Prop :=
  ∀ n, P5447640148769301611.a n = A235877 (n + 1)

theorem P5447640148769301611.correct : P5447640148769301611.Spec := by
  intro n
  simp only [A235877, Nat.add_sub_cancel, A235877.P5447640148769301611.a, A235877.P7341332797196613739.a, A091629, A091629.P15422059899758948286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A235877

/-! ## A235877.P6374166632217340281

`A132477(n+2)+3^(n+2)`
-/

namespace A235877.P6374166632217340281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132477 (n + 2) + (3 ^ (n + 2) : ℤ)

end

end A235877.P6374166632217340281

namespace A235877

/-- `A132477(n+2)+3^(n+2)` -/
def P6374166632217340281.Spec : Prop :=
  ∀ n, P6374166632217340281.a n = A235877 (n + 1)

end A235877

/-! ## A235877.P4273505516810715244

`A003945(n+3)+3^(n+2)`
-/

namespace A235877.P4273505516810715244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 3) + (3 ^ (n + 2) : ℤ)

end

end A235877.P4273505516810715244

namespace A235877

/-- `A003945(n+3)+3^(n+2)` -/
def P4273505516810715244.Spec : Prop :=
  ∀ n, P4273505516810715244.a n = A235877 (n + 1)

end A235877

/-! ## A235877.P4720213544035315681

`A042950(n+3)+3^(n+2)`
-/

namespace A235877.P4720213544035315681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (n + 3) + (3 ^ (n + 2) : ℤ)

end

end A235877.P4720213544035315681

namespace A235877

/-- `A042950(n+3)+3^(n+2)` -/
def P4720213544035315681.Spec : Prop :=
  ∀ n, P4720213544035315681.a n = A235877 (n + 1)

end A235877

/-! ## A235877.P12240393216949900857

`A082505(n+3)+3^(n+2)`
-/

namespace A235877.P12240393216949900857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 (n + 3) + (3 ^ (n + 2) : ℤ)

end

end A235877.P12240393216949900857

namespace A235877

/-- `A082505(n+3)+3^(n+2)` -/
def P12240393216949900857.Spec : Prop :=
  ∀ n, P12240393216949900857.a n = A235877 (n + 1)

end A235877

/-! ## A235877.P11328565745032113422

`A085281(n+3)+2^(n+3)`
-/

namespace A235877.P11328565745032113422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 (n + 3) + (2 ^ (n + 3) : ℤ)

end

end A235877.P11328565745032113422

namespace A235877

/-- `A085281(n+3)+2^(n+3)` -/
def P11328565745032113422.Spec : Prop :=
  ∀ n, P11328565745032113422.a n = A235877 (n + 1)

end A235877

/-! ## A235877.P16202526516992815127

`∑{#}[n+1, C(n+1, #)*A153973(#+1)]`
-/

namespace A235877.P16202526516992815127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A153973 (k + 1)

end

end A235877.P16202526516992815127

namespace A235877

/-- `∑{#}[n+1, C(n+1, #)*A153973(#+1)]` -/
def P16202526516992815127.Spec : Prop :=
  ∀ n, P16202526516992815127.a n = A235877 (n + 1)

end A235877

/-! ## A235877.P4571359810897177289

`A169687(n+2)+A110286(n)`
-/

namespace A235877.P4571359810897177289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169687 (n + 2) + A110286 n

end

end A235877.P4571359810897177289

namespace A235877

/-- `A169687(n+2)+A110286(n)` -/
def P4571359810897177289.Spec : Prop :=
  ∀ n, P4571359810897177289.a n = A235877 (n + 1)

theorem P4571359810897177289.correct : P4571359810897177289.Spec := by
  intro n
  simp only [A235877, Nat.add_sub_cancel, A235877.P4571359810897177289.a, A235877.P7341332797196613739.a, A110286, A110286.P7755220645129352326.a, A169687, A169687.P8489480232691167316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A235877

/-!
# A235878: Number of (n+1) X (2+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235878, the canonical program `A235878.P2398778198100713250` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235878 has offset 1).

The definition of A235878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235878.P2398778198100713250

`A245023(n+2)+A081808(n+3)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A235878

/-- `A245023(n+2)+A081808(n+3)` -/
def P2398778198100713250.Spec : Prop :=
  ∀ n, P2398778198100713250.a n = A235878 (n + 1)

theorem P2398778198100713250.correct : P2398778198100713250.Spec := by
  intro n
  simp only [A235878, Nat.add_sub_cancel]

end A235878

/-! ## A235878.P5648976690057358959

`A254362(n+2)+A042950(n+4)`
-/

namespace A235878.P5648976690057358959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254362 (n + 2) + A042950 (n + 4)

end

end A235878.P5648976690057358959

namespace A235878

/-- `A254362(n+2)+A042950(n+4)` -/
def P5648976690057358959.Spec : Prop :=
  ∀ n, P5648976690057358959.a n = A235878 (n + 1)

end A235878

/-! ## A235878.P10280075093370342603

`A254362(n+2)+Δ[A004119(n+4)]`
-/

namespace A235878.P10280075093370342603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254362 (n + 2) + (f1 (n + 1) - f1 n)

end

end A235878.P10280075093370342603

namespace A235878

/-- `A254362(n+2)+Δ[A004119(n+4)]` -/
def P10280075093370342603.Spec : Prop :=
  ∀ n, P10280075093370342603.a n = A235878 (n + 1)

end A235878

/-! ## A235878.P159827524667912781

`A001117(n+2)+A004119(n+5)+2`
-/

namespace A235878.P159827524667912781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 (n + 2) + (A004119 (n + 5) + 2)

end

end A235878.P159827524667912781

namespace A235878

/-- `A001117(n+2)+A004119(n+5)+2` -/
def P159827524667912781.Spec : Prop :=
  ∀ n, P159827524667912781.a n = A235878 (n + 1)

end A235878

/-! ## A235878.P6073361230709282616

`A007689(n+2)+A005126(n+5)-n`
-/

namespace A235878.P6073361230709282616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 (n + 2) + (A005126 (n + 5) - (n : ℤ))

end

end A235878.P6073361230709282616

namespace A235878

/-- `A007689(n+2)+A005126(n+5)-n` -/
def P6073361230709282616.Spec : Prop :=
  ∀ n, P6073361230709282616.a n = A235878 (n + 1)

theorem P6073361230709282616.correct : P6073361230709282616.Spec := by
  intro n
  simp only [A235878, Nat.add_sub_cancel, A235878.P6073361230709282616.a, A235878.P2398778198100713250.a, A005126, A005126.P13923731135522732508.a, A007689, A007689.P5844437503402331617.a, A081808, A081808.P2560799609935196517.a, A245023, A245023.P5269609917888441665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A235878

/-! ## A235878.P11687672021428678326

`A085279(n+3)+A061761(n+5)-A061761(n+2)`
-/

namespace A235878.P11687672021428678326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 (n + 3) + (A061761 (n + 5) - A061761 (n + 2))

end

end A235878.P11687672021428678326

namespace A235878

/-- `A085279(n+3)+A061761(n+5)-A061761(n+2)` -/
def P11687672021428678326.Spec : Prop :=
  ∀ n, P11687672021428678326.a n = A235878 (n + 1)

end A235878

/-! ## A235878.P3567629068358347614

`A001117(n+2)+A000051(n+6)-A000918(n+4)`
-/

namespace A235878.P3567629068358347614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 (n + 2) + (A000051 (n + 6) - A000918 (n + 4))

end

end A235878.P3567629068358347614

namespace A235878

/-- `A001117(n+2)+A000051(n+6)-A000918(n+4)` -/
def P3567629068358347614.Spec : Prop :=
  ∀ n, P3567629068358347614.a n = A235878 (n + 1)

theorem P3567629068358347614.correct : P3567629068358347614.Spec := by
  intro n
  simp only [A235878, Nat.add_sub_cancel, A235878.P3567629068358347614.a, A235878.P2398778198100713250.a, A000051, A000051.P14067217022188782580.a, A000918, A000918.P14329454465793069288.a, A001117, A001117.P5586515972310678558.a, A081808, A081808.P2560799609935196517.a, A245023, A245023.P5269609917888441665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A235878

/-! ## A235878.P16390058991478513819

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=51, a(1)=105, a(2)=231`
-/

namespace A235878.P16390058991478513819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [51, 105, 231] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A235878.P16390058991478513819

namespace A235878

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P16390058991478513819.Spec : Prop :=
  ∀ n, P16390058991478513819.a n = A235878 (n + 1)

theorem P16390058991478513819.correct : P16390058991478513819.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A235878, Nat.add_sub_cancel, A235878.P16390058991478513819.a, A235878.P2398778198100713250.a, A081808, A081808.P2560799609935196517.a, A245023, A245023.P5269609917888441665.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A235878, Nat.add_sub_cancel, A235878.P16390058991478513819.a, A235878.P2398778198100713250.a, A081808, A081808.P2560799609935196517.a, A245023, A245023.P5269609917888441665.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A235878

/-!
# A235879: Number of (n+1) X (3+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235879, the canonical program `A235879.P1504288234909662281` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235879 has offset 1).

The definition of A235879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235879.P1504288234909662281

`A183626(n+1)+A305155(n)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A235879

/-- `A183626(n+1)+A305155(n)+1` -/
def P1504288234909662281.Spec : Prop :=
  ∀ n, P1504288234909662281.a n = A235879 (n + 1)

theorem P1504288234909662281.correct : P1504288234909662281.Spec := by
  intro n
  simp only [A235879, Nat.add_sub_cancel]

end A235879

/-! ## A235879.P15853859390353794704

`A183624(n+1)+6*A175161(n)+A305155(n)+1`
-/

namespace A235879.P15853859390353794704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183624 (n + 1) + 6 * A175161 n + (A305155 n + 1)

end

end A235879.P15853859390353794704

namespace A235879

/-- `A183624(n+1)+6*A175161(n)+A305155(n)+1` -/
def P15853859390353794704.Spec : Prop :=
  ∀ n, P15853859390353794704.a n = A235879 (n + 1)

end A235879

/-! ## A235879.P6424661700605203063

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=129, a(1)=231, a(2)=453`
-/

namespace A235879.P6424661700605203063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [129, 231, 453] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A235879.P6424661700605203063

namespace A235879

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P6424661700605203063.Spec : Prop :=
  ∀ n, P6424661700605203063.a n = A235879 (n + 1)

theorem P6424661700605203063.correct : P6424661700605203063.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A235879, Nat.add_sub_cancel, A235879.P6424661700605203063.a, A235879.P1504288234909662281.a, A183626, A183626.P17793019024115659213.a, A305155, A305155.P2907994602454921204.a, A175161, A175161.P2150735603067975038.a, A183624, A183624.P5127553162645094958.a, A254028, A254028.P7205106388263872069.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A235879, Nat.add_sub_cancel, A235879.P6424661700605203063.a, A235879.P1504288234909662281.a, A183626, A183626.P17793019024115659213.a, A305155, A305155.P2907994602454921204.a, A175161, A175161.P2150735603067975038.a, A183624, A183624.P5127553162645094958.a, A254028, A254028.P7205106388263872069.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A235879

/-! ## A235879.P3977002259429073294

`A235884(∑[n+2]+4)`
-/

namespace A235879.P3977002259429073294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235879.P3977002259429073294

namespace A235879

/-- `A235884(∑[n+2]+4)` -/
def P3977002259429073294.Spec : Prop :=
  ∀ n, P3977002259429073294.a n = A235879 (n + 1)

end A235879

/-! ## A235879.P7627769442796200237

`record[A235884(A008795(n)+3)]`
-/

namespace A235879.P7627769442796200237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235879.P7627769442796200237

namespace A235879

/-- `record[A235884(A008795(n)+3)]` -/
def P7627769442796200237.Spec : Prop :=
  ∀ n, P7627769442796200237.a n = A235879 (n + 1)

end A235879

/-!
# A235880: Number of (n+1) X (4+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235880, the canonical program `A235880.P6781547381356560178` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235880 has offset 1).

The definition of A235880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235880.P6781547381356560178

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=339, a(1)=537, a(2)=951`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235880

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P6781547381356560178.Spec : Prop :=
  ∀ n, P6781547381356560178.a n = A235880 (n + 1)

theorem P6781547381356560178.correct : P6781547381356560178.Spec := by
  intro n
  simp only [A235880, Nat.add_sub_cancel]

end A235880

/-! ## A235880.P17250110158937226722

`A235884(∑[n+3]+7)`
-/

namespace A235880.P17250110158937226722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235880.P17250110158937226722

namespace A235880

/-- `A235884(∑[n+3]+7)` -/
def P17250110158937226722.Spec : Prop :=
  ∀ n, P17250110158937226722.a n = A235880 (n + 1)

end A235880

/-! ## A235880.P11774775383994422009

`lcm(3, A235884(A055998(n+1)+7))`
-/

namespace A235880.P11774775383994422009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A235884 (A055998 (n + 1) + 7).toNat)

end

end A235880.P11774775383994422009

namespace A235880

/-- `lcm(3, A235884(A055998(n+1)+7))` -/
def P11774775383994422009.Spec : Prop :=
  ∀ n, (P11774775383994422009.a n : ℤ) = A235880 (n + 1)

end A235880

/-! ## A235880.P13089715972289353443

`A007318(C(2, n))*A235884(A055998(n+1)+7)`
-/

namespace A235880.P13089715972289353443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235884 (A055998 (n + 1) + 7).toNat

end

end A235880.P13089715972289353443

namespace A235880

/-- `A007318(C(2, n))*A235884(A055998(n+1)+7)` -/
def P13089715972289353443.Spec : Prop :=
  ∀ n, P13089715972289353443.a n = A235880 (n + 1)

end A235880

/-! ## A235880.P5733072257520646733

`A235884(A055998(n+1)+7)+A008683(4*(n+1))`
-/

namespace A235880.P5733072257520646733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (A055998 (n + 1) + 7).toNat + A008683 (4 * (n + 1))

end

end A235880.P5733072257520646733

namespace A235880

/-- `A235884(A055998(n+1)+7)+A008683(4*(n+1))` -/
def P5733072257520646733.Spec : Prop :=
  ∀ n, P5733072257520646733.a n = A235880 (n + 1)

end A235880

/-!
# A235881: Number of (n+1) X (5+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235881, there is no canonical definition to state claims against.
-/

/-! ## A235881.P172530001188535453

`A235884(∑[n+4]+11)`
-/

namespace A235881.P172530001188535453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A235881.P172530001188535453

/-! ## A235881.P10550508425058335651

`lcm(3, A235884(A167499(n+3)))`
-/

namespace A235881.P10550508425058335651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A235884 (A167499 (n + 3)).toNat)

end

end A235881.P10550508425058335651

/-! ## A235881.P1336770007030976249

`A007318(C(2, n))*A235884(A167499(n+3))`
-/

namespace A235881.P1336770007030976249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235884 (A167499 (n + 3)).toNat

end

end A235881.P1336770007030976249

/-! ## A235881.P14348055287193810867

`A235884(A167499(n+3))/A007318(C(n, n²))`
-/

namespace A235881.P14348055287193810867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235884 (A167499 (n + 3)).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A235881.P14348055287193810867

/-! ## A235881.P11851033095073751124

`A000041(C(2, n+2))*A235884(A167499(n+3))`
-/

namespace A235881.P11851033095073751124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A235884 (A167499 (n + 3)).toNat

end

end A235881.P11851033095073751124

/-!
# A235882: Number of (n+1) X (6+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235882, there is no canonical definition to state claims against.
-/

/-! ## A235882.P9658648975449599409

`A235884(∑[n+5]+16)`
-/

namespace A235882.P9658648975449599409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A235882.P9658648975449599409

/-! ## A235882.P1144876991064991250

`lcm(3, A235884(Δ[A264443(n)]+10))`
-/

namespace A235882.P1144876991064991250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A235884 (f1 (n + 1) - f1 n + 10).toNat)

end

end A235882.P1144876991064991250

/-! ## A235882.P11895768551602208088

`or(1, A235884(A253145(n+4)+6))`
-/

namespace A235882.P11895768551602208088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235884 (A253145 (n + 4) + 6).toNat)

end

end A235882.P11895768551602208088

/-! ## A235882.P4570188586716417513

`or(1, A235884(A056000(n+1)+16))`
-/

namespace A235882.P4570188586716417513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235884 (A056000 (n + 1) + 16).toNat)

end

end A235882.P4570188586716417513

/-! ## A235882.P12177962791686967951

`A235884(A056115(n)+21)+A000038(n+1)`
-/

namespace A235882.P12177962791686967951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (A056115 n + 21).toNat + A000038 (n + 1)

end

end A235882.P12177962791686967951

/-!
# A235883: Number of (n+1) X (7+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235883, there is no canonical definition to state claims against.
-/

/-! ## A235883.P1525527415259762676

`A235884(C(n+8, 2)-n)`
-/

namespace A235883.P1525527415259762676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (Nat.choose (n + 8) 2 - n)

end

end A235883.P1525527415259762676

/-! ## A235883.P1471051950487877751

`A235884(A167487(n+5))`
-/

namespace A235883.P1471051950487877751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (A167487 (n + 5)).toNat

end

end A235883.P1471051950487877751

/-! ## A235883.P11815927291925726668

`A235884(A056119(n)+28)`
-/

namespace A235883.P11815927291925726668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (A056119 n + 28).toNat

end

end A235883.P11815927291925726668

/-! ## A235883.P8517665907559671720

`A235884(eq[11, A066657(n)])`
-/

namespace A235883.P8517665907559671720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235883.P8517665907559671720

/-! ## A235883.P17726884725251579245

`A235884(A167499(n+5)+2)`
-/

namespace A235883.P17726884725251579245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235884 (A167499 (n + 5) + 2).toNat

end

end A235883.P17726884725251579245

/-!
# A235885: Number of (n+1) X (n+1) 0..3 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235885, there is no canonical definition to state claims against.
-/

/-! ## A235885.P7053612299417528397

`8*A087348(2^n)`
-/

namespace A235885.P7053612299417528397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A087348 (2 ^ n)

end

end A235885.P7053612299417528397

/-! ## A235885.P12304623581855132354

`A145995(2^(n+2))`
-/

namespace A235885.P12304623581855132354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (2 ^ (n + 2))

end

end A235885.P12304623581855132354

/-! ## A235885.P2934750217264859075

`A235893(∑[4*n]+1)`
-/

namespace A235885.P2934750217264859075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235885.P2934750217264859075

/-! ## A235885.P3775490933123145070

`A147874(2^(n+2))+1`
-/

namespace A235885.P3775490933123145070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147874 (2 ^ (n + 2)) + 1

end

end A235885.P3775490933123145070

/-! ## A235885.P15042830012374125612

`A295905(2^(n+2))-1`
-/

namespace A235885.P15042830012374125612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295905 (2 ^ (n + 2)) - 1

end

end A235885.P15042830012374125612

/-!
# A235886: Number of (n+1) X (1+1) 0..3 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235886, the canonical program `A235886.P4859547725472708315` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235886 has offset 1).

The definition of A235886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235886.P4859547725472708315

`(∑[2^(n+1)]+5)²-9`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235886

/-- `(∑[2^(n+1)]+5)²-9` -/
def P4859547725472708315.Spec : Prop :=
  ∀ n, P4859547725472708315.a n = A235886 (n + 1)

theorem P4859547725472708315.correct : P4859547725472708315.Spec := by
  intro n
  simp only [A235886, Nat.add_sub_cancel]

end A235886

/-! ## A235886.P18359480490744515188

`8*A257273(n+1)`
-/

namespace A235886.P18359480490744515188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A257273 (n + 1)

end

end A235886.P18359480490744515188

namespace A235886

/-- `8*A257273(n+1)` -/
def P18359480490744515188.Spec : Prop :=
  ∀ n, P18359480490744515188.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P1930899767920350890

`8*(A297928(n)+1)`
-/

namespace A235886.P1930899767920350890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A297928 n + 1)

end

end A235886.P1930899767920350890

namespace A235886

/-- `8*(A297928(n)+1)` -/
def P1930899767920350890.Spec : Prop :=
  ∀ n, P1930899767920350890.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P5268586573344358756

`and((A020707(n)+3)²-9, -(n+1))`
-/

namespace A235886.P5268586573344358756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A020707 n + 3) ^ 2 - 9) (-(n + 1 : ℤ))

end

end A235886.P5268586573344358756

namespace A235886

/-- `and((A020707(n)+3)²-9, -(n+1))` -/
def P5268586573344358756.Spec : Prop :=
  ∀ n, P5268586573344358756.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P16713082050220254319

`xor(A083705(n), A165222(n))`
-/

namespace A235886.P16713082050220254319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083705 n) (A165222 n)

end

end A235886.P16713082050220254319

namespace A235886

/-- `xor(A083705(n), A165222(n))` -/
def P16713082050220254319.Spec : Prop :=
  ∀ n, P16713082050220254319.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P2464865746235169513

`(A000051(n+1)+2)*A020707(n+1)`
-/

namespace A235886.P2464865746235169513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 (n + 1) + 2) * A020707 (n + 1)

end

end A235886.P2464865746235169513

namespace A235886

/-- `(A000051(n+1)+2)*A020707(n+1)` -/
def P2464865746235169513.Spec : Prop :=
  ∀ n, P2464865746235169513.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P10866384373899948365

`(A112032(2*n)+6)*A112032(2*n)`
-/

namespace A235886.P10866384373899948365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112032 (2 * n) + 6) * A112032 (2 * n)

end

end A235886.P10866384373899948365

namespace A235886

/-- `(A112032(2*n)+6)*A112032(2*n)` -/
def P10866384373899948365.Spec : Prop :=
  ∀ n, P10866384373899948365.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P6500827622631205206

`(A145071(n+2)-n)*A062709(n+1)`
-/

namespace A235886.P6500827622631205206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145071 (n + 2) - (n : ℤ)) * A062709 (n + 1)

end

end A235886.P6500827622631205206

namespace A235886

/-- `(A145071(n+2)-n)*A062709(n+1)` -/
def P6500827622631205206.Spec : Prop :=
  ∀ n, P6500827622631205206.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P8369842225313667103

`(A175163(n)-A175161(n+1))*A000079(n)`
-/

namespace A235886.P8369842225313667103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175163 n - A175161 (n + 1)) * A000079 n

end

end A235886.P8369842225313667103

namespace A235886

/-- `(A175163(n)-A175161(n+1))*A000079(n)` -/
def P8369842225313667103.Spec : Prop :=
  ∀ n, P8369842225313667103.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P3038051897914472122

`(A007283(n+1)+A000079(n+1))*A062709(n+1)`
-/

namespace A235886.P3038051897914472122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007283 (n + 1) + A000079 (n + 1)) * A062709 (n + 1)

end

end A235886.P3038051897914472122

namespace A235886

/-- `(A007283(n+1)+A000079(n+1))*A062709(n+1)` -/
def P3038051897914472122.Spec : Prop :=
  ∀ n, P3038051897914472122.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P17643814439007311683

`(A068156(n+1)+A062709(n+1))*A062709(n+1)`
-/

namespace A235886.P17643814439007311683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068156 (n + 1) + A062709 (n + 1)) * A062709 (n + 1)

end

end A235886.P17643814439007311683

namespace A235886

/-- `(A068156(n+1)+A062709(n+1))*A062709(n+1)` -/
def P17643814439007311683.Spec : Prop :=
  ∀ n, P17643814439007311683.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P1982215272261441824

`(A181565(n+1)+A000225(n+1))*A062709(n+1)`
-/

namespace A235886.P1982215272261441824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181565 (n + 1) + A000225 (n + 1)) * A062709 (n + 1)

end

end A235886.P1982215272261441824

namespace A235886

/-- `(A181565(n+1)+A000225(n+1))*A062709(n+1)` -/
def P1982215272261441824.Spec : Prop :=
  ∀ n, P1982215272261441824.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P4774480921892680597

`(A209724(2*n+1)+A153973(n+2))*A000079(n+1)`
-/

namespace A235886.P4774480921892680597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A209724 (2 * n + 1) + A153973 (n + 2)) * A000079 (n + 1)

end

end A235886.P4774480921892680597

namespace A235886

/-- `(A209724(2*n+1)+A153973(n+2))*A000079(n+1)` -/
def P4774480921892680597.Spec : Prop :=
  ∀ n, P4774480921892680597.a n = A235886 (n + 1)

end A235886

/-! ## A235886.P10169234744978095136

`Δ[A235887(n+1)/3]`
-/

namespace A235886.P10169234744978095136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235887 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235886.P10169234744978095136

namespace A235886

/-- `Δ[A235887(n+1)/3]` -/
def P10169234744978095136.Spec : Prop :=
  ∀ n, P10169234744978095136.a n = (A235886 (n + 1) : ℚ)

end A235886

/-! ## A235886.P7094573347801114436

`Δ[A188165(n+2)²/3]`
-/

namespace A235886.P7094573347801114436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188165 (n + 2) ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235886.P7094573347801114436

namespace A235886

/-- `Δ[A188165(n+2)²/3]` -/
def P7094573347801114436.Spec : Prop :=
  ∀ n, P7094573347801114436.a n = (A235886 (n + 1) : ℚ)

end A235886

/-!
# A235887: Number of (n+1) X (2+1) 0..3 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235887, the canonical program `A235887.P11209633854163169584` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235887 has offset 1).

The definition of A235887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235887.P11209633854163169584

`4*(6+9*2^(n+1)+4^(n+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235887

/-- `4*(6+9*2^(n+1)+4^(n+1))` -/
def P11209633854163169584.Spec : Prop :=
  ∀ n, (P11209633854163169584.a n : ℤ) = A235887 (n + 1)

theorem P11209633854163169584.correct : P11209633854163169584.Spec := by
  intro n
  simp only [A235887, Nat.add_sub_cancel]

end A235887

/-! ## A235887.P16124909060824276538

`A159741(n+1)*A168614(n)+64`
-/

namespace A235887.P16124909060824276538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159741 (n + 1) * A168614 n + 64

end

end A235887.P16124909060824276538

namespace A235887

/-- `A159741(n+1)*A168614(n)+64` -/
def P16124909060824276538.Spec : Prop :=
  ∀ n, P16124909060824276538.a n = A235887 (n + 1)

end A235887

/-! ## A235887.P5143123650876510707

`A175163(n+1)+A000225(n+1)*A175161(n)`
-/

namespace A235887.P5143123650876510707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175163 (n + 1) + A000225 (n + 1) * A175161 n

end

end A235887.P5143123650876510707

namespace A235887

/-- `A175163(n+1)+A000225(n+1)*A175161(n)` -/
def P5143123650876510707.Spec : Prop :=
  ∀ n, P5143123650876510707.a n = A235887 (n + 1)

end A235887

/-! ## A235887.P7179157105643580201

`A175163(n+1)+A000918(n+2)*A140504(n+2)`
-/

namespace A235887.P7179157105643580201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175163 (n + 1) + A000918 (n + 2) * A140504 (n + 2)

end

end A235887.P7179157105643580201

namespace A235887

/-- `A175163(n+1)+A000918(n+2)*A140504(n+2)` -/
def P7179157105643580201.Spec : Prop :=
  ∀ n, P7179157105643580201.a n = A235887 (n + 1)

end A235887

/-! ## A235887.P11244670218761895476

`A175161(n+2)+A140504(n+1)*A140504(n+3)`
-/

namespace A235887.P11244670218761895476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175161 (n + 2) + A140504 (n + 1) * A140504 (n + 3)

end

end A235887.P11244670218761895476

namespace A235887

/-- `A175161(n+2)+A140504(n+1)*A140504(n+3)` -/
def P11244670218761895476.Spec : Prop :=
  ∀ n, P11244670218761895476.a n = A235887 (n + 1)

end A235887

/-! ## A235887.P3329074353490772786

`A242475(2*(n+2))+A242475(n+3)+A242475(n+6)`
-/

namespace A235887.P3329074353490772786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242475 (2 * (n + 2)) + (A242475 (n + 3) + A242475 (n + 6))

end

end A235887.P3329074353490772786

namespace A235887

/-- `A242475(2*(n+2))+A242475(n+3)+A242475(n+6)` -/
def P3329074353490772786.Spec : Prop :=
  ∀ n, P3329074353490772786.a n = A235887 (n + 1)

end A235887

/-! ## A235887.P4083849811821324709

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=112, a(1)=232, a(2)=568`
-/

namespace A235887.P4083849811821324709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [112, 232, 568] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A235887.P4083849811821324709

namespace A235887

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P4083849811821324709.Spec : Prop :=
  ∀ n, P4083849811821324709.a n = A235887 (n + 1)

theorem P4083849811821324709.correct : P4083849811821324709.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A235887, Nat.add_sub_cancel, A235887.P4083849811821324709.a, A235887.P11209633854163169584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A235887, Nat.add_sub_cancel, A235887.P4083849811821324709.a, A235887.P11209633854163169584.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A235887

/-!
# A235888: Number of (n+1) X (3+1) 0..3 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235888, the canonical program `A235888.P12398577903563282519` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235888 has offset 1).

The definition of A235888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235888.P12398577903563282519

`4*(42+21*2^(n+1)+4^(n+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235888

/-- `4*(42+21*2^(n+1)+4^(n+1))` -/
def P12398577903563282519.Spec : Prop :=
  ∀ n, (P12398577903563282519.a n : ℤ) = A235888 (n + 1)

theorem P12398577903563282519.correct : P12398577903563282519.Spec := by
  intro n
  simp only [A235888, Nat.add_sub_cancel]

end A235888

/-! ## A235888.P17171216954040369703

`A235893(∑[n+2]+4)`
-/

namespace A235888.P17171216954040369703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235888.P17171216954040369703

namespace A235888

/-- `A235893(∑[n+2]+4)` -/
def P17171216954040369703.Spec : Prop :=
  ∀ n, P17171216954040369703.a n = A235888 (n + 1)

end A235888

/-! ## A235888.P6990427359429532307

`record[A235893(A008795(n)+3)]`
-/

namespace A235888.P6990427359429532307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235888.P6990427359429532307

namespace A235888

/-- `record[A235893(A008795(n)+3)]` -/
def P6990427359429532307.Spec : Prop :=
  ∀ n, P6990427359429532307.a n = A235888 (n + 1)

end A235888

/-! ## A235888.P2915658241870363459

`lcm(2, A235893(A167614(n+1)))`
-/

namespace A235888.P2915658241870363459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235893 (A167614 (n + 1)).toNat)

end

end A235888.P2915658241870363459

namespace A235888

/-- `lcm(2, A235893(A167614(n+1)))` -/
def P2915658241870363459.Spec : Prop :=
  ∀ n, (P2915658241870363459.a n : ℤ) = A235888 (n + 1)

end A235888

/-! ## A235888.P10286794556829375652

`A235893(A167614(n+1))^A010689(2*n)`
-/

namespace A235888.P10286794556829375652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235893 (A167614 (n + 1)).toNat : ℚ) ^ (A010689 (2 * n) : ℤ)

end

end A235888.P10286794556829375652

namespace A235888

/-- `A235893(A167614(n+1))^A010689(2*n)` -/
def P10286794556829375652.Spec : Prop :=
  ∀ n, P10286794556829375652.a n = (A235888 (n + 1) : ℚ)

end A235888

/-!
# A235889: Number of (n+1) X (4+1) 0..3 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235889, the canonical program `A235889.P5700847630838846843` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235889 has offset 1).

The definition of A235889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235889.P5700847630838846843

`4*(210+45*2^(n+1)+4^(n+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235889

/-- `4*(210+45*2^(n+1)+4^(n+1))` -/
def P5700847630838846843.Spec : Prop :=
  ∀ n, (P5700847630838846843.a n : ℤ) = A235889 (n + 1)

theorem P5700847630838846843.correct : P5700847630838846843.Spec := by
  intro n
  simp only [A235889, Nat.add_sub_cancel]

end A235889

/-! ## A235889.P116886086167319275

`A235893(∑[n+3]+7)`
-/

namespace A235889.P116886086167319275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235889.P116886086167319275

namespace A235889

/-- `A235893(∑[n+3]+7)` -/
def P116886086167319275.Spec : Prop :=
  ∀ n, P116886086167319275.a n = A235889 (n + 1)

end A235889

/-! ## A235889.P7289851734130777142

`A235893(A052905(n)+9)/A053589(2*n+5)`
-/

namespace A235889.P7289851734130777142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235893 (A052905 n + 9).toNat : ℚ) / (A053589 (2 * n + 5) : ℚ)

end

end A235889.P7289851734130777142

namespace A235889

/-- `A235893(A052905(n)+9)/A053589(2*n+5)` -/
def P7289851734130777142.Spec : Prop :=
  ∀ n, P7289851734130777142.a n = (A235889 (n + 1) : ℚ)

end A235889

/-! ## A235889.P8202874563107642134

`A235893(A055998(n+2))%A235850(n+4)`
-/

namespace A235889.P8202874563107642134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235893 (A055998 (n + 2)).toNat) (A235850 (n + 4))

end

end A235889.P8202874563107642134

namespace A235889

/-- `A235893(A055998(n+2))%A235850(n+4)` -/
def P8202874563107642134.Spec : Prop :=
  ∀ n, P8202874563107642134.a n = A235889 (n + 1)

end A235889

/-!
# A235890: Number of (n+1) X (5+1) 0..3 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235890, the canonical program `A235890.P11797001980922089578` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235890 has offset 1).

The definition of A235890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235890.P11797001980922089578

`4*(930+93*2^(n+1)+4^(n+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A235890

/-- `4*(930+93*2^(n+1)+4^(n+1))` -/
def P11797001980922089578.Spec : Prop :=
  ∀ n, (P11797001980922089578.a n : ℤ) = A235890 (n + 1)

theorem P11797001980922089578.correct : P11797001980922089578.Spec := by
  intro n
  simp only [A235890, Nat.add_sub_cancel]

end A235890

/-! ## A235890.P6807158059097450437

`A235893(A374005(n+1))`
-/

namespace A235890.P6807158059097450437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (A374005 (n + 1)).toNat

end

end A235890.P6807158059097450437

namespace A235890

/-- `A235893(A374005(n+1))` -/
def P6807158059097450437.Spec : Prop :=
  ∀ n, P6807158059097450437.a n = A235890 (n + 1)

end A235890

/-! ## A235890.P2261785191744122402

`A235893(A155212(n)+13)`
-/

namespace A235890.P2261785191744122402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (A155212 n + 13).toNat

end

end A235890.P2261785191744122402

namespace A235890

/-- `A235893(A155212(n)+13)` -/
def P2261785191744122402.Spec : Prop :=
  ∀ n, P2261785191744122402.a n = A235890 (n + 1)

end A235890

/-! ## A235890.P9070854268114101206

`A235893(A056000(n)+15)`
-/

namespace A235890.P9070854268114101206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (A056000 n + 15).toNat

end

end A235890.P9070854268114101206

namespace A235890

/-- `A235893(A056000(n)+15)` -/
def P9070854268114101206.Spec : Prop :=
  ∀ n, P9070854268114101206.a n = A235890 (n + 1)

end A235890

/-! ## A235890.P6855936789553026686

`A235893(eq[7, A066657(n)])`
-/

namespace A235890.P6855936789553026686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235890.P6855936789553026686

namespace A235890

/-- `A235893(eq[7, A066657(n)])` -/
def P6855936789553026686.Spec : Prop :=
  ∀ n, P6855936789553026686.a n = A235890 (n + 1)

end A235890

/-!
# A235891: Number of (n+1) X (6+1) 0..3 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235891, there is no canonical definition to state claims against.
-/

/-! ## A235891.P6453480091790089350

`A235893(∑[n+5]+16)`
-/

namespace A235891.P6453480091790089350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A235891.P6453480091790089350

/-! ## A235891.P4969938973046771

`lcm(2, A235893(A166136(n+4)))`
-/

namespace A235891.P4969938973046771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235893 (A166136 (n + 4)).toNat)

end

end A235891.P4969938973046771

/-!
# A235892: Number of (n+1) X (7+1) 0..3 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

The programs for A235892, there is no canonical definition to state claims against.
-/

/-! ## A235892.P3634791091884143180

`A235893(A374008(n+1))`
-/

namespace A235892.P3634791091884143180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (A374008 (n + 1)).toNat

end

end A235892.P3634791091884143180

/-! ## A235892.P236822345425821194

`A235893(A167487(n+5))`
-/

namespace A235892.P236822345425821194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (A167487 (n + 5)).toNat

end

end A235892.P236822345425821194

/-! ## A235892.P15189935910545405815

`A235893(A056119(n)+28)`
-/

namespace A235892.P15189935910545405815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (A056119 n + 28).toNat

end

end A235892.P15189935910545405815

/-! ## A235892.P9688585852166429804

`A235893(eq[11, A066657(n)])`
-/

namespace A235892.P9688585852166429804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235892.P9688585852166429804

/-! ## A235892.P6220051885647562018

`A235893(A167499(n+5)+2)`
-/

namespace A235892.P6220051885647562018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235893 (A167499 (n + 5) + 2).toNat

end

end A235892.P6220051885647562018

/-!
# A235894: Number of (n+1)X(n+1) 0..2 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235894, there is no canonical definition to state claims against.
-/

/-! ## A235894.P18129593973378272617

`A235902(∑[4*n]+1)`
-/

namespace A235894.P18129593973378272617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235894.P18129593973378272617

/-! ## A235894.P12190821899043055036

`or(1, A235902(A001844(n)))`
-/

namespace A235894.P12190821899043055036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235902 (A001844 n).toNat)

end

end A235894.P12190821899043055036

/-! ## A235894.P2134379477357076762

`record[A003982(n)*A235902(n+1)]`
-/

namespace A235894.P2134379477357076762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235894.P2134379477357076762

/-! ## A235894.P16632227969590978459

`A235902(A001844(n))+C(2, A000203(n+2))`
-/

namespace A235894.P16632227969590978459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A001844 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A235894.P16632227969590978459

/-! ## A235894.P3960492974771716304

`A007318(C(2, n+2))*A235902(A001844(n))`
-/

namespace A235894.P3960492974771716304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A235902 (A001844 n).toNat

end

end A235894.P3960492974771716304

/-!
# A235895: Number of (n+1) X (1+1) 0..2 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2 X 2 subblock.

The programs for A235895, the canonical program `A235895.P2333483615985084343` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235895 has offset 1).

The definition of A235895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235895.P2333483615985084343

`A007483(n+2)+A000079(n+2)²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A235895

/-- `A007483(n+2)+A000079(n+2)²` -/
def P2333483615985084343.Spec : Prop :=
  ∀ n, P2333483615985084343.a n = A235895 (n + 1)

theorem P2333483615985084343.correct : P2333483615985084343.Spec := by
  intro n
  simp only [A235895, Nat.add_sub_cancel]

end A235895

/-! ## A235895.P11357558790131018571

`A151821(n+2)²+A007483(n+2)`
-/

namespace A235895.P11357558790131018571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 2) ^ 2 + A007483 (n + 2)

end

end A235895.P11357558790131018571

namespace A235895

/-- `A151821(n+2)²+A007483(n+2)` -/
def P11357558790131018571.Spec : Prop :=
  ∀ n, P11357558790131018571.a n = A235895 (n + 1)

end A235895

/-! ## A235895.P3159066744540271939

`A007483(n+2)+A011782(n+3)²`
-/

namespace A235895.P3159066744540271939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 (n + 2) + A011782 (n + 3) ^ 2

end

end A235895.P3159066744540271939

namespace A235895

/-- `A007483(n+2)+A011782(n+3)²` -/
def P3159066744540271939.Spec : Prop :=
  ∀ n, P3159066744540271939.a n = A235895 (n + 1)

end A235895

/-! ## A235895.P1390787059521888980

`A131577(n+3)²+A007483(n+2)`
-/

namespace A235895.P1390787059521888980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 3) ^ 2 + A007483 (n + 2)

end

end A235895.P1390787059521888980

namespace A235895

/-- `A131577(n+3)²+A007483(n+2)` -/
def P1390787059521888980.Spec : Prop :=
  ∀ n, P1390787059521888980.a n = A235895 (n + 1)

end A235895

/-! ## A235895.P15752431797018838806

`A007483(n+2)+A000079(2*(n+2))`
-/

namespace A235895.P15752431797018838806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 (n + 2) + A000079 (2 * (n + 2))

end

end A235895.P15752431797018838806

namespace A235895

/-- `A007483(n+2)+A000079(2*(n+2))` -/
def P15752431797018838806.Spec : Prop :=
  ∀ n, P15752431797018838806.a n = A235895 (n + 1)

theorem P15752431797018838806.correct : P15752431797018838806.Spec := by
  intro n
  simp only [A235895, Nat.add_sub_cancel, A235895.P15752431797018838806.a, A235895.P2333483615985084343.a, A000079, A000079.P10855139691139572931.a, A007483, A007483.P17623370902993254309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A235895

/-! ## A235895.P15667145698302441365

`A151821(2*(n+2))+A007483(n+2)`
-/

namespace A235895.P15667145698302441365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (2 * (n + 2)) + A007483 (n + 2)

end

end A235895.P15667145698302441365

namespace A235895

/-- `A151821(2*(n+2))+A007483(n+2)` -/
def P15667145698302441365.Spec : Prop :=
  ∀ n, P15667145698302441365.a n = A235895 (n + 1)

end A235895

/-! ## A235895.P7284451949587301808

`A011782(2*n+5)+A007483(n+2)`
-/

namespace A235895.P7284451949587301808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 5) + A007483 (n + 2)

end

end A235895.P7284451949587301808

namespace A235895

/-- `A011782(2*n+5)+A007483(n+2)` -/
def P7284451949587301808.Spec : Prop :=
  ∀ n, P7284451949587301808.a n = A235895 (n + 1)

end A235895

/-! ## A235895.P5445544529851343359

`A011782(n+3)²+A007455(2*n+5)`
-/

namespace A235895.P5445544529851343359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 3) ^ 2 + A007455 (2 * n + 5)

end

end A235895.P5445544529851343359

namespace A235895

/-- `A011782(n+3)²+A007455(2*n+5)` -/
def P5445544529851343359.Spec : Prop :=
  ∀ n, P5445544529851343359.a n = A235895 (n + 1)

end A235895

/-! ## A235895.P5992074905538664828

`A011782(2*n+5)+A007455(2*n+5)`
-/

namespace A235895.P5992074905538664828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 5) + A007455 (2 * n + 5)

end

end A235895.P5992074905538664828

namespace A235895

/-- `A011782(2*n+5)+A007455(2*n+5)` -/
def P5992074905538664828.Spec : Prop :=
  ∀ n, P5992074905538664828.a n = A235895 (n + 1)

end A235895

/-! ## A235895.P9086715802580535046

`A131577(A005408(n+2))+A007483(n+2)`
-/

namespace A235895.P9086715802580535046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A005408 (n + 2)).toNat + A007483 (n + 2)

end

end A235895.P9086715802580535046

namespace A235895

/-- `A131577(A005408(n+2))+A007483(n+2)` -/
def P9086715802580535046.Spec : Prop :=
  ∀ n, P9086715802580535046.a n = A235895 (n + 1)

end A235895

/-! ## A235895.P13622572417707201556

`7*a(n-1)-10*a(n-2)-8*a(n-3)` with `a(0)=33, a(1)=125, a(2)=473`
-/

namespace A235895.P13622572417707201556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [33, 125, 473] fun n a =>
  7 * a (n - 1) - 10 * a (n - 2) - 8 * a (n - 3)

end

end A235895.P13622572417707201556

namespace A235895

/-- `7*a(n-1)-10*a(n-2)-8*a(n-3)` -/
def P13622572417707201556.Spec : Prop :=
  ∀ n, P13622572417707201556.a n = A235895 (n + 1)

end A235895

/-! ## A235895.P13511700891825930460

`A007483(n+2)+Δ[A001045(2*(n+2))]`
-/

namespace A235895.P13511700891825930460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 (n + 2) + (f1 (n + 1) - f1 n)

end

end A235895.P13511700891825930460

namespace A235895

/-- `A007483(n+2)+Δ[A001045(2*(n+2))]` -/
def P13511700891825930460.Spec : Prop :=
  ∀ n, P13511700891825930460.a n = A235895 (n + 1)

end A235895

/-! ## A235895.P11643892106922259957

`A007455(2*n+5)+Δ[A001045(2*(n+2))]`
-/

namespace A235895.P11643892106922259957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (2 * n + 5) + (f1 (n + 1) - f1 n)

end

end A235895.P11643892106922259957

namespace A235895

/-- `A007455(2*n+5)+Δ[A001045(2*(n+2))]` -/
def P11643892106922259957.Spec : Prop :=
  ∀ n, P11643892106922259957.a n = A235895 (n + 1)

end A235895

/-!
# A235896: Number of (n+1) X (2+1) 0..2 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2 X 2 subblock.

The programs for A235896, there is no canonical definition to state claims against.
-/

/-! ## A235896.P7742650777477105254

`A235902(∑[n+1]+2)`
-/

namespace A235896.P7742650777477105254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235896.P7742650777477105254

/-! ## A235896.P3053780573970120668

`record[A235902(Δ[A003453(n+5)])]`
-/

namespace A235896.P3053780573970120668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235896.P3053780573970120668

/-! ## A235896.P3704694298741172105

`char[A004469(n)]*A235902(A000096(n+1))`
-/

namespace A235896.P3704694298741172105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004469 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A235902 (A000096 (n + 1)).toNat

end

end A235896.P3704694298741172105

/-! ## A235896.P6042358475899160410

`A235902(A000096(n+1))+char[A235902(n+2)]`
-/

namespace A235896.P6042358475899160410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235896.P6042358475899160410

/-! ## A235896.P16786801712118747901

`record[A235902(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A235896.P16786801712118747901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235896.P16786801712118747901

/-!
# A235897: Number of (n+1) X (3+1) 0..2 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2 X 2 subblock.

The programs for A235897, there is no canonical definition to state claims against.
-/

/-! ## A235897.P5853169195036162020

`A235902(∑[n+2]+4)`
-/

namespace A235897.P5853169195036162020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235897.P5853169195036162020

/-! ## A235897.P5105644167382109452

`or(1, A235902(A167614(n+1)))`
-/

namespace A235897.P5105644167382109452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235902 (A167614 (n + 1)).toNat)

end

end A235897.P5105644167382109452

/-! ## A235897.P4142893008287419233

`record[A235902(A167614(floor(n/(xor(n, n+1)+1))+1))]`
-/

namespace A235897.P4142893008287419233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A167614 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235897.P4142893008287419233

/-! ## A235897.P18232395287658754223

`A235902(A167614(n+1))+A034447(n+1)`
-/

namespace A235897.P18232395287658754223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A167614 (n + 1)).toNat + A034447 (n + 1)

end

end A235897.P18232395287658754223

/-! ## A235897.P3590621300028681816

`A235902(A167614(n+1))+A000035(2*n)`
-/

namespace A235897.P3590621300028681816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A235897.P3590621300028681816

/-!
# A235898: Number of (n+1)X(4+1) 0..2 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235898, there is no canonical definition to state claims against.
-/

/-! ## A235898.P13514852010739687277

`A235902(A374004(n+1))`
-/

namespace A235898.P13514852010739687277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A374004 (n + 1)).toNat

end

end A235898.P13514852010739687277

/-! ## A235898.P396368770172309258

`A235902(A141214(n)+7)`
-/

namespace A235898.P396368770172309258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A141214 n + 7).toNat

end

end A235898.P396368770172309258

/-! ## A235898.P17324637737546983268

`A235902(A052905(n)+9)`
-/

namespace A235898.P17324637737546983268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A052905 n + 9).toNat

end

end A235898.P17324637737546983268

/-! ## A235898.P2076617929398884992

`A235902(A167614(n+2)+1)`
-/

namespace A235898.P2076617929398884992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A167614 (n + 2) + 1).toNat

end

end A235898.P2076617929398884992

/-! ## A235898.P10104685885836014113

`A235902(A167499(n+2)-1)`
-/

namespace A235898.P10104685885836014113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A167499 (n + 2) - 1).toNat

end

end A235898.P10104685885836014113

/-!
# A235899: Number of (n+1)X(5+1) 0..2 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2X2 subblock.

The programs for A235899, there is no canonical definition to state claims against.
-/

/-! ## A235899.P1020539016320603068

`A235902(A374005(n+1))`
-/

namespace A235899.P1020539016320603068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A374005 (n + 1)).toNat

end

end A235899.P1020539016320603068

/-! ## A235899.P946263563022202592

`A235902(A167499(n+3))`
-/

namespace A235899.P946263563022202592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A167499 (n + 3)).toNat

end

end A235899.P946263563022202592

/-! ## A235899.P1844214334071578545

`A235902(A055998(n+2)+8)`
-/

namespace A235899.P1844214334071578545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A055998 (n + 2) + 8).toNat

end

end A235899.P1844214334071578545

/-! ## A235899.P12525695213939989745

`A235902(A052905(n+1)+10)`
-/

namespace A235899.P12525695213939989745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (A052905 (n + 1) + 10).toNat

end

end A235899.P12525695213939989745

/-! ## A235899.P12006586926413692106

`A235902(Δ[A264443(n)])`
-/

namespace A235899.P12006586926413692106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235902 (f1 (n + 1) - f1 n).toNat

end

end A235899.P12006586926413692106

