import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C002
import Seq.B008.C000
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
# A015500: Inverse of 1491st cyclotomic polynomial.

The programs for A015500, there is no canonical definition to state claims against.
-/

/-! ## A015500.P14088462651971552325

`A015668(∑[A309913(n)]-1)`
-/

namespace A015500.P14088462651971552325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015668 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A015500.P14088462651971552325

/-! ## A015500.P5953232601918727940

`A015642(A319318(n+1))*A015668(n)`
-/

namespace A015500.P5953232601918727940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (A319318 (n + 1)).toNat * A015668 n

end

end A015500.P5953232601918727940

/-! ## A015500.P3660321183802993983

`A015642(A048142(n+4))*A015668(n)`
-/

namespace A015500.P3660321183802993983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (A048142 (n + 4)).toNat * A015668 n

end

end A015500.P3660321183802993983

/-! ## A015500.P16925097529086812345

`A015642(A328594(n+1))*A015668(n)`
-/

namespace A015500.P16925097529086812345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (A328594 (n + 1)).toNat * A015668 n

end

end A015500.P16925097529086812345

/-!
# A015502: a(1) = 1, a(n) = Sum_{k=1..n-1} (3^k - 1)/2 * a(k).

The programs for A015502, the canonical program `A015502.P5781236473662073133` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015502 has offset 1).

The definition of A015502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015502.P5781236473662073133

`(3^n+1)/2*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015502

/-- `(3^n+1)/2*a(n-1)` -/
def P5781236473662073133.Spec : Prop :=
  ∀ n, P5781236473662073133.a n = (A015502 (n + 1) : ℚ)

end A015502

/-! ## A015502.P14195917872423651388

`ceil(∏[ceil(3^n/2)]/2)`
-/

namespace A015502.P14195917872423651388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A015502.P14195917872423651388

namespace A015502

/-- `ceil(∏[ceil(3^n/2)]/2)` -/
def P14195917872423651388.Spec : Prop :=
  ∀ n, P14195917872423651388.a n = A015502 (n + 1)

end A015502

/-! ## A015502.P617424855756624119

`∏[a(n-1)+3^(n-1)]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A015502.P617424855756624119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  f1 (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015502.P617424855756624119

namespace A015502

/-- `∏[a(n-1)+3^(n-1)]` -/
def P617424855756624119.Spec : Prop :=
  ∀ n, P617424855756624119.a n = (A015502 (n + 1) : ℚ)

end A015502

/-! ## A015502.P8920367143939793369

`a(n-1)*∑[3*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015502.P8920367143939793369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015502.P8920367143939793369

namespace A015502

/-- `a(n-1)*∑[3*a(n-1)]` -/
def P8920367143939793369.Spec : Prop :=
  ∀ n, (P8920367143939793369.a n : ℤ) = A015502 (n + 1)

end A015502

/-! ## A015502.P15026686130932887988

`round(∏[A007051(n)]/2)`
-/

namespace A015502.P15026686130932887988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A015502.P15026686130932887988

namespace A015502

/-- `round(∏[A007051(n)]/2)` -/
def P15026686130932887988.Spec : Prop :=
  ∀ n, P15026686130932887988.a n = A015502 (n + 1)

end A015502

/-!
# A015503: a(1) = 1, a(n) = Sum_{k=1..n-1} ((4^k - 1)/3)*a(k).

The programs for A015503, the canonical program `A015503.P7832334968073789985` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015503 has offset 1).

The definition of A015503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015503.P7832334968073789985

`(4^n+2)/3*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015503

/-- `(4^n+2)/3*a(n-1)` -/
def P7832334968073789985.Spec : Prop :=
  ∀ n, P7832334968073789985.a n = (A015503 (n + 1) : ℚ)

end A015503

/-! ## A015503.P687271655076126914

`a(n-1)*∑[4*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015503.P687271655076126914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015503.P687271655076126914

namespace A015503

/-- `a(n-1)*∑[4*a(n-1)]` -/
def P687271655076126914.Spec : Prop :=
  ∀ n, (P687271655076126914.a n : ℤ) = A015503 (n + 1)

end A015503

/-! ## A015503.P4024615671730176591

`round(∏[A163834(n)-1]/2)`
-/

namespace A015503.P4024615671730176591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A015503.P4024615671730176591

namespace A015503

/-- `round(∏[A163834(n)-1]/2)` -/
def P4024615671730176591.Spec : Prop :=
  ∀ n, P4024615671730176591.a n = A015503 (n + 1)

end A015503

/-! ## A015503.P14661040280109900714

`a(n-1)*A047849(n)` with `a(0)=1, a(1)=1`
-/

namespace A015503.P14661040280109900714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A047849 n

end

end A015503.P14661040280109900714

namespace A015503

/-- `a(n-1)*A047849(n)` -/
def P14661040280109900714.Spec : Prop :=
  ∀ n, P14661040280109900714.a n = A015503 (n + 1)

end A015503

/-! ## A015503.P5304686083416723740

`a(n-1)*record[A151575(n)]` with `a(0)=1, a(1)=1`
-/

namespace A015503.P5304686083416723740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015503.P5304686083416723740

namespace A015503

/-- `a(n-1)*record[A151575(n)]` -/
def P5304686083416723740.Spec : Prop :=
  ∀ n, P5304686083416723740.a n = A015503 (n + 1)

end A015503

/-!
# A015504: Inverse of 1495th cyclotomic polynomial.

The programs for A015504, there is no canonical definition to state claims against.
-/

/-! ## A015504.P14519120587336762757

`A011639(n)*A320732(A293012(n))`
-/

namespace A015504.P14519120587336762757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011639 n * A320732 (A293012 n).toNat

end

end A015504.P14519120587336762757

/-!
# A015505: Inverse of 1496th cyclotomic polynomial.

The programs for A015505, there is no canonical definition to state claims against.
-/

/-! ## A015505.P3923272024195897125

`A014757(n/gcd(2, n))`
-/

namespace A015505.P3923272024195897125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014757 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A015505.P3923272024195897125

/-!
# A015506: a(1) = 1, a(n) = Sum_{k=1}^{n-1} (5^k - 1)/4 a(k).

The programs for A015506, the canonical program `A015506.P13882913232147616179` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015506 has offset 1).

The definition of A015506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015506.P13882913232147616179

`(5^n+3)/4*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015506

/-- `(5^n+3)/4*a(n-1)` -/
def P13882913232147616179.Spec : Prop :=
  ∀ n, P13882913232147616179.a n = (A015506 (n + 1) : ℚ)

end A015506

/-! ## A015506.P12012265871017211448

`ceil(∏[ceil(5^n/4)]/2)`
-/

namespace A015506.P12012265871017211448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 ^ n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A015506.P12012265871017211448

namespace A015506

/-- `ceil(∏[ceil(5^n/4)]/2)` -/
def P12012265871017211448.Spec : Prop :=
  ∀ n, P12012265871017211448.a n = A015506 (n + 1)

end A015506

/-! ## A015506.P16847299634939940861

`a(n-1)*∑[5*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015506.P16847299634939940861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015506.P16847299634939940861

namespace A015506

/-- `a(n-1)*∑[5*a(n-1)]` -/
def P16847299634939940861.Spec : Prop :=
  ∀ n, (P16847299634939940861.a n : ℤ) = A015506 (n + 1)

end A015506

/-! ## A015506.P962466451357916011

`a(n-1)*A047850(n)` with `a(0)=1, a(1)=1`
-/

namespace A015506.P962466451357916011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A047850 n

end

end A015506.P962466451357916011

namespace A015506

/-- `a(n-1)*A047850(n)` -/
def P962466451357916011.Spec : Prop :=
  ∀ n, P962466451357916011.a n = A015506 (n + 1)

end A015506

/-! ## A015506.P12773885536269621176

`∏[A060576(n)+A003463(n)]`
-/

namespace A015506.P12773885536269621176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015506.P12773885536269621176

namespace A015506

/-- `∏[A060576(n)+A003463(n)]` -/
def P12773885536269621176.Spec : Prop :=
  ∀ n, P12773885536269621176.a n = A015506 (n + 1)

end A015506

/-!
# A015507: a(1) = 1, a(n) = Sum_{k=1..n-1} ((6^k - 1)/5)*a(k).

The programs for A015507, the canonical program `A015507.P13323381667408148269` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015507 has offset 1).

The definition of A015507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015507.P13323381667408148269

`(6^n+4)/5*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015507

/-- `(6^n+4)/5*a(n-1)` -/
def P13323381667408148269.Spec : Prop :=
  ∀ n, P13323381667408148269.a n = (A015507 (n + 1) : ℚ)

end A015507

/-! ## A015507.P13511654233359111173

`a(n-1)*∑[6*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015507.P13511654233359111173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015507.P13511654233359111173

namespace A015507

/-- `a(n-1)*∑[6*a(n-1)]` -/
def P13511654233359111173.Spec : Prop :=
  ∀ n, (P13511654233359111173.a n : ℤ) = A015507 (n + 1)

end A015507

/-! ## A015507.P4672683147729878122

`a(n-1)*A047851(n)` with `a(0)=1, a(1)=1`
-/

namespace A015507.P4672683147729878122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A047851 n

end

end A015507.P4672683147729878122

namespace A015507

/-- `a(n-1)*A047851(n)` -/
def P4672683147729878122.Spec : Prop :=
  ∀ n, P4672683147729878122.a n = A015507 (n + 1)

end A015507

/-! ## A015507.P14146572961940468002

`∏[A047851(A199969(n+1))]`
-/

namespace A015507.P14146572961940468002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047851 (A199969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015507.P14146572961940468002

namespace A015507

/-- `∏[A047851(A199969(n+1))]` -/
def P14146572961940468002.Spec : Prop :=
  ∀ n, P14146572961940468002.a n = A015507 (n + 1)

end A015507

/-! ## A015507.P3131400260853878825

`∏[A047851(n-A063524(n))]`
-/

namespace A015507.P3131400260853878825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047851 ((n : ℤ) - A063524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015507.P3131400260853878825

namespace A015507

/-- `∏[A047851(n-A063524(n))]` -/
def P3131400260853878825.Spec : Prop :=
  ∀ n, P3131400260853878825.a n = A015507 (n + 1)

end A015507

/-!
# A015508: a(1) = 1, a(n) = Sum_{k=1..n-1} ((7^k - 1)/6)*a(k).

The programs for A015508, the canonical program `A015508.P8715802397100955464` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015508 has offset 1).

The definition of A015508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015508.P8715802397100955464

`(7^n+5)/6*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015508

/-- `(7^n+5)/6*a(n-1)` -/
def P8715802397100955464.Spec : Prop :=
  ∀ n, P8715802397100955464.a n = (A015508 (n + 1) : ℚ)

end A015508

/-! ## A015508.P352578375838289493

`∏[∑[floor(7^(n-1))]+1-char[1]]`
-/

namespace A015508.P352578375838289493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015508.P352578375838289493

namespace A015508

/-- `∏[∑[floor(7^(n-1))]+1-char[1]]` -/
def P352578375838289493.Spec : Prop :=
  ∀ n, P352578375838289493.a n = A015508 (n + 1)

end A015508

/-! ## A015508.P8644538782250347403

`a(n-1)*∑[7*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015508.P8644538782250347403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015508.P8644538782250347403

namespace A015508

/-- `a(n-1)*∑[7*a(n-1)]` -/
def P8644538782250347403.Spec : Prop :=
  ∀ n, (P8644538782250347403.a n : ℤ) = A015508 (n + 1)

end A015508

/-! ## A015508.P14002418852339259772

`a(n-1)*A047852(n)` with `a(0)=1, a(1)=1`
-/

namespace A015508.P14002418852339259772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A047852 n

end

end A015508.P14002418852339259772

namespace A015508

/-- `a(n-1)*A047852(n)` -/
def P14002418852339259772.Spec : Prop :=
  ∀ n, P14002418852339259772.a n = A015508 (n + 1)

end A015508

/-!
# A015509: a(1) = 1, a(n) = Sum_{k=1..n-1} ((8^k - 1)/7)*a(k).

The programs for A015509, the canonical program `A015509.P6248763226806249156` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015509 has offset 1).

The definition of A015509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015509.P6248763226806249156

`(8^n+6)/7*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015509

/-- `(8^n+6)/7*a(n-1)` -/
def P6248763226806249156.Spec : Prop :=
  ∀ n, P6248763226806249156.a n = (A015509 (n + 1) : ℚ)

end A015509

/-! ## A015509.P11069361599061121576

`a(n-1)*∑[8*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015509.P11069361599061121576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015509.P11069361599061121576

namespace A015509

/-- `a(n-1)*∑[8*a(n-1)]` -/
def P11069361599061121576.Spec : Prop :=
  ∀ n, (P11069361599061121576.a n : ℤ) = A015509 (n + 1)

end A015509

/-! ## A015509.P4583995262206305414

`a(n-1)*A047853(n)` with `a(0)=1, a(1)=1`
-/

namespace A015509.P4583995262206305414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A047853 n

end

end A015509.P4583995262206305414

namespace A015509

/-- `a(n-1)*A047853(n)` -/
def P4583995262206305414.Spec : Prop :=
  ∀ n, P4583995262206305414.a n = A015509 (n + 1)

end A015509

/-! ## A015509.P13542396718509200735

`a(n-1)*A063823(3*n)` with `a(0)=1, a(1)=1`
-/

namespace A015509.P13542396718509200735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A063823 (3 * n)

end

end A015509.P13542396718509200735

namespace A015509

/-- `a(n-1)*A063823(3*n)` -/
def P13542396718509200735.Spec : Prop :=
  ∀ n, P13542396718509200735.a n = A015509 (n + 1)

end A015509

/-! ## A015509.P8356985306330359265

`a(n-1)*A166578(3*n)` with `a(0)=1, a(1)=1`
-/

namespace A015509.P8356985306330359265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A166578 (3 * n)

end

end A015509.P8356985306330359265

namespace A015509

/-- `a(n-1)*A166578(3*n)` -/
def P8356985306330359265.Spec : Prop :=
  ∀ n, P8356985306330359265.a n = A015509 (n + 1)

end A015509

/-!
# A015510: Inverse of 1501st cyclotomic polynomial.

The programs for A015510, there is no canonical definition to state claims against.
-/

/-! ## A015510.P5875981029353620872

`A015918(n+4)*A232529(A232529(n+4))`
-/

namespace A015510.P5875981029353620872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (n + 4) * A232529 (A232529 (n + 4)).toNat

end

end A015510.P5875981029353620872

/-! ## A015510.P7786732452926820182

`A015918(n+4)+A000007(A247935(n))`
-/

namespace A015510.P7786732452926820182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (n + 4) + A000007 (A247935 n).toNat

end

end A015510.P7786732452926820182

/-! ## A015510.P821189266452835637

`A015918(n+4)+A000007(A334299(n))`
-/

namespace A015510.P821189266452835637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (n + 4) + A000007 (A334299 n).toNat

end

end A015510.P821189266452835637

/-! ## A015510.P1721259622992631611

`round(3/(A373069(n+1)+3))²`
-/

namespace A015510.P1721259622992631611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (A373069 (n + 1) + 3 : ℚ)) ^ 2

end

end A015510.P1721259622992631611

/-! ## A015510.P4902876996118257169

`A000007(A326687(n+1))`
-/

namespace A015510.P4902876996118257169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A326687 (n + 1)).toNat

end

end A015510.P4902876996118257169

/-! ## A015510.P14838302310802764847

`A000035(∑[A102683(n)]!)`
-/

namespace A015510.P14838302310802764847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A015510.P14838302310802764847

/-! ## A015510.P3923570187443597210

`A280816(3^A185712(n+4))`
-/

namespace A015510.P3923570187443597210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280816 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A185712 (n + 4) : ℤ))).toNat

end

end A015510.P3923570187443597210

/-! ## A015510.P3835750972971908080

`C(2, A014557(A157684(n+1)))`
-/

namespace A015510.P3835750972971908080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A014557 (A157684 (n + 1)).toNat).toNat

end

end A015510.P3835750972971908080

/-! ## A015510.P17013660750215653561

`A034188(A017881(n)+7)`
-/

namespace A015510.P17013660750215653561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034188 (A017881 n + 7).toNat

end

end A015510.P17013660750215653561

/-!
# A015511: a(1) = 1, a(n) = Sum_{k=1..n-1} ((9^k - 1)/8)*a(k).

The programs for A015511, the canonical program `A015511.P1108266684665805803` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015511 has offset 1).

The definition of A015511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015511.P1108266684665805803

`(9^n+7)/8*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015511

/-- `(9^n+7)/8*a(n-1)` -/
def P1108266684665805803.Spec : Prop :=
  ∀ n, P1108266684665805803.a n = (A015511 (n + 1) : ℚ)

end A015511

/-! ## A015511.P2892220765922502521

`a(n-1)*∑[9*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015511.P2892220765922502521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015511.P2892220765922502521

namespace A015511

/-- `a(n-1)*∑[9*a(n-1)]` -/
def P2892220765922502521.Spec : Prop :=
  ∀ n, (P2892220765922502521.a n : ℤ) = A015511 (n + 1)

end A015511

/-! ## A015511.P9608883013006170360

`a(n-1)*A047854(n)` with `a(0)=1, a(1)=1`
-/

namespace A015511.P9608883013006170360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A047854 n

end

end A015511.P9608883013006170360

namespace A015511

/-- `a(n-1)*A047854(n)` -/
def P9608883013006170360.Spec : Prop :=
  ∀ n, P9608883013006170360.a n = A015511 (n + 1)

end A015511

/-! ## A015511.P2348300047616172190

`∏[A060576(n)+A002452(n)]`
-/

namespace A015511.P2348300047616172190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015511.P2348300047616172190

namespace A015511

/-- `∏[A060576(n)+A002452(n)]` -/
def P2348300047616172190.Spec : Prop :=
  ∀ n, P2348300047616172190.a n = A015511 (n + 1)

end A015511

/-! ## A015511.P2460385265103508553

`∏[A047854(n-A063524(n))]`
-/

namespace A015511.P2460385265103508553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047854 ((n : ℤ) - A063524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015511.P2460385265103508553

namespace A015511

/-- `∏[A047854(n-A063524(n))]` -/
def P2460385265103508553.Spec : Prop :=
  ∀ n, P2460385265103508553.a n = A015511 (n + 1)

end A015511

/-!
# A015512: a(1) = 1, a(n) = Sum_{k=1..n-1} ((10^k - 1)/9)*a(k).

The programs for A015512, the canonical program `A015512.P11200941946621526575` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015512 has offset 1).

The definition of A015512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015512.P11200941946621526575

`(10^n+8)/9*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015512

/-- `(10^n+8)/9*a(n-1)` -/
def P11200941946621526575.Spec : Prop :=
  ∀ n, P11200941946621526575.a n = (A015512 (n + 1) : ℚ)

end A015512

/-! ## A015512.P14124606258786441762

`∏[floor(10^n/9)+1-char[1]]`
-/

namespace A015512.P14124606258786441762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ + (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015512.P14124606258786441762

namespace A015512

/-- `∏[floor(10^n/9)+1-char[1]]` -/
def P14124606258786441762.Spec : Prop :=
  ∀ n, P14124606258786441762.a n = A015512 (n + 1)

end A015512

/-! ## A015512.P1222047302837228532

`a(n-1)*∑[10*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015512.P1222047302837228532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015512.P1222047302837228532

namespace A015512

/-- `a(n-1)*∑[10*a(n-1)]` -/
def P1222047302837228532.Spec : Prop :=
  ∀ n, (P1222047302837228532.a n : ℤ) = A015512 (n + 1)

end A015512

/-! ## A015512.P18187203354671802988

`round(∏[A047855(n)]/2)`
-/

namespace A015512.P18187203354671802988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A015512.P18187203354671802988

namespace A015512

/-- `round(∏[A047855(n)]/2)` -/
def P18187203354671802988.Spec : Prop :=
  ∀ n, P18187203354671802988.a n = A015512 (n + 1)

end A015512

/-! ## A015512.P10859319800944263716

`a(n-1)*A092900(2*n)` with `a(0)=1, a(1)=1`
-/

namespace A015512.P10859319800944263716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A092900 (2 * n)

end

end A015512.P10859319800944263716

namespace A015512

/-- `a(n-1)*A092900(2*n)` -/
def P10859319800944263716.Spec : Prop :=
  ∀ n, P10859319800944263716.a n = A015512 (n + 1)

end A015512

/-!
# A015513: a(1) = 1, a(n) = Sum_{k=1..n-1} ((11^k - 1)/10)*a(k).

The programs for A015513, the canonical program `A015513.P14040110975314044253` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015513 has offset 1).

The definition of A015513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015513.P14040110975314044253

`(11^n+9)/10*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015513

/-- `(11^n+9)/10*a(n-1)` -/
def P14040110975314044253.Spec : Prop :=
  ∀ n, P14040110975314044253.a n = (A015513 (n + 1) : ℚ)

end A015513

/-! ## A015513.P8189597425347801549

`a(n-1)*A047856(n)` with `a(0)=1, a(1)=1`
-/

namespace A015513.P8189597425347801549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A047856 n

end

end A015513.P8189597425347801549

namespace A015513

/-- `a(n-1)*A047856(n)` -/
def P8189597425347801549.Spec : Prop :=
  ∀ n, P8189597425347801549.a n = A015513 (n + 1)

end A015513

/-! ## A015513.P14425787176054035956

`∏[A047856(A199969(n+1))]`
-/

namespace A015513.P14425787176054035956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047856 (A199969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015513.P14425787176054035956

namespace A015513

/-- `∏[A047856(A199969(n+1))]` -/
def P14425787176054035956.Spec : Prop :=
  ∀ n, P14425787176054035956.a n = A015513 (n + 1)

end A015513

/-! ## A015513.P17289046969618833127

`∏[A047856(n-A063524(n))]`
-/

namespace A015513.P17289046969618833127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047856 ((n : ℤ) - A063524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015513.P17289046969618833127

namespace A015513

/-- `∏[A047856(n-A063524(n))]` -/
def P17289046969618833127.Spec : Prop :=
  ∀ n, P17289046969618833127.a n = A015513 (n + 1)

end A015513

/-! ## A015513.P12581740184130895612

`∏[A047856(n*A037203(n))]`
-/

namespace A015513.P12581740184130895612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047856 ((n : ℤ) * A037203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015513.P12581740184130895612

namespace A015513

/-- `∏[A047856(n*A037203(n))]` -/
def P12581740184130895612.Spec : Prop :=
  ∀ n, P12581740184130895612.a n = A015513 (n + 1)

end A015513

/-!
# A015514: Inverse of 1505th cyclotomic polynomial.

The programs for A015514, there is no canonical definition to state claims against.
-/

/-! ## A015514.P8267984645598970734

`A015654(A175427(n+1))`
-/

namespace A015514.P8267984645598970734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015654 (A175427 (n + 1)).toNat

end

end A015514.P8267984645598970734

/-! ## A015514.P11442563341707434

`A016144(n)^A383484(A062952(n+1))`
-/

namespace A015514.P11442563341707434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A383484 (A062952 (n + 1)).toNat : ℤ)

end

end A015514.P11442563341707434

/-! ## A015514.P3933694953660003380

`A015654(n)%A235923(n+1)`
-/

namespace A015514.P3933694953660003380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015654 n) (A235923 (n + 1))

end

end A015514.P3933694953660003380

/-! ## A015514.P15213832059985134405

`A015864(n)%A235923(n+1)`
-/

namespace A015514.P15213832059985134405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015864 n) (A235923 (n + 1))

end

end A015514.P15213832059985134405

/-! ## A015514.P10529322339689115346

`A016074(n)%A235923(n+1)`
-/

namespace A015514.P10529322339689115346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016074 n) (A235923 (n + 1))

end

end A015514.P10529322339689115346

/-!
# A015515: a(1) = 1, a(n) = Sum_{k=1..n-1} ((12^k - 1)/11)*a(k).

The programs for A015515, there is no canonical definition to state claims against.
-/

/-! ## A015515.P5246978135549400756

`ceil(∏[∑[12*a(n-1)]/2]/2)` with `a(0)=2, a(1)=2`
-/

namespace A015515.P5246978135549400756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  12 * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∏ j ∈ Finset.range (n + 1), f1 j) / 2⌉

end

end A015515.P5246978135549400756

/-! ## A015515.P6975027943436704249

`floor(∑[12*a(n-1)])*a(n-1)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A015515.P6975027943436704249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1)

end

end A015515.P6975027943436704249

/-! ## A015515.P15367249478534749123

`a(n-1)*∑[3*4*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015515.P15367249478534749123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015515.P15367249478534749123

/-! ## A015515.P9977052273718591741

`a(n-1)*A196791(n)` with `a(0)=1, a(1)=1`
-/

namespace A015515.P9977052273718591741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A196791 n

end

end A015515.P9977052273718591741

/-!
# A015516: Inverse of 1507th cyclotomic polynomial.

The programs for A015516, there is no canonical definition to state claims against.
-/

/-! ## A015516.P17319196748101373617

`A015972(A061017(Δ[A007504(n)]))`
-/

namespace A015516.P17319196748101373617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015972 (A061017 (f1 (n + 1) - f1 n).toNat).toNat

end

end A015516.P17319196748101373617

/-! ## A015516.P11689233002061239954

`C((n%2)^n, A308977(n+3))`
-/

namespace A015516.P11689233002061239954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n % 2) ^ n) (A308977 (n + 3)).toNat

end

end A015516.P11689233002061239954

/-! ## A015516.P3719307108118432385

`A002322(A109697(n))%2`
-/

namespace A015516.P3719307108118432385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002322 (A109697 n).toNat) 2

end

end A015516.P3719307108118432385

/-! ## A015516.P13228994034625128007

`floor(1/A000177(A007359(n)))`
-/

namespace A015516.P13228994034625128007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A000177 (A007359 n).toNat : ℚ)⌋

end

end A015516.P13228994034625128007

/-! ## A015516.P1175678147094750778

`round(A000961(n+1)/A027594(n))`
-/

namespace A015516.P1175678147094750778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000961 (n + 1) : ℚ) / (A027594 n : ℚ))

end

end A015516.P1175678147094750778

/-! ## A015516.P1123476202305391644

`A019590(A328212(∑[floor(n/10)]+1))`
-/

namespace A015516.P1123476202305391644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A328212 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat).toNat

end

end A015516.P1123476202305391644

/-! ## A015516.P6011572851934306909

`C(A080344(n+2), A324690(A080344(n+2)))`
-/

namespace A015516.P6011572851934306909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080344 (n + 2)).toNat (A324690 (A080344 (n + 2)).toNat).toNat

end

end A015516.P6011572851934306909

/-! ## A015516.P8820726954341722765

`C(A276024(n+1), A276024(A383397(n+1)))`
-/

namespace A015516.P8820726954341722765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A276024 (n + 1)).toNat (A276024 (A383397 (n + 1)).toNat).toNat

end

end A015516.P8820726954341722765

/-!
# A015517: Inverse of 1508th cyclotomic polynomial.

The programs for A015517, there is no canonical definition to state claims against.
-/

/-! ## A015517.P12074446937998157981

`A016141(lt[A007318(3*n+2), A348439(n+1)])`
-/

namespace A015517.P12074446937998157981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016141 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015517.P12074446937998157981

/-! ## A015517.P16429111642003030727

`A008966(A368100(n+4))*A016245(n)`
-/

namespace A015517.P16429111642003030727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A368100 (n + 4)).toNat * A016245 n

end

end A015517.P16429111642003030727

/-! ## A015517.P10724720315621627000

`A015621(n)%A157439(n)`
-/

namespace A015517.P10724720315621627000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015621 n) (A157439 n)

end

end A015517.P10724720315621627000

/-! ## A015517.P17720841998371255292

`A015933(n)%A157439(n)`
-/

namespace A015517.P17720841998371255292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015933 n) (A157439 n)

end

end A015517.P17720841998371255292

/-! ## A015517.P6017853727772287143

`A016141(n)%A157439(n)`
-/

namespace A015517.P6017853727772287143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016141 n) (A157439 n)

end

end A015517.P6017853727772287143

/-!
# A015518: a(n) = 2*a(n-1) + 3*a(n-2), with a(0)=0, a(1)=1.

The programs for A015518, the canonical program `A015518.P6264788535366608161` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015518 has offset 0).

The definition of A015518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)` (program `A015518.P6264788535366608161`, by `A015518.P6264788535366608161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015518.P14832183955829976035

`3^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015518.P14832183955829976035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A015518.P14832183955829976035

namespace A015518

/-- `3^(n-1)-a(n-1)` -/
def P14832183955829976035.Spec : Prop :=
  ∀ n, P14832183955829976035.a n = (A015518 n : ℚ)

end A015518

/-! ## A015518.P6264788535366608161

`2*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015518

/-- `2*a(n-1)+3*a(n-2)` -/
def P6264788535366608161.Spec : Prop :=
  ∀ n, (P6264788535366608161.a n : ℤ) = A015518 n

theorem P6264788535366608161.correct : P6264788535366608161.Spec := by
  intro n
  simp only [A015518]

end A015518

/-! ## A015518.P14895947628957838552

`abs(A014983(n))`
-/

namespace A015518.P14895947628957838552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014983 n|

end

end A015518.P14895947628957838552

namespace A015518

/-- `abs(A014983(n))` -/
def P14895947628957838552.Spec : Prop :=
  ∀ n, P14895947628957838552.a n = A015518 n

end A015518

/-! ## A015518.P4302207647056127205

`round(3^n/4)`
-/

namespace A015518.P4302207647056127205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ n : ℚ) / 4)

end

end A015518.P4302207647056127205

namespace A015518

/-- `round(3^n/4)` -/
def P4302207647056127205.Spec : Prop :=
  ∀ n, P4302207647056127205.a n = A015518 n

end A015518

/-! ## A015518.P1990333264639312128

`xor(1, 3*a(n-1))` with `a(0)=0`
-/

namespace A015518.P1990333264639312128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (3 * a (n - 1))

end

end A015518.P1990333264639312128

namespace A015518

/-- `xor(1, 3*a(n-1))` -/
def P1990333264639312128.Spec : Prop :=
  ∀ n, (P1990333264639312128.a n : ℤ) = A015518 n

end A015518

/-! ## A015518.P17915754145462527423

`xor(1, lcm(3, a(n-1)))` with `a(0)=0`
-/

namespace A015518.P17915754145462527423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (Nat.lcm 3 (a (n - 1)))

end

end A015518.P17915754145462527423

namespace A015518

/-- `xor(1, lcm(3, a(n-1)))` -/
def P17915754145462527423.Spec : Prop :=
  ∀ n, (P17915754145462527423.a n : ℤ) = A015518 n

end A015518

/-! ## A015518.P5895776536105237060

`xor(1, a(n-1)/cot(atan(3)))` with `a(0)=0`
-/

namespace A015518.P5895776536105237060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (3 : ℝ))))

end

end A015518.P5895776536105237060

namespace A015518

/-- `xor(1, a(n-1)/cot(atan(3)))` -/
def P5895776536105237060.Spec : Prop :=
  ∀ n, P5895776536105237060.a n = A015518 n

end A015518

/-! ## A015518.P1465771165023236428

`floor(∑[3*a(n-1)]/2)` with `a(0)=1, a(1)=1`
-/

namespace A015518.P1465771165023236428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A015518.P1465771165023236428

namespace A015518

/-- `floor(∑[3*a(n-1)]/2)` -/
def P1465771165023236428.Spec : Prop :=
  ∀ n, P1465771165023236428.a n = A015518 n

end A015518

/-! ## A015518.P1501649153926578371

`floor(∑[3*a(n-1)]-a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A015518.P1501649153926578371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A015518.P1501649153926578371

namespace A015518

/-- `floor(∑[3*a(n-1)]-a(n-1))` -/
def P1501649153926578371.Spec : Prop :=
  ∀ n, P1501649153926578371.a n = A015518 n

end A015518

/-! ## A015518.P16561625135574756238

`a(n-1)+a(n-1)+xor(1, a(n-1))` with `a(0)=0`
-/

namespace A015518.P16561625135574756238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + Nat.xor 1 (a (n - 1)))

end

end A015518.P16561625135574756238

namespace A015518

/-- `a(n-1)+a(n-1)+xor(1, a(n-1))` -/
def P16561625135574756238.Spec : Prop :=
  ∀ n, (P16561625135574756238.a n : ℤ) = A015518 n

end A015518

/-! ## A015518.P3005176074681927795

`a(n-2)-3*(a(n-3)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A015518.P3005176074681927795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) - 3 * (a (n - 3) - a (n - 1))

end

end A015518.P3005176074681927795

namespace A015518

/-- `a(n-2)-3*(a(n-3)-a(n-1))` -/
def P3005176074681927795.Spec : Prop :=
  ∀ n, P3005176074681927795.a n = A015518 n

end A015518

/-! ## A015518.P6346411165429873759

`a(n-1)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A015518.P6346411165429873759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A015518.P6346411165429873759

namespace A015518

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P6346411165429873759.Spec : Prop :=
  ∀ n, (P6346411165429873759.a n : ℤ) = A015518 n

theorem P6346411165429873759.correct : P6346411165429873759.Spec := by
  intro n
  simp only [A015518, Nat.add_sub_cancel, A015518.P6346411165429873759.a, A015518.P6264788535366608161.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A015518

/-! ## A015518.P16366261755804243580

`xor(1, A054878(n))`
-/

namespace A015518.P16366261755804243580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A054878 n)

end

end A015518.P16366261755804243580

namespace A015518

/-- `xor(1, A054878(n))` -/
def P16366261755804243580.Spec : Prop :=
  ∀ n, P16366261755804243580.a n = A015518 n

end A015518

/-! ## A015518.P3638519634146023623

`abs(1-A084222(n))`
-/

namespace A015518.P3638519634146023623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A084222 n|

end

end A015518.P3638519634146023623

namespace A015518

/-- `abs(1-A084222(n))` -/
def P3638519634146023623.Spec : Prop :=
  ∀ n, P3638519634146023623.a n = A015518 n

end A015518

/-! ## A015518.P7626141097992703306

`abs(1-A084567(n))`
-/

namespace A015518.P7626141097992703306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A084567 n|

end

end A015518.P7626141097992703306

namespace A015518

/-- `abs(1-A084567(n))` -/
def P7626141097992703306.Spec : Prop :=
  ∀ n, P7626141097992703306.a n = A015518 n

end A015518

/-! ## A015518.P13249361115057021119

`floor(A007051(n)/2)`
-/

namespace A015518.P13249361115057021119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007051 n : ℚ) / 2⌋

end

end A015518.P13249361115057021119

namespace A015518

/-- `floor(A007051(n)/2)` -/
def P13249361115057021119.Spec : Prop :=
  ∀ n, P13249361115057021119.a n = A015518 n

end A015518

/-! ## A015518.P3177046042447075868

`floor(A103425(n)/2)`
-/

namespace A015518.P3177046042447075868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103425 n : ℚ) / 2⌋

end

end A015518.P3177046042447075868

namespace A015518

/-- `floor(A103425(n)/2)` -/
def P3177046042447075868.Spec : Prop :=
  ∀ n, P3177046042447075868.a n = A015518 n

end A015518

/-! ## A015518.P10451699672356742128

`floor(A152011(n)/2)`
-/

namespace A015518.P10451699672356742128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152011 n : ℚ) / 2⌋

end

end A015518.P10451699672356742128

namespace A015518

/-- `floor(A152011(n)/2)` -/
def P10451699672356742128.Spec : Prop :=
  ∀ n, P10451699672356742128.a n = A015518 n

end A015518

/-! ## A015518.P15198052339514360961

`ceil(A003462(n)/2)`
-/

namespace A015518.P15198052339514360961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003462 n : ℚ) / 2⌉

end

end A015518.P15198052339514360961

namespace A015518

/-- `ceil(A003462(n)/2)` -/
def P15198052339514360961.Spec : Prop :=
  ∀ n, P15198052339514360961.a n = A015518 n

end A015518

/-!
# A015519: a(n) = 2*a(n-1) + 7*a(n-2), with a(0) = 0, a(1) = 1.

The programs for A015519, the canonical program `A015519.P3872863971796844466` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015519 has offset 0).

The definition of A015519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+7*a(n-2)` (program `A015519.P3872863971796844466`, by `A015519.P3872863971796844466.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015519.P3872863971796844466

`2*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015519

/-- `2*a(n-1)+7*a(n-2)` -/
def P3872863971796844466.Spec : Prop :=
  ∀ n, (P3872863971796844466.a n : ℤ) = A015519 n

theorem P3872863971796844466.correct : P3872863971796844466.Spec := by
  intro n
  simp only [A015519]

end A015519

/-! ## A015519.P2527370451741383207

`a(n-1)+A083100(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A015519.P2527370451741383207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A083100 (n - 2)

end

end A015519.P2527370451741383207

namespace A015519

/-- `a(n-1)+A083100(n-2)` -/
def P2527370451741383207.Spec : Prop :=
  ∀ n, P2527370451741383207.a n = A015519 n

end A015519

/-! ## A015519.P13997966087253564711

`Δ[A084150(n)]`
-/

namespace A015519.P13997966087253564711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015519.P13997966087253564711

namespace A015519

/-- `Δ[A084150(n)]` -/
def P13997966087253564711.Spec : Prop :=
  ∀ n, P13997966087253564711.a n = A015519 n

end A015519

/-! ## A015519.P15985071292522559132

`A305492(n)/2`
-/

namespace A015519.P15985071292522559132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305492 n : ℚ) / 2

end

end A015519.P15985071292522559132

namespace A015519

/-- `A305492(n)/2` -/
def P15985071292522559132.Spec : Prop :=
  ∀ n, P15985071292522559132.a n = (A015519 n : ℚ)

end A015519

/-! ## A015519.P14860860152067872846

`A084150(n+1)-A084150(n)`
-/

namespace A015519.P14860860152067872846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084150 (n + 1) - A084150 n

end

end A015519.P14860860152067872846

namespace A015519

/-- `A084150(n+1)-A084150(n)` -/
def P14860860152067872846.Spec : Prop :=
  ∀ n, P14860860152067872846.a n = A015519 n

end A015519

/-! ## A015519.P4861977541119248663

`((1+2*sqrt(2))^n-(1-2*sqrt(2))^n)*sqrt(2)/8`
-/

namespace A015519.P4861977541119248663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (2 : ℝ)) ^ n - (1 - 2 * Real.sqrt (2 : ℝ)) ^ n) * Real.sqrt (2 : ℝ) / 8

end

end A015519.P4861977541119248663

namespace A015519

/-- `((1+2*sqrt(2))^n-(1-2*sqrt(2))^n)*sqrt(2)/8` -/
def P4861977541119248663.Spec : Prop :=
  ∀ n, P4861977541119248663.a n = (A015519 n : ℝ)

end A015519

/-! ## A015519.P17848548396901722183

`Δ[A084136(n)/4]`
-/

namespace A015519.P17848548396901722183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084136 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015519.P17848548396901722183

namespace A015519

/-- `Δ[A084136(n)/4]` -/
def P17848548396901722183.Spec : Prop :=
  ∀ n, P17848548396901722183.a n = (A015519 n : ℚ)

end A015519

/-! ## A015519.P6933513831093890551

`Δ[A084058(n)/8]`
-/

namespace A015519.P6933513831093890551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084058 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015519.P6933513831093890551

namespace A015519

/-- `Δ[A084058(n)/8]` -/
def P6933513831093890551.Spec : Prop :=
  ∀ n, P6933513831093890551.a n = (A015519 n : ℚ)

end A015519

/-! ## A015519.P15764865256452634736

`A096980(n)-A164589(n)`
-/

namespace A015519.P15764865256452634736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096980 n - A164589 n

end

end A015519.P15764865256452634736

namespace A015519

/-- `A096980(n)-A164589(n)` -/
def P15764865256452634736.Spec : Prop :=
  ∀ n, P15764865256452634736.a n = A015519 n

end A015519

/-!
# A015520: a(n) = 2*a(n-1) + 11*a(n-2), a(0) = 0, a(1) = 1.

The programs for A015520, the canonical program `A015520.P13945433534929460969` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015520 has offset 0).

The definition of A015520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+11*a(n-2)` (program `A015520.P13945433534929460969`, by `A015520.P13945433534929460969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015520.P13945433534929460969

`2*a(n-1)+11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015520

/-- `2*a(n-1)+11*a(n-2)` -/
def P13945433534929460969.Spec : Prop :=
  ∀ n, (P13945433534929460969.a n : ℤ) = A015520 n

theorem P13945433534929460969.correct : P13945433534929460969.Spec := by
  intro n
  simp only [A015520]

end A015520

/-! ## A015520.P14385322309783603921

`∑[A090042(n)]-A090042(n)`
-/

namespace A015520.P14385322309783603921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A090042 n

end

end A015520.P14385322309783603921

namespace A015520

/-- `∑[A090042(n)]-A090042(n)` -/
def P14385322309783603921.Spec : Prop :=
  ∀ n, P14385322309783603921.a n = A015520 n

end A015520

/-! ## A015520.P15705769982889822129

`Δ[A090042(n)/12]`
-/

namespace A015520.P15705769982889822129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090042 n : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015520.P15705769982889822129

namespace A015520

/-- `Δ[A090042(n)/12]` -/
def P15705769982889822129.Spec : Prop :=
  ∀ n, P15705769982889822129.a n = (A015520 n : ℚ)

end A015520

/-! ## A015520.P2439529527746898980

`(A328606(n)-A090042(n))/10`
-/

namespace A015520.P2439529527746898980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328606 n - A090042 n : ℚ) / 10

end

end A015520.P2439529527746898980

namespace A015520

/-- `(A328606(n)-A090042(n))/10` -/
def P2439529527746898980.Spec : Prop :=
  ∀ n, P2439529527746898980.a n = (A015520 n : ℚ)

end A015520

/-! ## A015520.P18095581530340419699

`A090042(n+1)/12-A090042(n)/12`
-/

namespace A015520.P18095581530340419699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090042 (n + 1) : ℚ) / 12 - (A090042 n : ℚ) / 12

end

end A015520.P18095581530340419699

namespace A015520

/-- `A090042(n+1)/12-A090042(n)/12` -/
def P18095581530340419699.Spec : Prop :=
  ∀ n, P18095581530340419699.a n = (A015520 n : ℚ)

end A015520

/-!
# A015521: a(n) = 3*a(n-1) + 4*a(n-2), a(0) = 0, a(1) = 1.

The programs for A015521, the canonical program `A015521.P14492886075719711219` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015521 has offset 0).

The definition of A015521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)` (program `A015521.P14492886075719711219`, by `A015521.P14492886075719711219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015521.P2537443862595255113

`4^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015521.P2537443862595255113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A015521.P2537443862595255113

namespace A015521

/-- `4^(n-1)-a(n-1)` -/
def P2537443862595255113.Spec : Prop :=
  ∀ n, P2537443862595255113.a n = (A015521 n : ℚ)

end A015521

/-! ## A015521.P14492886075719711219

`3*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015521

/-- `3*a(n-1)+4*a(n-2)` -/
def P14492886075719711219.Spec : Prop :=
  ∀ n, (P14492886075719711219.a n : ℤ) = A015521 n

theorem P14492886075719711219.correct : P14492886075719711219.Spec := by
  intro n
  simp only [A015521]

end A015521

/-! ## A015521.P9252988685601267428

`round(4^n/5)`
-/

namespace A015521.P9252988685601267428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 5)

end

end A015521.P9252988685601267428

namespace A015521

/-- `round(4^n/5)` -/
def P9252988685601267428.Spec : Prop :=
  ∀ n, P9252988685601267428.a n = A015521 n

end A015521

/-! ## A015521.P11659581011278585471

`A247281(n)/5`
-/

namespace A015521.P11659581011278585471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247281 n : ℚ) / 5

end

end A015521.P11659581011278585471

namespace A015521

/-- `A247281(n)/5` -/
def P11659581011278585471.Spec : Prop :=
  ∀ n, P11659581011278585471.a n = (A015521 n : ℚ)

end A015521

/-! ## A015521.P10465676703776211821

`gcd(3, a(n-1))-(2-4*a(n-1))` with `a(0)=0`
-/

namespace A015521.P10465676703776211821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.gcd 3 (a (n - 1)) : ℤ) - (2 - 4 * a (n - 1))

end

end A015521.P10465676703776211821

namespace A015521

/-- `gcd(3, a(n-1))-(2-4*a(n-1))` -/
def P10465676703776211821.Spec : Prop :=
  ∀ n, P10465676703776211821.a n = A015521 n

end A015521

/-! ## A015521.P2894874551329060914

`floor(∑[4*a(n-1)]-a(n-1))` with `a(0)=0, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A015521.P2894874551329060914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A015521.P2894874551329060914

namespace A015521

/-- `floor(∑[4*a(n-1)]-a(n-1))` -/
def P2894874551329060914.Spec : Prop :=
  ∀ n, P2894874551329060914.a n = A015521 n

end A015521

/-! ## A015521.P1225241631001635571

`4*a(n-1)-(2-a(n-1)%4)` with `a(0)=0, a(1)=1`
-/

namespace A015521.P1225241631001635571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 1) - (2 - Int.tmod (a (n - 1)) 4)

end

end A015521.P1225241631001635571

namespace A015521

/-- `4*a(n-1)-(2-a(n-1)%4)` -/
def P1225241631001635571.Spec : Prop :=
  ∀ n, P1225241631001635571.a n = A015521 n

end A015521

/-! ## A015521.P9894298409096747116

`a(n-2)-4*(a(n-3)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A015521.P9894298409096747116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 2) - 4 * (a (n - 3) - a (n - 1))

end

end A015521.P9894298409096747116

namespace A015521

/-- `a(n-2)-4*(a(n-3)-a(n-1))` -/
def P9894298409096747116.Spec : Prop :=
  ∀ n, P9894298409096747116.a n = A015521 n

end A015521

/-! ## A015521.P1606210794387228336

`A256494(Δ[n²])`
-/

namespace A015521.P1606210794387228336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A015521.P1606210794387228336

namespace A015521

/-- `A256494(Δ[n²])` -/
def P1606210794387228336.Spec : Prop :=
  ∀ n, P1606210794387228336.a n = A015521 n

end A015521

/-! ## A015521.P11705342366438245350

`abs(1-A166114(n))`
-/

namespace A015521.P11705342366438245350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A166114 n|

end

end A015521.P11705342366438245350

namespace A015521

/-- `abs(1-A166114(n))` -/
def P11705342366438245350.Spec : Prop :=
  ∀ n, P11705342366438245350.a n = A015521 n

end A015521

/-! ## A015521.P14671159264198117658

`A118406(2*n)-1`
-/

namespace A015521.P14671159264198117658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118406 (2 * n) - 1

end

end A015521.P14671159264198117658

namespace A015521

/-- `A118406(2*n)-1` -/
def P14671159264198117658.Spec : Prop :=
  ∀ n, P14671159264198117658.a n = A015521 n

end A015521

/-! ## A015521.P2280563496674089987

`record[and(1, n)*A274845(n)]`
-/

namespace A015521.P2280563496674089987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A274845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015521.P2280563496674089987

namespace A015521

/-- `record[and(1, n)*A274845(n)]` -/
def P2280563496674089987.Spec : Prop :=
  ∀ n, P2280563496674089987.a n = A015521 n

end A015521

/-! ## A015521.P8572913442619044828

`A274845(A113127(n))`
-/

namespace A015521.P8572913442619044828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (A113127 n).toNat

end

end A015521.P8572913442619044828

namespace A015521

/-- `A274845(A113127(n))` -/
def P8572913442619044828.Spec : Prop :=
  ∀ n, P8572913442619044828.a n = A015521 n

end A015521

/-! ## A015521.P11856693035769682776

`A274845(A047468(n+1))`
-/

namespace A015521.P11856693035769682776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (A047468 (n + 1)).toNat

end

end A015521.P11856693035769682776

namespace A015521

/-- `A274845(A047468(n+1))` -/
def P11856693035769682776.Spec : Prop :=
  ∀ n, P11856693035769682776.a n = A015521 n

end A015521

/-! ## A015521.P14418985287136643313

`A274845(A047471(n+1))`
-/

namespace A015521.P14418985287136643313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (A047471 (n + 1)).toNat

end

end A015521.P14418985287136643313

namespace A015521

/-- `A274845(A047471(n+1))` -/
def P14418985287136643313.Spec : Prop :=
  ∀ n, P14418985287136643313.a n = A015521 n

end A015521

/-! ## A015521.P14200461440022592562

`A274845(A056530(n+1))`
-/

namespace A015521.P14200461440022592562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (A056530 (n + 1)).toNat

end

end A015521.P14200461440022592562

namespace A015521

/-- `A274845(A056530(n+1))` -/
def P14200461440022592562.Spec : Prop :=
  ∀ n, P14200461440022592562.a n = A015521 n

end A015521

/-! ## A015521.P15905405133732662621

`A274845(A111284(n+1))`
-/

namespace A015521.P15905405133732662621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (A111284 (n + 1)).toNat

end

end A015521.P15905405133732662621

namespace A015521

/-- `A274845(A111284(n+1))` -/
def P15905405133732662621.Spec : Prop :=
  ∀ n, P15905405133732662621.a n = A015521 n

end A015521

/-! ## A015521.P16771326527897710234

`A274845(A131098(n+1))`
-/

namespace A015521.P16771326527897710234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (A131098 (n + 1)).toNat

end

end A015521.P16771326527897710234

namespace A015521

/-- `A274845(A131098(n+1))` -/
def P16771326527897710234.Spec : Prop :=
  ∀ n, P16771326527897710234.a n = A015521 n

end A015521

/-! ## A015521.P2848197227963103416

`A274845(A232637(n+1))`
-/

namespace A015521.P2848197227963103416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (A232637 (n + 1)).toNat

end

end A015521.P2848197227963103416

namespace A015521

/-- `A274845(A232637(n+1))` -/
def P2848197227963103416.Spec : Prop :=
  ∀ n, P2848197227963103416.a n = A015521 n

end A015521

/-!
# A015522: Inverse of 1513th cyclotomic polynomial.

The programs for A015522, there is no canonical definition to state claims against.
-/

/-! ## A015522.P5137321300424226200

`A015148(∑[A123391(A037073(n+1))])`
-/

namespace A015522.P5137321300424226200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (A037073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015522.P5137321300424226200

/-! ## A015522.P10162683089136839491

`n+1-comp[A342779(A286187(n+1))-1]`
-/

namespace A015522.P10162683089136839491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (A286187 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A015522.P10162683089136839491

/-! ## A015522.P15309573711416293

`A136522(floor((n-1)/8)²²)`
-/

namespace A015522.P15309573711416293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 ((⌊((n : ℤ) - 1 : ℚ) / 8⌋ ^ 2) ^ 2).toNat

end

end A015522.P15309573711416293

/-! ## A015522.P5475507562372327950

`A010052(C(A268708(n), 5))`
-/

namespace A015522.P5475507562372327950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Nat.choose (A268708 n).toNat 5)

end

end A015522.P5475507562372327950

/-! ## A015522.P6510336346614718424

`A000007(2*A326682(n+3))`
-/

namespace A015522.P6510336346614718424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * A326682 (n + 3)).toNat

end

end A015522.P6510336346614718424

/-! ## A015522.P1021309741400344116

`A339839(2^A111894(n+1))`
-/

namespace A015522.P1021309741400344116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339839 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A111894 (n + 1) : ℤ))).toNat

end

end A015522.P1021309741400344116

/-! ## A015522.P16282879232761243098

`A121373(Δ[A246074(n+1)])²`
-/

namespace A015522.P16282879232761243098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A015522.P16282879232761243098

/-! ## A015522.P7347543760127655926

`round(A029470(n+1)/A265065(n))`
-/

namespace A015522.P7347543760127655926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A029470 (n + 1) : ℚ) / (A265065 n : ℚ))

end

end A015522.P7347543760127655926

/-! ## A015522.P8022386816950182364

`A378087(∏[A135010(∑{d}[n+1, #%2])])`
-/

namespace A015522.P8022386816950182364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (∑ d ∈ Nat.divisors (f2 n), d % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378087 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015522.P8022386816950182364

/-! ## A015522.P15205792133128840440

`∑{e}[A154638(∑[A379475(n+1)]), #]!%2`
-/

namespace A015522.P15205792133128840440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154638 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 2

end

end A015522.P15205792133128840440

/-!
# A015523: a(n) = 3*a(n-1) + 5*a(n-2), with a(0)=0, a(1)=1.

The programs for A015523, the canonical program `A015523.P9911442192203746249` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015523 has offset 0).

The definition of A015523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+5*a(n-2)` (program `A015523.P9911442192203746249`, by `A015523.P9911442192203746249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015523.P9911442192203746249

`3*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015523

/-- `3*a(n-1)+5*a(n-2)` -/
def P9911442192203746249.Spec : Prop :=
  ∀ n, (P9911442192203746249.a n : ℤ) = A015523 n

theorem P9911442192203746249.correct : P9911442192203746249.Spec := by
  intro n
  simp only [A015523]

end A015523

/-! ## A015523.P5979583903866330600

`4*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015523.P5979583903866330600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A015523.P5979583903866330600

namespace A015523

/-- `4*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P5979583903866330600.Spec : Prop :=
  ∀ n, P5979583903866330600.a n = A015523 n

end A015523

/-! ## A015523.P13099206521457299315

`A197189(n)-A072264(n)`
-/

namespace A015523.P13099206521457299315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197189 n - A072264 n

end

end A015523.P13099206521457299315

namespace A015523

/-- `A197189(n)-A072264(n)` -/
def P13099206521457299315.Spec : Prop :=
  ∀ n, P13099206521457299315.a n = A015523 n

end A015523

/-! ## A015523.P14111578916328677289

`A152187(n)-A179606(n)`
-/

namespace A015523.P14111578916328677289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152187 n - A179606 n

end

end A015523.P14111578916328677289

namespace A015523

/-- `A152187(n)-A179606(n)` -/
def P14111578916328677289.Spec : Prop :=
  ∀ n, P14111578916328677289.a n = A015523 n

end A015523

/-! ## A015523.P17582177359346014518

`A179606(n)-∑[A197189(n)]`
-/

namespace A015523.P17582177359346014518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179606 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015523.P17582177359346014518

namespace A015523

/-- `A179606(n)-∑[A197189(n)]` -/
def P17582177359346014518.Spec : Prop :=
  ∀ n, P17582177359346014518.a n = A015523 n

end A015523

/-! ## A015523.P11421917909053564631

`A072263(n)-2*A072264(n)`
-/

namespace A015523.P11421917909053564631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072263 n - 2 * A072264 n

end

end A015523.P11421917909053564631

namespace A015523

/-- `A072263(n)-2*A072264(n)` -/
def P11421917909053564631.Spec : Prop :=
  ∀ n, P11421917909053564631.a n = A015523 n

end A015523

/-! ## A015523.P6510096715601639096

`2*A197189(n)-A072263(n)`
-/

namespace A015523.P6510096715601639096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197189 n - A072263 n

end

end A015523.P6510096715601639096

namespace A015523

/-- `2*A197189(n)-A072263(n)` -/
def P6510096715601639096.Spec : Prop :=
  ∀ n, P6510096715601639096.a n = A015523 n

end A015523

/-! ## A015523.P13267154094271468868

`A197189(n+1)%A152187(n)`
-/

namespace A015523.P13267154094271468868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197189 (n + 1)) (A152187 n)

end

end A015523.P13267154094271468868

namespace A015523

/-- `A197189(n+1)%A152187(n)` -/
def P13267154094271468868.Spec : Prop :=
  ∀ n, P13267154094271468868.a n = A015523 n

end A015523

/-! ## A015523.P10060877198987839113

`A180140(n+1)-A179606(n+1)`
-/

namespace A015523.P10060877198987839113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180140 (n + 1) - A179606 (n + 1)

end

end A015523.P10060877198987839113

namespace A015523

/-- `A180140(n+1)-A179606(n+1)` -/
def P10060877198987839113.Spec : Prop :=
  ∀ n, P10060877198987839113.a n = A015523 n

end A015523

/-! ## A015523.P7342074415047770763

`A152187(n+1)-(A180140(n+1)+A072264(n))`
-/

namespace A015523.P7342074415047770763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152187 (n + 1) - (A180140 (n + 1) + A072264 n)

end

end A015523.P7342074415047770763

namespace A015523

/-- `A152187(n+1)-(A180140(n+1)+A072264(n))` -/
def P7342074415047770763.Spec : Prop :=
  ∀ n, P7342074415047770763.a n = A015523 n

end A015523

/-!
# A015524: a(n) = 3*a(n-1) + 7*a(n-2), with a(0) = 0, a(1) = 1.

The programs for A015524, the canonical program `A015524.P18101737361329263250` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015524 has offset 0).

The definition of A015524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+7*a(n-2)` (program `A015524.P18101737361329263250`, by `A015524.P18101737361329263250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015524.P18101737361329263250

`3*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015524

/-- `3*a(n-1)+7*a(n-2)` -/
def P18101737361329263250.Spec : Prop :=
  ∀ n, (P18101737361329263250.a n : ℤ) = A015524 n

theorem P18101737361329263250.correct : P18101737361329263250.Spec := by
  intro n
  simp only [A015524]

end A015524

/-! ## A015524.P16939043800539655514

`A179603(n)-A179602(n)`
-/

namespace A015524.P16939043800539655514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179603 n - A179602 n

end

end A015524.P16939043800539655514

namespace A015524

/-- `A179603(n)-A179602(n)` -/
def P16939043800539655514.Spec : Prop :=
  ∀ n, P16939043800539655514.a n = A015524 n

end A015524

/-! ## A015524.P4805306757518624060

`A179603(floor(acot(n)+n))%A179602(n)`
-/

namespace A015524.P4805306757518624060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179603 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat) (A179602 n)

end

end A015524.P4805306757518624060

namespace A015524

/-- `A179603(floor(acot(n)+n))%A179602(n)` -/
def P4805306757518624060.Spec : Prop :=
  ∀ n, P4805306757518624060.a n = A015524 n

end A015524

/-! ## A015524.P13993280241165005394

`A179603(A028310(n))%A179602(n)`
-/

namespace A015524.P13993280241165005394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179603 (A028310 n).toNat) (A179602 n)

end

end A015524.P13993280241165005394

namespace A015524

/-- `A179603(A028310(n))%A179602(n)` -/
def P13993280241165005394.Spec : Prop :=
  ∀ n, P13993280241165005394.a n = A015524 n

end A015524

/-! ## A015524.P10169365142740250741

`A179603(A065033(2*n))%A179602(n)`
-/

namespace A015524.P10169365142740250741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179603 (A065033 (2 * n)).toNat) (A179602 n)

end

end A015524.P10169365142740250741

namespace A015524

/-- `A179603(A065033(2*n))%A179602(n)` -/
def P10169365142740250741.Spec : Prop :=
  ∀ n, P10169365142740250741.a n = A015524 n

end A015524

/-! ## A015524.P3777715973757476298

`A179603(gcd(n, A008458(n)))%A179602(n)`
-/

namespace A015524.P3777715973757476298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179603 (Int.gcd (n : ℤ) (A008458 n))) (A179602 n)

end

end A015524.P3777715973757476298

namespace A015524

/-- `A179603(gcd(n, A008458(n)))%A179602(n)` -/
def P3777715973757476298.Spec : Prop :=
  ∀ n, P3777715973757476298.a n = A015524 n

end A015524

/-! ## A015524.P11874796553827551926

`A179603(A134478(∑[n]))%A179602(n)`
-/

namespace A015524.P11874796553827551926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179603 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A179602 n)

end

end A015524.P11874796553827551926

namespace A015524

/-- `A179603(A134478(∑[n]))%A179602(n)` -/
def P11874796553827551926.Spec : Prop :=
  ∀ n, P11874796553827551926.a n = A015524 n

end A015524

/-! ## A015524.P14641527196536112796

`A179603(A118759(n))%A179602(n)`
-/

namespace A015524.P14641527196536112796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179603 (A118759 n).toNat) (A179602 n)

end

end A015524.P14641527196536112796

namespace A015524

/-- `A179603(A118759(n))%A179602(n)` -/
def P14641527196536112796.Spec : Prop :=
  ∀ n, P14641527196536112796.a n = A015524 n

end A015524

/-!
# A015525: Expansion of x/(1-3*x-8*x^2).

The programs for A015525, the canonical program `A015525.P15261787765318284883` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015525 has offset 0).

The definition of A015525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015525.P15261787765318284883

`3*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015525

/-- `3*a(n-1)+8*a(n-2)` -/
def P15261787765318284883.Spec : Prop :=
  ∀ n, (P15261787765318284883.a n : ℤ) = A015525 n

theorem P15261787765318284883.correct : P15261787765318284883.Spec := by
  intro n
  simp only [A015525]

end A015525

/-! ## A015525.P12763510427013878490

`floor(A323232(n)/3)`
-/

namespace A015525.P12763510427013878490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323232 n : ℚ) / 3⌋

end

end A015525.P12763510427013878490

namespace A015525

/-- `floor(A323232(n)/3)` -/
def P12763510427013878490.Spec : Prop :=
  ∀ n, P12763510427013878490.a n = A015525 n

end A015525

/-! ## A015525.P8140813387915325110

`(A323232(n)-A000007(n))/3`
-/

namespace A015525.P8140813387915325110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323232 n - A000007 n : ℚ) / 3

end

end A015525.P8140813387915325110

namespace A015525

/-- `(A323232(n)-A000007(n))/3` -/
def P8140813387915325110.Spec : Prop :=
  ∀ n, P8140813387915325110.a n = (A015525 n : ℚ)

end A015525

/-! ## A015525.P13878242866288117039

`A057427(n)/3*A323232(n)`
-/

namespace A015525.P13878242866288117039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) / 3 * (A323232 n : ℚ)

end

end A015525.P13878242866288117039

namespace A015525

/-- `A057427(n)/3*A323232(n)` -/
def P13878242866288117039.Spec : Prop :=
  ∀ n, P13878242866288117039.a n = (A015525 n : ℚ)

end A015525

/-! ## A015525.P3017903097129899076

`n/A008486(n)*A323232(n)`
-/

namespace A015525.P3017903097129899076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A008486 n : ℚ) * (A323232 n : ℚ)

end

end A015525.P3017903097129899076

namespace A015525

/-- `n/A008486(n)*A323232(n)` -/
def P3017903097129899076.Spec : Prop :=
  ∀ n, P3017903097129899076.a n = (A015525 n : ℚ)

end A015525

/-! ## A015525.P9124471729947240353

`A005843(n)/A008458(n)*A323232(n)`
-/

namespace A015525.P9124471729947240353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A008458 n : ℚ) * (A323232 n : ℚ)

end

end A015525.P9124471729947240353

namespace A015525

/-- `A005843(n)/A008458(n)*A323232(n)` -/
def P9124471729947240353.Spec : Prop :=
  ∀ n, P9124471729947240353.a n = (A015525 n : ℚ)

end A015525

/-!
# A015526: Inverse of 1517th cyclotomic polynomial.

The programs for A015526, there is no canonical definition to state claims against.
-/

/-! ## A015526.P8236797958216779965

`A016030(record[A000720(n+1)+A000161(n)])`
-/

namespace A015526.P8236797958216779965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015526.P8236797958216779965

/-! ## A015526.P3282167953298570098

`A016030(lt[A085028(2*n+3), A139169(2*(n+2))])`
-/

namespace A015526.P3282167953298570098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085028 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015526.P3282167953298570098

/-! ## A015526.P15569575516250873802

`A016030(∪[A325778(n+1), A335486(n+1)])`
-/

namespace A015526.P15569575516250873802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335486 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A015526.P15569575516250873802

/-! ## A015526.P7567167617556266256

`A016030(lt[A354907(n), A246029(n+3)])`
-/

namespace A015526.P7567167617556266256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015526.P7567167617556266256

/-! ## A015526.P13303646088561911603

`A016030(lt[A354907(n), A001223(3*n+1)])`
-/

namespace A015526.P13303646088561911603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015526.P13303646088561911603

/-! ## A015526.P10976916523206986214

`A016030(A114526(n))`
-/

namespace A015526.P10976916523206986214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (A114526 n).toNat

end

end A015526.P10976916523206986214

/-! ## A015526.P3043121641368917374

`A016030(lt[A016030(n), A375124(n)])`
-/

namespace A015526.P3043121641368917374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015526.P3043121641368917374

/-! ## A015526.P9533497201359744576

`A016030(lt[1, A375124(n)])`
-/

namespace A015526.P9533497201359744576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A015526.P9533497201359744576

/-! ## A015526.P8218165829084841306

`A016030(A097089(n))`
-/

namespace A015526.P8218165829084841306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (A097089 n).toNat

end

end A015526.P8218165829084841306

/-!
# A015527: Inverse of 1518th cyclotomic polynomial.

The programs for A015527, there is no canonical definition to state claims against.
-/

/-! ## A015527.P2824273024314109515

`A014768(n)*A033999(n)`
-/

namespace A015527.P2824273024314109515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014768 n * A033999 n

end

end A015527.P2824273024314109515

/-!
# A015528: a(n) = 3*a(n-1) + 10*a(n-2).

The programs for A015528, the canonical program `A015528.P14269610245121265604` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015528 has offset 0).

The definition of A015528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+10*a(n-2)` (program `A015528.P14269610245121265604`, by `A015528.P14269610245121265604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015528.P14269610245121265604

`3*a(n-1)+10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015528

/-- `3*a(n-1)+10*a(n-2)` -/
def P14269610245121265604.Spec : Prop :=
  ∀ n, (P14269610245121265604.a n : ℤ) = A015528 n

theorem P14269610245121265604.correct : P14269610245121265604.Spec := by
  intro n
  simp only [A015528]

end A015528

/-! ## A015528.P6955585370712207720

`(5^n-(-2)^n)/7`
-/

namespace A015528.P6955585370712207720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - (-2) ^ n : ℚ) / 7

end

end A015528.P6955585370712207720

namespace A015528

/-- `(5^n-(-2)^n)/7` -/
def P6955585370712207720.Spec : Prop :=
  ∀ n, P6955585370712207720.a n = (A015528 n : ℚ)

theorem P6955585370712207720.correct : P6955585370712207720.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A015528, Nat.add_sub_cancel, A015528.P6955585370712207720.a, A015528.P14269610245121265604.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A015528, Nat.add_sub_cancel, A015528.P6955585370712207720.a, A015528.P14269610245121265604.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015528

/-! ## A015528.P7539883280941447253

`5^(n-1)-2*a(n-1)` with `a(0)=0`
-/

namespace A015528.P7539883280941447253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2 * a (n - 1)

end

end A015528.P7539883280941447253

namespace A015528

/-- `5^(n-1)-2*a(n-1)` -/
def P7539883280941447253.Spec : Prop :=
  ∀ n, P7539883280941447253.a n = (A015528 n : ℚ)

end A015528

/-! ## A015528.P5347229241513958751

`5^(n-1)-lcm(2, a(n-1))` with `a(0)=0`
-/

namespace A015528.P5347229241513958751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (Int.lcm 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A015528.P5347229241513958751

namespace A015528

/-- `5^(n-1)-lcm(2, a(n-1))` -/
def P5347229241513958751.Spec : Prop :=
  ∀ n, P5347229241513958751.a n = (A015528 n : ℚ)

end A015528

/-! ## A015528.P8129259168266398980

`5^(n-1)-a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015528.P8129259168266398980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) - a (n - 1)

end

end A015528.P8129259168266398980

namespace A015528

/-- `5^(n-1)-a(n-1)-a(n-1)` -/
def P8129259168266398980.Spec : Prop :=
  ∀ n, P8129259168266398980.a n = (A015528 n : ℚ)

end A015528

/-! ## A015528.P3862917798147453041

`5*a(n-1)-A117575(2*n)` with `a(0)=0, a(1)=1`
-/

namespace A015528.P3862917798147453041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 * a (n - 1) - A117575 (2 * n)

end

end A015528.P3862917798147453041

namespace A015528

/-- `5*a(n-1)-A117575(2*n)` -/
def P3862917798147453041.Spec : Prop :=
  ∀ n, P3862917798147453041.a n = A015528 n

end A015528

/-!
# A015529: Expansion of x/(1 - 3*x - 11*x^2).

The programs for A015529, the canonical program `A015529.P8818105520034036000` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015529 has offset 0).

The definition of A015529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015529.P8818105520034036000

`3*a(n-1)+11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015529

/-- `3*a(n-1)+11*a(n-2)` -/
def P8818105520034036000.Spec : Prop :=
  ∀ n, (P8818105520034036000.a n : ℤ) = A015529 n

theorem P8818105520034036000.correct : P8818105520034036000.Spec := by
  intro n
  simp only [A015529]

end A015529

/-!
# A015530: Expansion of x/(1 - 4*x - 3*x^2).

The programs for A015530, the canonical program `A015530.P15931312988558190136` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015530 has offset 0).

The definition of A015530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015530.P15931312988558190136

`4*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015530

/-- `4*a(n-1)+3*a(n-2)` -/
def P15931312988558190136.Spec : Prop :=
  ∀ n, (P15931312988558190136.a n : ℤ) = A015530 n

theorem P15931312988558190136.correct : P15931312988558190136.Spec := by
  intro n
  simp only [A015530]

end A015530

/-! ## A015530.P7713682924933517494

`((2+sqrt(7))^n-(2-sqrt(7))^n)/sqrt(28)`
-/

namespace A015530.P7713682924933517494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (7 : ℝ)) ^ n - (2 - Real.sqrt (7 : ℝ)) ^ n) / Real.sqrt (28 : ℝ)

end

end A015530.P7713682924933517494

namespace A015530

/-- `((2+sqrt(7))^n-(2-sqrt(7))^n)/sqrt(28)` -/
def P7713682924933517494.Spec : Prop :=
  ∀ n, P7713682924933517494.a n = (A015530 n : ℝ)

end A015530

/-! ## A015530.P975061599274614312

`round((sqrt(7)+2)*a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A015530.P975061599274614312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (7 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A015530.P975061599274614312

namespace A015530

/-- `round((sqrt(7)+2)*a(n-1))` -/
def P975061599274614312.Spec : Prop :=
  ∀ n, P975061599274614312.a n = A015530 n

end A015530

/-! ## A015530.P10025538657689252219

`a(n-1)+lcm(3, a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015530.P10025538657689252219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.lcm 3 (a (n - 1) + a (n - 2))

end

end A015530.P10025538657689252219

namespace A015530

/-- `a(n-1)+lcm(3, a(n-1)+a(n-2))` -/
def P10025538657689252219.Spec : Prop :=
  ∀ n, (P10025538657689252219.a n : ℤ) = A015530 n

end A015530

/-! ## A015530.P5320585175419788701

`4*a(n-1)-(a(n-2)-4*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015530.P5320585175419788701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 1) - (a (n - 2) - 4 * a (n - 2))

end

end A015530.P5320585175419788701

namespace A015530

/-- `4*a(n-1)-(a(n-2)-4*a(n-2))` -/
def P5320585175419788701.Spec : Prop :=
  ∀ n, P5320585175419788701.a n = A015530 n

end A015530

/-! ## A015530.P7531900782903218062

`A122558(n)-A108851(n)`
-/

namespace A015530.P7531900782903218062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122558 n - A108851 n

end

end A015530.P7531900782903218062

namespace A015530

/-- `A122558(n)-A108851(n)` -/
def P7531900782903218062.Spec : Prop :=
  ∀ n, P7531900782903218062.a n = A015530 n

end A015530

/-! ## A015530.P16194904839554791713

`A108851(n)-A086901(n+1)`
-/

namespace A015530.P16194904839554791713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 n - A086901 (n + 1)

end

end A015530.P16194904839554791713

namespace A015530

/-- `A108851(n)-A086901(n+1)` -/
def P16194904839554791713.Spec : Prop :=
  ∀ n, P16194904839554791713.a n = A015530 n

end A015530

/-! ## A015530.P15599938989827162235

`A109115(n)-A126473(n)`
-/

namespace A015530.P15599938989827162235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109115 n - A126473 n

end

end A015530.P15599938989827162235

namespace A015530

/-- `A109115(n)-A126473(n)` -/
def P15599938989827162235.Spec : Prop :=
  ∀ n, P15599938989827162235.a n = A015530 n

end A015530

/-! ## A015530.P10058187641947099536

`A086901(n+2)-A109115(n)`
-/

namespace A015530.P10058187641947099536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086901 (n + 2) - A109115 n

end

end A015530.P10058187641947099536

namespace A015530

/-- `A086901(n+2)-A109115(n)` -/
def P10058187641947099536.Spec : Prop :=
  ∀ n, P10058187641947099536.a n = A015530 n

end A015530

/-! ## A015530.P17139456784485402522

`A108851(n+1)-2*A126473(n)`
-/

namespace A015530.P17139456784485402522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 (n + 1) - 2 * A126473 n

end

end A015530.P17139456784485402522

namespace A015530

/-- `A108851(n+1)-2*A126473(n)` -/
def P17139456784485402522.Spec : Prop :=
  ∀ n, P17139456784485402522.a n = A015530 n

end A015530

/-! ## A015530.P17342010838250085352

`A080042(n)/2-A086901(n+1)`
-/

namespace A015530.P17342010838250085352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080042 n : ℚ) / 2 - (A086901 (n + 1) : ℚ)

end

end A015530.P17342010838250085352

namespace A015530

/-- `A080042(n)/2-A086901(n+1)` -/
def P17342010838250085352.Spec : Prop :=
  ∀ n, P17342010838250085352.a n = (A015530 n : ℚ)

end A015530

/-! ## A015530.P8452018680787432150

`A108851(n+1)+A108851(n)-A106570(n+1)`
-/

namespace A015530.P8452018680787432150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 (n + 1) + (A108851 n - A106570 (n + 1))

end

end A015530.P8452018680787432150

namespace A015530

/-- `A108851(n+1)+A108851(n)-A106570(n+1)` -/
def P8452018680787432150.Spec : Prop :=
  ∀ n, P8452018680787432150.a n = A015530 n

end A015530

/-! ## A015530.P6100381256309213256

`A108851(n+1)+A179597(n)-A179596(n+1)`
-/

namespace A015530.P6100381256309213256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 (n + 1) + (A179597 n - A179596 (n + 1))

end

end A015530.P6100381256309213256

namespace A015530

/-- `A108851(n+1)+A179597(n)-A179596(n+1)` -/
def P6100381256309213256.Spec : Prop :=
  ∀ n, P6100381256309213256.a n = A015530 n

end A015530

/-! ## A015530.P15376283216963496152

`A106570(n+1)-(A086901(n+2)+A080042(n))`
-/

namespace A015530.P15376283216963496152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106570 (n + 1) - (A086901 (n + 2) + A080042 n)

end

end A015530.P15376283216963496152

namespace A015530

/-- `A106570(n+1)-(A086901(n+2)+A080042(n))` -/
def P15376283216963496152.Spec : Prop :=
  ∀ n, P15376283216963496152.a n = A015530 n

end A015530

/-! ## A015530.P4207128311860275726

`2/A000079(n)*A239549(n)`
-/

namespace A015530.P4207128311860275726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000079 n : ℚ) * (A239549 n : ℚ)

end

end A015530.P4207128311860275726

namespace A015530

/-- `2/A000079(n)*A239549(n)` -/
def P4207128311860275726.Spec : Prop :=
  ∀ n, P4207128311860275726.a n = (A015530 n : ℚ)

end A015530

/-!
# A015531: Linear 2nd order recurrence: a(n) = 4*a(n-1) + 5*a(n-2).

The programs for A015531, the canonical program `A015531.P2566892976177731208` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015531 has offset 0).

The definition of A015531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+5*a(n-2)` (program `A015531.P2566892976177731208`, by `A015531.P2566892976177731208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015531.P14937037757829768099

`5^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015531.P14937037757829768099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A015531.P14937037757829768099

namespace A015531

/-- `5^(n-1)-a(n-1)` -/
def P14937037757829768099.Spec : Prop :=
  ∀ n, P14937037757829768099.a n = (A015531 n : ℚ)

end A015531

/-! ## A015531.P2566892976177731208

`4*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015531

/-- `4*a(n-1)+5*a(n-2)` -/
def P2566892976177731208.Spec : Prop :=
  ∀ n, (P2566892976177731208.a n : ℤ) = A015531 n

theorem P2566892976177731208.correct : P2566892976177731208.Spec := by
  intro n
  simp only [A015531]

end A015531

/-! ## A015531.P7546536193574318901

`round(5^n/6)`
-/

namespace A015531.P7546536193574318901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ n : ℚ) / 6)

end

end A015531.P7546536193574318901

namespace A015531

/-- `round(5^n/6)` -/
def P7546536193574318901.Spec : Prop :=
  ∀ n, P7546536193574318901.a n = A015531 n

end A015531

/-! ## A015531.P2281239377212636219

`xor(1, 5*a(n-1))` with `a(0)=0`
-/

namespace A015531.P2281239377212636219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (5 * a (n - 1))

end

end A015531.P2281239377212636219

namespace A015531

/-- `xor(1, 5*a(n-1))` -/
def P2281239377212636219.Spec : Prop :=
  ∀ n, (P2281239377212636219.a n : ℤ) = A015531 n

end A015531

/-! ## A015531.P13074483404780389614

`xor(1, lcm(5, a(n-1)))` with `a(0)=0`
-/

namespace A015531.P13074483404780389614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (Nat.lcm 5 (a (n - 1)))

end

end A015531.P13074483404780389614

namespace A015531

/-- `xor(1, lcm(5, a(n-1)))` -/
def P13074483404780389614.Spec : Prop :=
  ∀ n, (P13074483404780389614.a n : ℤ) = A015531 n

end A015531

/-! ## A015531.P12862674252394990822

`xor(1, a(n-1)/(1-4/5))` with `a(0)=0`
-/

namespace A015531.P12862674252394990822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (4 : ℚ) / 5)))

end

end A015531.P12862674252394990822

namespace A015531

/-- `xor(1, a(n-1)/(1-4/5))` -/
def P12862674252394990822.Spec : Prop :=
  ∀ n, P12862674252394990822.a n = A015531 n

end A015531

/-! ## A015531.P14554803522982959746

`floor(∑[5*a(n-1)]-a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A015531.P14554803522982959746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A015531.P14554803522982959746

namespace A015531

/-- `floor(∑[5*a(n-1)]-a(n-1))` -/
def P14554803522982959746.Spec : Prop :=
  ∀ n, P14554803522982959746.a n = A015531 n

end A015531

/-! ## A015531.P6543531537095495221

`a(n-2)-5*(a(n-3)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A015531.P6543531537095495221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 2) - 5 * (a (n - 3) - a (n - 1))

end

end A015531.P6543531537095495221

namespace A015531

/-- `a(n-2)-5*(a(n-3)-a(n-1))` -/
def P6543531537095495221.Spec : Prop :=
  ∀ n, P6543531537095495221.a n = A015531 n

end A015531

/-! ## A015531.P17714435490205665150

`xor(1, A109500(n))`
-/

namespace A015531.P17714435490205665150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A109500 n)

end

end A015531.P17714435490205665150

namespace A015531

/-- `xor(1, A109500(n))` -/
def P17714435490205665150.Spec : Prop :=
  ∀ n, P17714435490205665150.a n = A015531 n

end A015531

/-! ## A015531.P10014691790179484286

`abs(1-A166122(n))`
-/

namespace A015531.P10014691790179484286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A166122 n|

end

end A015531.P10014691790179484286

namespace A015531

/-- `abs(1-A166122(n))` -/
def P10014691790179484286.Spec : Prop :=
  ∀ n, P10014691790179484286.a n = A015531 n

end A015531

/-! ## A015531.P8523830805081788335

`A084177(n)-A084153(n)`
-/

namespace A015531.P8523830805081788335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 n - A084153 n

end

end A015531.P8523830805081788335

namespace A015531

/-- `A084177(n)-A084153(n)` -/
def P8523830805081788335.Spec : Prop :=
  ∀ n, P8523830805081788335.a n = A015531 n

end A015531

/-! ## A015531.P16799425647236373115

`A100284(n)-A056594(n)²`
-/

namespace A015531.P16799425647236373115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100284 n - A056594 n ^ 2

end

end A015531.P16799425647236373115

namespace A015531

/-- `A100284(n)-A056594(n)²` -/
def P16799425647236373115.Spec : Prop :=
  ∀ n, P16799425647236373115.a n = A015531 n

end A015531

/-! ## A015531.P7780443765329702704

`A100284(n)-A133872(2*n)`
-/

namespace A015531.P7780443765329702704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100284 n - A133872 (2 * n)

end

end A015531.P7780443765329702704

namespace A015531

/-- `A100284(n)-A133872(2*n)` -/
def P7780443765329702704.Spec : Prop :=
  ∀ n, P7780443765329702704.a n = A015531 n

end A015531

/-! ## A015531.P10278631668029847197

`A015518(n)+A109500(n)-A054878(n)`
-/

namespace A015531.P10278631668029847197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n + (A109500 n - A054878 n)

end

end A015531.P10278631668029847197

namespace A015531

/-- `A015518(n)+A109500(n)-A054878(n)` -/
def P10278631668029847197.Spec : Prop :=
  ∀ n, P10278631668029847197.a n = A015531 n

end A015531

/-! ## A015531.P5408134526727140605

`A001045(n)+A109500(n)-A078008(n)`
-/

namespace A015531.P5408134526727140605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A109500 n - A078008 n)

end

end A015531.P5408134526727140605

namespace A015531

/-- `A001045(n)+A109500(n)-A078008(n)` -/
def P5408134526727140605.Spec : Prop :=
  ∀ n, P5408134526727140605.a n = A015531 n

end A015531

/-! ## A015531.P5398890241797017812

`A015521(n)+A109500(n)-A109499(n)`
-/

namespace A015531.P5398890241797017812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 n + (A109500 n - A109499 n)

end

end A015531.P5398890241797017812

namespace A015531

/-- `A015521(n)+A109500(n)-A109499(n)` -/
def P5398890241797017812.Spec : Prop :=
  ∀ n, P5398890241797017812.a n = A015531 n

end A015531

/-! ## A015531.P2395950767339380354

`floor(∑[5*a(n-1)]/3)` with `a(0)=1, a(1)=2`
-/

namespace A015531.P2395950767339380354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A015531.P2395950767339380354

namespace A015531

/-- `floor(∑[5*a(n-1)]/3)` -/
def P2395950767339380354.Spec : Prop :=
  ∀ n, P2395950767339380354.a n = A015531 n

end A015531

/-! ## A015531.P4796394284782338379

`A274072(n)/6`
-/

namespace A015531.P4796394284782338379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274072 n : ℚ) / 6

end

end A015531.P4796394284782338379

namespace A015531

/-- `A274072(n)/6` -/
def P4796394284782338379.Spec : Prop :=
  ∀ n, P4796394284782338379.a n = (A015531 n : ℚ)

end A015531

/-! ## A015531.P13926569052940606483

`A231103(n+1)/2`
-/

namespace A015531.P13926569052940606483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231103 (n + 1) : ℚ) / 2

end

end A015531.P13926569052940606483

namespace A015531

/-- `A231103(n+1)/2` -/
def P13926569052940606483.Spec : Prop :=
  ∀ n, P13926569052940606483.a n = (A015531 n : ℚ)

end A015531

/-!
# A015532: a(n) = 4*a(n-1) + 7*a(n-2).

The programs for A015532, the canonical program `A015532.P14773710692086051099` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015532 has offset 0).

The definition of A015532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+7*a(n-2)` (program `A015532.P14773710692086051099`, by `A015532.P14773710692086051099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015532.P14773710692086051099

`4*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015532

/-- `4*a(n-1)+7*a(n-2)` -/
def P14773710692086051099.Spec : Prop :=
  ∀ n, (P14773710692086051099.a n : ℤ) = A015532 n

theorem P14773710692086051099.correct : P14773710692086051099.Spec := by
  intro n
  simp only [A015532]

end A015532

/-! ## A015532.P7659927848410281090

`A008586(a(n-1))+7*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A015532.P7659927848410281090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A008586 (a (n - 1)).toNat + 7 * a (n - 2)

end

end A015532.P7659927848410281090

namespace A015532

/-- `A008586(a(n-1))+7*a(n-2)` -/
def P7659927848410281090.Spec : Prop :=
  ∀ n, P7659927848410281090.a n = A015532 n

end A015532

/-!
# A015533: a(n) = 4*a(n-1) + 9*a(n-2).

The programs for A015533, the canonical program `A015533.P14596579361279129084` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015533 has offset 0).

The definition of A015533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+9*a(n-2)` (program `A015533.P14596579361279129084`, by `A015533.P14596579361279129084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015533.P14596579361279129084

`4*a(n-1)+9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015533

/-- `4*a(n-1)+9*a(n-2)` -/
def P14596579361279129084.Spec : Prop :=
  ∀ n, (P14596579361279129084.a n : ℤ) = A015533 n

theorem P14596579361279129084.correct : P14596579361279129084.Spec := by
  intro n
  simp only [A015533]

end A015533

/-! ## A015533.P9067535554215553722

`14*a(n-1)-a(n-2)-10*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015533.P9067535554215553722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  14 * a (n - 1) - a (n - 2) - 10 * (a (n - 1) - a (n - 2))

end

end A015533.P9067535554215553722

namespace A015533

/-- `14*a(n-1)-a(n-2)-10*(a(n-1)-a(n-2))` -/
def P9067535554215553722.Spec : Prop :=
  ∀ n, P9067535554215553722.a n = A015533 n

end A015533

/-! ## A015533.P14229506233491502984

`∑[A122120(n)]-A122120(n)`
-/

namespace A015533.P14229506233491502984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122120 n

end

end A015533.P14229506233491502984

namespace A015533

/-- `∑[A122120(n)]-A122120(n)` -/
def P14229506233491502984.Spec : Prop :=
  ∀ n, P14229506233491502984.a n = A015533 n

end A015533

/-!
# A015534: Expansion of x/(1 - 4*x - 11*x^2).

The programs for A015534, the canonical program `A015534.P12574467218029037062` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015534 has offset 0).

The definition of A015534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015534.P12574467218029037062

`4*a(n-1)+11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015534

/-- `4*a(n-1)+11*a(n-2)` -/
def P12574467218029037062.Spec : Prop :=
  ∀ n, (P12574467218029037062.a n : ℤ) = A015534 n

theorem P12574467218029037062.correct : P12574467218029037062.Spec := by
  intro n
  simp only [A015534]

end A015534

/-!
# A015535: Expansion of x/(1 - 5*x - 2*x^2).

The programs for A015535, the canonical program `A015535.P16700146185894029579` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015535 has offset 0).

The definition of A015535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015535.P16700146185894029579

`5*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015535

/-- `5*a(n-1)+2*a(n-2)` -/
def P16700146185894029579.Spec : Prop :=
  ∀ n, (P16700146185894029579.a n : ℤ) = A015535 n

theorem P16700146185894029579.correct : P16700146185894029579.Spec := by
  intro n
  simp only [A015535]

end A015535

/-! ## A015535.P9082736012085988877

`(((5+sqrt(33))/2)^n-((5-sqrt(33))/2)^n)/sqrt(33)`
-/

namespace A015535.P9082736012085988877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((5 + Real.sqrt (33 : ℝ)) / 2) ^ n - ((5 - Real.sqrt (33 : ℝ)) / 2) ^ n) / Real.sqrt (33 : ℝ)

end

end A015535.P9082736012085988877

namespace A015535

/-- `(((5+sqrt(33))/2)^n-((5-sqrt(33))/2)^n)/sqrt(33)` -/
def P9082736012085988877.Spec : Prop :=
  ∀ n, P9082736012085988877.a n = (A015535 n : ℝ)

end A015535

/-! ## A015535.P7948447973385149400

`A180038(n)-A124610(n)`
-/

namespace A015535.P7948447973385149400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180038 n - A124610 n

end

end A015535.P7948447973385149400

namespace A015535

/-- `A180038(n)-A124610(n)` -/
def P7948447973385149400.Spec : Prop :=
  ∀ n, P7948447973385149400.a n = A015535 n

end A015535

/-! ## A015535.P90710411889472429

`A327765(n)%A180038(n)`
-/

namespace A015535.P90710411889472429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327765 n) (A180038 n)

end

end A015535.P90710411889472429

namespace A015535

/-- `A327765(n)%A180038(n)` -/
def P90710411889472429.Spec : Prop :=
  ∀ n, P90710411889472429.a n = A015535 n

end A015535

/-! ## A015535.P10757491629864118545

`A083861(A055998(n+6)+n+3)`
-/

namespace A015535.P10757491629864118545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (A055998 (n + 6) + (n + 3 : ℤ)).toNat

end

end A015535.P10757491629864118545

namespace A015535

/-- `A083861(A055998(n+6)+n+3)` -/
def P10757491629864118545.Spec : Prop :=
  ∀ n, P10757491629864118545.a n = A015535 n

end A015535

/-!
# A015536: Expansion of x/(1-5*x-3*x^2).

The programs for A015536, the canonical program `A015536.P8149489757985712242` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015536 has offset 0).

The definition of A015536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015536.P8149489757985712242

`5*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015536

/-- `5*a(n-1)+3*a(n-2)` -/
def P8149489757985712242.Spec : Prop :=
  ∀ n, (P8149489757985712242.a n : ℤ) = A015536 n

theorem P8149489757985712242.correct : P8149489757985712242.Spec := by
  intro n
  simp only [A015536]

end A015536

/-! ## A015536.P18268177225612684722

`A106569(n)/3`
-/

namespace A015536.P18268177225612684722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106569 n : ℚ) / 3

end

end A015536.P18268177225612684722

namespace A015536

/-- `A106569(n)/3` -/
def P18268177225612684722.Spec : Prop :=
  ∀ n, P18268177225612684722.a n = (A015536 n : ℚ)

end A015536

/-! ## A015536.P1341272335874591020

`Δ[A111365(n)/7]`
-/

namespace A015536.P1341272335874591020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111365 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015536.P1341272335874591020

namespace A015536

/-- `Δ[A111365(n)/7]` -/
def P1341272335874591020.Spec : Prop :=
  ∀ n, P1341272335874591020.a n = (A015536 n : ℚ)

end A015536

/-! ## A015536.P8476242553993624466

`A083861(A055998(n+7)+n+3)`
-/

namespace A015536.P8476242553993624466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (A055998 (n + 7) + (n + 3 : ℤ)).toNat

end

end A015536.P8476242553993624466

namespace A015536

/-- `A083861(A055998(n+7)+n+3)` -/
def P8476242553993624466.Spec : Prop :=
  ∀ n, P8476242553993624466.a n = A015536 n

end A015536

/-! ## A015536.P12036300274932209513

`A083861(A028552(n+6)-A000096(n+3))`
-/

namespace A015536.P12036300274932209513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (A028552 (n + 6) - A000096 (n + 3)).toNat

end

end A015536.P12036300274932209513

namespace A015536

/-- `A083861(A028552(n+6)-A000096(n+3))` -/
def P12036300274932209513.Spec : Prop :=
  ∀ n, P12036300274932209513.a n = A015536 n

end A015536

/-! ## A015536.P15886860588240005391

`A083861(A103517(n+4)+A000096(n+7))`
-/

namespace A015536.P15886860588240005391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (A103517 (n + 4) + A000096 (n + 7)).toNat

end

end A015536.P15886860588240005391

namespace A015536

/-- `A083861(A103517(n+4)+A000096(n+7))` -/
def P15886860588240005391.Spec : Prop :=
  ∀ n, P15886860588240005391.a n = A015536 n

end A015536

/-!
# A015537: Expansion of x/(1 - 5*x - 4*x^2).

The programs for A015537, the canonical program `A015537.P1483360007175119008` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015537 has offset 0).

The definition of A015537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015537.P1483360007175119008

`5*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015537

/-- `5*a(n-1)+4*a(n-2)` -/
def P1483360007175119008.Spec : Prop :=
  ∀ n, (P1483360007175119008.a n : ℤ) = A015537 n

theorem P1483360007175119008.correct : P1483360007175119008.Spec := by
  intro n
  simp only [A015537]

end A015537

/-! ## A015537.P5684186279184372680

`∑[A122690(round(sqrt(n²+1))-1)]-1`
-/

namespace A015537.P5684186279184372680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122690 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A015537.P5684186279184372680

namespace A015537

/-- `∑[A122690(round(sqrt(n²+1))-1)]-1` -/
def P5684186279184372680.Spec : Prop :=
  ∀ n, P5684186279184372680.a n = A015537 n

end A015537

/-! ## A015537.P12777942896264749756

`1/41*sqrt(41)*((5/2+1/2*sqrt(41))^n-(5/2-1/2*sqrt(41))^n)`
-/

namespace A015537.P12777942896264749756
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 41 : ℝ) * Real.sqrt (41 : ℝ) * ((((5 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (41 : ℝ)) ^ n - (((5 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (41 : ℝ)) ^ n)

end

end A015537.P12777942896264749756

namespace A015537

/-- `1/41*sqrt(41)*((5/2+1/2*sqrt(41))^n-(5/2-1/2*sqrt(41))^n)` -/
def P12777942896264749756.Spec : Prop :=
  ∀ n, P12777942896264749756.a n = (A015537 n : ℝ)

end A015537

/-! ## A015537.P14928456446805430242

`A106567(n)/4`
-/

namespace A015537.P14928456446805430242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106567 n : ℚ) / 4

end

end A015537.P14928456446805430242

namespace A015537

/-- `A106567(n)/4` -/
def P14928456446805430242.Spec : Prop :=
  ∀ n, P14928456446805430242.a n = (A015537 n : ℚ)

end A015537

/-! ## A015537.P14601023187559172874

`Δ[A123270(n)/8]`
-/

namespace A015537.P14601023187559172874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123270 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015537.P14601023187559172874

namespace A015537

/-- `Δ[A123270(n)/8]` -/
def P14601023187559172874.Spec : Prop :=
  ∀ n, P14601023187559172874.a n = (A015537 n : ℚ)

end A015537

/-!
# A015538: Inverse of 1529th cyclotomic polynomial.

The programs for A015538, there is no canonical definition to state claims against.
-/

/-! ## A015538.P7023441043543531282

`A015516(n-A086597(n+1))`
-/

namespace A015538.P7023441043543531282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015516 ((n : ℤ) - A086597 (n + 1)).toNat

end

end A015538.P7023441043543531282

/-! ## A015538.P8019096542009491295

`A097806(∑[A011760(n+2)])`
-/

namespace A015538.P8019096542009491295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015538.P8019096542009491295

/-! ## A015538.P17080536078534977697

`A063524(A308925(n+1)+1)`
-/

namespace A015538.P17080536078534977697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A308925 (n + 1) + 1).toNat

end

end A015538.P17080536078534977697

/-! ## A015538.P7335895962002823091

`A010054(∑[comp[A007088(n+3)]])`
-/

namespace A015538.P7335895962002823091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015538.P7335895962002823091

/-! ## A015538.P7774722034398236126

`A010815(A125516(n+1)*A211020(n))`
-/

namespace A015538.P7774722034398236126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A125516 (n + 1) * A211020 n).toNat

end

end A015538.P7774722034398236126

/-! ## A015538.P17458634089162698090

`C(A000288(A049986(n+1)), A326469(n))`
-/

namespace A015538.P17458634089162698090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000288 (A049986 (n + 1)).toNat).toNat (A326469 n).toNat

end

end A015538.P17458634089162698090

/-! ## A015538.P17297045861335533668

`C(A334302(A174447(n+3)), A135585(n))`
-/

namespace A015538.P17297045861335533668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334302 (A174447 (n + 3)).toNat).toNat (A135585 n).toNat

end

end A015538.P17297045861335533668

/-! ## A015538.P11165069110001751048

`C(A134451(A000700(n)), A341455(n+8))`
-/

namespace A015538.P11165069110001751048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134451 (A000700 n).toNat).toNat (A341455 (n + 8)).toNat

end

end A015538.P11165069110001751048

/-! ## A015538.P5063469162450522715

`val(A260078(A072774(n+1)), A260078(n+1))`
-/

namespace A015538.P5063469162450522715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A260078 (A072774 (n + 1)).toNat).toNat (A260078 (n + 1)).toNat

end

end A015538.P5063469162450522715

/-! ## A015538.P7317242310906720616

`C(A092669(n+1), A342074(A000196(3*(n+1))))`
-/

namespace A015538.P7317242310906720616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A092669 (n + 1)).toNat (A342074 (A000196 (3 * (n + 1))).toNat).toNat

end

end A015538.P7317242310906720616

/-! ## A015538.P13121099539415714955

`C(A276024(n+1), A276024(comp[12*n]))`
-/

namespace A015538.P13121099539415714955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A276024 (n + 1)).toNat (A276024 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A015538.P13121099539415714955

/-! ## A015538.P8923462745028573144

`A151933(A237127(n+1)%A293660(n+4))`
-/

namespace A015538.P8923462745028573144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (Int.tmod (A237127 (n + 1)) (A293660 (n + 4))).toNat

end

end A015538.P8923462745028573144

/-! ## A015538.P8829094072803267165

`C(A074206(A140633(n+1)), A103378(n+1))`
-/

namespace A015538.P8829094072803267165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074206 (A140633 (n + 1)).toNat).toNat (A103378 (n + 1)).toNat

end

end A015538.P8829094072803267165

/-!
# A015539: Inverse of 1530th cyclotomic polynomial.

The programs for A015539, there is no canonical definition to state claims against.
-/

/-! ## A015539.P11207685140583132824

`A015029(A004396(n))`
-/

namespace A015539.P11207685140583132824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015029 (A004396 n).toNat

end

end A015539.P11207685140583132824

/-! ## A015539.P7623949058370429958

`A016049(A004773(n))`
-/

namespace A015539.P7623949058370429958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (A004773 n).toNat

end

end A015539.P7623949058370429958

/-! ## A015539.P14702201054912258505

`A015029(A006369(n))`
-/

namespace A015539.P14702201054912258505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015029 (A006369 n).toNat

end

end A015539.P14702201054912258505

/-! ## A015539.P6247319810621314042

`A015029(A074305(n))`
-/

namespace A015539.P6247319810621314042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015029 (A074305 n).toNat

end

end A015539.P6247319810621314042

/-! ## A015539.P1709445897513184719

`A015029(A092942(n))`
-/

namespace A015539.P1709445897513184719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015029 (A092942 n).toNat

end

end A015539.P1709445897513184719

/-! ## A015539.P12417246811883027699

`A016049(A131452(n))`
-/

namespace A015539.P12417246811883027699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (A131452 n).toNat

end

end A015539.P12417246811883027699

/-! ## A015539.P8157722356614790156

`A015029(A160080(n))`
-/

namespace A015539.P8157722356614790156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015029 (A160080 n).toNat

end

end A015539.P8157722356614790156

/-! ## A015539.P3130873355643626358

`A016049(A265667(n))`
-/

namespace A015539.P3130873355643626358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (A265667 n).toNat

end

end A015539.P3130873355643626358

/-! ## A015539.P13780717145601563520

`A015029(A272071(n))`
-/

namespace A015539.P13780717145601563520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015029 (A272071 n).toNat

end

end A015539.P13780717145601563520

/-! ## A015539.P2990367295816457952

`A016049(A367286(n))`
-/

namespace A015539.P2990367295816457952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (A367286 n).toNat

end

end A015539.P2990367295816457952

/-! ## A015539.P13569583784233268114

`A016049(A367651(n))`
-/

namespace A015539.P13569583784233268114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (A367651 n).toNat

end

end A015539.P13569583784233268114

/-! ## A015539.P7896388426868742424

`A015029(A005131(n+1))`
-/

namespace A015539.P7896388426868742424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015029 (A005131 (n + 1)).toNat

end

end A015539.P7896388426868742424

/-! ## A015539.P2845247616940017396

`A016049(A047424(n+1))`
-/

namespace A015539.P2845247616940017396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (A047424 (n + 1)).toNat

end

end A015539.P2845247616940017396

/-! ## A015539.P15718920383086286672

`A016049(A047503(n+1))`
-/

namespace A015539.P15718920383086286672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (A047503 (n + 1)).toNat

end

end A015539.P15718920383086286672

/-! ## A015539.P9895316010601779317

`A016049(A230709(n+1))`
-/

namespace A015539.P9895316010601779317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (A230709 (n + 1)).toNat

end

end A015539.P9895316010601779317

/-! ## A015539.P8325551563315704188

`A010892(n)*A014774(n)`
-/

namespace A015539.P8325551563315704188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014774 n

end

end A015539.P8325551563315704188

/-!
# A015540: a(n) = 5*a(n-1) + 6*a(n-2), a(0) = 0, a(1) = 1.

The programs for A015540, the canonical program `A015540.P6424508890208897512` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015540 has offset 0).

The definition of A015540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+6*a(n-2)` (program `A015540.P6424508890208897512`, by `A015540.P6424508890208897512.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015540.P12030080685921503646

`6^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015540.P12030080685921503646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A015540.P12030080685921503646

namespace A015540

/-- `6^(n-1)-a(n-1)` -/
def P12030080685921503646.Spec : Prop :=
  ∀ n, P12030080685921503646.a n = (A015540 n : ℚ)

end A015540

/-! ## A015540.P6424508890208897512

`5*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015540

/-- `5*a(n-1)+6*a(n-2)` -/
def P6424508890208897512.Spec : Prop :=
  ∀ n, (P6424508890208897512.a n : ℤ) = A015540 n

theorem P6424508890208897512.correct : P6424508890208897512.Spec := by
  intro n
  simp only [A015540]

end A015540

/-! ## A015540.P6506951099641643126

`round(6^n/7)`
-/

namespace A015540.P6506951099641643126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((6 ^ n : ℚ) / 7)

end

end A015540.P6506951099641643126

namespace A015540

/-- `round(6^n/7)` -/
def P6506951099641643126.Spec : Prop :=
  ∀ n, P6506951099641643126.a n = A015540 n

end A015540

/-! ## A015540.P14663184652477349708

`abs(∑[-6*a(n-1)])` with `a(0)=0, a(1)=1`
-/

namespace A015540.P14663184652477349708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  -(6 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A015540.P14663184652477349708

namespace A015540

/-- `abs(∑[-6*a(n-1)])` -/
def P14663184652477349708.Spec : Prop :=
  ∀ n, P14663184652477349708.a n = A015540 n

end A015540

/-! ## A015540.P9198503192769542829

`6*a(n-1)-cos(π*n)` with `a(0)=0, a(1)=1`
-/

namespace A015540.P9198503192769542829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 * a (n - 1) - Real.cos (Real.pi * (n : ℝ))

end

end A015540.P9198503192769542829

namespace A015540

/-- `6*a(n-1)-cos(π*n)` -/
def P9198503192769542829.Spec : Prop :=
  ∀ n, P9198503192769542829.a n = (A015540 n : ℝ)

end A015540

/-! ## A015540.P6193958926063206760

`6*a(n-1)-A033999(n)` with `a(0)=0, a(1)=1`
-/

namespace A015540.P6193958926063206760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 * a (n - 1) - A033999 n

end

end A015540.P6193958926063206760

namespace A015540

/-- `6*a(n-1)-A033999(n)` -/
def P6193958926063206760.Spec : Prop :=
  ∀ n, P6193958926063206760.a n = A015540 n

end A015540

/-! ## A015540.P10958223718694386548

`A109501(n)-A033999(n)`
-/

namespace A015540.P10958223718694386548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 n - A033999 n

end

end A015540.P10958223718694386548

namespace A015540

/-- `A109501(n)-A033999(n)` -/
def P10958223718694386548.Spec : Prop :=
  ∀ n, P10958223718694386548.a n = A015540 n

end A015540

/-! ## A015540.P8691796131506204630

`A109501(n)-A056594(2*n)`
-/

namespace A015540.P8691796131506204630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 n - A056594 (2 * n)

end

end A015540.P8691796131506204630

namespace A015540

/-- `A109501(n)-A056594(2*n)` -/
def P8691796131506204630.Spec : Prop :=
  ∀ n, P8691796131506204630.a n = A015540 n

end A015540

/-! ## A015540.P8899792144102050656

`A109501(n)-A133730(2*n)`
-/

namespace A015540.P8899792144102050656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 n - A133730 (2 * n)

end

end A015540.P8899792144102050656

namespace A015540

/-- `A109501(n)-A133730(2*n)` -/
def P8899792144102050656.Spec : Prop :=
  ∀ n, P8899792144102050656.a n = A015540 n

end A015540

/-! ## A015540.P17859527202892052568

`A109501(n)-A010892(A008486(n))`
-/

namespace A015540.P17859527202892052568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 n - A010892 (A008486 n).toNat

end

end A015540.P17859527202892052568

namespace A015540

/-- `A109501(n)-A010892(A008486(n))` -/
def P17859527202892052568.Spec : Prop :=
  ∀ n, P17859527202892052568.a n = A015540 n

end A015540

/-! ## A015540.P16616975127309545891

`A109501(n)-A010892(A008585(n))`
-/

namespace A015540.P16616975127309545891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 n - A010892 (A008585 n).toNat

end

end A015540.P16616975127309545891

namespace A015540

/-- `A109501(n)-A010892(A008585(n))` -/
def P16616975127309545891.Spec : Prop :=
  ∀ n, P16616975127309545891.a n = A015540 n

end A015540

/-! ## A015540.P11905228426626917028

`A015518(n)+A109501(n)-A054878(n)`
-/

namespace A015540.P11905228426626917028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n + (A109501 n - A054878 n)

end

end A015540.P11905228426626917028

namespace A015540

/-- `A015518(n)+A109501(n)-A054878(n)` -/
def P11905228426626917028.Spec : Prop :=
  ∀ n, P11905228426626917028.a n = A015540 n

end A015540

/-! ## A015540.P7696645400924528952

`A001045(n)+A109501(n)-A078008(n)`
-/

namespace A015540.P7696645400924528952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A109501 n - A078008 n)

end

end A015540.P7696645400924528952

namespace A015540

/-- `A001045(n)+A109501(n)-A078008(n)` -/
def P7696645400924528952.Spec : Prop :=
  ∀ n, P7696645400924528952.a n = A015540 n

end A015540

/-! ## A015540.P7592373399247216448

`A015521(n)+A109501(n)-A109499(n)`
-/

namespace A015540.P7592373399247216448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 n + (A109501 n - A109499 n)

end

end A015540.P7592373399247216448

namespace A015540

/-- `A015521(n)+A109501(n)-A109499(n)` -/
def P7592373399247216448.Spec : Prop :=
  ∀ n, P7592373399247216448.a n = A015540 n

end A015540

/-! ## A015540.P13746045744261008766

`A015531(n)+A109501(n)-A109500(n)`
-/

namespace A015540.P13746045744261008766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n + (A109501 n - A109500 n)

end

end A015540.P13746045744261008766

namespace A015540

/-- `A015531(n)+A109501(n)-A109500(n)` -/
def P13746045744261008766.Spec : Prop :=
  ∀ n, P13746045744261008766.a n = A015540 n

end A015540

/-! ## A015540.P6613853408668582124

`A274073(n)/7`
-/

namespace A015540.P6613853408668582124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274073 n : ℚ) / 7

end

end A015540.P6613853408668582124

namespace A015540

/-- `A274073(n)/7` -/
def P6613853408668582124.Spec : Prop :=
  ∀ n, P6613853408668582124.a n = (A015540 n : ℚ)

end A015540

/-! ## A015540.P14794770728499013528

`A109501(n+1)/6`
-/

namespace A015540.P14794770728499013528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109501 (n + 1) : ℚ) / 6

end

end A015540.P14794770728499013528

namespace A015540

/-- `A109501(n+1)/6` -/
def P14794770728499013528.Spec : Prop :=
  ∀ n, P14794770728499013528.a n = (A015540 n : ℚ)

end A015540

/-!
# A015541: Expansion of x/(1 - 5*x - 7*x^2).

The programs for A015541, the canonical program `A015541.P7008964695282535012` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015541 has offset 0).

The definition of A015541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015541.P7008964695282535012

`5*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015541

/-- `5*a(n-1)+7*a(n-2)` -/
def P7008964695282535012.Spec : Prop :=
  ∀ n, (P7008964695282535012.a n : ℤ) = A015541 n

theorem P7008964695282535012.correct : P7008964695282535012.Spec := by
  intro n
  simp only [A015541]

end A015541

/-! ## A015541.P254404051504473527

`1/53*sqrt(53)*((5/2+1/2*sqrt(53))^n-(5/2-1/2*sqrt(53))^n)`
-/

namespace A015541.P254404051504473527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 53 : ℝ) * Real.sqrt (53 : ℝ) * ((((5 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (53 : ℝ)) ^ n - (((5 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (53 : ℝ)) ^ n)

end

end A015541.P254404051504473527

namespace A015541

/-- `1/53*sqrt(53)*((5/2+1/2*sqrt(53))^n-(5/2-1/2*sqrt(53))^n)` -/
def P254404051504473527.Spec : Prop :=
  ∀ n, P254404051504473527.a n = (A015541 n : ℝ)

end A015541

/-! ## A015541.P5047922678671641041

`A152240(n)-A180032(n)`
-/

namespace A015541.P5047922678671641041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152240 n - A180032 n

end

end A015541.P5047922678671641041

namespace A015541

/-- `A152240(n)-A180032(n)` -/
def P5047922678671641041.Spec : Prop :=
  ∀ n, P5047922678671641041.a n = A015541 n

end A015541

/-! ## A015541.P7305444952109654376

`abs(A152239(n))-A180032(n)`
-/

namespace A015541.P7305444952109654376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152239 n| - A180032 n

end

end A015541.P7305444952109654376

namespace A015541

/-- `abs(A152239(n))-A180032(n)` -/
def P7305444952109654376.Spec : Prop :=
  ∀ n, P7305444952109654376.a n = A015541 n

end A015541

/-! ## A015541.P8581005449744747440

`A152240(floor((2*n+1)/2))%A180032(n)`
-/

namespace A015541.P8581005449744747440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152240 ⌊(2 * n + 1 : ℚ) / 2⌋.toNat) (A180032 n)

end

end A015541.P8581005449744747440

namespace A015541

/-- `A152240(floor((2*n+1)/2))%A180032(n)` -/
def P8581005449744747440.Spec : Prop :=
  ∀ n, P8581005449744747440.a n = A015541 n

end A015541

/-! ## A015541.P5846102375479845143

`A180032(n+1)%A180032(n)`
-/

namespace A015541.P5846102375479845143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180032 (n + 1)) (A180032 n)

end

end A015541.P5846102375479845143

namespace A015541

/-- `A180032(n+1)%A180032(n)` -/
def P5846102375479845143.Spec : Prop :=
  ∀ n, P5846102375479845143.a n = A015541 n

end A015541

/-! ## A015541.P3226917002764666633

`record[A180032(A008611(n))]%A180032(n)`
-/

namespace A015541.P3226917002764666633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180032 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A180032 n)

end

end A015541.P3226917002764666633

namespace A015541

/-- `record[A180032(A008611(n))]%A180032(n)` -/
def P3226917002764666633.Spec : Prop :=
  ∀ n, P3226917002764666633.a n = A015541 n

end A015541

/-!
# A015542: Inverse of 1533rd cyclotomic polynomial.

The programs for A015542, there is no canonical definition to state claims against.
-/

/-! ## A015542.P2137252871910921571

`A015668(lt[A350950(n+4), 2])`
-/

namespace A015542.P2137252871910921571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015668 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015542.P2137252871910921571

/-! ## A015542.P9706262841368137892

`A015642(A048142(n+1))*A015668(n)`
-/

namespace A015542.P9706262841368137892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (A048142 (n + 1)).toNat * A015668 n

end

end A015542.P9706262841368137892

/-!
# A015543: Inverse of 1534th cyclotomic polynomial.

The programs for A015543, there is no canonical definition to state claims against.
-/

/-! ## A015543.P11240392618754028203

`(A004442(n)-n)*A014776(n)`
-/

namespace A015543.P11240392618754028203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A014776 n

end

end A015543.P11240392618754028203

/-! ## A015543.P13535942062417386023

`A015595(n)^n^n`
-/

namespace A015543.P13535942062417386023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015595 n ^ n ^ n

end

end A015543.P13535942062417386023

/-! ## A015543.P5528619913722331586

`A015751(n)^n^n`
-/

namespace A015543.P5528619913722331586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015751 n ^ n ^ n

end

end A015543.P5528619913722331586

/-! ## A015543.P16551185734716671912

`A015855(n)^n^n`
-/

namespace A015543.P16551185734716671912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015855 n ^ n ^ n

end

end A015543.P16551185734716671912

/-! ## A015543.P1848282657802210421

`A015907(n)^n^n`
-/

namespace A015543.P1848282657802210421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015907 n ^ n ^ n

end

end A015543.P1848282657802210421

/-! ## A015543.P18160846731631010079

`A016063(n)^n^n`
-/

namespace A015543.P18160846731631010079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016063 n ^ n ^ n

end

end A015543.P18160846731631010079

/-! ## A015543.P6302447159120734132

`A016167(n)^n^n`
-/

namespace A015543.P6302447159120734132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016167 n ^ n ^ n

end

end A015543.P6302447159120734132

/-! ## A015543.P389970013249291388

`A016323(n)^n^n`
-/

namespace A015543.P389970013249291388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016323 n ^ n ^ n

end

end A015543.P389970013249291388

/-!
# A015544: Lucas sequence U(5,-8): a(n+1) = 5*a(n) + 8*a(n-1), a(0)=0, a(1)=1.

The programs for A015544, the canonical program `A015544.P8654443743843470390` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015544 has offset 0).

The definition of A015544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015544.P8654443743843470390

`5*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015544

/-- `5*a(n-1)+8*a(n-2)` -/
def P8654443743843470390.Spec : Prop :=
  ∀ n, (P8654443743843470390.a n : ℤ) = A015544 n

theorem P8654443743843470390.correct : P8654443743843470390.Spec := by
  intro n
  simp only [A015544]

end A015544

/-! ## A015544.P3888883223569408862

`A278008(n+1)/6`
-/

namespace A015544.P3888883223569408862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278008 (n + 1) : ℚ) / 6

end

end A015544.P3888883223569408862

namespace A015544

/-- `A278008(n+1)/6` -/
def P3888883223569408862.Spec : Prop :=
  ∀ n, P3888883223569408862.a n = (A015544 n : ℚ)

end A015544

/-! ## A015544.P17124902516663558446

`A083861(eq[15, A004736(n+1)])`
-/

namespace A015544.P17124902516663558446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015544.P17124902516663558446

namespace A015544

/-- `A083861(eq[15, A004736(n+1)])` -/
def P17124902516663558446.Spec : Prop :=
  ∀ n, P17124902516663558446.a n = A015544 n

end A015544

/-! ## A015544.P18058523815031668315

`(A180031(n)-A180030(n))/2`
-/

namespace A015544.P18058523815031668315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180031 n - A180030 n : ℚ) / 2

end

end A015544.P18058523815031668315

namespace A015544

/-- `(A180031(n)-A180030(n))/2` -/
def P18058523815031668315.Spec : Prop :=
  ∀ n, P18058523815031668315.a n = (A015544 n : ℚ)

end A015544

/-! ## A015544.P8006077873147797201

`A083861(A000124(n+14)+n-1)`
-/

namespace A015544.P8006077873147797201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (A000124 (n + 14) + ((n : ℤ) - 1)).toNat

end

end A015544.P8006077873147797201

namespace A015544

/-- `A083861(A000124(n+14)+n-1)` -/
def P8006077873147797201.Spec : Prop :=
  ∀ n, P8006077873147797201.a n = A015544 n

end A015544

/-!
# A015545: Expansion of x/(1 - 5*x - 9*x^2).

The programs for A015545, the canonical program `A015545.P8601922199151953406` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015545 has offset 0).

The definition of A015545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015545.P8601922199151953406

`5*a(n-1)+9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015545

/-- `5*a(n-1)+9*a(n-2)` -/
def P8601922199151953406.Spec : Prop :=
  ∀ n, (P8601922199151953406.a n : ℤ) = A015545 n

theorem P8601922199151953406.correct : P8601922199151953406.Spec := by
  intro n
  simp only [A015545]

end A015545

/-! ## A015545.P7988363491482521413

`A083861(eq[15, A025581(n)])`
-/

namespace A015545.P7988363491482521413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015545.P7988363491482521413

namespace A015545

/-- `A083861(eq[15, A025581(n)])` -/
def P7988363491482521413.Spec : Prop :=
  ∀ n, P7988363491482521413.a n = A015545 n

end A015545

/-! ## A015545.P2764961803842927396

`A083861(eq[16, A193739(n)])`
-/

namespace A015545.P2764961803842927396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015545.P2764961803842927396

namespace A015545

/-- `A083861(eq[16, A193739(n)])` -/
def P2764961803842927396.Spec : Prop :=
  ∀ n, P2764961803842927396.a n = A015545 n

end A015545

/-! ## A015545.P7426825437401678365

`A083861(eq[16, A004736(n+1)])`
-/

namespace A015545.P7426825437401678365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015545.P7426825437401678365

namespace A015545

/-- `A083861(eq[16, A004736(n+1)])` -/
def P7426825437401678365.Spec : Prop :=
  ∀ n, P7426825437401678365.a n = A015545 n

end A015545

/-! ## A015545.P8716583073783932804

`1/61*sqrt(61)*((5/2+1/2*sqrt(61))^n-(5/2-1/2*sqrt(61))^n)`
-/

namespace A015545.P8716583073783932804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 61 : ℝ) * Real.sqrt (61 : ℝ) * ((((5 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (61 : ℝ)) ^ n - (((5 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (61 : ℝ)) ^ n)

end

end A015545.P8716583073783932804

namespace A015545

/-- `1/61*sqrt(61)*((5/2+1/2*sqrt(61))^n-(5/2-1/2*sqrt(61))^n)` -/
def P8716583073783932804.Spec : Prop :=
  ∀ n, P8716583073783932804.a n = (A015545 n : ℝ)

end A015545

/-!
# A015546: Inverse of 1537th cyclotomic polynomial.

The programs for A015546, there is no canonical definition to state claims against.
-/

/-! ## A015546.P4090209273340786618

`A015970(p?[A330558(A008486(n))])`
-/

namespace A015546.P4090209273340786618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A015546.P4090209273340786618

/-! ## A015546.P18377263635144645979

`∑[A240467(∑[A353855(n)])]`
-/

namespace A015546.P18377263635144645979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353855 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015546.P18377263635144645979

/-! ## A015546.P5192678070705003274

`and(A015970(A325368(n+1)), A015970(n))`
-/

namespace A015546.P5192678070705003274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015970 (A325368 (n + 1)).toNat) (A015970 n)

end

end A015546.P5192678070705003274

/-! ## A015546.P8844712402515698808

`A015952(lt[A245120(n+1), A304681(n+3)])`
-/

namespace A015546.P8844712402515698808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304681 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015952 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015546.P8844712402515698808

/-!
# A015547: Expansion of x/(1 - 5*x - 11*x^2).

The programs for A015547, the canonical program `A015547.P4560657155044585294` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015547 has offset 0).

The definition of A015547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015547.P4560657155044585294

`5*a(n-1)+11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015547

/-- `5*a(n-1)+11*a(n-2)` -/
def P4560657155044585294.Spec : Prop :=
  ∀ n, (P4560657155044585294.a n : ℤ) = A015547 n

theorem P4560657155044585294.correct : P4560657155044585294.Spec := by
  intro n
  simp only [A015547]

end A015547

/-! ## A015547.P11477296134349202018

`A083861(eq[17, A025581(n)])`
-/

namespace A015547.P11477296134349202018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015547.P11477296134349202018

namespace A015547

/-- `A083861(eq[17, A025581(n)])` -/
def P11477296134349202018.Spec : Prop :=
  ∀ n, P11477296134349202018.a n = A015547 n

end A015547

/-! ## A015547.P11848140371946805981

`A083861(eq[18, A193739(n)])`
-/

namespace A015547.P11848140371946805981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015547.P11848140371946805981

namespace A015547

/-- `A083861(eq[18, A193739(n)])` -/
def P11848140371946805981.Spec : Prop :=
  ∀ n, P11848140371946805981.a n = A015547 n

end A015547

/-! ## A015547.P11858831805244610506

`A083861(eq[18, A004736(n+1)])`
-/

namespace A015547.P11858831805244610506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015547.P11858831805244610506

namespace A015547

/-- `A083861(eq[18, A004736(n+1)])` -/
def P11858831805244610506.Spec : Prop :=
  ∀ n, P11858831805244610506.a n = A015547 n

end A015547

/-!
# A015548: Expansion of x/(1 - 5*x - 12*x^2).

The programs for A015548, the canonical program `A015548.P2057909974739403018` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015548 has offset 0).

The definition of A015548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015548.P2057909974739403018

`5*a(n-1)+12*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015548

/-- `5*a(n-1)+12*a(n-2)` -/
def P2057909974739403018.Spec : Prop :=
  ∀ n, (P2057909974739403018.a n : ℤ) = A015548 n

theorem P2057909974739403018.correct : P2057909974739403018.Spec := by
  intro n
  simp only [A015548]

end A015548

/-! ## A015548.P14119763297101789816

`A083861(eq[19, A004736(n+1)])`
-/

namespace A015548.P14119763297101789816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015548.P14119763297101789816

namespace A015548

/-- `A083861(eq[19, A004736(n+1)])` -/
def P14119763297101789816.Spec : Prop :=
  ∀ n, P14119763297101789816.a n = A015548 n

end A015548

/-!
# A015549: Inverse of 1540th cyclotomic polynomial.

The programs for A015549, there is no canonical definition to state claims against.
-/

/-! ## A015549.P15579066332355138247

`A014779(A004525(n))*A059841(n)`
-/

namespace A015549.P15579066332355138247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014779 (A004525 n).toNat * A059841 n

end

end A015549.P15579066332355138247

/-! ## A015549.P176644120419597756

`A016334(A203565(n+1))`
-/

namespace A015549.P176644120419597756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (A203565 (n + 1)).toNat

end

end A015549.P176644120419597756

/-! ## A015549.P8342613488222630481

`A016334(A274846(n+1))`
-/

namespace A015549.P8342613488222630481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (A274846 (n + 1)).toNat

end

end A015549.P8342613488222630481

/-! ## A015549.P2023433839801380753

`A016334(A266642(n))`
-/

namespace A015549.P2023433839801380753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (A266642 n).toNat

end

end A015549.P2023433839801380753

/-! ## A015549.P2505898376875520450

`A016334(A236836(n))`
-/

namespace A015549.P2505898376875520450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (A236836 n).toNat

end

end A015549.P2505898376875520450

/-!
# A015550: Inverse of 1541st cyclotomic polynomial.

The programs for A015550, there is no canonical definition to state claims against.
-/

/-! ## A015550.P1177349132949651740

`A016126(A353849(n)+n+4)`
-/

namespace A015550.P1177349132949651740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016126 (A353849 n + (n + 4 : ℤ)).toNat

end

end A015550.P1177349132949651740

/-! ## A015550.P4975270031948081955

`2-ceil(A113724(n+1)/12)`
-/

namespace A015550.P4975270031948081955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈(A113724 (n + 1) : ℚ) / 12⌉

end

end A015550.P4975270031948081955

/-!
# A015551: Expansion of x/(1 - 6*x - 5*x^2).

The programs for A015551, the canonical program `A015551.P9805165298448153102` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015551 has offset 0).

The definition of A015551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015551.P9805165298448153102

`6*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015551

/-- `6*a(n-1)+5*a(n-2)` -/
def P9805165298448153102.Spec : Prop :=
  ∀ n, (P9805165298448153102.a n : ℤ) = A015551 n

theorem P9805165298448153102.correct : P9805165298448153102.Spec := by
  intro n
  simp only [A015551]

end A015551

/-! ## A015551.P12947125200850688555

`A091928(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A015551.P12947125200850688555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A091928 (n - 1) + a (n - 1)

end

end A015551.P12947125200850688555

namespace A015551

/-- `A091928(n-1)+a(n-1)` -/
def P12947125200850688555.Spec : Prop :=
  ∀ n, P12947125200850688555.a n = A015551 n

end A015551

/-! ## A015551.P6209811910721583090

`A123362(n)-A091927(n)`
-/

namespace A015551.P6209811910721583090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123362 n - A091927 n

end

end A015551.P6209811910721583090

namespace A015551

/-- `A123362(n)-A091927(n)` -/
def P6209811910721583090.Spec : Prop :=
  ∀ n, P6209811910721583090.a n = A015551 n

end A015551

/-! ## A015551.P10801438194491243823

`∑[A036453(n+1)*A091927(n)]-A091927(n)`
-/

namespace A015551.P10801438194491243823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A091927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091927 n

end

end A015551.P10801438194491243823

namespace A015551

/-- `∑[A036453(n+1)*A091927(n)]-A091927(n)` -/
def P10801438194491243823.Spec : Prop :=
  ∀ n, P10801438194491243823.a n = A015551 n

end A015551

/-! ## A015551.P15032149924882334816

`A091927(n+1)/5`
-/

namespace A015551.P15032149924882334816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091927 (n + 1) : ℚ) / 5

end

end A015551.P15032149924882334816

namespace A015551

/-- `A091927(n+1)/5` -/
def P15032149924882334816.Spec : Prop :=
  ∀ n, P15032149924882334816.a n = (A015551 n : ℚ)

end A015551

/-! ## A015551.P4039865627138939895

`∑[A091928(n)]-A091928(n)`
-/

namespace A015551.P4039865627138939895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091928 n

end

end A015551.P4039865627138939895

namespace A015551

/-- `∑[A091928(n)]-A091928(n)` -/
def P4039865627138939895.Spec : Prop :=
  ∀ n, P4039865627138939895.a n = A015551 n

end A015551

/-! ## A015551.P2127489373189160155

`A126528(n)%∑[A091928(n)]`
-/

namespace A015551.P2127489373189160155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126528 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015551.P2127489373189160155

namespace A015551

/-- `A126528(n)%∑[A091928(n)]` -/
def P2127489373189160155.Spec : Prop :=
  ∀ n, P2127489373189160155.a n = A015551 n

end A015551

/-! ## A015551.P14571523955288627639

`(A091928(n)-A123362(n))/4`
-/

namespace A015551.P14571523955288627639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091928 n - A123362 n : ℚ) / 4

end

end A015551.P14571523955288627639

namespace A015551

/-- `(A091928(n)-A123362(n))/4` -/
def P14571523955288627639.Spec : Prop :=
  ∀ n, P14571523955288627639.a n = (A015551 n : ℚ)

end A015551

/-!
# A015552: a(n) = 6*a(n-1) + 7*a(n-2), a(0) = 0, a(1) = 1.

The programs for A015552, the canonical program `A015552.P4069390723954488205` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015552 has offset 0).

The definition of A015552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+7*a(n-2)` (program `A015552.P4069390723954488205`, by `A015552.P4069390723954488205.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015552.P3878477966966719518

`7^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015552.P3878477966966719518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A015552.P3878477966966719518

namespace A015552

/-- `7^(n-1)-a(n-1)` -/
def P3878477966966719518.Spec : Prop :=
  ∀ n, P3878477966966719518.a n = (A015552 n : ℚ)

end A015552

/-! ## A015552.P4069390723954488205

`6*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015552

/-- `6*a(n-1)+7*a(n-2)` -/
def P4069390723954488205.Spec : Prop :=
  ∀ n, (P4069390723954488205.a n : ℤ) = A015552 n

theorem P4069390723954488205.correct : P4069390723954488205.Spec := by
  intro n
  simp only [A015552]

end A015552

/-! ## A015552.P1913705330558009581

`round(7^n/8)`
-/

namespace A015552.P1913705330558009581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 ^ n : ℚ) / 8)

end

end A015552.P1913705330558009581

namespace A015552

/-- `round(7^n/8)` -/
def P1913705330558009581.Spec : Prop :=
  ∀ n, P1913705330558009581.a n = A015552 n

end A015552

/-! ## A015552.P14238233350571392454

`xor(1, 7*a(n-1))` with `a(0)=0`
-/

namespace A015552.P14238233350571392454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (7 * a (n - 1))

end

end A015552.P14238233350571392454

namespace A015552

/-- `xor(1, 7*a(n-1))` -/
def P14238233350571392454.Spec : Prop :=
  ∀ n, (P14238233350571392454.a n : ℤ) = A015552 n

end A015552

/-! ## A015552.P11177470782953687414

`xor(1, lcm(7, a(n-1)))` with `a(0)=0`
-/

namespace A015552.P11177470782953687414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (Nat.lcm 7 (a (n - 1)))

end

end A015552.P11177470782953687414

namespace A015552

/-- `xor(1, lcm(7, a(n-1)))` -/
def P11177470782953687414.Spec : Prop :=
  ∀ n, (P11177470782953687414.a n : ℤ) = A015552 n

end A015552

/-! ## A015552.P16837430903736447879

`floor(∑[7*a(n-1)]/4)` with `a(0)=1, a(1)=3`
-/

namespace A015552.P16837430903736447879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A015552.P16837430903736447879

namespace A015552

/-- `floor(∑[7*a(n-1)]/4)` -/
def P16837430903736447879.Spec : Prop :=
  ∀ n, P16837430903736447879.a n = A015552 n

end A015552

/-! ## A015552.P5416235024786996855

`A271427(n)/7`
-/

namespace A015552.P5416235024786996855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271427 n : ℚ) / 7

end

end A015552.P5416235024786996855

namespace A015552

/-- `A271427(n)/7` -/
def P5416235024786996855.Spec : Prop :=
  ∀ n, P5416235024786996855.a n = (A015552 n : ℚ)

end A015552

/-! ## A015552.P4430178296160007142

`floor(A034494(n)/4)`
-/

namespace A015552.P4430178296160007142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034494 n : ℚ) / 4⌋

end

end A015552.P4430178296160007142

namespace A015552

/-- `floor(A034494(n)/4)` -/
def P4430178296160007142.Spec : Prop :=
  ∀ n, P4430178296160007142.a n = A015552 n

end A015552

/-! ## A015552.P5138937208249123305

`floor(A034491(n)/8)`
-/

namespace A015552.P5138937208249123305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034491 n : ℚ) / 8⌋

end

end A015552.P5138937208249123305

namespace A015552

/-- `floor(A034491(n)/8)` -/
def P5138937208249123305.Spec : Prop :=
  ∀ n, P5138937208249123305.a n = A015552 n

end A015552

/-! ## A015552.P9371782093087445224

`floor(A253210(n)/8)`
-/

namespace A015552.P9371782093087445224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A253210 n : ℚ) / 8⌋

end

end A015552.P9371782093087445224

namespace A015552

/-- `floor(A253210(n)/8)` -/
def P9371782093087445224.Spec : Prop :=
  ∀ n, P9371782093087445224.a n = A015552 n

end A015552

/-! ## A015552.P10626142131285962727

`ceil(A120741(n)/2)/2`
-/

namespace A015552.P10626142131285962727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A120741 n : ℚ) / 2⌉ : ℚ) / 2

end

end A015552.P10626142131285962727

namespace A015552

/-- `ceil(A120741(n)/2)/2` -/
def P10626142131285962727.Spec : Prop :=
  ∀ n, P10626142131285962727.a n = (A015552 n : ℚ)

end A015552

/-! ## A015552.P1601533612540915469

`∑[A083232(n)]-A083232(n)`
-/

namespace A015552.P1601533612540915469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A083232 n

end

end A015552.P1601533612540915469

namespace A015552

/-- `∑[A083232(n)]-A083232(n)` -/
def P1601533612540915469.Spec : Prop :=
  ∀ n, P1601533612540915469.a n = A015552 n

end A015552

/-!
# A015553: Expansion of x/(1 - 6*x - 11*x^2).

The programs for A015553, the canonical program `A015553.P2015731044589394124` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015553 has offset 0).

The definition of A015553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015553.P2015731044589394124

`6*a(n-1)+11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015553

/-- `6*a(n-1)+11*a(n-2)` -/
def P2015731044589394124.Spec : Prop :=
  ∀ n, (P2015731044589394124.a n : ℤ) = A015553 n

theorem P2015731044589394124.correct : P2015731044589394124.Spec := by
  intro n
  simp only [A015553]

end A015553

/-! ## A015553.P569709578013654683

`A091929(n+1)/11`
-/

namespace A015553.P569709578013654683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091929 (n + 1) : ℚ) / 11

end

end A015553.P569709578013654683

namespace A015553

/-- `A091929(n+1)/11` -/
def P569709578013654683.Spec : Prop :=
  ∀ n, P569709578013654683.a n = (A015553 n : ℚ)

end A015553

/-! ## A015553.P10974884486895658283

`floor(record[A091929(n)/11])`
-/

namespace A015553.P10974884486895658283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091929 n : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A015553.P10974884486895658283

namespace A015553

/-- `floor(record[A091929(n)/11])` -/
def P10974884486895658283.Spec : Prop :=
  ∀ n, P10974884486895658283.a n = A015553 n

end A015553

/-! ## A015553.P16952959304673440280

`record[A091929(n)/11]*A178334(n)`
-/

namespace A015553.P16952959304673440280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091929 n : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (A178334 n : ℚ)

end

end A015553.P16952959304673440280

namespace A015553

/-- `record[A091929(n)/11]*A178334(n)` -/
def P16952959304673440280.Spec : Prop :=
  ∀ n, P16952959304673440280.a n = (A015553 n : ℚ)

end A015553

/-! ## A015553.P3214240914555483156

`abs(A057428(n))*record[A091929(n)/11]`
-/

namespace A015553.P3214240914555483156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091929 n : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A057428 n| : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015553.P3214240914555483156

namespace A015553

/-- `abs(A057428(n))*record[A091929(n)/11]` -/
def P3214240914555483156.Spec : Prop :=
  ∀ n, P3214240914555483156.a n = (A015553 n : ℚ)

end A015553

/-! ## A015553.P15643242639204672265

`round(A000032(((-1)^n)²)*record[A091929(n)/11])`
-/

namespace A015553.P15643242639204672265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091929 n : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000032 (((-1) ^ n) ^ 2).toNat : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A015553.P15643242639204672265

namespace A015553

/-- `round(A000032(((-1)^n)²)*record[A091929(n)/11])` -/
def P15643242639204672265.Spec : Prop :=
  ∀ n, P15643242639204672265.a n = A015553 n

end A015553

/-!
# A015554: a(n) = floor( (n/e)^n ).

The programs for A015554, the canonical program `A015554.P2544758732724251956` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015554 has offset 1).

The definition of A015554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015554.P2544758732724251956

`floor((n+1)^(n+1)*exp(-(n+1)))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015554

/-- `floor((n+1)^(n+1)*exp(-(n+1)))` -/
def P2544758732724251956.Spec : Prop :=
  ∀ n, P2544758732724251956.a n = A015554 (n + 1)

theorem P2544758732724251956.correct : P2544758732724251956.Spec := by
  intro n
  simp only [A015554, Nat.add_sub_cancel]

end A015554

/-! ## A015554.P17142568748373287096

`∑[abs(Δ[A015557(n)])]`
-/

namespace A015554.P17142568748373287096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015554.P17142568748373287096

namespace A015554

/-- `∑[abs(Δ[A015557(n)])]` -/
def P17142568748373287096.Spec : Prop :=
  ∀ n, P17142568748373287096.a n = A015554 (n + 1)

end A015554

/-! ## A015554.P7815798296609176778

`A015557(n+1)-1`
-/

namespace A015554.P7815798296609176778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015557 (n + 1) - 1

end

end A015554.P7815798296609176778

namespace A015554

/-- `A015557(n+1)-1` -/
def P7815798296609176778.Spec : Prop :=
  ∀ n, P7815798296609176778.a n = A015554 (n + 1)

end A015554

/-! ## A015554.P5893571332026226257

`∑[Δ[A015557(n)]*A057427(n)]`
-/

namespace A015554.P5893571332026226257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015554.P5893571332026226257

namespace A015554

/-- `∑[Δ[A015557(n)]*A057427(n)]` -/
def P5893571332026226257.Spec : Prop :=
  ∀ n, P5893571332026226257.a n = A015554 (n + 1)

end A015554

/-! ## A015554.P2275497361435291206

`A033999(2*n+1)+A015557(n+1)`
-/

namespace A015554.P2275497361435291206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A015557 (n + 1)

end

end A015554.P2275497361435291206

namespace A015554

/-- `A033999(2*n+1)+A015557(n+1)` -/
def P2275497361435291206.Spec : Prop :=
  ∀ n, P2275497361435291206.a n = A015554 (n + 1)

end A015554

/-! ## A015554.P222006128278238990

`A110514(A016813(n))+A015557(n+1)`
-/

namespace A015554.P222006128278238990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A016813 n).toNat + A015557 (n + 1)

end

end A015554.P222006128278238990

namespace A015554

/-- `A110514(A016813(n))+A015557(n+1)` -/
def P222006128278238990.Spec : Prop :=
  ∀ n, P222006128278238990.a n = A015554 (n + 1)

end A015554

/-!
# A015555: Expansion of x/(1 - 7*x - 2*x^2).

The programs for A015555, the canonical program `A015555.P536465477683660956` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015555 has offset 0).

The definition of A015555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015555.P536465477683660956

`7*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015555

/-- `7*a(n-1)+2*a(n-2)` -/
def P536465477683660956.Spec : Prop :=
  ∀ n, (P536465477683660956.a n : ℤ) = A015555 n

theorem P536465477683660956.correct : P536465477683660956.Spec := by
  intro n
  simp only [A015555]

end A015555

/-! ## A015555.P12784016581765139818

`∑[A227665(log2(A011782(n)))]-1`
-/

namespace A015555.P12784016581765139818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227665 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A015555.P12784016581765139818

namespace A015555

/-- `∑[A227665(log2(A011782(n)))]-1` -/
def P12784016581765139818.Spec : Prop :=
  ∀ n, P12784016581765139818.a n = A015555 n

end A015555

/-! ## A015555.P14840420730147234727

`∑[A227665(n)]-A227665(n)`
-/

namespace A015555.P14840420730147234727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A227665 n

end

end A015555.P14840420730147234727

namespace A015555

/-- `∑[A227665(n)]-A227665(n)` -/
def P14840420730147234727.Spec : Prop :=
  ∀ n, P14840420730147234727.a n = A015555 n

end A015555

/-! ## A015555.P325541709344331008

`record[Δ[A225879(n+2)%A225879(n)]]`
-/

namespace A015555.P325541709344331008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225879 (n + 2)) (A225879 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015555.P325541709344331008

namespace A015555

/-- `record[Δ[A225879(n+2)%A225879(n)]]` -/
def P325541709344331008.Spec : Prop :=
  ∀ n, P325541709344331008.a n = A015555 n

end A015555

/-! ## A015555.P1221582334902638811

`A254663(n)%∑[A227665(n)]`
-/

namespace A015555.P1221582334902638811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254663 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015555.P1221582334902638811

namespace A015555

/-- `A254663(n)%∑[A227665(n)]` -/
def P1221582334902638811.Spec : Prop :=
  ∀ n, P1221582334902638811.a n = A015555 n

end A015555

/-! ## A015555.P16479118145949433217

`∑[A227665(A118759(n))]%A227665(n)`
-/

namespace A015555.P16479118145949433217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227665 (A118759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A227665 n)

end

end A015555.P16479118145949433217

namespace A015555

/-- `∑[A227665(A118759(n))]%A227665(n)` -/
def P16479118145949433217.Spec : Prop :=
  ∀ n, P16479118145949433217.a n = A015555 n

end A015555

/-!
# A015556: Inverse of 1547th cyclotomic polynomial.

The programs for A015556, there is no canonical definition to state claims against.
-/

/-! ## A015556.P8024196161404833222

`Δ[A316864(A000203(A052955(n)))]`
-/

namespace A015556.P8024196161404833222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A000203 (A052955 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015556.P8024196161404833222

/-! ## A015556.P2099156150054809883

`Δ[A117898(A000032(n)+3)]`
-/

namespace A015556.P2099156150054809883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117898 (A000032 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015556.P2099156150054809883

/-! ## A015556.P9355877413727662401

`Δ[A064911(A265059(2*(n+1)))]`
-/

namespace A015556.P9355877413727662401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A265059 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015556.P9355877413727662401

/-! ## A015556.P13608773626883911019

`Δ[and(A030561(n+1), A331935(3*(n+1)))]`
-/

namespace A015556.P13608773626883911019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030561 (n + 1)) (A331935 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015556.P13608773626883911019

/-! ## A015556.P15891459561164962398

`Δ[and(A124010(n+1), A331935(3*(n+1)))]`
-/

namespace A015556.P15891459561164962398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124010 (n + 1)) (A331935 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015556.P15891459561164962398

/-!
# A015557: a(n) = ceiling((n/e)^n).

The programs for A015557, the canonical program `A015557.P12551645250336912581` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015557 has offset 0).

The definition of A015557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n/e)^n)` (program `A015557.P12551645250336912581`, by `A015557.P12551645250336912581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015557.P12551645250336912581

`ceil((n/e)^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015557

/-- `ceil((n/e)^n)` -/
def P12551645250336912581.Spec : Prop :=
  ∀ n, P12551645250336912581.a n = A015557 n

theorem P12551645250336912581.correct : P12551645250336912581.Spec := by
  intro n
  simp only [A015557]

end A015557

/-! ## A015557.P5676595832324187862

`floor(A057427(n)+(n/e)^n)`
-/

namespace A015557.P5676595832324187862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + ((n : ℝ) / Real.exp 1) ^ n⌋

end

end A015557.P5676595832324187862

namespace A015557

/-- `floor(A057427(n)+(n/e)^n)` -/
def P5676595832324187862.Spec : Prop :=
  ∀ n, P5676595832324187862.a n = A015557 n

end A015557

/-! ## A015557.P14739519530669095954

`A015554(A028310(n))+1`
-/

namespace A015557.P14739519530669095954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015554 (A028310 n).toNat + 1

end

end A015557.P14739519530669095954

namespace A015557

/-- `A015554(A028310(n))+1` -/
def P14739519530669095954.Spec : Prop :=
  ∀ n, P14739519530669095954.a n = A015557 n

end A015557

/-! ## A015557.P18369359598374583476

`A015554(A233583(n+1))+1`
-/

namespace A015557.P18369359598374583476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015554 (A233583 (n + 1)).toNat + 1

end

end A015557.P18369359598374583476

namespace A015557

/-- `A015554(A233583(n+1))+1` -/
def P18369359598374583476.Spec : Prop :=
  ∀ n, P18369359598374583476.a n = A015557 n

end A015557

/-! ## A015557.P15346417547686949121

`A015554(A123108(2*n))+1`
-/

namespace A015557.P15346417547686949121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015554 (A123108 (2 * n)).toNat + 1

end

end A015557.P15346417547686949121

namespace A015557

/-- `A015554(A123108(2*n))+1` -/
def P15346417547686949121.Spec : Prop :=
  ∀ n, P15346417547686949121.a n = A015557 n

end A015557

/-! ## A015557.P4809080922109963393

`A015554(A000038(n)+n)+1`
-/

namespace A015557.P4809080922109963393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015554 (A000038 n + (n : ℤ)).toNat + 1

end

end A015557.P4809080922109963393

namespace A015557

/-- `A015554(A000038(n)+n)+1` -/
def P4809080922109963393.Spec : Prop :=
  ∀ n, P4809080922109963393.a n = A015557 n

end A015557

/-!
# A015558: Nearest integer to (n/e)^n.

The programs for A015558, the canonical program `A015558.P1693965134297400808` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015558 has offset 1).

The definition of A015558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015558.P1693965134297400808

`round(((n+1)/e)^(n+1))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015558

/-- `round(((n+1)/e)^(n+1))` -/
def P1693965134297400808.Spec : Prop :=
  ∀ n, P1693965134297400808.a n = A015558 (n + 1)

theorem P1693965134297400808.correct : P1693965134297400808.Spec := by
  intro n
  simp only [A015558, Nat.add_sub_cancel]

end A015558

/-! ## A015558.P8489600249812963496

`A004525(A110043(n)-A000110(n))`
-/

namespace A015558.P8489600249812963496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A110043 n - A000110 n).toNat

end

end A015558.P8489600249812963496

namespace A015558

/-- `A004525(A110043(n)-A000110(n))` -/
def P8489600249812963496.Spec : Prop :=
  ∀ n, P8489600249812963496.a n = A015558 (n + 1)

end A015558

/-! ## A015558.P16075970416441782788

`A004525(A110043(n)-A110038(n))`
-/

namespace A015558.P16075970416441782788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A110043 n - A110038 n).toNat

end

end A015558.P16075970416441782788

namespace A015558

/-- `A004525(A110043(n)-A110038(n))` -/
def P16075970416441782788.Spec : Prop :=
  ∀ n, P16075970416441782788.a n = A015558 (n + 1)

end A015558

/-!
# A015559: Expansion of x/(1 - 7*x - 3*x^2).

The programs for A015559, the canonical program `A015559.P3421613696699868246` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015559 has offset 0).

The definition of A015559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015559.P3421613696699868246

`7*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015559

/-- `7*a(n-1)+3*a(n-2)` -/
def P3421613696699868246.Spec : Prop :=
  ∀ n, (P3421613696699868246.a n : ℤ) = A015559 n

theorem P3421613696699868246.correct : P3421613696699868246.Spec := by
  intro n
  simp only [A015559]

end A015559

/-!
# A015560: Inverse of 1551st cyclotomic polynomial.

The programs for A015560, there is no canonical definition to state claims against.
-/

/-! ## A015560.P9385177564853853999

`A015758(A175427(n+1))`
-/

namespace A015560.P9385177564853853999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015758 (A175427 (n + 1)).toNat

end

end A015560.P9385177564853853999

/-! ## A015560.P6151255006732011530

`A015758(n)%A138125(n+1)`
-/

namespace A015560.P6151255006732011530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015758 n) (A138125 (n + 1))

end

end A015560.P6151255006732011530

/-! ## A015560.P7200103918701271221

`A015956(n)%A138125(n+1)`
-/

namespace A015560.P7200103918701271221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015956 n) (A138125 (n + 1))

end

end A015560.P7200103918701271221

/-! ## A015560.P5883098764558424362

`A016022(n)%A138125(n+1)`
-/

namespace A015560.P5883098764558424362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016022 n) (A138125 (n + 1))

end

end A015560.P5883098764558424362

/-! ## A015560.P16464958837011845275

`A016220(n)%A138125(n+1)`
-/

namespace A015560.P16464958837011845275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016220 n) (A138125 (n + 1))

end

end A015560.P16464958837011845275

/-!
# A015561: Expansion of x/(1 - 7*x - 4*x^2).

The programs for A015561, the canonical program `A015561.P13680271252905589880` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015561 has offset 0).

The definition of A015561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015561.P13680271252905589880

`7*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015561

/-- `7*a(n-1)+4*a(n-2)` -/
def P13680271252905589880.Spec : Prop :=
  ∀ n, (P13680271252905589880.a n : ℤ) = A015561 n

theorem P13680271252905589880.correct : P13680271252905589880.Spec := by
  intro n
  simp only [A015561]

end A015561

/-! ## A015561.P13742410812694787831

`A008586(a(n-2))+7*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A015561.P13742410812694787831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A008586 (a (n - 2)).toNat + 7 * a (n - 1)

end

end A015561.P13742410812694787831

namespace A015561

/-- `A008586(a(n-2))+7*a(n-1)` -/
def P13742410812694787831.Spec : Prop :=
  ∀ n, P13742410812694787831.a n = A015561 n

end A015561

/-!
# A015562: Expansion of x/(1 - 7*x - 5*x^2).

The programs for A015562, the canonical program `A015562.P6952262145729582343` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015562 has offset 0).

The definition of A015562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015562.P6952262145729582343

`7*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015562

/-- `7*a(n-1)+5*a(n-2)` -/
def P6952262145729582343.Spec : Prop :=
  ∀ n, (P6952262145729582343.a n : ℤ) = A015562 n

theorem P6952262145729582343.correct : P6952262145729582343.Spec := by
  intro n
  simp only [A015562]

end A015562

/-!
# A015563: Inverse of 1554th cyclotomic polynomial.

The programs for A015563, there is no canonical definition to state claims against.
-/

/-! ## A015563.P10357601365907076363

`A014786(n)*A033999(n)`
-/

namespace A015563.P10357601365907076363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014786 n * A033999 n

end

end A015563.P10357601365907076363

/-! ## A015563.P654303347916769654

`A015731(A175427(n+1))`
-/

namespace A015563.P654303347916769654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015731 (A175427 (n + 1)).toNat

end

end A015563.P654303347916769654

/-! ## A015563.P12042735868913857100

`A015731(A048339(n))`
-/

namespace A015563.P12042735868913857100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015731 (A048339 n).toNat

end

end A015563.P12042735868913857100

/-! ## A015563.P15356301385129034706

`A015311(A048338(n))`
-/

namespace A015563.P15356301385129034706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015311 (A048338 n).toNat

end

end A015563.P15356301385129034706

/-! ## A015563.P5851408401696497609

`A016235(A004907(n+1))`
-/

namespace A015563.P5851408401696497609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016235 (A004907 (n + 1)).toNat

end

end A015563.P5851408401696497609

/-!
# A015564: Expansion of x/(1 - 7*x - 6*x^2).

The programs for A015564, the canonical program `A015564.P1524084149324804123` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015564 has offset 0).

The definition of A015564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015564.P1524084149324804123

`7*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015564

/-- `7*a(n-1)+6*a(n-2)` -/
def P1524084149324804123.Spec : Prop :=
  ∀ n, (P1524084149324804123.a n : ℤ) = A015564 n

theorem P1524084149324804123.correct : P1524084149324804123.Spec := by
  intro n
  simp only [A015564]

end A015564

/-! ## A015564.P17939324752360688606

`lcm(7, a(n-1)+a(n-2))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A015564.P17939324752360688606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.lcm 7 (a (n - 1) + a (n - 2)) : ℤ) - a (n - 2)

end

end A015564.P17939324752360688606

namespace A015564

/-- `lcm(7, a(n-1)+a(n-2))-a(n-2)` -/
def P17939324752360688606.Spec : Prop :=
  ∀ n, P17939324752360688606.a n = A015564 n

end A015564

/-! ## A015564.P2095113447107123125

`9*a(n-1)-4*a(n-2)-2*(a(n-1)-5*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015564.P2095113447107123125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  9 * a (n - 1) - 4 * a (n - 2) - 2 * (a (n - 1) - 5 * a (n - 2))

end

end A015564.P2095113447107123125

namespace A015564

/-- `9*a(n-1)-4*a(n-2)-2*(a(n-1)-5*a(n-2))` -/
def P2095113447107123125.Spec : Prop :=
  ∀ n, P2095113447107123125.a n = A015564 n

end A015564

/-!
# A015565: a(n) = 7*a(n-1) + 8*a(n-2), a(0) = 0, a(1) = 1.

The programs for A015565, the canonical program `A015565.P7794760274078765809` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015565 has offset 0).

The definition of A015565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+8*a(n-2)` (program `A015565.P7794760274078765809`, by `A015565.P7794760274078765809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015565.P7931271704312690812

`8^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015565.P7931271704312690812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A015565.P7931271704312690812

namespace A015565

/-- `8^(n-1)-a(n-1)` -/
def P7931271704312690812.Spec : Prop :=
  ∀ n, P7931271704312690812.a n = (A015565 n : ℚ)

end A015565

/-! ## A015565.P7794760274078765809

`7*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015565

/-- `7*a(n-1)+8*a(n-2)` -/
def P7794760274078765809.Spec : Prop :=
  ∀ n, (P7794760274078765809.a n : ℤ) = A015565 n

theorem P7794760274078765809.correct : P7794760274078765809.Spec := by
  intro n
  simp only [A015565]

end A015565

/-! ## A015565.P5446735232304834820

`A001045(3*n)/3`
-/

namespace A015565.P5446735232304834820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (3 * n) : ℚ) / 3

end

end A015565.P5446735232304834820

namespace A015565

/-- `A001045(3*n)/3` -/
def P5446735232304834820.Spec : Prop :=
  ∀ n, P5446735232304834820.a n = (A015565 n : ℚ)

end A015565

/-! ## A015565.P16073597061716535700

`round(8^n/9)`
-/

namespace A015565.P16073597061716535700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((8 ^ n : ℚ) / 9)

end

end A015565.P16073597061716535700

namespace A015565

/-- `round(8^n/9)` -/
def P16073597061716535700.Spec : Prop :=
  ∀ n, P16073597061716535700.a n = A015565 n

end A015565

/-! ## A015565.P13203162697169051610

`A113405(3*n)`
-/

namespace A015565.P13203162697169051610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (3 * n)

end

end A015565.P13203162697169051610

namespace A015565

/-- `A113405(3*n)` -/
def P13203162697169051610.Spec : Prop :=
  ∀ n, P13203162697169051610.a n = A015565 n

end A015565

/-! ## A015565.P9864301150320500677

`A131090(3*n)`
-/

namespace A015565.P9864301150320500677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 (3 * n)

end

end A015565.P9864301150320500677

namespace A015565

/-- `A131090(3*n)` -/
def P9864301150320500677.Spec : Prop :=
  ∀ n, P9864301150320500677.a n = A015565 n

end A015565

/-! ## A015565.P10883602862306856361

`A131666(3*n)`
-/

namespace A015565.P10883602862306856361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (3 * n)

end

end A015565.P10883602862306856361

namespace A015565

/-- `A131666(3*n)` -/
def P10883602862306856361.Spec : Prop :=
  ∀ n, P10883602862306856361.a n = A015565 n

end A015565

/-! ## A015565.P15343177381147186243

`A133511(3*n)`
-/

namespace A015565.P15343177381147186243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 (3 * n)

end

end A015565.P15343177381147186243

namespace A015565

/-- `A133511(3*n)` -/
def P15343177381147186243.Spec : Prop :=
  ∀ n, P15343177381147186243.a n = A015565 n

end A015565

/-! ## A015565.P2732889984641039291

`A135259(3*n)`
-/

namespace A015565.P2732889984641039291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 (3 * n)

end

end A015565.P2732889984641039291

namespace A015565

/-- `A135259(3*n)` -/
def P2732889984641039291.Spec : Prop :=
  ∀ n, P2732889984641039291.a n = A015565 n

end A015565

/-! ## A015565.P13246973173859479171

`A132805(n)/3`
-/

namespace A015565.P13246973173859479171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132805 n : ℚ) / 3

end

end A015565.P13246973173859479171

namespace A015565

/-- `A132805(n)/3` -/
def P13246973173859479171.Spec : Prop :=
  ∀ n, P13246973173859479171.a n = (A015565 n : ℚ)

end A015565

/-! ## A015565.P3312657230285123006

`A024495(3*n)/3`
-/

namespace A015565.P3312657230285123006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024495 (3 * n) : ℚ) / 3

end

end A015565.P3312657230285123006

namespace A015565

/-- `A024495(3*n)/3` -/
def P3312657230285123006.Spec : Prop :=
  ∀ n, P3312657230285123006.a n = (A015565 n : ℚ)

end A015565

/-! ## A015565.P10935065639445554823

`A131708(3*n)/3`
-/

namespace A015565.P10935065639445554823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131708 (3 * n) : ℚ) / 3

end

end A015565.P10935065639445554823

namespace A015565

/-- `A131708(3*n)/3` -/
def P10935065639445554823.Spec : Prop :=
  ∀ n, P10935065639445554823.a n = (A015565 n : ℚ)

end A015565

/-! ## A015565.P8747193829404544370

`A242563(3*n)/3`
-/

namespace A015565.P8747193829404544370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242563 (3 * n) : ℚ) / 3

end

end A015565.P8747193829404544370

namespace A015565

/-- `A242563(3*n)/3` -/
def P8747193829404544370.Spec : Prop :=
  ∀ n, P8747193829404544370.a n = (A015565 n : ℚ)

end A015565

/-! ## A015565.P5440811469085311956

`A328284(3*(n+1))/3`
-/

namespace A015565.P5440811469085311956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328284 (3 * (n + 1)) : ℚ) / 3

end

end A015565.P5440811469085311956

namespace A015565

/-- `A328284(3*(n+1))/3` -/
def P5440811469085311956.Spec : Prop :=
  ∀ n, P5440811469085311956.a n = (A015565 n : ℚ)

end A015565

/-! ## A015565.P17527272190113898197

`A093134(n)-A033999(n)`
-/

namespace A015565.P17527272190113898197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093134 n - A033999 n

end

end A015565.P17527272190113898197

namespace A015565

/-- `A093134(n)-A033999(n)` -/
def P17527272190113898197.Spec : Prop :=
  ∀ n, P17527272190113898197.a n = A015565 n

end A015565

/-! ## A015565.P6642943251644545401

`A001045(n)*A245489(n)`
-/

namespace A015565.P6642943251644545401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A245489 n

end

end A015565.P6642943251644545401

namespace A015565

/-- `A001045(n)*A245489(n)` -/
def P6642943251644545401.Spec : Prop :=
  ∀ n, P6642943251644545401.a n = A015565 n

end A015565

/-! ## A015565.P7012775042618874559

`abs((A001045(n)-A083086(n))*A001045(n))`
-/

namespace A015565.P7012775042618874559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A001045 n - A083086 n) * A001045 n|

end

end A015565.P7012775042618874559

namespace A015565

/-- `abs((A001045(n)-A083086(n))*A001045(n))` -/
def P7012775042618874559.Spec : Prop :=
  ∀ n, P7012775042618874559.a n = A015565 n

end A015565

/-! ## A015565.P3134134277605382284

`A132804(n)/6`
-/

namespace A015565.P3134134277605382284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132804 n : ℚ) / 6

end

end A015565.P3134134277605382284

namespace A015565

/-- `A132804(n)/6` -/
def P3134134277605382284.Spec : Prop :=
  ∀ n, P3134134277605382284.a n = (A015565 n : ℚ)

end A015565

/-! ## A015565.P3920651669469572953

`A093134(n+1)/8`
-/

namespace A015565.P3920651669469572953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093134 (n + 1) : ℚ) / 8

end

end A015565.P3920651669469572953

namespace A015565

/-- `A093134(n+1)/8` -/
def P3920651669469572953.Spec : Prop :=
  ∀ n, P3920651669469572953.a n = (A015565 n : ℚ)

end A015565

/-!
# A015566: Expansion of x/(1 - 7*x - 9*x^2).

The programs for A015566, the canonical program `A015566.P6368916335458552324` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015566 has offset 0).

The definition of A015566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015566.P6368916335458552324

`7*a(n-1)+9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015566

/-- `7*a(n-1)+9*a(n-2)` -/
def P6368916335458552324.Spec : Prop :=
  ∀ n, (P6368916335458552324.a n : ℤ) = A015566 n

theorem P6368916335458552324.correct : P6368916335458552324.Spec := by
  intro n
  simp only [A015566]

end A015566

/-!
# A015567: Inverse of 1558th cyclotomic polynomial.

The programs for A015567, there is no canonical definition to state claims against.
-/

/-! ## A015567.P2660576753198834117

`A014788(n)*A033999(n)`
-/

namespace A015567.P2660576753198834117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014788 n * A033999 n

end

end A015567.P2660576753198834117

/-!
# A015568: Expansion of x/(1 - 7*x - 10*x^2).

The programs for A015568, the canonical program `A015568.P11910573798135222549` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015568 has offset 0).

The definition of A015568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015568.P11910573798135222549

`7*a(n-1)+10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015568

/-- `7*a(n-1)+10*a(n-2)` -/
def P11910573798135222549.Spec : Prop :=
  ∀ n, (P11910573798135222549.a n : ℤ) = A015568 n

theorem P11910573798135222549.correct : P11910573798135222549.Spec := by
  intro n
  simp only [A015568]

end A015568

/-!
# A015569: Inverse of 1560th cyclotomic polynomial.

The programs for A015569, there is no canonical definition to state claims against.
-/

/-! ## A015569.P15504560022445835004

`A014789(n/gcd(2, n))`
-/

namespace A015569.P15504560022445835004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A015569.P15504560022445835004

/-! ## A015569.P7005720408346952324

`A014789(A004525(n))`
-/

namespace A015569.P7005720408346952324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A004525 n).toNat

end

end A015569.P7005720408346952324

/-! ## A015569.P14149740779617531321

`A014789(A026741(n))`
-/

namespace A015569.P14149740779617531321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A026741 n).toNat

end

end A015569.P14149740779617531321

/-! ## A015569.P4484684928268472047

`A014789(A186813(n))`
-/

namespace A015569.P4484684928268472047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A186813 n).toNat

end

end A015569.P4484684928268472047

/-! ## A015569.P1133220477142129248

`A014789(A116921(n+1))`
-/

namespace A015569.P1133220477142129248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A116921 (n + 1)).toNat

end

end A015569.P1133220477142129248

/-! ## A015569.P8031091215723989145

`A015179(A160079(n))`
-/

namespace A015569.P8031091215723989145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015179 (A160079 n).toNat

end

end A015569.P8031091215723989145

/-! ## A015569.P14804430206986377575

`A015959(A340709(n))`
-/

namespace A015569.P14804430206986377575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015959 (A340709 n).toNat

end

end A015569.P14804430206986377575

/-! ## A015569.P17799984300773353632

`A015959(A001068(n))`
-/

namespace A015569.P17799984300773353632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015959 (A001068 n).toNat

end

end A015569.P17799984300773353632

/-! ## A015569.P2652564125870521559

`A015959(A265430(n))`
-/

namespace A015569.P2652564125870521559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015959 (A265430 n).toNat

end

end A015569.P2652564125870521559

/-! ## A015569.P11624507623833714491

`A015959(A303764(n))`
-/

namespace A015569.P11624507623833714491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015959 (A303764 n).toNat

end

end A015569.P11624507623833714491

/-! ## A015569.P1155503294638053967

`A015959(A032769(n+1))`
-/

namespace A015569.P1155503294638053967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015959 (A032769 (n + 1)).toNat

end

end A015569.P1155503294638053967

/-! ## A015569.P5706522257513718510

`A015959(A271324(n))`
-/

namespace A015569.P5706522257513718510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015959 (A271324 n).toNat

end

end A015569.P5706522257513718510

/-! ## A015569.P122516301116466591

`A015179(A342131(n))`
-/

namespace A015569.P122516301116466591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015179 (A342131 n).toNat

end

end A015569.P122516301116466591

/-!
# A015570: Expansion of x/(1 - 7*x - 11*x^2).

The programs for A015570, the canonical program `A015570.P4789364943828482385` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015570 has offset 0).

The definition of A015570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015570.P4789364943828482385

`7*a(n-1)+11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015570

/-- `7*a(n-1)+11*a(n-2)` -/
def P4789364943828482385.Spec : Prop :=
  ∀ n, (P4789364943828482385.a n : ℤ) = A015570 n

theorem P4789364943828482385.correct : P4789364943828482385.Spec := by
  intro n
  simp only [A015570]

end A015570

/-!
# A015571: Inverse of 1562nd cyclotomic polynomial.

The programs for A015571, there is no canonical definition to state claims against.
-/

/-! ## A015571.P14482541871593379183

`(A004442(n)-n)*A014790(n)`
-/

namespace A015571.P14482541871593379183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A014790 n

end

end A015571.P14482541871593379183

/-! ## A015571.P1228649928694298326

`A016275(n)^A175607(A077610(n+2))`
-/

namespace A015571.P1228649928694298326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A175607 (A077610 (n + 2)).toNat : ℤ)

end

end A015571.P1228649928694298326

/-! ## A015571.P1479627759403234627

`A258998((n+1)*A354928(n+1))`
-/

namespace A015571.P1479627759403234627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 ((n + 1 : ℤ) * A354928 (n + 1)).toNat

end

end A015571.P1479627759403234627

/-! ## A015571.P14146312081018734669

`A055017(C(10, A335522(n+1)))`
-/

namespace A015571.P14146312081018734669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (Nat.choose 10 (A335522 (n + 1)).toNat)

end

end A015571.P14146312081018734669

/-! ## A015571.P10433456694070142294

`A010815(A353852(n)+A000326(n))`
-/

namespace A015571.P10433456694070142294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A353852 n + A000326 n).toNat

end

end A015571.P10433456694070142294

/-! ## A015571.P5908240719865474416

`A010815(A374519(n+1)+A000326(n))`
-/

namespace A015571.P5908240719865474416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A374519 (n + 1) + A000326 n).toNat

end

end A015571.P5908240719865474416

/-!
# A015572: Expansion of x/(1 - 7*x - 12*x^2).

The programs for A015572, the canonical program `A015572.P6082021027298345339` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015572 has offset 0).

The definition of A015572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015572.P6082021027298345339

`7*a(n-1)+12*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015572

/-- `7*a(n-1)+12*a(n-2)` -/
def P6082021027298345339.Spec : Prop :=
  ∀ n, (P6082021027298345339.a n : ℤ) = A015572 n

theorem P6082021027298345339.correct : P6082021027298345339.Spec := by
  intro n
  simp only [A015572]

end A015572

/-! ## A015572.P14569846846721029651

`(((7+sqrt(97))/2)^n-((7-sqrt(97))/2)^n)/sqrt(97)`
-/

namespace A015572.P14569846846721029651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((7 + Real.sqrt (97 : ℝ)) / 2) ^ n - ((7 - Real.sqrt (97 : ℝ)) / 2) ^ n) / Real.sqrt (97 : ℝ)

end

end A015572.P14569846846721029651

namespace A015572

/-- `(((7+sqrt(97))/2)^n-((7-sqrt(97))/2)^n)/sqrt(97)` -/
def P14569846846721029651.Spec : Prop :=
  ∀ n, P14569846846721029651.a n = (A015572 n : ℝ)

end A015572

/-!
# A015573: Inverse of 1564th cyclotomic polynomial.

The programs for A015573, there is no canonical definition to state claims against.
-/

/-! ## A015573.P7217167289028173594

`A015981(n)%A073261(n)`
-/

namespace A015573.P7217167289028173594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015981 n) (A073261 n)

end

end A015573.P7217167289028173594

/-! ## A015573.P5027104536437760471

`A016117(n)%A073261(n)`
-/

namespace A015573.P5027104536437760471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016117 n) (A073261 n)

end

end A015573.P5027104536437760471

/-! ## A015573.P1617808132159068317

`A015981(A065599(n))`
-/

namespace A015573.P1617808132159068317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015981 (A065599 n).toNat

end

end A015573.P1617808132159068317

/-! ## A015573.P4780615274283654669

`A056594(lt[A384055(n+1), 34])`
-/

namespace A015573.P4780615274283654669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384055 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015573.P4780615274283654669

/-! ## A015573.P8794291552664607778

`A015981(n)*A255852(n)`
-/

namespace A015573.P8794291552664607778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015981 n * A255852 n

end

end A015573.P8794291552664607778

/-!
# A015574: Expansion of x/(1 - 8*x - 3*x^2).

The programs for A015574, the canonical program `A015574.P5124310608890070835` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015574 has offset 0).

The definition of A015574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015574.P5124310608890070835

`8*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015574

/-- `8*a(n-1)+3*a(n-2)` -/
def P5124310608890070835.Spec : Prop :=
  ∀ n, (P5124310608890070835.a n : ℤ) = A015574 n

theorem P5124310608890070835.correct : P5124310608890070835.Spec := by
  intro n
  simp only [A015574]

end A015574

/-! ## A015574.P16152702947138493186

`16*a(n-1)-a(n-2)-4*(2*a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015574.P16152702947138493186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  16 * a (n - 1) - a (n - 2) - 4 * (2 * a (n - 1) - a (n - 2))

end

end A015574.P16152702947138493186

namespace A015574

/-- `16*a(n-1)-a(n-2)-4*(2*a(n-1)-a(n-2))` -/
def P16152702947138493186.Spec : Prop :=
  ∀ n, P16152702947138493186.a n = A015574 n

end A015574

/-!
# A015575: Expansion of x/(1 - 8*x - 5*x^2).

The programs for A015575, the canonical program `A015575.P9592955744321355925` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015575 has offset 0).

The definition of A015575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015575.P9592955744321355925

`8*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015575

/-- `8*a(n-1)+5*a(n-2)` -/
def P9592955744321355925.Spec : Prop :=
  ∀ n, (P9592955744321355925.a n : ℤ) = A015575 n

theorem P9592955744321355925.correct : P9592955744321355925.Spec := by
  intro n
  simp only [A015575]

end A015575

/-!
# A015576: Expansion of x/(1 - 8*x - 7*x^2).

The programs for A015576, the canonical program `A015576.P9625750425606285066` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015576 has offset 0).

The definition of A015576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015576.P9625750425606285066

`8*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015576

/-- `8*a(n-1)+7*a(n-2)` -/
def P9625750425606285066.Spec : Prop :=
  ∀ n, (P9625750425606285066.a n : ℤ) = A015576 n

theorem P9625750425606285066.correct : P9625750425606285066.Spec := by
  intro n
  simp only [A015576]

end A015576

/-! ## A015576.P7698651452160763173

`a(n-1)+lcm(7, a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015576.P7698651452160763173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.lcm 7 (a (n - 1) + a (n - 2))

end

end A015576.P7698651452160763173

namespace A015576

/-- `a(n-1)+lcm(7, a(n-1)+a(n-2))` -/
def P7698651452160763173.Spec : Prop :=
  ∀ n, (P7698651452160763173.a n : ℤ) = A015576 n

end A015576

/-!
# A015577: a(n+1) = 8*a(n) + 9*a(n-1), a(0) = 0, a(1) = 1.

The programs for A015577, the canonical program `A015577.P14753358990198049208` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015577 has offset 0).

The definition of A015577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015577.P16644217341024250550

`9^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015577.P16644217341024250550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A015577.P16644217341024250550

namespace A015577

/-- `9^(n-1)-a(n-1)` -/
def P16644217341024250550.Spec : Prop :=
  ∀ n, P16644217341024250550.a n = (A015577 n : ℚ)

end A015577

/-! ## A015577.P14753358990198049208

`round(9^n/10)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015577

/-- `round(9^n/10)` -/
def P14753358990198049208.Spec : Prop :=
  ∀ n, P14753358990198049208.a n = A015577 n

theorem P14753358990198049208.correct : P14753358990198049208.Spec := by
  intro n
  simp only [A015577]

end A015577

/-! ## A015577.P11928000796691876278

`xor(1, 9*a(n-1))` with `a(0)=0`
-/

namespace A015577.P11928000796691876278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (9 * a (n - 1))

end

end A015577.P11928000796691876278

namespace A015577

/-- `xor(1, 9*a(n-1))` -/
def P11928000796691876278.Spec : Prop :=
  ∀ n, (P11928000796691876278.a n : ℤ) = A015577 n

end A015577

/-! ## A015577.P17513607915132659067

`xor(1, lcm(9, a(n-1)))` with `a(0)=0`
-/

namespace A015577.P17513607915132659067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (Nat.lcm 9 (a (n - 1)))

end

end A015577.P17513607915132659067

namespace A015577

/-- `xor(1, lcm(9, a(n-1)))` -/
def P17513607915132659067.Spec : Prop :=
  ∀ n, (P17513607915132659067.a n : ℤ) = A015577 n

end A015577

/-! ## A015577.P14766160162865833223

`floor(∑[9*a(n-1)]/5)-1` with `a(0)=6, a(1)=4`
-/

namespace A015577.P14766160162865833223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 4] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋ - 1

end

end A015577.P14766160162865833223

namespace A015577

/-- `floor(∑[9*a(n-1)]/5)-1` -/
def P14766160162865833223.Spec : Prop :=
  ∀ n, P14766160162865833223.a n = A015577 n

end A015577

/-! ## A015577.P16917492014520263568

`a(n-2)+8*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015577.P16917492014520263568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 8 * (a (n - 1) + a (n - 2))

end

end A015577.P16917492014520263568

namespace A015577

/-- `a(n-2)+8*(a(n-1)+a(n-2))` -/
def P16917492014520263568.Spec : Prop :=
  ∀ n, (P16917492014520263568.a n : ℤ) = A015577 n

end A015577

/-! ## A015577.P16596337841619833375

`A383324(2*n)/2`
-/

namespace A015577.P16596337841619833375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383324 (2 * n) : ℚ) / 2

end

end A015577.P16596337841619833375

namespace A015577

/-- `A383324(2*n)/2` -/
def P16596337841619833375.Spec : Prop :=
  ∀ n, P16596337841619833375.a n = (A015577 n : ℚ)

end A015577

/-! ## A015577.P3073395979696277380

`A178543(2*n)/3`
-/

namespace A015577.P3073395979696277380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178543 (2 * n) : ℚ) / 3

end

end A015577.P3073395979696277380

namespace A015577

/-- `A178543(2*n)/3` -/
def P3073395979696277380.Spec : Prop :=
  ∀ n, P3073395979696277380.a n = (A015577 n : ℚ)

end A015577

/-! ## A015577.P9415414268476112248

`A231104(n+1)/6`
-/

namespace A015577.P9415414268476112248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231104 (n + 1) : ℚ) / 6

end

end A015577.P9415414268476112248

namespace A015577

/-- `A231104(n+1)/6` -/
def P9415414268476112248.Spec : Prop :=
  ∀ n, P9415414268476112248.a n = (A015577 n : ℚ)

end A015577

/-! ## A015577.P701769431679576155

`A178543(A004273(n))`
-/

namespace A015577.P701769431679576155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178543 (A004273 n).toNat

end

end A015577.P701769431679576155

namespace A015577

/-- `A178543(A004273(n))` -/
def P701769431679576155.Spec : Prop :=
  ∀ n, P701769431679576155.a n = A015577 n

end A015577

/-! ## A015577.P6898842906874975869

`A178543(A004277(n)-1)`
-/

namespace A015577.P6898842906874975869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178543 (A004277 n - 1).toNat

end

end A015577.P6898842906874975869

namespace A015577

/-- `A178543(A004277(n)-1)` -/
def P6898842906874975869.Spec : Prop :=
  ∀ n, P6898842906874975869.a n = A015577 n

end A015577

/-! ## A015577.P7442746662511245895

`A015518(2*n)-A177881(2*n)`
-/

namespace A015577.P7442746662511245895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (2 * n) - A177881 (2 * n)

end

end A015577.P7442746662511245895

namespace A015577

/-- `A015518(2*n)-A177881(2*n)` -/
def P7442746662511245895.Spec : Prop :=
  ∀ n, P7442746662511245895.a n = A015577 n

end A015577

/-! ## A015577.P6110544584358015320

`A178543(2*n)-A383324(2*n)`
-/

namespace A015577.P6110544584358015320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178543 (2 * n) - A383324 (2 * n)

end

end A015577.P6110544584358015320

namespace A015577

/-- `A178543(2*n)-A383324(2*n)` -/
def P6110544584358015320.Spec : Prop :=
  ∀ n, P6110544584358015320.a n = A015577 n

end A015577

/-! ## A015577.P4319874651977228842

`A003462(2*n)/2-A177881(2*n)`
-/

namespace A015577.P4319874651977228842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 (2 * n) : ℚ) / 2 - (A177881 (2 * n) : ℚ)

end

end A015577.P4319874651977228842

namespace A015577

/-- `A003462(2*n)/2-A177881(2*n)` -/
def P4319874651977228842.Spec : Prop :=
  ∀ n, P4319874651977228842.a n = (A015577 n : ℚ)

end A015577

/-! ## A015577.P4992162574669272614

`A177881(2*n+1)+A177881(2*n)-A003462(2*n)`
-/

namespace A015577.P4992162574669272614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177881 (2 * n + 1) + (A177881 (2 * n) - A003462 (2 * n))

end

end A015577.P4992162574669272614

namespace A015577

/-- `A177881(2*n+1)+A177881(2*n)-A003462(2*n)` -/
def P4992162574669272614.Spec : Prop :=
  ∀ n, P4992162574669272614.a n = A015577 n

end A015577

/-! ## A015577.P1275902376143498647

`floor(A103460(n)/10)`
-/

namespace A015577.P1275902376143498647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103460 n : ℚ) / 10⌋

end

end A015577.P1275902376143498647

namespace A015577

/-- `floor(A103460(n)/10)` -/
def P1275902376143498647.Spec : Prop :=
  ∀ n, P1275902376143498647.a n = A015577 n

end A015577

/-! ## A015577.P547082426013083710

`floor(A253212(n)/10)`
-/

namespace A015577.P547082426013083710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A253212 n : ℚ) / 10⌋

end

end A015577.P547082426013083710

namespace A015577

/-- `floor(A253212(n)/10)` -/
def P547082426013083710.Spec : Prop :=
  ∀ n, P547082426013083710.a n = A015577 n

end A015577

/-! ## A015577.P5622092304776440350

`ceil(A024101(n)/10)`
-/

namespace A015577.P5622092304776440350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024101 n : ℚ) / 10⌉

end

end A015577.P5622092304776440350

namespace A015577

/-- `ceil(A024101(n)/10)` -/
def P5622092304776440350.Spec : Prop :=
  ∀ n, P5622092304776440350.a n = A015577 n

end A015577

/-! ## A015577.P4460204462126776140

`ceil(A168613(2*n)/10)`
-/

namespace A015577.P4460204462126776140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168613 (2 * n) : ℚ) / 10⌉

end

end A015577.P4460204462126776140

namespace A015577

/-- `ceil(A168613(2*n)/10)` -/
def P4460204462126776140.Spec : Prop :=
  ∀ n, P4460204462126776140.a n = A015577 n

end A015577

/-!
# A015578: Expansion of x/(1 - 8*x - 11*x^2).

The programs for A015578, the canonical program `A015578.P9699488644248389068` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015578 has offset 0).

The definition of A015578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015578.P9699488644248389068

`8*a(n-1)+11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015578

/-- `8*a(n-1)+11*a(n-2)` -/
def P9699488644248389068.Spec : Prop :=
  ∀ n, (P9699488644248389068.a n : ℤ) = A015578 n

theorem P9699488644248389068.correct : P9699488644248389068.Spec := by
  intro n
  simp only [A015578]

end A015578

/-!
# A015579: Expansion of g.f. x/(1 - 9*x - 2*x^2).

The programs for A015579, the canonical program `A015579.P6240947633906993146` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015579 has offset 0).

The definition of A015579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015579.P6240947633906993146

`9*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015579

/-- `9*a(n-1)+2*a(n-2)` -/
def P6240947633906993146.Spec : Prop :=
  ∀ n, (P6240947633906993146.a n : ℤ) = A015579 n

theorem P6240947633906993146.correct : P6240947633906993146.Spec := by
  intro n
  simp only [A015579]

end A015579

/-! ## A015579.P5093007389425670858

`A078513(4*n)/4`
-/

namespace A015579.P5093007389425670858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078513 (4 * n) : ℚ) / 4

end

end A015579.P5093007389425670858

namespace A015579

/-- `A078513(4*n)/4` -/
def P5093007389425670858.Spec : Prop :=
  ∀ n, P5093007389425670858.a n = (A015579 n : ℚ)

end A015579

/-! ## A015579.P931186197469692938

`A287829(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015579.P931186197469692938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A287829 (n - 1) - a (n - 1)

end

end A015579.P931186197469692938

namespace A015579

/-- `A287829(n-1)-a(n-1)` -/
def P931186197469692938.Spec : Prop :=
  ∀ n, P931186197469692938.a n = A015579 n

end A015579

/-! ## A015579.P11689508158640197131

`record[Δ[A078513(A053438(n))]]`
-/

namespace A015579.P11689508158640197131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078513 (A053438 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015579.P11689508158640197131

namespace A015579

/-- `record[Δ[A078513(A053438(n))]]` -/
def P11689508158640197131.Spec : Prop :=
  ∀ n, P11689508158640197131.a n = A015579 n

end A015579

/-!
# A015580: Expansion of x/(1 - 9*x - 4*x^2).

The programs for A015580, the canonical program `A015580.P17098446434477248323` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015580 has offset 0).

The definition of A015580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015580.P17098446434477248323

`9*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015580

/-- `9*a(n-1)+4*a(n-2)` -/
def P17098446434477248323.Spec : Prop :=
  ∀ n, (P17098446434477248323.a n : ℤ) = A015580 n

theorem P17098446434477248323.correct : P17098446434477248323.Spec := by
  intro n
  simp only [A015580]

end A015580

/-!
# A015581: a(n) = 9*a(n-1) + 5*a(n-2).

The programs for A015581, the canonical program `A015581.P8753797020895788394` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015581 has offset 0).

The definition of A015581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+5*a(n-2)` (program `A015581.P8753797020895788394`, by `A015581.P8753797020895788394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015581.P8753797020895788394

`9*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015581

/-- `9*a(n-1)+5*a(n-2)` -/
def P8753797020895788394.Spec : Prop :=
  ∀ n, (P8753797020895788394.a n : ℤ) = A015581 n

theorem P8753797020895788394.correct : P8753797020895788394.Spec := by
  intro n
  simp only [A015581]

end A015581

/-!
# A015582: Inverse of 1573rd cyclotomic polynomial.

The programs for A015582, the canonical program `A015582.P1684706054651665928` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015582 has offset 0).

The definition of A015582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015582.P2332551323113114570

`A159075(A339321(n+1))^A257588(n)`
-/

namespace A015582.P2332551323113114570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159075 (A339321 (n + 1)).toNat : ℚ) ^ (A257588 n : ℤ)

end

end A015582.P2332551323113114570

namespace A015582

/-- `A159075(A339321(n+1))^A257588(n)` -/
def P2332551323113114570.Spec : Prop :=
  ∀ n, P2332551323113114570.a n = (A015582 n : ℚ)

end A015582

/-! ## A015582.P5180546488453369157

`C(A000122(A093353(n)), A257588(n))`
-/

namespace A015582.P5180546488453369157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000122 (A093353 n).toNat).toNat (A257588 n).toNat

end

end A015582.P5180546488453369157

namespace A015582

/-- `C(A000122(A093353(n)), A257588(n))` -/
def P5180546488453369157.Spec : Prop :=
  ∀ n, (P5180546488453369157.a n : ℤ) = A015582 n

end A015582

/-! ## A015582.P10164098544779365827

`C(A000122(A000217(n+1)), A257588(n))`
-/

namespace A015582.P10164098544779365827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000122 (A000217 (n + 1)).toNat).toNat (A257588 n).toNat

end

end A015582.P10164098544779365827

namespace A015582

/-- `C(A000122(A000217(n+1)), A257588(n))` -/
def P10164098544779365827.Spec : Prop :=
  ∀ n, (P10164098544779365827.a n : ℤ) = A015582 n

end A015582

/-! ## A015582.P14140618004530938584

`C(A000122(A069453(2*n+5)), A257588(n))`
-/

namespace A015582.P14140618004530938584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000122 (A069453 (2 * n + 5)).toNat).toNat (A257588 n).toNat

end

end A015582.P14140618004530938584

namespace A015582

/-- `C(A000122(A069453(2*n+5)), A257588(n))` -/
def P14140618004530938584.Spec : Prop :=
  ∀ n, (P14140618004530938584.a n : ℤ) = A015582 n

end A015582

/-! ## A015582.P10455530164930083753

`A000122(A000217(n+16))^A257588(n)`
-/

namespace A015582.P10455530164930083753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (A000217 (n + 16)).toNat : ℚ) ^ (A257588 n : ℤ)

end

end A015582.P10455530164930083753

namespace A015582

/-- `A000122(A000217(n+16))^A257588(n)` -/
def P10455530164930083753.Spec : Prop :=
  ∀ n, P10455530164930083753.a n = (A015582 n : ℚ)

end A015582

/-! ## A015582.P7603989713494590784

`A145568(A074296(n+1))-A145568(n)`
-/

namespace A015582.P7603989713494590784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 (A074296 (n + 1)).toNat - A145568 n

end

end A015582.P7603989713494590784

namespace A015582

/-- `A145568(A074296(n+1))-A145568(n)` -/
def P7603989713494590784.Spec : Prop :=
  ∀ n, P7603989713494590784.a n = A015582 n

end A015582

/-! ## A015582.P1684706054651665928

`A000007(A145479(n+1)*A145568(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A015582

/-- `A000007(A145479(n+1)*A145568(n))` -/
def P1684706054651665928.Spec : Prop :=
  ∀ n, P1684706054651665928.a n = A015582 n

theorem P1684706054651665928.correct : P1684706054651665928.Spec := by
  intro n
  simp only [A015582]

end A015582

/-! ## A015582.P453025494011280085

`A010054(lcm(A055017(n), A255300(n)))`
-/

namespace A015582.P453025494011280085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.lcm (A055017 n) (A255300 n))

end

end A015582.P453025494011280085

namespace A015582

/-- `A010054(lcm(A055017(n), A255300(n)))` -/
def P453025494011280085.Spec : Prop :=
  ∀ n, P453025494011280085.a n = A015582 n

end A015582

/-! ## A015582.P5959229214159698346

`A121373(A006489(n+1))^A010880(n)`
-/

namespace A015582.P5959229214159698346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (A006489 (n + 1)).toNat : ℚ) ^ (A010880 n : ℤ)

end

end A015582.P5959229214159698346

namespace A015582

/-- `A121373(A006489(n+1))^A010880(n)` -/
def P5959229214159698346.Spec : Prop :=
  ∀ n, P5959229214159698346.a n = (A015582 n : ℚ)

end A015582

/-! ## A015582.P1352561355357344765

`A275425(n)%A109014(n)`
-/

namespace A015582.P1352561355357344765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275425 n) (A109014 n)

end

end A015582.P1352561355357344765

namespace A015582

/-- `A275425(n)%A109014(n)` -/
def P1352561355357344765.Spec : Prop :=
  ∀ n, P1352561355357344765.a n = A015582 n

end A015582

/-! ## A015582.P15697136682422035303

`A109014(A001359(2*(n+1)))%A109014(n)`
-/

namespace A015582.P15697136682422035303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109014 (A001359 (2 * (n + 1))).toNat) (A109014 n)

end

end A015582.P15697136682422035303

namespace A015582

/-- `A109014(A001359(2*(n+1)))%A109014(n)` -/
def P15697136682422035303.Spec : Prop :=
  ∀ n, P15697136682422035303.a n = A015582 n

end A015582

/-! ## A015582.P5795255034360080922

`A143573(n)%A109014(n)`
-/

namespace A015582.P5795255034360080922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143573 n) (A109014 n)

end

end A015582.P5795255034360080922

namespace A015582

/-- `A143573(n)%A109014(n)` -/
def P5795255034360080922.Spec : Prop :=
  ∀ n, P5795255034360080922.a n = A015582 n

end A015582

/-!
# A015583: a(0) = 0, a(1) = 1; for n >= 2, a(n) = 9*a(n-1) + 7*a(n-2).

The programs for A015583, the canonical program `A015583.P11873868432056377095` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015583 has offset 0).

The definition of A015583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+7*a(n-2)` (program `A015583.P11873868432056377095`, by `A015583.P11873868432056377095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015583.P11873868432056377095

`9*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015583

/-- `9*a(n-1)+7*a(n-2)` -/
def P11873868432056377095.Spec : Prop :=
  ∀ n, (P11873868432056377095.a n : ℤ) = A015583 n

theorem P11873868432056377095.correct : P11873868432056377095.Spec := by
  intro n
  simp only [A015583]

end A015583

/-!
# A015584: Expansion of g.f. x/(1 - 9*x - 8*x^2).

The programs for A015584, the canonical program `A015584.P17571984014822286328` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015584 has offset 0).

The definition of A015584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015584.P17571984014822286328

`9*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015584

/-- `9*a(n-1)+8*a(n-2)` -/
def P17571984014822286328.Spec : Prop :=
  ∀ n, (P17571984014822286328.a n : ℤ) = A015584 n

theorem P17571984014822286328.correct : P17571984014822286328.Spec := by
  intro n
  simp only [A015584]

end A015584

/-! ## A015584.P15844052411882694463

`lcm(9, a(n-1)+a(n-2))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A015584.P15844052411882694463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.lcm 9 (a (n - 1) + a (n - 2)) : ℤ) - a (n - 2)

end

end A015584.P15844052411882694463

namespace A015584

/-- `lcm(9, a(n-1)+a(n-2))-a(n-2)` -/
def P15844052411882694463.Spec : Prop :=
  ∀ n, P15844052411882694463.a n = A015584 n

end A015584

/-!
# A015585: a(n) = 9*a(n-1) + 10*a(n-2).

The programs for A015585, the canonical program `A015585.P5435486550445830437` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015585 has offset 0).

The definition of A015585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+10*a(n-2)` (program `A015585.P5435486550445830437`, by `A015585.P5435486550445830437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015585.P8848887990474970913

`10^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015585.P8848887990474970913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A015585.P8848887990474970913

namespace A015585

/-- `10^(n-1)-a(n-1)` -/
def P8848887990474970913.Spec : Prop :=
  ∀ n, P8848887990474970913.a n = (A015585 n : ℚ)

end A015585

/-! ## A015585.P5435486550445830437

`9*a(n-1)+10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015585

/-- `9*a(n-1)+10*a(n-2)` -/
def P5435486550445830437.Spec : Prop :=
  ∀ n, (P5435486550445830437.a n : ℤ) = A015585 n

theorem P5435486550445830437.correct : P5435486550445830437.Spec := by
  intro n
  simp only [A015585]

end A015585

/-! ## A015585.P14842665201961193147

`round(10^n/11)`
-/

namespace A015585.P14842665201961193147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 ^ n : ℚ) / 11)

end

end A015585.P14842665201961193147

namespace A015585

/-- `round(10^n/11)` -/
def P14842665201961193147.Spec : Prop :=
  ∀ n, P14842665201961193147.a n = A015585 n

end A015585

/-! ## A015585.P5095713090272125279

`A098611(n)/11`
-/

namespace A015585.P5095713090272125279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098611 n : ℚ) / 11

end

end A015585.P5095713090272125279

namespace A015585

/-- `A098611(n)/11` -/
def P5095713090272125279.Spec : Prop :=
  ∀ n, P5095713090272125279.a n = (A015585 n : ℚ)

end A015585

/-! ## A015585.P13746640915213014496

`floor(A178501(n)-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A015585.P13746640915213014496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A178501 n - a (n - 1)

end

end A015585.P13746640915213014496

namespace A015585

/-- `floor(A178501(n)-a(n-1))` -/
def P13746640915213014496.Spec : Prop :=
  ∀ n, P13746640915213014496.a n = A015585 n

end A015585

/-! ## A015585.P4088566717401217793

`A062157(n)+10*a(n-1)` with `a(0)=0`
-/

namespace A015585.P4088566717401217793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A062157 n + 10 * a (n - 1)

end

end A015585.P4088566717401217793

namespace A015585

/-- `A062157(n)+10*a(n-1)` -/
def P4088566717401217793.Spec : Prop :=
  ∀ n, P4088566717401217793.a n = A015585 n

end A015585

/-! ## A015585.P15139621707550391148

`A165326(n)+10*a(n-1)` with `a(0)=0`
-/

namespace A015585.P15139621707550391148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165326 n + 10 * a (n - 1)

end

end A015585.P15139621707550391148

namespace A015585

/-- `A165326(n)+10*a(n-1)` -/
def P15139621707550391148.Spec : Prop :=
  ∀ n, P15139621707550391148.a n = A015585 n

end A015585

/-! ## A015585.P15882117511164028947

`10*a(n-1)-A033999(n)` with `a(0)=0, a(1)=1`
-/

namespace A015585.P15882117511164028947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  10 * a (n - 1) - A033999 n

end

end A015585.P15882117511164028947

namespace A015585

/-- `10*a(n-1)-A033999(n)` -/
def P15882117511164028947.Spec : Prop :=
  ∀ n, P15882117511164028947.a n = A015585 n

end A015585

/-! ## A015585.P13514719216885990268

`10*a(n-1)-A009001(2*n)` with `a(0)=0`
-/

namespace A015585.P13514719216885990268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) - A009001 (2 * n)

end

end A015585.P13514719216885990268

namespace A015585

/-- `10*a(n-1)-A009001(2*n)` -/
def P13514719216885990268.Spec : Prop :=
  ∀ n, P13514719216885990268.a n = A015585 n

end A015585

/-! ## A015585.P4278877857784451162

`10*a(n-1)-A004442(n)+n` with `a(0)=0`
-/

namespace A015585.P4278877857784451162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) - A004442 n + (n : ℤ)

end

end A015585.P4278877857784451162

namespace A015585

/-- `10*a(n-1)-A004442(n)+n` -/
def P4278877857784451162.Spec : Prop :=
  ∀ n, P4278877857784451162.a n = A015585 n

end A015585

/-! ## A015585.P12884921331536596699

`∑[A165326(n)*A178501(n)]*A165326(n)`
-/

namespace A015585.P12884921331536596699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A165326 n

end

end A015585.P12884921331536596699

namespace A015585

/-- `∑[A165326(n)*A178501(n)]*A165326(n)` -/
def P12884921331536596699.Spec : Prop :=
  ∀ n, P12884921331536596699.a n = A015585 n

end A015585

/-! ## A015585.P10930846793414089989

`floor(A000533(n)/11)`
-/

namespace A015585.P10930846793414089989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000533 n : ℚ) / 11⌋

end

end A015585.P10930846793414089989

namespace A015585

/-- `floor(A000533(n)/11)` -/
def P10930846793414089989.Spec : Prop :=
  ∀ n, P10930846793414089989.a n = A015585 n

end A015585

/-! ## A015585.P15272017638161874176

`ceil(A002283(n)/11)`
-/

namespace A015585.P15272017638161874176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002283 n : ℚ) / 11⌉

end

end A015585.P15272017638161874176

namespace A015585

/-- `ceil(A002283(n)/11)` -/
def P15272017638161874176.Spec : Prop :=
  ∀ n, P15272017638161874176.a n = A015585 n

end A015585

/-! ## A015585.P5602961588870989791

`record[Δ[A056830(A056847(n))]]`
-/

namespace A015585.P5602961588870989791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (A056847 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015585.P5602961588870989791

namespace A015585

/-- `record[Δ[A056830(A056847(n))]]` -/
def P5602961588870989791.Spec : Prop :=
  ∀ n, P5602961588870989791.a n = A015585 n

end A015585

/-! ## A015585.P5402201412279316609

`2*A056830(n)-A002275(n)`
-/

namespace A015585.P5402201412279316609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056830 n - A002275 n

end

end A015585.P5402201412279316609

namespace A015585

/-- `2*A056830(n)-A002275(n)` -/
def P5402201412279316609.Spec : Prop :=
  ∀ n, P5402201412279316609.a n = A015585 n

end A015585

/-! ## A015585.P5053153432977670676

`A056830(n)-A056830(A289207(n+1))`
-/

namespace A015585.P5053153432977670676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n - A056830 (A289207 (n + 1)).toNat

end

end A015585.P5053153432977670676

namespace A015585

/-- `A056830(n)-A056830(A289207(n+1))` -/
def P5053153432977670676.Spec : Prop :=
  ∀ n, P5053153432977670676.a n = A015585 n

end A015585

/-! ## A015585.P7152455322180793709

`A056830(n)-A056830(A004273(n)-n)`
-/

namespace A015585.P7152455322180793709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n - A056830 (A004273 n - (n : ℤ)).toNat

end

end A015585.P7152455322180793709

namespace A015585

/-- `A056830(n)-A056830(A004273(n)-n)` -/
def P7152455322180793709.Spec : Prop :=
  ∀ n, P7152455322180793709.a n = A015585 n

end A015585

/-! ## A015585.P10565896117723662616

`A011557(n)-Δ[A056830(n)]`
-/

namespace A015585.P10565896117723662616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - (f1 (n + 1) - f1 n)

end

end A015585.P10565896117723662616

namespace A015585

/-- `A011557(n)-Δ[A056830(n)]` -/
def P10565896117723662616.Spec : Prop :=
  ∀ n, P10565896117723662616.a n = A015585 n

end A015585

/-!
# A015586: Inverse of 1577th cyclotomic polynomial.

The programs for A015586, there is no canonical definition to state claims against.
-/

/-! ## A015586.P12709301301718520458

`floor((4-A217693(n+5))/2)`
-/

namespace A015586.P12709301301718520458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 - A217693 (n + 5) : ℚ) / 2⌋

end

end A015586.P12709301301718520458

/-! ## A015586.P12680803351332393943

`C(2, A153880(A017881(n)))`
-/

namespace A015586.P12680803351332393943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A153880 (A017881 n).toNat).toNat

end

end A015586.P12680803351332393943

/-! ## A015586.P9270223738125083227

`C(2, A326461(A179239(n)))`
-/

namespace A015586.P9270223738125083227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326461 (A179239 n).toNat).toNat

end

end A015586.P9270223738125083227

/-! ## A015586.P10184888106452179173

`∏{p}[A017883(n), A353557(#)]`
-/

namespace A015586.P10184888106452179173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A353557 p

end

end A015586.P10184888106452179173

/-! ## A015586.P806867920560300297

`A000007(2*A326684(n+1))`
-/

namespace A015586.P806867920560300297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * A326684 (n + 1)).toNat

end

end A015586.P806867920560300297

/-! ## A015586.P13478701669797266081

`A212627(A053738(n+3)-n)`
-/

namespace A015586.P13478701669797266081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212627 (A053738 (n + 3) - (n : ℤ)).toNat

end

end A015586.P13478701669797266081

/-! ## A015586.P14385465998694397578

`A345907(A053738(n+3)-n)`
-/

namespace A015586.P14385465998694397578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345907 (A053738 (n + 3) - (n : ℤ)).toNat

end

end A015586.P14385465998694397578

/-! ## A015586.P15022066821924588090

`A000035(∑[A295883(n+5)]!)`
-/

namespace A015586.P15022066821924588090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A015586.P15022066821924588090

/-! ## A015586.P13890830888624115516

`A010054(∑[A065344(3*n+5)])`
-/

namespace A015586.P13890830888624115516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065344 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015586.P13890830888624115516

/-! ## A015586.P9210535166691399688

`C(A329314(n+4), A017883(n)²)`
-/

namespace A015586.P9210535166691399688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329314 (n + 4)).toNat (A017883 n ^ 2).toNat

end

end A015586.P9210535166691399688

/-!
# A015587: Expansion of x/(1 - 9*x - 11*x^2).

The programs for A015587, the canonical program `A015587.P12776925413502712463` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015587 has offset 0).

The definition of A015587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015587.P12776925413502712463

`9*a(n-1)+11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015587

/-- `9*a(n-1)+11*a(n-2)` -/
def P12776925413502712463.Spec : Prop :=
  ∀ n, (P12776925413502712463.a n : ℤ) = A015587 n

theorem P12776925413502712463.correct : P12776925413502712463.Spec := by
  intro n
  simp only [A015587]

end A015587

/-!
# A015588: Expansion of x/(1 - 10*x - 3*x^2).

The programs for A015588, the canonical program `A015588.P7088694957723141693` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015588 has offset 0).

The definition of A015588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015588.P7088694957723141693

`10*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015588

/-- `10*a(n-1)+3*a(n-2)` -/
def P7088694957723141693.Spec : Prop :=
  ∀ n, (P7088694957723141693.a n : ℤ) = A015588 n

theorem P7088694957723141693.correct : P7088694957723141693.Spec := by
  intro n
  simp only [A015588]

end A015588

/-!
# A015589: Expansion of x/(1 - 10*x - 7*x^2).

The programs for A015589, the canonical program `A015589.P11467775146274803022` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015589 has offset 0).

The definition of A015589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015589.P11467775146274803022

`10*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015589

/-- `10*a(n-1)+7*a(n-2)` -/
def P11467775146274803022.Spec : Prop :=
  ∀ n, (P11467775146274803022.a n : ℤ) = A015589 n

theorem P11467775146274803022.correct : P11467775146274803022.Spec := by
  intro n
  simp only [A015589]

end A015589

/-! ## A015589.P3163230677679317952

`A287839(n-1)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A015589.P3163230677679317952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A287839 (n - 1) - a (n - 1)

end

end A015589.P3163230677679317952

namespace A015589

/-- `A287839(n-1)-a(n-1)` -/
def P3163230677679317952.Spec : Prop :=
  ∀ n, P3163230677679317952.a n = A015589 n

end A015589

/-! ## A015589.P2842425936004086277

`(∑[A157765(n)]-A157765(n))/2`
-/

namespace A015589.P2842425936004086277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157765 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A157765 n : ℤ) : ℚ) / 2

end

end A015589.P2842425936004086277

namespace A015589

/-- `(∑[A157765(n)]-A157765(n))/2` -/
def P2842425936004086277.Spec : Prop :=
  ∀ n, P2842425936004086277.a n = (A015589 n : ℚ)

end A015589

/-!
# A015590: Inverse of 1581st cyclotomic polynomial.

The programs for A015590, there is no canonical definition to state claims against.
-/

/-! ## A015590.P4776641154474630673

`A011649(n)*A016303(n)`
-/

namespace A015590.P4776641154474630673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011649 n * A016303 n

end

end A015590.P4776641154474630673

/-! ## A015590.P5407888142304924072

`A015896(n)%A322348(n)`
-/

namespace A015590.P5407888142304924072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015896 n) (A322348 n)

end

end A015590.P5407888142304924072

/-! ## A015590.P10408316723621105458

`A016100(n)%A322348(n)`
-/

namespace A015590.P10408316723621105458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016100 n) (A322348 n)

end

end A015590.P10408316723621105458

/-! ## A015590.P953163676832396369

`A016202(n)%A322348(n)`
-/

namespace A015590.P953163676832396369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016202 n) (A322348 n)

end

end A015590.P953163676832396369

/-! ## A015590.P262772277806954839

`A011646(A246303(n+1))`
-/

namespace A015590.P262772277806954839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (A246303 (n + 1)).toNat

end

end A015590.P262772277806954839

/-!
# A015591: Expansion of x/(1 - 10*x - 9*x^2).

The programs for A015591, the canonical program `A015591.P7735483377688524727` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015591 has offset 0).

The definition of A015591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015591.P7735483377688524727

`10*a(n-1)+9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015591

/-- `10*a(n-1)+9*a(n-2)` -/
def P7735483377688524727.Spec : Prop :=
  ∀ n, (P7735483377688524727.a n : ℤ) = A015591 n

theorem P7735483377688524727.correct : P7735483377688524727.Spec := by
  intro n
  simp only [A015591]

end A015591

/-! ## A015591.P8879157064090700659

`a(n-1)+lcm(9, a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A015591.P8879157064090700659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.lcm 9 (a (n - 1) + a (n - 2))

end

end A015591.P8879157064090700659

namespace A015591

/-- `a(n-1)+lcm(9, a(n-1)+a(n-2))` -/
def P8879157064090700659.Spec : Prop :=
  ∀ n, (P8879157064090700659.a n : ℤ) = A015591 n

end A015591

/-! ## A015591.P17370649184816443452

`1/68*sqrt(34)*((5+sqrt(34))^n-(5-sqrt(34))^n)`
-/

namespace A015591.P17370649184816443452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 68 : ℝ) * Real.sqrt (34 : ℝ) * ((5 + Real.sqrt (34 : ℝ)) ^ n - (5 - Real.sqrt (34 : ℝ)) ^ n)

end

end A015591.P17370649184816443452

namespace A015591

/-- `1/68*sqrt(34)*((5+sqrt(34))^n-(5-sqrt(34))^n)` -/
def P17370649184816443452.Spec : Prop :=
  ∀ n, P17370649184816443452.a n = (A015591 n : ℝ)

end A015591

/-!
# A015592: a(n) = 10*a(n-1) + 11*a(n-2).

The programs for A015592, the canonical program `A015592.P9452006266625796407` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015592 has offset 0).

The definition of A015592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+11*a(n-2)` (program `A015592.P9452006266625796407`, by `A015592.P9452006266625796407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015592.P1248758890504221963

`11^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015592.P1248758890504221963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (11 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A015592.P1248758890504221963

namespace A015592

/-- `11^(n-1)-a(n-1)` -/
def P1248758890504221963.Spec : Prop :=
  ∀ n, P1248758890504221963.a n = (A015592 n : ℚ)

end A015592

/-! ## A015592.P9452006266625796407

`10*a(n-1)+11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015592

/-- `10*a(n-1)+11*a(n-2)` -/
def P9452006266625796407.Spec : Prop :=
  ∀ n, (P9452006266625796407.a n : ℤ) = A015592 n

theorem P9452006266625796407.correct : P9452006266625796407.Spec := by
  intro n
  simp only [A015592]

end A015592

/-! ## A015592.P16220986098738253884

`(11^n-(-1)^n)/12`
-/

namespace A015592.P16220986098738253884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ n : ℤ) - (-1) ^ n : ℚ) / 12

end

end A015592.P16220986098738253884

namespace A015592

/-- `(11^n-(-1)^n)/12` -/
def P16220986098738253884.Spec : Prop :=
  ∀ n, P16220986098738253884.a n = (A015592 n : ℚ)

theorem P16220986098738253884.correct : P16220986098738253884.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A015592, Nat.add_sub_cancel, A015592.P16220986098738253884.a, A015592.P9452006266625796407.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A015592, Nat.add_sub_cancel, A015592.P16220986098738253884.a, A015592.P9452006266625796407.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015592

/-! ## A015592.P6555296303144946875

`xor(1, 11*a(n-1))` with `a(0)=0`
-/

namespace A015592.P6555296303144946875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (11 * a (n - 1))

end

end A015592.P6555296303144946875

namespace A015592

/-- `xor(1, 11*a(n-1))` -/
def P6555296303144946875.Spec : Prop :=
  ∀ n, (P6555296303144946875.a n : ℤ) = A015592 n

end A015592

/-! ## A015592.P14168349521191691298

`11*a(n-1)-A033999(n)` with `a(0)=0`
-/

namespace A015592.P14168349521191691298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  11 * a (n - 1) - A033999 n

end

end A015592.P14168349521191691298

namespace A015592

/-- `11*a(n-1)-A033999(n)` -/
def P14168349521191691298.Spec : Prop :=
  ∀ n, P14168349521191691298.a n = A015592 n

end A015592

/-! ## A015592.P6897376678998415598

`A165326(n)+lcm(11, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A015592.P6897376678998415598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A165326 n + (Int.lcm 11 (a (n - 1)) : ℤ)

end

end A015592.P6897376678998415598

namespace A015592

/-- `A165326(n)+lcm(11, a(n-1))` -/
def P6897376678998415598.Spec : Prop :=
  ∀ n, P6897376678998415598.a n = A015592 n

end A015592

/-! ## A015592.P17759592545211882378

`floor(A034524(n)/12)`
-/

namespace A015592.P17759592545211882378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034524 n : ℚ) / 12⌋

end

end A015592.P17759592545211882378

namespace A015592

/-- `floor(A034524(n)/12)` -/
def P17759592545211882378.Spec : Prop :=
  ∀ n, P17759592545211882378.a n = A015592 n

end A015592

/-!
# A015593: a(n) = 11*a(n-1) + 2*a(n-2).

The programs for A015593, the canonical program `A015593.P1716610780317855405` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015593 has offset 0).

The definition of A015593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+2*a(n-2)` (program `A015593.P1716610780317855405`, by `A015593.P1716610780317855405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015593.P1716610780317855405

`11*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015593

/-- `11*a(n-1)+2*a(n-2)` -/
def P1716610780317855405.Spec : Prop :=
  ∀ n, (P1716610780317855405.a n : ℤ) = A015593 n

theorem P1716610780317855405.correct : P1716610780317855405.Spec := by
  intro n
  simp only [A015593]

end A015593

/-! ## A015593.P6180340592679906296

`A005843(a(n-2))+11*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A015593.P6180340592679906296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A005843 (a (n - 2)).toNat + 11 * a (n - 1)

end

end A015593.P6180340592679906296

namespace A015593

/-- `A005843(a(n-2))+11*a(n-1)` -/
def P6180340592679906296.Spec : Prop :=
  ∀ n, P6180340592679906296.a n = A015593 n

end A015593

/-!
# A015594: a(n) = 11*a(n-1) + 3*a(n-2).

The programs for A015594, the canonical program `A015594.P7827338635488762619` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015594 has offset 0).

The definition of A015594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+3*a(n-2)` (program `A015594.P7827338635488762619`, by `A015594.P7827338635488762619.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015594.P7827338635488762619

`11*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015594

/-- `11*a(n-1)+3*a(n-2)` -/
def P7827338635488762619.Spec : Prop :=
  ∀ n, (P7827338635488762619.a n : ℤ) = A015594 n

theorem P7827338635488762619.correct : P7827338635488762619.Spec := by
  intro n
  simp only [A015594]

end A015594

/-!
# A015595: Inverse of 1586th cyclotomic polynomial.

The programs for A015595, there is no canonical definition to state claims against.
-/

/-! ## A015595.P16301452209186933292

`(A004442(n)-n)*A014802(n)`
-/

namespace A015595.P16301452209186933292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A014802 n

end

end A015595.P16301452209186933292

/-! ## A015595.P17043609141959956458

`A000035(A112815(3*n+2))-A000035(n)`
-/

namespace A015595.P17043609141959956458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A112815 (3 * n + 2)).toNat - A000035 n

end

end A015595.P17043609141959956458

/-! ## A015595.P13729701745613597660

`A000034(A033029(n+3))-A000034(n)`
-/

namespace A015595.P13729701745613597660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A033029 (n + 3)).toNat - A000034 n

end

end A015595.P13729701745613597660

/-! ## A015595.P15247393813026224585

`A000035(A033029(n+3))-A000035(n)`
-/

namespace A015595.P15247393813026224585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A033029 (n + 3)).toNat - A000035 n

end

end A015595.P15247393813026224585

/-!
# A015596: a(n) = 11 a(n-1) + 4 a(n-2).

The programs for A015596, the canonical program `A015596.P6522849839831145461` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015596 has offset 0).

The definition of A015596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+4*a(n-2)` (program `A015596.P6522849839831145461`, by `A015596.P6522849839831145461.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015596.P6522849839831145461

`11*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015596

/-- `11*a(n-1)+4*a(n-2)` -/
def P6522849839831145461.Spec : Prop :=
  ∀ n, (P6522849839831145461.a n : ℤ) = A015596 n

theorem P6522849839831145461.correct : P6522849839831145461.Spec := by
  intro n
  simp only [A015596]

end A015596

/-!
# A015597: a(n) = 11 a(n-1) + 5 a(n-2).

The programs for A015597, the canonical program `A015597.P13304509616455565093` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015597 has offset 0).

The definition of A015597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+5*a(n-2)` (program `A015597.P13304509616455565093`, by `A015597.P13304509616455565093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015597.P13304509616455565093

`11*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015597

/-- `11*a(n-1)+5*a(n-2)` -/
def P13304509616455565093.Spec : Prop :=
  ∀ n, (P13304509616455565093.a n : ℤ) = A015597 n

theorem P13304509616455565093.correct : P13304509616455565093.Spec := by
  intro n
  simp only [A015597]

end A015597

/-!
# A015598: a(n) = 11*a(n-1) + 6*a(n-2).

The programs for A015598, the canonical program `A015598.P2596052456674117150` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015598 has offset 0).

The definition of A015598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+6*a(n-2)` (program `A015598.P2596052456674117150`, by `A015598.P2596052456674117150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015598.P2596052456674117150

`11*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015598

/-- `11*a(n-1)+6*a(n-2)` -/
def P2596052456674117150.Spec : Prop :=
  ∀ n, (P2596052456674117150.a n : ℤ) = A015598 n

theorem P2596052456674117150.correct : P2596052456674117150.Spec := by
  intro n
  simp only [A015598]

end A015598

/-!
# A015599: Inverse of 1590th cyclotomic polynomial.

The programs for A015599, there is no canonical definition to state claims against.
-/

/-! ## A015599.P14454137768680992476

`A014560(A101198(n+1))*A014579(n)`
-/

namespace A015599.P14454137768680992476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 (A101198 (n + 1)).toNat * A014579 n

end

end A015599.P14454137768680992476

