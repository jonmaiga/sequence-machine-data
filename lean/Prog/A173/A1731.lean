import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A173100: a(1)=2, a(2)=2, a(n)=2*a(n-2)*a(n-1)-a(n-2)-a(n-1).

The programs for A173100, the canonical program `A173100.P6047168817882999470` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173100 has offset 1).

The definition of A173100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)*a(n-1)-a(n-2)-a(n-1)` (program `A173100.P6047168817882999470`, by `A173100.P6047168817882999470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173100.P6047168817882999470

`2*a(n-2)*a(n-1)-a(n-2)-a(n-1)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173100

/-- `2*a(n-2)*a(n-1)-a(n-2)-a(n-1)` -/
def P6047168817882999470.Spec : Prop :=
  ∀ n, P6047168817882999470.a n = A173100 (n + 1)

theorem P6047168817882999470.correct : P6047168817882999470.Spec := by
  intro n
  simp only [A173100, Nat.add_sub_cancel]

end A173100

/-! ## A173100.P12590170811222229540

`(2*a(n-1)-1)*a(n-2)-a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A173100.P12590170811222229540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  (2 * a (n - 1) - 1) * a (n - 2) - a (n - 1)

end

end A173100.P12590170811222229540

namespace A173100

/-- `(2*a(n-1)-1)*a(n-2)-a(n-1)` -/
def P12590170811222229540.Spec : Prop :=
  ∀ n, P12590170811222229540.a n = A173100 (n + 1)

end A173100

/-! ## A173100.P9607195011301109535

`a(n-1)*A004273(a(n-2))-a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A173100.P9607195011301109535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) * A004273 (a (n - 2)).toNat - a (n - 2)

end

end A173100.P9607195011301109535

namespace A173100

/-- `a(n-1)*A004273(a(n-2))-a(n-2)` -/
def P9607195011301109535.Spec : Prop :=
  ∀ n, P9607195011301109535.a n = A173100 (n + 1)

end A173100

/-! ## A173100.P12149553111331359721

`a(n-1)*A042964(a(n-2))-a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A173100.P12149553111331359721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) * A042964 (a (n - 2)).toNat - a (n - 2)

end

end A173100.P12149553111331359721

namespace A173100

/-- `a(n-1)*A042964(a(n-2))-a(n-2)` -/
def P12149553111331359721.Spec : Prop :=
  ∀ n, P12149553111331359721.a n = A173100 (n + 1)

end A173100

/-!
# A173102: Number of partitions x + y = z with {x,y,z} in {1,2,3,..,3*n} and z > y >= x.

The programs for A173102, the canonical program `A173102.P11325029232907303109` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173102 has offset 1).

The definition of A173102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173102.P11325029232907303109

`(18*(n+1)²+(-1)^(n+1)-1)/8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173102

/-- `(18*(n+1)²+(-1)^(n+1)-1)/8` -/
def P11325029232907303109.Spec : Prop :=
  ∀ n, P11325029232907303109.a n = (A173102 (n + 1) : ℚ)

end A173102

/-! ## A173102.P13086675571204601837

`∑{#}[3*(n+1)-2, floor((#+2)/2)]`
-/

namespace A173102.P13086675571204601837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊(k + 2 : ℚ) / 2⌋

end

end A173102.P13086675571204601837

namespace A173102

/-- `∑{#}[3*(n+1)-2, floor((#+2)/2)]` -/
def P13086675571204601837.Spec : Prop :=
  ∀ n, P13086675571204601837.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P3925860118207004576

`∑[a(n-2)+9]` with `a(0)=2, a(1)=7`
-/

namespace A173102.P3925860118207004576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 2) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P3925860118207004576

namespace A173102

/-- `∑[a(n-2)+9]` -/
def P3925860118207004576.Spec : Prop :=
  ∀ n, (P3925860118207004576.a n : ℤ) = A173102 (n + 1)

end A173102

/-! ## A173102.P7981224013694103465

`∑[∑[n%2+4]-2]`
-/

namespace A173102.P7981224013694103465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P7981224013694103465

namespace A173102

/-- `∑[∑[n%2+4]-2]` -/
def P7981224013694103465.Spec : Prop :=
  ∀ n, P7981224013694103465.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P9943541418786743742

`∑[∑[6-gcd(2, n)]-2]`
-/

namespace A173102.P9943541418786743742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (Nat.gcd 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P9943541418786743742

namespace A173102

/-- `∑[∑[6-gcd(2, n)]-2]` -/
def P9943541418786743742.Spec : Prop :=
  ∀ n, P9943541418786743742.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P15802397136758745792

`a(n-2)+9*n` with `a(0)=2, a(1)=9`
-/

namespace A173102.P15802397136758745792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 2) + 9 * n

end

end A173102.P15802397136758745792

namespace A173102

/-- `a(n-2)+9*n` -/
def P15802397136758745792.Spec : Prop :=
  ∀ n, (P15802397136758745792.a n : ℤ) = A173102 (n + 1)

end A173102

/-! ## A173102.P3217731764784795389

`∑[∑[9-a(n-1)]]` with `a(0)=2, a(1)=5`
-/

namespace A173102.P3217731764784795389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f2 =>
  9 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P3217731764784795389

namespace A173102

/-- `∑[∑[9-a(n-1)]]` -/
def P3217731764784795389.Spec : Prop :=
  ∀ n, P3217731764784795389.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P17986351205172830685

`record[floor((3*(n-1)/2)²)]`
-/

namespace A173102.P17986351205172830685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (((n : ℤ) - 1 : ℚ) / 2)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173102.P17986351205172830685

namespace A173102

/-- `record[floor((3*(n-1)/2)²)]` -/
def P17986351205172830685.Spec : Prop :=
  ∀ n, P17986351205172830685.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P5605259480557534300

`round(record[(3*(n-1)/2)²])`
-/

namespace A173102.P5605259480557534300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (((n : ℤ) - 1 : ℚ) / 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A173102.P5605259480557534300

namespace A173102

/-- `round(record[(3*(n-1)/2)²])` -/
def P5605259480557534300.Spec : Prop :=
  ∀ n, P5605259480557534300.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P16754822400589438783

`ceil(cot(2/(3*(n+1)))²)`
-/

namespace A173102.P16754822400589438783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 / (3 * (n + 1) : ℚ) : ℝ) ^ 2⌉

end

end A173102.P16754822400589438783

namespace A173102

/-- `ceil(cot(2/(3*(n+1)))²)` -/
def P16754822400589438783.Spec : Prop :=
  ∀ n, P16754822400589438783.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P11295208344627638833

`round(cot((2/(3*(n+1)))²))`
-/

namespace A173102.P11295208344627638833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((2 / (3 * (n + 1) : ℚ)) ^ 2 : ℝ))

end

end A173102.P11295208344627638833

namespace A173102

/-- `round(cot((2/(3*(n+1)))²))` -/
def P11295208344627638833.Spec : Prop :=
  ∀ n, P11295208344627638833.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P6726852429311134316

`∑[sqrt(record[(dr(xor(2, n))-n)²])]`
-/

namespace A173102.P6726852429311134316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (Nat.xor 2 n : ℤ) : ℤ) - (n : ℤ)) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P6726852429311134316

namespace A173102

/-- `∑[sqrt(record[(dr(xor(2, n))-n)²])]` -/
def P6726852429311134316.Spec : Prop :=
  ∀ n, P6726852429311134316.a n = (A173102 (n + 1) : ℝ)

end A173102

/-! ## A173102.P7179430985590892067

`∑[∑[∑[ogf((2+5x+2x^2)/(1+x))]]]`
-/

namespace A173102.P7179430985590892067
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P7179430985590892067

namespace A173102

/-- `∑[∑[∑[ogf((2+5x+2x^2)/(1+x))]]]` -/
def P7179430985590892067.Spec : Prop :=
  ∀ n, P7179430985590892067.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P11280469262042273049

`ogf((2+5x+2x^2)/(1-2x+2x^3-x^4))`
-/

namespace A173102.P11280469262042273049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 2] [1, -2, 0, 2, -1] n

end

end A173102.P11280469262042273049

namespace A173102

/-- `ogf((2+5x+2x^2)/(1-2x+2x^3-x^4))` -/
def P11280469262042273049.Spec : Prop :=
  ∀ n, P11280469262042273049.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P10773147639354654839

`∑[∑[and(1, n)+2]+2*n]`
-/

namespace A173102.P10773147639354654839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P10773147639354654839

namespace A173102

/-- `∑[∑[and(1, n)+2]+2*n]` -/
def P10773147639354654839.Spec : Prop :=
  ∀ n, (P10773147639354654839.a n : ℤ) = A173102 (n + 1)

end A173102

/-! ## A173102.P18355259392756559642

`∑[floor(lcm(2, 2*n+1)+(n+1)/2)]`
-/

namespace A173102.P18355259392756559642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n + 1) : ℚ) + (n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P18355259392756559642

namespace A173102

/-- `∑[floor(lcm(2, 2*n+1)+(n+1)/2)]` -/
def P18355259392756559642.Spec : Prop :=
  ∀ n, P18355259392756559642.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P3684849037447269698

`Δ[A100583(n)/4]`
-/

namespace A173102.P3684849037447269698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100583 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173102.P3684849037447269698

namespace A173102

/-- `Δ[A100583(n)/4]` -/
def P3684849037447269698.Spec : Prop :=
  ∀ n, P3684849037447269698.a n = (A173102 (n + 1) : ℚ)

end A173102

/-! ## A173102.P13660289312917550353

`∑[sqrt(A061100(n+1))]`
-/

namespace A173102.P13660289312917550353
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061100 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P13660289312917550353

namespace A173102

/-- `∑[sqrt(A061100(n+1))]` -/
def P13660289312917550353.Spec : Prop :=
  ∀ n, P13660289312917550353.a n = (A173102 (n + 1) : ℝ)

end A173102

/-! ## A173102.P15102401422454845959

`∑[∑[A103947(n)+1]]`
-/

namespace A173102.P15102401422454845959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103947 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P15102401422454845959

namespace A173102

/-- `∑[∑[A103947(n)+1]]` -/
def P15102401422454845959.Spec : Prop :=
  ∀ n, P15102401422454845959.a n = A173102 (n + 1)

end A173102

/-! ## A173102.P7807972869496824326

`∑[∑[A010710(n)]-2]`
-/

namespace A173102.P7807972869496824326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173102.P7807972869496824326

namespace A173102

/-- `∑[∑[A010710(n)]-2]` -/
def P7807972869496824326.Spec : Prop :=
  ∀ n, P7807972869496824326.a n = A173102 (n + 1)

end A173102

/-!
# A173103: The number of possible borders of Latin squares with the top row fixed.

The programs for A173103, there is no canonical definition to state claims against.
-/

/-! ## A173103.P6699687746631900463

`A173104(n+1)/(n+1)!`
-/

namespace A173103.P6699687746631900463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173104 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A173103.P6699687746631900463

/-! ## A173103.P11179744906708418053

`A173104(n+1)/record[A047920(n)]`
-/

namespace A173103.P11179744906708418053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173104 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A173103.P11179744906708418053

/-! ## A173103.P2799263312191781439

`A173104(n+1)/record[A047922(n)]`
-/

namespace A173103.P2799263312191781439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173104 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A173103.P2799263312191781439

/-! ## A173103.P3400753235236430885

`A173104(n+1)/record[A084938(n)]`
-/

namespace A173103.P3400753235236430885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173104 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A173103.P3400753235236430885

/-! ## A173103.P1861889757952232764

`A173104(n+1)/A000142(n+1)`
-/

namespace A173103.P1861889757952232764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173104 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A173103.P1861889757952232764

/-!
# A173104: The number of possible borders of Latin squares.

The programs for A173104, there is no canonical definition to state claims against.
-/

/-! ## A173104.P3227212662346404566

`(n+1)!*A173103(n+1)`
-/

namespace A173104.P3227212662346404566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A173103 (n + 1)

end

end A173104.P3227212662346404566

/-! ## A173104.P4556606876064242486

`record[A047920(n)]*A173103(n+1)`
-/

namespace A173104.P4556606876064242486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A173103 (n + 1)

end

end A173104.P4556606876064242486

/-! ## A173104.P3981672514621955555

`record[A084938(n)]*A173103(n+1)`
-/

namespace A173104.P3981672514621955555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A173103 (n + 1)

end

end A173104.P3981672514621955555

/-! ## A173104.P17493960628561869244

`A000142(n+1)*A173103(n+1)`
-/

namespace A173104.P17493960628561869244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A173103 (n + 1)

end

end A173104.P17493960628561869244

/-! ## A173104.P16270565922357366934

`A047920(∑[n+1])*A173103(n+1)`
-/

namespace A173104.P16270565922357366934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (∑ j ∈ Finset.range (n + 1), f1 j) * A173103 (n + 1)

end

end A173104.P16270565922357366934

/-!
# A173105: The 15 supersingular primes written in octal.

The programs for A173105, there is no canonical definition to state claims against.
-/

/-! ## A173105.P2986824596427314427

`A007094(A002267(n+1))`
-/

namespace A173105.P2986824596427314427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A002267 (n + 1)).toNat

end

end A173105.P2986824596427314427

/-! ## A173105.P10376703617658219770

`A007094(p?[A174670(n+1)])`
-/

namespace A173105.P10376703617658219770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173105.P10376703617658219770

/-! ## A173105.P12924383127019060864

`A007094(p?[A276181(n+1)])`
-/

namespace A173105.P12924383127019060864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173105.P12924383127019060864

/-! ## A173105.P2439725768383861881

`A007094(p?[lt[n/6, A000005(n+1)]])`
-/

namespace A173105.P2439725768383861881
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℚ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A173105.P2439725768383861881

/-!
# A173106: Partial sums of A005100.

The programs for A173106, the canonical program `A173106.P5453701988030285158` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173106 has offset 1).

The definition of A173106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173106.P782549002087638346

`∑[A005100(n+1)]`
-/

namespace A173106.P782549002087638346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P782549002087638346

namespace A173106

/-- `∑[A005100(n+1)]` -/
def P782549002087638346.Spec : Prop :=
  ∀ n, P782549002087638346.a n = A173106 (n + 1)

end A173106

/-! ## A173106.P8310827977342657818

`∑[record[A125746(n+1)]]`
-/

namespace A173106.P8310827977342657818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P8310827977342657818

namespace A173106

/-- `∑[record[A125746(n+1)]]` -/
def P8310827977342657818.Spec : Prop :=
  ∀ n, P8310827977342657818.a n = A173106 (n + 1)

end A173106

/-! ## A173106.P2805248156026942325

`∑[A225241(n+1)/2]`
-/

namespace A173106.P2805248156026942325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225241 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P2805248156026942325

namespace A173106

/-- `∑[A225241(n+1)/2]` -/
def P2805248156026942325.Spec : Prop :=
  ∀ n, P2805248156026942325.a n = (A173106 (n + 1) : ℚ)

end A173106

/-! ## A173106.P5453701988030285158

`∑[record[n-A082551(n+1)]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173106

/-- `∑[record[n-A082551(n+1)]]` -/
def P5453701988030285158.Spec : Prop :=
  ∀ n, P5453701988030285158.a n = A173106 (n + 1)

theorem P5453701988030285158.correct : P5453701988030285158.Spec := by
  intro n
  simp only [A173106, Nat.add_sub_cancel]

end A173106

/-! ## A173106.P142240923938376014

`∑[eq[0, A294936(n+1)]+1]`
-/

namespace A173106.P142240923938376014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P142240923938376014

namespace A173106

/-- `∑[eq[0, A294936(n+1)]+1]` -/
def P142240923938376014.Spec : Prop :=
  ∀ n, (P142240923938376014.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P6240821366579937782

`∑[eq[0, A341620(n+1)]+1]`
-/

namespace A173106.P6240821366579937782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P6240821366579937782

namespace A173106

/-- `∑[eq[0, A341620(n+1)]+1]` -/
def P6240821366579937782.Spec : Prop :=
  ∀ n, (P6240821366579937782.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P8251663413787518533

`∑[eq[1, A294934(n+1)]+1]`
-/

namespace A173106.P8251663413787518533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P8251663413787518533

namespace A173106

/-- `∑[eq[1, A294934(n+1)]+1]` -/
def P8251663413787518533.Spec : Prop :=
  ∀ n, (P8251663413787518533.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P2252819022331495259

`∑[record[(n+1)/A300826(n+1)]]`
-/

namespace A173106.P2252819022331495259
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A300826 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P2252819022331495259

namespace A173106

/-- `∑[record[(n+1)/A300826(n+1)]]` -/
def P2252819022331495259.Spec : Prop :=
  ∀ n, P2252819022331495259.a n = (A173106 (n + 1) : ℚ)

end A173106

/-! ## A173106.P9736707719298428841

`∑[lt[A000203(n+1), 2*(n+1)]+1]`
-/

namespace A173106.P9736707719298428841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P9736707719298428841

namespace A173106

/-- `∑[lt[A000203(n+1), 2*(n+1)]+1]` -/
def P9736707719298428841.Spec : Prop :=
  ∀ n, (P9736707719298428841.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P11128055189208507464

`lt[A000203(abs(1-n)+1), 2*n]+a(n-1)` with `a(0)=1`
-/

namespace A173106.P11128055189208507464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + a (n - 1)

end

end A173106.P11128055189208507464

namespace A173106

/-- `lt[A000203(abs(1-n)+1), 2*n]+a(n-1)` -/
def P11128055189208507464.Spec : Prop :=
  ∀ n, (P11128055189208507464.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P15751388787181616839

`∑[lt[A336563(n+1), A336564(n+1)]+1]`
-/

namespace A173106.P15751388787181616839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P15751388787181616839

namespace A173106

/-- `∑[lt[A336563(n+1), A336564(n+1)]+1]` -/
def P15751388787181616839.Spec : Prop :=
  ∀ n, (P15751388787181616839.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P7965611986994293169

`∑[lt[∑{d}[n, #], 2*n]]`
-/

namespace A173106.P7965611986994293169
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P7965611986994293169

namespace A173106

/-- `∑[lt[∑{d}[n, #], 2*n]]` -/
def P7965611986994293169.Spec : Prop :=
  ∀ n, (P7965611986994293169.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P834078276267386801

`∑[lt[∑{d}[n, #]/2, n]]`
-/

namespace A173106.P834078276267386801
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℚ) / 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℚ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P834078276267386801

namespace A173106

/-- `∑[lt[∑{d}[n, #]/2, n]]` -/
def P834078276267386801.Spec : Prop :=
  ∀ n, (P834078276267386801.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P2299081741764461784

`∑[lt[∑{d}[n, #]-n, n]]`
-/

namespace A173106.P2299081741764461784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P2299081741764461784

namespace A173106

/-- `∑[lt[∑{d}[n, #]-n, n]]` -/
def P2299081741764461784.Spec : Prop :=
  ∀ n, (P2299081741764461784.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P9499023993363779255

`∑[lt[∑{d}[n+1, #], n+2+n]+1]`
-/

namespace A173106.P9499023993363779255
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P9499023993363779255

namespace A173106

/-- `∑[lt[∑{d}[n+1, #], n+2+n]+1]` -/
def P9499023993363779255.Spec : Prop :=
  ∀ n, (P9499023993363779255.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P17248892462070635802

`∑[record[A387717(n+1)]]`
-/

namespace A173106.P17248892462070635802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387717 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P17248892462070635802

namespace A173106

/-- `∑[record[A387717(n+1)]]` -/
def P17248892462070635802.Spec : Prop :=
  ∀ n, P17248892462070635802.a n = A173106 (n + 1)

end A173106

/-! ## A173106.P5702013557028636860

`∑[lt[A237588(n+1), 1]+1]`
-/

namespace A173106.P5702013557028636860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P5702013557028636860

namespace A173106

/-- `∑[lt[A237588(n+1), 1]+1]` -/
def P5702013557028636860.Spec : Prop :=
  ∀ n, (P5702013557028636860.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P3023309001553073837

`∑[lt[A001065(n+1), n+1]+1]`
-/

namespace A173106.P3023309001553073837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P3023309001553073837

namespace A173106

/-- `∑[lt[A001065(n+1), n+1]+1]` -/
def P3023309001553073837.Spec : Prop :=
  ∀ n, (P3023309001553073837.a n : ℤ) = A173106 (n + 1)

end A173106

/-! ## A173106.P8715968925547319501

`a(n-1)+lt[A064987(n+1), 2*(n+1)²]+1` with `a(0)=1`
-/

namespace A173106.P8715968925547319501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A173106.P8715968925547319501

namespace A173106

/-- `a(n-1)+lt[A064987(n+1), 2*(n+1)²]+1` -/
def P8715968925547319501.Spec : Prop :=
  ∀ n, (P8715968925547319501.a n : ℤ) = A173106 (n + 1)

end A173106

/-!
# A173107: Partial sums of abundant numbers (A005101).

The programs for A173107, the canonical program `A173107.P1204229330952170811` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173107 has offset 1).

The definition of A173107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173107.P3660422135373337717

`∑[A005101(n+1)]`
-/

namespace A173107.P3660422135373337717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P3660422135373337717

namespace A173107

/-- `∑[A005101(n+1)]` -/
def P3660422135373337717.Spec : Prop :=
  ∀ n, P3660422135373337717.a n = A173107 (n + 1)

theorem P3660422135373337717.correct : P3660422135373337717.Spec := by
  intro n
  simp only [A173107, Nat.add_sub_cancel, A173107.P3660422135373337717.f1, A173107.P3660422135373337717.a, A173107.P1204229330952170811.f2, A173107.P1204229330952170811.f3, A173107.P1204229330952170811.f1, A173107.P1204229330952170811.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173107

/-! ## A173107.P14611688867835649610

`∑[A224907(n+1)/2]`
-/

namespace A173107.P14611688867835649610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P14611688867835649610

namespace A173107

/-- `∑[A224907(n+1)/2]` -/
def P14611688867835649610.Spec : Prop :=
  ∀ n, P14611688867835649610.a n = (A173107 (n + 1) : ℚ)

end A173107

/-! ## A173107.P16675672198215847249

`∑[eq[0, A294935(n+1)]+1]`
-/

namespace A173107.P16675672198215847249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P16675672198215847249

namespace A173107

/-- `∑[eq[0, A294935(n+1)]+1]` -/
def P16675672198215847249.Spec : Prop :=
  ∀ n, (P16675672198215847249.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P1727358732703409051

`∑[eq[1, A060862(n+1)]+1]`
-/

namespace A173107.P1727358732703409051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P1727358732703409051

namespace A173107

/-- `∑[eq[1, A060862(n+1)]+1]` -/
def P1727358732703409051.Spec : Prop :=
  ∀ n, (P1727358732703409051.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P1204229330952170811

`∑[eq[1, A082551(n+1)]+1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173107

/-- `∑[eq[1, A082551(n+1)]+1]` -/
def P1204229330952170811.Spec : Prop :=
  ∀ n, (P1204229330952170811.a n : ℤ) = A173107 (n + 1)

theorem P1204229330952170811.correct : P1204229330952170811.Spec := by
  intro n
  simp only [A173107, Nat.add_sub_cancel]

end A173107

/-! ## A173107.P5018842141355589436

`∑[lt[0, A318679(n+1)]+1]`
-/

namespace A173107.P5018842141355589436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P5018842141355589436

namespace A173107

/-- `∑[lt[0, A318679(n+1)]+1]` -/
def P5018842141355589436.Spec : Prop :=
  ∀ n, (P5018842141355589436.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P862425688700624618

`∑[lt[A341621(n+1)², 1]+1]`
-/

namespace A173107.P862425688700624618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P862425688700624618

namespace A173107

/-- `∑[lt[A341621(n+1)², 1]+1]` -/
def P862425688700624618.Spec : Prop :=
  ∀ n, (P862425688700624618.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P3389703366038853522

`∑[lt[2*(n+1), A000203(n+1)]+1]`
-/

namespace A173107.P3389703366038853522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P3389703366038853522

namespace A173107

/-- `∑[lt[2*(n+1), A000203(n+1)]+1]` -/
def P3389703366038853522.Spec : Prop :=
  ∀ n, (P3389703366038853522.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P14175379631002935326

`∑[lt[2, A000203(n+2)/(n+2)]+2]`
-/

namespace A173107.P14175379631002935326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (n + 2 : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P14175379631002935326

namespace A173107

/-- `∑[lt[2, A000203(n+2)/(n+2)]+2]` -/
def P14175379631002935326.Spec : Prop :=
  ∀ n, (P14175379631002935326.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P6139033321702441625

`∑[lt[n+3, A000203(n+3)-(n+3)]+3]`
-/

namespace A173107.P6139033321702441625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 3) - (n + 3 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P6139033321702441625

namespace A173107

/-- `∑[lt[n+3, A000203(n+3)-(n+3)]+3]` -/
def P6139033321702441625.Spec : Prop :=
  ∀ n, (P6139033321702441625.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P12385255057395102198

`∑[A205098(n+1)-A033881(n+1)]`
-/

namespace A173107.P12385255057395102198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205098 (n + 1) - A033881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P12385255057395102198

namespace A173107

/-- `∑[A205098(n+1)-A033881(n+1)]` -/
def P12385255057395102198.Spec : Prop :=
  ∀ n, P12385255057395102198.a n = A173107 (n + 1)

end A173107

/-! ## A173107.P10145802707328176746

`∑[record[A005101(A246694(n))]]`
-/

namespace A173107.P10145802707328176746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P10145802707328176746

namespace A173107

/-- `∑[record[A005101(A246694(n))]]` -/
def P10145802707328176746.Spec : Prop :=
  ∀ n, P10145802707328176746.a n = A173107 (n + 1)

end A173107

/-! ## A173107.P9061590270809367288

`∑[eq[1, A294937(n+1)]+1]`
-/

namespace A173107.P9061590270809367288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P9061590270809367288

namespace A173107

/-- `∑[eq[1, A294937(n+1)]+1]` -/
def P9061590270809367288.Spec : Prop :=
  ∀ n, (P9061590270809367288.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P15618433090868439481

`∑[lt[A336564(n+1), A336563(n+1)]+1]`
-/

namespace A173107.P15618433090868439481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P15618433090868439481

namespace A173107

/-- `∑[lt[A336564(n+1), A336563(n+1)]+1]` -/
def P15618433090868439481.Spec : Prop :=
  ∀ n, (P15618433090868439481.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P6598403421161717976

`∑[lt[2*(n+1), ∑{d}[n+1, #]]+1]`
-/

namespace A173107.P6598403421161717976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P6598403421161717976

namespace A173107

/-- `∑[lt[2*(n+1), ∑{d}[n+1, #]]+1]` -/
def P6598403421161717976.Spec : Prop :=
  ∀ n, (P6598403421161717976.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P8388356057660663058

`∑[lt[1, A237588(n+1)]+1]`
-/

namespace A173107.P8388356057660663058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P8388356057660663058

namespace A173107

/-- `∑[lt[1, A237588(n+1)]+1]` -/
def P8388356057660663058.Spec : Prop :=
  ∀ n, (P8388356057660663058.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P1052315001564396077

`∑[lt[1, A080224(n+1)+1]+1]`
-/

namespace A173107.P1052315001564396077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P1052315001564396077

namespace A173107

/-- `∑[lt[1, A080224(n+1)+1]+1]` -/
def P1052315001564396077.Spec : Prop :=
  ∀ n, (P1052315001564396077.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P4593185598386006381

`∑[lt[n+1, A001065(n+1)]+1]`
-/

namespace A173107.P4593185598386006381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P4593185598386006381

namespace A173107

/-- `∑[lt[n+1, A001065(n+1)]+1]` -/
def P4593185598386006381.Spec : Prop :=
  ∀ n, (P4593185598386006381.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P17271144493352423050

`∑[lt[2, ∑{d}[n, 1/#]]]`
-/

namespace A173107.P17271144493352423050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), 1 / (d : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P17271144493352423050

namespace A173107

/-- `∑[lt[2, ∑{d}[n, 1/#]]]` -/
def P17271144493352423050.Spec : Prop :=
  ∀ n, (P17271144493352423050.a n : ℤ) = A173107 (n + 1)

end A173107

/-! ## A173107.P12179191149445517327

`∑[lt[n, ∑{d}[n, #]-n]]`
-/

namespace A173107.P12179191149445517327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P12179191149445517327

namespace A173107

/-- `∑[lt[n, ∑{d}[n, #]-n]]` -/
def P12179191149445517327.Spec : Prop :=
  ∀ n, (P12179191149445517327.a n : ℤ) = A173107 (n + 1)

end A173107

/-!
# A173108: Triangle, A000110 in every column > 0, shifted down twice.

The programs for A173108, there is no canonical definition to state claims against.
-/

/-! ## A173108.P13108373369886374986

`A123081(C(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n))), 2))`
-/

namespace A173108.P13108373369886374986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (Nat.choose ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ))).toNat 2)

end

end A173108.P13108373369886374986

/-! ## A173108.P16608239723506245156

`A000110(A082375(n))`
-/

namespace A173108.P16608239723506245156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A082375 n).toNat

end

end A173108.P16608239723506245156

/-! ## A173108.P12324589893169958077

`A000110(A025644(n+1))`
-/

namespace A173108.P12324589893169958077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A025644 (n + 1)).toNat

end

end A173108.P12324589893169958077

/-! ## A173108.P12404726823556210651

`A104725(2^A082375(n))`
-/

namespace A173108.P12404726823556210651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A082375 n : ℤ))).toNat

end

end A173108.P12404726823556210651

/-! ## A173108.P15290039526017937977

`A123346(C(A082375(n), 2))`
-/

namespace A173108.P15290039526017937977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (Nat.choose (A082375 n).toNat 2)

end

end A173108.P15290039526017937977

/-!
# A173109: Row sums of triangle A173108.

The programs for A173109, the canonical program `A173109.P6741675723835032639` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173109 has offset 0).

The definition of A173109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173109.P6741675723835032639

`∑{#}[floor(n/2), A000110(n-2*#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173109

/-- `∑{#}[floor(n/2), A000110(n-2*#)]` -/
def P6741675723835032639.Spec : Prop :=
  ∀ n, P6741675723835032639.a n = A173109 n

theorem P6741675723835032639.correct : P6741675723835032639.Spec := by
  intro n
  simp only [A173109]

end A173109

/-! ## A173109.P16140545194410523184

`∑[A087650(n)]`
-/

namespace A173109.P16140545194410523184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173109.P16140545194410523184

namespace A173109

/-- `∑[A087650(n)]` -/
def P16140545194410523184.Spec : Prop :=
  ∀ n, P16140545194410523184.a n = A173109 n

end A173109

/-! ## A173109.P11144133605164975350

`∑[abs(∑[A292935(n)])]`
-/

namespace A173109.P11144133605164975350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173109.P11144133605164975350

namespace A173109

/-- `∑[abs(∑[A292935(n)])]` -/
def P11144133605164975350.Spec : Prop :=
  ∀ n, P11144133605164975350.a n = A173109 n

end A173109

/-! ## A173109.P4699439991650884427

`A000110(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A173109.P4699439991650884427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000110 n + a (n - 2)

end

end A173109.P4699439991650884427

namespace A173109

/-- `A000110(n)+a(n-2)` -/
def P4699439991650884427.Spec : Prop :=
  ∀ n, P4699439991650884427.a n = A173109 n

end A173109

/-! ## A173109.P12016465930253234023

`A005001(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A173109.P12016465930253234023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005001 (n + 1) - a (n - 1)

end

end A173109.P12016465930253234023

namespace A173109

/-- `A005001(n+1)-a(n-1)` -/
def P12016465930253234023.Spec : Prop :=
  ∀ n, P12016465930253234023.a n = A173109 n

end A173109

/-! ## A173109.P12784096431806778006

`A024716(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A173109.P12784096431806778006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024716 n + (1 - a (n - 1))

end

end A173109.P12784096431806778006

namespace A173109

/-- `A024716(n)+1-a(n-1)` -/
def P12784096431806778006.Spec : Prop :=
  ∀ n, P12784096431806778006.a n = A173109 n

end A173109

/-! ## A173109.P17801056464217633618

`A011971(∑[n])+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A173109.P17801056464217633618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 2)

end

end A173109.P17801056464217633618

namespace A173109

/-- `A011971(∑[n])+a(n-2)` -/
def P17801056464217633618.Spec : Prop :=
  ∀ n, P17801056464217633618.a n = A173109 n

end A173109

/-! ## A173109.P15539114445569781405

`∑[A186020(∑[n])-a(n-1)]` with `a(0)=1`
-/

namespace A173109.P15539114445569781405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A186020 (∑ j ∈ Finset.range (n + 1), f2 j) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173109.P15539114445569781405

namespace A173109

/-- `∑[A186020(∑[n])-a(n-1)]` -/
def P15539114445569781405.Spec : Prop :=
  ∀ n, P15539114445569781405.a n = A173109 n

end A173109

/-! ## A173109.P12253543586606421076

`∑[A000296(n+1)]+(n+1)%2`
-/

namespace A173109.P12253543586606421076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((n + 1) % 2 : ℕ) : ℤ)

end

end A173109.P12253543586606421076

namespace A173109

/-- `∑[A000296(n+1)]+(n+1)%2` -/
def P12253543586606421076.Spec : Prop :=
  ∀ n, P12253543586606421076.a n = A173109 n

end A173109

/-! ## A173109.P10388900685159767044

`∑[A033306(∑[n])-a(n-1)]` with `a(0)=1`
-/

namespace A173109.P10388900685159767044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A033306 (∑ j ∈ Finset.range (n + 1), f2 j) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173109.P10388900685159767044

namespace A173109

/-- `∑[A033306(∑[n])-a(n-1)]` -/
def P10388900685159767044.Spec : Prop :=
  ∀ n, P10388900685159767044.a n = A173109 n

end A173109

/-!
# A173110: Limit_{n->oo} M^n as a vector, where M is A173108 as an infinite lower triangular matrix.

The programs for A173110, there is no canonical definition to state claims against.
-/

/-! ## A173110.P10652025820659998291

`∑[floor(A054981(n)/4)]+1`
-/

namespace A173110.P10652025820659998291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054981 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173110.P10652025820659998291

/-! ## A173110.P7669750798980270021

`A100196(A224245(n+1)+1)`
-/

namespace A173110.P7669750798980270021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A224245 (n + 1) + 1).toNat

end

end A173110.P7669750798980270021

/-!
# A173111: Triangle read by rows, A173108 * the diagonalized variant of A173110.

The programs for A173111, there is no canonical definition to state claims against.
-/

/-! ## A173111.P15205943751926764051

`A173108(n)*A173110(n%floor(sqrt(n+1)))`
-/

namespace A173111.P15205943751926764051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173108 n * A173110 (n % Nat.sqrt (n + 1))

end

end A173111.P15205943751926764051

/-! ## A173111.P10666553085236776943

`A193551(or(A173108(n), A292860(n)))`
-/

namespace A173111.P10666553085236776943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193551 (Int.lor (A173108 n) (A292860 n)).toNat

end

end A173111.P10666553085236776943

/-! ## A173111.P13428912568890491875

`A193551(A173108(n))+A087650(A255616(n))`
-/

namespace A173111.P13428912568890491875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193551 (A173108 n).toNat + A087650 (A255616 n).toNat

end

end A173111.P13428912568890491875

/-! ## A173111.P17753820357642103384

`A173108(n)*A325813(A278749(n))`
-/

namespace A173111.P17753820357642103384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173108 n * A325813 (A278749 n).toNat

end

end A173111.P17753820357642103384

/-!
# A173112: Partial sums of A106116.

The programs for A173112, there is no canonical definition to state claims against.
-/

/-! ## A173112.P9156720193890991383

`∑[A106116(n+1)]`
-/

namespace A173112.P9156720193890991383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173112.P9156720193890991383

/-! ## A173112.P1441343842304371384

`∑[record[A106116(A133310(n))]]`
-/

namespace A173112.P1441343842304371384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173112.P1441343842304371384

/-! ## A173112.P2475347292588164774

`∑[record[A106116(A158416(n))]]`
-/

namespace A173112.P2475347292588164774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173112.P2475347292588164774

/-! ## A173112.P9704702134486222900

`∑[A000040(lt[1, A060420(n+1)]+1)]`
-/

namespace A173112.P9704702134486222900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173112.P9704702134486222900

/-! ## A173112.P5870082266810526121

`∑[p?[A037344(n+1)]]`
-/

namespace A173112.P5870082266810526121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173112.P5870082266810526121

/-! ## A173112.P11811282088467283718

`∑[p?[lcm(n, A222210(n))]]`
-/

namespace A173112.P11811282088467283718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A222210 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173112.P11811282088467283718

/-!
# A173113: a(n) = binomial(n + 10, 10) * 5^n.

The programs for A173113, the canonical program `A173113.P12380955294525783576` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173113 has offset 0).

The definition of A173113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+10, 10)*5^n` (program `A173113.P12380955294525783576`, by `A173113.P12380955294525783576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173113.P3171966478809003943

`5^n*C(n+10, 10)`
-/

namespace A173113.P3171966478809003943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * Nat.choose (n + 10) 10

end

end A173113.P3171966478809003943

namespace A173113

/-- `5^n*C(n+10, 10)` -/
def P3171966478809003943.Spec : Prop :=
  ∀ n, (P3171966478809003943.a n : ℤ) = A173113 n

theorem P3171966478809003943.correct : P3171966478809003943.Spec := by
  intro n
  simp only [A173113, Nat.add_sub_cancel, A173113.P3171966478809003943.a, A173113.P12380955294525783576.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173113

/-! ## A173113.P12380955294525783576

`C(n+10, 10)*5^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173113

/-- `C(n+10, 10)*5^n` -/
def P12380955294525783576.Spec : Prop :=
  ∀ n, (P12380955294525783576.a n : ℤ) = A173113 n

theorem P12380955294525783576.correct : P12380955294525783576.Spec := by
  intro n
  simp only [A173113]

end A173113

/-! ## A173113.P14548250630956791947

`(50/n+5)*a(n-1)` with `a(0)=1`
-/

namespace A173113.P14548250630956791947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (50 / (n : ℚ) + 5) * a (n - 1)

end

end A173113.P14548250630956791947

namespace A173113

/-- `(50/n+5)*a(n-1)` -/
def P14548250630956791947.Spec : Prop :=
  ∀ n, P14548250630956791947.a n = (A173113 n : ℚ)

end A173113

/-! ## A173113.P10859126778477051334

`5^n*A001287(n)`
-/

namespace A173113.P10859126778477051334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A001287 (n + 10)

end

end A173113.P10859126778477051334

namespace A173113

/-- `5^n*A001287(n)` -/
def P10859126778477051334.Spec : Prop :=
  ∀ n, P10859126778477051334.a n = A173113 n

theorem P10859126778477051334.correct : P10859126778477051334.Spec := by
  intro n
  simp only [A173113, Nat.add_sub_cancel, A173113.P10859126778477051334.a, A173113.P12380955294525783576.a, A001287, A001287.P7309496825709961420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173113

/-! ## A173113.P5912182897908983937

`5^n*∑[A000582(n+9)]`
-/

namespace A173113.P5912182897908983937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173113.P5912182897908983937

namespace A173113

/-- `5^n*∑[A000582(n+9)]` -/
def P5912182897908983937.Spec : Prop :=
  ∀ n, P5912182897908983937.a n = A173113 n

end A173113

/-! ## A173113.P4715156423477334772

`∑[A000582(n+9)]*A000351(n)`
-/

namespace A173113.P4715156423477334772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000351 n

end

end A173113.P4715156423477334772

namespace A173113

/-- `∑[A000582(n+9)]*A000351(n)` -/
def P4715156423477334772.Spec : Prop :=
  ∀ n, P4715156423477334772.a n = A173113 n

end A173113

/-! ## A173113.P15104879983715778102

`∑[∑[A000581(n+8)]]*A000351(n)`
-/

namespace A173113.P15104879983715778102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000351 n

end

end A173113.P15104879983715778102

namespace A173113

/-- `∑[∑[A000581(n+8)]]*A000351(n)` -/
def P15104879983715778102.Spec : Prop :=
  ∀ n, P15104879983715778102.a n = A173113 n

end A173113

/-! ## A173113.P7787973890835070323

`∑[A000582(n+9)]*Δ[A003463(n)]`
-/

namespace A173113.P7787973890835070323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A173113.P7787973890835070323

namespace A173113

/-- `∑[A000582(n+9)]*Δ[A003463(n)]` -/
def P7787973890835070323.Spec : Prop :=
  ∀ n, P7787973890835070323.a n = A173113 n

end A173113

/-! ## A173113.P15277921310671171234

`5^n*A007318(A000217(n+11)-11)`
-/

namespace A173113.P15277921310671171234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A007318 (A000217 (n + 11) - 11).toNat

end

end A173113.P15277921310671171234

namespace A173113

/-- `5^n*A007318(A000217(n+11)-11)` -/
def P15277921310671171234.Spec : Prop :=
  ∀ n, P15277921310671171234.a n = A173113 n

end A173113

/-! ## A173113.P13614717938725006849

`A001287(n)*A013628(A000096(n))`
-/

namespace A173113.P13614717938725006849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A013628 (A000096 n).toNat

end

end A173113.P13614717938725006849

namespace A173113

/-- `A001287(n)*A013628(A000096(n))` -/
def P13614717938725006849.Spec : Prop :=
  ∀ n, P13614717938725006849.a n = A173113 n

end A173113

/-!
# A173114: a(0)=a(1)=1, a(n) = 2*a(n-1)- A010686(n), n>1.

The programs for A173114, the canonical program `A173114.P6868209317581628192` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173114 has offset 0).

The definition of A173114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173114.P16781837463149990507

`ogf((1-x-2x^2-4x^3)/(1-2x-x^2+2x^3))`
-/

namespace A173114.P16781837463149990507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, -4] [1, -2, -1, 2] n

end

end A173114.P16781837463149990507

namespace A173114

/-- `ogf((1-x-2x^2-4x^3)/(1-2x-x^2+2x^3))` -/
def P16781837463149990507.Spec : Prop :=
  ∀ n, P16781837463149990507.a n = A173114 n

end A173114

/-! ## A173114.P8144337452095439696

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-3`
-/

namespace A173114.P8144337452095439696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, -3] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A173114.P8144337452095439696

namespace A173114

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P8144337452095439696.Spec : Prop :=
  ∀ n, P8144337452095439696.a n = A173114 n

end A173114

/-! ## A173114.P6868209317581628192

`2*a(n-1)-A010686(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173114

/-- `2*a(n-1)-A010686(n)` -/
def P6868209317581628192.Spec : Prop :=
  ∀ n, P6868209317581628192.a n = A173114 n

theorem P6868209317581628192.correct : P6868209317581628192.Spec := by
  intro n
  simp only [A173114]

end A173114

/-! ## A173114.P17449195522443473580

`5-4*ceil(2^n/6)`
-/

namespace A173114.P17449195522443473580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * ⌈(2 ^ n : ℚ) / 6⌉

end

end A173114.P17449195522443473580

namespace A173114

/-- `5-4*ceil(2^n/6)` -/
def P17449195522443473580.Spec : Prop :=
  ∀ n, P17449195522443473580.a n = A173114 n

end A173114

/-! ## A173114.P8995092192100505582

`∑[ogf((-1+x+2x^2+4x^3)/(-1+x+2x^2))]`
-/

namespace A173114.P8995092192100505582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, -4] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173114.P8995092192100505582

namespace A173114

/-- `∑[ogf((-1+x+2x^2+4x^3)/(-1+x+2x^2))]` -/
def P8995092192100505582.Spec : Prop :=
  ∀ n, P8995092192100505582.a n = A173114 n

end A173114

/-! ## A173114.P10015161859680715001

`floor(a(n-2)-2^(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A173114.P10015161859680715001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A173114.P10015161859680715001

namespace A173114

/-- `floor(a(n-2)-2^(n-1))` -/
def P10015161859680715001.Spec : Prop :=
  ∀ n, P10015161859680715001.a n = A173114 n

end A173114

/-! ## A173114.P3756654099746961145

`ceil(a(n-2)-2^(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A173114.P3756654099746961145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A173114.P3756654099746961145

namespace A173114

/-- `ceil(a(n-2)-2^(n-1))` -/
def P3756654099746961145.Spec : Prop :=
  ∀ n, P3756654099746961145.a n = A173114 n

end A173114

/-! ## A173114.P15318943086200179907

`round(a(n-2)-2^(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A173114.P15318943086200179907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A173114.P15318943086200179907

namespace A173114

/-- `round(a(n-2)-2^(n-1))` -/
def P15318943086200179907.Spec : Prop :=
  ∀ n, P15318943086200179907.a n = A173114 n

end A173114

/-! ## A173114.P292572855221140427

`(2*a(n-2)-2^n)/2` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A173114.P292572855221140427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (2 * a (n - 2) - (2 ^ n : ℚ)) / 2

end

end A173114.P292572855221140427

namespace A173114

/-- `(2*a(n-2)-2^n)/2` -/
def P292572855221140427.Spec : Prop :=
  ∀ n, P292572855221140427.a n = (A173114 n : ℚ)

end A173114

/-! ## A173114.P13628063272520650927

`or(1, a(n-2)-2^(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A173114.P13628063272520650927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A173114.P13628063272520650927

namespace A173114

/-- `or(1, a(n-2)-2^(n-1))` -/
def P13628063272520650927.Spec : Prop :=
  ∀ n, P13628063272520650927.a n = A173114 n

end A173114

/-! ## A173114.P12998942395931275385

`or(1, A280193(n)²-A097073(n))`
-/

namespace A173114.P12998942395931275385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A280193 n ^ 2 - A097073 n)

end

end A173114.P12998942395931275385

namespace A173114

/-- `or(1, A280193(n)²-A097073(n))` -/
def P12998942395931275385.Spec : Prop :=
  ∀ n, P12998942395931275385.a n = A173114 n

end A173114

/-!
# A173115: a(n) = -(sin(2*n*arccos(sqrt(3))))^2.

The programs for A173115, the canonical program `A173115.P15177088250404863837` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173115 has offset 0).

The definition of A173115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173115.P12541606412959459133

`ogf((24x+24x^2)/(1-99x+99x^2-x^3))`
-/

namespace A173115.P12541606412959459133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24, 24] [1, -99, 99, -1] n

end

end A173115.P12541606412959459133

namespace A173115

/-- `ogf((24x+24x^2)/(1-99x+99x^2-x^3))` -/
def P12541606412959459133.Spec : Prop :=
  ∀ n, P12541606412959459133.a n = A173115 n

end A173115

/-! ## A173115.P15177088250404863837

`A132596(2*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173115

/-- `A132596(2*n)` -/
def P15177088250404863837.Spec : Prop :=
  ∀ n, P15177088250404863837.a n = A173115 n

theorem P15177088250404863837.correct : P15177088250404863837.Spec := by
  intro n
  simp only [A173115]

end A173115

/-! ## A173115.P4779096108925739342

`24*A108741(n)`
-/

namespace A173115.P4779096108925739342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A108741 n

end

end A173115.P4779096108925739342

namespace A173115

/-- `24*A108741(n)` -/
def P4779096108925739342.Spec : Prop :=
  ∀ n, P4779096108925739342.a n = A173115 n

end A173115

/-! ## A173115.P13769643286308745205

`A001079(n)²-1`
-/

namespace A173115.P13769643286308745205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n ^ 2 - 1

end

end A173115.P13769643286308745205

namespace A173115

/-- `A001079(n)²-1` -/
def P13769643286308745205.Spec : Prop :=
  ∀ n, P13769643286308745205.a n = A173115 n

end A173115

/-! ## A173115.P7482675452898314520

`A146311(n)²-1`
-/

namespace A173115.P7482675452898314520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146311 n ^ 2 - 1

end

end A173115.P7482675452898314520

namespace A173115

/-- `A146311(n)²-1` -/
def P7482675452898314520.Spec : Prop :=
  ∀ n, P7482675452898314520.a n = A173115 n

end A173115

/-! ## A173115.P15137805344303242739

`6*A001078(n)²`
-/

namespace A173115.P15137805344303242739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001078 n ^ 2

end

end A173115.P15137805344303242739

namespace A173115

/-- `6*A001078(n)²` -/
def P15137805344303242739.Spec : Prop :=
  ∀ n, P15137805344303242739.a n = A173115 n

end A173115

/-! ## A173115.P9341836117509322033

`24*A004189(n)²`
-/

namespace A173115.P9341836117509322033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A004189 n ^ 2

end

end A173115.P9341836117509322033

namespace A173115

/-- `24*A004189(n)²` -/
def P9341836117509322033.Spec : Prop :=
  ∀ n, P9341836117509322033.a n = A173115 n

end A173115

/-! ## A173115.P2782949785382701663

`3*A220186(n+1)`
-/

namespace A173115.P2782949785382701663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A220186 (n + 1)

end

end A173115.P2782949785382701663

namespace A173115

/-- `3*A220186(n+1)` -/
def P2782949785382701663.Spec : Prop :=
  ∀ n, P2782949785382701663.a n = A173115 n

end A173115

/-! ## A173115.P9828974622936478534

`2*A098297(2*n)`
-/

namespace A173115.P9828974622936478534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098297 (2 * n)

end

end A173115.P9828974622936478534

namespace A173115

/-- `2*A098297(2*n)` -/
def P9828974622936478534.Spec : Prop :=
  ∀ n, P9828974622936478534.a n = A173115 n

end A173115

/-! ## A173115.P18281253278028114739

`3*A098308(2*n)`
-/

namespace A173115.P18281253278028114739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098308 (2 * n)

end

end A173115.P18281253278028114739

namespace A173115

/-- `3*A098308(2*n)` -/
def P18281253278028114739.Spec : Prop :=
  ∀ n, P18281253278028114739.a n = A173115 n

end A173115

/-!
# A173116: a(n) = sinh(2*arcsinh(n))^2 = 4*n^2*(n^2 + 1).

The programs for A173116, the canonical program `A173116.P11865276995933948720` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173116 has offset 0).

The definition of A173116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²*(n²+1)` (program `A173116.P11865276995933948720`, by `A173116.P11865276995933948720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173116.P987611171104370586

`8*C(n²+1, 2)`
-/

namespace A173116.P987611171104370586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (n ^ 2 + 1) 2

end

end A173116.P987611171104370586

namespace A173116

/-- `8*C(n²+1, 2)` -/
def P987611171104370586.Spec : Prop :=
  ∀ n, (P987611171104370586.a n : ℤ) = A173116 n

theorem P987611171104370586.correct : P987611171104370586.Spec := by
  intro n
  simp only [A173116, Nat.add_sub_cancel, A173116.P987611171104370586.a, A173116.P11865276995933948720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173116

/-! ## A173116.P11248152044537970722

`(2*n²+1)²-1`
-/

namespace A173116.P11248152044537970722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 + 1) ^ 2 : ℤ) - 1

end

end A173116.P11248152044537970722

namespace A173116

/-- `(2*n²+1)²-1` -/
def P11248152044537970722.Spec : Prop :=
  ∀ n, P11248152044537970722.a n = A173116 n

theorem P11248152044537970722.correct : P11248152044537970722.Spec := by
  intro n
  simp only [A173116, Nat.add_sub_cancel, A173116.P11248152044537970722.a, A173116.P11865276995933948720.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173116

/-! ## A173116.P11865276995933948720

`4*n²*(n²+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173116

/-- `4*n²*(n²+1)` -/
def P11865276995933948720.Spec : Prop :=
  ∀ n, (P11865276995933948720.a n : ℤ) = A173116 n

theorem P11865276995933948720.correct : P11865276995933948720.Spec := by
  intro n
  simp only [A173116]

end A173116

/-! ## A173116.P8624301263382686228

`ogf((8x+40x^2+40x^3+8x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A173116.P8624301263382686228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 40, 40, 8] [1, -5, 10, -10, 5, -1] n

end

end A173116.P8624301263382686228

namespace A173116

/-- `ogf((8x+40x^2+40x^3+8x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P8624301263382686228.Spec : Prop :=
  ∀ n, P8624301263382686228.a n = A173116 n

end A173116

/-! ## A173116.P16701824040070042333

`(2*n/cos(atan(n)))²`
-/

namespace A173116.P16701824040070042333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℝ) / Real.cos (Real.arctan (n : ℝ)))) ^ 2

end

end A173116.P16701824040070042333

namespace A173116

/-- `(2*n/cos(atan(n)))²` -/
def P16701824040070042333.Spec : Prop :=
  ∀ n, P16701824040070042333.a n = (A173116 n : ℝ)

end A173116

/-! ## A173116.P11450245226321363423

`(2*n/sin(acot(n)))²`
-/

namespace A173116.P11450245226321363423
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ)))) ^ 2

end

end A173116.P11450245226321363423

namespace A173116

/-- `(2*n/sin(acot(n)))²` -/
def P11450245226321363423.Spec : Prop :=
  ∀ n, P11450245226321363423.a n = (A173116 n : ℝ)

end A173116

/-! ## A173116.P12319327260526275315

`xor(1, or(1, 2*n²)²)`
-/

namespace A173116.P12319327260526275315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (2 * n ^ 2) ^ 2)

end

end A173116.P12319327260526275315

namespace A173116

/-- `xor(1, or(1, 2*n²)²)` -/
def P12319327260526275315.Spec : Prop :=
  ∀ n, (P12319327260526275315.a n : ℤ) = A173116 n

end A173116

/-! ## A173116.P56331130659138857

`xor(1, xor(1, 2*n²)²)`
-/

namespace A173116.P56331130659138857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (2 * n ^ 2) ^ 2)

end

end A173116.P56331130659138857

namespace A173116

/-- `xor(1, xor(1, 2*n²)²)` -/
def P56331130659138857.Spec : Prop :=
  ∀ n, (P56331130659138857.a n : ℤ) = A173116 n

end A173116

/-! ## A173116.P6225793608003852813

`n*A008511(n)/2`
-/

namespace A173116.P6225793608003852813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A008511 n : ℚ) / 2

end

end A173116.P6225793608003852813

namespace A173116

/-- `n*A008511(n)/2` -/
def P6225793608003852813.Spec : Prop :=
  ∀ n, P6225793608003852813.a n = (A173116 n : ℚ)

theorem P6225793608003852813.correct : P6225793608003852813.Spec := by
  intro n
  simp only [A173116, Nat.add_sub_cancel, A173116.P6225793608003852813.a, A173116.P11865276995933948720.a, A008511, A008511.P7740195990433937030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173116

/-! ## A173116.P16194230230555173826

`floor(n*sqrt(A082942(n)))`
-/

namespace A173116.P16194230230555173826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (A082942 n : ℝ)⌋

end

end A173116.P16194230230555173826

namespace A173116

/-- `floor(n*sqrt(A082942(n)))` -/
def P16194230230555173826.Spec : Prop :=
  ∀ n, P16194230230555173826.a n = A173116 n

end A173116

/-! ## A173116.P15853945081287203998

`lcm(A016742(n), A105374(n))`
-/

namespace A173116.P15853945081287203998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016742 n) (A105374 n)

end

end A173116.P15853945081287203998

namespace A173116

/-- `lcm(A016742(n), A105374(n))` -/
def P15853945081287203998.Spec : Prop :=
  ∀ n, (P15853945081287203998.a n : ℤ) = A173116 n

end A173116

/-! ## A173116.P15759367758071168090

`A033996(n²)`
-/

namespace A173116.P15759367758071168090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (n ^ 2)

end

end A173116.P15759367758071168090

namespace A173116

/-- `A033996(n²)` -/
def P15759367758071168090.Spec : Prop :=
  ∀ n, P15759367758071168090.a n = A173116 n

end A173116

/-! ## A173116.P11194038300819343906

`A035008(n²)/2`
-/

namespace A173116.P11194038300819343906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035008 (n ^ 2) : ℚ) / 2

end

end A173116.P11194038300819343906

namespace A173116

/-- `A035008(n²)/2` -/
def P11194038300819343906.Spec : Prop :=
  ∀ n, P11194038300819343906.a n = (A173116 n : ℚ)

theorem P11194038300819343906.correct : P11194038300819343906.Spec := by
  intro n
  simp only [A173116, Nat.add_sub_cancel, A173116.P11194038300819343906.a, A173116.P11865276995933948720.a, A035008, A035008.P9220570800855289153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173116

/-!
# A173117: Triangle T(n, k, q) = q*[n=2] + Sum_{j=0..5} q^j*binomial(n-2*j, k-j)*[n>2*j] with T(n,0) = T(n,n) = 1 for q = 1, read by rows.

The programs for A173117, there is no canonical definition to state claims against.
-/

/-! ## A173117.P7641715525752367891

`A013580(n)-A025469(A144048(2*n))`
-/

namespace A173117.P7641715525752367891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 n - A025469 (A144048 (2 * n)).toNat

end

end A173117.P7641715525752367891

/-! ## A173117.P1381547149126596995

`A157477(A054110(n)-char[12])`
-/

namespace A173117.P1381547149126596995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A054110 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A173117.P1381547149126596995

/-! ## A173117.P11392553689785936445

`A257990(A309876(n))+A173075(n)`
-/

namespace A173117.P11392553689785936445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A309876 n).toNat + A173075 n

end

end A173117.P11392553689785936445

/-! ## A173117.P13494368109147263442

`A157477(A054110(n))-A023531(A002623(n))`
-/

namespace A173117.P13494368109147263442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A054110 n).toNat - A023531 (A002623 n).toNat

end

end A173117.P13494368109147263442

/-! ## A173117.P6970991604170276788

`A013580(n)-A085979(A141056(n))`
-/

namespace A173117.P6970991604170276788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 n - A085979 (A141056 n).toNat

end

end A173117.P6970991604170276788

/-!
# A173118: Triangle T(n, k, q) = q*[n=2] + Sum_{j=0..5} q^j*binomial(n-2*j, k-j)*[n>2*j] with T(n,0) = T(n,n) = 1 for q = 2, read by rows.

The programs for A173118, there is no canonical definition to state claims against.
-/

/-! ## A173118.P8359083060659988463

`A046660(A155971(n))+A323211(n)²`
-/

namespace A173118.P8359083060659988463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A155971 n).toNat + A323211 n ^ 2

end

end A173118.P8359083060659988463

/-! ## A173118.P10401481755250118865

`or(A028275(n), A053603(A168523(n)))`
-/

namespace A173118.P10401481755250118865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028275 n) (A053603 (A168523 n).toNat)

end

end A173118.P10401481755250118865

/-! ## A173118.P3955888927803634053

`A028326(n)-A163351(A156717(n+1))`
-/

namespace A173118.P3955888927803634053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A163351 (A156717 (n + 1)).toNat

end

end A173118.P3955888927803634053

/-! ## A173118.P9655910184731013444

`or(A028275(n), A069283(A189111(n+1)))`
-/

namespace A173118.P9655910184731013444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028275 n) (A069283 (A189111 (n + 1)).toNat)

end

end A173118.P9655910184731013444

/-!
# A173119: Triangle T(n, k, q) = q*[n=2] + Sum_{j=0..5} q^j*binomial(n-2*j, k-j)*[n>2*j] with T(n,0) = T(n,n) = 1 for q = 3, read by rows.

The programs for A173119, there is no canonical definition to state claims against.
-/

/-! ## A173119.P1500642713515190730

`A184964(A028275(n))+A028313(n)`
-/

namespace A173119.P1500642713515190730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A028275 n).toNat + A028313 n

end

end A173119.P1500642713515190730

/-! ## A173119.P14514470309326482237

`A184964(A323211(n)²)+A028313(n)`
-/

namespace A173119.P14514470309326482237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A323211 n ^ 2).toNat + A028313 n

end

end A173119.P14514470309326482237

/-!
# A173120: Triangle T(n, k, q) = q*[n=2] + Sum_{j=0..5} q^j*binomial(n-2*j, k-j)*[n>2*j] with T(n,0) = T(n,n) = 1 for q = -4, read by rows.

The programs for A173120, there is no canonical definition to state claims against.
-/

/-! ## A173120.P12112007604695644332

`A005590(A002411(A026374(n)))`
-/

namespace A173120.P12112007604695644332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A002411 (A026374 n).toNat).toNat

end

end A173120.P12112007604695644332

/-!
# A173121: a(n) = sinh(2*arccosh(n))^2 = 4*n^2*(n^2 - 1).

The programs for A173121, the canonical program `A173121.P5048505696504643898` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173121 has offset 0).

The definition of A173121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²*(n²-1)` (program `A173121.P5048505696504643898`, by `A173121.P5048505696504643898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173121.P5048505696504643898

`4*n²*(n²-1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173121

/-- `4*n²*(n²-1)` -/
def P5048505696504643898.Spec : Prop :=
  ∀ n, P5048505696504643898.a n = A173121 n

theorem P5048505696504643898.correct : P5048505696504643898.Spec := by
  intro n
  simp only [A173121]

end A173121

/-! ## A173121.P7777742727416689254

`ogf((48x^2+48x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A173121.P7777742727416689254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 48, 48] [1, -5, 10, -10, 5, -1] n

end

end A173121.P7777742727416689254

namespace A173121

/-- `ogf((48x^2+48x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P7777742727416689254.Spec : Prop :=
  ∀ n, P7777742727416689254.a n = A173121 n

end A173121

/-! ## A173121.P3089718685193799224

`8*C(n², 2)`
-/

namespace A173121.P3089718685193799224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (n ^ 2) 2

end

end A173121.P3089718685193799224

namespace A173121

/-- `8*C(n², 2)` -/
def P3089718685193799224.Spec : Prop :=
  ∀ n, (P3089718685193799224.a n : ℤ) = A173121 n

theorem P3089718685193799224.correct : P3089718685193799224.Spec := by
  intro n
  simp only [A173121, Nat.add_sub_cancel, A173121.P3089718685193799224.a, A173121.P5048505696504643898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173121

/-! ## A173121.P12919061028671374837

`∑[3*4*C(2*n, 3)]`
-/

namespace A173121.P12919061028671374837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (4 * Nat.choose (2 * n) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173121.P12919061028671374837

namespace A173121

/-- `∑[3*4*C(2*n, 3)]` -/
def P12919061028671374837.Spec : Prop :=
  ∀ n, (P12919061028671374837.a n : ℤ) = A173121 n

end A173121

/-! ## A173121.P9755819564338188880

`∑[a(n-1)+4]²-1` with `a(0)=-1, a(1)=2`
-/

namespace A173121.P9755819564338188880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A173121.P9755819564338188880

namespace A173121

/-- `∑[a(n-1)+4]²-1` -/
def P9755819564338188880.Spec : Prop :=
  ∀ n, P9755819564338188880.a n = A173121 n

end A173121

/-! ## A173121.P3518335686843775891

`∑[ogf((-1+4x+x^2)/(1-2x+x^2))]²-1`
-/

namespace A173121.P3518335686843775891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A173121.P3518335686843775891

namespace A173121

/-- `∑[ogf((-1+4x+x^2)/(1-2x+x^2))]²-1` -/
def P3518335686843775891.Spec : Prop :=
  ∀ n, P3518335686843775891.a n = A173121 n

end A173121

/-! ## A173121.P6816618206388322412

`(1-∑[a(n-1)-4])²-1` with `a(0)=2`
-/

namespace A173121.P6816618206388322412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A173121.P6816618206388322412

namespace A173121

/-- `(1-∑[a(n-1)-4])²-1` -/
def P6816618206388322412.Spec : Prop :=
  ∀ n, P6816618206388322412.a n = A173121 n

end A173121

/-! ## A173121.P2725387984414604170

`A239607(n)-1`
-/

namespace A173121.P2725387984414604170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239607 n - 1

end

end A173121.P2725387984414604170

namespace A173121

/-- `A239607(n)-1` -/
def P2725387984414604170.Spec : Prop :=
  ∀ n, P2725387984414604170.a n = A173121 n

theorem P2725387984414604170.correct : P2725387984414604170.Spec := by
  intro n
  simp only [A173121, Nat.add_sub_cancel, A173121.P2725387984414604170.a, A173121.P5048505696504643898.a, A239607, A239607.P10195960424083872381.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173121

/-! ## A173121.P15177812601506901774

`A056220(n)²-1`
-/

namespace A173121.P15177812601506901774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n ^ 2 - 1

end

end A173121.P15177812601506901774

namespace A173121

/-- `A056220(n)²-1` -/
def P15177812601506901774.Spec : Prop :=
  ∀ n, P15177812601506901774.a n = A173121 n

theorem P15177812601506901774.correct : P15177812601506901774.Spec := by
  intro n
  simp only [A173121, Nat.add_sub_cancel, A173121.P15177812601506901774.a, A173121.P5048505696504643898.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173121

/-! ## A173121.P2502847763104601733

`floor(A144130(n)/2)`
-/

namespace A173121.P2502847763104601733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144130 n : ℚ) / 2⌋

end

end A173121.P2502847763104601733

namespace A173121

/-- `floor(A144130(n)/2)` -/
def P2502847763104601733.Spec : Prop :=
  ∀ n, P2502847763104601733.a n = A173121 n

end A173121

/-! ## A173121.P12288702495658269677

`(1-A001105(n))²-1`
-/

namespace A173121.P12288702495658269677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001105 n) ^ 2 - 1

end

end A173121.P12288702495658269677

namespace A173121

/-- `(1-A001105(n))²-1` -/
def P12288702495658269677.Spec : Prop :=
  ∀ n, P12288702495658269677.a n = A173121 n

theorem P12288702495658269677.correct : P12288702495658269677.Spec := by
  intro n
  simp only [A173121, Nat.add_sub_cancel, A173121.P12288702495658269677.a, A173121.P5048505696504643898.a, A001105, A001105.P6098599260439307493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173121

/-! ## A173121.P2931811013622294251

`(2-A058331(n))²-1`
-/

namespace A173121.P2931811013622294251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A058331 n) ^ 2 - 1

end

end A173121.P2931811013622294251

namespace A173121

/-- `(2-A058331(n))²-1` -/
def P2931811013622294251.Spec : Prop :=
  ∀ n, P2931811013622294251.a n = A173121 n

theorem P2931811013622294251.correct : P2931811013622294251.Spec := by
  intro n
  simp only [A173121, Nat.add_sub_cancel, A173121.P2931811013622294251.a, A173121.P5048505696504643898.a, A058331, A058331.P11448505833250118096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173121

/-! ## A173121.P5093331499607396514

`(sqrt(A239609(n))-1)/2`
-/

namespace A173121.P5093331499607396514
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A239609 n : ℝ) - 1) / 2

end

end A173121.P5093331499607396514

namespace A173121

/-- `(sqrt(A239609(n))-1)/2` -/
def P5093331499607396514.Spec : Prop :=
  ∀ n, P5093331499607396514.a n = (A173121 n : ℝ)

end A173121

/-! ## A173121.P10292083626986830223

`(n-A110325(n))²-1`
-/

namespace A173121.P10292083626986830223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A110325 n) ^ 2 - 1

end

end A173121.P10292083626986830223

namespace A173121

/-- `(n-A110325(n))²-1` -/
def P10292083626986830223.Spec : Prop :=
  ∀ n, P10292083626986830223.a n = A173121 n

theorem P10292083626986830223.correct : P10292083626986830223.Spec := by
  intro n
  simp only [A173121, Nat.add_sub_cancel, A173121.P10292083626986830223.a, A173121.P5048505696504643898.a, A110325, A110325.P3270408014375031893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173121

/-! ## A173121.P18194017231186326526

`A141046(n)-(2*n)²`
-/

namespace A173121.P18194017231186326526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141046 n - ((2 * n) ^ 2 : ℤ)

end

end A173121.P18194017231186326526

namespace A173121

/-- `A141046(n)-(2*n)²` -/
def P18194017231186326526.Spec : Prop :=
  ∀ n, P18194017231186326526.a n = A173121 n

theorem P18194017231186326526.correct : P18194017231186326526.Spec := by
  intro n
  simp only [A173121, Nat.add_sub_cancel, A173121.P18194017231186326526.a, A173121.P5048505696504643898.a, A141046, A141046.P17031355750207900223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173121

/-! ## A173121.P9386145310425474801

`∑[(n-1)*A152750(n)]`
-/

namespace A173121.P9386145310425474801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A152750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173121.P9386145310425474801

namespace A173121

/-- `∑[(n-1)*A152750(n)]` -/
def P9386145310425474801.Spec : Prop :=
  ∀ n, P9386145310425474801.a n = A173121 n

end A173121

/-! ## A173121.P7422059211051581162

`A181773(n)+a(n-1)` with `a(0)=0`
-/

namespace A173121.P7422059211051581162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A181773 n + a (n - 1)

end

end A173121.P7422059211051581162

namespace A173121

/-- `A181773(n)+a(n-1)` -/
def P7422059211051581162.Spec : Prop :=
  ∀ n, P7422059211051581162.a n = A173121 n

theorem P7422059211051581162.correct : P7422059211051581162.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173121, Nat.add_sub_cancel, A173121.P7422059211051581162.a, A173121.P5048505696504643898.a, A181773, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173121, Nat.add_sub_cancel, A173121.P7422059211051581162.a, A173121.P5048505696504643898.a, A181773, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A173121

/-! ## A173121.P462391763651023579

`A173116(n)-A139098(n)`
-/

namespace A173121.P462391763651023579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173116 n - A139098 n

end

end A173121.P462391763651023579

namespace A173121

/-- `A173116(n)-A139098(n)` -/
def P462391763651023579.Spec : Prop :=
  ∀ n, P462391763651023579.a n = A173121 n

theorem P462391763651023579.correct : P462391763651023579.Spec := by
  intro n
  simp only [A173121, Nat.add_sub_cancel, A173121.P462391763651023579.a, A173121.P5048505696504643898.a, A139098, A139098.P9529922579529552041.a, A173116, A173116.P11865276995933948720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173121

/-! ## A173121.P11869308008646023451

`A121671(n)-A272870(n)`
-/

namespace A173121.P11869308008646023451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121671 n - A272870 n

end

end A173121.P11869308008646023451

namespace A173121

/-- `A121671(n)-A272870(n)` -/
def P11869308008646023451.Spec : Prop :=
  ∀ n, P11869308008646023451.a n = A173121 n

theorem P11869308008646023451.correct : P11869308008646023451.Spec := by
  intro n
  simp only [A173121, Nat.add_sub_cancel, A173121.P11869308008646023451.a, A173121.P5048505696504643898.a, A121671, A121671.P11352218429020484864.a, A272870, A272870.P17182819688272473876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173121

/-! ## A173121.P17798498036565108793

`A144130(n)%A239607(n)`
-/

namespace A173121.P17798498036565108793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144130 n) (A239607 n)

end

end A173121.P17798498036565108793

namespace A173121

/-- `A144130(n)%A239607(n)` -/
def P17798498036565108793.Spec : Prop :=
  ∀ n, P17798498036565108793.a n = A173121 n

end A173121

/-!
# A173122: Irregular triangle T(n) = coefficients of Sum_{k=0..n} t(n,k,q) for powers of q, where t(n,k,q) = q*[n=2] + Sum_{j=0..5} q^j*binomial(n-2*j, k-j)*[n>2*j] with t(n,0,q) = t(n,n,q) = 1, read by rows.

The programs for A173122, there is no canonical definition to state claims against.
-/

/-! ## A173122.P1473063011923317529

`A130321(lt[A130633(n), A065109(n)])`
-/

namespace A173122.P1473063011923317529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130633 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A173122.P1473063011923317529

/-! ## A173122.P11218340214383842620

`A009195(A009195(A009195(A033848(n+2))))`
-/

namespace A173122.P11218340214383842620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A009195 (A009195 (A033848 (n + 2)).toNat).toNat).toNat

end

end A173122.P11218340214383842620

/-! ## A173122.P5636237231277624498

`A327395(A003596(n+2))`
-/

namespace A173122.P5636237231277624498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327395 (A003596 (n + 2)).toNat

end

end A173122.P5636237231277624498

/-! ## A173122.P6870070046461249501

`A327395(A107326(n+2))`
-/

namespace A173122.P6870070046461249501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327395 (A107326 (n + 2)).toNat

end

end A173122.P6870070046461249501

/-! ## A173122.P2960947963490431869

`A327395(A385344(n+2))`
-/

namespace A173122.P2960947963490431869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327395 (A385344 (n + 2)).toNat

end

end A173122.P2960947963490431869

/-!
# A173123: a(n) = binomial(n+9,9)*6^n.

The programs for A173123, the canonical program `A173123.P12100791203446818691` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173123 has offset 0).

The definition of A173123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+9, 9)*6^n` (program `A173123.P12100791203446818691`, by `A173123.P12100791203446818691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173123.P14603353209575749142

`6^n*C(n+9, 9)`
-/

namespace A173123.P14603353209575749142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * Nat.choose (n + 9) 9

end

end A173123.P14603353209575749142

namespace A173123

/-- `6^n*C(n+9, 9)` -/
def P14603353209575749142.Spec : Prop :=
  ∀ n, (P14603353209575749142.a n : ℤ) = A173123 n

theorem P14603353209575749142.correct : P14603353209575749142.Spec := by
  intro n
  simp only [A173123, Nat.add_sub_cancel, A173123.P14603353209575749142.a, A173123.P12100791203446818691.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173123

/-! ## A173123.P12100791203446818691

`C(n+9, 9)*6^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173123

/-- `C(n+9, 9)*6^n` -/
def P12100791203446818691.Spec : Prop :=
  ∀ n, (P12100791203446818691.a n : ℤ) = A173123 n

theorem P12100791203446818691.correct : P12100791203446818691.Spec := by
  intro n
  simp only [A173123]

end A173123

/-! ## A173123.P10010070197178336847

`6*(9/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A173123.P10010070197178336847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * ((9 / (n : ℚ) + 1) * a (n - 1))

end

end A173123.P10010070197178336847

namespace A173123

/-- `6*(9/n+1)*a(n-1)` -/
def P10010070197178336847.Spec : Prop :=
  ∀ n, P10010070197178336847.a n = (A173123 n : ℚ)

end A173123

/-! ## A173123.P8904058153745714749

`2^n*A036223(n)`
-/

namespace A173123.P8904058153745714749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A036223 n

end

end A173123.P8904058153745714749

namespace A173123

/-- `2^n*A036223(n)` -/
def P8904058153745714749.Spec : Prop :=
  ∀ n, P8904058153745714749.a n = A173123 n

end A173123

/-! ## A173123.P11701036246132403375

`3^n*A140354(n)`
-/

namespace A173123.P11701036246132403375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A140354 n

end

end A173123.P11701036246132403375

namespace A173123

/-- `3^n*A140354(n)` -/
def P11701036246132403375.Spec : Prop :=
  ∀ n, P11701036246132403375.a n = A173123 n

end A173123

/-! ## A173123.P146283558621647864

`6^n*A000582(n+9)`
-/

namespace A173123.P146283558621647864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000582 (n + 9)

end

end A173123.P146283558621647864

namespace A173123

/-- `6^n*A000582(n+9)` -/
def P146283558621647864.Spec : Prop :=
  ∀ n, P146283558621647864.a n = A173123 n

theorem P146283558621647864.correct : P146283558621647864.Spec := by
  intro n
  simp only [A173123, Nat.add_sub_cancel, A173123.P146283558621647864.a, A173123.P12100791203446818691.a, A000582, A000582.P5339973766427948568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173123

/-! ## A173123.P17388021666416747794

`6^n*∑[A000581(n+8)]`
-/

namespace A173123.P17388021666416747794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173123.P17388021666416747794

namespace A173123

/-- `6^n*∑[A000581(n+8)]` -/
def P17388021666416747794.Spec : Prop :=
  ∀ n, P17388021666416747794.a n = A173123 n

end A173123

/-! ## A173123.P13614798563981278039

`6^n*∑[∑[A000580(n+7)]]`
-/

namespace A173123.P13614798563981278039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173123.P13614798563981278039

namespace A173123

/-- `6^n*∑[∑[A000580(n+7)]]` -/
def P13614798563981278039.Spec : Prop :=
  ∀ n, P13614798563981278039.a n = A173123 n

end A173123

/-! ## A173123.P8195810497160939600

`lcm(A036223(n), A140354(n))`
-/

namespace A173123.P8195810497160939600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036223 n) (A140354 n)

end

end A173123.P8195810497160939600

namespace A173123

/-- `lcm(A036223(n), A140354(n))` -/
def P8195810497160939600.Spec : Prop :=
  ∀ n, (P8195810497160939600.a n : ℤ) = A173123 n

end A173123

/-! ## A173123.P17282949444907527433

`∑[A000581(n+8)]*A000400(n)`
-/

namespace A173123.P17282949444907527433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000400 n

end

end A173123.P17282949444907527433

namespace A173123

/-- `∑[A000581(n+8)]*A000400(n)` -/
def P17282949444907527433.Spec : Prop :=
  ∀ n, P17282949444907527433.a n = A173123 n

end A173123

/-! ## A173123.P3019797579934124021

`A000582(n+9)*A038255(∑[n])`
-/

namespace A173123.P3019797579934124021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A038255 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173123.P3019797579934124021

namespace A173123

/-- `A000582(n+9)*A038255(∑[n])` -/
def P3019797579934124021.Spec : Prop :=
  ∀ n, P3019797579934124021.a n = A173123 n

end A173123

/-! ## A173123.P7097813139812823566

`A140354(n)*A232801(2*n+1)`
-/

namespace A173123.P7097813139812823566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140354 n * A232801 (2 * n + 1)

end

end A173123.P7097813139812823566

namespace A173123

/-- `A140354(n)*A232801(2*n+1)` -/
def P7097813139812823566.Spec : Prop :=
  ∀ n, P7097813139812823566.a n = A173123 n

end A173123

/-! ## A173123.P8873606218896855032

`A000582(n+9)*A026549(2*n)`
-/

namespace A173123.P8873606218896855032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A026549 (2 * n)

end

end A173123.P8873606218896855032

namespace A173123

/-- `A000582(n+9)*A026549(2*n)` -/
def P8873606218896855032.Spec : Prop :=
  ∀ n, P8873606218896855032.a n = A173123 n

end A173123

/-!
# A173124: a(n) = binomial(n+10,10)*6^n.

The programs for A173124, the canonical program `A173124.P18419413801774125513` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173124 has offset 0).

The definition of A173124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+10, 10)*6^n` (program `A173124.P18419413801774125513`, by `A173124.P18419413801774125513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173124.P12357085785501185071

`6^n*C(n+10, 10)`
-/

namespace A173124.P12357085785501185071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * Nat.choose (n + 10) 10

end

end A173124.P12357085785501185071

namespace A173124

/-- `6^n*C(n+10, 10)` -/
def P12357085785501185071.Spec : Prop :=
  ∀ n, (P12357085785501185071.a n : ℤ) = A173124 n

theorem P12357085785501185071.correct : P12357085785501185071.Spec := by
  intro n
  simp only [A173124, Nat.add_sub_cancel, A173124.P12357085785501185071.a, A173124.P18419413801774125513.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173124

/-! ## A173124.P18419413801774125513

`C(n+10, 10)*6^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173124

/-- `C(n+10, 10)*6^n` -/
def P18419413801774125513.Spec : Prop :=
  ∀ n, (P18419413801774125513.a n : ℤ) = A173124 n

theorem P18419413801774125513.correct : P18419413801774125513.Spec := by
  intro n
  simp only [A173124]

end A173124

/-! ## A173124.P13855928915291877147

`3*(20/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A173124.P13855928915291877147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((20 / (n : ℚ) + 2) * a (n - 1))

end

end A173124.P13855928915291877147

namespace A173124

/-- `3*(20/n+2)*a(n-1)` -/
def P13855928915291877147.Spec : Prop :=
  ∀ n, P13855928915291877147.a n = (A173124 n : ℚ)

end A173124

/-! ## A173124.P9729163726688208871

`2^n*A172362(n)`
-/

namespace A173124.P9729163726688208871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A172362 n

end

end A173124.P9729163726688208871

namespace A173124

/-- `2^n*A172362(n)` -/
def P9729163726688208871.Spec : Prop :=
  ∀ n, P9729163726688208871.a n = A173124 n

end A173124

/-! ## A173124.P13760178391452857605

`3^n*A172242(n)`
-/

namespace A173124.P13760178391452857605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A172242 (n + 10)

end

end A173124.P13760178391452857605

namespace A173124

/-- `3^n*A172242(n)` -/
def P13760178391452857605.Spec : Prop :=
  ∀ n, P13760178391452857605.a n = A173124 n

end A173124

/-! ## A173124.P5914195086540047397

`6^n*A001287(n)`
-/

namespace A173124.P5914195086540047397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A001287 (n + 10)

end

end A173124.P5914195086540047397

namespace A173124

/-- `6^n*A001287(n)` -/
def P5914195086540047397.Spec : Prop :=
  ∀ n, P5914195086540047397.a n = A173124 n

theorem P5914195086540047397.correct : P5914195086540047397.Spec := by
  intro n
  simp only [A173124, Nat.add_sub_cancel, A173124.P5914195086540047397.a, A173124.P18419413801774125513.a, A001287, A001287.P7309496825709961420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173124

/-! ## A173124.P7851925419740481788

`6^n*∑[A000582(n+9)]`
-/

namespace A173124.P7851925419740481788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173124.P7851925419740481788

namespace A173124

/-- `6^n*∑[A000582(n+9)]` -/
def P7851925419740481788.Spec : Prop :=
  ∀ n, P7851925419740481788.a n = A173124 n

end A173124

/-! ## A173124.P16125846204523221323

`∑[A000582(n+9)]*A000400(n)`
-/

namespace A173124.P16125846204523221323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000400 n

end

end A173124.P16125846204523221323

namespace A173124

/-- `∑[A000582(n+9)]*A000400(n)` -/
def P16125846204523221323.Spec : Prop :=
  ∀ n, P16125846204523221323.a n = A173124 n

end A173124

/-! ## A173124.P13632178798685365430

`∑[∑[A000581(n+8)]]*A000400(n)`
-/

namespace A173124.P13632178798685365430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000400 n

end

end A173124.P13632178798685365430

namespace A173124

/-- `∑[∑[A000581(n+8)]]*A000400(n)` -/
def P13632178798685365430.Spec : Prop :=
  ∀ n, P13632178798685365430.a n = A173124 n

end A173124

/-! ## A173124.P15788954427405838008

`∑[A000582(n+9)]*A038255(∑[n])`
-/

namespace A173124.P15788954427405838008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A038255 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A173124.P15788954427405838008

namespace A173124

/-- `∑[A000582(n+9)]*A038255(∑[n])` -/
def P15788954427405838008.Spec : Prop :=
  ∀ n, P15788954427405838008.a n = A173124 n

end A173124

/-! ## A173124.P2785100759412472207

`∑[A000582(n+9)]*A026549(2*n)`
-/

namespace A173124.P2785100759412472207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A026549 (2 * n)

end

end A173124.P2785100759412472207

namespace A173124

/-- `∑[A000582(n+9)]*A026549(2*n)` -/
def P2785100759412472207.Spec : Prop :=
  ∀ n, P2785100759412472207.a n = A173124 n

end A173124

/-!
# A173125: a(n) = Sum_{k == floor(n/2) (mod 5)} C(n,k).

The programs for A173125, the canonical program `A173125.P13737052805762502892` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173125 has offset 0).

The definition of A173125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173125.P15754548723694271888

`A000045(n+1)+A173126(n)`
-/

namespace A173125.P15754548723694271888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A173126 n

end

end A173125.P15754548723694271888

namespace A173125

/-- `A000045(n+1)+A173126(n)` -/
def P15754548723694271888.Spec : Prop :=
  ∀ n, P15754548723694271888.a n = A173125 n

theorem P15754548723694271888.correct : P15754548723694271888.Spec := by
  intro n
  simp only [A173125, Nat.add_sub_cancel, A173125.P15754548723694271888.a, A173125.P13737052805762502892.a, A000045, A000045.P11838749114346432762.a, A173126, A173126.P17860162282996765866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173125

/-! ## A173125.P16873316355426494519

`ogf((1-x-3x^2+2x^3+x^4)/(1-2x-3x^2+6x^3+x^4-2x^5))`
-/

namespace A173125.P16873316355426494519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3, 2, 1] [1, -2, -3, 6, 1, -2] n

end

end A173125.P16873316355426494519

namespace A173125

/-- `ogf((1-x-3x^2+2x^3+x^4)/(1-2x-3x^2+6x^3+x^4-2x^5))` -/
def P16873316355426494519.Spec : Prop :=
  ∀ n, P16873316355426494519.a n = A173125 n

end A173125

/-! ## A173125.P13737052805762502892

`2*a(n-1)+3*a(n-2)-6*a(n-3)-a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173125

/-- `2*a(n-1)+3*a(n-2)-6*a(n-3)-a(n-4)+2*a(n-5)` -/
def P13737052805762502892.Spec : Prop :=
  ∀ n, P13737052805762502892.a n = A173125 n

theorem P13737052805762502892.correct : P13737052805762502892.Spec := by
  intro n
  simp only [A173125]

end A173125

/-! ## A173125.P6918685432187041033

`A173126(n)+∑[A212804(n)]`
-/

namespace A173125.P6918685432187041033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173126 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173125.P6918685432187041033

namespace A173125

/-- `A173126(n)+∑[A212804(n)]` -/
def P6918685432187041033.Spec : Prop :=
  ∀ n, P6918685432187041033.a n = A173125 n

end A173125

/-! ## A173125.P9559772517584167424

`A054877(n)+Δ[A094967(n)]`
-/

namespace A173125.P9559772517584167424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 n + (f1 (n + 1) - f1 n)

end

end A173125.P9559772517584167424

namespace A173125

/-- `A054877(n)+Δ[A094967(n)]` -/
def P9559772517584167424.Spec : Prop :=
  ∀ n, P9559772517584167424.a n = A173125 n

end A173125

/-! ## A173125.P17281469464676295784

`A212804(n+2)+A173126(n)`
-/

namespace A173125.P17281469464676295784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A173126 n

end

end A173125.P17281469464676295784

namespace A173125

/-- `A212804(n+2)+A173126(n)` -/
def P17281469464676295784.Spec : Prop :=
  ∀ n, P17281469464676295784.a n = A173125 n

end A173125

/-! ## A173125.P10064015909942773371

`A095929(A110654(n))/A000034(n)`
-/

namespace A173125.P10064015909942773371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095929 (A110654 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A173125.P10064015909942773371

namespace A173125

/-- `A095929(A110654(n))/A000034(n)` -/
def P10064015909942773371.Spec : Prop :=
  ∀ n, P10064015909942773371.a n = (A173125 n : ℚ)

end A173125

/-! ## A173125.P14493409740761960771

`A000040(n+1)+A173126(n)+A100700(n+1)`
-/

namespace A173125.P14493409740761960771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A173126 n + A100700 (n + 1))

end

end A173125.P14493409740761960771

namespace A173125

/-- `A000040(n+1)+A173126(n)+A100700(n+1)` -/
def P14493409740761960771.Spec : Prop :=
  ∀ n, P14493409740761960771.a n = A173125 n

theorem P14493409740761960771.correct : P14493409740761960771.Spec := by
  intro n
  simp only [A173125, Nat.add_sub_cancel, A173125.P14493409740761960771.a, A173125.P13737052805762502892.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100700, A100700.P16496511086861207028.a, A173126, A173126.P17860162282996765866.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173125

/-! ## A173125.P16966513191562579096

`A293640(n+1)+A293642(n+1)+A173126(n)`
-/

namespace A173125.P16966513191562579096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 (n + 1) + (A293642 (n + 1) + A173126 n)

end

end A173125.P16966513191562579096

namespace A173125

/-- `A293640(n+1)+A293642(n+1)+A173126(n)` -/
def P16966513191562579096.Spec : Prop :=
  ∀ n, P16966513191562579096.a n = A173125 n

end A173125

/-! ## A173125.P8144184577248039821

`A004397(n+1)+A173126(n)-A000040(n+1)`
-/

namespace A173125.P8144184577248039821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004397 (n + 1) + (A173126 n - A000040 (n + 1))

end

end A173125.P8144184577248039821

namespace A173125

/-- `A004397(n+1)+A173126(n)-A000040(n+1)` -/
def P8144184577248039821.Spec : Prop :=
  ∀ n, P8144184577248039821.a n = A173125 n

theorem P8144184577248039821.correct : P8144184577248039821.Spec := by
  intro n
  simp only [A173125, Nat.add_sub_cancel, A173125.P8144184577248039821.a, A173125.P13737052805762502892.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004397, A004397.P5971588523546230997.a, A173126, A173126.P17860162282996765866.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173125

/-! ## A173125.P17137898035832357818

`A281362(n+1)+A173126(n)-A215004(n+1)`
-/

namespace A173125.P17137898035832357818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281362 (n + 1) + (A173126 n - A215004 (n + 1))

end

end A173125.P17137898035832357818

namespace A173125

/-- `A281362(n+1)+A173126(n)-A215004(n+1)` -/
def P17137898035832357818.Spec : Prop :=
  ∀ n, P17137898035832357818.a n = A173125 n

end A173125

/-! ## A173125.P11480315539118010022

`A173126(n)+A064497(n+1)/A000040(n+1)`
-/

namespace A173125.P11480315539118010022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173126 n : ℚ) + (A064497 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A173125.P11480315539118010022

namespace A173125

/-- `A173126(n)+A064497(n+1)/A000040(n+1)` -/
def P11480315539118010022.Spec : Prop :=
  ∀ n, P11480315539118010022.a n = (A173125 n : ℚ)

end A173125

/-! ## A173125.P12464431684848608652

`A173126(n)+A259546(n+1)/A000578(n+1)`
-/

namespace A173125.P12464431684848608652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173126 n : ℚ) + (A259546 (n + 1) : ℚ) / (A000578 (n + 1) : ℚ)

end

end A173125.P12464431684848608652

namespace A173125

/-- `A173126(n)+A259546(n+1)/A000578(n+1)` -/
def P12464431684848608652.Spec : Prop :=
  ∀ n, P12464431684848608652.a n = (A173125 n : ℚ)

theorem P12464431684848608652.correct : P12464431684848608652.Spec := by
  intro n
  simp only [A173125, Nat.add_sub_cancel, A173125.P12464431684848608652.a, A173125.P13737052805762502892.a, A000578, A000578.P12162961755414704816.a, A173126, A173126.P17860162282996765866.a, A259546, A259546.P10792724282004956357.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173125

/-! ## A173125.P3220685354985320866

`A173126(n)+A259547(n+1)/A000583(n+1)`
-/

namespace A173125.P3220685354985320866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173126 n : ℚ) + (A259547 (n + 1) : ℚ) / (A000583 (n + 1) : ℚ)

end

end A173125.P3220685354985320866

namespace A173125

/-- `A173126(n)+A259547(n+1)/A000583(n+1)` -/
def P3220685354985320866.Spec : Prop :=
  ∀ n, P3220685354985320866.a n = (A173125 n : ℚ)

theorem P3220685354985320866.correct : P3220685354985320866.Spec := by
  intro n
  simp only [A173125, Nat.add_sub_cancel, A173125.P3220685354985320866.a, A173125.P13737052805762502892.a, A000583, A000583.P14547500281748394449.a, A173126, A173126.P17860162282996765866.a, A259547, A259547.P6115006685320739777.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173125

/-! ## A173125.P16531386033939314004

`A099163(n)-A173126(n)`
-/

namespace A173125.P16531386033939314004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099163 n - A173126 n

end

end A173125.P16531386033939314004

namespace A173125

/-- `A099163(n)-A173126(n)` -/
def P16531386033939314004.Spec : Prop :=
  ∀ n, P16531386033939314004.a n = A173125 n

end A173125

/-! ## A173125.P12020622208850981732

`A084178(n+1)+A173126(n)+A084179(n)`
-/

namespace A173125.P12020622208850981732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084178 (n + 1) + (A173126 n + A084179 n)

end

end A173125.P12020622208850981732

namespace A173125

/-- `A084178(n+1)+A173126(n)+A084179(n)` -/
def P12020622208850981732.Spec : Prop :=
  ∀ n, P12020622208850981732.a n = A173125 n

end A173125

/-! ## A173125.P3938175604434318187

`A000129(n+1)+A173126(n)-A006684(n+1)`
-/

namespace A173125.P3938175604434318187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A173126 n - A006684 (n + 1))

end

end A173125.P3938175604434318187

namespace A173125

/-- `A000129(n+1)+A173126(n)-A006684(n+1)` -/
def P3938175604434318187.Spec : Prop :=
  ∀ n, P3938175604434318187.a n = A173125 n

end A173125

/-! ## A173125.P6402429861138339140

`A212262(n+1)+A173126(n)-A000244(n+1)`
-/

namespace A173125.P6402429861138339140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212262 (n + 1) + (A173126 n - A000244 (n + 1))

end

end A173125.P6402429861138339140

namespace A173125

/-- `A212262(n+1)+A173126(n)-A000244(n+1)` -/
def P6402429861138339140.Spec : Prop :=
  ∀ n, P6402429861138339140.a n = A173125 n

theorem P6402429861138339140.correct : P6402429861138339140.Spec := by
  intro n
  simp only [A173125, Nat.add_sub_cancel, A173125.P6402429861138339140.a, A173125.P13737052805762502892.a, A000244, A000244.P17162167222172810417.a, A173126, A173126.P17860162282996765866.a, A212262, A212262.P13968223914927388740.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173125

/-! ## A173125.P8647855973968960078

`A000244(n+1)+A173126(n)-A212323(n+1)`
-/

namespace A173125.P8647855973968960078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) + (A173126 n - A212323 (n + 1))

end

end A173125.P8647855973968960078

namespace A173125

/-- `A000244(n+1)+A173126(n)-A212323(n+1)` -/
def P8647855973968960078.Spec : Prop :=
  ∀ n, P8647855973968960078.a n = A173125 n

theorem P8647855973968960078.correct : P8647855973968960078.Spec := by
  intro n
  simp only [A173125, Nat.add_sub_cancel, A173125.P8647855973968960078.a, A173125.P13737052805762502892.a, A000244, A000244.P17162167222172810417.a, A173126, A173126.P17860162282996765866.a, A212323, A212323.P14148052127696294858.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173125

/-! ## A173125.P938302277486357823

`A173126(n)+A001582(n)/A000129(n+1)`
-/

namespace A173125.P938302277486357823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173126 n : ℚ) + (A001582 n : ℚ) / (A000129 (n + 1) : ℚ)

end

end A173125.P938302277486357823

namespace A173125

/-- `A173126(n)+A001582(n)/A000129(n+1)` -/
def P938302277486357823.Spec : Prop :=
  ∀ n, P938302277486357823.a n = (A173125 n : ℚ)

end A173125

/-!
# A173126: Sum_{k=floor[(n+5)/2] mod 5} C(n,k).

The programs for A173126, the canonical program `A173126.P17860162282996765866` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173126 has offset 0).

The definition of A173126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173126.P17860162282996765866

`A173125(n)-A000045(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173126

/-- `A173125(n)-A000045(n+1)` -/
def P17860162282996765866.Spec : Prop :=
  ∀ n, P17860162282996765866.a n = A173126 n

theorem P17860162282996765866.correct : P17860162282996765866.Spec := by
  intro n
  simp only [A173126]

end A173126

/-! ## A173126.P17840501365141269900

`ogf(x^4/(1-2x-3x^2+6x^3+x^4-2x^5))`
-/

namespace A173126.P17840501365141269900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1] [1, -2, -3, 6, 1, -2] n

end

end A173126.P17840501365141269900

namespace A173126

/-- `ogf(x^4/(1-2x-3x^2+6x^3+x^4-2x^5))` -/
def P17840501365141269900.Spec : Prop :=
  ∀ n, P17840501365141269900.a n = A173126 n

end A173126

/-! ## A173126.P15745926420708702556

`2*a(n-1)+3*a(n-2)-6*a(n-3)-a(n-4)+2*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A173126.P15745926420708702556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 6 * a (n - 3) - a (n - 4) + 2 * a (n - 5)

end

end A173126.P15745926420708702556

namespace A173126

/-- `2*a(n-1)+3*a(n-2)-6*a(n-3)-a(n-4)+2*a(n-5)` -/
def P15745926420708702556.Spec : Prop :=
  ∀ n, P15745926420708702556.a n = A173126 n

end A173126

/-! ## A173126.P7048019226138271592

`A173125(n)-∑[A212804(n)]`
-/

namespace A173126.P7048019226138271592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173126.P7048019226138271592

namespace A173126

/-- `A173125(n)-∑[A212804(n)]` -/
def P7048019226138271592.Spec : Prop :=
  ∀ n, P7048019226138271592.a n = A173126 n

end A173126

/-! ## A173126.P7332730889226275337

`A054877(n)-Δ[A094966(n)]`
-/

namespace A173126.P7332730889226275337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 n - (f1 (n + 1) - f1 n)

end

end A173126.P7332730889226275337

namespace A173126

/-- `A054877(n)-Δ[A094966(n)]` -/
def P7332730889226275337.Spec : Prop :=
  ∀ n, P7332730889226275337.a n = A173126 n

end A173126

/-! ## A173126.P4939193519152654502

`A173125(n)-A212804(n+2)`
-/

namespace A173126.P4939193519152654502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 n - A212804 (n + 2)

end

end A173126.P4939193519152654502

namespace A173126

/-- `A173125(n)-A212804(n+2)` -/
def P4939193519152654502.Spec : Prop :=
  ∀ n, P4939193519152654502.a n = A173126 n

end A173126

/-! ## A173126.P5805761961306265337

`A054877(n)-A000045(A193356(n+1))`
-/

namespace A173126.P5805761961306265337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 n - A000045 (A193356 (n + 1)).toNat

end

end A173126.P5805761961306265337

namespace A173126

/-- `A054877(n)-A000045(A193356(n+1))` -/
def P5805761961306265337.Spec : Prop :=
  ∀ n, P5805761961306265337.a n = A173126 n

end A173126

/-! ## A173126.P4117752981588122110

`A099163(n)-A173125(n)`
-/

namespace A173126.P4117752981588122110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099163 n - A173125 n

end

end A173126.P4117752981588122110

namespace A173126

/-- `A099163(n)-A173125(n)` -/
def P4117752981588122110.Spec : Prop :=
  ∀ n, P4117752981588122110.a n = A173126 n

end A173126

/-! ## A173126.P7666814484076987651

`A173125(n)-(A084179(n)+A084178(n+1))`
-/

namespace A173126.P7666814484076987651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 n - (A084179 n + A084178 (n + 1))

end

end A173126.P7666814484076987651

namespace A173126

/-- `A173125(n)-(A084179(n)+A084178(n+1))` -/
def P7666814484076987651.Spec : Prop :=
  ∀ n, P7666814484076987651.a n = A173126 n

end A173126

/-! ## A173126.P1573663775990546455

`A173125(n)-A036355(∑[n])`
-/

namespace A173126.P1573663775990546455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 n - A036355 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173126.P1573663775990546455

namespace A173126

/-- `A173125(n)-A036355(∑[n])` -/
def P1573663775990546455.Spec : Prop :=
  ∀ n, P1573663775990546455.a n = A173126 n

end A173126

/-! ## A173126.P17526171358047743636

`A173125(n)-A058071(∑[n])`
-/

namespace A173126.P17526171358047743636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 n - A058071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173126.P17526171358047743636

namespace A173126

/-- `A173125(n)-A058071(∑[n])` -/
def P17526171358047743636.Spec : Prop :=
  ∀ n, P17526171358047743636.a n = A173126 n

end A173126

/-! ## A173126.P8763649700741165320

`A054877(n)-A134511(A000124(n)-1)`
-/

namespace A173126.P8763649700741165320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 n - A134511 (A000124 n - 1).toNat

end

end A173126.P8763649700741165320

namespace A173126

/-- `A054877(n)-A134511(A000124(n)-1)` -/
def P8763649700741165320.Spec : Prop :=
  ∀ n, P8763649700741165320.a n = A173126 n

end A173126

/-!
# A173127: a(n) = sinh((2n-1)*arcsinh(3)).

The programs for A173127, the canonical program `A173127.P10476436443359846859` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173127 has offset 0).

The definition of A173127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173127.P10476436443359846859

`ogf((-3+117x)/(1-38x+x^2))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173127

/-- `ogf((-3+117x)/(1-38x+x^2))` -/
def P10476436443359846859.Spec : Prop :=
  ∀ n, P10476436443359846859.a n = A173127 n

theorem P10476436443359846859.correct : P10476436443359846859.Spec := by
  intro n
  simp only [A173127]

end A173127

/-! ## A173127.P13135766425374871045

`38*a(n-1)-a(n-2)` with `a(0)=-3, a(1)=3`
-/

namespace A173127.P13135766425374871045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-3, 3] fun n a =>
  38 * a (n - 1) - a (n - 2)

end

end A173127.P13135766425374871045

namespace A173127

/-- `38*a(n-1)-a(n-2)` -/
def P13135766425374871045.Spec : Prop :=
  ∀ n, P13135766425374871045.a n = A173127 n

end A173127

/-! ## A173127.P4867076161423726354

`A005667(comp[2*(n+1)])+1-gcd(5, A031370(n+1))`
-/

namespace A173127.P4867076161423726354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005667 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1 - (Int.gcd 5 (A031370 (n + 1)) : ℤ)

end

end A173127.P4867076161423726354

namespace A173127

/-- `A005667(comp[2*(n+1)])+1-gcd(5, A031370(n+1))` -/
def P4867076161423726354.Spec : Prop :=
  ∀ n, P4867076161423726354.a n = A173127 n

end A173127

/-!
# A173128: a(n) = cosh(2*n*arcsinh(n)).

The programs for A173128, the canonical program `A173128.P6219233570880367088` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173128 has offset 0).

The definition of A173128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173128.P14647222827772381425

`∑{#}[n, C(2*n, 2*#)*(n²+1)^(n-#)*n^(2*#)]`
-/

namespace A173128.P14647222827772381425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n) (2 * k) : ℚ) * (n ^ 2 + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (n ^ (2 * k) : ℚ)

end

end A173128.P14647222827772381425

namespace A173128

/-- `∑{#}[n, C(2*n, 2*#)*(n²+1)^(n-#)*n^(2*#)]` -/
def P14647222827772381425.Spec : Prop :=
  ∀ n, P14647222827772381425.a n = (A173128 n : ℚ)

end A173128

/-! ## A173128.P6219233570880367088

`1/2*((n+sqrt(n²+1))^(2*n)+(n-sqrt(n²+1))^(2*n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173128

/-- `1/2*((n+sqrt(n²+1))^(2*n)+(n-sqrt(n²+1))^(2*n))` -/
def P6219233570880367088.Spec : Prop :=
  ∀ n, P6219233570880367088.a n = (A173128 n : ℝ)

end A173128

/-! ## A173128.P5287472521620165360

`A320570(2*n)/2`
-/

namespace A173128.P5287472521620165360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320570 (2 * n) : ℚ) / 2

end

end A173128.P5287472521620165360

namespace A173128

/-- `A320570(2*n)/2` -/
def P5287472521620165360.Spec : Prop :=
  ∀ n, P5287472521620165360.a n = (A173128 n : ℚ)

end A173128

/-!
# A173129: a(n) = cosh(2 * n * arccosh(n)).

The programs for A173129, the canonical program `A173129.P8727728813194201662` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173129 has offset 0).

The definition of A173129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173129.P8727728813194201662

`∑{#}[n, C(2*n, 2*#)*(n²-1)^(n-#)*n^(2*#)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173129

/-- `∑{#}[n, C(2*n, 2*#)*(n²-1)^(n-#)*n^(2*#)]` -/
def P8727728813194201662.Spec : Prop :=
  ∀ n, P8727728813194201662.a n = (A173129 n : ℚ)

end A173129

/-! ## A173129.P324373089626786454

`A343259(2*n)/2`
-/

namespace A173129.P324373089626786454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343259 (2 * n) : ℚ) / 2

end

end A173129.P324373089626786454

namespace A173129

/-- `A343259(2*n)/2` -/
def P324373089626786454.Spec : Prop :=
  ∀ n, P324373089626786454.a n = (A173129 n : ℚ)

end A173129

/-! ## A173129.P16814162181981960381

`A101124(A062725(n))`
-/

namespace A173129.P16814162181981960381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A062725 n).toNat

end

end A173129.P16814162181981960381

namespace A173129

/-- `A101124(A062725(n))` -/
def P16814162181981960381.Spec : Prop :=
  ∀ n, P16814162181981960381.a n = A173129 n

end A173129

/-! ## A173129.P8487936571182840153

`A322836(A062728(n))`
-/

namespace A173129.P8487936571182840153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A062728 n).toNat

end

end A173129.P8487936571182840153

namespace A173129

/-- `A322836(A062728(n))` -/
def P8487936571182840153.Spec : Prop :=
  ∀ n, P8487936571182840153.a n = A173129 n

end A173129

/-! ## A173129.P37533651712131405

`A322836(A062725(n)+n)`
-/

namespace A173129.P37533651712131405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A062725 n + (n : ℤ)).toNat

end

end A173129.P37533651712131405

namespace A173129

/-- `A322836(A062725(n)+n)` -/
def P37533651712131405.Spec : Prop :=
  ∀ n, P37533651712131405.a n = A173129 n

end A173129

/-!
# A173130: a(n) = Cosh[(2 n - 1) ArcCosh[n]].

The programs for A173130, there is no canonical definition to state claims against.
-/

/-! ## A173130.P16101442517964009025

`lcm(n, A101124(A022266(n)))`
-/

namespace A173130.P16101442517964009025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A101124 (A022266 n).toNat)

end

end A173130.P16101442517964009025

/-! ## A173130.P10485256428073233527

`A101124(A022266(n)+A000007(n))`
-/

namespace A173130.P10485256428073233527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A022266 n + A000007 n).toNat

end

end A173130.P10485256428073233527

/-! ## A173130.P13405314765264683334

`A101124(A151838(n)+A022266(n))`
-/

namespace A173130.P13405314765264683334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A151838 n + A022266 n).toNat

end

end A173130.P13405314765264683334

/-! ## A173130.P14637012382111756471

`A101124(gcd(A022266(n), A151838(n)))`
-/

namespace A173130.P14637012382111756471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (Int.gcd (A022266 n) (A151838 n))

end

end A173130.P14637012382111756471

/-! ## A173130.P8880135469879963235

`and(A057428(n), A101124(A022266(n)))`
-/

namespace A173130.P8880135469879963235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A101124 (A022266 n).toNat)

end

end A173130.P8880135469879963235

/-!
# A173131: a(n) = (Cosh[(2n-1)ArcSinh[n]])^2.

The programs for A173131, there is no canonical definition to state claims against.
-/

/-! ## A173131.P10550557593303941179

`A173133(n)²+1`
-/

namespace A173131.P10550557593303941179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173133 n ^ 2 + 1

end

end A173131.P10550557593303941179

/-!
# A173132: Numbers k with the property that both the sum of the even digits of k^2 and the sum of the odd digits of k^2 are squares.

The programs for A173132, there is no canonical definition to state claims against.
-/

/-! ## A173132.P9138496949523886471

`lt[A000700(A352603(n+1)), A066201(2*n+3)]`
-/

namespace A173132.P9138496949523886471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A352603 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066201 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173132.P9138496949523886471

/-!
# A173133: a(n) = Sinh[(2n-1) ArcSinh[n]].

The programs for A173133, there is no canonical definition to state claims against.
-/

/-! ## A173133.P17641260149390124136

`sqrt(A173131(n)-1)`
-/

namespace A173133.P17641260149390124136
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A173131 n - 1 : ℝ)

end

end A173133.P17641260149390124136

/-!
# A173134: a(n) = Sinh[(2n-1)ArcCosh[n]]^2.

The programs for A173134, there is no canonical definition to state claims against.
-/

/-! ## A173134.P15423759145958725416

`A173130(n)²-1`
-/

namespace A173134.P15423759145958725416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173130 n ^ 2 - 1

end

end A173134.P15423759145958725416

/-!
# A173135: Primes other than 3 and 5.

The programs for A173135, there is no canonical definition to state claims against.
-/

/-! ## A173135.P6832890677956789092

`p?[n%7+n]`
-/

namespace A173135.P6832890677956789092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 7 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173135.P6832890677956789092

/-! ## A173135.P18036513335181083676

`p?[n*gcd(15, n)]`
-/

namespace A173135.P18036513335181083676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 15 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173135.P18036513335181083676

/-! ## A173135.P11346914114124178075

`record[∑{p}[8-n, #]]`
-/

namespace A173135.P11346914114124178075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173135.P11346914114124178075

/-! ## A173135.P854690444290144502

`p?[comp[or(1, ∑[n-1])]]`
-/

namespace A173135.P854690444290144502
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173135.P854690444290144502

/-! ## A173135.P17814700563391917556

`p?[a(n-1)+2]` with `a(0)=2, a(1)=7`
-/

namespace A173135.P17814700563391917556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173135.P17814700563391917556

/-! ## A173135.P3473793284144946431

`p?[dr(n+1)-3+n]`
-/

namespace A173135.P3473793284144946431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173135.P3473793284144946431

/-!
# A173136: Odd nonprimes n such that exactly one of 2n-1 and 2n+1 is prime.

The programs for A173136, the canonical program `A173136.P16019285385718865064` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173136 has offset 1).

The definition of A173136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173136.P16019285385718865064

`∩[A014076(n+1), A174047(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173136

/-- `∩[A014076(n+1), A174047(n+1)]` -/
def P16019285385718865064.Spec : Prop :=
  ∀ n, (P16019285385718865064.a n : ℤ) = A173136 (n + 1)

theorem P16019285385718865064.correct : P16019285385718865064.Spec := by
  intro n
  simp only [A173136, Nat.add_sub_cancel]

end A173136

/-! ## A173136.P8827726378732290053

`eq[A002126(2*n+1), A013634(A061358(n+2))]`
-/

namespace A173136.P8827726378732290053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A061358 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173136.P8827726378732290053

namespace A173136

/-- `eq[A002126(2*n+1), A013634(A061358(n+2))]` -/
def P8827726378732290053.Spec : Prop :=
  ∀ n, (P8827726378732290053.a n : ℤ) = A173136 (n + 1)

end A173136

/-! ## A173136.P15013950473236695110

`eq[A002126(2*n+1), A004483(A073610(n+2))]`
-/

namespace A173136.P15013950473236695110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A073610 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173136.P15013950473236695110

namespace A173136

/-- `eq[A002126(2*n+1), A004483(A073610(n+2))]` -/
def P15013950473236695110.Spec : Prop :=
  ∀ n, (P15013950473236695110.a n : ℤ) = A173136 (n + 1)

end A173136

/-! ## A173136.P1139082880714357687

`eq[2, A002126(A299231(n+1))-A073610(n+2)²]`
-/

namespace A173136.P1139082880714357687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A299231 (n + 1)).toNat - A073610 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173136.P1139082880714357687

namespace A173136

/-- `eq[2, A002126(A299231(n+1))-A073610(n+2)²]` -/
def P1139082880714357687.Spec : Prop :=
  ∀ n, (P1139082880714357687.a n : ℤ) = A173136 (n + 1)

end A173136

/-! ## A173136.P15179408756294736711

`∩[2*n+1, A172458(n+1)]`
-/

namespace A173136.P15179408756294736711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173136.P15179408756294736711

namespace A173136

/-- `∩[2*n+1, A172458(n+1)]` -/
def P15179408756294736711.Spec : Prop :=
  ∀ n, (P15179408756294736711.a n : ℤ) = A173136 (n + 1)

end A173136

/-! ## A173136.P11628762884158698103

`filter[A172458(n+1), A000035(#)]`
-/

namespace A173136.P11628762884158698103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A173136.P11628762884158698103

namespace A173136

/-- `filter[A172458(n+1), A000035(#)]` -/
def P11628762884158698103.Spec : Prop :=
  ∀ n, P11628762884158698103.a n = A173136 (n + 1)

end A173136

/-! ## A173136.P1712950641268376834

`∩[A172458(n+1), A004273(n)]`
-/

namespace A173136.P1712950641268376834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173136.P1712950641268376834

namespace A173136

/-- `∩[A172458(n+1), A004273(n)]` -/
def P1712950641268376834.Spec : Prop :=
  ∀ n, (P1712950641268376834.a n : ℤ) = A173136 (n + 1)

end A173136

/-! ## A173136.P6153955784227966204

`∩[A172458(n+1), A004274(n)]`
-/

namespace A173136.P6153955784227966204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173136.P6153955784227966204

namespace A173136

/-- `∩[A172458(n+1), A004274(n)]` -/
def P6153955784227966204.Spec : Prop :=
  ∀ n, (P6153955784227966204.a n : ℤ) = A173136 (n + 1)

end A173136

/-! ## A173136.P3809694326142926712

`∩[A172458(n+1), A060747(n)]`
-/

namespace A173136.P3809694326142926712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173136.P3809694326142926712

namespace A173136

/-- `∩[A172458(n+1), A060747(n)]` -/
def P3809694326142926712.Spec : Prop :=
  ∀ n, (P3809694326142926712.a n : ℤ) = A173136 (n + 1)

end A173136

/-! ## A173136.P10947354919989106234

`∩[A172458(n+1), A163985(n)]`
-/

namespace A173136.P10947354919989106234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173136.P10947354919989106234

namespace A173136

/-- `∩[A172458(n+1), A163985(n)]` -/
def P10947354919989106234.Spec : Prop :=
  ∀ n, (P10947354919989106234.a n : ℤ) = A173136 (n + 1)

end A173136

/-! ## A173136.P388898014610279918

`∩[A172458(n+1), A255763(n+1)]`
-/

namespace A173136.P388898014610279918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173136.P388898014610279918

namespace A173136

/-- `∩[A172458(n+1), A255763(n+1)]` -/
def P388898014610279918.Spec : Prop :=
  ∀ n, (P388898014610279918.a n : ℤ) = A173136 (n + 1)

end A173136

/-!
# A173137: n-th nonnegative noncomposite number plus n.

The programs for A173137, the canonical program `A173137.P14698543260873224992` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173137 has offset 1).

The definition of A173137 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173137.P14698543260873224992

`A158611(n+1)+A000027(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173137

/-- `A158611(n+1)+A000027(n+1)` -/
def P14698543260873224992.Spec : Prop :=
  ∀ n, P14698543260873224992.a n = A173137 (n + 1)

theorem P14698543260873224992.correct : P14698543260873224992.Spec := by
  intro n
  simp only [A173137, Nat.add_sub_cancel]

end A173137

/-! ## A173137.P16118601618857848036

`record[A259153(n)+1]+n`
-/

namespace A173137.P16118601618857848036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A173137.P16118601618857848036

namespace A173137

/-- `record[A259153(n)+1]+n` -/
def P16118601618857848036.Spec : Prop :=
  ∀ n, P16118601618857848036.a n = A173137 (n + 1)

end A173137

/-! ## A173137.P3861668298915707961

`n+1+A158611(n+1)`
-/

namespace A173137.P3861668298915707961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A158611 (n + 1)

end

end A173137.P3861668298915707961

namespace A173137

/-- `n+1+A158611(n+1)` -/
def P3861668298915707961.Spec : Prop :=
  ∀ n, P3861668298915707961.a n = A173137 (n + 1)

theorem P3861668298915707961.correct : P3861668298915707961.Spec := by
  intro n
  simp only [A173137, Nat.add_sub_cancel, A173137.P3861668298915707961.a, A173137.P14698543260873224992.a, A000027, A000027.P10331202704469894836.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173137

/-! ## A173137.P141236590720065114

`A176099(n+1)-A014689(n+1)`
-/

namespace A173137.P141236590720065114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176099 (n + 1) - A014689 (n + 1)

end

end A173137.P141236590720065114

namespace A173137

/-- `A176099(n+1)-A014689(n+1)` -/
def P141236590720065114.Spec : Prop :=
  ∀ n, P141236590720065114.a n = A173137 (n + 1)

theorem P141236590720065114.correct : P141236590720065114.Spec := by
  intro n
  simp only [A173137, Nat.add_sub_cancel, A173137.P141236590720065114.a, A173137.P14698543260873224992.a, A000027, A000027.P10331202704469894836.a, A014689, A014689.P6286543075765329050.a, A158611, A158611.P9275629407611603775.a, A176099, A176099.P4142844014744046612.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173137

/-! ## A173137.P17990333897887223769

`A164653(n+1)-A162177(n+1)`
-/

namespace A173137.P17990333897887223769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1) - A162177 (n + 1)

end

end A173137.P17990333897887223769

namespace A173137

/-- `A164653(n+1)-A162177(n+1)` -/
def P17990333897887223769.Spec : Prop :=
  ∀ n, P17990333897887223769.a n = A173137 (n + 1)

theorem P17990333897887223769.correct : P17990333897887223769.Spec := by
  intro n
  simp only [A173137, Nat.add_sub_cancel, A173137.P17990333897887223769.a, A173137.P14698543260873224992.a, A000027, A000027.P10331202704469894836.a, A158611, A158611.P9275629407611603775.a, A162177, A162177.P8282933836838632122.a, A164653, A164653.P11870517180537955334.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173137

/-! ## A173137.P17853670057907074425

`∪[A008578(n+1), A182986(n+1)]+1+n`
-/

namespace A173137.P17853670057907074425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1 + n

end

end A173137.P17853670057907074425

namespace A173137

/-- `∪[A008578(n+1), A182986(n+1)]+1+n` -/
def P17853670057907074425.Spec : Prop :=
  ∀ n, (P17853670057907074425.a n : ℤ) = A173137 (n + 1)

end A173137

/-! ## A173137.P13680022248308572867

`n+1+A002808(n+1)+A164653(n+1)-A022798(n+1)`
-/

namespace A173137.P13680022248308572867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A002808 (n + 1) + (A164653 (n + 1) - A022798 (n + 1)))

end

end A173137.P13680022248308572867

namespace A173137

/-- `n+1+A002808(n+1)+A164653(n+1)-A022798(n+1)` -/
def P13680022248308572867.Spec : Prop :=
  ∀ n, P13680022248308572867.a n = A173137 (n + 1)

theorem P13680022248308572867.correct : P13680022248308572867.Spec := by
  intro n
  simp only [A173137, Nat.add_sub_cancel, A173137.P13680022248308572867.a, A173137.P14698543260873224992.a, A000027, A000027.P10331202704469894836.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A022798, A022798.P9273272214686499992.a, A158611, A158611.P9275629407611603775.a, A164653, A164653.P11870517180537955334.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173137

/-! ## A173137.P3550079307986312880

`comp[(n+2)%A000203(n+1)]+n`
-/

namespace A173137.P3550079307986312880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000203 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A173137.P3550079307986312880

namespace A173137

/-- `comp[(n+2)%A000203(n+1)]+n` -/
def P3550079307986312880.Spec : Prop :=
  ∀ n, (P3550079307986312880.a n : ℤ) = A173137 (n + 1)

end A173137

/-! ## A173137.P17121514636995952111

`record[A006530(n+2)%(n+1)]+n+1`
-/

namespace A173137.P17121514636995952111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A173137.P17121514636995952111

namespace A173137

/-- `record[A006530(n+2)%(n+1)]+n+1` -/
def P17121514636995952111.Spec : Prop :=
  ∀ n, P17121514636995952111.a n = A173137 (n + 1)

end A173137

/-! ## A173137.P8450338013818791753

`lt[abs(1-n), A020639(abs(1-n)+1)]+n+1`
-/

namespace A173137.P8450338013818791753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + (n + 1)

end

end A173137.P8450338013818791753

namespace A173137

/-- `lt[abs(1-n), A020639(abs(1-n)+1)]+n+1` -/
def P8450338013818791753.Spec : Prop :=
  ∀ n, (P8450338013818791753.a n : ℤ) = A173137 (n + 1)

end A173137

/-! ## A173137.P11670389587901253201

`record[A305897(2*n+1)]+n`
-/

namespace A173137.P11670389587901253201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A173137.P11670389587901253201

namespace A173137

/-- `record[A305897(2*n+1)]+n` -/
def P11670389587901253201.Spec : Prop :=
  ∀ n, P11670389587901253201.a n = A173137 (n + 1)

end A173137

/-! ## A173137.P2083791142435583743

`A373149(A373149(A000040(n+1)))+n+1`
-/

namespace A173137.P2083791142435583743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373149 (A373149 (A000040 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A173137.P2083791142435583743

namespace A173137

/-- `A373149(A373149(A000040(n+1)))+n+1` -/
def P2083791142435583743.Spec : Prop :=
  ∀ n, P2083791142435583743.a n = A173137 (n + 1)

end A173137

/-! ## A173137.P13397977376193121026

`lt[∑{e}[n, #], 2]+n+1`
-/

namespace A173137.P13397977376193121026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + (n + 1)

end

end A173137.P13397977376193121026

namespace A173137

/-- `lt[∑{e}[n, #], 2]+n+1` -/
def P13397977376193121026.Spec : Prop :=
  ∀ n, (P13397977376193121026.a n : ℤ) = A173137 (n + 1)

end A173137

/-! ## A173137.P9865422926030750406

`eq[1, ∑{e}[n, #]!]+n+1`
-/

namespace A173137.P9865422926030750406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 1)

end

end A173137.P9865422926030750406

namespace A173137

/-- `eq[1, ∑{e}[n, #]!]+n+1` -/
def P9865422926030750406.Spec : Prop :=
  ∀ n, (P9865422926030750406.a n : ℤ) = A173137 (n + 1)

end A173137

/-! ## A173137.P5453392426917435141

`lt[∑{d}[1-n, #], n+1]+n`
-/

namespace A173137.P5453392426917435141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + n

end

end A173137.P5453392426917435141

namespace A173137

/-- `lt[∑{d}[1-n, #], n+1]+n` -/
def P5453392426917435141.Spec : Prop :=
  ∀ n, (P5453392426917435141.a n : ℤ) = A173137 (n + 1)

end A173137

/-! ## A173137.P11348820555053393480

`lt[n-1, ∑{p}[2*n, #]]+n+1`
-/

namespace A173137.P11348820555053393480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (n + 1)

end

end A173137.P11348820555053393480

namespace A173137

/-- `lt[n-1, ∑{p}[2*n, #]]+n+1` -/
def P11348820555053393480.Spec : Prop :=
  ∀ n, (P11348820555053393480.a n : ℤ) = A173137 (n + 1)

end A173137

/-! ## A173137.P891770226651902397

`record[A248737(n)+1]+n`
-/

namespace A173137.P891770226651902397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248737 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A173137.P891770226651902397

namespace A173137

/-- `record[A248737(n)+1]+n` -/
def P891770226651902397.Spec : Prop :=
  ∀ n, P891770226651902397.a n = A173137 (n + 1)

end A173137

/-! ## A173137.P17028867320939786094

`eq[1, A226378(n)]+n+1`
-/

namespace A173137.P17028867320939786094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A173137.P17028867320939786094

namespace A173137

/-- `eq[1, A226378(n)]+n+1` -/
def P17028867320939786094.Spec : Prop :=
  ∀ n, (P17028867320939786094.a n : ℤ) = A173137 (n + 1)

end A173137

/-! ## A173137.P8192287106061718815

`lt[A223135(n), 2]+n+1`
-/

namespace A173137.P8192287106061718815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (n + 1)

end

end A173137.P8192287106061718815

namespace A173137

/-- `lt[A223135(n), 2]+n+1` -/
def P8192287106061718815.Spec : Prop :=
  ∀ n, (P8192287106061718815.a n : ℤ) = A173137 (n + 1)

end A173137

/-! ## A173137.P2897260386421257027

`n+1+record[gcd(n, A039653(n))]`
-/

namespace A173137.P2897260386421257027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A039653 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173137.P2897260386421257027

namespace A173137

/-- `n+1+record[gcd(n, A039653(n))]` -/
def P2897260386421257027.Spec : Prop :=
  ∀ n, (P2897260386421257027.a n : ℤ) = A173137 (n + 1)

end A173137

/-!
# A173138: Composite numbers k such that 2^(k-4) == 1 (mod k).

The programs for A173138, there is no canonical definition to state claims against.
-/

/-! ## A173138.P15083120159994994013

`abs(Δ[a(n-1)-A033984(n+1)])` with `a(0)=0, a(1)=4`
-/

namespace A173138.P15083120159994994013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) - A033984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A173138.P15083120159994994013

/-! ## A173138.P15769263035153097388

`ceil(A033984(n+2)/A054977(n))`
-/

namespace A173138.P15769263035153097388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033984 (n + 2) : ℚ) / (A054977 n : ℚ)⌉

end

end A173138.P15769263035153097388

/-! ## A173138.P16362417440384547862

`A033984(n+2)+A005928(A100484(n+1))`
-/

namespace A173138.P16362417440384547862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033984 (n + 2) + A005928 (A100484 (n + 1)).toNat

end

end A173138.P16362417440384547862

/-! ## A173138.P4484940424715113240

`A033984(n+2)-A034188(A031443(n+1))`
-/

namespace A173138.P4484940424715113240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033984 (n + 2) - A034188 (A031443 (n + 1)).toNat

end

end A173138.P4484940424715113240

/-! ## A173138.P15332389008673319645

`A033984(n+2)-A034188(A034011(n+1))`
-/

namespace A173138.P15332389008673319645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033984 (n + 2) - A034188 (A034011 (n + 1)).toNat

end

end A173138.P15332389008673319645

/-! ## A173138.P11884856045822256107

`A033984(n+2)-A034188(A359351(n+1))`
-/

namespace A173138.P11884856045822256107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033984 (n + 2) - A034188 (A359351 (n + 1)).toNat

end

end A173138.P11884856045822256107

/-!
# A173139: G.f. satisfies: A(x) = x*A(x) + A(x^2*A(x)^2).

The programs for A173139, there is no canonical definition to state claims against.
-/

/-! ## A173139.P2087780109183738374

`∑[A185700(2*n²+1)]`
-/

namespace A173139.P2087780109183738374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185700 (2 * n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173139.P2087780109183738374

/-! ## A173139.P1561693909617350714

`A055679(or(2, ceil(2^(n-1))²))`
-/

namespace A173139.P1561693909617350714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (Int.lor 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2)).toNat

end

end A173139.P1561693909617350714

/-! ## A173139.P597649441447509193

`A023193(A149334(n))`
-/

namespace A173139.P597649441447509193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149334 n).toNat

end

end A173139.P597649441447509193

/-! ## A173139.P13952672797693007563

`A157271(A129366(n))`
-/

namespace A173139.P13952672797693007563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A129366 n).toNat

end

end A173139.P13952672797693007563

/-!
# A173140: Numbers k such that the period of the decimal representation of 1/k is a square.

The programs for A173140, there is no canonical definition to state claims against.
-/

/-! ## A173140.P4131613328358564786

`lt[A325142(n+2), A111540(A317648(n+1))]`
-/

namespace A173140.P4131613328358564786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111540 (A317648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173140.P4131613328358564786

/-!
# A173141: a(n) = 49*n^2 + n.

The programs for A173141, the canonical program `A173141.P7971151032588999872` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173141 has offset 1).

The definition of A173141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+1)²+n+1` (program `A173141.P7971151032588999872`, by `A173141.P7971151032588999872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173141.P8516341915865616807

`ogf((50+48x)/(1-3x+3x^2-x^3))`
-/

namespace A173141.P8516341915865616807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [50, 48] [1, -3, 3, -1] n

end

end A173141.P8516341915865616807

namespace A173141

/-- `ogf((50+48x)/(1-3x+3x^2-x^3))` -/
def P8516341915865616807.Spec : Prop :=
  ∀ n, P8516341915865616807.a n = A173141 (n + 1)

end A173141

/-! ## A173141.P7971151032588999872

`49*(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173141

/-- `49*(n+1)²+n+1` -/
def P7971151032588999872.Spec : Prop :=
  ∀ n, (P7971151032588999872.a n : ℤ) = A173141 (n + 1)

theorem P7971151032588999872.correct : P7971151032588999872.Spec := by
  intro n
  simp only [A173141, Nat.add_sub_cancel]

end A173141

/-! ## A173141.P1825924094750025761

`∑[a(n-1)+98]` with `a(0)=50`
-/

namespace A173141.P1825924094750025761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [50] fun n f1 =>
  f1 (n - 1) + 98

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173141.P1825924094750025761

namespace A173141

/-- `∑[a(n-1)+98]` -/
def P1825924094750025761.Spec : Prop :=
  ∀ n, (P1825924094750025761.a n : ℤ) = A173141 (n + 1)

end A173141

/-! ## A173141.P13996582571708844483

`(Δ[C(7*n+4, 2)]+1)*(n+1)`
-/

namespace A173141.P13996582571708844483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (7 * n + 4) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) * (n + 1 : ℤ)

end

end A173141.P13996582571708844483

namespace A173141

/-- `(Δ[C(7*n+4, 2)]+1)*(n+1)` -/
def P13996582571708844483.Spec : Prop :=
  ∀ n, P13996582571708844483.a n = A173141 (n + 1)

theorem P13996582571708844483.correct : P13996582571708844483.Spec := by
  intro n
  simp only [A173141, Nat.add_sub_cancel, A173141.P13996582571708844483.f1, A173141.P13996582571708844483.a, A173141.P7971151032588999872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173141

/-! ## A173141.P1604855651279424803

`(n+1)*A158066(n+1)`
-/

namespace A173141.P1604855651279424803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158066 (n + 1)

end

end A173141.P1604855651279424803

namespace A173141

/-- `(n+1)*A158066(n+1)` -/
def P1604855651279424803.Spec : Prop :=
  ∀ n, P1604855651279424803.a n = A173141 (n + 1)

theorem P1604855651279424803.correct : P1604855651279424803.Spec := by
  intro n
  simp only [A173141, Nat.add_sub_cancel, A173141.P1604855651279424803.a, A173141.P7971151032588999872.a, A158066, A158066.P2753047191672300220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173141

/-! ## A173141.P14550490282010507331

`lcm(A000027(n+1), A158066(n+1))`
-/

namespace A173141.P14550490282010507331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158066 (n + 1))

end

end A173141.P14550490282010507331

namespace A173141

/-- `lcm(A000027(n+1), A158066(n+1))` -/
def P14550490282010507331.Spec : Prop :=
  ∀ n, (P14550490282010507331.a n : ℤ) = A173141 (n + 1)

end A173141

/-! ## A173141.P39923180794225471

`∑[A158066(2*n+1)]`
-/

namespace A173141.P39923180794225471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173141.P39923180794225471

namespace A173141

/-- `∑[A158066(2*n+1)]` -/
def P39923180794225471.Spec : Prop :=
  ∀ n, P39923180794225471.a n = A173141 (n + 1)

end A173141

/-! ## A173141.P7510463669782795689

`A157365(2*(n+1))/4`
-/

namespace A173141.P7510463669782795689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157365 (2 * (n + 1)) : ℚ) / 4

end

end A173141.P7510463669782795689

namespace A173141

/-- `A157365(2*(n+1))/4` -/
def P7510463669782795689.Spec : Prop :=
  ∀ n, P7510463669782795689.a n = (A173141 (n + 1) : ℚ)

end A173141

/-! ## A173141.P2172800920426498963

`(n+1)*A016993(A008589(n+1))`
-/

namespace A173141.P2172800920426498963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016993 (A008589 (n + 1)).toNat

end

end A173141.P2172800920426498963

namespace A173141

/-- `(n+1)*A016993(A008589(n+1))` -/
def P2172800920426498963.Spec : Prop :=
  ∀ n, P2172800920426498963.a n = A173141 (n + 1)

end A173141

/-!
# A173142: a(n) = n^n - (n-1)^(n-1) - (n-2)^(n-2) - ... - 1.

The programs for A173142, the canonical program `A173142.P14046469073702964188` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173142 has offset 1).

The definition of A173142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173142.P14046469073702964188

`2*(n+1)^(n+1)-A001923(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173142

/-- `2*(n+1)^(n+1)-A001923(n+1)` -/
def P14046469073702964188.Spec : Prop :=
  ∀ n, P14046469073702964188.a n = A173142 (n + 1)

theorem P14046469073702964188.correct : P14046469073702964188.Spec := by
  intro n
  simp only [A173142, Nat.add_sub_cancel]

end A173142

/-! ## A173142.P15219800510692466311

`∑[or(1, Δ[n^n])-n^n]+1`
-/

namespace A173142.P15219800510692466311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - (n ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173142.P15219800510692466311

namespace A173142

/-- `∑[or(1, Δ[n^n])-n^n]+1` -/
def P15219800510692466311.Spec : Prop :=
  ∀ n, P15219800510692466311.a n = A173142 (n + 1)

end A173142

/-! ## A173142.P4153889315158687215

`(n+1)^(n+1)+1-∑[n^n]`
-/

namespace A173142.P4153889315158687215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A173142.P4153889315158687215

namespace A173142

/-- `(n+1)^(n+1)+1-∑[n^n]` -/
def P4153889315158687215.Spec : Prop :=
  ∀ n, P4153889315158687215.a n = A173142 (n + 1)

end A173142

/-! ## A173142.P1243615237996087173

`abs(A001923(n)-Δ[A001923(n)])`
-/

namespace A173142.P1243615237996087173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001923 n - (f1 (n + 1) - f1 n)|

end

end A173142.P1243615237996087173

namespace A173142

/-- `abs(A001923(n)-Δ[A001923(n)])` -/
def P1243615237996087173.Spec : Prop :=
  ∀ n, P1243615237996087173.a n = A173142 (n + 1)

end A173142

/-! ## A173142.P6215049169964778070

`abs(A001923(n)-record[A091884(n)])`
-/

namespace A173142.P6215049169964778070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001923 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A173142.P6215049169964778070

namespace A173142

/-- `abs(A001923(n)-record[A091884(n)])` -/
def P6215049169964778070.Spec : Prop :=
  ∀ n, P6215049169964778070.a n = A173142 (n + 1)

end A173142

/-! ## A173142.P8989424894587883231

`abs(A001923(n)-record[A174551(n)])`
-/

namespace A173142.P8989424894587883231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001923 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A173142.P8989424894587883231

namespace A173142

/-- `abs(A001923(n)-record[A174551(n)])` -/
def P8989424894587883231.Spec : Prop :=
  ∀ n, P8989424894587883231.a n = A173142 (n + 1)

end A173142

/-! ## A173142.P1589470511416667205

`abs(A001923(n)-record[A245501(n)])`
-/

namespace A173142.P1589470511416667205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001923 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A173142.P1589470511416667205

namespace A173142

/-- `abs(A001923(n)-record[A245501(n)])` -/
def P1589470511416667205.Spec : Prop :=
  ∀ n, P1589470511416667205.a n = A173142 (n + 1)

end A173142

/-!
# A173143: Partial sums of the squarefree numbers, A005117.

The programs for A173143, the canonical program `A173143.P1652313516613948722` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173143 has offset 1).

The definition of A173143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173143.P17242245448532254713

`∑[comp[A105570(n)]]`
-/

namespace A173143.P17242245448532254713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P17242245448532254713

namespace A173143

/-- `∑[comp[A105570(n)]]` -/
def P17242245448532254713.Spec : Prop :=
  ∀ n, (P17242245448532254713.a n : ℤ) = A173143 (n + 1)

end A173143

/-! ## A173143.P11685143064868034935

`∑[A005117(n+1)]`
-/

namespace A173143.P11685143064868034935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P11685143064868034935

namespace A173143

/-- `∑[A005117(n+1)]` -/
def P11685143064868034935.Spec : Prop :=
  ∀ n, P11685143064868034935.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P8306567267420828557

`∑[sqrt(A062503(n+1))]`
-/

namespace A173143.P8306567267420828557
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062503 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P8306567267420828557

namespace A173143

/-- `∑[sqrt(A062503(n+1))]` -/
def P8306567267420828557.Spec : Prop :=
  ∀ n, P8306567267420828557.a n = (A173143 (n + 1) : ℝ)

end A173143

/-! ## A173143.P11591732487135184070

`∑[record[A003967(n+1)]]`
-/

namespace A173143.P11591732487135184070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P11591732487135184070

namespace A173143

/-- `∑[record[A003967(n+1)]]` -/
def P11591732487135184070.Spec : Prop :=
  ∀ n, P11591732487135184070.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P17963731860154115128

`∑[record[A007913(n+1)]]`
-/

namespace A173143.P17963731860154115128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P17963731860154115128

namespace A173143

/-- `∑[record[A007913(n+1)]]` -/
def P17963731860154115128.Spec : Prop :=
  ∀ n, P17963731860154115128.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P7874226989255598121

`∑[record[A007947(n+1)]]`
-/

namespace A173143.P7874226989255598121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P7874226989255598121

namespace A173143

/-- `∑[record[A007947(n+1)]]` -/
def P7874226989255598121.Spec : Prop :=
  ∀ n, P7874226989255598121.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P3086366092679387502

`∑[record[A055231(n+1)]]`
-/

namespace A173143.P3086366092679387502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P3086366092679387502

namespace A173143

/-- `∑[record[A055231(n+1)]]` -/
def P3086366092679387502.Spec : Prop :=
  ∀ n, P3086366092679387502.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P5697611249766481124

`∑[record[A055653(n+1)]]`
-/

namespace A173143.P5697611249766481124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P5697611249766481124

namespace A173143

/-- `∑[record[A055653(n+1)]]` -/
def P5697611249766481124.Spec : Prop :=
  ∀ n, P5697611249766481124.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P3586046570472110818

`∑[record[A083346(n+1)]]`
-/

namespace A173143.P3586046570472110818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P3586046570472110818

namespace A173143

/-- `∑[record[A083346(n+1)]]` -/
def P3586046570472110818.Spec : Prop :=
  ∀ n, P3586046570472110818.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P225378894480081198

`∑[record[A325814(n+1)]]`
-/

namespace A173143.P225378894480081198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P225378894480081198

namespace A173143

/-- `∑[record[A325814(n+1)]]` -/
def P225378894480081198.Spec : Prop :=
  ∀ n, P225378894480081198.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P13634357452030284570

`∑[A133466(n+1)/4]`
-/

namespace A173143.P13634357452030284570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P13634357452030284570

namespace A173143

/-- `∑[A133466(n+1)/4]` -/
def P13634357452030284570.Spec : Prop :=
  ∀ n, P13634357452030284570.a n = (A173143 (n + 1) : ℚ)

end A173143

/-! ## A173143.P1652313516613948722

`A144338(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173143

/-- `A144338(n)+a(n-1)` -/
def P1652313516613948722.Spec : Prop :=
  ∀ n, P1652313516613948722.a n = A173143 (n + 1)

theorem P1652313516613948722.correct : P1652313516613948722.Spec := by
  intro n
  simp only [A173143, Nat.add_sub_cancel]

end A173143

/-! ## A173143.P15439162889327262345

`∑[eq[1, A005361(n+1)]+1]`
-/

namespace A173143.P15439162889327262345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P15439162889327262345

namespace A173143

/-- `∑[eq[1, A005361(n+1)]+1]` -/
def P15439162889327262345.Spec : Prop :=
  ∀ n, (P15439162889327262345.a n : ℤ) = A173143 (n + 1)

end A173143

/-! ## A173143.P17630613762480577816

`∑[lt[A348029(n+1), 1]+1]`
-/

namespace A173143.P17630613762480577816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P17630613762480577816

namespace A173143

/-- `∑[lt[A348029(n+1), 1]+1]` -/
def P17630613762480577816.Spec : Prop :=
  ∀ n, (P17630613762480577816.a n : ℤ) = A173143 (n + 1)

end A173143

/-! ## A173143.P8815522230803269370

`∑[A243348(n+1)+1+n]`
-/

namespace A173143.P8815522230803269370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P8815522230803269370

namespace A173143

/-- `∑[A243348(n+1)+1+n]` -/
def P8815522230803269370.Spec : Prop :=
  ∀ n, P8815522230803269370.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P4338179398619923996

`∑[eq[1, A008683(n+1)²]+1]`
-/

namespace A173143.P4338179398619923996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P4338179398619923996

namespace A173143

/-- `∑[eq[1, A008683(n+1)²]+1]` -/
def P4338179398619923996.Spec : Prop :=
  ∀ n, (P4338179398619923996.a n : ℤ) = A173143 (n + 1)

end A173143

/-! ## A173143.P4023014989791158488

`∑[A161203(n+1)-(n+1)²]`
-/

namespace A173143.P4023014989791158488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161203 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P4023014989791158488

namespace A173143

/-- `∑[A161203(n+1)-(n+1)²]` -/
def P4023014989791158488.Spec : Prop :=
  ∀ n, P4023014989791158488.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P6590045331196240154

`A005117(C(n+1, n))+a(n-1)` with `a(0)=1`
-/

namespace A173143.P6590045331196240154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005117 (Nat.choose (n + 1) n) + a (n - 1)

end

end A173143.P6590045331196240154

namespace A173143

/-- `A005117(C(n+1, n))+a(n-1)` -/
def P6590045331196240154.Spec : Prop :=
  ∀ n, P6590045331196240154.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P1011313370367464354

`A005117(Δ[n²]-n)+a(n-1)` with `a(0)=1`
-/

namespace A173143.P1011313370367464354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005117 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A173143.P1011313370367464354

namespace A173143

/-- `A005117(Δ[n²]-n)+a(n-1)` -/
def P1011313370367464354.Spec : Prop :=
  ∀ n, P1011313370367464354.a n = A173143 (n + 1)

end A173143

/-! ## A173143.P15141831462822385152

`2*∑[A005117(2*n-(n-1))/2]`
-/

namespace A173143.P15141831462822385152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173143.P15141831462822385152

namespace A173143

/-- `2*∑[A005117(2*n-(n-1))/2]` -/
def P15141831462822385152.Spec : Prop :=
  ∀ n, P15141831462822385152.a n = (A173143 (n + 1) : ℚ)

end A173143

/-! ## A173143.P6080320249229370208

`∑[record[∏{p}[n, #]]]`
-/

namespace A173143.P6080320249229370208
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173143.P6080320249229370208

namespace A173143

/-- `∑[record[∏{p}[n, #]]]` -/
def P6080320249229370208.Spec : Prop :=
  ∀ n, (P6080320249229370208.a n : ℤ) = A173143 (n + 1)

end A173143

/-!
# A173144: Numbers n such that neither prime(n-1) nor prime(n+1) is of form 6k+1.

The programs for A173144, the canonical program `A173144.P12457585745625327984` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173144 has offset 1).

The definition of A173144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173144.P12457585745625327984

`eq[A048448(n)%6, (n+3)²%(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173144

/-- `eq[A048448(n)%6, (n+3)²%(n+1)]` -/
def P12457585745625327984.Spec : Prop :=
  ∀ n, (P12457585745625327984.a n : ℤ) = A173144 (n + 1)

theorem P12457585745625327984.correct : P12457585745625327984.Spec := by
  intro n
  simp only [A173144, Nat.add_sub_cancel]

end A173144

/-! ## A173144.P11309523854050255783

`eq[A272198(n+3), A272203(n+1)]+2`
-/

namespace A173144.P11309523854050255783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272198 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A173144.P11309523854050255783

namespace A173144

/-- `eq[A272198(n+3), A272203(n+1)]+2` -/
def P11309523854050255783.Spec : Prop :=
  ∀ n, (P11309523854050255783.a n : ℤ) = A173144 (n + 1)

end A173144

/-! ## A173144.P18066839675631022318

`∩[A091177(n+1)-2, A091177(n+1)]+1`
-/

namespace A173144.P18066839675631022318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A173144.P18066839675631022318

namespace A173144

/-- `∩[A091177(n+1)-2, A091177(n+1)]+1` -/
def P18066839675631022318.Spec : Prop :=
  ∀ n, (P18066839675631022318.a n : ℤ) = A173144 (n + 1)

end A173144

/-! ## A173144.P16676707921673741517

`A000720(A171817(n+2))`
-/

namespace A173144.P16676707921673741517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A171817 (n + 2)).toNat

end

end A173144.P16676707921673741517

namespace A173144

/-- `A000720(A171817(n+2))` -/
def P16676707921673741517.Spec : Prop :=
  ∀ n, P16676707921673741517.a n = A173144 (n + 1)

end A173144

/-!
# A173145: Numbers n such that neither prime(n-1) nor prime(n+1) is of form 6k-1.

The programs for A173145, the canonical program `A173145.P14063666486782379319` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173145 has offset 1).

The definition of A173145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173145.P14063666486782379319

`eq[A010125(A048448(n)), A134323(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173145

/-- `eq[A010125(A048448(n)), A134323(n+1)]` -/
def P14063666486782379319.Spec : Prop :=
  ∀ n, (P14063666486782379319.a n : ℤ) = A173145 (n + 1)

theorem P14063666486782379319.correct : P14063666486782379319.Spec := by
  intro n
  simp only [A173145, Nat.add_sub_cancel]

end A173145

/-! ## A173145.P14861979518515116591

`eq[A000040(n+1)%3, A010125(A048448(n))]`
-/

namespace A173145.P14861979518515116591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 (A048448 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173145.P14861979518515116591

namespace A173145

/-- `eq[A000040(n+1)%3, A010125(A048448(n))]` -/
def P14861979518515116591.Spec : Prop :=
  ∀ n, (P14861979518515116591.a n : ℤ) = A173145 (n + 1)

end A173145

/-! ## A173145.P16330730770719020906

`eq[A000007(n), A112178(A048448(n))]`
-/

namespace A173145.P16330730770719020906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112178 (A048448 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173145.P16330730770719020906

namespace A173145

/-- `eq[A000007(n), A112178(A048448(n))]` -/
def P16330730770719020906.Spec : Prop :=
  ∀ n, (P16330730770719020906.a n : ℤ) = A173145 (n + 1)

end A173145

/-! ## A173145.P3419866434031309636

`eq[A000038(n), A112178(A048448(n))]`
-/

namespace A173145.P3419866434031309636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112178 (A048448 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173145.P3419866434031309636

namespace A173145

/-- `eq[A000038(n), A112178(A048448(n))]` -/
def P3419866434031309636.Spec : Prop :=
  ∀ n, (P3419866434031309636.a n : ℤ) = A173145 (n + 1)

end A173145

/-! ## A173145.P3829806045344101797

`eq[A112178(A048448(n)), A129950(2*(n+1))]`
-/

namespace A173145.P3829806045344101797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112178 (A048448 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173145.P3829806045344101797

namespace A173145

/-- `eq[A112178(A048448(n)), A129950(2*(n+1))]` -/
def P3829806045344101797.Spec : Prop :=
  ∀ n, (P3829806045344101797.a n : ℤ) = A173145 (n + 1)

end A173145

/-!
# A173146: Numbers k such that sigma(phi(k)) = rad(k), where phi(k) = Euler totient function, sigma(k) = sum of divisors of k, rad(k) = product of primes that divide k.

The programs for A173146, there is no canonical definition to state claims against.
-/

/-! ## A173146.P12502267556682429333

`∩[A018784(n+1), A120116(n+1)]`
-/

namespace A173146.P12502267556682429333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173146.P12502267556682429333

/-! ## A173146.P18398674094987489331

`∩[A067144(n+1), A120116(n+1)]`
-/

namespace A173146.P18398674094987489331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173146.P18398674094987489331

/-!
# A173147: Numbers n such that exactly one of prime(n-1) and prime(n+1) is a generalized cuban prime (A007645).

The programs for A173147, there is no canonical definition to state claims against.
-/

/-! ## A173147.P7226266183907955628

`eq[0, A048448(n)%6]`
-/

namespace A173147.P7226266183907955628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048448 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173147.P7226266183907955628

/-! ## A173147.P5293524353797494028

`eq[1, A106671(n+2)]+3`
-/

namespace A173147.P5293524353797494028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106671 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A173147.P5293524353797494028

/-! ## A173147.P15198529150638149629

`eq[3, A112545(n+2)]+2`
-/

namespace A173147.P15198529150638149629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112545 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A173147.P15198529150638149629

/-! ## A173147.P13373254795651067988

`eq[0, A176099(n+1)%3]`
-/

namespace A173147.P13373254795651067988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176099 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173147.P13373254795651067988

/-! ## A173147.P17369917913740615642

`eq[2, A176098(n+1)%3]`
-/

namespace A173147.P17369917913740615642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176098 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173147.P17369917913740615642

/-! ## A173147.P4185406314041705762

`A000720(A112681(n+1))`
-/

namespace A173147.P4185406314041705762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A112681 (n + 1)).toNat

end

end A173147.P4185406314041705762

/-! ## A173147.P6290022092352470097

`eq[8, A010124(A048448(n))]`
-/

namespace A173147.P6290022092352470097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010124 (A048448 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173147.P6290022092352470097

/-! ## A173147.P3596488383822111854

`A036234(A112681(n+1)-1)`
-/

namespace A173147.P3596488383822111854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A112681 (n + 1) - 1).toNat

end

end A173147.P3596488383822111854

/-! ## A173147.P9077235171603179365

`A003963(2*A112681(n+1))`
-/

namespace A173147.P9077235171603179365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A112681 (n + 1)).toNat

end

end A173147.P9077235171603179365

/-!
# A173148: a(n) = cos(2*n*arccos(sqrt(n))).

The programs for A173148, the canonical program `A173148.P5090136324090224043` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173148 has offset 0).

The definition of A173148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173148.P5090136324090224043

`∑{#}[n, C(2*n, 2*#)*(n-1)^(n-#)*n^#]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173148

/-- `∑{#}[n, C(2*n, 2*#)*(n-1)^(n-#)*n^#]` -/
def P5090136324090224043.Spec : Prop :=
  ∀ n, P5090136324090224043.a n = (A173148 n : ℚ)

end A173148

/-! ## A173148.P10386785541979181584

`A322790(abs(A056220(n)))`
-/

namespace A173148.P10386785541979181584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 |A056220 n|.toNat

end

end A173148.P10386785541979181584

namespace A173148

/-- `A322790(abs(A056220(n)))` -/
def P10386785541979181584.Spec : Prop :=
  ∀ n, P10386785541979181584.a n = A173148 n

end A173148

/-! ## A173148.P1142684961775268285

`A322790(A004273(n²))`
-/

namespace A173148.P1142684961775268285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (A004273 (n ^ 2)).toNat

end

end A173148.P1142684961775268285

namespace A173148

/-- `A322790(A004273(n²))` -/
def P1142684961775268285.Spec : Prop :=
  ∀ n, P1142684961775268285.a n = A173148 n

end A173148

/-! ## A173148.P5241222648824471713

`A322790(sqrt(A239607(n)))`
-/

namespace A173148.P5241222648824471713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (SequenceMachineLib.roundAway (Real.sqrt (A239607 n : ℝ))).toNat

end

end A173148.P5241222648824471713

namespace A173148

/-- `A322790(sqrt(A239607(n)))` -/
def P5241222648824471713.Spec : Prop :=
  ∀ n, P5241222648824471713.a n = A173148 n

end A173148

/-! ## A173148.P16867803961051389247

`A322790(ceil(sqrt(A173121(n))))`
-/

namespace A173148.P16867803961051389247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 ⌈Real.sqrt (A173121 n : ℝ)⌉.toNat

end

end A173148.P16867803961051389247

namespace A173148

/-- `A322790(ceil(sqrt(A173121(n))))` -/
def P16867803961051389247.Spec : Prop :=
  ∀ n, P16867803961051389247.a n = A173148 n

end A173148

/-!
# A173149: Numbers n such that max(tau(n),tau(n+1),tau(n+2))- min(tau(n),tau(n+1),tau(n+2)) = 1.

The programs for A173149, there is no canonical definition to state claims against.
-/

/-! ## A173149.P6536722146071510420

`A115985(∑[∑[A344105(n+1)]])`
-/

namespace A173149.P6536722146071510420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344105 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115985 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173149.P6536722146071510420

/-! ## A173149.P10744777219322449615

`record[gcd(A069571(n+1), A163280(n+1))]`
-/

namespace A173149.P10744777219322449615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069571 (n + 1)) (A163280 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173149.P10744777219322449615

/-! ## A173149.P15545522065316537465

`A165412(A000009(floor(n*(n+2)/3)))+floor(n*(n+2)/3)`
-/

namespace A173149.P15545522065316537465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (A000009 ⌊(n * (n + 2) : ℚ) / 3⌋.toNat).toNat + ⌊(n * (n + 2) : ℚ) / 3⌋

end

end A173149.P15545522065316537465

/-!
# A173150: a(n) = sinh^2 (2n*arccosh(sqrt n)).

The programs for A173150, there is no canonical definition to state claims against.
-/

/-! ## A173150.P10493691657233831330

`A173148(n)²-1`
-/

namespace A173150.P10493691657233831330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173148 n ^ 2 - 1

end

end A173150.P10493691657233831330

/-! ## A173150.P1524041862778263148

`A322836(A022266(n))²-1`
-/

namespace A173150.P1524041862778263148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A022266 n).toNat ^ 2 - 1

end

end A173150.P1524041862778263148

/-! ## A173150.P6681333701952416846

`A322790(abs(A056220(n)))²-1`
-/

namespace A173150.P6681333701952416846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 |A056220 n|.toNat ^ 2 - 1

end

end A173150.P6681333701952416846

/-! ## A173150.P10755358147618661259

`A322790(sqrt(A239607(n)))²-1`
-/

namespace A173150.P10755358147618661259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (SequenceMachineLib.roundAway (Real.sqrt (A239607 n : ℝ))).toNat ^ 2 - 1

end

end A173150.P10755358147618661259

/-! ## A173150.P9067522338559046216

`A057428(n+1)+A173148(n)²`
-/

namespace A173150.P9067522338559046216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A173148 n ^ 2

end

end A173150.P9067522338559046216

/-!
# A173151: a(n) = a(n-1) - [a(n-1)/2] + a(n-2) - [a(n-5)/2] where [k] = floor(k).

The programs for A173151, the canonical program `A173151.P14497103511749409621` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173151 has offset 0).

The definition of A173151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173151.P15575317111686841277

`ogf((1-x^4+x^5)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`
-/

namespace A173151.P15575317111686841277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -1, 1] [1, -1, -1, 1, -1, 1, 1, -1] n

end

end A173151.P15575317111686841277

namespace A173151

/-- `ogf((1-x^4+x^5)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))` -/
def P15575317111686841277.Spec : Prop :=
  ∀ n, P15575317111686841277.a n = A173151 n

end A173151

/-! ## A173151.P14497103511749409621

`a(n-1)-floor(a(n-1)/2)+a(n-2)-floor(a(n-5)/2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173151

/-- `a(n-1)-floor(a(n-1)/2)+a(n-2)-floor(a(n-5)/2)` -/
def P14497103511749409621.Spec : Prop :=
  ∀ n, P14497103511749409621.a n = A173151 n

theorem P14497103511749409621.correct : P14497103511749409621.Spec := by
  intro n
  simp only [A173151]

end A173151

/-! ## A173151.P10158045403719776329

`∑[floor(n/4)^(n%2)]`
-/

namespace A173151.P10158045403719776329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173151.P10158045403719776329

namespace A173151

/-- `∑[floor(n/4)^(n%2)]` -/
def P10158045403719776329.Spec : Prop :=
  ∀ n, P10158045403719776329.a n = A173151 n

end A173151

/-! ## A173151.P18426303277765063510

`ceil(a(n-2)+n/4)` with `a(0)=1, a(1)=1`
-/

namespace A173151.P18426303277765063510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n : ℚ) / 4⌉

end

end A173151.P18426303277765063510

namespace A173151

/-- `ceil(a(n-2)+n/4)` -/
def P18426303277765063510.Spec : Prop :=
  ∀ n, P18426303277765063510.a n = A173151 n

end A173151

/-! ## A173151.P1151944760211306506

`∑[ceil(n/4)-a(n-1)]` with `a(0)=1`
-/

namespace A173151.P1151944760211306506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(n : ℚ) / 4⌉ - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173151.P1151944760211306506

namespace A173151

/-- `∑[ceil(n/4)-a(n-1)]` -/
def P1151944760211306506.Spec : Prop :=
  ∀ n, P1151944760211306506.a n = A173151 n

end A173151

/-! ## A173151.P939425758419455556

`round(a(n-2)+(n+1)/4)` with `a(0)=1, a(1)=1`
-/

namespace A173151.P939425758419455556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (n + 1 : ℚ) / 4)

end

end A173151.P939425758419455556

namespace A173151

/-- `round(a(n-2)+(n+1)/4)` -/
def P939425758419455556.Spec : Prop :=
  ∀ n, P939425758419455556.a n = A173151 n

end A173151

/-! ## A173151.P13009253639632473579

`floor(a(n-2)+(n+3)/4)` with `a(0)=1, a(1)=1`
-/

namespace A173151.P13009253639632473579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + (n + 3 : ℚ) / 4⌋

end

end A173151.P13009253639632473579

namespace A173151

/-- `floor(a(n-2)+(n+3)/4)` -/
def P13009253639632473579.Spec : Prop :=
  ∀ n, P13009253639632473579.a n = A173151 n

end A173151

/-! ## A173151.P3548915345364713358

`∑[A002265(n)^and(1, n)]`
-/

namespace A173151.P3548915345364713358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173151.P3548915345364713358

namespace A173151

/-- `∑[A002265(n)^and(1, n)]` -/
def P3548915345364713358.Spec : Prop :=
  ∀ n, P3548915345364713358.a n = A173151 n

end A173151

/-! ## A173151.P11776833038979391840

`A110655(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A173151.P11776833038979391840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A110655 n + a (n - 2)

end

end A173151.P11776833038979391840

namespace A173151

/-- `A110655(n)+a(n-2)` -/
def P11776833038979391840.Spec : Prop :=
  ∀ n, P11776833038979391840.a n = A173151 n

end A173151

/-! ## A173151.P10973527228989049313

`A033638(n)-A211520(n)`
-/

namespace A173151.P10973527228989049313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A211520 n

end

end A173151.P10973527228989049313

namespace A173151

/-- `A033638(n)-A211520(n)` -/
def P10973527228989049313.Spec : Prop :=
  ∀ n, P10973527228989049313.a n = A173151 n

end A173151

/-! ## A173151.P8601480305986573996

`A001399(n)-A325691(n)`
-/

namespace A173151.P8601480305986573996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A325691 n

end

end A173151.P8601480305986573996

namespace A173151

/-- `A001399(n)-A325691(n)` -/
def P8601480305986573996.Spec : Prop :=
  ∀ n, P8601480305986573996.a n = A173151 n

end A173151

/-! ## A173151.P9422080986268904955

`A123108(n)+∑[A123108(A057979(n))]`
-/

namespace A173151.P9422080986268904955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173151.P9422080986268904955

namespace A173151

/-- `A123108(n)+∑[A123108(A057979(n))]` -/
def P9422080986268904955.Spec : Prop :=
  ∀ n, P9422080986268904955.a n = A173151 n

end A173151

/-! ## A173151.P100452227316540533

`A033638(A140106(n+1))+A004526(n)`
-/

namespace A173151.P100452227316540533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A140106 (n + 1)).toNat + A004526 n

end

end A173151.P100452227316540533

namespace A173151

/-- `A033638(A140106(n+1))+A004526(n)` -/
def P100452227316540533.Spec : Prop :=
  ∀ n, P100452227316540533.a n = A173151 n

end A173151

/-! ## A173151.P14585961496950058842

`A008619(n)+A002620(A065033(n)-1)`
-/

namespace A173151.P14585961496950058842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A002620 (A065033 n - 1).toNat

end

end A173151.P14585961496950058842

namespace A173151

/-- `A008619(n)+A002620(A065033(n)-1)` -/
def P14585961496950058842.Spec : Prop :=
  ∀ n, P14585961496950058842.a n = A173151 n

end A173151

/-! ## A173151.P16789542621885245443

`A005044(n)+A008642(n)-A325691(n)`
-/

namespace A173151.P16789542621885245443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n + (A008642 n - A325691 n)

end

end A173151.P16789542621885245443

namespace A173151

/-- `A005044(n)+A008642(n)-A325691(n)` -/
def P16789542621885245443.Spec : Prop :=
  ∀ n, P16789542621885245443.a n = A173151 n

end A173151

/-! ## A173151.P10550347032621853662

`A008642(n)+A325690(n)-A069905(n)`
-/

namespace A173151.P10550347032621853662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n + (A325690 n - A069905 n)

end

end A173151.P10550347032621853662

namespace A173151

/-- `A008642(n)+A325690(n)-A069905(n)` -/
def P10550347032621853662.Spec : Prop :=
  ∀ n, P10550347032621853662.a n = A173151 n

end A173151

/-! ## A173151.P8590229953568360217

`A110654(A028242(n))+A004652(A110654(n))`
-/

namespace A173151.P8590229953568360217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028242 n).toNat + A004652 (A110654 n).toNat

end

end A173151.P8590229953568360217

namespace A173151

/-- `A110654(A028242(n))+A004652(A110654(n))` -/
def P8590229953568360217.Spec : Prop :=
  ∀ n, P8590229953568360217.a n = A173151 n

end A173151

/-! ## A173151.P17782310704480933095

`A033436(n+2)-A055607(n+2)`
-/

namespace A173151.P17782310704480933095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (n + 2) - A055607 (n + 2)

end

end A173151.P17782310704480933095

namespace A173151

/-- `A033436(n+2)-A055607(n+2)` -/
def P17782310704480933095.Spec : Prop :=
  ∀ n, P17782310704480933095.a n = A173151 n

end A173151

/-! ## A173151.P8457290955959768932

`A069905(n+3)-A325691(n)`
-/

namespace A173151.P8457290955959768932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 3) - A325691 n

end

end A173151.P8457290955959768932

namespace A173151

/-- `A069905(n+3)-A325691(n)` -/
def P8457290955959768932.Spec : Prop :=
  ∀ n, P8457290955959768932.a n = A173151 n

end A173151

/-! ## A173151.P9545438678302362486

`Δ[A008763(n)+A001400(n+1)]`
-/

namespace A173151.P9545438678302362486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A001400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173151.P9545438678302362486

namespace A173151

/-- `Δ[A008763(n)+A001400(n+1)]` -/
def P9545438678302362486.Spec : Prop :=
  ∀ n, P9545438678302362486.a n = A173151 n

end A173151

/-!
# A173152: Triangle T(n,m) read by rows: T(n,0)=T(n,n)=1, else T(n,m) = binomial(n,m) + 2^(2*n-3)*binomial(n-2,m-1).

The programs for A173152, there is no canonical definition to state claims against.
-/

/-! ## A173152.P16184617010544396661

`(A146988(n)+A007318(n))/2`
-/

namespace A173152.P16184617010544396661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146988 n + A007318 n : ℚ) / 2

end

end A173152.P16184617010544396661

/-! ## A173152.P15105402782495548308

`floor((A146988(n)+A132749(n))/2)`
-/

namespace A173152.P15105402782495548308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A146988 n + A132749 n : ℚ) / 2⌋

end

end A173152.P15105402782495548308

/-! ## A173152.P6372588666147645517

`ceil((A146988(n)+A014473(n))/2)`
-/

namespace A173152.P6372588666147645517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A146988 n + A014473 n : ℚ) / 2⌉

end

end A173152.P6372588666147645517

/-! ## A173152.P7608444743894742727

`round((A146988(A028310(n))+A014473(n))/2)`
-/

namespace A173152.P7608444743894742727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A146988 (A028310 n).toNat + A014473 n : ℚ) / 2)

end

end A173152.P7608444743894742727

/-! ## A173152.P8762839640677904872

`round((A146988(n)+A014473(n))/2)%A000051(n)`
-/

namespace A173152.P8762839640677904872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A146988 n + A014473 n : ℚ) / 2)) (A000051 n)

end

end A173152.P8762839640677904872

/-! ## A173152.P4482337835803557366

`round((A146988(n)+A014473(n))/2*A000034(2*n))`
-/

namespace A173152.P4482337835803557366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A146988 n + A014473 n : ℚ) / 2 * (A000034 (2 * n) : ℚ))

end

end A173152.P4482337835803557366

/-! ## A173152.P17696446701474084096

`round((A146988(n)+A014473(n))/A014963(A059268(n)))`
-/

namespace A173152.P17696446701474084096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A146988 n + A014473 n : ℚ) / (A014963 (A059268 n).toNat : ℚ))

end

end A173152.P17696446701474084096

/-!
# A173153: Values of n such that either {0,1}*n^2+n+41 is prime.

The programs for A173153, there is no canonical definition to state claims against.
-/

/-! ## A173153.P3037324010277146147

`lt[A014963(n+41)+n, 41]`
-/

namespace A173153.P3037324010277146147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 41) + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A173153.P3037324010277146147

/-! ## A173153.P3922794773578958251

`lt[A049084(n+11)!, A260901(n+5)]`
-/

namespace A173153.P3922794773578958251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A049084 (n + 11)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260901 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A173153.P3922794773578958251

/-! ## A173153.P927583884933546632

`lt[A000203(A054435(2*n+7)), A043037(3*n+4)]`
-/

namespace A173153.P927583884933546632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A054435 (2 * n + 7)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043037 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173153.P927583884933546632

/-! ## A173153.P16320861510887586559

`lt[A129447(n), A001221(A125221(n+4))]`
-/

namespace A173153.P16320861510887586559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A125221 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173153.P16320861510887586559

/-! ## A173153.P17068733874821785175

`lt[A179071(n+2), A204988(A005897(n))]`
-/

namespace A173153.P17068733874821785175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179071 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (A005897 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173153.P17068733874821785175

/-!
# A173154: a(n) = n^3/6 + 3*n^2/4 + 7*n/3 + 7/8 + (-1)^n/8.

The programs for A173154, the canonical program `A173154.P1014164428926646777` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173154 has offset 0).

The definition of A173154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173154.P1014164428926646777

`ogf((1+x-x^3+x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173154

/-- `ogf((1+x-x^3+x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P1014164428926646777.Spec : Prop :=
  ∀ n, P1014164428926646777.a n = A173154 n

theorem P1014164428926646777.correct : P1014164428926646777.Spec := by
  intro n
  simp only [A173154]

end A173154

/-! ## A173154.P13477089028664288753

`n^3/6+3*n²/4+7*n/3+7/8+(-1)^n/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173154.P13477089028664288753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) / 6 + (3 * n ^ 2 : ℚ) / 4 + (7 * n : ℚ) / 3 + (7 : ℚ) / 8 + ((-1) ^ n : ℚ) / 8

end

end A173154.P13477089028664288753

namespace A173154

/-- `n^3/6+3*n²/4+7*n/3+7/8+(-1)^n/8` -/
def P13477089028664288753.Spec : Prop :=
  ∀ n, P13477089028664288753.a n = (A173154 n : ℚ)

end A173154

/-! ## A173154.P7047524613447410747

`∑[∑[or(1, n)]]+n`
-/

namespace A173154.P7047524613447410747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A173154.P7047524613447410747

namespace A173154

/-- `∑[∑[or(1, n)]]+n` -/
def P7047524613447410747.Spec : Prop :=
  ∀ n, (P7047524613447410747.a n : ℤ) = A173154 n

end A173154

/-! ## A173154.P13224250852295689725

`∑[∑[a(n-2)+2]]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A173154.P13224250852295689725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 3] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P13224250852295689725

namespace A173154

/-- `∑[∑[a(n-2)+2]]` -/
def P13224250852295689725.Spec : Prop :=
  ∀ n, (P13224250852295689725.a n : ℤ) = A173154 n

end A173154

/-! ## A173154.P7103827240630596947

`∑[ceil((n+1)/atan(2/(n+1)))]`
-/

namespace A173154.P7103827240630596947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.arctan (2 / (n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P7103827240630596947

namespace A173154

/-- `∑[ceil((n+1)/atan(2/(n+1)))]` -/
def P7103827240630596947.Spec : Prop :=
  ∀ n, P7103827240630596947.a n = A173154 n

end A173154

/-! ## A173154.P10556541159436872459

`∑[ceil((n+1)/acot((n+1)/2))]`
-/

namespace A173154.P10556541159436872459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot ((n + 1 : ℚ) / 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P10556541159436872459

namespace A173154

/-- `∑[ceil((n+1)/acot((n+1)/2))]` -/
def P10556541159436872459.Spec : Prop :=
  ∀ n, P10556541159436872459.a n = A173154 n

end A173154

/-! ## A173154.P1607579102256662613

`∑[∑[∑[2-a(n-1)]]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A173154.P1607579102256662613
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0] fun n f3 =>
  2 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P1607579102256662613

namespace A173154

/-- `∑[∑[∑[2-a(n-1)]]]` -/
def P1607579102256662613.Spec : Prop :=
  ∀ n, P1607579102256662613.a n = A173154 n

end A173154

/-! ## A173154.P12700778228378657186

`a(n-2)+n²+3+n` with `a(0)=1, a(1)=4`
-/

namespace A173154.P12700778228378657186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (n ^ 2 + 3 + n)

end

end A173154.P12700778228378657186

namespace A173154

/-- `a(n-2)+n²+3+n` -/
def P12700778228378657186.Spec : Prop :=
  ∀ n, (P12700778228378657186.a n : ℤ) = A173154 n

end A173154

/-! ## A173154.P1319943301677726101

`floor(n*(n/2+1)+a(n-1)+2)` with `a(0)=1`
-/

namespace A173154.P1319943301677726101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) * ((n : ℚ) / 2 + 1) + (a (n - 1) + 2 : ℚ)⌋

end

end A173154.P1319943301677726101

namespace A173154

/-- `floor(n*(n/2+1)+a(n-1)+2)` -/
def P1319943301677726101.Spec : Prop :=
  ∀ n, P1319943301677726101.a n = A173154 n

end A173154

/-! ## A173154.P6054175887657826910

`∑[∑[A266591(n)+n]]`
-/

namespace A173154.P6054175887657826910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P6054175887657826910

namespace A173154

/-- `∑[∑[A266591(n)+n]]` -/
def P6054175887657826910.Spec : Prop :=
  ∀ n, P6054175887657826910.a n = A173154 n

end A173154

/-! ## A173154.P14485747906241117294

`∑[A266977(n)+∑[n]]`
-/

namespace A173154.P14485747906241117294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P14485747906241117294

namespace A173154

/-- `∑[A266977(n)+∑[n]]` -/
def P14485747906241117294.Spec : Prop :=
  ∀ n, P14485747906241117294.a n = A173154 n

end A173154

/-! ## A173154.P4975918136348564044

`∑[A333574(n+1)+n]`
-/

namespace A173154.P4975918136348564044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P4975918136348564044

namespace A173154

/-- `∑[A333574(n+1)+n]` -/
def P4975918136348564044.Spec : Prop :=
  ∀ n, P4975918136348564044.a n = A173154 n

end A173154

/-! ## A173154.P430119538343867125

`∑[A261243(n+1)+2*n]`
-/

namespace A173154.P430119538343867125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261243 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P430119538343867125

namespace A173154

/-- `∑[A261243(n+1)+2*n]` -/
def P430119538343867125.Spec : Prop :=
  ∀ n, P430119538343867125.a n = A173154 n

end A173154

/-! ## A173154.P17986415620626378198

`∑[∑[char[A004277(n)]+n]+1]`
-/

namespace A173154.P17986415620626378198
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P17986415620626378198

namespace A173154

/-- `∑[∑[char[A004277(n)]+n]+1]` -/
def P17986415620626378198.Spec : Prop :=
  ∀ n, (P17986415620626378198.a n : ℤ) = A173154 n

end A173154

/-! ## A173154.P18039882479186381731

`∑[A133263(n)+A004526(n)]`
-/

namespace A173154.P18039882479186381731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P18039882479186381731

namespace A173154

/-- `∑[A133263(n)+A004526(n)]` -/
def P18039882479186381731.Spec : Prop :=
  ∀ n, P18039882479186381731.a n = A173154 n

end A173154

/-! ## A173154.P14346811642328552705

`∑[∑[A004275(A008619(n))]+n]`
-/

namespace A173154.P14346811642328552705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P14346811642328552705

namespace A173154

/-- `∑[∑[A004275(A008619(n))]+n]` -/
def P14346811642328552705.Spec : Prop :=
  ∀ n, P14346811642328552705.a n = A173154 n

end A173154

/-! ## A173154.P25592824516671874

`∑[∑[A007843(A011371(n))]+n]`
-/

namespace A173154.P25592824516671874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (A011371 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P25592824516671874

namespace A173154

/-- `∑[∑[A007843(A011371(n))]+n]` -/
def P25592824516671874.Spec : Prop :=
  ∀ n, P25592824516671874.a n = A173154 n

end A173154

/-! ## A173154.P12791394310058530837

`∑[∑[A092533(2*n)]+n]`
-/

namespace A173154.P12791394310058530837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P12791394310058530837

namespace A173154

/-- `∑[∑[A092533(2*n)]+n]` -/
def P12791394310058530837.Spec : Prop :=
  ∀ n, P12791394310058530837.a n = A173154 n

end A173154

/-! ## A173154.P11427033426343727506

`∑[A116941(A000982(n+1))]`
-/

namespace A173154.P11427033426343727506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116941 (A000982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P11427033426343727506

namespace A173154

/-- `∑[A116941(A000982(n+1))]` -/
def P11427033426343727506.Spec : Prop :=
  ∀ n, P11427033426343727506.a n = A173154 n

end A173154

/-! ## A173154.P7516847033852643962

`∑[A092038((n+1)²)]`
-/

namespace A173154.P7516847033852643962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173154.P7516847033852643962

namespace A173154

/-- `∑[A092038((n+1)²)]` -/
def P7516847033852643962.Spec : Prop :=
  ∀ n, P7516847033852643962.a n = A173154 n

end A173154

/-!
# A173155: a(n) = binomial(n + 5, 5) * 8^n.

The programs for A173155, the canonical program `A173155.P2560001212890841808` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173155 has offset 0).

The definition of A173155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*8^n` (program `A173155.P2560001212890841808`, by `A173155.P2560001212890841808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173155.P11981969282871148205

`8^n*C(n+5, 5)`
-/

namespace A173155.P11981969282871148205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * Nat.choose (n + 5) 5

end

end A173155.P11981969282871148205

namespace A173155

/-- `8^n*C(n+5, 5)` -/
def P11981969282871148205.Spec : Prop :=
  ∀ n, (P11981969282871148205.a n : ℤ) = A173155 n

theorem P11981969282871148205.correct : P11981969282871148205.Spec := by
  intro n
  simp only [A173155, Nat.add_sub_cancel, A173155.P11981969282871148205.a, A173155.P2560001212890841808.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173155

/-! ## A173155.P2560001212890841808

`C(n+5, 5)*8^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173155

/-- `C(n+5, 5)*8^n` -/
def P2560001212890841808.Spec : Prop :=
  ∀ n, (P2560001212890841808.a n : ℤ) = A173155 n

theorem P2560001212890841808.correct : P2560001212890841808.Spec := by
  intro n
  simp only [A173155]

end A173155

/-! ## A173155.P14707348950955509719

`(40/n+8)*a(n-1)` with `a(0)=1`
-/

namespace A173155.P14707348950955509719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (40 / (n : ℚ) + 8) * a (n - 1)

end

end A173155.P14707348950955509719

namespace A173155

/-- `(40/n+8)*a(n-1)` -/
def P14707348950955509719.Spec : Prop :=
  ∀ n, P14707348950955509719.a n = (A173155 n : ℚ)

end A173155

/-! ## A173155.P10284526174686567414

`8^n*∑[∑[∑[∑[n+1]]]]`
-/

namespace A173155.P10284526174686567414
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173155.P10284526174686567414

namespace A173155

/-- `8^n*∑[∑[∑[∑[n+1]]]]` -/
def P10284526174686567414.Spec : Prop :=
  ∀ n, (P10284526174686567414.a n : ℤ) = A173155 n

end A173155

/-! ## A173155.P13110205031406649897

`abs((-2)^n*A045543(n))`
-/

namespace A173155.P13110205031406649897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-2) ^ n * A045543 n|

end

end A173155.P13110205031406649897

namespace A173155

/-- `abs((-2)^n*A045543(n))` -/
def P13110205031406649897.Spec : Prop :=
  ∀ n, P13110205031406649897.a n = A173155 n

end A173155

/-! ## A173155.P16482311693061015232

`A038279(eq[5, A002262(n)])`
-/

namespace A173155.P16482311693061015232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173155.P16482311693061015232

namespace A173155

/-- `A038279(eq[5, A002262(n)])` -/
def P16482311693061015232.Spec : Prop :=
  ∀ n, P16482311693061015232.a n = A173155 n

end A173155

/-! ## A173155.P16372387825869700195

`A038279(eq[32, A059268(n)])`
-/

namespace A173155.P16372387825869700195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173155.P16372387825869700195

namespace A173155

/-- `A038279(eq[32, A059268(n)])` -/
def P16372387825869700195.Spec : Prop :=
  ∀ n, P16372387825869700195.a n = A173155 n

end A173155

/-! ## A173155.P9428059474249806573

`A038279(eq[6, A002260(n+1)])`
-/

namespace A173155.P9428059474249806573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173155.P9428059474249806573

namespace A173155

/-- `A038279(eq[6, A002260(n+1)])` -/
def P9428059474249806573.Spec : Prop :=
  ∀ n, P9428059474249806573.a n = A173155 n

end A173155

/-! ## A173155.P2635002714863395945

`A013615(eq[5, A025581(n)])`
-/

namespace A173155.P2635002714863395945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173155.P2635002714863395945

namespace A173155

/-- `A013615(eq[5, A025581(n)])` -/
def P2635002714863395945.Spec : Prop :=
  ∀ n, P2635002714863395945.a n = A173155 n

end A173155

/-! ## A173155.P17184176231532173437

`A013615(eq[5, log2(A130321(n))])`
-/

namespace A173155.P17184176231532173437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A173155.P17184176231532173437

namespace A173155

/-- `A013615(eq[5, log2(A130321(n))])` -/
def P17184176231532173437.Spec : Prop :=
  ∀ n, P17184176231532173437.a n = A173155 n

end A173155

/-!
# A173165: Numbers k such that 2*k^2 -+ 1 is a twin prime pair.

The programs for A173165, there is no canonical definition to state claims against.
-/

/-! ## A173165.P15478995983796032906

`3*A037073(n+1)`
-/

namespace A173165.P15478995983796032906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037073 (n + 1)

end

end A173165.P15478995983796032906

/-! ## A173165.P4531073033503771294

`A152786(n+1)/2`
-/

namespace A173165.P4531073033503771294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152786 (n + 1) : ℚ) / 2

end

end A173165.P4531073033503771294

/-! ## A173165.P8525079533649889722

`sqrt(A037072(n+1))/2`
-/

namespace A173165.P8525079533649889722
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A037072 (n + 1) : ℝ) / 2

end

end A173165.P8525079533649889722

/-! ## A173165.P9108969140240562573

`sqrt(A154670(n+1)/2)`
-/

namespace A173165.P9108969140240562573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A154670 (n + 1) : ℚ) / 2 : ℝ)

end

end A173165.P9108969140240562573

/-! ## A173165.P8368026114717345403

`sqrt((A069496(n+1)+1)/2)`
-/

namespace A173165.P8368026114717345403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A069496 (n + 1) + 1 : ℚ) / 2 : ℝ)

end

end A173165.P8368026114717345403

/-! ## A173165.P912535863574161227

`sqrt((A118593(n+1)-1)/2)`
-/

namespace A173165.P912535863574161227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A118593 (n + 1) - 1 : ℚ) / 2 : ℝ)

end

end A173165.P912535863574161227

/-! ## A173165.P1740614637961284011

`floor(A152786(Δ[n²]-n)/2)`
-/

namespace A173165.P1740614637961284011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152786 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A173165.P1740614637961284011

/-! ## A173165.P13776927384475698994

`∩[A066049(n+1), A089001(n+1)]`
-/

namespace A173165.P13776927384475698994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173165.P13776927384475698994

/-! ## A173165.P15133673105367030956

`∩[A074924(n+1), A090697(n+1)]/2`
-/

namespace A173165.P15133673105367030956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090697 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A173165.P15133673105367030956

/-! ## A173165.P229459917250144871

`sqrt(A272890(n+1))`
-/

namespace A173165.P229459917250144871
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A272890 (n + 1) : ℝ)

end

end A173165.P229459917250144871

/-! ## A173165.P8867144184885400047

`A008486(A037073(n+1))`
-/

namespace A173165.P8867144184885400047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A037073 (n + 1)).toNat

end

end A173165.P8867144184885400047

/-! ## A173165.P9861987690015941270

`record[A152786(A038568(n))/2]`
-/

namespace A173165.P9861987690015941270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152786 (A038568 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173165.P9861987690015941270

/-! ## A173165.P11056918604820732997

`∩[A066049(n+1), A139013(n+1)]`
-/

namespace A173165.P11056918604820732997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173165.P11056918604820732997

/-! ## A173165.P12192940515000658339

`∩[A089001(n+1), A139013(n+1)]`
-/

namespace A173165.P12192940515000658339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173165.P12192940515000658339

/-! ## A173165.P11159592635664212438

`eq[2, A110559(n+1)]+1`
-/

namespace A173165.P11159592635664212438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A173165.P11159592635664212438

/-! ## A173165.P3844362430021629072

`∩[A139013(n+1), A160697(n+1)]`
-/

namespace A173165.P3844362430021629072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173165.P3844362430021629072

/-! ## A173165.P7272437727490799479

`A001281(A152786(n+1))`
-/

namespace A173165.P7272437727490799479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152786 (n + 1)).toNat

end

end A173165.P7272437727490799479

/-! ## A173165.P17756151947835679477

`A000463(A152786(n+1)-1)`
-/

namespace A173165.P17756151947835679477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A152786 (n + 1) - 1).toNat

end

end A173165.P17756151947835679477

/-!
# A173167: Values n such that n and n+1 are both in A037073.

The programs for A173167, there is no canonical definition to state claims against.
-/

/-! ## A173167.P10757509017824566021

`∩[A037073(n+1)-1, A037073(n+1)]`
-/

namespace A173167.P10757509017824566021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037073 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173167.P10757509017824566021

/-! ## A173167.P1855017378573568760

`∩[A037073(n+1), A023443(A037073(n+1))]`
-/

namespace A173167.P1855017378573568760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037073 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173167.P1855017378573568760

/-!
# A173168: Primes of the form 2^k + 2k - 1.

The programs for A173168, there is no canonical definition to state claims against.
-/

/-! ## A173168.P3516304922247673800

`A061761(A174181(n+1))`
-/

namespace A173168.P3516304922247673800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061761 (A174181 (n + 1)).toNat

end

end A173168.P3516304922247673800

/-! ## A173168.P6741924466747307689

`A061761(A105330(n+1)+1)`
-/

namespace A173168.P6741924466747307689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061761 (A105330 (n + 1) + 1).toNat

end

end A173168.P6741924466747307689

/-! ## A173168.P17779362664354221707

`A081494(A174181(n+1)+1)`
-/

namespace A173168.P17779362664354221707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081494 (A174181 (n + 1) + 1).toNat

end

end A173168.P17779362664354221707

/-! ## A173168.P11663116645373812905

`A081494(A105330(n+1)+2)`
-/

namespace A173168.P11663116645373812905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081494 (A105330 (n + 1) + 2).toNat

end

end A173168.P11663116645373812905

/-! ## A173168.P5868807454961784711

`A105330(n+1)+A006127(A174181(n+1))`
-/

namespace A173168.P5868807454961784711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105330 (n + 1) + A006127 (A174181 (n + 1)).toNat

end

end A173168.P5868807454961784711

/-!
# A173170: a(n) = sin^2((2n-1)*arcsin(sqrt n)) = 1 - sin^2( (2n-1)*arccos(sqrt n)).

The programs for A173170, there is no canonical definition to state claims against.
-/

/-! ## A173170.P12126087021567948856

`A173171(n)+1`
-/

namespace A173170.P12126087021567948856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173171 n + 1

end

end A173170.P12126087021567948856

/-! ## A173170.P17494715375898435475

`record[Δ[A173171(A142150(n))]]`
-/

namespace A173170.P17494715375898435475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173171 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173170.P17494715375898435475

/-!
# A173171: a(n) = - sin^2((2n-1)*arccos(sqrt n)) = sin^2((2n-1)*arcsin(sqrt n)) - 1.

The programs for A173171, there is no canonical definition to state claims against.
-/

/-! ## A173171.P6534080717028705752

`A173170(n)-1`
-/

namespace A173171.P6534080717028705752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173170 n - 1

end

end A173171.P6534080717028705752

/-! ## A173171.P3470495382190673730

`A309873(A017137(n))+A173170(n)`
-/

namespace A173171.P3470495382190673730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A017137 n).toNat + A173170 n

end

end A173171.P3470495382190673730

/-! ## A173171.P8036625297173017720

`A316441(A151800(n))+A173170(n)`
-/

namespace A173171.P8036625297173017720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A151800 n).toNat + A173170 n

end

end A173171.P8036625297173017720

/-! ## A173171.P16060557252157874768

`A321317(A050603(n²))+A173170(n)`
-/

namespace A173171.P16060557252157874768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321317 (A050603 (n ^ 2)).toNat + A173170 n

end

end A173171.P16060557252157874768

/-! ## A173171.P18254207856872377555

`A316441(A006450(n+1))+A173170(n)`
-/

namespace A173171.P18254207856872377555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A006450 (n + 1)).toNat + A173170 n

end

end A173171.P18254207856872377555

/-!
# A173173: a(n) = ceiling(Fibonacci(n)/2).

The programs for A173173, the canonical program `A173173.P8232709522219157443` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173173 has offset 0).

The definition of A173173 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A000045(n)/2)` (program `A173173.P8232709522219157443`, by `A173173.P8232709522219157443.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173173.P18367365931618072940

`ogf((x-x^3-x^4)/(1-x-x^2-x^3+x^4+x^5))`
-/

namespace A173173.P18367365931618072940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1, -1] [1, -1, -1, -1, 1, 1] n

end

end A173173.P18367365931618072940

namespace A173173

/-- `ogf((x-x^3-x^4)/(1-x-x^2-x^3+x^4+x^5))` -/
def P18367365931618072940.Spec : Prop :=
  ∀ n, P18367365931618072940.a n = A173173 n

end A173173

/-! ## A173173.P3298589120607242154

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A173173.P3298589120607242154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4) - a (n - 5)

end

end A173173.P3298589120607242154

namespace A173173

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P3298589120607242154.Spec : Prop :=
  ∀ n, P3298589120607242154.a n = A173173 n

end A173173

/-! ## A173173.P8232709522219157443

`ceil(A000045(n)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173173

/-- `ceil(A000045(n)/2)` -/
def P8232709522219157443.Spec : Prop :=
  ∀ n, P8232709522219157443.a n = A173173 n

theorem P8232709522219157443.correct : P8232709522219157443.Spec := by
  intro n
  simp only [A173173]

end A173173

/-! ## A173173.P1242688121688096407

`floor(a(n-1)+ϕ*a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A173173.P1242688121688096407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.goldenRatio * (a (n - 3) : ℝ)⌋

end

end A173173.P1242688121688096407

namespace A173173

/-- `floor(a(n-1)+ϕ*a(n-3))` -/
def P1242688121688096407.Spec : Prop :=
  ∀ n, P1242688121688096407.a n = A173173 n

end A173173

/-! ## A173173.P2451474694410727339

`a(n-1)+a(n-2)-4%gcd(3, n)` with `a(0)=0, a(1)=1`
-/

namespace A173173.P2451474694410727339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) - ((4 % Nat.gcd 3 n : ℕ) : ℤ))

end

end A173173.P2451474694410727339

namespace A173173

/-- `a(n-1)+a(n-2)-4%gcd(3, n)` -/
def P2451474694410727339.Spec : Prop :=
  ∀ n, P2451474694410727339.a n = A173173 n

end A173173

/-! ## A173173.P11471722006913150035

`a(n-1)+a(n-2)-(1-n²%3)` with `a(0)=0, a(1)=1`
-/

namespace A173173.P11471722006913150035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) - (1 - ((n ^ 2 % 3 : ℕ) : ℤ)))

end

end A173173.P11471722006913150035

namespace A173173

/-- `a(n-1)+a(n-2)-(1-n²%3)` -/
def P11471722006913150035.Spec : Prop :=
  ∀ n, P11471722006913150035.a n = A173173 n

end A173173

/-! ## A173173.P6038489279264844845

`a(n-1)+a(n-2)-∑[n+1]%3` with `a(0)=0, a(1)=1`
-/

namespace A173173.P6038489279264844845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ))

end

end A173173.P6038489279264844845

namespace A173173

/-- `a(n-1)+a(n-2)-∑[n+1]%3` -/
def P6038489279264844845.Spec : Prop :=
  ∀ n, P6038489279264844845.a n = A173173 n

end A173173

/-! ## A173173.P6558629905446765980

`A173673(Δ[n²])`
-/

namespace A173173.P6558629905446765980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A173173.P6558629905446765980

namespace A173173

/-- `A173673(Δ[n²])` -/
def P6558629905446765980.Spec : Prop :=
  ∀ n, P6558629905446765980.a n = A173173 n

end A173173

/-! ## A173173.P10841899877783085832

`a(n-3)-A152163(n)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A173173.P10841899877783085832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) - A152163 n

end

end A173173.P10841899877783085832

namespace A173173

/-- `a(n-3)-A152163(n)` -/
def P10841899877783085832.Spec : Prop :=
  ∀ n, P10841899877783085832.a n = A173173 n

end A173173

/-! ## A173173.P14591176301587043683

`A000045(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A173173.P14591176301587043683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A000045 (n - 2) + a (n - 3)

end

end A173173.P14591176301587043683

namespace A173173

/-- `A000045(n-2)+a(n-3)` -/
def P14591176301587043683.Spec : Prop :=
  ∀ n, P14591176301587043683.a n = A173173 n

end A173173

/-! ## A173173.P12902266442742664898

`A000045(n-1)-floor(a(n-2)/ϕ)` with `a(0)=0, a(1)=1`
-/

namespace A173173.P12902266442742664898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 (n - 1) - ⌊(a (n - 2) : ℝ) / Real.goldenRatio⌋

end

end A173173.P12902266442742664898

namespace A173173

/-- `A000045(n-1)-floor(a(n-2)/ϕ)` -/
def P12902266442742664898.Spec : Prop :=
  ∀ n, P12902266442742664898.a n = A173173 n

end A173173

/-! ## A173173.P5164980902812779854

`A011655(n)+A004695(n)`
-/

namespace A173173.P5164980902812779854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + A004695 n

end

end A173173.P5164980902812779854

namespace A173173

/-- `A011655(n)+A004695(n)` -/
def P5164980902812779854.Spec : Prop :=
  ∀ n, P5164980902812779854.a n = A173173 n

end A173173

/-! ## A173173.P16318531410669821663

`A293553(n)+A293552(n)`
-/

namespace A173173.P16318531410669821663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 n + A293552 n

end

end A173173.P16318531410669821663

namespace A173173

/-- `A293553(n)+A293552(n)` -/
def P16318531410669821663.Spec : Prop :=
  ∀ n, P16318531410669821663.a n = A173173 n

end A173173

/-! ## A173173.P14629134423924862857

`A147997(n)-A079978(n)`
-/

namespace A173173.P14629134423924862857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 n - A079978 n

end

end A173173.P14629134423924862857

namespace A173173

/-- `A147997(n)-A079978(n)` -/
def P14629134423924862857.Spec : Prop :=
  ∀ n, P14629134423924862857.a n = A173173 n

end A173173

/-! ## A173173.P6843211667567759302

`A004695(n)+A102283(n)²`
-/

namespace A173173.P6843211667567759302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n + A102283 n ^ 2

end

end A173173.P6843211667567759302

namespace A173173

/-- `A004695(n)+A102283(n)²` -/
def P6843211667567759302.Spec : Prop :=
  ∀ n, P6843211667567759302.a n = A173173 n

end A173173

/-! ## A173173.P16055941634441701175

`A004695(n)+A128834(n)²`
-/

namespace A173173.P16055941634441701175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n + A128834 n ^ 2

end

end A173173.P16055941634441701175

namespace A173173

/-- `A004695(n)+A128834(n)²` -/
def P16055941634441701175.Spec : Prop :=
  ∀ n, P16055941634441701175.a n = A173173 n

end A173173

/-! ## A173173.P7378754697765112297

`A204418(n+1)+A004695(n)`
-/

namespace A173173.P7378754697765112297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (n + 1) + A004695 n

end

end A173173.P7378754697765112297

namespace A173173

/-- `A204418(n+1)+A004695(n)` -/
def P7378754697765112297.Spec : Prop :=
  ∀ n, P7378754697765112297.a n = A173173 n

end A173173

/-! ## A173173.P17189303299818251604

`A141571(n+2)+A004695(n)`
-/

namespace A173173.P17189303299818251604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141571 (n + 2) + A004695 n

end

end A173173.P17189303299818251604

namespace A173173

/-- `A141571(n+2)+A004695(n)` -/
def P17189303299818251604.Spec : Prop :=
  ∀ n, P17189303299818251604.a n = A173173 n

end A173173

/-! ## A173173.P10976735044473736206

`A011655(n)+A147997(n)-1`
-/

namespace A173173.P10976735044473736206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + (A147997 n - 1)

end

end A173173.P10976735044473736206

namespace A173173

/-- `A011655(n)+A147997(n)-1` -/
def P10976735044473736206.Spec : Prop :=
  ∀ n, P10976735044473736206.a n = A173173 n

end A173173

/-! ## A173173.P4831378648178708523

`A267208(n+3)+A004695(n)`
-/

namespace A173173.P4831378648178708523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267208 (n + 3) + A004695 n

end

end A173173.P4831378648178708523

namespace A173173

/-- `A267208(n+3)+A004695(n)` -/
def P4831378648178708523.Spec : Prop :=
  ∀ n, P4831378648178708523.a n = A173173 n

end A173173

/-!
# A173174: a(n) = cosh(2*n*arcsinh(sqrt(n))).

The programs for A173174, the canonical program `A173174.P7619132453175100216` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173174 has offset 0).

The definition of A173174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173174.P7619132453175100216

`∑{#}[n, C(2*n, 2*#)*(n+1)^(n-#)*n^#]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173174

/-- `∑{#}[n, C(2*n, 2*#)*(n+1)^(n-#)*n^#]` -/
def P7619132453175100216.Spec : Prop :=
  ∀ n, P7619132453175100216.a n = (A173174 n : ℚ)

end A173174

/-! ## A173174.P3432055864335250395

`2*A322746(n)+1`
-/

namespace A173174.P3432055864335250395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322746 n + 1

end

end A173174.P3432055864335250395

namespace A173174

/-- `2*A322746(n)+1` -/
def P3432055864335250395.Spec : Prop :=
  ∀ n, P3432055864335250395.a n = A173174 n

end A173174

/-! ## A173174.P13284442523342546795

`A322790(∑[4*n])`
-/

namespace A173174.P13284442523342546795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173174.P13284442523342546795

namespace A173174

/-- `A322790(∑[4*n])` -/
def P13284442523342546795.Spec : Prop :=
  ∀ n, P13284442523342546795.a n = A173174 n

end A173174

/-! ## A173174.P10081405848523517021

`record[A322790(gcd(n, A003987(n)))]`
-/

namespace A173174.P10081405848523517021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (Int.gcd (n : ℤ) (A003987 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173174.P10081405848523517021

namespace A173174

/-- `record[A322790(gcd(n, A003987(n)))]` -/
def P10081405848523517021.Spec : Prop :=
  ∀ n, P10081405848523517021.a n = A173174 n

end A173174

/-! ## A173174.P12836406020999598434

`A101124(A062708(n+1))`
-/

namespace A173174.P12836406020999598434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A062708 (n + 1)).toNat

end

end A173174.P12836406020999598434

namespace A173174

/-- `A101124(A062708(n+1))` -/
def P12836406020999598434.Spec : Prop :=
  ∀ n, P12836406020999598434.a n = A173174 n

end A173174

/-!
# A173175: a(n) = sinh^2( 2n*arcsinh(sqrt n)).

The programs for A173175, there is no canonical definition to state claims against.
-/

/-! ## A173175.P7774790733659043375

`A173174(n)²-1`
-/

namespace A173175.P7774790733659043375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173174 n ^ 2 - 1

end

end A173175.P7774790733659043375

/-! ## A173175.P3219175034070247545

`(A342205(2*n)-1)/2`
-/

namespace A173175.P3219175034070247545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342205 (2 * n) - 1 : ℚ) / 2

end

end A173175.P3219175034070247545

/-! ## A173175.P3731197415564836776

`A322699(A062725(n))`
-/

namespace A173175.P3731197415564836776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322699 (A062725 n).toNat

end

end A173175.P3731197415564836776

/-! ## A173175.P9432881313043515032

`A322699(eq[A004736(n+1), A158405(n+1)])`
-/

namespace A173175.P9432881313043515032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322699 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A173175.P9432881313043515032

/-!
# A173177: a(n) = (3 * A034936(n) + 1) / 2.

The programs for A173177, the canonical program `A173177.P4388351953749890821` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173177 has offset 1).

The definition of A173177 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173177.P4388351953749890821

`(3*A034936(n+1)+1)/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A173177

/-- `(3*A034936(n+1)+1)/2` -/
def P4388351953749890821.Spec : Prop :=
  ∀ n, P4388351953749890821.a n = (A173177 (n + 1) : ℚ)

end A173177

/-! ## A173177.P15295842198932526701

`(p?[3*n+1]-3)/2`
-/

namespace A173177.P15295842198932526701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℚ) / 2

end

end A173177.P15295842198932526701

namespace A173177

/-- `(p?[3*n+1]-3)/2` -/
def P15295842198932526701.Spec : Prop :=
  ∀ n, P15295842198932526701.a n = (A173177 (n + 1) : ℚ)

end A173177

/-! ## A173177.P7651545463378361424

`abs(3-p?[3*n-2])/2`
-/

namespace A173177.P7651545463378361424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|3 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| : ℚ) / 2

end

end A173177.P7651545463378361424

namespace A173177

/-- `abs(3-p?[3*n-2])/2` -/
def P7651545463378361424.Spec : Prop :=
  ∀ n, P7651545463378361424.a n = (A173177 (n + 1) : ℚ)

end A173177

/-! ## A173177.P10598186504376765186

`floor(p?[3*n-2]/2)-1`
-/

namespace A173177.P10598186504376765186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋ - 1

end

end A173177.P10598186504376765186

namespace A173177

/-- `floor(p?[3*n-2]/2)-1` -/
def P10598186504376765186.Spec : Prop :=
  ∀ n, P10598186504376765186.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P8965048326010946990

`ceil(p?[3*n-2]/2)-2`
-/

namespace A173177.P8965048326010946990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉ - 2

end

end A173177.P8965048326010946990

namespace A173177

/-- `ceil(p?[3*n-2]/2)-2` -/
def P8965048326010946990.Spec : Prop :=
  ∀ n, P8965048326010946990.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P4681655138444260249

`round(p?[3*n-2]/2)-2`
-/

namespace A173177.P4681655138444260249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2) - 2

end

end A173177.P4681655138444260249

namespace A173177

/-- `round(p?[3*n-2]/2)-2` -/
def P4681655138444260249.Spec : Prop :=
  ∀ n, P4681655138444260249.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P15098255138016690922

`ceil(sinh(log(p?[3*n+1]-3)))`
-/

namespace A173177.P15098255138016690922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℝ))⌉

end

end A173177.P15098255138016690922

namespace A173177

/-- `ceil(sinh(log(p?[3*n+1]-3)))` -/
def P15098255138016690922.Spec : Prop :=
  ∀ n, P15098255138016690922.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P16570537134612936061

`(p?[3*n-2]-1)/2-1`
-/

namespace A173177.P16570537134612936061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2 - 1

end

end A173177.P16570537134612936061

namespace A173177

/-- `(p?[3*n-2]-1)/2-1` -/
def P16570537134612936061.Spec : Prop :=
  ∀ n, P16570537134612936061.a n = (A173177 (n + 1) : ℚ)

end A173177

/-! ## A173177.P7546703634788640927

`3*A024899(n+1)-1`
-/

namespace A173177.P7546703634788640927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024899 (n + 1) - 1

end

end A173177.P7546703634788640927

namespace A173177

/-- `3*A024899(n+1)-1` -/
def P7546703634788640927.Spec : Prop :=
  ∀ n, P7546703634788640927.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P10851853359533354414

`3*A153218(n+1)+2`
-/

namespace A173177.P10851853359533354414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153218 (n + 1) + 2

end

end A173177.P10851853359533354414

namespace A173177

/-- `3*A153218(n+1)+2` -/
def P10851853359533354414.Spec : Prop :=
  ∀ n, P10851853359533354414.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P6968672222264083092

`(A002476(n+1)-3)/2`
-/

namespace A173177.P6968672222264083092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002476 (n + 1) - 3 : ℚ) / 2

end

end A173177.P6968672222264083092

namespace A173177

/-- `(A002476(n+1)-3)/2` -/
def P6968672222264083092.Spec : Prop :=
  ∀ n, P6968672222264083092.a n = (A173177 (n + 1) : ℚ)

end A173177

/-! ## A173177.P14755485291831564024

`A034936(n+1)+A024899(n+1)`
-/

namespace A173177.P14755485291831564024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + A024899 (n + 1)

end

end A173177.P14755485291831564024

namespace A173177

/-- `A034936(n+1)+A024899(n+1)` -/
def P14755485291831564024.Spec : Prop :=
  ∀ n, P14755485291831564024.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P11310636292363420951

`A153218(n+1)+A024892(n+1)`
-/

namespace A173177.P11310636292363420951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + A024892 (n + 1)

end

end A173177.P11310636292363420951

namespace A173177

/-- `A153218(n+1)+A024892(n+1)` -/
def P11310636292363420951.Spec : Prop :=
  ∀ n, P11310636292363420951.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P4173470945863896881

`A173178(n+1)+A171716(n+1)`
-/

namespace A173177.P4173470945863896881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173178 (n + 1) + A171716 (n + 1)

end

end A173177.P4173470945863896881

namespace A173177

/-- `A173178(n+1)+A171716(n+1)` -/
def P4173470945863896881.Spec : Prop :=
  ∀ n, P4173470945863896881.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P5664628421174959532

`A024899(n+1)+A153218(n+1)+A024899(n+1)`
-/

namespace A173177.P5664628421174959532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) + (A153218 (n + 1) + A024899 (n + 1))

end

end A173177.P5664628421174959532

namespace A173177

/-- `A024899(n+1)+A153218(n+1)+A024899(n+1)` -/
def P5664628421174959532.Spec : Prop :=
  ∀ n, P5664628421174959532.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P9720491206568925032

`A089953(n+1)+A153183(n+1)-A024899(n+1)`
-/

namespace A173177.P9720491206568925032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) + (A153183 (n + 1) - A024899 (n + 1))

end

end A173177.P9720491206568925032

namespace A173177

/-- `A089953(n+1)+A153183(n+1)-A024899(n+1)` -/
def P9720491206568925032.Spec : Prop :=
  ∀ n, P9720491206568925032.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P14856958337175373073

`A177965(n+2)-2`
-/

namespace A173177.P14856958337175373073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177965 (n + 2) - 2

end

end A173177.P14856958337175373073

namespace A173177

/-- `A177965(n+2)-2` -/
def P14856958337175373073.Spec : Prop :=
  ∀ n, P14856958337175373073.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P3559023332793807509

`A067076(A138968(n+1))`
-/

namespace A173177.P3559023332793807509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (A138968 (n + 1)).toNat

end

end A173177.P3559023332793807509

namespace A173177

/-- `A067076(A138968(n+1))` -/
def P3559023332793807509.Spec : Prop :=
  ∀ n, P3559023332793807509.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P5379707415806736168

`A016789(A153218(n+1))`
-/

namespace A173177.P5379707415806736168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A153218 (n + 1)).toNat

end

end A173177.P5379707415806736168

namespace A173177

/-- `A016789(A153218(n+1))` -/
def P5379707415806736168.Spec : Prop :=
  ∀ n, P5379707415806736168.a n = A173177 (n + 1)

end A173177

/-! ## A173177.P3903678443289745380

`∩[A067076(n+1), A016789(n)]`
-/

namespace A173177.P3903678443289745380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173177.P3903678443289745380

namespace A173177

/-- `∩[A067076(n+1), A016789(n)]` -/
def P3903678443289745380.Spec : Prop :=
  ∀ n, (P3903678443289745380.a n : ℤ) = A173177 (n + 1)

end A173177

/-!
# A173178: Numbers k such that 2*k+3 is a prime of the form 3*A024893(m) + 2.

The programs for A173178, the canonical program `A173178.P13841244607503590073` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173178 has offset 1).

The definition of A173178 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059325, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173178.P13841244607503590073

`3*A059325(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173178

/-- `3*A059325(n+1)+1` -/
def P13841244607503590073.Spec : Prop :=
  ∀ n, P13841244607503590073.a n = A173178 (n + 1)

theorem P13841244607503590073.correct : P13841244607503590073.Spec := by
  intro n
  simp only [A173178, Nat.add_sub_cancel]

end A173178

/-! ## A173178.P14528559861957180280

`(p?[3*n+5]-3)/2`
-/

namespace A173178.P14528559861957180280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℚ) / 2

end

end A173178.P14528559861957180280

namespace A173178

/-- `(p?[3*n+5]-3)/2` -/
def P14528559861957180280.Spec : Prop :=
  ∀ n, P14528559861957180280.a n = (A173178 (n + 1) : ℚ)

end A173178

/-! ## A173178.P4572714705093676889

`3*A024898(n+1)-2`
-/

namespace A173178.P4572714705093676889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024898 (n + 1) - 2

end

end A173178.P4572714705093676889

namespace A173178

/-- `3*A024898(n+1)-2` -/
def P4572714705093676889.Spec : Prop :=
  ∀ n, P4572714705093676889.a n = A173178 (n + 1)

theorem P4572714705093676889.correct : P4572714705093676889.Spec := by
  intro n
  simp only [A173178, Nat.add_sub_cancel, A173178.P4572714705093676889.a, A173178.P13841244607503590073.a, A024898, A024898.P2838277204682131429.a, A059325, A059325.P16762475601172180159.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173178

/-! ## A173178.P9881778594450377625

`(A007528(n+1)-3)/2`
-/

namespace A173178.P9881778594450377625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007528 (n + 1) - 3 : ℚ) / 2

end

end A173178.P9881778594450377625

namespace A173178

/-- `(A007528(n+1)-3)/2` -/
def P9881778594450377625.Spec : Prop :=
  ∀ n, P9881778594450377625.a n = (A173178 (n + 1) : ℚ)

end A173178

/-! ## A173178.P2406843072023916260

`3*A153134(n+1)-5`
-/

namespace A173178.P2406843072023916260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153134 (n + 1) - 5

end

end A173178.P2406843072023916260

namespace A173178

/-- `3*A153134(n+1)-5` -/
def P2406843072023916260.Spec : Prop :=
  ∀ n, P2406843072023916260.a n = A173178 (n + 1)

theorem P2406843072023916260.correct : P2406843072023916260.Spec := by
  intro n
  simp only [A173178, Nat.add_sub_cancel, A173178.P2406843072023916260.a, A173178.P13841244607503590073.a, A059325, A059325.P16762475601172180159.a, A153134, A153134.P3803390437604555717.a, A024898, A024898.P2838277204682131429.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173178

/-! ## A173178.P9005184352024865685

`A173177(n+1)-A171716(n+1)`
-/

namespace A173178.P9005184352024865685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1) - A171716 (n + 1)

end

end A173178.P9005184352024865685

namespace A173178

/-- `A173177(n+1)-A171716(n+1)` -/
def P9005184352024865685.Spec : Prop :=
  ∀ n, P9005184352024865685.a n = A173178 (n + 1)

end A173178

/-! ## A173178.P1224009705279483718

`A059325(n+1)+A059325(n+1)+A024898(n+1)`
-/

namespace A173178.P1224009705279483718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) + (A059325 (n + 1) + A024898 (n + 1))

end

end A173178.P1224009705279483718

namespace A173178

/-- `A059325(n+1)+A059325(n+1)+A024898(n+1)` -/
def P1224009705279483718.Spec : Prop :=
  ∀ n, P1224009705279483718.a n = A173178 (n + 1)

theorem P1224009705279483718.correct : P1224009705279483718.Spec := by
  intro n
  simp only [A173178, Nat.add_sub_cancel, A173178.P1224009705279483718.a, A173178.P13841244607503590073.a, A024898, A024898.P2838277204682131429.a, A059325, A059325.P16762475601172180159.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173178

/-! ## A173178.P4694824794132160962

`A059325(n+1)+A024893(n+2)`
-/

namespace A173178.P4694824794132160962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) + A024893 (n + 2)

end

end A173178.P4694824794132160962

namespace A173178

/-- `A059325(n+1)+A024893(n+2)` -/
def P4694824794132160962.Spec : Prop :=
  ∀ n, P4694824794132160962.a n = A173178 (n + 1)

end A173178

/-! ## A173178.P17009536308378509184

`A067076(A138969(n+2))`
-/

namespace A173178.P17009536308378509184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (A138969 (n + 2)).toNat

end

end A173178.P17009536308378509184

namespace A173178

/-- `A067076(A138969(n+2))` -/
def P17009536308378509184.Spec : Prop :=
  ∀ n, P17009536308378509184.a n = A173178 (n + 1)

end A173178

/-! ## A173178.P13025896104913791649

`A067076(A091177(n+2)-1)`
-/

namespace A173178.P13025896104913791649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (A091177 (n + 2) - 1).toNat

end

end A173178.P13025896104913791649

namespace A173178

/-- `A067076(A091177(n+2)-1)` -/
def P13025896104913791649.Spec : Prop :=
  ∀ n, P13025896104913791649.a n = A173178 (n + 1)

end A173178

/-! ## A173178.P12589179852757047267

`∩[A056991(n+1), A067076(n+1)]`
-/

namespace A173178.P12589179852757047267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173178.P12589179852757047267

namespace A173178

/-- `∩[A056991(n+1), A067076(n+1)]` -/
def P12589179852757047267.Spec : Prop :=
  ∀ n, (P12589179852757047267.a n : ℤ) = A173178 (n + 1)

end A173178

/-! ## A173178.P10704384224213233340

`A034934(n+2)-A103391(A034934(n+2))`
-/

namespace A173178.P10704384224213233340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 2) - A103391 (A034934 (n + 2)).toNat

end

end A173178.P10704384224213233340

namespace A173178

/-- `A034934(n+2)-A103391(A034934(n+2))` -/
def P10704384224213233340.Spec : Prop :=
  ∀ n, P10704384224213233340.a n = A173178 (n + 1)

end A173178

/-! ## A173178.P4972394625556539071

`A016777(A059325(n+1))`
-/

namespace A173178.P4972394625556539071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A059325 (n + 1)).toNat

end

end A173178.P4972394625556539071

namespace A173178

/-- `A016777(A059325(n+1))` -/
def P4972394625556539071.Spec : Prop :=
  ∀ n, P4972394625556539071.a n = A173178 (n + 1)

end A173178

/-! ## A173178.P266268242471060899

`∩[A067076(n+1), A016777(n)]`
-/

namespace A173178.P266268242471060899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173178.P266268242471060899

namespace A173178

/-- `∩[A067076(n+1), A016777(n)]` -/
def P266268242471060899.Spec : Prop :=
  ∀ n, (P266268242471060899.a n : ℤ) = A173178 (n + 1)

end A173178

/-! ## A173178.P1361813274213125772

`∩[A111333(n+1)-2, A016777(n)]`
-/

namespace A173178.P1361813274213125772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173178.P1361813274213125772

namespace A173178

/-- `∩[A111333(n+1)-2, A016777(n)]` -/
def P1361813274213125772.Spec : Prop :=
  ∀ n, (P1361813274213125772.a n : ℤ) = A173178 (n + 1)

end A173178

/-! ## A173178.P101226524519285404

`∩[A055047(n+1), A067076(n+1)]`
-/

namespace A173178.P101226524519285404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173178.P101226524519285404

namespace A173178

/-- `∩[A055047(n+1), A067076(n+1)]` -/
def P101226524519285404.Spec : Prop :=
  ∀ n, (P101226524519285404.a n : ℤ) = A173178 (n + 1)

end A173178

/-! ## A173178.P16042945783906205528

`∩[A067076(n+1), A277572(n+1)]`
-/

namespace A173178.P16042945783906205528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173178.P16042945783906205528

namespace A173178

/-- `∩[A067076(n+1), A277572(n+1)]` -/
def P16042945783906205528.Spec : Prop :=
  ∀ n, (P16042945783906205528.a n : ℤ) = A173178 (n + 1)

end A173178

/-! ## A173178.P13576327488653452853

`∩[A067076(n+1), A244713(n+1)]`
-/

namespace A173178.P13576327488653452853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173178.P13576327488653452853

namespace A173178

/-- `∩[A067076(n+1), A244713(n+1)]` -/
def P13576327488653452853.Spec : Prop :=
  ∀ n, (P13576327488653452853.a n : ℤ) = A173178 (n + 1)

end A173178

/-! ## A173178.P6263482331498099595

`∩[A026225(n+1), A067076(n+1)]`
-/

namespace A173178.P6263482331498099595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173178.P6263482331498099595

namespace A173178

/-- `∩[A026225(n+1), A067076(n+1)]` -/
def P6263482331498099595.Spec : Prop :=
  ∀ n, (P6263482331498099595.a n : ℤ) = A173178 (n + 1)

end A173178

/-! ## A173178.P2035577835348585486

`∩[A029739(n+1), A067076(n+1)]`
-/

namespace A173178.P2035577835348585486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173178.P2035577835348585486

namespace A173178

/-- `∩[A029739(n+1), A067076(n+1)]` -/
def P2035577835348585486.Spec : Prop :=
  ∀ n, (P2035577835348585486.a n : ℤ) = A173178 (n + 1)

end A173178

/-!
# A173180: Numbers k such that k^5-k^4-k^3-k^2-k-1 is prime.

The programs for A173180, there is no canonical definition to state claims against.
-/

/-! ## A173180.P9705213176074116530

`∑[A007814(A328636(n+1)²)]`
-/

namespace A173180.P9705213176074116530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A328636 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173180.P9705213176074116530

/-! ## A173180.P17856416609353424509

`∑[A001222(A230997(2*n+3)²)]`
-/

namespace A173180.P17856416609353424509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A230997 (2 * n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173180.P17856416609353424509

/-! ## A173180.P6331394153509666336

`lt[2, A050968(n+2)%A285323(n)]`
-/

namespace A173180.P6331394153509666336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050968 (n + 2)) (A285323 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A173180.P6331394153509666336

/-! ## A173180.P7219959166430828383

`eq[(n+1)%2, A033999(A022877(n+1))]`
-/

namespace A173180.P7219959166430828383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A022877 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173180.P7219959166430828383

/-! ## A173180.P5035614440407150234

`eq[A003842(A045923(n+1)), A059841(n)]`
-/

namespace A173180.P5035614440407150234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A045923 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173180.P5035614440407150234

/-!
# A173181: Smallest positive number whose name in Spanish has the letter o in the n-th position starting from the end. (Spaces are not counted.)

The programs for A173181, there is no canonical definition to state claims against.
-/

/-! ## A173181.P1775464938295730712

`A129193(3^n-2^n+3)`
-/

namespace A173181.P1775464938295730712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129193 ((3 ^ n : ℤ) - (2 ^ n : ℤ) + 3).toNat

end

end A173181.P1775464938295730712

/-!
# A173184: Partial sums of A000166.

The programs for A173184, the canonical program `A173184.P6843160355512957797` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173184 has offset 0).

The definition of A173184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173184.P6843160355512957797

`n*a(n-1)-(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173184

/-- `n*a(n-1)-(n-1)*a(n-3)` -/
def P6843160355512957797.Spec : Prop :=
  ∀ n, P6843160355512957797.a n = A173184 n

theorem P6843160355512957797.correct : P6843160355512957797.Spec := by
  intro n
  simp only [A173184]

end A173184

/-! ## A173184.P11278346756698168649

`∑[xor(1, n*a(n-1))]` with `a(0)=1`
-/

namespace A173184.P11278346756698168649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 1 (n * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173184.P11278346756698168649

namespace A173184

/-- `∑[xor(1, n*a(n-1))]` -/
def P11278346756698168649.Spec : Prop :=
  ∀ n, (P11278346756698168649.a n : ℤ) = A173184 n

end A173184

/-! ## A173184.P3568211264782353868

`∑[xor(1, a(n-1)/n^(-1))]` with `a(0)=1`
-/

namespace A173184.P3568211264782353868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor 1 (SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173184.P3568211264782353868

namespace A173184

/-- `∑[xor(1, a(n-1)/n^(-1))]` -/
def P3568211264782353868.Spec : Prop :=
  ∀ n, P3568211264782353868.a n = A173184 n

end A173184

/-! ## A173184.P6095273583096651274

`∑[(-1)^n+n*a(n-1)]` with `a(0)=1`
-/

namespace A173184.P6095273583096651274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (-1) ^ n + (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173184.P6095273583096651274

namespace A173184

/-- `∑[(-1)^n+n*a(n-1)]` -/
def P6095273583096651274.Spec : Prop :=
  ∀ n, P6095273583096651274.a n = A173184 n

end A173184

/-! ## A173184.P16256503786290990026

`∑[(a(n-1)+a(n-2))*(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A173184.P16256503786290990026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (f1 (n - 1) + f1 (n - 2)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173184.P16256503786290990026

namespace A173184

/-- `∑[(a(n-1)+a(n-2))*(n-1)]` -/
def P16256503786290990026.Spec : Prop :=
  ∀ n, P16256503786290990026.a n = A173184 n

end A173184

/-! ## A173184.P14143110648281883316

`∑[A000166(n)]`
-/

namespace A173184.P14143110648281883316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173184.P14143110648281883316

namespace A173184

/-- `∑[A000166(n)]` -/
def P14143110648281883316.Spec : Prop :=
  ∀ n, P14143110648281883316.a n = A173184 n

end A173184

/-! ## A173184.P11797912179331446792

`∑[abs(A182386(n))]`
-/

namespace A173184.P11797912179331446792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173184.P11797912179331446792

namespace A173184

/-- `∑[abs(A182386(n))]` -/
def P11797912179331446792.Spec : Prop :=
  ∀ n, P11797912179331446792.a n = A173184 n

end A173184

/-! ## A173184.P18102203620813357162

`∑[A008290(∑[n])]`
-/

namespace A173184.P18102203620813357162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173184.P18102203620813357162

namespace A173184

/-- `∑[A008290(∑[n])]` -/
def P18102203620813357162.Spec : Prop :=
  ∀ n, P18102203620813357162.a n = A173184 n

end A173184

/-! ## A173184.P15305407230386797449

`∑[A068106(∑[n])]`
-/

namespace A173184.P15305407230386797449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173184.P15305407230386797449

namespace A173184

/-- `∑[A068106(∑[n])]` -/
def P15305407230386797449.Spec : Prop :=
  ∀ n, P15305407230386797449.a n = A173184 n

end A173184

/-! ## A173184.P14041500870336805250

`∑[A086764(∑[n])]`
-/

namespace A173184.P14041500870336805250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173184.P14041500870336805250

namespace A173184

/-- `∑[A086764(∑[n])]` -/
def P14041500870336805250.Spec : Prop :=
  ∀ n, P14041500870336805250.a n = A173184 n

end A173184

/-!
# A173185: Partial sums of A003418.

The programs for A173185, the canonical program `A173185.P11378797572863628532` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173185 has offset 0).

The definition of A173185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173185.P11378797572863628532

`∑[lcm(n, a(n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173185

/-- `∑[lcm(n, a(n-1))]` -/
def P11378797572863628532.Spec : Prop :=
  ∀ n, (P11378797572863628532.a n : ℤ) = A173185 n

theorem P11378797572863628532.correct : P11378797572863628532.Spec := by
  intro n
  simp only [A173185]

end A173185

/-! ## A173185.P4942892109502606178

`∑[n*a(n-1)/gcd(n, a(n-1))]` with `a(0)=1`
-/

namespace A173185.P4942892109502606178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) * (f1 (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P4942892109502606178

namespace A173185

/-- `∑[n*a(n-1)/gcd(n, a(n-1))]` -/
def P4942892109502606178.Spec : Prop :=
  ∀ n, P4942892109502606178.a n = (A173185 n : ℚ)

end A173185

/-! ## A173185.P16202492315315240799

`∑[A003418(n)]`
-/

namespace A173185.P16202492315315240799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P16202492315315240799

namespace A173185

/-- `∑[A003418(n)]` -/
def P16202492315315240799.Spec : Prop :=
  ∀ n, P16202492315315240799.a n = A173185 n

theorem P16202492315315240799.correct : P16202492315315240799.Spec := by
  intro n
  simp only [A173185, Nat.add_sub_cancel, A173185.P16202492315315240799.f1, A173185.P16202492315315240799.a, A173185.P11378797572863628532.f1, A173185.P11378797572863628532.a, A003418, A003418.P6976248655893080794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173185

/-! ## A173185.P16996766847406225689

`A236856(n)+1`
-/

namespace A173185.P16996766847406225689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n + 1

end

end A173185.P16996766847406225689

namespace A173185

/-- `A236856(n)+1` -/
def P16996766847406225689.Spec : Prop :=
  ∀ n, P16996766847406225689.a n = A173185 n

theorem P16996766847406225689.correct : P16996766847406225689.Spec := by
  intro n
  simp only [A173185, Nat.add_sub_cancel, A173185.P16996766847406225689.a, A173185.P11378797572863628532.f1, A173185.P11378797572863628532.a, A236856, A236856.P12242245037929288109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173185

/-! ## A173185.P4324996706083205096

`∑[A075059(n)-1]`
-/

namespace A173185.P4324996706083205096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P4324996706083205096

namespace A173185

/-- `∑[A075059(n)-1]` -/
def P4324996706083205096.Spec : Prop :=
  ∀ n, P4324996706083205096.a n = A173185 n

theorem P4324996706083205096.correct : P4324996706083205096.Spec := by
  intro n
  simp only [A173185, Nat.add_sub_cancel, A173185.P4324996706083205096.f1, A173185.P4324996706083205096.a, A173185.P11378797572863628532.f1, A173185.P11378797572863628532.a, A075059, A075059.P13005941669399506084.a, A003418, A003418.P6976248655893080794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173185

/-! ## A173185.P11311701108389031345

`∑[A139550(2*n)]`
-/

namespace A173185.P11311701108389031345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P11311701108389031345

namespace A173185

/-- `∑[A139550(2*n)]` -/
def P11311701108389031345.Spec : Prop :=
  ∀ n, P11311701108389031345.a n = A173185 n

end A173185

/-! ## A173185.P2365768237265406248

`∑[A139554(4*n)]`
-/

namespace A173185.P2365768237265406248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P2365768237265406248

namespace A173185

/-- `∑[A139554(4*n)]` -/
def P2365768237265406248.Spec : Prop :=
  ∀ n, P2365768237265406248.a n = A173185 n

end A173185

/-! ## A173185.P14749919887820102321

`∑[∏[A014963(∏{p}[n, #])]]`
-/

namespace A173185.P14749919887820102321
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P14749919887820102321

namespace A173185

/-- `∑[∏[A014963(∏{p}[n, #])]]` -/
def P14749919887820102321.Spec : Prop :=
  ∀ n, P14749919887820102321.a n = A173185 n

end A173185

/-! ## A173185.P16123953354240498410

`∑[A195507(n+1)-(n+1)]`
-/

namespace A173185.P16123953354240498410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P16123953354240498410

namespace A173185

/-- `∑[A195507(n+1)-(n+1)]` -/
def P16123953354240498410.Spec : Prop :=
  ∀ n, P16123953354240498410.a n = A173185 n

theorem P16123953354240498410.correct : P16123953354240498410.Spec := by
  intro n
  simp only [A173185, Nat.add_sub_cancel, A173185.P16123953354240498410.f1, A173185.P16123953354240498410.a, A173185.P11378797572863628532.f1, A173185.P11378797572863628532.a, A195507, A195507.P13812271573965113829.a, A003418, A003418.P6976248655893080794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173185

/-! ## A173185.P11006331597182389378

`∑[a(n-1)*A014963(n)]` with `a(0)=1`
-/

namespace A173185.P11006331597182389378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A014963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P11006331597182389378

namespace A173185

/-- `∑[a(n-1)*A014963(n)]` -/
def P11006331597182389378.Spec : Prop :=
  ∀ n, P11006331597182389378.a n = A173185 n

end A173185

/-! ## A173185.P6841412126845839032

`a(n-1)+n*A002944(n)` with `a(0)=1`
-/

namespace A173185.P6841412126845839032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℤ) * A002944 n

end

end A173185.P6841412126845839032

namespace A173185

/-- `a(n-1)+n*A002944(n)` -/
def P6841412126845839032.Spec : Prop :=
  ∀ n, P6841412126845839032.a n = A173185 n

end A173185

/-! ## A173185.P6504922930946192170

`∑[∏[A014963(A028310(n))]]`
-/

namespace A173185.P6504922930946192170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P6504922930946192170

namespace A173185

/-- `∑[∏[A014963(A028310(n))]]` -/
def P6504922930946192170.Spec : Prop :=
  ∀ n, P6504922930946192170.a n = A173185 n

end A173185

/-! ## A173185.P10827592289017204486

`∑[A056040(n)*A180000(n)]`
-/

namespace A173185.P10827592289017204486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A180000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P10827592289017204486

namespace A173185

/-- `∑[A056040(n)*A180000(n)]` -/
def P10827592289017204486.Spec : Prop :=
  ∀ n, P10827592289017204486.a n = A173185 n

end A173185

/-! ## A173185.P11949180352007785244

`∑[∏[A014963(A004277(n)-n)]]`
-/

namespace A173185.P11949180352007785244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A004277 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P11949180352007785244

namespace A173185

/-- `∑[∏[A014963(A004277(n)-n)]]` -/
def P11949180352007785244.Spec : Prop :=
  ∀ n, P11949180352007785244.a n = A173185 n

end A173185

/-! ## A173185.P13141996728748284479

`Δ[A000225(n)]-(A000225(n)-A236856(n))`
-/

namespace A173185.P13141996728748284479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A000225 n - A236856 n)

end

end A173185.P13141996728748284479

namespace A173185

/-- `Δ[A000225(n)]-(A000225(n)-A236856(n))` -/
def P13141996728748284479.Spec : Prop :=
  ∀ n, P13141996728748284479.a n = A173185 n

theorem P13141996728748284479.correct : P13141996728748284479.Spec := by
  intro n
  simp only [A173185, Nat.add_sub_cancel, A173185.P13141996728748284479.f1, A173185.P13141996728748284479.a, A173185.P11378797572863628532.f1, A173185.P11378797572863628532.a, A000225, A000225.P6535533121115206393.a, A236856, A236856.P12242245037929288109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173185

/-! ## A173185.P7715438094414469524

`A048578(n)-(Δ[A048578(n)]-A236856(n))`
-/

namespace A173185.P7715438094414469524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (f1 (n + 1) - f1 n - A236856 n)

end

end A173185.P7715438094414469524

namespace A173185

/-- `A048578(n)-(Δ[A048578(n)]-A236856(n))` -/
def P7715438094414469524.Spec : Prop :=
  ∀ n, P7715438094414469524.a n = A173185 n

theorem P7715438094414469524.correct : P7715438094414469524.Spec := by
  intro n
  simp only [A173185, Nat.add_sub_cancel, A173185.P7715438094414469524.f1, A173185.P7715438094414469524.a, A173185.P11378797572863628532.f1, A173185.P11378797572863628532.a, A048578, A048578.P13686089786535013419.a, A236856, A236856.P12242245037929288109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173185

/-! ## A173185.P14790927357718127028

`∑[A070198(n)+1]-A070198(n)`
-/

namespace A173185.P14790927357718127028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A070198 n

end

end A173185.P14790927357718127028

namespace A173185

/-- `∑[A070198(n)+1]-A070198(n)` -/
def P14790927357718127028.Spec : Prop :=
  ∀ n, P14790927357718127028.a n = A173185 n

end A173185

/-! ## A173185.P7744739669460193835

`∑[∏[A014963(n+1)]/A014963(n+1)]`
-/

namespace A173185.P7744739669460193835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A014963 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P7744739669460193835

namespace A173185

/-- `∑[∏[A014963(n+1)]/A014963(n+1)]` -/
def P7744739669460193835.Spec : Prop :=
  ∀ n, P7744739669460193835.a n = (A173185 n : ℚ)

end A173185

/-! ## A173185.P13048671258541378598

`∑[A120108(∑[n]-n)]`
-/

namespace A173185.P13048671258541378598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P13048671258541378598

namespace A173185

/-- `∑[A120108(∑[n]-n)]` -/
def P13048671258541378598.Spec : Prop :=
  ∀ n, P13048671258541378598.a n = A173185 n

end A173185

/-! ## A173185.P15145127849170246388

`∑[A093919(A099392(n+1))]`
-/

namespace A173185.P15145127849170246388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093919 (A099392 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173185.P15145127849170246388

namespace A173185

/-- `∑[A093919(A099392(n+1))]` -/
def P15145127849170246388.Spec : Prop :=
  ∀ n, P15145127849170246388.a n = A173185 n

end A173185

/-!
# A173186: Numbers k such that k^2-1 is not squarefree.

The programs for A173186, the canonical program `A173186.P1258675814604343579` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173186 has offset 1).

The definition of A173186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173186.P16576076327719107669

`comp[A069977(n+1)]+1`
-/

namespace A173186.P16576076327719107669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A173186.P16576076327719107669

namespace A173186

/-- `comp[A069977(n+1)]+1` -/
def P16576076327719107669.Spec : Prop :=
  ∀ n, (P16576076327719107669.a n : ℤ) = A173186 (n + 1)

end A173186

/-! ## A173186.P1258675814604343579

`lt[A379971(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173186

/-- `lt[A379971(n+1), 1]+1` -/
def P1258675814604343579.Spec : Prop :=
  ∀ n, (P1258675814604343579.a n : ℤ) = A173186 (n + 1)

theorem P1258675814604343579.correct : P1258675814604343579.Spec := by
  intro n
  simp only [A173186, Nat.add_sub_cancel]

end A173186

/-! ## A173186.P2913461257509496167

`comp[A067874(n+1)-1]+1`
-/

namespace A173186.P2913461257509496167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A173186.P2913461257509496167

namespace A173186

/-- `comp[A067874(n+1)-1]+1` -/
def P2913461257509496167.Spec : Prop :=
  ∀ n, (P2913461257509496167.a n : ℤ) = A173186 (n + 1)

end A173186

/-! ## A173186.P8692500013136524606

`∪[2*n+1, A088034(n+1)]`
-/

namespace A173186.P8692500013136524606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173186.P8692500013136524606

namespace A173186

/-- `∪[2*n+1, A088034(n+1)]` -/
def P8692500013136524606.Spec : Prop :=
  ∀ n, (P8692500013136524606.a n : ℤ) = A173186 (n + 1)

end A173186

/-! ## A173186.P10535958245503424865

`comp[A004273(A272799(n+1))]+1`
-/

namespace A173186.P10535958245503424865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A272799 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A173186.P10535958245503424865

namespace A173186

/-- `comp[A004273(A272799(n+1))]+1` -/
def P10535958245503424865.Spec : Prop :=
  ∀ n, (P10535958245503424865.a n : ℤ) = A173186 (n + 1)

end A173186

/-! ## A173186.P12895789861194390348

`comp[A092486(n)*A379971(n+1)]`
-/

namespace A173186.P12895789861194390348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n * A379971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173186.P12895789861194390348

namespace A173186

/-- `comp[A092486(n)*A379971(n+1)]` -/
def P12895789861194390348.Spec : Prop :=
  ∀ n, (P12895789861194390348.a n : ℤ) = A173186 (n + 1)

end A173186

/-! ## A173186.P10587079698930691101

`record[(n+1)%A085050(n+1)]`
-/

namespace A173186.P10587079698930691101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A085050 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173186.P10587079698930691101

namespace A173186

/-- `record[(n+1)%A085050(n+1)]` -/
def P10587079698930691101.Spec : Prop :=
  ∀ n, P10587079698930691101.a n = A173186 (n + 1)

end A173186

/-! ## A173186.P8661580764786979089

`record[A008683(A081350(n))+n]`
-/

namespace A173186.P8661580764786979089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A081350 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173186.P8661580764786979089

namespace A173186

/-- `record[A008683(A081350(n))+n]` -/
def P8661580764786979089.Spec : Prop :=
  ∀ n, P8661580764786979089.a n = A173186 (n + 1)

end A173186

/-! ## A173186.P15921150280956431791

`lt[A008966(A081350(n)), A055396(3*n+4)]`
-/

namespace A173186.P15921150280956431791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A081350 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173186.P15921150280956431791

namespace A173186

/-- `lt[A008966(A081350(n)), A055396(3*n+4)]` -/
def P15921150280956431791.Spec : Prop :=
  ∀ n, (P15921150280956431791.a n : ℤ) = A173186 (n + 1)

end A173186

/-! ## A173186.P7014725803354056572

`eq[0, A008683(A106230(n+1))]`
-/

namespace A173186.P7014725803354056572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A106230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173186.P7014725803354056572

namespace A173186

/-- `eq[0, A008683(A106230(n+1))]` -/
def P7014725803354056572.Spec : Prop :=
  ∀ n, (P7014725803354056572.a n : ℤ) = A173186 (n + 1)

end A173186

/-! ## A173186.P12174976085553537979

`record[or(n+1, A008683(A085046(n+1)))]`
-/

namespace A173186.P12174976085553537979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A008683 (A085046 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173186.P12174976085553537979

namespace A173186

/-- `record[or(n+1, A008683(A085046(n+1)))]` -/
def P12174976085553537979.Spec : Prop :=
  ∀ n, P12174976085553537979.a n = A173186 (n + 1)

end A173186

/-! ## A173186.P7091956278404439606

`record[xor(n, A008683(A085046(n+2)))+2]`
-/

namespace A173186.P7091956278404439606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008683 (A085046 (n + 2)).toNat) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173186.P7091956278404439606

namespace A173186

/-- `record[xor(n, A008683(A085046(n+2)))+2]` -/
def P7091956278404439606.Spec : Prop :=
  ∀ n, P7091956278404439606.a n = A173186 (n + 1)

end A173186

/-! ## A173186.P8165680802062183571

`eq[1, A087049(n*(n+2))]+1`
-/

namespace A173186.P8165680802062183571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (n * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A173186.P8165680802062183571

namespace A173186

/-- `eq[1, A087049(n*(n+2))]+1` -/
def P8165680802062183571.Spec : Prop :=
  ∀ n, (P8165680802062183571.a n : ℤ) = A173186 (n + 1)

end A173186

/-! ## A173186.P11126384588355308007

`record[gcd(n+1, n*A323239(A005563(n)))]`
-/

namespace A173186.P11126384588355308007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((n : ℤ) * A323239 (A005563 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173186.P11126384588355308007

namespace A173186

/-- `record[gcd(n+1, n*A323239(A005563(n)))]` -/
def P11126384588355308007.Spec : Prop :=
  ∀ n, (P11126384588355308007.a n : ℤ) = A173186 (n + 1)

end A173186

/-!
# A173187: a(n) = binomial(n + 3, 3)*9^n.

The programs for A173187, the canonical program `A173187.P17594679782825958638` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173187 has offset 0).

The definition of A173187 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*9^n` (program `A173187.P17594679782825958638`, by `A173187.P17594679782825958638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173187.P17594679782825958638

`C(n+3, 3)*9^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173187

/-- `C(n+3, 3)*9^n` -/
def P17594679782825958638.Spec : Prop :=
  ∀ n, (P17594679782825958638.a n : ℤ) = A173187 n

theorem P17594679782825958638.correct : P17594679782825958638.Spec := by
  intro n
  simp only [A173187]

end A173187

/-! ## A173187.P11552889946649530418

`9^n*C(n+3, 3)`
-/

namespace A173187.P11552889946649530418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * Nat.choose (n + 3) 3

end

end A173187.P11552889946649530418

namespace A173187

/-- `9^n*C(n+3, 3)` -/
def P11552889946649530418.Spec : Prop :=
  ∀ n, (P11552889946649530418.a n : ℤ) = A173187 n

theorem P11552889946649530418.correct : P11552889946649530418.Spec := by
  intro n
  simp only [A173187, Nat.add_sub_cancel, A173187.P11552889946649530418.a, A173187.P17594679782825958638.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173187

/-! ## A173187.P13268588223147067176

`9^n*∑[∑[n+1]]`
-/

namespace A173187.P13268588223147067176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173187.P13268588223147067176

namespace A173187

/-- `9^n*∑[∑[n+1]]` -/
def P13268588223147067176.Spec : Prop :=
  ∀ n, (P13268588223147067176.a n : ℤ) = A173187 n

end A173187

/-! ## A173187.P803029593486850076

`floor((n+3)*3^(n-1)*A027472(n+3))`
-/

namespace A173187.P803029593486850076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A027472 (n + 3) : ℚ)⌋

end

end A173187.P803029593486850076

namespace A173187

/-- `floor((n+3)*3^(n-1)*A027472(n+3))` -/
def P803029593486850076.Spec : Prop :=
  ∀ n, P803029593486850076.a n = A173187 n

end A173187

/-! ## A173187.P5696042664671868910

`9^n*A027480(n+1)/3`
-/

namespace A173187.P5696042664671868910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ n : ℤ) * A027480 (n + 1) : ℚ) / 3

end

end A173187.P5696042664671868910

namespace A173187

/-- `9^n*A027480(n+1)/3` -/
def P5696042664671868910.Spec : Prop :=
  ∀ n, P5696042664671868910.a n = (A173187 n : ℚ)

end A173187

/-! ## A173187.P8559907476067436385

`A038291(A167614(n+2))`
-/

namespace A173187.P8559907476067436385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (A167614 (n + 2)).toNat

end

end A173187.P8559907476067436385

namespace A173187

/-- `A038291(A167614(n+2))` -/
def P8559907476067436385.Spec : Prop :=
  ∀ n, P8559907476067436385.a n = A173187 n

end A173187

/-! ## A173187.P12930187590791666908

`A038291(eq[3, A002262(n)])`
-/

namespace A173187.P12930187590791666908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173187.P12930187590791666908

namespace A173187

/-- `A038291(eq[3, A002262(n)])` -/
def P12930187590791666908.Spec : Prop :=
  ∀ n, P12930187590791666908.a n = A173187 n

end A173187

/-! ## A173187.P13282908317135202449

`A038291(eq[4, A002260(n+1)])`
-/

namespace A173187.P13282908317135202449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173187.P13282908317135202449

namespace A173187

/-- `A038291(eq[4, A002260(n+1)])` -/
def P13282908317135202449.Spec : Prop :=
  ∀ n, P13282908317135202449.a n = A173187 n

end A173187

/-! ## A173187.P12261461261510851412

`A013616(∑[n+3]+n+3)`
-/

namespace A173187.P12261461261510851412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A173187.P12261461261510851412

namespace A173187

/-- `A013616(∑[n+3]+n+3)` -/
def P12261461261510851412.Spec : Prop :=
  ∀ n, P12261461261510851412.a n = A173187 n

end A173187

/-! ## A173187.P8269566877448514346

`A000292(n+1)*A000400(n)²/A000079(n)²`
-/

namespace A173187.P8269566877448514346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) * A000400 n ^ 2 : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A173187.P8269566877448514346

namespace A173187

/-- `A000292(n+1)*A000400(n)²/A000079(n)²` -/
def P8269566877448514346.Spec : Prop :=
  ∀ n, P8269566877448514346.a n = (A173187 n : ℚ)

end A173187

/-!
# A173188: a(n) = binomial(n+5,5)*9^n.

The programs for A173188, the canonical program `A173188.P8280498997411154462` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173188 has offset 0).

The definition of A173188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*9^n` (program `A173188.P8280498997411154462`, by `A173188.P8280498997411154462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173188.P8280498997411154462

`C(n+5, 5)*9^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173188

/-- `C(n+5, 5)*9^n` -/
def P8280498997411154462.Spec : Prop :=
  ∀ n, (P8280498997411154462.a n : ℤ) = A173188 n

theorem P8280498997411154462.correct : P8280498997411154462.Spec := by
  intro n
  simp only [A173188]

end A173188

/-! ## A173188.P16346081605973135232

`9^n*∑[∑[∑[∑[n+1]]]]`
-/

namespace A173188.P16346081605973135232
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173188.P16346081605973135232

namespace A173188

/-- `9^n*∑[∑[∑[∑[n+1]]]]` -/
def P16346081605973135232.Spec : Prop :=
  ∀ n, (P16346081605973135232.a n : ℤ) = A173188 n

end A173188

/-! ## A173188.P15298174323775539001

`A038291(A056115(n)+20)`
-/

namespace A173188.P15298174323775539001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (A056115 n + 20).toNat

end

end A173188.P15298174323775539001

namespace A173188

/-- `A038291(A056115(n)+20)` -/
def P15298174323775539001.Spec : Prop :=
  ∀ n, P15298174323775539001.a n = A173188 n

end A173188

/-! ## A173188.P16598808856350611007

`A038291(eq[5, A002262(n)])`
-/

namespace A173188.P16598808856350611007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173188.P16598808856350611007

namespace A173188

/-- `A038291(eq[5, A002262(n)])` -/
def P16598808856350611007.Spec : Prop :=
  ∀ n, P16598808856350611007.a n = A173188 n

end A173188

/-! ## A173188.P1439415513417511419

`A038291(eq[6, A002260(n+1)])`
-/

namespace A173188.P1439415513417511419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173188.P1439415513417511419

namespace A173188

/-- `A038291(eq[6, A002260(n+1)])` -/
def P1439415513417511419.Spec : Prop :=
  ∀ n, P1439415513417511419.a n = A173188 n

end A173188

/-! ## A173188.P2244965377489313018

`A013616(eq[6, A004736(n+1)])`
-/

namespace A173188.P2244965377489313018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173188.P2244965377489313018

namespace A173188

/-- `A013616(eq[6, A004736(n+1)])` -/
def P2244965377489313018.Spec : Prop :=
  ∀ n, P2244965377489313018.a n = A173188 n

end A173188

/-!
# A173190: Values of n such that tau(n) = rad(n)^2, where tau(n) is the number of divisor of n, and rad(n) is the product of the distinct prime factors of n (rad(1)=1).

The programs for A173190, there is no canonical definition to state claims against.
-/

/-! ## A173190.P7696856502185267035

`A325127(∏{d}[A161331(n), #]+n)`
-/

namespace A173190.P7696856502185267035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325127 (∏ d ∈ Nat.divisors (f1 n).natAbs, d + n)

end

end A173190.P7696856502185267035

/-!
# A173191: a(n) = binomial(n+6,6)*9^n.

The programs for A173191, the canonical program `A173191.P15695895562765167802` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173191 has offset 0).

The definition of A173191 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*9^n` (program `A173191.P15695895562765167802`, by `A173191.P15695895562765167802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173191.P15695895562765167802

`C(n+6, 6)*9^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173191

/-- `C(n+6, 6)*9^n` -/
def P15695895562765167802.Spec : Prop :=
  ∀ n, (P15695895562765167802.a n : ℤ) = A173191 n

theorem P15695895562765167802.correct : P15695895562765167802.Spec := by
  intro n
  simp only [A173191]

end A173191

/-! ## A173191.P12288670647484163069

`9^n*∑[∑[∑[∑[∑[n+1]]]]]`
-/

namespace A173191.P12288670647484163069
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173191.P12288670647484163069

namespace A173191

/-- `9^n*∑[∑[∑[∑[∑[n+1]]]]]` -/
def P12288670647484163069.Spec : Prop :=
  ∀ n, (P12288670647484163069.a n : ℤ) = A173191 n

end A173191

/-! ## A173191.P15869340829574551888

`A038291(eq[6, A002262(n)])`
-/

namespace A173191.P15869340829574551888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173191.P15869340829574551888

namespace A173191

/-- `A038291(eq[6, A002262(n)])` -/
def P15869340829574551888.Spec : Prop :=
  ∀ n, P15869340829574551888.a n = A173191 n

end A173191

/-! ## A173191.P11174576412849741655

`A038291(eq[7, A002260(n+1)])`
-/

namespace A173191.P11174576412849741655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173191.P11174576412849741655

namespace A173191

/-- `A038291(eq[7, A002260(n+1)])` -/
def P11174576412849741655.Spec : Prop :=
  ∀ n, P11174576412849741655.a n = A173191 n

end A173191

/-! ## A173191.P9419261610862846095

`3*A253946(n+5)/2*9^n/9`
-/

namespace A173191.P9419261610862846095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A253946 (n + 5) : ℚ) / 2 * (9 ^ n : ℚ) / 9

end

end A173191.P9419261610862846095

namespace A173191

/-- `3*A253946(n+5)/2*9^n/9` -/
def P9419261610862846095.Spec : Prop :=
  ∀ n, P9419261610862846095.a n = (A173191 n : ℚ)

theorem P9419261610862846095.correct : P9419261610862846095.Spec := by
  intro n
  simp only [A173191, Nat.add_sub_cancel, A173191.P9419261610862846095.a, A173191.P15695895562765167802.a, A253946, A253946.P6076803449469898878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173191

/-! ## A173191.P1903740432472852281

`A013616(eq[7, A004736(n+1)])`
-/

namespace A173191.P1903740432472852281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173191.P1903740432472852281

namespace A173191

/-- `A013616(eq[7, A004736(n+1)])` -/
def P1903740432472852281.Spec : Prop :=
  ∀ n, P1903740432472852281.a n = A173191 n

end A173191

/-! ## A173191.P4909308519034224242

`Δ[A000244(n)]*A036220(n)/2`
-/

namespace A173191.P4909308519034224242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A036220 n : ℚ) / 2

end

end A173191.P4909308519034224242

namespace A173191

/-- `Δ[A000244(n)]*A036220(n)/2` -/
def P4909308519034224242.Spec : Prop :=
  ∀ n, P4909308519034224242.a n = (A173191 n : ℚ)

end A173191

/-!
# A173192: a(n) = binomial(n+7,7)*9^n.

The programs for A173192, the canonical program `A173192.P2811773757363242065` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173192 has offset 0).

The definition of A173192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*9^n` (program `A173192.P2811773757363242065`, by `A173192.P2811773757363242065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173192.P2811773757363242065

`C(n+7, 7)*9^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173192

/-- `C(n+7, 7)*9^n` -/
def P2811773757363242065.Spec : Prop :=
  ∀ n, (P2811773757363242065.a n : ℤ) = A173192 n

theorem P2811773757363242065.correct : P2811773757363242065.Spec := by
  intro n
  simp only [A173192]

end A173192

/-! ## A173192.P7386914831778099525

`9*(7/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A173192.P7386914831778099525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  9 * ((7 / (n : ℚ) + 1) * a (n - 1))

end

end A173192.P7386914831778099525

namespace A173192

/-- `9*(7/n+1)*a(n-1)` -/
def P7386914831778099525.Spec : Prop :=
  ∀ n, P7386914831778099525.a n = (A173192 n : ℚ)

end A173192

/-! ## A173192.P8131219075387209128

`3^n*A036221(n)`
-/

namespace A173192.P8131219075387209128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A036221 n

end

end A173192.P8131219075387209128

namespace A173192

/-- `3^n*A036221(n)` -/
def P8131219075387209128.Spec : Prop :=
  ∀ n, P8131219075387209128.a n = A173192 n

end A173192

/-! ## A173192.P11028581401805996837

`9^n*A000580(n+7)`
-/

namespace A173192.P11028581401805996837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A000580 (n + 7)

end

end A173192.P11028581401805996837

namespace A173192

/-- `9^n*A000580(n+7)` -/
def P11028581401805996837.Spec : Prop :=
  ∀ n, P11028581401805996837.a n = A173192 n

theorem P11028581401805996837.correct : P11028581401805996837.Spec := by
  intro n
  simp only [A173192, Nat.add_sub_cancel, A173192.P11028581401805996837.a, A173192.P2811773757363242065.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173192

/-! ## A173192.P16680192736279752015

`A000580(n+7)*A001019(n)`
-/

namespace A173192.P16680192736279752015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A001019 n

end

end A173192.P16680192736279752015

namespace A173192

/-- `A000580(n+7)*A001019(n)` -/
def P16680192736279752015.Spec : Prop :=
  ∀ n, P16680192736279752015.a n = A173192 n

theorem P16680192736279752015.correct : P16680192736279752015.Spec := by
  intro n
  simp only [A173192, Nat.add_sub_cancel, A173192.P16680192736279752015.a, A173192.P2811773757363242065.a, A000580, A000580.P16667415707980948191.a, A001019, A001019.P4632907595368420400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173192

/-! ## A173192.P16969481415632056057

`A054851(n+7)/A000079(n)*A000244(n)²`
-/

namespace A173192.P16969481415632056057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (n + 7) : ℚ) / (A000079 n : ℚ) * (A000244 n ^ 2 : ℚ)

end

end A173192.P16969481415632056057

namespace A173192

/-- `A054851(n+7)/A000079(n)*A000244(n)²` -/
def P16969481415632056057.Spec : Prop :=
  ∀ n, P16969481415632056057.a n = (A173192 n : ℚ)

end A173192

/-! ## A173192.P17361683100887625133

`A000580(n+7)+A000580(n+7)*A024101(n)`
-/

namespace A173192.P17361683100887625133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) + A000580 (n + 7) * A024101 n

end

end A173192.P17361683100887625133

namespace A173192

/-- `A000580(n+7)+A000580(n+7)*A024101(n)` -/
def P17361683100887625133.Spec : Prop :=
  ∀ n, P17361683100887625133.a n = A173192 n

theorem P17361683100887625133.correct : P17361683100887625133.Spec := by
  intro n
  simp only [A173192, Nat.add_sub_cancel, A173192.P17361683100887625133.a, A173192.P2811773757363242065.a, A000580, A000580.P16667415707980948191.a, A024101, A024101.P10200110673150781070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173192

/-! ## A173192.P2665459511632424197

`8/(n+8)*A053108(n)`
-/

namespace A173192.P2665459511632424197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (n + 8 : ℚ) * (A053108 n : ℚ)

end

end A173192.P2665459511632424197

namespace A173192

/-- `8/(n+8)*A053108(n)` -/
def P2665459511632424197.Spec : Prop :=
  ∀ n, P2665459511632424197.a n = (A173192 n : ℚ)

theorem P2665459511632424197.correct : P2665459511632424197.Spec := by
  intro n
  simp only [A173192, Nat.add_sub_cancel, A173192.P2665459511632424197.a, A173192.P2811773757363242065.a, A053108, A053108.P13178856905024117614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173192

/-!
# A173193: a(n) = (2*10^n + 43)/9.

The programs for A173193, the canonical program `A173193.P17455748609982832121` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173193 has offset 1).

The definition of A173193 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*10^(n+1)+43)/9` (program `A173193.P4229420867972876746`, by `A173193.P4229420867972876746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173193.P5378200338953067028

`ogf((7-50x)/(1-11x+10x^2))`
-/

namespace A173193.P5378200338953067028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -50] [1, -11, 10] n

end

end A173193.P5378200338953067028

namespace A173193

/-- `ogf((7-50x)/(1-11x+10x^2))` -/
def P5378200338953067028.Spec : Prop :=
  ∀ n, P5378200338953067028.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P17455748609982832121

`10*a(n-1)-43` with `a(0)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173193

/-- `10*a(n-1)-43` -/
def P17455748609982832121.Spec : Prop :=
  ∀ n, P17455748609982832121.a n = A173193 (n + 1)

theorem P17455748609982832121.correct : P17455748609982832121.Spec := by
  intro n
  simp only [A173193, Nat.add_sub_cancel]

end A173193

/-! ## A173193.P4229420867972876746

`(2*10^(n+1)+43)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173193.P4229420867972876746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 10 ^ (n + 1) + 43 : ℚ) / 9

end

end A173193.P4229420867972876746

namespace A173193

/-- `(2*10^(n+1)+43)/9` -/
def P4229420867972876746.Spec : Prop :=
  ∀ n, P4229420867972876746.a n = (A173193 (n + 1) : ℚ)

theorem P4229420867972876746.correct : P4229420867972876746.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173193, Nat.add_sub_cancel, A173193.P4229420867972876746.a, A173193.P17455748609982832121.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173193, Nat.add_sub_cancel, A173193.P4229420867972876746.a, A173193.P17455748609982832121.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173193

/-! ## A173193.P7379919042421340328

`A173262(n+1)-2`
-/

namespace A173193.P7379919042421340328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173262 (n + 1) - 2

end

end A173193.P7379919042421340328

namespace A173193

/-- `A173262(n+1)-2` -/
def P7379919042421340328.Spec : Prop :=
  ∀ n, P7379919042421340328.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P8282646377440188373

`A093135(n+1)+4`
-/

namespace A173193.P8282646377440188373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093135 (n + 1) + 4

end

end A173193.P8282646377440188373

namespace A173193

/-- `A093135(n+1)+4` -/
def P8282646377440188373.Spec : Prop :=
  ∀ n, P8282646377440188373.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P9095535320221776749

`A002276(n+1)+5`
-/

namespace A173193.P9095535320221776749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) + 5

end

end A173193.P9095535320221776749

namespace A173193

/-- `A002276(n+1)+5` -/
def P9095535320221776749.Spec : Prop :=
  ∀ n, P9095535320221776749.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P2956787765723498435

`A165402(n+1)+6`
-/

namespace A173193.P2956787765723498435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165402 (n + 1) + 6

end

end A173193.P2956787765723498435

namespace A173193

/-- `A165402(n+1)+6` -/
def P2956787765723498435.Spec : Prop :=
  ∀ n, P2956787765723498435.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P8765837326009698625

`4*A178769(n)-1`
-/

namespace A173193.P8765837326009698625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A178769 n - 1

end

end A173193.P8765837326009698625

namespace A173193

/-- `4*A178769(n)-1` -/
def P8765837326009698625.Spec : Prop :=
  ∀ n, P8765837326009698625.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P4569805315376019465

`5*A093140(n)+2`
-/

namespace A173193.P4569805315376019465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A093140 n + 2

end

end A173193.P4569805315376019465

namespace A173193

/-- `5*A093140(n)+2` -/
def P4569805315376019465.Spec : Prop :=
  ∀ n, P4569805315376019465.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P5903438864259875918

`4*A093142(n)+3`
-/

namespace A173193.P5903438864259875918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A093142 n + 3

end

end A173193.P5903438864259875918

namespace A173193

/-- `4*A093142(n)+3` -/
def P5903438864259875918.Spec : Prop :=
  ∀ n, P5903438864259875918.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P6858514732847998978

`2*A173736(n+1)-3`
-/

namespace A173193.P6858514732847998978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173736 (n + 1) - 3

end

end A173193.P6858514732847998978

namespace A173193

/-- `2*A173736(n+1)-3` -/
def P6858514732847998978.Spec : Prop :=
  ∀ n, P6858514732847998978.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P18075183689794518997

`2*A000042(n+1)+5`
-/

namespace A173193.P18075183689794518997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000042 (n + 1) + 5

end

end A173193.P18075183689794518997

namespace A173193

/-- `2*A000042(n+1)+5` -/
def P18075183689794518997.Spec : Prop :=
  ∀ n, P18075183689794518997.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P2333685837675431822

`A228158(2*n+1)+5`
-/

namespace A173193.P2333685837675431822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228158 (2 * n + 1) + 5

end

end A173193.P2333685837675431822

namespace A173193

/-- `A228158(2*n+1)+5` -/
def P2333685837675431822.Spec : Prop :=
  ∀ n, P2333685837675431822.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P13423362949916914373

`A094623(2*n+1)+6`
-/

namespace A173193.P13423362949916914373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094623 (2 * n + 1) + 6

end

end A173193.P13423362949916914373

namespace A173193

/-- `A094623(2*n+1)+6` -/
def P13423362949916914373.Spec : Prop :=
  ∀ n, P13423362949916914373.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P10590152774613406773

`2*A173737(n+1)-5`
-/

namespace A173193.P10590152774613406773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173737 (n + 1) - 5

end

end A173193.P10590152774613406773

namespace A173193

/-- `2*A173737(n+1)-5` -/
def P10590152774613406773.Spec : Prop :=
  ∀ n, P10590152774613406773.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P7028835855593396262

`A322925(2*n+1)+6`
-/

namespace A173193.P7028835855593396262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 (2 * n + 1) + 6

end

end A173193.P7028835855593396262

namespace A173193

/-- `A322925(2*n+1)+6` -/
def P7028835855593396262.Spec : Prop :=
  ∀ n, P7028835855593396262.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P1350718168559088914

`or(1, 2*A034050(∑[n]+1))`
-/

namespace A173193.P1350718168559088914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A034050 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A173193.P1350718168559088914

namespace A173193

/-- `or(1, 2*A034050(∑[n]+1))` -/
def P1350718168559088914.Spec : Prop :=
  ∀ n, P1350718168559088914.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P2684354047741960497

`2*(A237342(n+5)/2+1)`
-/

namespace A173193.P2684354047741960497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A237342 (n + 5) : ℚ) / 2 + 1)

end

end A173193.P2684354047741960497

namespace A173193

/-- `2*(A237342(n+5)/2+1)` -/
def P2684354047741960497.Spec : Prop :=
  ∀ n, P2684354047741960497.a n = (A173193 (n + 1) : ℚ)

end A173193

/-! ## A173193.P12839175666139779021

`or(1, 2*(A105279(n)+2)+2)`
-/

namespace A173193.P12839175666139779021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (A105279 n + 2) + 2)

end

end A173193.P12839175666139779021

namespace A173193

/-- `or(1, 2*(A105279(n)+2)+2)` -/
def P12839175666139779021.Spec : Prop :=
  ∀ n, P12839175666139779021.a n = A173193 (n + 1)

end A173193

/-! ## A173193.P10551155301285391121

`∑[A035071(A028310(2*n))]`
-/

namespace A173193.P10551155301285391121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173193.P10551155301285391121

namespace A173193

/-- `∑[A035071(A028310(2*n))]` -/
def P10551155301285391121.Spec : Prop :=
  ∀ n, P10551155301285391121.a n = A173193 (n + 1)

end A173193

/-!
# A173194: a(n) = -sin^2 (2*n*arccos n) = - sin^2 (2*n*arcsin n).

The programs for A173194, there is no canonical definition to state claims against.
-/

/-! ## A173194.P4744863024487068880

`A173129(n)²-1`
-/

namespace A173194.P4744863024487068880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173129 n ^ 2 - 1

end

end A173194.P4744863024487068880

/-! ## A173194.P11541471504904661246

`A101124(A062725(n))²-1`
-/

namespace A173194.P11541471504904661246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A062725 n).toNat ^ 2 - 1

end

end A173194.P11541471504904661246

/-! ## A173194.P2192663107207123715

`xor(A173129(n)², A001222(A308052(n+1)))`
-/

namespace A173194.P2192663107207123715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A173129 n ^ 2) (A001222 (A308052 (n + 1)).toNat)

end

end A173194.P2192663107207123715

/-!
# A173195: Values of k such that 4^x + 4^y + 4^z = k^2 with arbitrary integers x <= y <= z.

The programs for A173195, the canonical program `A173195.P9910019717270672267` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173195 has offset 1).

The definition of A173195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173195.P9910019717270672267

`2^A000267(n)+2^A384688(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173195

/-- `2^A000267(n)+2^A384688(n)` -/
def P9910019717270672267.Spec : Prop :=
  ∀ n, P9910019717270672267.a n = (A173195 (n + 1) : ℚ)

end A173195

/-! ## A173195.P6957508489991986139

`A018900(round(n+1-sqrt(n+1))+n+1)`
-/

namespace A173195.P6957508489991986139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (SequenceMachineLib.roundAway ((n + 1 : ℝ) - Real.sqrt (n + 1 : ℝ)) + (n + 1 : ℤ)).toNat

end

end A173195.P6957508489991986139

namespace A173195

/-- `A018900(round(n+1-sqrt(n+1))+n+1)` -/
def P6957508489991986139.Spec : Prop :=
  ∀ n, P6957508489991986139.a n = A173195 (n + 1)

end A173195

/-! ## A173195.P18410357648732852935

`record[lcm(A018900(n+1), A130125(n))]`
-/

namespace A173195.P18410357648732852935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018900 (n + 1)) (A130125 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173195.P18410357648732852935

namespace A173195

/-- `record[lcm(A018900(n+1), A130125(n))]` -/
def P18410357648732852935.Spec : Prop :=
  ∀ n, (P18410357648732852935.a n : ℤ) = A173195 (n + 1)

end A173195

/-! ## A173195.P5075557197962297088

`record[A018900(n+1)*A128174(n+1)]`
-/

namespace A173195.P5075557197962297088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) * A128174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173195.P5075557197962297088

namespace A173195

/-- `record[A018900(n+1)*A128174(n+1)]` -/
def P5075557197962297088.Spec : Prop :=
  ∀ n, P5075557197962297088.a n = A173195 (n + 1)

end A173195

/-! ## A173195.P1835913959120619664

`record[A018900(1-A025581(n)+n)]`
-/

namespace A173195.P1835913959120619664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (1 - A025581 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173195.P1835913959120619664

namespace A173195

/-- `record[A018900(1-A025581(n)+n)]` -/
def P1835913959120619664.Spec : Prop :=
  ∀ n, P1835913959120619664.a n = A173195 (n + 1)

end A173195

/-! ## A173195.P2848811369780941914

`A173786(ceil(sqrt(n+1)+2*n))`
-/

namespace A173195.P2848811369780941914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 ⌈Real.sqrt (n + 1 : ℝ) + (2 * n : ℝ)⌉.toNat

end

end A173195.P2848811369780941914

namespace A173195

/-- `A173786(ceil(sqrt(n+1)+2*n))` -/
def P2848811369780941914.Spec : Prop :=
  ∀ n, P2848811369780941914.a n = A173195 (n + 1)

end A173195

/-! ## A173195.P11537342652727020409

`A048645(∑[char[(n+1)²]+2]+1)`
-/

namespace A173195.P11537342652727020409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A173195.P11537342652727020409

namespace A173195

/-- `A048645(∑[char[(n+1)²]+2]+1)` -/
def P11537342652727020409.Spec : Prop :=
  ∀ n, P11537342652727020409.a n = A173195 (n + 1)

end A173195

/-! ## A173195.P9250912308747380886

`A099627(eq[1, A225750(n)])+1`
-/

namespace A173195.P9250912308747380886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A173195.P9250912308747380886

namespace A173195

/-- `A099627(eq[1, A225750(n)])+1` -/
def P9250912308747380886.Spec : Prop :=
  ∀ n, P9250912308747380886.a n = A173195 (n + 1)

end A173195

/-! ## A173195.P11070974831506158332

`∩[A018900(n+1), A100290(n+1)]`
-/

namespace A173195.P11070974831506158332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173195.P11070974831506158332

namespace A173195

/-- `∩[A018900(n+1), A100290(n+1)]` -/
def P11070974831506158332.Spec : Prop :=
  ∀ n, (P11070974831506158332.a n : ℤ) = A173195 (n + 1)

end A173195

/-! ## A173195.P17483471973623980578

`record[and(3-n, 3*(n-3))]`
-/

namespace A173195.P17483471973623980578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 - (n : ℤ)) (3 * ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173195.P17483471973623980578

namespace A173195

/-- `record[and(3-n, 3*(n-3))]` -/
def P17483471973623980578.Spec : Prop :=
  ∀ n, P17483471973623980578.a n = A173195 (n + 1)

end A173195

/-!
# A173196: Partial sums of A002620.

The programs for A173196, the canonical program `A173196.P2423826778333667374` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173196 has offset 0).

The definition of A173196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173196.P15956897617179771754

`ogf(x^2/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A173196.P15956897617179771754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, 2, 2, -3, 1] n

end

end A173196.P15956897617179771754

namespace A173196

/-- `ogf(x^2/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P15956897617179771754.Spec : Prop :=
  ∀ n, P15956897617179771754.a n = A173196 n

end A173196

/-! ## A173196.P5810546212191817512

`a(n-2)+n*(n-1)/2` with `a(0)=0, a(1)=0`
-/

namespace A173196.P5810546212191817512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + ((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2

end

end A173196.P5810546212191817512

namespace A173196

/-- `a(n-2)+n*(n-1)/2` -/
def P5810546212191817512.Spec : Prop :=
  ∀ n, P5810546212191817512.a n = (A173196 n : ℚ)

end A173196

/-! ## A173196.P2423826778333667374

`floor((2*n^3+3*n²-2*n)/24)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173196

/-- `floor((2*n^3+3*n²-2*n)/24)` -/
def P2423826778333667374.Spec : Prop :=
  ∀ n, P2423826778333667374.a n = A173196 n

theorem P2423826778333667374.correct : P2423826778333667374.Spec := by
  intro n
  simp only [A173196]

end A173196

/-! ## A173196.P13858427177201064485

`∑[∑[and(n, -2)]]/2`
-/

namespace A173196.P13858427177201064485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A173196.P13858427177201064485

namespace A173196

/-- `∑[∑[and(n, -2)]]/2` -/
def P13858427177201064485.Spec : Prop :=
  ∀ n, P13858427177201064485.a n = (A173196 n : ℚ)

end A173196

/-! ## A173196.P8966341761244443266

`∑[∑[n-∑[n%2]]]`
-/

namespace A173196.P8966341761244443266
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173196.P8966341761244443266

namespace A173196

/-- `∑[∑[n-∑[n%2]]]` -/
def P8966341761244443266.Spec : Prop :=
  ∀ n, P8966341761244443266.a n = A173196 n

end A173196

/-! ## A173196.P8770972084964827414

`∑[(or(1, n²)-1)/4]`
-/

namespace A173196.P8770972084964827414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n ^ 2) : ℤ) - 1 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173196.P8770972084964827414

namespace A173196

/-- `∑[(or(1, n²)-1)/4]` -/
def P8770972084964827414.Spec : Prop :=
  ∀ n, P8770972084964827414.a n = (A173196 n : ℚ)

end A173196

/-! ## A173196.P2494843617106560351

`a(n-2)+C(n, 2)` with `a(0)=0, a(1)=0`
-/

namespace A173196.P2494843617106560351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + Nat.choose n 2

end

end A173196.P2494843617106560351

namespace A173196

/-- `a(n-2)+C(n, 2)` -/
def P2494843617106560351.Spec : Prop :=
  ∀ n, (P2494843617106560351.a n : ℤ) = A173196 n

end A173196

/-! ## A173196.P2388462909983285980

`∑[∑[a(n-2)+1]]` with `a(0)=0, a(1)=0`
-/

namespace A173196.P2388462909983285980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173196.P2388462909983285980

namespace A173196

/-- `∑[∑[a(n-2)+1]]` -/
def P2388462909983285980.Spec : Prop :=
  ∀ n, (P2388462909983285980.a n : ℤ) = A173196 n

end A173196

/-! ## A173196.P14985172762604435222

`∑[C(n, 2)]-a(n-1)` with `a(0)=0`
-/

namespace A173196.P14985172762604435222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A173196.P14985172762604435222

namespace A173196

/-- `∑[C(n, 2)]-a(n-1)` -/
def P14985172762604435222.Spec : Prop :=
  ∀ n, P14985172762604435222.a n = A173196 n

end A173196

/-! ## A173196.P14510809156425538865

`-∑[∑[a(n-2)-1]]` with `a(0)=0, a(1)=0`
-/

namespace A173196.P14510809156425538865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173196.P14510809156425538865

namespace A173196

/-- `-∑[∑[a(n-2)-1]]` -/
def P14510809156425538865.Spec : Prop :=
  ∀ n, P14510809156425538865.a n = A173196 n

end A173196

/-! ## A173196.P2808233970444438284

`∑[n]-(n-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A173196.P2808233970444438284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - a (n - 2))

end

end A173196.P2808233970444438284

namespace A173196

/-- `∑[n]-(n-a(n-2))` -/
def P2808233970444438284.Spec : Prop :=
  ∀ n, P2808233970444438284.a n = A173196 n

end A173196

/-! ## A173196.P4338469526274152126

`floor(a(n-1)+(n/2)²)` with `a(0)=0`
-/

namespace A173196.P4338469526274152126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / 2) ^ 2⌋

end

end A173196.P4338469526274152126

namespace A173196

/-- `floor(a(n-1)+(n/2)²)` -/
def P4338469526274152126.Spec : Prop :=
  ∀ n, P4338469526274152126.a n = A173196 n

end A173196

/-! ## A173196.P7769391717194050490

`round(a(n-1)+(n/2)²)` with `a(0)=0`
-/

namespace A173196.P7769391717194050490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + ((n : ℚ) / 2) ^ 2)

end

end A173196.P7769391717194050490

namespace A173196

/-- `round(a(n-1)+(n/2)²)` -/
def P7769391717194050490.Spec : Prop :=
  ∀ n, P7769391717194050490.a n = A173196 n

end A173196

/-! ## A173196.P6564953837884322145

`∑[∑[n+1-gcd(2, n+1)]]/2`
-/

namespace A173196.P6564953837884322145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.gcd 2 (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A173196.P6564953837884322145

namespace A173196

/-- `∑[∑[n+1-gcd(2, n+1)]]/2` -/
def P6564953837884322145.Spec : Prop :=
  ∀ n, P6564953837884322145.a n = (A173196 n : ℚ)

end A173196

/-! ## A173196.P10818535636596341026

`C(2*n-(n-1), 3)-a(n-1)` with `a(0)=0`
-/

namespace A173196.P10818535636596341026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 3 : ℤ) - a (n - 1)

end

end A173196.P10818535636596341026

namespace A173196

/-- `C(2*n-(n-1), 3)-a(n-1)` -/
def P10818535636596341026.Spec : Prop :=
  ∀ n, P10818535636596341026.a n = A173196 n

end A173196

/-! ## A173196.P3501212745998656866

`n-(a(n-3)-(a(n-1)+a(n-2))+1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A173196.P3501212745998656866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (n : ℤ) - (a (n - 3) - (a (n - 1) + a (n - 2)) + 1)

end

end A173196.P3501212745998656866

namespace A173196

/-- `n-(a(n-3)-(a(n-1)+a(n-2))+1)` -/
def P3501212745998656866.Spec : Prop :=
  ∀ n, P3501212745998656866.a n = A173196 n

end A173196

/-! ## A173196.P10303490766889707613

`∑[A002620(n)]`
-/

namespace A173196.P10303490766889707613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173196.P10303490766889707613

namespace A173196

/-- `∑[A002620(n)]` -/
def P10303490766889707613.Spec : Prop :=
  ∀ n, P10303490766889707613.a n = A173196 n

end A173196

/-! ## A173196.P18087702067504483405

`∑[sqrt(A030179(n))]`
-/

namespace A173196.P18087702067504483405
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030179 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173196.P18087702067504483405

namespace A173196

/-- `∑[sqrt(A030179(n))]` -/
def P18087702067504483405.Spec : Prop :=
  ∀ n, P18087702067504483405.a n = (A173196 n : ℝ)

end A173196

/-! ## A173196.P11370740529884872744

`∑[∑[A004526(n)]]`
-/

namespace A173196.P11370740529884872744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173196.P11370740529884872744

namespace A173196

/-- `∑[∑[A004526(n)]]` -/
def P11370740529884872744.Spec : Prop :=
  ∀ n, P11370740529884872744.a n = A173196 n

end A173196

/-! ## A173196.P9778635870276888966

`∑[A078126(n)+1]`
-/

namespace A173196.P9778635870276888966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173196.P9778635870276888966

namespace A173196

/-- `∑[A078126(n)+1]` -/
def P9778635870276888966.Spec : Prop :=
  ∀ n, P9778635870276888966.a n = A173196 n

end A173196

/-!
# A173197: a(0)=1, a(n)= 2+2^n/6+4*(-1)^n/3, n>0.

The programs for A173197, the canonical program `A173197.P9582521259821080596` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173197 has offset 0).

The definition of A173197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173197.P632756845211445185

`ogf((1-x+x^2-5x^3)/(1-2x-x^2+2x^3))`
-/

namespace A173197.P632756845211445185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, -5] [1, -2, -1, 2] n

end

end A173197.P632756845211445185

namespace A173197

/-- `ogf((1-x+x^2-5x^3)/(1-2x-x^2+2x^3))` -/
def P632756845211445185.Spec : Prop :=
  ∀ n, P632756845211445185.a n = A173197 n

end A173197

/-! ## A173197.P9582521259821080596

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173197

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P9582521259821080596.Spec : Prop :=
  ∀ n, P9582521259821080596.a n = A173197 n

theorem P9582521259821080596.correct : P9582521259821080596.Spec := by
  intro n
  simp only [A173197]

end A173197

/-! ## A173197.P12767854661259134651

`∑[ogf((-1+x-x^2+5x^3)/(-1+x+2x^2))]`
-/

namespace A173197.P12767854661259134651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, -5] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173197.P12767854661259134651

namespace A173197

/-- `∑[ogf((-1+x-x^2+5x^3)/(-1+x+2x^2))]` -/
def P12767854661259134651.Spec : Prop :=
  ∀ n, P12767854661259134651.a n = A173197 n

end A173197

/-! ## A173197.P16185824164255622568

`a(n-2)+2^(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A173197.P16185824164255622568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A173197.P16185824164255622568

namespace A173197

/-- `a(n-2)+2^(n-3)` -/
def P16185824164255622568.Spec : Prop :=
  ∀ n, P16185824164255622568.a n = (A173197 n : ℚ)

end A173197

/-! ## A173197.P14250229448279254884

`2*a(n-2)+a(n-1)-4` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A173197.P14250229448279254884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * a (n - 2) + (a (n - 1) - 4)

end

end A173197.P14250229448279254884

namespace A173197

/-- `2*a(n-2)+a(n-1)-4` -/
def P14250229448279254884.Spec : Prop :=
  ∀ n, P14250229448279254884.a n = A173197 n

end A173197

/-! ## A173197.P16296139763991125247

`2*a(n-2)-(4-a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A173197.P16296139763991125247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * a (n - 2) - (4 - a (n - 1))

end

end A173197.P16296139763991125247

namespace A173197

/-- `2*a(n-2)-(4-a(n-1))` -/
def P16296139763991125247.Spec : Prop :=
  ∀ n, P16296139763991125247.a n = A173197 n

end A173197

/-! ## A173197.P12152728936661488103

`a(n-2)-4+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A173197.P12152728936661488103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 2) - 4 + (a (n - 1) + a (n - 2))

end

end A173197.P12152728936661488103

namespace A173197

/-- `a(n-2)-4+a(n-1)+a(n-2)` -/
def P12152728936661488103.Spec : Prop :=
  ∀ n, P12152728936661488103.a n = A173197 n

end A173197

/-! ## A173197.P13222035864759944427

`floor(a(n-1)-(4-a(n-2)-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A173197.P13222035864759944427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) - (4 - a (n - 2) - a (n - 2))

end

end A173197.P13222035864759944427

namespace A173197

/-- `floor(a(n-1)-(4-a(n-2)-a(n-2)))` -/
def P13222035864759944427.Spec : Prop :=
  ∀ n, P13222035864759944427.a n = A173197 n

end A173197

/-! ## A173197.P7371242093799707109

`A154879(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A173197.P7371242093799707109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A154879 (n - 2) + a (n - 1)

end

end A173197.P7371242093799707109

namespace A173197

/-- `A154879(n-2)+a(n-1)` -/
def P7371242093799707109.Spec : Prop :=
  ∀ n, P7371242093799707109.a n = A173197 n

end A173197

/-! ## A173197.P4159885275890424509

`A140504(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A173197.P4159885275890424509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A140504 (n - 2) - a (n - 1)

end

end A173197.P4159885275890424509

namespace A173197

/-- `A140504(n-2)-a(n-1)` -/
def P4159885275890424509.Spec : Prop :=
  ∀ n, P4159885275890424509.a n = A173197 n

end A173197

/-! ## A173197.P5082589477367850074

`A000975(A289207(n))+A040001(n)²`
-/

namespace A173197.P5082589477367850074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A289207 n).toNat + A040001 n ^ 2

end

end A173197.P5082589477367850074

namespace A173197

/-- `A000975(A289207(n))+A040001(n)²` -/
def P5082589477367850074.Spec : Prop :=
  ∀ n, P5082589477367850074.a n = A173197 n

end A173197

/-! ## A173197.P16062043382390795268

`A135351(n)+A040001(n)*A280193(n)`
-/

namespace A173197.P16062043382390795268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 n + A040001 n * A280193 n

end

end A173197.P16062043382390795268

namespace A173197

/-- `A135351(n)+A040001(n)*A280193(n)` -/
def P16062043382390795268.Spec : Prop :=
  ∀ n, P16062043382390795268.a n = A173197 n

end A173197

/-! ## A173197.P10833379637486372218

`Δ[A056469(n-1)-a(n-1)]+2` with `a(0)=3, a(1)=2`
-/

namespace A173197.P10833379637486372218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  A056469 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A173197.P10833379637486372218

namespace A173197

/-- `Δ[A056469(n-1)-a(n-1)]+2` -/
def P10833379637486372218.Spec : Prop :=
  ∀ n, P10833379637486372218.a n = A173197 n

end A173197

/-! ## A173197.P11847238704005941218

`2-A000038(n)+A005578(n)-A135351(n)`
-/

namespace A173197.P11847238704005941218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000038 n + (A005578 n - A135351 n)

end

end A173197.P11847238704005941218

namespace A173197

/-- `2-A000038(n)+A005578(n)-A135351(n)` -/
def P11847238704005941218.Spec : Prop :=
  ∀ n, P11847238704005941218.a n = A173197 n

end A173197

/-! ## A173197.P11563239814787915741

`A097073(n)-A000918(abs(1-n))`
-/

namespace A173197.P11563239814787915741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097073 n - A000918 |1 - (n : ℤ)|.toNat

end

end A173197.P11563239814787915741

namespace A173197

/-- `A097073(n)-A000918(abs(1-n))` -/
def P11563239814787915741.Spec : Prop :=
  ∀ n, P11563239814787915741.a n = A173197 n

end A173197

/-! ## A173197.P4464748264574396939

`(A005578(n)-A135351(n)+2)%A000051(n)`
-/

namespace A173197.P4464748264574396939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005578 n - A135351 n + 2) (A000051 n)

end

end A173197.P4464748264574396939

namespace A173197

/-- `(A005578(n)-A135351(n)+2)%A000051(n)` -/
def P4464748264574396939.Spec : Prop :=
  ∀ n, P4464748264574396939.a n = A173197 n

end A173197

/-!
# A173199: a(n) = a(n-1)+a(n-2)-Floor(a(n-3)/2)-Floor(a(n-8)/2); initial terms are 0, 1, 1, 2, 3, 5, 7, 11.

The programs for A173199, the canonical program `A173199.P4739552802157099714` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173199 has offset 0).

The definition of A173199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-floor(a(n-3)/2)-floor(a(n-8)/2)` (program `A173199.P4739552802157099714`, by `A173199.P4739552802157099714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173199.P4739552802157099714

`a(n-1)+a(n-2)-floor(a(n-3)/2)-floor(a(n-8)/2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=7, a(7)=11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173199

/-- `a(n-1)+a(n-2)-floor(a(n-3)/2)-floor(a(n-8)/2)` -/
def P4739552802157099714.Spec : Prop :=
  ∀ n, P4739552802157099714.a n = A173199 n

theorem P4739552802157099714.correct : P4739552802157099714.Spec := by
  intro n
  simp only [A173199]

end A173199

/-! ## A173199.P7963971758685965737

`A172471(A132831(n))-∑[A267417(n)]`
-/

namespace A173199.P7963971758685965737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A132831 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173199.P7963971758685965737

namespace A173199

/-- `A172471(A132831(n))-∑[A267417(n)]` -/
def P7963971758685965737.Spec : Prop :=
  ∀ n, P7963971758685965737.a n = A173199 n

end A173199

/-! ## A173199.P1524649198867062444

`A172471(A132831(n))-A000194(A008620(n))`
-/

namespace A173199.P1524649198867062444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A132831 n).toNat - A000194 (A008620 n).toNat

end

end A173199.P1524649198867062444

namespace A173199

/-- `A172471(A132831(n))-A000194(A008620(n))` -/
def P1524649198867062444.Spec : Prop :=
  ∀ n, P1524649198867062444.a n = A173199 n

end A173199

/-! ## A173199.P16515804764210497378

`A003056(A000975(n)-A000065(n))`
-/

namespace A173199.P16515804764210497378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000975 n - A000065 n).toNat

end

end A173199.P16515804764210497378

namespace A173199

/-- `A003056(A000975(n)-A000065(n))` -/
def P16515804764210497378.Spec : Prop :=
  ∀ n, P16515804764210497378.a n = A173199 n

end A173199

/-! ## A173199.P14229978519306528757

`A003056(A014113(n)-A000065(n))`
-/

namespace A173199.P14229978519306528757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A014113 n - A000065 n).toNat

end

end A173199.P14229978519306528757

namespace A173199

/-- `A003056(A014113(n)-A000065(n))` -/
def P14229978519306528757.Spec : Prop :=
  ∀ n, P14229978519306528757.a n = A173199 n

end A173199

