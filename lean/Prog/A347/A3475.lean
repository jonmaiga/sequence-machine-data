import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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
# A347501: Number of dominating sets in the n-alkane graph.

The programs for A347501, the canonical program `A347501.P11220193665609250633` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347501 has offset 1).

The definition of A347501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347501.P10494683398487443463

`ogf((17-4x)/(1-5x))`
-/

namespace A347501.P10494683398487443463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [17, -4] [1, -5] n

end

end A347501.P10494683398487443463

namespace A347501

/-- `ogf((17-4x)/(1-5x))` -/
def P10494683398487443463.Spec : Prop :=
  ∀ n, P10494683398487443463.a n = A347501 (n + 1)

end A347501

/-! ## A347501.P11220193665609250633

`5*a(n-1)` with `a(0)=17, a(1)=81`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347501

/-- `5*a(n-1)` -/
def P11220193665609250633.Spec : Prop :=
  ∀ n, (P11220193665609250633.a n : ℤ) = A347501 (n + 1)

theorem P11220193665609250633.correct : P11220193665609250633.Spec := by
  intro n
  simp only [A347501, Nat.add_sub_cancel]

end A347501

/-! ## A347501.P4507830171016665926

`ceil(9*9*5^(n-1))`
-/

namespace A347501.P4507830171016665926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈9 * (9 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))⌉

end

end A347501.P4507830171016665926

namespace A347501

/-- `ceil(9*9*5^(n-1))` -/
def P4507830171016665926.Spec : Prop :=
  ∀ n, P4507830171016665926.a n = A347501 (n + 1)

end A347501

/-! ## A347501.P6959187275359696698

`Δ[A198769(n)+A189274(n+1)]`
-/

namespace A347501.P6959187275359696698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198769 n + A189274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347501.P6959187275359696698

namespace A347501

/-- `Δ[A198769(n)+A189274(n+1)]` -/
def P6959187275359696698.Spec : Prop :=
  ∀ n, P6959187275359696698.a n = A347501 (n + 1)

end A347501

/-! ## A347501.P12187382263060093435

`Δ[A199312(n)]-A189274(n+1)`
-/

namespace A347501.P12187382263060093435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A189274 (n + 1)

end

end A347501.P12187382263060093435

namespace A347501

/-- `Δ[A199312(n)]-A189274(n+1)` -/
def P12187382263060093435.Spec : Prop :=
  ∀ n, P12187382263060093435.a n = A347501 (n + 1)

end A347501

/-! ## A347501.P5391472843590345757

`A189274(n+2)+Δ[A189274(n+1)]`
-/

namespace A347501.P5391472843590345757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189274 (n + 2) + (f1 (n + 1) - f1 n)

end

end A347501.P5391472843590345757

namespace A347501

/-- `A189274(n+2)+Δ[A189274(n+1)]` -/
def P5391472843590345757.Spec : Prop :=
  ∀ n, P5391472843590345757.a n = A347501 (n + 1)

end A347501

/-! ## A347501.P188521070903875015

`Δ[Δ[A093136(n)]]/A000079(n)`
-/

namespace A347501.P188521070903875015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093136 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A347501.P188521070903875015

namespace A347501

/-- `Δ[Δ[A093136(n)]]/A000079(n)` -/
def P188521070903875015.Spec : Prop :=
  ∀ n, P188521070903875015.a n = (A347501 (n + 1) : ℚ)

end A347501

/-!
# A347502: Number of dominating sets in the n-cycle complement graph.

The programs for A347502, the canonical program `A347502.P8839209823903613974` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347502 has offset 0).

The definition of A347502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347502.P8839209823903613974

`A000079(n)-A005408(n-char[4])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A347502

/-- `A000079(n)-A005408(n-char[4])` -/
def P8839209823903613974.Spec : Prop :=
  ∀ n, P8839209823903613974.a n = A347502 n

theorem P8839209823903613974.correct : P8839209823903613974.Spec := by
  intro n
  simp only [A347502]

end A347502

/-! ## A347502.P6238367697023367923

`and(2, A174690(n))+Δ[A000079(n)-n²]`
-/

namespace A347502.P6238367697023367923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A174690 n) + (f1 (n + 1) - f1 n)

end

end A347502.P6238367697023367923

namespace A347502

/-- `and(2, A174690(n))+Δ[A000079(n)-n²]` -/
def P6238367697023367923.Spec : Prop :=
  ∀ n, P6238367697023367923.a n = A347502 n

end A347502

/-! ## A347502.P14485380300629821987

`A033999(A255898(n+1))+A005803(n)`
-/

namespace A347502.P14485380300629821987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A255898 (n + 1)).toNat + A005803 n

end

end A347502.P14485380300629821987

namespace A347502

/-- `A033999(A255898(n+1))+A005803(n)` -/
def P14485380300629821987.Spec : Prop :=
  ∀ n, P14485380300629821987.a n = A347502 n

end A347502

/-! ## A347502.P5132424477012382077

`record[A059268(n)]-A005408(n-char[4])`
-/

namespace A347502.P5132424477012382077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005408 (n - (if ∃ j, f2 j = n then 1 else 0))

end

end A347502.P5132424477012382077

namespace A347502

/-- `record[A059268(n)]-A005408(n-char[4])` -/
def P5132424477012382077.Spec : Prop :=
  ∀ n, P5132424477012382077.a n = A347502 n

end A347502

/-! ## A347502.P11697234374764569002

`A000051(n)-A083220(A223133(n))`
-/

namespace A347502.P11697234374764569002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A083220 (A223133 n).toNat

end

end A347502.P11697234374764569002

namespace A347502

/-- `A000051(n)-A083220(A223133(n))` -/
def P11697234374764569002.Spec : Prop :=
  ∀ n, P11697234374764569002.a n = A347502 n

end A347502

/-!
# A347503: Number of dominating sets in the n-dipyramidal graph.

The programs for A347503, the canonical program `A347503.P9761375208842288419` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347503 has offset 1).

The definition of A347503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347503.P9761375208842288419

`4*a(n-1)-4*a(n-2)-a(n-4)+2*a(n-5)` with `a(0)=5, a(1)=13, a(2)=29, a(3)=57, a(4)=115`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347503

/-- `4*a(n-1)-4*a(n-2)-a(n-4)+2*a(n-5)` -/
def P9761375208842288419.Spec : Prop :=
  ∀ n, P9761375208842288419.a n = A347503 (n + 1)

theorem P9761375208842288419.correct : P9761375208842288419.Spec := by
  intro n
  simp only [A347503, Nat.add_sub_cancel]

end A347503

/-! ## A347503.P12648103553128089930

`A001644(n+1)+6*2^n-2`
-/

namespace A347503.P12648103553128089930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + ((6 * 2 ^ n : ℤ) - 2)

end

end A347503.P12648103553128089930

namespace A347503

/-- `A001644(n+1)+6*2^n-2` -/
def P12648103553128089930.Spec : Prop :=
  ∀ n, P12648103553128089930.a n = A347503 (n + 1)

end A347503

/-! ## A347503.P5744054928171873056

`A033484(n+1)+A001644(n+1)`
-/

namespace A347503.P5744054928171873056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (n + 1) + A001644 (n + 1)

end

end A347503.P5744054928171873056

namespace A347503

/-- `A033484(n+1)+A001644(n+1)` -/
def P5744054928171873056.Spec : Prop :=
  ∀ n, P5744054928171873056.a n = A347503 (n + 1)

end A347503

/-! ## A347503.P8813498153640783808

`A213661(n+2)+A000918(n+2)`
-/

namespace A347503.P8813498153640783808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213661 (n + 2) + A000918 (n + 2)

end

end A347503.P8813498153640783808

namespace A347503

/-- `A213661(n+2)+A000918(n+2)` -/
def P8813498153640783808.Spec : Prop :=
  ∀ n, P8813498153640783808.a n = A347503 (n + 1)

end A347503

/-! ## A347503.P3461448851294942420

`A213661(n+2)+∑[A000079(n+1)]`
-/

namespace A347503.P3461448851294942420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213661 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347503.P3461448851294942420

namespace A347503

/-- `A213661(n+2)+∑[A000079(n+1)]` -/
def P3461448851294942420.Spec : Prop :=
  ∀ n, P3461448851294942420.a n = A347503 (n + 1)

end A347503

/-! ## A347503.P1337816454100818606

`A213661(n+2)+∑[A060546(2*(n+1))]`
-/

namespace A347503.P1337816454100818606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213661 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347503.P1337816454100818606

namespace A347503

/-- `A213661(n+2)+∑[A060546(2*(n+1))]` -/
def P1337816454100818606.Spec : Prop :=
  ∀ n, P1337816454100818606.a n = A347503 (n + 1)

end A347503

/-!
# A347506: Number of self-avoiding walks on a 2-dimensional square lattice where the walk consists of steps with incrementing lengths equal to the square numbers, from 1 to n^2.

The programs for A347506, there is no canonical definition to state claims against.
-/

/-! ## A347506.P14794701029042394730

`A061993(n)+A028310(A336262(n))`
-/

namespace A347506.P14794701029042394730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061993 n + A028310 (A336262 n).toNat

end

end A347506.P14794701029042394730

/-! ## A347506.P13854169869083123634

`A336262(n)+lcm(A061993(n), A282741(n))`
-/

namespace A347506.P13854169869083123634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336262 n + (Int.lcm (A061993 n) (A282741 n) : ℤ)

end

end A347506.P13854169869083123634

/-!
# A347510: Number of dominating sets in the n-triangular honeycomb obtuse knight graph.

The programs for A347510, there is no canonical definition to state claims against.
-/

/-! ## A347510.P4319425402148250739

`A008706(xor(A097005(n), A287228(n+1)))`
-/

namespace A347510.P4319425402148250739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.xor (A097005 n) (A287228 (n + 1))).toNat

end

end A347510.P4319425402148250739

/-!
# A347512: Number of minimal dominating sets in the n-book graph.

The programs for A347512, the canonical program `A347512.P5156005966716587028` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347512 has offset 1).

The definition of A347512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347512.P15039326010312640143

`∑[ceil(atan(n))^n]+5`
-/

namespace A347512.P15039326010312640143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A347512.P15039326010312640143

namespace A347512

/-- `∑[ceil(atan(n))^n]+5` -/
def P15039326010312640143.Spec : Prop :=
  ∀ n, P15039326010312640143.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P16033218110707710585

`ogf((6-11x+2x^2)/(1-3x+2x^2))`
-/

namespace A347512.P16033218110707710585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -11, 2] [1, -3, 2] n

end

end A347512.P16033218110707710585

namespace A347512

/-- `ogf((6-11x+2x^2)/(1-3x+2x^2))` -/
def P16033218110707710585.Spec : Prop :=
  ∀ n, P16033218110707710585.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P5156005966716587028

`record[abs(2-2^n)+5]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347512

/-- `record[abs(2-2^n)+5]` -/
def P5156005966716587028.Spec : Prop :=
  ∀ n, P5156005966716587028.a n = A347512 (n + 1)

theorem P5156005966716587028.correct : P5156005966716587028.Spec := by
  intro n
  simp only [A347512, Nat.add_sub_cancel]

end A347512

/-! ## A347512.P15245724963815228273

`∑[(2-char[1])^n]+5`
-/

namespace A347512.P15245724963815228273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A347512.P15245724963815228273

namespace A347512

/-- `∑[(2-char[1])^n]+5` -/
def P15245724963815228273.Spec : Prop :=
  ∀ n, P15245724963815228273.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P11488249322170540835

`∑[2*a(n-1)]` with `a(0)=6, a(1)=1, a(2)=4`
-/

namespace A347512.P11488249322170540835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347512.P11488249322170540835

namespace A347512

/-- `∑[2*a(n-1)]` -/
def P11488249322170540835.Spec : Prop :=
  ∀ n, (P11488249322170540835.a n : ℤ) = A347512 (n + 1)

end A347512

/-! ## A347512.P17830051643820987280

`abs(2*a(n-1)-3)` with `a(0)=6, a(1)=7`
-/

namespace A347512.P17830051643820987280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7] fun n a =>
  |2 * a (n - 1) - 3|

end

end A347512.P17830051643820987280

namespace A347512

/-- `abs(2*a(n-1)-3)` -/
def P17830051643820987280.Spec : Prop :=
  ∀ n, P17830051643820987280.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P15709158890546364013

`or(2^(n+1), 3*ceil(acot(n)))`
-/

namespace A347512.P15709158890546364013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ (n + 1) : ℤ) (3 * ⌈SequenceMachineLib.acot (n : ℝ)⌉)

end

end A347512.P15709158890546364013

namespace A347512

/-- `or(2^(n+1), 3*ceil(acot(n)))` -/
def P15709158890546364013.Spec : Prop :=
  ∀ n, P15709158890546364013.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P5313146794817108097

`or(2^(n+1), lcm(3, ceil(acot(n))))`
-/

namespace A347512.P5313146794817108097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ (n + 1)) (Int.lcm 3 ⌈SequenceMachineLib.acot (n : ℝ)⌉)

end

end A347512.P5313146794817108097

namespace A347512

/-- `or(2^(n+1), lcm(3, ceil(acot(n))))` -/
def P5313146794817108097.Spec : Prop :=
  ∀ n, (P5313146794817108097.a n : ℤ) = A347512 (n + 1)

end A347512

/-! ## A347512.P16634811245763903447

`or(4-ceil(sin(n)²), 2^(n+1))`
-/

namespace A347512.P16634811245763903447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 - ⌈Real.sin (n : ℝ) ^ 2⌉) (2 ^ (n + 1) : ℤ)

end

end A347512.P16634811245763903447

namespace A347512

/-- `or(4-ceil(sin(n)²), 2^(n+1))` -/
def P16634811245763903447.Spec : Prop :=
  ∀ n, P16634811245763903447.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P17361243590825501828

`or(2, A198633(n)+1)`
-/

namespace A347512.P17361243590825501828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A198633 n + 1)

end

end A347512.P17361243590825501828

namespace A347512

/-- `or(2, A198633(n)+1)` -/
def P17361243590825501828.Spec : Prop :=
  ∀ n, P17361243590825501828.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P6246084847563680561

`or(2, A256994(n+3))`
-/

namespace A347512.P6246084847563680561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A256994 (n + 3))

end

end A347512.P6246084847563680561

namespace A347512

/-- `or(2, A256994(n+3))` -/
def P6246084847563680561.Spec : Prop :=
  ∀ n, P6246084847563680561.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P8361655506166460158

`or(2, A343177(2*n))`
-/

namespace A347512.P8361655506166460158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A343177 (2 * n))

end

end A347512.P8361655506166460158

namespace A347512

/-- `or(2, A343177(2*n))` -/
def P8361655506166460158.Spec : Prop :=
  ∀ n, P8361655506166460158.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P4326547011350506867

`A343177(A004277(n))`
-/

namespace A347512.P4326547011350506867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 (A004277 n).toNat

end

end A347512.P4326547011350506867

namespace A347512

/-- `A343177(A004277(n))` -/
def P4326547011350506867.Spec : Prop :=
  ∀ n, P4326547011350506867.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P14552779710809986941

`A343177(A004275(n+1))`
-/

namespace A347512.P14552779710809986941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 (A004275 (n + 1)).toNat

end

end A347512.P14552779710809986941

namespace A347512

/-- `A343177(A004275(n+1))` -/
def P14552779710809986941.Spec : Prop :=
  ∀ n, P14552779710809986941.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P12257294695364277889

`∑[a(n-1)²/a(n-2)]` with `a(0)=6, a(1)=1, a(2)=4, a(3)=8`
-/

namespace A347512.P12257294695364277889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [6, 1, 4, 8] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347512.P12257294695364277889

namespace A347512

/-- `∑[a(n-1)²/a(n-2)]` -/
def P12257294695364277889.Spec : Prop :=
  ∀ n, P12257294695364277889.a n = (A347512 (n + 1) : ℚ)

end A347512

/-! ## A347512.P1378401469595067521

`A340161(∑[n]+2)`
-/

namespace A347512.P1378401469595067521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A347512.P1378401469595067521

namespace A347512

/-- `A340161(∑[n]+2)` -/
def P1378401469595067521.Spec : Prop :=
  ∀ n, P1378401469595067521.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P14034456673949075865

`A005941(A001748(n+1))`
-/

namespace A347512.P14034456673949075865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A001748 (n + 1)).toNat

end

end A347512.P14034456673949075865

namespace A347512

/-- `A005941(A001748(n+1))` -/
def P14034456673949075865.Spec : Prop :=
  ∀ n, P14034456673949075865.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P4571540906548076939

`A005941(A112773(n+2))`
-/

namespace A347512.P4571540906548076939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A112773 (n + 2)).toNat

end

end A347512.P4571540906548076939

namespace A347512

/-- `A005941(A112773(n+2))` -/
def P4571540906548076939.Spec : Prop :=
  ∀ n, P4571540906548076939.a n = A347512 (n + 1)

end A347512

/-! ## A347512.P14085344497989755755

`A005941(3*A000040(n+1))`
-/

namespace A347512.P14085344497989755755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (3 * A000040 (n + 1)).toNat

end

end A347512.P14085344497989755755

namespace A347512

/-- `A005941(3*A000040(n+1))` -/
def P14085344497989755755.Spec : Prop :=
  ∀ n, P14085344497989755755.a n = A347512 (n + 1)

end A347512

/-!
# A347513: Number of minimal dominating sets in the n-cycle complement graph.

The programs for A347513, the canonical program `A347513.P16074626172542130452` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347513 has offset 3).

The definition of A347513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347513.P1992063187313272117

`A000096(n)+A001013(n+1)%4`
-/

namespace A347513.P1992063187313272117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + Int.tmod (A001013 (n + 1)) 4

end

end A347513.P1992063187313272117

namespace A347513

/-- `A000096(n)+A001013(n+1)%4` -/
def P1992063187313272117.Spec : Prop :=
  ∀ n, P1992063187313272117.a n = A347513 (n + 3)

end A347513

/-! ## A347513.P16074626172542130452

`A130779(A018838(n))+A000096(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A347513

/-- `A130779(A018838(n))+A000096(n)` -/
def P16074626172542130452.Spec : Prop :=
  ∀ n, P16074626172542130452.a n = A347513 (n + 3)

theorem P16074626172542130452.correct : P16074626172542130452.Spec := by
  intro n
  simp only [A347513, Nat.add_sub_cancel]

end A347513

/-! ## A347513.P2440864486634524262

`A069517(A004281(n))+A000096(n)`
-/

namespace A347513.P2440864486634524262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A004281 n).toNat + A000096 n

end

end A347513.P2440864486634524262

namespace A347513

/-- `A069517(A004281(n))+A000096(n)` -/
def P2440864486634524262.Spec : Prop :=
  ∀ n, P2440864486634524262.a n = A347513 (n + 3)

end A347513

/-! ## A347513.P6575867557984243422

`A000096(n)+A002182(n+1)%4`
-/

namespace A347513.P6575867557984243422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + Int.tmod (A002182 (n + 1)) 4

end

end A347513.P6575867557984243422

namespace A347513

/-- `A000096(n)+A002182(n+1)%4` -/
def P6575867557984243422.Spec : Prop :=
  ∀ n, P6575867557984243422.a n = A347513 (n + 3)

end A347513

/-! ## A347513.P2171372039882568775

`A069517(A067274(n))+A000096(n)`
-/

namespace A347513.P2171372039882568775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A067274 n).toNat + A000096 n

end

end A347513.P2171372039882568775

namespace A347513

/-- `A069517(A067274(n))+A000096(n)` -/
def P2171372039882568775.Spec : Prop :=
  ∀ n, P2171372039882568775.a n = A347513 (n + 3)

end A347513

/-! ## A347513.P10885542726719476628

`A000096(n)+A005179(n+1)%4`
-/

namespace A347513.P10885542726719476628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + Int.tmod (A005179 (n + 1)) 4

end

end A347513.P10885542726719476628

namespace A347513

/-- `A000096(n)+A005179(n+1)%4` -/
def P10885542726719476628.Spec : Prop :=
  ∀ n, P10885542726719476628.a n = A347513 (n + 3)

end A347513

/-! ## A347513.P10444906165641937227

`∑[n+1-A110524(n)%4]+1`
-/

namespace A347513.P10444906165641937227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A110524 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A347513.P10444906165641937227

namespace A347513

/-- `∑[n+1-A110524(n)%4]+1` -/
def P10444906165641937227.Spec : Prop :=
  ∀ n, P10444906165641937227.a n = A347513 (n + 3)

end A347513

/-! ## A347513.P15633328542763912982

`A039972(A004793(n+1))+A000096(n)`
-/

namespace A347513.P15633328542763912982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039972 (A004793 (n + 1)).toNat + A000096 n

end

end A347513.P15633328542763912982

namespace A347513

/-- `A039972(A004793(n+1))+A000096(n)` -/
def P15633328542763912982.Spec : Prop :=
  ∀ n, P15633328542763912982.a n = A347513 (n + 3)

end A347513

/-! ## A347513.P7768058049288202842

`A000096(n)+A208767(n+1)%4`
-/

namespace A347513.P7768058049288202842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + Int.tmod (A208767 (n + 1)) 4

end

end A347513.P7768058049288202842

namespace A347513

/-- `A000096(n)+A208767(n+1)%4` -/
def P7768058049288202842.Spec : Prop :=
  ∀ n, P7768058049288202842.a n = A347513 (n + 3)

end A347513

/-! ## A347513.P4707268242441697182

`A055029(a(n-1))+A000096(n)` with `a(0)=1, a(1)=4`
-/

namespace A347513.P4707268242441697182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A055029 (a (n - 1)).toNat + A000096 n

end

end A347513.P4707268242441697182

namespace A347513

/-- `A055029(a(n-1))+A000096(n)` -/
def P4707268242441697182.Spec : Prop :=
  ∀ n, P4707268242441697182.a n = A347513 (n + 3)

end A347513

/-!
# A347516: Number of divisors of n that are at most n^(1/3).

The programs for A347516, there is no canonical definition to state claims against.
-/

/-! ## A347516.P14044994660888606763

`A102354((n+1)²)`
-/

namespace A347516.P14044994660888606763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 ((n + 1) ^ 2)

end

end A347516.P14044994660888606763

/-! ## A347516.P9438287055664420974

`dr(A102354(∑[2*n+1]))`
-/

namespace A347516.P9438287055664420974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A102354 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A347516.P9438287055664420974

/-! ## A347516.P11334934114258810936

`xor(2, xor(2, A102354(∑[n+1+n])))`
-/

namespace A347516.P11334934114258810936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A102354 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A347516.P11334934114258810936

/-! ## A347516.P9597693227838199690

`gcd(A102354(∑[2*n+1]), A106458(n))`
-/

namespace A347516.P9597693227838199690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102354 (∑ j ∈ Finset.range (n + 1), f1 j)) (A106458 n)

end

end A347516.P9597693227838199690

/-! ## A347516.P15275639880614152621

`gcd(A000038(n), A102354(A002620(2*(n+1))))`
-/

namespace A347516.P15275639880614152621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A102354 (A002620 (2 * (n + 1))).toNat)

end

end A347516.P15275639880614152621

/-! ## A347516.P17400383906016030609

`A102354(A002620(2*n+2))+A000038(n+2)`
-/

namespace A347516.P17400383906016030609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (A002620 (2 * n + 2)).toNat + A000038 (n + 2)

end

end A347516.P17400383906016030609

/-! ## A347516.P8410941399545426901

`A224786(A224835(n+1))%11`
-/

namespace A347516.P8410941399545426901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224786 (A224835 (n + 1)).toNat) 11

end

end A347516.P8410941399545426901

/-!
# A347517: Partial sums of A347516.

The programs for A347517, there is no canonical definition to state claims against.
-/

/-! ## A347517.P16289235201949914941

`∑[A347516(n+1)]`
-/

namespace A347517.P16289235201949914941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347517.P16289235201949914941

/-! ## A347517.P13933792819651852445

`∑[A102354((n+1)²)]`
-/

namespace A347517.P13933792819651852445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347517.P13933792819651852445

/-! ## A347517.P15097530518384001370

`record[∑[A378217(A224835(n+1))]]`
-/

namespace A347517.P15097530518384001370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378217 (A224835 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347517.P15097530518384001370

/-! ## A347517.P643194117644705507

`∑[A043564(A317144(3*(n+1)))]`
-/

namespace A347517.P643194117644705507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 (A317144 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347517.P643194117644705507

/-! ## A347517.P14618063455283397230

`lt[a(n-3)^ϕ, 2*n+1]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A347517.P14618063455283397230
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  f1 (n - 3) ^ Real.goldenRatio

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A347517.P14618063455283397230

/-!
# A347519: Square array read by antidiagonals upwards taken the terms of A347270 and replacing the powers of 2 with zeros and the nonpowers of 2 with ones, n >= 1, k >= 0.

The programs for A347519, there is no canonical definition to state claims against.
-/

/-! ## A347519.P10419300425441096905

`∑{p}[A347270(n+1), #%2]`
-/

namespace A347519.P10419300425441096905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p % 2

end

end A347519.P10419300425441096905

/-! ## A347519.P1976037824466924396

`A005087(A347270(n+1))`
-/

namespace A347519.P1976037824466924396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A347270 (n + 1)).toNat

end

end A347519.P1976037824466924396

/-! ## A347519.P9539052643742084564

`A011746(A347270(n+1)²)`
-/

namespace A347519.P9539052643742084564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011746 (A347270 (n + 1) ^ 2).toNat

end

end A347519.P9539052643742084564

/-! ## A347519.P5692935943703742243

`A202238(A347270(n+1)²)`
-/

namespace A347519.P5692935943703742243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202238 (A347270 (n + 1) ^ 2).toNat

end

end A347519.P5692935943703742243

/-! ## A347519.P8812011210453342307

`A235046(A347270(n+1)²)`
-/

namespace A347519.P8812011210453342307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 (A347270 (n + 1) ^ 2).toNat

end

end A347519.P8812011210453342307

/-! ## A347519.P6088073360986369406

`A347244(A347270(n+1)²)`
-/

namespace A347519.P6088073360986369406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (A347270 (n + 1) ^ 2).toNat

end

end A347519.P6088073360986369406

/-! ## A347519.P15292214156401360481

`A347245(A347270(n+1)²)`
-/

namespace A347519.P15292214156401360481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (A347270 (n + 1) ^ 2).toNat

end

end A347519.P15292214156401360481

/-! ## A347519.P6324979595980417225

`A043545(A347270(n+1)-1)`
-/

namespace A347519.P6324979595980417225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A347270 (n + 1) - 1).toNat

end

end A347519.P6324979595980417225

/-! ## A347519.P9929459801777147923

`A202238(2*A347270(n+1))`
-/

namespace A347519.P9929459801777147923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202238 (2 * A347270 (n + 1)).toNat

end

end A347519.P9929459801777147923

/-! ## A347519.P14308036310015915278

`A001221(2*A347270(n+1))-1`
-/

namespace A347519.P14308036310015915278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A347270 (n + 1)).toNat - 1

end

end A347519.P14308036310015915278

/-!
# A347520: A053392 with duplicates removed.

The programs for A347520, there is no canonical definition to state claims against.
-/

/-! ## A347520.P15543907264462186827

`A053392(A057428(n)+comp[A216556(n)])`
-/

namespace A347520.P15543907264462186827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (A057428 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A347520.P15543907264462186827

/-! ## A347520.P1429354739516382961

`record[A053392(n)]%A051962(n+1)`
-/

namespace A347520.P1429354739516382961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A051962 (n + 1))

end

end A347520.P1429354739516382961

/-! ## A347520.P17922030425769808438

`record[A053392(n)%A144730(n+1)]`
-/

namespace A347520.P17922030425769808438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053392 n) (A144730 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347520.P17922030425769808438

/-! ## A347520.P1585710337969525811

`record[A053392(n+1)]%A271021(n+1)`
-/

namespace A347520.P1585710337969525811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A271021 (n + 1))

end

end A347520.P1585710337969525811

/-! ## A347520.P11466946827782455633

`record[A053392(n+4)]%A325623(2*n+1)`
-/

namespace A347520.P11466946827782455633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A325623 (2 * n + 1))

end

end A347520.P11466946827782455633

/-!
# A347521: Number of polyominoes with n cells formed by coordinates that are not coprime.

The programs for A347521, there is no canonical definition to state claims against.
-/

/-! ## A347521.P3394730243041491558

`A245636(A083423(n))-A000701(n+1)`
-/

namespace A347521.P3394730243041491558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (A083423 n).toNat - A000701 (n + 1)

end

end A347521.P3394730243041491558

/-! ## A347521.P1060338812558813093

`A327105(A359319(2*n+1))-A035457(n+1)`
-/

namespace A347521.P1060338812558813093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327105 (A359319 (2 * n + 1)).toNat - A035457 (n + 1)

end

end A347521.P1060338812558813093

/-!
# A347523: Characteristic function of nonpowers of 2.

The programs for A347523, the canonical program `A347523.P15966424635658228568` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347523 has offset 0).

The definition of A347523 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347523.P15966424635658228568

`1-A209229(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A347523

/-- `1-A209229(n)` -/
def P15966424635658228568.Spec : Prop :=
  ∀ n, P15966424635658228568.a n = A347523 n

theorem P15966424635658228568.correct : P15966424635658228568.Spec := by
  intro n
  simp only [A347523]

end A347523

/-! ## A347523.P2943077400534438999

`char[comp[2^n]]`
-/

namespace A347523.P2943077400534438999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A347523.P2943077400534438999

namespace A347523

/-- `char[comp[2^n]]` -/
def P2943077400534438999.Spec : Prop :=
  ∀ n, (P2943077400534438999.a n : ℤ) = A347523 n

end A347523

/-! ## A347523.P17294164991091211724

`xor(1, char[2^n])`
-/

namespace A347523.P17294164991091211724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A347523.P17294164991091211724

namespace A347523

/-- `xor(1, char[2^n])` -/
def P17294164991091211724.Spec : Prop :=
  ∀ n, (P17294164991091211724.a n : ℤ) = A347523 n

end A347523

/-! ## A347523.P14991772837346609100

`floor(cos(char[2^n]))`
-/

namespace A347523.P14991772837346609100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A347523.P14991772837346609100

namespace A347523

/-- `floor(cos(char[2^n]))` -/
def P14991772837346609100.Spec : Prop :=
  ∀ n, P14991772837346609100.a n = A347523 n

end A347523

/-! ## A347523.P5024277978959632527

`floor(acos(char[2^n]))`
-/

namespace A347523.P5024277978959632527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A347523.P5024277978959632527

namespace A347523

/-- `floor(acos(char[2^n]))` -/
def P5024277978959632527.Spec : Prop :=
  ∀ n, P5024277978959632527.a n = A347523 n

end A347523

/-! ## A347523.P5507092467475033263

`floor(acot(char[2^n]))`
-/

namespace A347523.P5507092467475033263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A347523.P5507092467475033263

namespace A347523

/-- `floor(acot(char[2^n]))` -/
def P5507092467475033263.Spec : Prop :=
  ∀ n, P5507092467475033263.a n = A347523 n

end A347523

/-! ## A347523.P11383722456129661405

`sin(acos(char[2^n]))`
-/

namespace A347523.P11383722456129661405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A347523.P11383722456129661405

namespace A347523

/-- `sin(acos(char[2^n]))` -/
def P11383722456129661405.Spec : Prop :=
  ∀ n, P11383722456129661405.a n = (A347523 n : ℝ)

end A347523

/-! ## A347523.P9632602414137315980

`cos(asin(char[2^n]))`
-/

namespace A347523.P9632602414137315980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A347523.P9632602414137315980

namespace A347523

/-- `cos(asin(char[2^n]))` -/
def P9632602414137315980.Spec : Prop :=
  ∀ n, P9632602414137315980.a n = (A347523 n : ℝ)

end A347523

/-! ## A347523.P8787495842865539066

`a(∑[n]%n)` with `a(0)=1, a(1)=0`
-/

namespace A347523.P8787495842865539066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ((∑ j ∈ Finset.range (n + 1), f1 j) % n)

end

end A347523.P8787495842865539066

namespace A347523

/-- `a(∑[n]%n)` -/
def P8787495842865539066.Spec : Prop :=
  ∀ n, (P8787495842865539066.a n : ℤ) = A347523 n

end A347523

/-! ## A347523.P278664378218345631

`dr(1-char[2^n])`
-/

namespace A347523.P278664378218345631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A347523.P278664378218345631

namespace A347523

/-- `dr(1-char[2^n])` -/
def P278664378218345631.Spec : Prop :=
  ∀ n, (P278664378218345631.a n : ℤ) = A347523 n

end A347523

/-! ## A347523.P2224636832305937181

`(char[2^n]+1)%2`
-/

namespace A347523.P2224636832305937181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) % 2

end

end A347523.P2224636832305937181

namespace A347523

/-- `(char[2^n]+1)%2` -/
def P2224636832305937181.Spec : Prop :=
  ∀ n, (P2224636832305937181.a n : ℤ) = A347523 n

end A347523

/-! ## A347523.P10707524843154127194

`val(char[2^n]+2, 2)`
-/

namespace A347523.P10707524843154127194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((if ∃ j, f1 j = n then 1 else 0) + 2) 2

end

end A347523.P10707524843154127194

namespace A347523

/-- `val(char[2^n]+2, 2)` -/
def P10707524843154127194.Spec : Prop :=
  ∀ n, (P10707524843154127194.a n : ℤ) = A347523 n

end A347523

/-! ## A347523.P1806697110073100816

`and(1, char[2^n]+1)`
-/

namespace A347523.P1806697110073100816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A347523.P1806697110073100816

namespace A347523

/-- `and(1, char[2^n]+1)` -/
def P1806697110073100816.Spec : Prop :=
  ∀ n, (P1806697110073100816.a n : ℤ) = A347523 n

end A347523

/-! ## A347523.P12127135316770464260

`C(2, char[2^n]+2)`
-/

namespace A347523.P12127135316770464260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((if ∃ j, f1 j = n then 1 else 0) + 2)

end

end A347523.P12127135316770464260

namespace A347523

/-- `C(2, char[2^n]+2)` -/
def P12127135316770464260.Spec : Prop :=
  ∀ n, (P12127135316770464260.a n : ℤ) = A347523 n

end A347523

/-! ## A347523.P3757854231811660790

`1-and(3, char[2^n])`
-/

namespace A347523.P3757854231811660790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 3 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A347523.P3757854231811660790

namespace A347523

/-- `1-and(3, char[2^n])` -/
def P3757854231811660790.Spec : Prop :=
  ∀ n, P3757854231811660790.a n = A347523 n

end A347523

/-! ## A347523.P13990221965760877094

`3-or(2, char[2^n])`
-/

namespace A347523.P13990221965760877094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.lor 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A347523.P13990221965760877094

namespace A347523

/-- `3-or(2, char[2^n])` -/
def P13990221965760877094.Spec : Prop :=
  ∀ n, P13990221965760877094.a n = A347523 n

end A347523

/-! ## A347523.P5275086316970840908

`a(n-gcd(n, ∑[n]))` with `a(0)=1, a(1)=0`
-/

namespace A347523.P5275086316970840908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A347523.P5275086316970840908

namespace A347523

/-- `a(n-gcd(n, ∑[n]))` -/
def P5275086316970840908.Spec : Prop :=
  ∀ n, (P5275086316970840908.a n : ℤ) = A347523 n

end A347523

/-! ## A347523.P2204057924910199525

`1-char[2*a(n-1)]` with `a(0)=1`
-/

namespace A347523.P2204057924910199525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347523.P2204057924910199525

namespace A347523

/-- `1-char[2*a(n-1)]` -/
def P2204057924910199525.Spec : Prop :=
  ∀ n, P2204057924910199525.a n = A347523 n

end A347523

/-! ## A347523.P4228266156804142274

`(1-C(2, ∏{p}[2*n, #]))²`
-/

namespace A347523.P4228266156804142274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)) ^ 2

end

end A347523.P4228266156804142274

namespace A347523

/-- `(1-C(2, ∏{p}[2*n, #]))²` -/
def P4228266156804142274.Spec : Prop :=
  ∀ n, P4228266156804142274.a n = A347523 n

end A347523

/-!
# A347524: E.g.f.: exp(Sum_{k>=1} A014197(k)*x^k).

The programs for A347524, there is no canonical definition to state claims against.
-/

/-! ## A347524.P14151637393980572667

`A351981((n+3)²-6)+n`
-/

namespace A347524.P14151637393980572667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351981 ((n + 3) ^ 2 - 6) + (n : ℤ)

end

end A347524.P14151637393980572667

/-!
# A347525: Number of minimum dominating sets in the n-Andrásfai graph.

The programs for A347525, the canonical program `A347525.P7642448774722999484` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347525 has offset 1).

The definition of A347525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347525.P7642448774722999484

`a(n-1)+6` with `a(0)=2, a(1)=5, a(2)=24, a(3)=22`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347525

/-- `a(n-1)+6` -/
def P7642448774722999484.Spec : Prop :=
  ∀ n, (P7642448774722999484.a n : ℤ) = A347525 (n + 1)

theorem P7642448774722999484.correct : P7642448774722999484.Spec := by
  intro n
  simp only [A347525, Nat.add_sub_cancel]

end A347525

/-!
# A347526: Number of divisors of n that are at most n^(1/4).

The programs for A347526, there is no canonical definition to state claims against.
-/

/-! ## A347526.P16877951131820366881

`ceil(A000040(A001157(n+1))/A001157(3*n+2))`
-/

namespace A347526.P16877951131820366881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (A001157 (n + 1)).toNat : ℚ) / (A001157 (3 * n + 2) : ℚ)⌉

end

end A347526.P16877951131820366881

/-! ## A347526.P8438595324757382460

`round(atan(gcd(n, A122045(n))))`
-/

namespace A347526.P8438595324757382460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Int.gcd (n : ℤ) (A122045 n) : ℝ))

end

end A347526.P8438595324757382460

/-! ## A347526.P6458118350580599396

`2^C(n, C(41, A006370(n)))`
-/

namespace A347526.P6458118350580599396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose n (Nat.choose 41 (A006370 n).toNat)

end

end A347526.P6458118350580599396

/-! ## A347526.P13159711155751017587

`gcd(round(atan(n)), A135875(n+1))`
-/

namespace A347526.P13159711155751017587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.arctan (n : ℝ))) (A135875 (n + 1))

end

end A347526.P13159711155751017587

/-! ## A347526.P1376849074428358071

`∑{e}[A253203(n+1), A001227(#)]`
-/

namespace A347526.P1376849074428358071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001227 (Nat.factorization (f1 n).natAbs p)

end

end A347526.P1376849074428358071

/-! ## A347526.P2575289698533655058

`∑{e}[A253203(n+1), A053266(#)]`
-/

namespace A347526.P2575289698533655058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A053266 (Nat.factorization (f1 n).natAbs p)

end

end A347526.P2575289698533655058

/-! ## A347526.P8896986439802141400

`gcd(n+1, A055642(A275890(n+1)))`
-/

namespace A347526.P8896986439802141400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A055642 (A275890 (n + 1)).toNat)

end

end A347526.P8896986439802141400

/-! ## A347526.P11518217275519801337

`A267263(round(A253203(n+1)/18)+1)`
-/

namespace A347526.P11518217275519801337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (SequenceMachineLib.roundAway ((A253203 (n + 1) : ℚ) / 18) + 1).toNat

end

end A347526.P11518217275519801337

/-! ## A347526.P7652482582343688795

`gcd(A020639(A008616(n)!), A004442(n))`
-/

namespace A347526.P7652482582343688795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (Nat.factorial (A008616 n).toNat)) (A004442 n)

end

end A347526.P7652482582343688795

/-! ## A347526.P15222420420491366826

`∏{e}[A182063(n+1), #]`
-/

namespace A347526.P15222420420491366826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A347526.P15222420420491366826

/-!
# A347527: Partial sums of A347526.

The programs for A347527, there is no canonical definition to state claims against.
-/

/-! ## A347527.P2712161305055203781

`∑[A347526(n+1)]`
-/

namespace A347527.P2712161305055203781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347527.P2712161305055203781

/-! ## A347527.P2657079173818528013

`A000027(∑[A347526(Δ[n²]-n)])`
-/

namespace A347527.P2657079173818528013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347527.P2657079173818528013

/-! ## A347527.P3484471728402163549

`∑[A347526(Δ[n²]-n)]%A004767(n)`
-/

namespace A347527.P3484471728402163549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A004767 n)

end

end A347527.P3484471728402163549

/-! ## A347527.P18111423530359326766

`(A008486(n)-3*n)!*∑[A347526(Δ[n²]-n)]`
-/

namespace A347527.P18111423530359326766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008486 n - (3 * n : ℤ)).toNat : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347527.P18111423530359326766

/-! ## A347527.P318782901638856432

`∑[A347526(Δ[n²]-n)]-A000035(2*n)`
-/

namespace A347527.P318782901638856432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000035 (2 * n)

end

end A347527.P318782901638856432

/-! ## A347527.P14505924417609369691

`∑[A347526(Δ[n²]-n)]*A000034(2*n)`
-/

namespace A347527.P14505924417609369691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 (2 * n)

end

end A347527.P14505924417609369691

/-! ## A347527.P15446639320167851757

`∑[A347526(Δ[n²]-n)]*A059841(2*n)`
-/

namespace A347527.P15446639320167851757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A059841 (2 * n)

end

end A347527.P15446639320167851757

/-! ## A347527.P1081935033024139380

`A004526(2*∑[A347526(Δ[n²]-n)])`
-/

namespace A347527.P1081935033024139380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A347527.P1081935033024139380

/-! ## A347527.P13895313541318488061

`A006370(2*∑[A347526(Δ[n²]-n)])`
-/

namespace A347527.P13895313541318488061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A347527.P13895313541318488061

/-! ## A347527.P8500930641419735665

`A110654(2*∑[A347526(Δ[n²]-n)])`
-/

namespace A347527.P8500930641419735665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A347527.P8500930641419735665

/-! ## A347527.P13776937674593782067

`∑[A347526(Δ[n²]-n)]*A177274(90*n)`
-/

namespace A347527.P13776937674593782067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A177274 (90 * n)

end

end A347527.P13776937674593782067

/-!
# A347528: Total number of layers of width 1 of all symmetric representations of sigma() with subparts of all positive integers <= n.

The programs for A347528, there is no canonical definition to state claims against.
-/

/-! ## A347528.P9632701153567536097

`∑[A250068(n+1)]`
-/

namespace A347528.P9632701153567536097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347528.P9632701153567536097

/-! ## A347528.P6391432449154118090

`∑[dr(A250068(Δ[n²]-n))]`
-/

namespace A347528.P6391432449154118090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A250068 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347528.P6391432449154118090

/-! ## A347528.P14937627128000825439

`A000027(∑[A250068(Δ[n²]-n)])`
-/

namespace A347528.P14937627128000825439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347528.P14937627128000825439

/-! ## A347528.P12870751690759143671

`A028310(∑[A250068(Δ[n²]-n)])`
-/

namespace A347528.P12870751690759143671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347528.P12870751690759143671

/-! ## A347528.P4650055221812440576

`A250068(n+1)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A347528.P4650055221812440576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A250068 (n + 1) + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A347528.P4650055221812440576

/-! ## A347528.P16198109866960831601

`∑[lcm(2, A270417(n+1))!!]`
-/

namespace A347528.P16198109866960831601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (Int.lcm 2 (A270417 (n + 1))))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347528.P16198109866960831601

/-! ## A347528.P13634064645434273945

`lt[n²/2, n*A279388(n+1)]`
-/

namespace A347528.P13634064645434273945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A279388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A347528.P13634064645434273945

/-! ## A347528.P13005726465278140048

`lt[A176797(n+1), A279388(n+1)²]`
-/

namespace A347528.P13005726465278140048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279388 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347528.P13005726465278140048

/-! ## A347528.P3687350862815391963

`lt[A279422(n+1), A279421(A279388(n+1))]`
-/

namespace A347528.P3687350862815391963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279421 (A279388 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347528.P3687350862815391963

/-!
# A347530: Primes of the form (p^2 + 9)/2 where p is prime.

The programs for A347530, there is no canonical definition to state claims against.
-/

/-! ## A347530.P536270684383845899

`p?[A066885(n+2)+4]`
-/

namespace A347530.P536270684383845899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (n + 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347530.P536270684383845899

/-! ## A347530.P16298019474454420824

`p?[A084921(n+1)+5]`
-/

namespace A347530.P16298019474454420824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347530.P16298019474454420824

/-! ## A347530.P6133690359793437231

`p?[A342371(p?[2*n+1])]`
-/

namespace A347530.P6133690359793437231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342371 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347530.P6133690359793437231

/-! ## A347530.P3681745949487548328

`p?[ceil(A000040(n+1)²/2)+4]`
-/

namespace A347530.P3681745949487548328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) ^ 2 : ℚ) / 2⌉ + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347530.P3681745949487548328

/-!
# A347531: First of three consecutive primes p,q,r such that r^2-p^2+p, r^2-p^2+q and r^2-p^2+r are consecutive primes.

The programs for A347531, there is no canonical definition to state claims against.
-/

/-! ## A347531.P11029912444750184379

`p?[∑[dr(A146913(n+3))]]`
-/

namespace A347531.P11029912444750184379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A146913 (n + 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A347531.P11029912444750184379

/-!
# A347532: a(n) is the sum of the nonpowers of 2 in the 3x+1 sequence that starts at n.

The programs for A347532, there is no canonical definition to state claims against.
-/

/-! ## A347532.P12216282034068446849

`A033493(n+1)-2*A232503(n+1)+1`
-/

namespace A347532.P12216282034068446849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - 2 * A232503 (n + 1) + 1

end

end A347532.P12216282034068446849

/-! ## A347532.P13060517482642107087

`A033493(n+1)-2^(A135282(n+1)+1)+1`
-/

namespace A347532.P13060517482642107087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033493 (n + 1) : ℚ) - (2 : ℚ) ^ (A135282 (n + 1) + 1 : ℤ) + 1

end

end A347532.P13060517482642107087

/-! ## A347532.P11236549892806921160

`A033493(n+1)-A000203(A232503(n+1))`
-/

namespace A347532.P11236549892806921160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - A000203 (A232503 (n + 1)).toNat

end

end A347532.P11236549892806921160

/-! ## A347532.P17861774624735465636

`A033493(n+1)-A126646(A135282(n+1))`
-/

namespace A347532.P17861774624735465636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - A126646 (A135282 (n + 1)).toNat

end

end A347532.P17861774624735465636

/-! ## A347532.P12348619696882038714

`A049074(n+1)-A049074(A232503(n+1))`
-/

namespace A347532.P12348619696882038714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049074 (n + 1) - A049074 (A232503 (n + 1)).toNat

end

end A347532.P12348619696882038714

/-! ## A347532.P5144106169450170665

`A033493(n+1)-A126646(log2(A232503(n+1)))`
-/

namespace A347532.P5144106169450170665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - A126646 (SequenceMachineLib.roundAway (Real.logb 2 (A232503 (n + 1) : ℝ))).toNat

end

end A347532.P5144106169450170665

/-! ## A347532.P5701963465339693932

`A270814(2*(n+1))-A000203(A232503(n+1))`
-/

namespace A347532.P5701963465339693932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (2 * (n + 1)) - A000203 (A232503 (n + 1)).toNat

end

end A347532.P5701963465339693932

/-! ## A347532.P17737241933281443945

`A033493(n+1)-A000203(2^A135282(n+1))`
-/

namespace A347532.P17737241933281443945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A135282 (n + 1) : ℤ))).toNat

end

end A347532.P17737241933281443945

/-! ## A347532.P2016410163107279194

`A033493(n+1)-A126646(A008908(n+1)-(A208981(n+1)+1))`
-/

namespace A347532.P2016410163107279194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - A126646 (A008908 (n + 1) - (A208981 (n + 1) + 1)).toNat

end

end A347532.P2016410163107279194

/-!
# A347533: Array A(n,k) where A(n,0) = n and A(n,k) = (k*n + 1)^2 - A(n,k-1), n > 0, read by ascending antidiagonals.

The programs for A347533, there is no canonical definition to state claims against.
-/

/-! ## A347533.P2018732567602174700

`A209567(comp[∑[n]]%A128675(n+1))`
-/

namespace A347533.P2018732567602174700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209567 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A128675 (n + 1))).toNat

end

end A347533.P2018732567602174700

/-! ## A347533.P11566304869513485842

`A250351(n+1)-A083919(A108951(n+1))-A289192(n)`
-/

namespace A347533.P11566304869513485842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (n + 1) - A083919 (A108951 (n + 1)).toNat - A289192 n

end

end A347533.P11566304869513485842

/-!
# A347534: Number of partitions of n into at most 3 distinct squares.

The programs for A347534, there is no canonical definition to state claims against.
-/

/-! ## A347534.P12081304054961203318

`A025436(n)+char[n²]`
-/

namespace A347534.P12081304054961203318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347534.P12081304054961203318

/-! ## A347534.P5667441971551955256

`A357069(n)-A025443(n)`
-/

namespace A347534.P5667441971551955256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357069 n - A025443 n

end

end A347534.P5667441971551955256

/-! ## A347534.P10693267305037924809

`A025442(n)+A025435(A028310(n))`
-/

namespace A347534.P10693267305037924809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + A025435 (A028310 n).toNat

end

end A347534.P10693267305037924809

/-! ## A347534.P3441299118793879600

`A010052(n)+A025442(n)+A025441(n)`
-/

namespace A347534.P3441299118793879600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A025442 n + A025441 n)

end

end A347534.P3441299118793879600

/-! ## A347534.P1128100650743034317

`A008683(4*(n+1))+A025436(n)+A010052(n)`
-/

namespace A347534.P1128100650743034317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A025436 n + A010052 n)

end

end A347534.P1128100650743034317

/-! ## A347534.P2107330298588869517

`(A025436(n)+A010052(n))*A001511(2*n+1)`
-/

namespace A347534.P2107330298588869517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025436 n + A010052 n) * A001511 (2 * n + 1)

end

end A347534.P2107330298588869517

/-! ## A347534.P13574755543424177585

`(A025436(n)+A010052(n))^A014963(2*(n+1))`
-/

namespace A347534.P13574755543424177585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025436 n + A010052 n : ℚ) ^ (A014963 (2 * (n + 1)) : ℤ)

end

end A347534.P13574755543424177585

/-! ## A347534.P7387568603796242039

`A001222(2^(A025436(n)+A010052(n)))`
-/

namespace A347534.P7387568603796242039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025436 n + A010052 n : ℤ))).toNat

end

end A347534.P7387568603796242039

/-!
# A347535: Number of minimum dominating sets in the complete bipartite graph K_n,n.

The programs for A347535, the canonical program `A347535.P18394600877428245191` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347535 has offset 1).

The definition of A347535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347535.P18394600877428245191

`C(2, n²)+(n+1)²`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347535

/-- `C(2, n²)+(n+1)²` -/
def P18394600877428245191.Spec : Prop :=
  ∀ n, (P18394600877428245191.a n : ℤ) = A347535 (n + 1)

theorem P18394600877428245191.correct : P18394600877428245191.Spec := by
  intro n
  simp only [A347535, Nat.add_sub_cancel]

end A347535

/-! ## A347535.P6216441242186132460

`record[n^a(floor(acot(n)))]` with `a(0)=2, a(1)=6`
-/

namespace A347535.P6216441242186132460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  n ^ f1 ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347535.P6216441242186132460

namespace A347535

/-- `record[n^a(floor(acot(n)))]` -/
def P6216441242186132460.Spec : Prop :=
  ∀ n, (P6216441242186132460.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P9775960815397604855

`record[n^a(2%n)]` with `a(0)=2, a(1)=6, a(2)=2`
-/

namespace A347535.P9775960815397604855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 2] fun n f1 =>
  n ^ f1 (2 % n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347535.P9775960815397604855

namespace A347535

/-- `record[n^a(2%n)]` -/
def P9775960815397604855.Spec : Prop :=
  ∀ n, (P9775960815397604855.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P862653010452409725

`(n+1)^a(sin(char[1]))` with `a(0)=2, a(1)=6`
-/

namespace A347535.P862653010452409725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  (n + 1) ^ a (SequenceMachineLib.roundAway (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))).toNat

end

end A347535.P862653010452409725

namespace A347535

/-- `(n+1)^a(sin(char[1]))` -/
def P862653010452409725.Spec : Prop :=
  ∀ n, (P862653010452409725.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P6823570357036042361

`record[(n%a(n-1))²]` with `a(0)=2, a(1)=6`
-/

namespace A347535.P6823570357036042361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  (n % f1 (n - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347535.P6823570357036042361

namespace A347535

/-- `record[(n%a(n-1))²]` -/
def P6823570357036042361.Spec : Prop :=
  ∀ n, (P6823570357036042361.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P7927700974783922083

`(n+1)*ceil(sqrt(n²+4))`
-/

namespace A347535.P7927700974783922083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉

end

end A347535.P7927700974783922083

namespace A347535

/-- `(n+1)*ceil(sqrt(n²+4))` -/
def P7927700974783922083.Spec : Prop :=
  ∀ n, P7927700974783922083.a n = A347535 (n + 1)

end A347535

/-! ## A347535.P14851797039132767321

`ceil(acot(1-n)+(n+1)²)`
-/

namespace A347535.P14851797039132767321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (1 - (n : ℤ) : ℝ) + ((n + 1) ^ 2 : ℝ)⌉

end

end A347535.P14851797039132767321

namespace A347535

/-- `ceil(acot(1-n)+(n+1)²)` -/
def P14851797039132767321.Spec : Prop :=
  ∀ n, P14851797039132767321.a n = A347535 (n + 1)

end A347535

/-! ## A347535.P3323615616130698992

`∑[a(n-1)+2]` with `a(0)=2, a(1)=4, a(2)=3, a(3)=7`
-/

namespace A347535.P3323615616130698992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 3, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347535.P3323615616130698992

namespace A347535

/-- `∑[a(n-1)+2]` -/
def P3323615616130698992.Spec : Prop :=
  ∀ n, (P3323615616130698992.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P6238124385821156310

`((n+1)%a(n-1))²` with `a(0)=2, a(1)=6`
-/

namespace A347535.P6238124385821156310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  ((n + 1) % a (n - 1)) ^ 2

end

end A347535.P6238124385821156310

namespace A347535

/-- `((n+1)%a(n-1))²` -/
def P6238124385821156310.Spec : Prop :=
  ∀ n, (P6238124385821156310.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P4610369742243070348

`(n+1)^a(floor(1/n))` with `a(0)=2, a(1)=6`
-/

namespace A347535.P4610369742243070348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  (n + 1) ^ a ⌊1 / (n : ℚ)⌋.toNat

end

end A347535.P4610369742243070348

namespace A347535

/-- `(n+1)^a(floor(1/n))` -/
def P4610369742243070348.Spec : Prop :=
  ∀ n, (P4610369742243070348.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P16349652195594239866

`∑[2*n+1]+C(2, ∑[n])`
-/

namespace A347535.P16349652195594239866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A347535.P16349652195594239866

namespace A347535

/-- `∑[2*n+1]+C(2, ∑[n])` -/
def P16349652195594239866.Spec : Prop :=
  ∀ n, (P16349652195594239866.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P10289169845756184570

`ogf((2-3x^2+5x^3-2x^4)/(1-3x+3x^2-x^3))`
-/

namespace A347535.P10289169845756184570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -3, 5, -2] [1, -3, 3, -1] n

end

end A347535.P10289169845756184570

namespace A347535

/-- `ogf((2-3x^2+5x^3-2x^4)/(1-3x+3x^2-x^3))` -/
def P10289169845756184570.Spec : Prop :=
  ∀ n, P10289169845756184570.a n = A347535 (n + 1)

end A347535

/-! ## A347535.P17105425615511592620

`∪[a(n-1)², (n+3)²]` with `a(0)=2, a(1)=6`
-/

namespace A347535.P17105425615511592620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  f1 (n - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A347535.P17105425615511592620

namespace A347535

/-- `∪[a(n-1)², (n+3)²]` -/
def P17105425615511592620.Spec : Prop :=
  ∀ n, (P17105425615511592620.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P1537732764296779716

`a(n-1)+2*n+1` with `a(0)=2, a(1)=6, a(2)=9`
-/

namespace A347535.P1537732764296779716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 9] fun n a =>
  a (n - 1) + (2 * n + 1)

end

end A347535.P1537732764296779716

namespace A347535

/-- `a(n-1)+2*n+1` -/
def P1537732764296779716.Spec : Prop :=
  ∀ n, (P1537732764296779716.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P14425534528587289084

`n+1+a(n-1)+n` with `a(0)=2, a(1)=6, a(2)=9`
-/

namespace A347535.P14425534528587289084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 9] fun n a =>
  n + 1 + (a (n - 1) + n)

end

end A347535.P14425534528587289084

namespace A347535

/-- `n+1+a(n-1)+n` -/
def P14425534528587289084.Spec : Prop :=
  ∀ n, (P14425534528587289084.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P12914881404116211112

`∑{d}[n+3, round((n+1)^(#-(n+1)))]`
-/

namespace A347535.P12914881404116211112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((d : ℤ) - (n + 1 : ℤ) : ℤ))

end

end A347535.P12914881404116211112

namespace A347535

/-- `∑{d}[n+3, round((n+1)^(#-(n+1)))]` -/
def P12914881404116211112.Spec : Prop :=
  ∀ n, P12914881404116211112.a n = A347535 (n + 1)

end A347535

/-! ## A347535.P12362973088645830992

`(C(2, 2*n)+n)*(n+1)+n+1`
-/

namespace A347535.P12362973088645830992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (2 * n) + n) * (n + 1) + (n + 1)

end

end A347535.P12362973088645830992

namespace A347535

/-- `(C(2, 2*n)+n)*(n+1)+n+1` -/
def P12362973088645830992.Spec : Prop :=
  ∀ n, (P12362973088645830992.a n : ℤ) = A347535 (n + 1)

end A347535

/-! ## A347535.P17607079313056941947

`floor((n+1)²+gcd(n+3, n-1)/(n+1))`
-/

namespace A347535.P17607079313056941947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) + (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A347535.P17607079313056941947

namespace A347535

/-- `floor((n+1)²+gcd(n+3, n-1)/(n+1))` -/
def P17607079313056941947.Spec : Prop :=
  ∀ n, P17607079313056941947.a n = A347535 (n + 1)

end A347535

/-! ## A347535.P12141944304980287592

`A130706(n)+(n+1)²`
-/

namespace A347535.P12141944304980287592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + ((n + 1) ^ 2 : ℤ)

end

end A347535.P12141944304980287592

namespace A347535

/-- `A130706(n)+(n+1)²` -/
def P12141944304980287592.Spec : Prop :=
  ∀ n, P12141944304980287592.a n = A347535 (n + 1)

theorem P12141944304980287592.correct : P12141944304980287592.Spec := by
  intro n
  simp only [A347535, Nat.add_sub_cancel, A347535.P12141944304980287592.a, A347535.P18394600877428245191.a, A130706, A130706.P15856520674389082666.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347535

/-! ## A347535.P5140892105845043

`A347553(n+3)+∑[n]+1`
-/

namespace A347535.P5140892105845043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347553 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A347535.P5140892105845043

namespace A347535

/-- `A347553(n+3)+∑[n]+1` -/
def P5140892105845043.Spec : Prop :=
  ∀ n, P5140892105845043.a n = A347535 (n + 1)

end A347535

/-!
# A347536: Number of minimum dominating sets in the complete tripartite graph K_{n,n,n}.

The programs for A347536, the canonical program `A347536.P14515302599324115495` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347536 has offset 1).

The definition of A347536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347536.P14515302599324115495

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=15, a(2)=27, a(3)=48, a(4)=75`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347536

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P14515302599324115495.Spec : Prop :=
  ∀ n, P14515302599324115495.a n = A347536 (n + 1)

theorem P14515302599324115495.correct : P14515302599324115495.Spec := by
  intro n
  simp only [A347536, Nat.add_sub_cancel]

end A347536

/-! ## A347536.P1510582112271026786

`3*(char[1]+(n+1)²)`
-/

namespace A347536.P1510582112271026786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((if ∃ j, f1 j = n then 1 else 0) + (n + 1) ^ 2)

end

end A347536.P1510582112271026786

namespace A347536

/-- `3*(char[1]+(n+1)²)` -/
def P1510582112271026786.Spec : Prop :=
  ∀ n, (P1510582112271026786.a n : ℤ) = A347536 (n + 1)

end A347536

/-! ## A347536.P10230329367077144273

`∑{d}[n+1, 3*C(#, n)²]`
-/

namespace A347536.P10230329367077144273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 3 * Nat.choose d n ^ 2

end

end A347536.P10230329367077144273

namespace A347536

/-- `∑{d}[n+1, 3*C(#, n)²]` -/
def P10230329367077144273.Spec : Prop :=
  ∀ n, (P10230329367077144273.a n : ℤ) = A347536 (n + 1)

end A347536

/-! ## A347536.P1081491261476487614

`xor(3*char[1], ∑[6*n+3])`
-/

namespace A347536.P1081491261476487614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 * (if ∃ j, f1 j = n then 1 else 0)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A347536.P1081491261476487614

namespace A347536

/-- `xor(3*char[1], ∑[6*n+3])` -/
def P1081491261476487614.Spec : Prop :=
  ∀ n, (P1081491261476487614.a n : ℤ) = A347536 (n + 1)

end A347536

/-! ## A347536.P12258225124942440581

`or(C(3, n²), 3*(n+1)²)`
-/

namespace A347536.P12258225124942440581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose 3 (n ^ 2)) (3 * (n + 1) ^ 2)

end

end A347536.P12258225124942440581

namespace A347536

/-- `or(C(3, n²), 3*(n+1)²)` -/
def P12258225124942440581.Spec : Prop :=
  ∀ n, (P12258225124942440581.a n : ℤ) = A347536 (n + 1)

end A347536

/-! ## A347536.P6126354318978150660

`(char[1]+(n+1)²)/tan(acot(3))`
-/

namespace A347536.P6126354318978150660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + (n + 1) ^ 2 : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ))

end

end A347536.P6126354318978150660

namespace A347536

/-- `(char[1]+(n+1)²)/tan(acot(3))` -/
def P6126354318978150660.Spec : Prop :=
  ∀ n, P6126354318978150660.a n = (A347536 (n + 1) : ℝ)

end A347536

/-! ## A347536.P13268715303147540640

`A016945(n)+a(n-1)` with `a(0)=3, a(1)=15, a(2)=27`
-/

namespace A347536.P13268715303147540640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 15, 27] fun n a =>
  A016945 n + a (n - 1)

end

end A347536.P13268715303147540640

namespace A347536

/-- `A016945(n)+a(n-1)` -/
def P13268715303147540640.Spec : Prop :=
  ∀ n, P13268715303147540640.a n = A347536 (n + 1)

end A347536

/-! ## A347536.P3042674724264296007

`A142463(n+1)+A254667(n)²`
-/

namespace A347536.P3042674724264296007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 (n + 1) + A254667 n ^ 2

end

end A347536.P3042674724264296007

namespace A347536

/-- `A142463(n+1)+A254667(n)²` -/
def P3042674724264296007.Spec : Prop :=
  ∀ n, P3042674724264296007.a n = A347536 (n + 1)

end A347536

/-! ## A347536.P3239607569152452771

`A002378(n+1)+(char[1]+1+n)*(2*n+1)`
-/

namespace A347536.P3239607569152452771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + ((((if ∃ j, f1 j = n then 1 else 0) + 1 + n) * (2 * n + 1) : ℕ) : ℤ)

end

end A347536.P3239607569152452771

namespace A347536

/-- `A002378(n+1)+(char[1]+1+n)*(2*n+1)` -/
def P3239607569152452771.Spec : Prop :=
  ∀ n, P3239607569152452771.a n = A347536 (n + 1)

end A347536

/-! ## A347536.P3119032292047048033

`A000217(2*n+1)+A000217(n+1)*A347558(2*n+1)`
-/

namespace A347536.P3119032292047048033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) + A000217 (n + 1) * A347558 (2 * n + 1)

end

end A347536.P3119032292047048033

namespace A347536

/-- `A000217(2*n+1)+A000217(n+1)*A347558(2*n+1)` -/
def P3119032292047048033.Spec : Prop :=
  ∀ n, P3119032292047048033.a n = A347536 (n + 1)

end A347536

/-!
# A347537: a(n) is the smallest prime p such that the polynomial k^4 + k^3 + k^2 + k + p yields primes for k = 0..n-1, but not for k = n.

The programs for A347537, there is no canonical definition to state claims against.
-/

/-! ## A347537.P14158432785817037346

`A276976(Δ[6^n])+1`
-/

namespace A347537.P14158432785817037346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A347537.P14158432785817037346

/-!
# A347538: Number of minimum dominating sets in the cycle graph C_n.

The programs for A347538, the canonical program `A347538.P1960281545295632756` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347538 has offset 3).

The definition of A347538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347538.P1960281545295632756

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=3, a(1)=6, a(2)=5, a(3)=3, a(4)=14, a(5)=8, a(6)=3, a(7)=25, a(8)=11`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347538

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P1960281545295632756.Spec : Prop :=
  ∀ n, P1960281545295632756.a n = A347538 (n + 3)

theorem P1960281545295632756.correct : P1960281545295632756.Spec := by
  intro n
  simp only [A347538, Nat.add_sub_cancel]

end A347538

/-!
# A347541: Numbers q.r such that q*r divides q.r, when q and r have the same number of digits, "." means concatenation, and r may not begin with 0.

The programs for A347541, there is no canonical definition to state claims against.
-/

/-! ## A347541.P17209815492450073862

`filter[A255726(n+1), A276254(#)]`
-/

namespace A347541.P17209815492450073862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276254 (f1 j).toNat = 1) n)

end

end A347541.P17209815492450073862

/-!
# A347542: Number of partitions of n into 6 or more parts.

The programs for A347542, there is no canonical definition to state claims against.
-/

/-! ## A347542.P5035263563678603440

`A058399(∑[n+5]+16)`
-/

namespace A347542.P5035263563678603440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A347542.P5035263563678603440

/-! ## A347542.P11939571146175325735

`or(char[3], A058399(A166136(n+4)))`
-/

namespace A347542.P11939571146175325735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A058399 (A166136 (n + 4)).toNat)

end

end A347542.P11939571146175325735

/-! ## A347542.P17866726755393180560

`A058399(A166136(n+4))%A000032(n+2)`
-/

namespace A347542.P17866726755393180560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058399 (A166136 (n + 4)).toNat) (A000032 (n + 2))

end

end A347542.P17866726755393180560

/-! ## A347542.P14309905234726565046

`A007318(C(2, n))*A058399(A166136(n+4))`
-/

namespace A347542.P14309905234726565046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A058399 (A166136 (n + 4)).toNat

end

end A347542.P14309905234726565046

/-! ## A347542.P6262086768198581725

`A000041(C(n, n²))*A058399(A166136(n+4))`
-/

namespace A347542.P6262086768198581725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A058399 (A166136 (n + 4)).toNat

end

end A347542.P6262086768198581725

/-!
# A347543: Number of partitions of n into 7 or more parts.

The programs for A347543, there is no canonical definition to state claims against.
-/

/-! ## A347543.P10150859359642036996

`A058399(A167487(n+5))`
-/

namespace A347543.P10150859359642036996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A167487 (n + 5)).toNat

end

end A347543.P10150859359642036996

/-! ## A347543.P10515469270896709698

`A058399(A056119(n)+28)`
-/

namespace A347543.P10515469270896709698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A056119 n + 28).toNat

end

end A347543.P10515469270896709698

/-! ## A347543.P2363880157639580615

`A058399(A166136(n+5)+1)`
-/

namespace A347543.P2363880157639580615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A166136 (n + 5) + 1).toNat

end

end A347543.P2363880157639580615

/-! ## A347543.P6457047665300447157

`A058399(A077169(n+7)+2)`
-/

namespace A347543.P6457047665300447157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A077169 (n + 7) + 2).toNat

end

end A347543.P6457047665300447157

/-! ## A347543.P7602952605853451963

`A058399(A000124(n+6)+6)`
-/

namespace A347543.P7602952605853451963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A000124 (n + 6) + 6).toNat

end

end A347543.P7602952605853451963

/-!
# A347544: Number of partitions of n into 8 or more parts.

The programs for A347544, there is no canonical definition to state claims against.
-/

/-! ## A347544.P3183036392914811222

`A210950(A155212(n+4)+1)`
-/

namespace A347544.P3183036392914811222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210950 (A155212 (n + 4) + 1).toNat

end

end A347544.P3183036392914811222

/-! ## A347544.P12699627806197317073

`A058399(A167487(n+6)+1)`
-/

namespace A347544.P12699627806197317073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A167487 (n + 6) + 1).toNat

end

end A347544.P12699627806197317073

/-! ## A347544.P3439490755740914548

`A058399(A167499(n+6)+3)`
-/

namespace A347544.P3439490755740914548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A167499 (n + 6) + 3).toNat

end

end A347544.P3439490755740914548

/-! ## A347544.P6413332260391178789

`A058399(A167614(n+6)+5)`
-/

namespace A347544.P6413332260391178789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A167614 (n + 6) + 5).toNat

end

end A347544.P6413332260391178789

/-! ## A347544.P7242082435380579264

`A058399(A000124(n+7)+7)`
-/

namespace A347544.P7242082435380579264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A000124 (n + 7) + 7).toNat

end

end A347544.P7242082435380579264

/-!
# A347545: Number of partitions of n into 9 or more parts.

The programs for A347545, there is no canonical definition to state claims against.
-/

/-! ## A347545.P2749388430527797690

`A058399(A000217(n+8)+9)`
-/

namespace A347545.P2749388430527797690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A000217 (n + 8) + 9).toNat

end

end A347545.P2749388430527797690

/-! ## A347545.P4757406748704288259

`A058399(A161680(n+9)+9)`
-/

namespace A347545.P4757406748704288259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A161680 (n + 9) + 9).toNat

end

end A347545.P4757406748704288259

/-! ## A347545.P6246245078809889149

`A058399(eq[10, A131818(n+1)])`
-/

namespace A347545.P6246245078809889149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347545.P6246245078809889149

/-! ## A347545.P8341006188568222280

`A058399(A000124(n+9)-(n+1))`
-/

namespace A347545.P8341006188568222280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A000124 (n + 9) - (n + 1 : ℤ)).toNat

end

end A347545.P8341006188568222280

/-! ## A347545.P15095834944671661107

`A058399(A056000(n+6)-2*n)`
-/

namespace A347545.P15095834944671661107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A056000 (n + 6) - (2 * n : ℤ)).toNat

end

end A347545.P15095834944671661107

/-!
# A347546: Number of involutions of doubly alternating Baxter permutations of length n.

The programs for A347546, there is no canonical definition to state claims against.
-/

/-! ## A347546.P4034080208882208748

`A277218(n+1)-A123498(Δ[A277218(n)])`
-/

namespace A347546.P4034080208882208748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 (n + 1) - A123498 (f1 (n + 1) - f1 n).toNat

end

end A347546.P4034080208882208748

/-! ## A347546.P9293354502497961595

`A388720(A035938(n)%A323293(n))`
-/

namespace A347546.P9293354502497961595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388720 (Int.tmod (A035938 n) (A323293 n)).toNat

end

end A347546.P9293354502497961595

/-! ## A347546.P11753989603389628018

`and(A277218(n), A330236(A350504(n)))`
-/

namespace A347546.P11753989603389628018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277218 n) (A330236 (A350504 n).toNat)

end

end A347546.P11753989603389628018

/-! ## A347546.P7804598749037212818

`A277218(n)-A321537(A252079(n+1))`
-/

namespace A347546.P7804598749037212818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 n - A321537 (A252079 (n + 1)).toNat

end

end A347546.P7804598749037212818

/-!
# A347547: Number of partitions of n into 10 or more parts.

The programs for A347547, there is no canonical definition to state claims against.
-/

/-! ## A347547.P6978994525643980315

`A058399(A000124(n+9)+9)`
-/

namespace A347547.P6978994525643980315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A000124 (n + 9) + 9).toNat

end

end A347547.P6978994525643980315

/-! ## A347547.P4070056317732866551

`A058399(A000217(n+9)+10)`
-/

namespace A347547.P4070056317732866551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A000217 (n + 9) + 10).toNat

end

end A347547.P4070056317732866551

/-! ## A347547.P7015295141418808126

`A058399(A161680(n+10)+10)`
-/

namespace A347547.P7015295141418808126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A161680 (n + 10) + 10).toNat

end

end A347547.P7015295141418808126

/-! ## A347547.P8159855904801354854

`A058399(eq[11, A131818(n+1)])`
-/

namespace A347547.P8159855904801354854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347547.P8159855904801354854

/-! ## A347547.P3079027187281417748

`A347545(n+10)-A008638(n+1)`
-/

namespace A347547.P3079027187281417748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347545 (n + 10) - A008638 (n + 1)

end

end A347547.P3079027187281417748

/-!
# A347548: Number of partitions of n into 3 or more distinct parts.

The programs for A347548, there is no canonical definition to state claims against.
-/

/-! ## A347548.P18118766032514311536

`A000009(n+6)-floor((n+7)/2)`
-/

namespace A347548.P18118766032514311536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 6) - ⌊(n + 7 : ℚ) / 2⌋

end

end A347548.P18118766032514311536

/-! ## A347548.P11555534383359789235

`floor(record[A000009(n)-n/2])`
-/

namespace A347548.P11555534383359789235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) - (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A347548.P11555534383359789235

/-! ## A347548.P3864655300117439160

`∑[A087897(n+6)]-ceil(n/2)`
-/

namespace A347548.P3864655300117439160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈(n : ℚ) / 2⌉

end

end A347548.P3864655300117439160

/-! ## A347548.P10130445172195878871

`∑[A087897(n+6)-A000035(n)]`
-/

namespace A347548.P10130445172195878871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (n + 6) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347548.P10130445172195878871

/-! ## A347548.P4715921594201406150

`∑[A087897(A020715(n))-n%2]`
-/

namespace A347548.P4715921594201406150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A020715 n).toNat - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347548.P4715921594201406150

/-! ## A347548.P16772420063669401285

`∑[Δ[A000009(n+5)]-A000035(n)]`
-/

namespace A347548.P16772420063669401285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347548.P16772420063669401285

/-!
# A347549: Number of partitions of n into 4 or more distinct parts.

The programs for A347549, there is no canonical definition to state claims against.
-/

/-! ## A347549.P9269851012713731523

`A000009(n+10)-A014591(n+10)`
-/

namespace A347549.P9269851012713731523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 10) - A014591 (n + 10)

end

end A347549.P9269851012713731523

/-! ## A347549.P1043057842126611272

`A000009(n+10)-(A001399(n+7)+1)`
-/

namespace A347549.P1043057842126611272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 10) - (A001399 (n + 7) + 1)

end

end A347549.P1043057842126611272

/-! ## A347549.P4903806006399916362

`A000009(n+10)-(A069905(n+10)+1)`
-/

namespace A347549.P4903806006399916362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 10) - (A069905 (n + 10) + 1)

end

end A347549.P4903806006399916362

/-! ## A347549.P13301821265450344885

`Δ[A026906(n+9)]-A014591(n+10)`
-/

namespace A347549.P13301821265450344885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014591 (n + 10)

end

end A347549.P13301821265450344885

/-! ## A347549.P6037452622537837186

`A034891(n+2)-A070939(A091915(n+1))`
-/

namespace A347549.P6037452622537837186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 (n + 2) - A070939 (A091915 (n + 1)).toNat

end

end A347549.P6037452622537837186

/-!
# A347550: Number of partitions of n into at most 2 distinct prime parts.

The programs for A347550, there is no canonical definition to state claims against.
-/

/-! ## A347550.P2003952035806599953

`ceil((A002126(n)-atan(n))/2)`
-/

namespace A347550.P2003952035806599953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A002126 n : ℝ) - Real.arctan (n : ℝ)) / 2⌉

end

end A347550.P2003952035806599953

/-! ## A347550.P5664906644421221568

`floor(A002126(abs(1-n)+1)/2)`
-/

namespace A347550.P5664906644421221568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002126 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌋

end

end A347550.P5664906644421221568

/-! ## A347550.P4036835302173119675

`floor(A000007(n)+A002126(n)/2)`
-/

namespace A347550.P4036835302173119675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 n : ℚ) + (A002126 n : ℚ) / 2⌋

end

end A347550.P4036835302173119675

/-! ## A347550.P16666417534942184516

`floor((A002126(n)+A000038(n))/2)`
-/

namespace A347550.P16666417534942184516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002126 n + A000038 n : ℚ) / 2⌋

end

end A347550.P16666417534942184516

/-! ## A347550.P12204794655378927478

`A218469(n+1)-A223893(n+1)`
-/

namespace A347550.P12204794655378927478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (n + 1) - A223893 (n + 1)

end

end A347550.P12204794655378927478

/-! ## A347550.P11120711883007764973

`A347552(n)-char[2*A000040(n+1)]`
-/

namespace A347550.P11120711883007764973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347550.P11120711883007764973

/-! ## A347550.P834776784640426047

`A347739(n)-A061358(n)`
-/

namespace A347550.P834776784640426047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347739 n - A061358 n

end

end A347550.P834776784640426047

/-!
# A347551: Number of minimum dominating sets in the 2n-crossed prism graph.

The programs for A347551, the canonical program `A347551.P1847169841166646546` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347551 has offset 2).

The definition of A347551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347551.P1847169841166646546

`4*a(n-2)-4*a(n-4)` with `a(0)=4, a(1)=51, a(2)=8, a(3)=170`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347551

/-- `4*a(n-2)-4*a(n-4)` -/
def P1847169841166646546.Spec : Prop :=
  ∀ n, P1847169841166646546.a n = A347551 (n + 2)

theorem P1847169841166646546.correct : P1847169841166646546.Spec := by
  intro n
  simp only [A347551, Nat.add_sub_cancel]

end A347551

/-!
# A347552: Number of partitions of n into at most 2 prime parts.

The programs for A347552, there is no canonical definition to state claims against.
-/

/-! ## A347552.P2286182517774029160

`ceil(A002126(n)/2)`
-/

namespace A347552.P2286182517774029160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002126 n : ℚ) / 2⌉

end

end A347552.P2286182517774029160

/-! ## A347552.P6485708167791734751

`A061358(n)+char[∑{p}[n+1, C(#, n)]]`
-/

namespace A347552.P6485708167791734751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347552.P6485708167791734751

/-! ## A347552.P2282791903987039999

`A062108(A002126(n))`
-/

namespace A347552.P2282791903987039999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A002126 n).toNat

end

end A347552.P2282791903987039999

/-! ## A347552.P10986026292537064802

`A004526(A002126(n)+1)`
-/

namespace A347552.P10986026292537064802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002126 n + 1).toNat

end

end A347552.P10986026292537064802

/-! ## A347552.P15805384296596349108

`A123108(A002126(n)+1)`
-/

namespace A347552.P15805384296596349108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A002126 n + 1).toNat

end

end A347552.P15805384296596349108

/-! ## A347552.P15710573814713708123

`A007376(10*A002126(n))`
-/

namespace A347552.P15710573814713708123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (10 * A002126 n).toNat

end

end A347552.P15710573814713708123

/-! ## A347552.P1278278419375387957

`A110654(and(-1, A002126(n)))`
-/

namespace A347552.P1278278419375387957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.land (-1) (A002126 n)).toNat

end

end A347552.P1278278419375387957

/-! ## A347552.P2680904741247201277

`A061358(n)+char[A047814(n)]`
-/

namespace A347552.P2680904741247201277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347552.P2680904741247201277

/-! ## A347552.P17257608092641315866

`A061358(n)+char[A331044(n)]`
-/

namespace A347552.P17257608092641315866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347552.P17257608092641315866

/-! ## A347552.P13303233504040209776

`A061358(n)+char[A080368(n+1)]`
-/

namespace A347552.P13303233504040209776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347552.P13303233504040209776

/-!
# A347553: Number of minimum dominating sets in the n-cycle complement graph.

The programs for A347553, the canonical program `A347553.P7827928287471575370` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347553 has offset 3).

The definition of A347553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347553.P7827928287471575370

`or(C(2, n), ∑[n])+n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347553

/-- `or(C(2, n), ∑[n])+n` -/
def P7827928287471575370.Spec : Prop :=
  ∀ n, (P7827928287471575370.a n : ℤ) = A347553 (n + 3)

theorem P7827928287471575370.correct : P7827928287471575370.Spec := by
  intro n
  simp only [A347553, Nat.add_sub_cancel]

end A347553

/-! ## A347553.P17120406250201172684

`C(2, n²)+∑[n]+n`
-/

namespace A347553.P17120406250201172684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2) + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A347553.P17120406250201172684

namespace A347553

/-- `C(2, n²)+∑[n]+n` -/
def P17120406250201172684.Spec : Prop :=
  ∀ n, (P17120406250201172684.a n : ℤ) = A347553 (n + 3)

end A347553

/-! ## A347553.P9891415685430599267

`∑[n]+C(2, ∑[n])+n`
-/

namespace A347553.P9891415685430599267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f2 j) + n)

end

end A347553.P9891415685430599267

namespace A347553

/-- `∑[n]+C(2, ∑[n])+n` -/
def P9891415685430599267.Spec : Prop :=
  ∀ n, (P9891415685430599267.a n : ℤ) = A347553 (n + 3)

end A347553

/-! ## A347553.P484444439670076375

`record[a(n-1)+n]` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A347553.P484444439670076375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347553.P484444439670076375

namespace A347553

/-- `record[a(n-1)+n]` -/
def P484444439670076375.Spec : Prop :=
  ∀ n, (P484444439670076375.a n : ℤ) = A347553 (n + 3)

end A347553

/-! ## A347553.P4038884753214726837

`char[1]+∑[1-char[2]+n]`
-/

namespace A347553.P4038884753214726837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A347553.P4038884753214726837

namespace A347553

/-- `char[1]+∑[1-char[2]+n]` -/
def P4038884753214726837.Spec : Prop :=
  ∀ n, P4038884753214726837.a n = A347553 (n + 3)

end A347553

/-! ## A347553.P1439810280742810263

`floor(acot(1-n)+∑[n+1])`
-/

namespace A347553.P1439810280742810263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (1 - (n : ℤ) : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A347553.P1439810280742810263

namespace A347553

/-- `floor(acot(1-n)+∑[n+1])` -/
def P1439810280742810263.Spec : Prop :=
  ∀ n, P1439810280742810263.a n = A347553 (n + 3)

end A347553

/-! ## A347553.P13771126156191978431

`∑[a(n-1)+1]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=4`
-/

namespace A347553.P13771126156191978431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347553.P13771126156191978431

namespace A347553

/-- `∑[a(n-1)+1]` -/
def P13771126156191978431.Spec : Prop :=
  ∀ n, (P13771126156191978431.a n : ℤ) = A347553 (n + 3)

end A347553

/-! ## A347553.P13469854583376819557

`ogf((1+x-4x^2+5x^3-2x^4)/(1-3x+3x^2-x^3))`
-/

namespace A347553.P13469854583376819557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4, 5, -2] [1, -3, 3, -1] n

end

end A347553.P13469854583376819557

namespace A347553

/-- `ogf((1+x-4x^2+5x^3-2x^4)/(1-3x+3x^2-x^3))` -/
def P13469854583376819557.Spec : Prop :=
  ∀ n, P13469854583376819557.a n = A347553 (n + 3)

end A347553

/-! ## A347553.P5482645997694011933

`∑[(n+1)/a(floor(2/n))]` with `a(0)=1, a(1)=3`
-/

namespace A347553.P5482645997694011933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n + 1 : ℚ) / f1 ⌊2 / (n : ℚ)⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347553.P5482645997694011933

namespace A347553

/-- `∑[(n+1)/a(floor(2/n))]` -/
def P5482645997694011933.Spec : Prop :=
  ∀ n, P5482645997694011933.a n = (A347553 (n + 3) : ℚ)

end A347553

/-! ## A347553.P11590989636749923120

`∑[n*A171905(n+1)+1]`
-/

namespace A347553.P11590989636749923120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A171905 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347553.P11590989636749923120

namespace A347553

/-- `∑[n*A171905(n+1)+1]` -/
def P11590989636749923120.Spec : Prop :=
  ∀ n, P11590989636749923120.a n = A347553 (n + 3)

end A347553

/-! ## A347553.P5972612507464969572

`∑[n*A000032(C(2, n))-(n-1)]`
-/

namespace A347553.P5972612507464969572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000032 (Nat.choose 2 n) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347553.P5972612507464969572

namespace A347553

/-- `∑[n*A000032(C(2, n))-(n-1)]` -/
def P5972612507464969572.Spec : Prop :=
  ∀ n, P5972612507464969572.a n = A347553 (n + 3)

end A347553

/-! ## A347553.P766129298031110435

`A217748(n+3)/(2-A019590(n+1))`
-/

namespace A347553.P766129298031110435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217748 (n + 3) : ℚ) / (2 - A019590 (n + 1) : ℚ)

end

end A347553.P766129298031110435

namespace A347553

/-- `A217748(n+3)/(2-A019590(n+1))` -/
def P766129298031110435.Spec : Prop :=
  ∀ n, P766129298031110435.a n = (A347553 (n + 3) : ℚ)

end A347553

/-! ## A347553.P1924312977481669030

`record[(n+1)²%∑[n+2]]`
-/

namespace A347553.P1924312977481669030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347553.P1924312977481669030

namespace A347553

/-- `record[(n+1)²%∑[n+2]]` -/
def P1924312977481669030.Spec : Prop :=
  ∀ n, (P1924312977481669030.a n : ℤ) = A347553 (n + 3)

end A347553

/-! ## A347553.P5971993256947464008

`A265611(2*n)/A020639(A193495(2*n+1))`
-/

namespace A347553.P5971993256947464008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265611 (2 * n) : ℚ) / (A020639 (A193495 (2 * n + 1)).toNat : ℚ)

end

end A347553.P5971993256947464008

namespace A347553

/-- `A265611(2*n)/A020639(A193495(2*n+1))` -/
def P5971993256947464008.Spec : Prop :=
  ∀ n, P5971993256947464008.a n = (A347553 (n + 3) : ℚ)

end A347553

/-! ## A347553.P6155825674141022223

`A395532(a(n-1))` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A347553.P6155825674141022223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  A395532 (a (n - 1)).toNat

end

end A347553.P6155825674141022223

namespace A347553

/-- `A395532(a(n-1))` -/
def P6155825674141022223.Spec : Prop :=
  ∀ n, P6155825674141022223.a n = A347553 (n + 3)

end A347553

/-! ## A347553.P17312453119803951592

`record[A286099(n)+C(2, n)]`
-/

namespace A347553.P17312453119803951592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n + (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347553.P17312453119803951592

namespace A347553

/-- `record[A286099(n)+C(2, n)]` -/
def P17312453119803951592.Spec : Prop :=
  ∀ n, P17312453119803951592.a n = A347553 (n + 3)

end A347553

/-! ## A347553.P5903582098154773782

`record[A286109(n)+C(2, n)]`
-/

namespace A347553.P5903582098154773782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n + (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347553.P5903582098154773782

namespace A347553

/-- `record[A286109(n)+C(2, n)]` -/
def P5903582098154773782.Spec : Prop :=
  ∀ n, P5903582098154773782.a n = A347553 (n + 3)

end A347553

/-! ## A347553.P12124728161407362501

`A286147(a(n-1)+1)` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A347553.P12124728161407362501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  A286147 (a (n - 1) + 1).toNat

end

end A347553.P12124728161407362501

namespace A347553

/-- `A286147(a(n-1)+1)` -/
def P12124728161407362501.Spec : Prop :=
  ∀ n, P12124728161407362501.a n = A347553 (n + 3)

end A347553

/-! ## A347553.P3027056859939481230

`record[A061579(n)+C(2, n)]`
-/

namespace A347553.P3027056859939481230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347553.P3027056859939481230

namespace A347553

/-- `record[A061579(n)+C(2, n)]` -/
def P3027056859939481230.Spec : Prop :=
  ∀ n, P3027056859939481230.a n = A347553 (n + 3)

end A347553

/-! ## A347553.P16655219964135807367

`A059797(a(n-1))` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A347553.P16655219964135807367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  A059797 (a (n - 1)).toNat

end

end A347553.P16655219964135807367

namespace A347553

/-- `A059797(a(n-1))` -/
def P16655219964135807367.Spec : Prop :=
  ∀ n, P16655219964135807367.a n = A347553 (n + 3)

end A347553

/-!
# A347554: Number of minimum dominating sets in the n X n king graph.

The programs for A347554, there is no canonical definition to state claims against.
-/

/-! ## A347554.P210643547626650770

`A350815(∑[4*n]+1)`
-/

namespace A347554.P210643547626650770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350815 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A347554.P210643547626650770

/-! ## A347554.P1278298127858095364

`gcd(C(2, n+2), A350815(A001844(n)))`
-/

namespace A347554.P1278298127858095364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A350815 (A001844 n).toNat)

end

end A347554.P1278298127858095364

/-! ## A347554.P10937215542836255281

`A350815(A001844(n))+A000007(3*(n+1))`
-/

namespace A347554.P10937215542836255281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350815 (A001844 n).toNat + A000007 (3 * (n + 1))

end

end A347554.P10937215542836255281

/-! ## A347554.P17076700524088070349

`A350815(A266725(2*n+1))+A000038(3*(n+1))`
-/

namespace A347554.P17076700524088070349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350815 (A266725 (2 * n + 1)).toNat + A000038 (3 * (n + 1))

end

end A347554.P17076700524088070349

/-! ## A347554.P7184529114070476025

`A350815(A266725(2*n+1))+A151933(3*n+4)`
-/

namespace A347554.P7184529114070476025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350815 (A266725 (2 * n + 1)).toNat + A151933 (3 * n + 4)

end

end A347554.P7184529114070476025

/-!
# A347555: Number of minimum dominating sets in the hypercube graph Q_n.

The programs for A347555, there is no canonical definition to state claims against.
-/

/-! ## A347555.P8510552979953979962

`sqrt(A323515(n+1))`
-/

namespace A347555.P8510552979953979962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A323515 (n + 1) : ℝ)

end

end A347555.P8510552979953979962

/-! ## A347555.P16205741067837755751

`A018744(A127320(n+1))`
-/

namespace A347555.P16205741067837755751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018744 (A127320 (n + 1)).toNat

end

end A347555.P16205741067837755751

/-!
# A347558: Number of minimum dominating sets in the n-ladder graph.

The programs for A347558, the canonical program `A347558.P11816180606456264473` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347558 has offset 1).

The definition of A347558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347558.P11816180606456264473

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=6, a(2)=3, a(3)=12, a(4)=2, a(5)=17, a(6)=2, a(7)=20, a(8)=2, a(9)=24`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347558

/-- `2*a(n-2)-a(n-4)` -/
def P11816180606456264473.Spec : Prop :=
  ∀ n, P11816180606456264473.a n = A347558 (n + 1)

theorem P11816180606456264473.correct : P11816180606456264473.Spec := by
  intro n
  simp only [A347558, Nat.add_sub_cancel]

end A347558

/-! ## A347558.P5279541392634797495

`A350820(∑[n+2])`
-/

namespace A347558.P5279541392634797495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350820 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347558.P5279541392634797495

namespace A347558

/-- `A350820(∑[n+2])` -/
def P5279541392634797495.Spec : Prop :=
  ∀ n, P5279541392634797495.a n = A347558 (n + 1)

end A347558

/-! ## A347558.P15127916603669051333

`A350820(A117142(2*(n+1)))%89`
-/

namespace A347558.P15127916603669051333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350820 (A117142 (2 * (n + 1))).toNat) 89

end

end A347558.P15127916603669051333

namespace A347558

/-- `A350820(A117142(2*(n+1)))%89` -/
def P15127916603669051333.Spec : Prop :=
  ∀ n, P15127916603669051333.a n = A347558 (n + 1)

end A347558

/-! ## A347558.P7418078317128889412

`lcm(A033999(n), A350820(A000096(n+1)))`
-/

namespace A347558.P7418078317128889412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A350820 (A000096 (n + 1)).toNat)

end

end A347558.P7418078317128889412

namespace A347558

/-- `lcm(A033999(n), A350820(A000096(n+1)))` -/
def P7418078317128889412.Spec : Prop :=
  ∀ n, (P7418078317128889412.a n : ℤ) = A347558 (n + 1)

end A347558

/-! ## A347558.P15140495523064703665

`∑{d}[A350820(A000096(n+1)), A000010(#)]`
-/

namespace A347558.P15140495523064703665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350820 (A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A347558.P15140495523064703665

namespace A347558

/-- `∑{d}[A350820(A000096(n+1)), A000010(#)]` -/
def P15140495523064703665.Spec : Prop :=
  ∀ n, P15140495523064703665.a n = A347558 (n + 1)

end A347558

/-!
# A347562: Number of ways to write n as 16^w + x^2 + (y^2 + 23*z^4)/324, where w,x,y,z are nonnegative integers.

The programs for A347562, there is no canonical definition to state claims against.
-/

/-! ## A347562.P8822326960304851114

`A116452(A187829(n+1)*A200370(n+1))`
-/

namespace A347562.P8822326960304851114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116452 (A187829 (n + 1) * A200370 (n + 1)).toNat

end

end A347562.P8822326960304851114

/-! ## A347562.P16544727615313565866

`A001221(A371293(3*(n+1))+A072649(n+1))`
-/

namespace A347562.P16544727615313565866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A371293 (3 * (n + 1)) + A072649 (n + 1)).toNat

end

end A347562.P16544727615313565866

/-! ## A347562.P14214335856991829300

`A001221(A109886(2*n)+A309755(3*n+5)+1)`
-/

namespace A347562.P14214335856991829300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A109886 (2 * n) + (A309755 (3 * n + 5) + 1)).toNat

end

end A347562.P14214335856991829300

/-! ## A347562.P11643252350605253364

`A001221((3*n+4)²*A211400(n+4))`
-/

namespace A347562.P11643252350605253364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (((3 * n + 4) ^ 2 : ℤ) * A211400 (n + 4)).toNat

end

end A347562.P11643252350605253364

/-!
# A347563: Binomial complement triangle, T(n,k) = LCM(1,...,n)/binomial(n,k) for 0 <= k <= n, a(0) = T(0,0) = 0, read by rows.

The programs for A347563, there is no canonical definition to state claims against.
-/

/-! ## A347563.P6165201603979242993

`A127288(A098361(n)/A055642(n))%(2^n)`
-/

namespace A347563.P6165201603979242993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127288 (SequenceMachineLib.roundAway ((A098361 n : ℚ) / (A055642 n : ℚ))).toNat) (2 ^ n : ℤ)

end

end A347563.P6165201603979242993

/-! ## A347563.P9253697541756821111

`A127288((A098361(n)-A000007(n))/A055642(n))`
-/

namespace A347563.P9253697541756821111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (SequenceMachineLib.roundAway ((A098361 n - A000007 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A347563.P9253697541756821111

/-! ## A347563.P6834043199003551584

`A127288(A057427(n)/A055642(n)*A098361(n))`
-/

namespace A347563.P6834043199003551584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (SequenceMachineLib.roundAway ((A057427 n : ℚ) / (A055642 n : ℚ) * (A098361 n : ℚ))).toNat

end

end A347563.P6834043199003551584

/-! ## A347563.P7477466500632559342

`A127288(A098361(n)/A055642(n)*A178334(n))`
-/

namespace A347563.P7477466500632559342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (SequenceMachineLib.roundAway ((A098361 n : ℚ) / (A055642 n : ℚ) * (A178334 n : ℚ))).toNat

end

end A347563.P7477466500632559342

/-! ## A347563.P15293957188085327155

`A008683(A056449(n+2))+A098361(n)/A055642(n)`
-/

namespace A347563.P15293957188085327155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A056449 (n + 2)).toNat : ℚ) + (A098361 n : ℚ) / (A055642 n : ℚ)

end

end A347563.P15293957188085327155

/-!
# A347564: Record the number of distinct terms seen thus far, then the number of distinct terms seen only once, then twice, and so on until recording a zero; whereupon repeat the count.

The programs for A347564, there is no canonical definition to state claims against.
-/

/-! ## A347564.P11422851998563975655

`A227781(A179770(2*(n+2))+and(n, A324170(3*n+2)))`
-/

namespace A347564.P11422851998563975655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227781 (A179770 (2 * (n + 2)) + Int.land (n : ℤ) (A324170 (3 * n + 2))).toNat

end

end A347564.P11422851998563975655

/-! ## A347564.P5342394370627342645

`A008441(A269303(n+1)+A144445(n+5))`
-/

namespace A347564.P5342394370627342645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A269303 (n + 1) + A144445 (n + 5)).toNat

end

end A347564.P5342394370627342645

/-! ## A347564.P15605233365375154125

`A345811(3*n+4)%A283617(A001934(n))`
-/

namespace A347564.P15605233365375154125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345811 (3 * n + 4)) (A283617 (A001934 n).toNat)

end

end A347564.P15605233365375154125

/-!
# A347565: Primes p such that A241014(A000720(p)) is +1 or -1.

The programs for A347565, there is no canonical definition to state claims against.
-/

/-! ## A347565.P9818157053753329533

`A339855(∑[A111820(n)])`
-/

namespace A347565.P9818157053753329533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339855 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347565.P9818157053753329533

/-! ## A347565.P11438332867534269880

`p?[A339855(∑[A298240(n+1)])]`
-/

namespace A347565.P11438332867534269880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339855 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347565.P11438332867534269880

/-! ## A347565.P10364868340982441241

`A339855(A223179(n+1)+A007092(n+1))`
-/

namespace A347565.P10364868340982441241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339855 (A223179 (n + 1) + A007092 (n + 1)).toNat

end

end A347565.P10364868340982441241

/-!
# A347567: Positive integers which are not twice a positive square and cannot be written as twice a positive square plus an odd prime or twice a positive square plus twice an odd prime.

The programs for A347567, there is no canonical definition to state claims against.
-/

/-! ## A347567.P7794721731635998488

`record[A226646(n+1)%A240039(n+1)]`
-/

namespace A347567.P7794721731635998488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226646 (n + 1)) (A240039 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347567.P7794721731635998488

/-!
# A347568: Positive integers which are not twice a positive triangular number and cannot be written as twice a positive triangular number plus an odd prime or twice a positive triangular number plus twice an odd prime.

The programs for A347568, there is no canonical definition to state claims against.
-/

/-! ## A347568.P2297797100720654593

`Δ[A232565(record[A059260(n)])]`
-/

namespace A347568.P2297797100720654593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232565 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347568.P2297797100720654593

/-! ## A347568.P898161628804694432

`∑[A200329(∑[A121198(n+1)])]`
-/

namespace A347568.P898161628804694432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121198 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347568.P898161628804694432

/-!
# A347570: Table read by antidiagonals upward: the n-th row gives the lexicographically earliest infinite B_n sequence.

The programs for A347570, there is no canonical definition to state claims against.
-/

/-! ## A347570.P10158742702001635096

`A365515(n+1)+1`
-/

namespace A347570.P10158742702001635096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (n + 1) + 1

end

end A347570.P10158742702001635096

/-! ## A347570.P10634786743909154790

`A116925(n)-A321413(A306209(n))`
-/

namespace A347570.P10634786743909154790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 n - A321413 (A306209 n).toNat

end

end A347570.P10634786743909154790

/-! ## A347570.P8362644452340321109

`A228881(A116925(n))%record[A107262(n)]`
-/

namespace A347570.P8362644452340321109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228881 (A116925 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A347570.P8362644452340321109

/-! ## A347570.P11273300348992914444

`A228881(A116925(n))+A000007(A132302(n))`
-/

namespace A347570.P11273300348992914444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228881 (A116925 n).toNat + A000007 (A132302 n).toNat

end

end A347570.P11273300348992914444

/-!
# A347571: Expansion of the e.g.f. (-1 - 2*x - 2*log(1 - x) + exp(-2*x) / (1 - x)^2) / 4 + 1.

The programs for A347571, there is no canonical definition to state claims against.
-/

/-! ## A347571.P12627412137481913923

`A004525(A327006(n+1)+A321989(n))`
-/

namespace A347571.P12627412137481913923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A327006 (n + 1) + A321989 n).toNat

end

end A347571.P12627412137481913923

/-! ## A347571.P18241659071860044747

`A004526(A327006(n+1)+A321989(n))`
-/

namespace A347571.P18241659071860044747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A327006 (n + 1) + A321989 n).toNat

end

end A347571.P18241659071860044747

/-! ## A347571.P4935503986811029269

`A025480(A327006(n+1)+A321989(n))`
-/

namespace A347571.P4935503986811029269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A327006 (n + 1) + A321989 n).toNat

end

end A347571.P4935503986811029269

/-!
# A347572: Number of partitions of n into 5 or more distinct parts.

The programs for A347572, there is no canonical definition to state claims against.
-/

/-! ## A347572.P10258437361545925973

`A118759(A026813(n+1))+A001401(n)`
-/

namespace A347572.P10258437361545925973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A026813 (n + 1)).toNat + A001401 n

end

end A347572.P10258437361545925973

/-! ## A347572.P2176173257342662274

`A323048(A001402(n)+1)`
-/

namespace A347572.P2176173257342662274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A001402 n + 1).toNat

end

end A347572.P2176173257342662274

/-! ## A347572.P11577129938575845252

`A323048(A008629(n)+1)`
-/

namespace A347572.P11577129938575845252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A008629 n + 1).toNat

end

end A347572.P11577129938575845252

/-! ## A347572.P12190118098030849115

`A323048(A341870(n)+1)`
-/

namespace A347572.P12190118098030849115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A341870 (n + 21) + 1).toNat

end

end A347572.P12190118098030849115

/-! ## A347572.P5046142937076392745

`A085736(A001402(n))`
-/

namespace A347572.P5046142937076392745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A001402 n).toNat

end

end A347572.P5046142937076392745

/-!
# A347573: Number of partitions of n into 6 or more distinct parts.

The programs for A347573, there is no canonical definition to state claims against.
-/

/-! ## A347573.P9800603287371749482

`A118759(A026813(n))+A008629(n)`
-/

namespace A347573.P9800603287371749482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A026813 n).toNat + A008629 n

end

end A347573.P9800603287371749482

/-! ## A347573.P1361517068848853367

`∑[A184945(A317239(n))+A001996(n)]`
-/

namespace A347573.P1361517068848853367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 (A317239 n).toNat + A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347573.P1361517068848853367

/-! ## A347573.P2012861138210434240

`A026813(n)+A008636(n)-A111660(A308990(n+3))`
-/

namespace A347573.P2012861138210434240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 n + (A008636 n - A111660 (A308990 (n + 3)).toNat)

end

end A347573.P2012861138210434240

/-! ## A347573.P3204247422627884176

`A067898(A036378(n))+A008636(n)`
-/

namespace A347573.P3204247422627884176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A036378 n).toNat + A008636 n

end

end A347573.P3204247422627884176

/-!
# A347574: Number of partitions of n into 7 or more distinct parts.

The programs for A347574, there is no canonical definition to state claims against.
-/

/-! ## A347574.P6985654925484463357

`A347573(A020719(n))-A001402(A020719(n))`
-/

namespace A347574.P6985654925484463357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347573 ((A020719 n).toNat + 21) - A001402 (A020719 n).toNat

end

end A347574.P6985654925484463357

/-! ## A347574.P7367095851257445920

`A185037(A340693(n))+A008637(n)`
-/

namespace A347574.P7367095851257445920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A340693 n).toNat + A008637 n

end

end A347574.P7367095851257445920

/-! ## A347574.P6331567983213485690

`A340719(n)+A178798(A227135(n))`
-/

namespace A347574.P6331567983213485690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340719 (n + 36) + A178798 (A227135 n).toNat

end

end A347574.P6331567983213485690

/-! ## A347574.P8509120372079500263

`A340719(n)+A185037(A340693(n))`
-/

namespace A347574.P8509120372079500263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340719 (n + 36) + A185037 (A340693 n).toNat

end

end A347574.P8509120372079500263

/-!
# A347575: Number of partitions of n into 8 or more distinct parts.

The programs for A347575, there is no canonical definition to state claims against.
-/

/-! ## A347575.P332841875673608756

`A185284(A047331(n+1))+A008632(n)`
-/

namespace A347575.P332841875673608756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A047331 (n + 1)).toNat + A008632 n

end

end A347575.P332841875673608756

/-! ## A347575.P9449203731727072983

`A185284(A047331(n+1))+A008638(n)`
-/

namespace A347575.P9449203731727072983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A047331 (n + 1)).toNat + A008638 n

end

end A347575.P9449203731727072983

/-!
# A347576: Number of partitions of n into 9 or more distinct parts.

The programs for A347576, there is no canonical definition to state claims against.
-/

/-! ## A347576.P16637120995988577609

`A185284(A069905(n))+A008639(n)`
-/

namespace A347576.P16637120995988577609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A069905 n).toNat + A008639 n

end

end A347576.P16637120995988577609

/-!
# A347577: Number of partitions of n into 10 or more distinct parts.

The programs for A347577, there is no canonical definition to state claims against.
-/

/-! ## A347577.P7261284062580039318

`A124761(A054908(n))+A008634(n)`
-/

namespace A347577.P7261284062580039318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A054908 n).toNat + A008634 n

end

end A347577.P7261284062580039318

/-! ## A347577.P6170378598660310211

`A055641(A256598(3*n))+A008634(n)`
-/

namespace A347577.P6170378598660310211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A256598 (3 * n)).toNat + A008634 n

end

end A347577.P6170378598660310211

/-! ## A347577.P4723762879641656288

`A055641(A256598(3*n))+A008640(n)`
-/

namespace A347577.P4723762879641656288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A256598 (3 * n)).toNat + A008640 n

end

end A347577.P4723762879641656288

/-! ## A347577.P9584238614476961801

`A008634(n)%A253953(A193798(n))`
-/

namespace A347577.P9584238614476961801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008634 n) (A253953 (A193798 n).toNat)

end

end A347577.P9584238614476961801

/-! ## A347577.P16881340368164565116

`A008640(n)+A000007(A000070(n+3))`
-/

namespace A347577.P16881340368164565116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008640 n + A000007 (A000070 (n + 3)).toNat

end

end A347577.P16881340368164565116

/-!
# A347578: Number of partitions of n into at most 4 prime parts.

The programs for A347578, there is no canonical definition to state claims against.
-/

/-! ## A347578.P1293194659537851989

`A259194(n)+A071335(abs(1-n)+1)`
-/

namespace A347578.P1293194659537851989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259194 n + A071335 (|1 - (n : ℤ)| + 1).toNat

end

end A347578.P1293194659537851989

/-! ## A347578.P3163117382103541753

`A347609(n)-A259195(n)`
-/

namespace A347578.P3163117382103541753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 n - A259195 n

end

end A347578.P3163117382103541753

/-! ## A347578.P11095044553185233921

`A347609(n)+A057428(n)*A259195(n)`
-/

namespace A347578.P11095044553185233921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 n + A057428 n * A259195 n

end

end A347578.P11095044553185233921

/-! ## A347578.P3562781565267103401

`A347609(n)-A308854(n)/A028310(n)`
-/

namespace A347578.P3562781565267103401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347609 n : ℚ) - (A308854 n : ℚ) / (A028310 n : ℚ)

end

end A347578.P3562781565267103401

/-! ## A347578.P12302825314804301426

`A347609(n)+A001489(A259195(n)+1)+1`
-/

namespace A347578.P12302825314804301426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 n + A001489 (A259195 n + 1).toNat + 1

end

end A347578.P12302825314804301426

/-! ## A347578.P2946345923343917877

`A347609(n)-A308854(n)/A233583(n+1)`
-/

namespace A347578.P2946345923343917877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347609 n : ℚ) - (A308854 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A347578.P2946345923343917877

/-!
# A347579: Irregular triangle read by rows: T(n,k) = 1 iff there is no partition of n into exactly k consecutive parts, for n >= 1, 1 <= k <= A003056(n).

The programs for A347579, there is no canonical definition to state claims against.
-/

/-! ## A347579.P17105805953989301745

`1-A237048(n+1)`
-/

namespace A347579.P17105805953989301745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A237048 (n + 1)

end

end A347579.P17105805953989301745

/-! ## A347579.P18326021338317372976

`C(2, A239662(n+1))`
-/

namespace A347579.P18326021338317372976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A239662 (n + 1)).toNat

end

end A347579.P18326021338317372976

/-! ## A347579.P16122681895168598003

`C(2, A272026(n+1))`
-/

namespace A347579.P16122681895168598003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A272026 (n + 1)).toNat

end

end A347579.P16122681895168598003

/-! ## A347579.P18113942539786094030

`floor(acot(A196020(n+1)))`
-/

namespace A347579.P18113942539786094030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A196020 (n + 1) : ℝ)⌋

end

end A347579.P18113942539786094030

/-! ## A347579.P12374815393629988165

`floor(acot(A211343(n+1)))`
-/

namespace A347579.P12374815393629988165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A211343 (n + 1) : ℝ)⌋

end

end A347579.P12374815393629988165

/-! ## A347579.P1775556329767258357

`floor(acot(A261699(n+1)))`
-/

namespace A347579.P1775556329767258357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A261699 (n + 1) : ℝ)⌋

end

end A347579.P1775556329767258357

/-! ## A347579.P10389981226880945308

`log2(gcd(2, A271344(n+1)))`
-/

namespace A347579.P10389981226880945308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A271344 (n + 1)) : ℝ)

end

end A347579.P10389981226880945308

/-! ## A347579.P12683003926022977913

`char[eq[0, A339275(n+1)]]`
-/

namespace A347579.P12683003926022977913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339275 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A347579.P12683003926022977913

/-! ## A347579.P7068376367347151633

`char[lt[A271343(n+1), 1]]`
-/

namespace A347579.P7068376367347151633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271343 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A347579.P7068376367347151633

/-! ## A347579.P3123044854669438963

`char[lt[A285891(n+1), 1]]`
-/

namespace A347579.P3123044854669438963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285891 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A347579.P3123044854669438963

/-!
# A347580: Triangle read by rows: T(n,k) is the number of chains of length k in the poset of all arithmetic progressions contained in {1,...,n} of length in the range [1..n-1], ordered by inclusion.

The programs for A347580, there is no canonical definition to state claims against.
-/

/-! ## A347580.P9657889833986943737

`A245355(A074909(n)!)`
-/

namespace A347580.P9657889833986943737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245355 (Nat.factorial (A074909 n).toNat)

end

end A347580.P9657889833986943737

/-! ## A347580.P6632765364514503766

`A245355(A239986(n+1)!)`
-/

namespace A347580.P6632765364514503766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245355 (Nat.factorial (A239986 (n + 1)).toNat)

end

end A347580.P6632765364514503766

/-! ## A347580.P3229473408757624672

`A245355(A057145(n+2)!)`
-/

namespace A347580.P3229473408757624672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245355 (Nat.factorial (A057145 (n + 2)).toNat)

end

end A347580.P3229473408757624672

/-! ## A347580.P2678621041451372331

`A245355(A007318(comp[∑[n+1]])!)`
-/

namespace A347580.P2678621041451372331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245355 (Nat.factorial (A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat)

end

end A347580.P2678621041451372331

/-! ## A347580.P14933610982906444969

`A320313(A174036(n))+A155864(A007401(n+1))`
-/

namespace A347580.P14933610982906444969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320313 (A174036 n).toNat + A155864 (A007401 (n + 1)).toNat

end

end A347580.P14933610982906444969

/-!
# A347581: The Barnyard sequence: a(n) is the minimum number of unit length line segments required to enclose areas of 1 through n on a square grid.

The programs for A347581, there is no canonical definition to state claims against.
-/

/-! ## A347581.P6566575364124017801

`∑[ceil(3*log(n+3))]`
-/

namespace A347581.P6566575364124017801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * Real.log (n + 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347581.P6566575364124017801

/-! ## A347581.P15475405805033624296

`floor(4*sinh(log2(n+2)))`
-/

namespace A347581.P15475405805033624296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * Real.sinh (Real.logb 2 (n + 2 : ℝ))⌋

end

end A347581.P15475405805033624296

/-! ## A347581.P16342030903758310899

`floor(∑[a(n-1)+2/5])` with `a(0)=4, a(1)=5`
-/

namespace A347581.P16342030903758310899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A347581.P16342030903758310899

/-! ## A347581.P3431716748924144150

`ceil((n+2)^acos(0)+2*n+1)`
-/

namespace A347581.P3431716748924144150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) ^ (Real.arccos (0 : ℝ)) + (2 * n + 1 : ℝ)⌉

end

end A347581.P3431716748924144150

/-! ## A347581.P3058528529366711635

`ceil((n+2)^asin(1)+2*n+1)`
-/

namespace A347581.P3058528529366711635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) ^ (Real.arcsin (1 : ℝ)) + (2 * n + 1 : ℝ)⌉

end

end A347581.P3058528529366711635

/-!
# A347582: Number of length-2n binary strings of the form xxyy.

The programs for A347582, there is no canonical definition to state claims against.
-/

/-! ## A347582.P18010572541751661586

`A347583(n+1)+A027375(n+1)`
-/

namespace A347582.P18010572541751661586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347583 (n + 1) + A027375 (n + 1)

end

end A347582.P18010572541751661586

/-! ## A347582.P11295231332864370701

`A347583(n+1)+A216953(A000217(n+1))`
-/

namespace A347582.P11295231332864370701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347583 (n + 1) + A216953 (A000217 (n + 1)).toNat

end

end A347582.P11295231332864370701

/-!
# A347583: Number of length-2n binary strings of the form xxyy, with x and y both nonempty.

The programs for A347583, there is no canonical definition to state claims against.
-/

/-! ## A347583.P5922527931197071584

`A347582(n+1)-A027375(n+1)`
-/

namespace A347583.P5922527931197071584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347582 (n + 1) - A027375 (n + 1)

end

end A347583.P5922527931197071584

/-! ## A347583.P18299176328394653070

`∑[A048493(n)]-A340524(A002039(n))`
-/

namespace A347583.P18299176328394653070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A340524 (A002039 n).toNat

end

end A347583.P18299176328394653070

/-!
# A347584: Triangle formed by Pascal's rule, except that the n-th row begins and ends with the n-th Lucas number.

The programs for A347584, there is no canonical definition to state claims against.
-/

/-! ## A347584.P1379977628629981852

`2*A074829(n+1)-A108617(n)`
-/

namespace A347584.P1379977628629981852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074829 (n + 1) - A108617 n

end

end A347584.P1379977628629981852

/-! ## A347584.P1320673198562211298

`3*A074829(n+1)-A316939(n)`
-/

namespace A347584.P1320673198562211298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074829 (n + 1) - A316939 n

end

end A347584.P1320673198562211298

/-! ## A347584.P8938325652169999684

`A004277(A074829(n+1))-A108617(n)`
-/

namespace A347584.P8938325652169999684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A074829 (n + 1)).toNat - A108617 n

end

end A347584.P8938325652169999684

/-! ## A347584.P7979794999764111441

`A008486(A074829(n+1))-A316939(n)`
-/

namespace A347584.P7979794999764111441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A074829 (n + 1)).toNat - A316939 n

end

end A347584.P7979794999764111441

/-! ## A347584.P14961838712138951802

`A004277(A316939(n)-A108617(n))-A108617(n)`
-/

namespace A347584.P14961838712138951802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A316939 n - A108617 n).toNat - A108617 n

end

end A347584.P14961838712138951802

/-! ## A347584.P12660188908283937841

`A005843(A316939(n)-A108617(n))-A108617(n)`
-/

namespace A347584.P12660188908283937841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A316939 n - A108617 n).toNat - A108617 n

end

end A347584.P12660188908283937841

/-! ## A347584.P11066478831810430747

`A008486(A316939(n)-A108617(n))-A316939(n)`
-/

namespace A347584.P11066478831810430747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A316939 n - A108617 n).toNat - A316939 n

end

end A347584.P11066478831810430747

/-! ## A347584.P17574232709644509342

`A379837(n)-2*A108617(n)`
-/

namespace A347584.P17574232709644509342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379837 n - 2 * A108617 n

end

end A347584.P17574232709644509342

/-!
# A347585: Number of partitions of n^2 into n or more parts.

The programs for A347585, there is no canonical definition to state claims against.
-/

/-! ## A347585.P11386190261937941245

`A072213(n)+A206240(n)-A206226(n)`
-/

namespace A347585.P11386190261937941245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072213 n + A206240 n - A206226 n

end

end A347585.P11386190261937941245

/-! ## A347585.P906022907917454903

`A206240(n)+A238640(n)-1`
-/

namespace A347585.P906022907917454903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206240 n + (A238640 n - 1)

end

end A347585.P906022907917454903

/-! ## A347585.P555756579603299852

`A072213(n)-A161407(A028310(n))`
-/

namespace A347585.P555756579603299852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072213 n - A161407 (A028310 n).toNat

end

end A347585.P555756579603299852

/-! ## A347585.P9901346554553803497

`A072213(n)-A316353(A253909(n))`
-/

namespace A347585.P9901346554553803497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072213 n - A316353 (A253909 n).toNat

end

end A347585.P9901346554553803497

/-! ## A347585.P14645824380472718335

`A000041(n²)-A316353(A253909(n))`
-/

namespace A347585.P14645824380472718335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n ^ 2) - A316353 (A253909 n).toNat

end

end A347585.P14645824380472718335

/-! ## A347585.P749129407040422409

`A072213(n)-A161407(n)*A178334(n)`
-/

namespace A347585.P749129407040422409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072213 n - A161407 n * A178334 n

end

end A347585.P749129407040422409

/-! ## A347585.P10670791901784108466

`A072213(n)-A161407(n)%A206226(n)`
-/

namespace A347585.P10670791901784108466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072213 n - Int.tmod (A161407 n) (A206226 n)

end

end A347585.P10670791901784108466

/-!
# A347586: Number of partitions of n into at most 4 distinct parts.

The programs for A347586, the canonical program `A347586.P6878572311121842152` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347586 has offset 0).

The definition of A347586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347586.P6878572311121842152

`A055104(n)-∑[A008615(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A347586

/-- `A055104(n)-∑[A008615(n)]` -/
def P6878572311121842152.Spec : Prop :=
  ∀ n, P6878572311121842152.a n = A347586 n

theorem P6878572311121842152.correct : P6878572311121842152.Spec := by
  intro n
  simp only [A347586]

end A347586

/-! ## A347586.P10073094573607013041

`A055104(n)-A069905(n+1)`
-/

namespace A347586.P10073094573607013041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055104 n - A069905 (n + 1)

end

end A347586.P10073094573607013041

namespace A347586

/-- `A055104(n)-A069905(n+1)` -/
def P10073094573607013041.Spec : Prop :=
  ∀ n, P10073094573607013041.a n = A347586 n

end A347586

/-! ## A347586.P14300521566870187513

`A065033(n)+A026810(A289207(n))`
-/

namespace A347586.P14300521566870187513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A026810 (A289207 n).toNat

end

end A347586.P14300521566870187513

namespace A347586

/-- `A065033(n)+A026810(A289207(n))` -/
def P14300521566870187513.Spec : Prop :=
  ∀ n, P14300521566870187513.a n = A347586 n

end A347586

/-! ## A347586.P6274550628058743135

`A055104(n)-A005044(A004273(n))`
-/

namespace A347586.P6274550628058743135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055104 n - A005044 (A004273 n).toNat

end

end A347586.P6274550628058743135

namespace A347586

/-- `A055104(n)-A005044(A004273(n))` -/
def P6274550628058743135.Spec : Prop :=
  ∀ n, P6274550628058743135.a n = A347586 n

end A347586

/-! ## A347586.P11784634879388817328

`A055104(n)-A005044(2*(n+1))`
-/

namespace A347586.P11784634879388817328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055104 n - A005044 (2 * (n + 1))

end

end A347586.P11784634879388817328

namespace A347586

/-- `A055104(n)-A005044(2*(n+1))` -/
def P11784634879388817328.Spec : Prop :=
  ∀ n, P11784634879388817328.a n = A347586 n

end A347586

/-! ## A347586.P12011453164649755696

`A008619(A008773(n)-A004526(n))`
-/

namespace A347586.P12011453164649755696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008773 n - A004526 n).toNat

end

end A347586.P12011453164649755696

namespace A347586

/-- `A008619(A008773(n)-A004526(n))` -/
def P12011453164649755696.Spec : Prop :=
  ∀ n, P12011453164649755696.a n = A347586 n

end A347586

/-! ## A347586.P14271221432395283085

`A008619(A008773(n)-A123108(n))`
-/

namespace A347586.P14271221432395283085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008773 n - A123108 n).toNat

end

end A347586.P14271221432395283085

namespace A347586

/-- `A008619(A008773(n)-A123108(n))` -/
def P14271221432395283085.Spec : Prop :=
  ∀ n, P14271221432395283085.a n = A347586 n

end A347586

/-! ## A347586.P8280077937467243570

`A004526(A008773(n)-A004526(n))+1`
-/

namespace A347586.P8280077937467243570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008773 n - A004526 n).toNat + 1

end

end A347586.P8280077937467243570

namespace A347586

/-- `A004526(A008773(n)-A004526(n))+1` -/
def P8280077937467243570.Spec : Prop :=
  ∀ n, P8280077937467243570.a n = A347586 n

end A347586

/-! ## A347586.P10720531511007248083

`A008619(A008773(n)+1-A008619(n))`
-/

namespace A347586.P10720531511007248083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008773 n + (1 - A008619 n)).toNat

end

end A347586.P10720531511007248083

namespace A347586

/-- `A008619(A008773(n)+1-A008619(n))` -/
def P10720531511007248083.Spec : Prop :=
  ∀ n, P10720531511007248083.a n = A347586 n

end A347586

/-! ## A347586.P9416410052112427295

`A008619(1-(A008619(n)-A008773(n)))`
-/

namespace A347586.P9416410052112427295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (1 - (A008619 n - A008773 n)).toNat

end

end A347586.P9416410052112427295

namespace A347586

/-- `A008619(1-(A008619(n)-A008773(n)))` -/
def P9416410052112427295.Spec : Prop :=
  ∀ n, P9416410052112427295.a n = A347586 n

end A347586

/-!
# A347587: Number of partitions of n into at most 5 distinct parts.

The programs for A347587, the canonical program `A347587.P13944628912885106107` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347587 has offset 0).

The definition of A347587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347587.P13944628912885106107

`A008628(n)+A014591(n)-A001401(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A347587

/-- `A008628(n)+A014591(n)-A001401(n)` -/
def P13944628912885106107.Spec : Prop :=
  ∀ n, P13944628912885106107.a n = A347587 n

theorem P13944628912885106107.correct : P13944628912885106107.Spec := by
  intro n
  simp only [A347587]

end A347587

/-! ## A347587.P3997828590553204265

`A001401(n)+A014591(n)-A008766(n)`
-/

namespace A347587.P3997828590553204265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n + (A014591 n - A008766 n)

end

end A347587.P3997828590553204265

namespace A347587

/-- `A001401(n)+A014591(n)-A008766(n)` -/
def P3997828590553204265.Spec : Prop :=
  ∀ n, P3997828590553204265.a n = A347587 n

end A347587

/-! ## A347587.P5437194626036837515

`A288001(n)%A375703(2*n+3)`
-/

namespace A347587.P5437194626036837515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288001 n) (A375703 (2 * n + 3))

end

end A347587.P5437194626036837515

namespace A347587

/-- `A288001(n)%A375703(2*n+3)` -/
def P5437194626036837515.Spec : Prop :=
  ∀ n, P5437194626036837515.a n = A347587 n

end A347587

/-! ## A347587.P8947949739452434282

`A288001(n)+A008683(A392728(n+1))`
-/

namespace A347587.P8947949739452434282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288001 n + A008683 (A392728 (n + 1)).toNat

end

end A347587.P8947949739452434282

namespace A347587

/-- `A288001(n)+A008683(A392728(n+1))` -/
def P8947949739452434282.Spec : Prop :=
  ∀ n, P8947949739452434282.a n = A347587 n

end A347587

/-! ## A347587.P9260424471424062194

`A288001(n)%A223625(A000040(n+1))`
-/

namespace A347587.P9260424471424062194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288001 n) (A223625 (A000040 (n + 1)).toNat)

end

end A347587.P9260424471424062194

namespace A347587

/-- `A288001(n)%A223625(A000040(n+1))` -/
def P9260424471424062194.Spec : Prop :=
  ∀ n, P9260424471424062194.a n = A347587 n

end A347587

/-!
# A347588: Number of partitions of n into at most 6 distinct parts.

The programs for A347588, there is no canonical definition to state claims against.
-/

/-! ## A347588.P10425640396149688286

`A008629(n)+A347586(n)-A001402(n)`
-/

namespace A347588.P10425640396149688286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008629 n + (A347586 n - A001402 n)

end

end A347588.P10425640396149688286

/-! ## A347588.P9081608548075649839

`A000009(n)-A185284(A240852(n))`
-/

namespace A347588.P9081608548075649839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A185284 (A240852 n).toNat

end

end A347588.P9081608548075649839

/-! ## A347588.P5162313168860824527

`A000009(n)-A288424(A185264(n))`
-/

namespace A347588.P5162313168860824527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A288424 (A185264 n).toNat

end

end A347588.P5162313168860824527

/-!
# A347590: Number of compositions (ordered partitions) of n^2 into at most n squares.

The programs for A347590, there is no canonical definition to state claims against.
-/

/-! ## A347590.P7753637132962931735

`A004277(A271719(n!))`
-/

namespace A347590.P7753637132962931735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A271719 (Nat.factorial n)).toNat

end

end A347590.P7753637132962931735

/-! ## A347590.P10689647343721514432

`A237519(A233694(n)-n)`
-/

namespace A347590.P10689647343721514432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237519 (A233694 n - (n : ℤ)).toNat

end

end A347590.P10689647343721514432

/-! ## A347590.P15754300022145910039

`∏{e}[A079241(n), A079251(#²)]`
-/

namespace A347590.P15754300022145910039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A079251 (Nat.factorization (f1 n).natAbs p ^ 2)

end

end A347590.P15754300022145910039

/-!
# A347591: Number of compositions (ordered partitions) of n^3 into at most n cubes.

The programs for A347591, there is no canonical definition to state claims against.
-/

/-! ## A347591.P958772967145212491

`A324699(A143569(n))`
-/

namespace A347591.P958772967145212491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324699 (A143569 n).toNat

end

end A347591.P958772967145212491

/-! ## A347591.P8477901837771009904

`A354987(A150256(n))`
-/

namespace A347591.P8477901837771009904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354987 (A150256 n).toNat

end

end A347591.P8477901837771009904

/-! ## A347591.P7841229987725212047

`A324699(A351936(n))`
-/

namespace A347591.P7841229987725212047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324699 (A351936 n).toNat

end

end A347591.P7841229987725212047

/-! ## A347591.P6125938351031694464

`A327623(A001826(n!))`
-/

namespace A347591.P6125938351031694464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327623 (A001826 (Nat.factorial n)).toNat

end

end A347591.P6125938351031694464

/-!
# A347596: Alternating row sums of A346837.

The programs for A347596, there is no canonical definition to state claims against.
-/

/-! ## A347596.P3103415739553252412

`ogf((1-x+2x^2-4x^3)/(1+4x^2))`
-/

namespace A347596.P3103415739553252412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, -4] [1, 0, 4] n

end

end A347596.P3103415739553252412

/-! ## A347596.P9432484409103599353

`(a(n-1)-4)*a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-2, a(3)=0`
-/

namespace A347596.P9432484409103599353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2, 0] fun n a =>
  (a (n - 1) - 4) * a (n - 2)

end

end A347596.P9432484409103599353

/-! ## A347596.P8672392930457581685

`(-1)^∑[n]*ceil(2^(n-1))*char[(n-1)^(n%2)]`
-/

namespace A347596.P8672392930457581685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n % 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347596.P8672392930457581685

/-! ## A347596.P11998985389556751274

`A146559(abs(or(1, -n))+n)-char[1]`
-/

namespace A347596.P11998985389556751274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (|Int.lor 1 (-(n : ℤ))| + (n : ℤ)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347596.P11998985389556751274

/-! ## A347596.P15479959021322278336

`floor(acot(n))-A009545(comp[2*n+3])`
-/

namespace A347596.P15479959021322278336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - A009545 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A347596.P15479959021322278336

/-!
# A347597: a(n) = Permanent(T(2*n + 1)) where T(n) is the tangent matrix defined in A346831. Bisection of A347598 (odd indices).

The programs for A347597, there is no canonical definition to state claims against.
-/

/-! ## A347597.P9683509491636093913

`A347598(Δ[n²])`
-/

namespace A347597.P9683509491636093913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347598 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A347597.P9683509491636093913

/-! ## A347597.P6633813547334995865

`A347598(2*n+1)+A122045(2*n+1)`
-/

namespace A347597.P6633813547334995865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347598 (2 * n + 1) + A122045 (2 * n + 1)

end

end A347597.P6633813547334995865

/-! ## A347597.P1445429727359876561

`A347601(2*n+1)-A347602(2*n+1)`
-/

namespace A347597.P1445429727359876561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347601 (2 * n + 1) - A347602 (2 * n + 1)

end

end A347597.P1445429727359876561

/-! ## A347597.P5868392247646122123

`A347598(2*n+1)+A347596(2*n+3)`
-/

namespace A347597.P5868392247646122123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347598 (2 * n + 1) + A347596 (2 * n + 3)

end

end A347597.P5868392247646122123

/-! ## A347597.P16320785938611638075

`A182386(2*n+1)+2*A347601(2*n+1)`
-/

namespace A347597.P16320785938611638075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 (2 * n + 1) + 2 * A347601 (2 * n + 1)

end

end A347597.P16320785938611638075

/-!
# A347598: a(n) = permanent(T(n)), where T(n) is the tangent matrix defined in A346831 and n >= 1; by convention a(0) = 1.

The programs for A347598, there is no canonical definition to state claims against.
-/

/-! ## A347598.P4974105925794332401

`A347601(n)-A347602(n)`
-/

namespace A347598.P4974105925794332401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347601 n - A347602 n

end

end A347598.P4974105925794332401

/-! ## A347598.P5133347702122636499

`2*A347601(n)-A000166(n)`
-/

namespace A347598.P5133347702122636499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347601 n - A000166 n

end

end A347598.P5133347702122636499

/-! ## A347598.P4982476064244488104

`A000166(n)-2*A347602(n)`
-/

namespace A347598.P4982476064244488104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - 2 * A347602 n

end

end A347598.P4982476064244488104

/-! ## A347598.P6068824794821170073

`2*A347601(n)-abs(A182386(n))`
-/

namespace A347598.P6068824794821170073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347601 n - |A182386 n|

end

end A347598.P6068824794821170073

/-! ## A347598.P1072055882425440300

`abs(A182386(n))-2*A347602(n)`
-/

namespace A347598.P1072055882425440300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - 2 * A347602 n

end

end A347598.P1072055882425440300

