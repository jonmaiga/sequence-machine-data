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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A004300: Number of symmetric irreducible diagrams with 2n nodes.

The programs for A004300, there is no canonical definition to state claims against.
-/

/-! ## A004300.P11956133470056902699

`A302538(A212416(n+1))+A142468(n)`
-/

namespace A004300.P11956133470056902699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302538 (A212416 (n + 1)).toNat + A142468 n

end

end A004300.P11956133470056902699

/-! ## A004300.P3117174467667824530

`A320536(6*A106228(n))-A219487(A000108(n))`
-/

namespace A004300.P3117174467667824530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (6 * A106228 n).toNat - A219487 (A000108 n).toNat

end

end A004300.P3117174467667824530

/-!
# A004301: Second-order Eulerian numbers <>.

The programs for A004301, the canonical program `A004301.P3156273819323077127` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004301 has offset 2).

The definition of A004301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004301.P3156273819323077127

`(9*3^(n+2)-(12+8*(n+2))*2^(n+2)+3+6*(n+2)+4*(n+2)²)/2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004301

/-- `(9*3^(n+2)-(12+8*(n+2))*2^(n+2)+3+6*(n+2)+4*(n+2)²)/2` -/
def P3156273819323077127.Spec : Prop :=
  ∀ n, P3156273819323077127.a n = (A004301 (n + 2) : ℚ)

end A004301

/-! ## A004301.P12414833183957060638

`A201637(∑[n+2]+3)`
-/

namespace A004301.P12414833183957060638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A004301.P12414833183957060638

namespace A004301

/-- `A201637(∑[n+2]+3)` -/
def P12414833183957060638.Spec : Prop :=
  ∀ n, P12414833183957060638.a n = A004301 (n + 2)

end A004301

/-! ## A004301.P16012547380169239951

`A340556(A167614(n+1))`
-/

namespace A004301.P16012547380169239951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (A167614 (n + 1)).toNat

end

end A004301.P16012547380169239951

namespace A004301

/-- `A340556(A167614(n+1))` -/
def P16012547380169239951.Spec : Prop :=
  ∀ n, P16012547380169239951.a n = A004301 (n + 2)

end A004301

/-! ## A004301.P12983466374745039036

`A001222(C(2, n+2)+3)*A201637(A046691(n)+6)`
-/

namespace A004301.P12983466374745039036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose 2 (n + 2) + 3) * A201637 (A046691 n + 6).toNat

end

end A004301.P12983466374745039036

namespace A004301

/-- `A001222(C(2, n+2)+3)*A201637(A046691(n)+6)` -/
def P12983466374745039036.Spec : Prop :=
  ∀ n, P12983466374745039036.a n = A004301 (n + 2)

end A004301

/-! ## A004301.P7311869121751347886

`A001222(A002146(n))*A201637(A046691(n)+6)`
-/

namespace A004301.P7311869121751347886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002146 n).toNat * A201637 (A046691 n + 6).toNat

end

end A004301.P7311869121751347886

namespace A004301

/-- `A001222(A002146(n))*A201637(A046691(n)+6)` -/
def P7311869121751347886.Spec : Prop :=
  ∀ n, P7311869121751347886.a n = A004301 (n + 2)

end A004301

/-! ## A004301.P5764842483664829968

`A163936(∑[n+3])`
-/

namespace A004301.P5764842483664829968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163936 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004301.P5764842483664829968

namespace A004301

/-- `A163936(∑[n+3])` -/
def P5764842483664829968.Spec : Prop :=
  ∀ n, P5764842483664829968.a n = A004301 (n + 2)

end A004301

/-! ## A004301.P3329747468978537376

`A288874(∑[n+3])`
-/

namespace A004301.P3329747468978537376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004301.P3329747468978537376

namespace A004301

/-- `A288874(∑[n+3])` -/
def P3329747468978537376.Spec : Prop :=
  ∀ n, P3329747468978537376.a n = A004301 (n + 2)

end A004301

/-! ## A004301.P14502286442814490859

`record[A288874(A055998(A134478(n)))]`
-/

namespace A004301.P14502286442814490859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A055998 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004301.P14502286442814490859

namespace A004301

/-- `record[A288874(A055998(A134478(n)))]` -/
def P14502286442814490859.Spec : Prop :=
  ∀ n, P14502286442814490859.a n = A004301 (n + 2)

end A004301

/-!
# A004302: a(n) = n^2*(n+1)^2*(n+2)/12.

The programs for A004302, the canonical program `A004302.P8108728009530160138` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004302 has offset 0).

The definition of A004302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004302.P8457390061378668647

`3*C(n+2, 3)²/(n+2)`
-/

namespace A004302.P8457390061378668647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 2) 3 ^ 2 : ℚ) / (n + 2 : ℚ)

end

end A004302.P8457390061378668647

namespace A004302

/-- `3*C(n+2, 3)²/(n+2)` -/
def P8457390061378668647.Spec : Prop :=
  ∀ n, P8457390061378668647.a n = (A004302 n : ℚ)

end A004302

/-! ## A004302.P18424866532362729346

`n²*(n+1)²*(n+2)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004302.P18424866532362729346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n + 1) ^ 2 * (n + 2) : ℚ) / 12

end

end A004302.P18424866532362729346

namespace A004302

/-- `n²*(n+1)²*(n+2)/12` -/
def P18424866532362729346.Spec : Prop :=
  ∀ n, P18424866532362729346.a n = (A004302 n : ℚ)

end A004302

/-! ## A004302.P8108728009530160138

`A000217(n)*A000292(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004302

/-- `A000217(n)*A000292(n)` -/
def P8108728009530160138.Spec : Prop :=
  ∀ n, P8108728009530160138.a n = A004302 n

theorem P8108728009530160138.correct : P8108728009530160138.Spec := by
  intro n
  simp only [A004302]

end A004302

/-! ## A004302.P14210829169532355005

`lcm(n, ∑[n]*∑[∑[n]])`
-/

namespace A004302.P14210829169532355005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A004302.P14210829169532355005

namespace A004302

/-- `lcm(n, ∑[n]*∑[∑[n]])` -/
def P14210829169532355005.Spec : Prop :=
  ∀ n, (P14210829169532355005.a n : ℤ) = A004302 n

end A004302

/-! ## A004302.P13464077349953813309

`floor(n/acot(∑[∑[n²]]))`
-/

namespace A004302.P13464077349953813309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A004302.P13464077349953813309

namespace A004302

/-- `floor(n/acot(∑[∑[n²]]))` -/
def P13464077349953813309.Spec : Prop :=
  ∀ n, P13464077349953813309.a n = A004302 n

end A004302

/-! ## A004302.P18161622457969767925

`round(n/acot(∑[∑[n²]]))`
-/

namespace A004302.P18161622457969767925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A004302.P18161622457969767925

namespace A004302

/-- `round(n/acot(∑[∑[n²]]))` -/
def P18161622457969767925.Spec : Prop :=
  ∀ n, P18161622457969767925.a n = A004302 n

end A004302

/-! ## A004302.P170557226179036045

`floor(∑[a(n-1)+n]*∑[n])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A004302.P170557226179036045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A004302.P170557226179036045

namespace A004302

/-- `floor(∑[a(n-1)+n]*∑[n])` -/
def P170557226179036045.Spec : Prop :=
  ∀ n, (P170557226179036045.a n : ℤ) = A004302 n

end A004302

/-! ## A004302.P11032784772539872211

`∑[A008911(n)+∑[n]²]`
-/

namespace A004302.P11032784772539872211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004302.P11032784772539872211

namespace A004302

/-- `∑[A008911(n)+∑[n]²]` -/
def P11032784772539872211.Spec : Prop :=
  ∀ n, P11032784772539872211.a n = A004302 n

end A004302

/-! ## A004302.P11306898620745007197

`∑{d}[n, A000217(n)*A117108(#)]`
-/

namespace A004302.P11306898620745007197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 n * A117108 d

end

end A004302.P11306898620745007197

namespace A004302

/-- `∑{d}[n, A000217(n)*A117108(#)]` -/
def P11306898620745007197.Spec : Prop :=
  ∀ n, P11306898620745007197.a n = A004302 n

end A004302

/-! ## A004302.P13487808566014728497

`∑[∑[A096000(n)]-A096000(n)]`
-/

namespace A004302.P13487808566014728497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A096000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004302.P13487808566014728497

namespace A004302

/-- `∑[∑[A096000(n)]-A096000(n)]` -/
def P13487808566014728497.Spec : Prop :=
  ∀ n, P13487808566014728497.a n = A004302 n

end A004302

/-!
# A004303: a(n) = binomial(2*n-2,n-1)/n - 2^(n-1) + n.

The programs for A004303, the canonical program `A004303.P12122712871923356050` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004303 has offset 1).

The definition of A004303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004303.P12122712871923356050

`C(2*(n+1)-2, n)/(n+1)-2^n+n+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004303

/-- `C(2*(n+1)-2, n)/(n+1)-2^n+n+1` -/
def P12122712871923356050.Spec : Prop :=
  ∀ n, P12122712871923356050.a n = (A004303 (n + 1) : ℚ)

end A004303

/-! ## A004303.P15645572742755480295

`A132807(n)-∑[2^n-1]`
-/

namespace A004303.P15645572742755480295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132807 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004303.P15645572742755480295

namespace A004303

/-- `A132807(n)-∑[2^n-1]` -/
def P15645572742755480295.Spec : Prop :=
  ∀ n, P15645572742755480295.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P1710266909649399103

`1-2^n+A000108(n)+n`
-/

namespace A004303.P1710266909649399103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 ^ n : ℤ) + (A000108 n + (n : ℤ))

end

end A004303.P1710266909649399103

namespace A004303

/-- `1-2^n+A000108(n)+n` -/
def P1710266909649399103.Spec : Prop :=
  ∀ n, P1710266909649399103.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P10236301502474096543

`A000108(n)-A000295(n)`
-/

namespace A004303.P10236301502474096543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A000295 n

end

end A004303.P10236301502474096543

namespace A004303

/-- `A000108(n)-A000295(n)` -/
def P10236301502474096543.Spec : Prop :=
  ∀ n, P10236301502474096543.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P4253812844151362583

`A289451(n)-A002662(n)`
-/

namespace A004303.P4253812844151362583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289451 n - A002662 n

end

end A004303.P4253812844151362583

namespace A004303

/-- `A289451(n)-A002662(n)` -/
def P4253812844151362583.Spec : Prop :=
  ∀ n, P4253812844151362583.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P8997142022733117513

`A246604(n)-A070313(n)`
-/

namespace A004303.P8997142022733117513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n - A070313 n

end

end A004303.P8997142022733117513

namespace A004303

/-- `A246604(n)-A070313(n)` -/
def P8997142022733117513.Spec : Prop :=
  ∀ n, P8997142022733117513.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P11128117009577234786

`A289652(n)-A356114(n)`
-/

namespace A004303.P11128117009577234786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289652 n - A356114 n

end

end A004303.P11128117009577234786

namespace A004303

/-- `A289652(n)-A356114(n)` -/
def P11128117009577234786.Spec : Prop :=
  ∀ n, P11128117009577234786.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P18076317287103866608

`A000108(n)-Δ[A002662(n)]`
-/

namespace A004303.P18076317287103866608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (f1 (n + 1) - f1 n)

end

end A004303.P18076317287103866608

namespace A004303

/-- `A000108(n)-Δ[A002662(n)]` -/
def P18076317287103866608.Spec : Prop :=
  ∀ n, P18076317287103866608.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P15431463044929503

`A000108(n)+1-A000325(n)`
-/

namespace A004303.P15431463044929503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (1 - A000325 n)

end

end A004303.P15431463044929503

namespace A004303

/-- `A000108(n)+1-A000325(n)` -/
def P15431463044929503.Spec : Prop :=
  ∀ n, P15431463044929503.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P2569610718484056710

`A141353(n)-A076878(n+1)`
-/

namespace A004303.P2569610718484056710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141353 n - A076878 (n + 1)

end

end A004303.P2569610718484056710

namespace A004303

/-- `A141353(n)-A076878(n+1)` -/
def P2569610718484056710.Spec : Prop :=
  ∀ n, P2569610718484056710.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P9431956944047649598

`A126120(2*n)-A000295(n)`
-/

namespace A004303.P9431956944047649598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - A000295 n

end

end A004303.P9431956944047649598

namespace A004303

/-- `A126120(2*n)-A000295(n)` -/
def P9431956944047649598.Spec : Prop :=
  ∀ n, P9431956944047649598.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P157698270326009753

`A208355(2*n)-A000295(n)`
-/

namespace A004303.P157698270326009753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) - A000295 n

end

end A004303.P157698270326009753

namespace A004303

/-- `A208355(2*n)-A000295(n)` -/
def P157698270326009753.Spec : Prop :=
  ∀ n, P157698270326009753.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P13819875369381099752

`A338726(n)-2*A000295(n)`
-/

namespace A004303.P13819875369381099752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338726 n - 2 * A000295 n

end

end A004303.P13819875369381099752

namespace A004303

/-- `A338726(n)-2*A000295(n)` -/
def P13819875369381099752.Spec : Prop :=
  ∀ n, P13819875369381099752.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P794258391252640792

`A000108(n)+n-A000225(n)`
-/

namespace A004303.P794258391252640792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ((n : ℤ) - A000225 n)

end

end A004303.P794258391252640792

namespace A004303

/-- `A000108(n)+n-A000225(n)` -/
def P794258391252640792.Spec : Prop :=
  ∀ n, P794258391252640792.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P32884671632965327

`A000108(n)+∑[1-A011782(n)]`
-/

namespace A004303.P32884671632965327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004303.P32884671632965327

namespace A004303

/-- `A000108(n)+∑[1-A011782(n)]` -/
def P32884671632965327.Spec : Prop :=
  ∀ n, P32884671632965327.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P11206838010418705609

`abs(A168491(n))+n-A000225(n)`
-/

namespace A004303.P11206838010418705609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| + ((n : ℤ) - A000225 n)

end

end A004303.P11206838010418705609

namespace A004303

/-- `abs(A168491(n))+n-A000225(n)` -/
def P11206838010418705609.Spec : Prop :=
  ∀ n, P11206838010418705609.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P3148061415949488881

`A000108(n)+n-∑[A131577(n)]`
-/

namespace A004303.P3148061415949488881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004303.P3148061415949488881

namespace A004303

/-- `A000108(n)+n-∑[A131577(n)]` -/
def P3148061415949488881.Spec : Prop :=
  ∀ n, P3148061415949488881.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P4139330173038510639

`A097331(2*n+1)-A000295(n)`
-/

namespace A004303.P4139330173038510639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) - A000295 n

end

end A004303.P4139330173038510639

namespace A004303

/-- `A097331(2*n+1)-A000295(n)` -/
def P4139330173038510639.Spec : Prop :=
  ∀ n, P4139330173038510639.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P4063601648226909480

`A000108(n)+1-A000079(n)+n`
-/

namespace A004303.P4063601648226909480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (1 - A000079 n + (n : ℤ))

end

end A004303.P4063601648226909480

namespace A004303

/-- `A000108(n)+1-A000079(n)+n` -/
def P4063601648226909480.Spec : Prop :=
  ∀ n, P4063601648226909480.a n = A004303 (n + 1)

end A004303

/-! ## A004303.P13143805313407253363

`A000108(n)+2-A000051(n)+n`
-/

namespace A004303.P13143805313407253363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (2 - A000051 n + (n : ℤ))

end

end A004303.P13143805313407253363

namespace A004303

/-- `A000108(n)+2-A000051(n)+n` -/
def P13143805313407253363.Spec : Prop :=
  ∀ n, P13143805313407253363.a n = A004303 (n + 1)

end A004303

/-!
# A004304: Number of nonseparable planar tree-rooted maps with n edges.

The programs for A004304, there is no canonical definition to state claims against.
-/

/-! ## A004304.P658013676453594960

`A014963(A001316(n))*A000264(A137735(n²))`
-/

namespace A004304.P658013676453594960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A000264 (A137735 (n ^ 2)).toNat

end

end A004304.P658013676453594960

/-! ## A004304.P2544694127574446848

`A000005(A008578(n+1))*A000264(A137735(n²))`
-/

namespace A004304.P2544694127574446848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A000264 (A137735 (n ^ 2)).toNat

end

end A004304.P2544694127574446848

/-! ## A004304.P15034900860735680863

`A000264(A137735(n²))*A137502(A020639(n+1))`
-/

namespace A004304.P15034900860735680863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000264 (A137735 (n ^ 2)).toNat * A137502 (A020639 (n + 1)).toNat

end

end A004304.P15034900860735680863

/-! ## A004304.P7426456249776209470

`A000264(A137735(n²))*A059268(A000124(2*n))`
-/

namespace A004304.P7426456249776209470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000264 (A137735 (n ^ 2)).toNat * A059268 (A000124 (2 * n)).toNat

end

end A004304.P7426456249776209470

/-!
# A004305: Simple triangulations of a disk: column 4 of square array in A210664.

The programs for A004305, the canonical program `A004305.P9541854457979571393` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004305 has offset 0).

The definition of A004305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004305.P9541854457979571393

`A052472(n+3)+A006542(n+4)-A129936(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004305

/-- `A052472(n+3)+A006542(n+4)-A129936(n)` -/
def P9541854457979571393.Spec : Prop :=
  ∀ n, P9541854457979571393.a n = A004305 n

theorem P9541854457979571393.correct : P9541854457979571393.Spec := by
  intro n
  simp only [A004305]

end A004305

/-! ## A004305.P3630142198199235461

`A210664(A167614(n+2))`
-/

namespace A004305.P3630142198199235461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A167614 (n + 2)).toNat

end

end A004305.P3630142198199235461

namespace A004305

/-- `A210664(A167614(n+2))` -/
def P3630142198199235461.Spec : Prop :=
  ∀ n, P3630142198199235461.a n = A004305 n

end A004305

/-! ## A004305.P3923914904737952838

`A210664(A052905(n)+8)`
-/

namespace A004305.P3923914904737952838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A052905 n + 8).toNat

end

end A004305.P3923914904737952838

namespace A004305

/-- `A210664(A052905(n)+8)` -/
def P3923914904737952838.Spec : Prop :=
  ∀ n, P3923914904737952838.a n = A004305 n

end A004305

/-! ## A004305.P9784439603220583092

`A210664(A055999(n)+9)`
-/

namespace A004305.P9784439603220583092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A055999 n + 9).toNat

end

end A004305.P9784439603220583092

namespace A004305

/-- `A210664(A055999(n)+9)` -/
def P9784439603220583092.Spec : Prop :=
  ∀ n, P9784439603220583092.a n = A004305 n

end A004305

/-! ## A004305.P341985678079492264

`A210664(eq[8, A059268(n)])`
-/

namespace A004305.P341985678079492264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004305.P341985678079492264

namespace A004305

/-- `A210664(eq[8, A059268(n)])` -/
def P341985678079492264.Spec : Prop :=
  ∀ n, P341985678079492264.a n = A004305 n

end A004305

/-!
# A004306: Rook polynomials; fourth column of A008305.

The programs for A004306, the canonical program `A004306.P13145349110925903010` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004306 has offset 0).

The definition of A004306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004306.P13145349110925903010

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=24, a(5)=44, a(6)=80, a(7)=144`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004306

/-- `2*a(n-1)-a(n-4)` -/
def P13145349110925903010.Spec : Prop :=
  ∀ n, P13145349110925903010.a n = A004306 n

theorem P13145349110925903010.correct : P13145349110925903010.Spec := by
  intro n
  simp only [A004306]

end A004306

/-! ## A004306.P7033629107815585121

`A259985(∑[n]+n)`
-/

namespace A004306.P7033629107815585121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259985 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A004306.P7033629107815585121

namespace A004306

/-- `A259985(∑[n]+n)` -/
def P7033629107815585121.Spec : Prop :=
  ∀ n, P7033629107815585121.a n = A004306 n

end A004306

/-! ## A004306.P7274468303862192975

`A259985(A000096(n))%A291557(n)`
-/

namespace A004306.P7274468303862192975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259985 (A000096 n).toNat) (A291557 n)

end

end A004306.P7274468303862192975

namespace A004306

/-- `A259985(A000096(n))%A291557(n)` -/
def P7274468303862192975.Spec : Prop :=
  ∀ n, P7274468303862192975.a n = A004306 n

end A004306

/-! ## A004306.P14586165936156161268

`gcd(A000038(n), A259985(A000096(n)))`
-/

namespace A004306.P14586165936156161268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A259985 (A000096 n).toNat)

end

end A004306.P14586165936156161268

namespace A004306

/-- `gcd(A000038(n), A259985(A000096(n)))` -/
def P14586165936156161268.Spec : Prop :=
  ∀ n, (P14586165936156161268.a n : ℤ) = A004306 n

end A004306

/-! ## A004306.P1908225541203930539

`lcm(A043568(n), A259985(A000096(n)))`
-/

namespace A004306.P1908225541203930539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043568 n) (A259985 (A000096 n).toNat)

end

end A004306.P1908225541203930539

namespace A004306

/-- `lcm(A043568(n), A259985(A000096(n)))` -/
def P1908225541203930539.Spec : Prop :=
  ∀ n, (P1908225541203930539.a n : ℤ) = A004306 n

end A004306

/-! ## A004306.P12057925551858381472

`A033999(n)²*A259985(A000096(n))`
-/

namespace A004306.P12057925551858381472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A259985 (A000096 n).toNat

end

end A004306.P12057925551858381472

namespace A004306

/-- `A033999(n)²*A259985(A000096(n))` -/
def P12057925551858381472.Spec : Prop :=
  ∀ n, P12057925551858381472.a n = A004306 n

end A004306

/-! ## A004306.P18189124775706805701

`A007318(∑[n])*A259985(A000096(n))`
-/

namespace A004306.P18189124775706805701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A259985 (A000096 n).toNat

end

end A004306.P18189124775706805701

namespace A004306

/-- `A007318(∑[n])*A259985(A000096(n))` -/
def P18189124775706805701.Spec : Prop :=
  ∀ n, P18189124775706805701.a n = A004306 n

end A004306

/-! ## A004306.P2402518091065579330

`and(A000225(n+1), A259985(A000096(n)))`
-/

namespace A004306.P2402518091065579330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A259985 (A000096 n).toNat)

end

end A004306.P2402518091065579330

namespace A004306

/-- `and(A000225(n+1), A259985(A000096(n)))` -/
def P2402518091065579330.Spec : Prop :=
  ∀ n, P2402518091065579330.a n = A004306 n

end A004306

/-! ## A004306.P5837866733197047644

`A259985(A000096(n))^A014963(4*n+2)`
-/

namespace A004306.P5837866733197047644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259985 (A000096 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A004306.P5837866733197047644

namespace A004306

/-- `A259985(A000096(n))^A014963(4*n+2)` -/
def P5837866733197047644.Spec : Prop :=
  ∀ n, P5837866733197047644.a n = (A004306 n : ℚ)

end A004306

/-! ## A004306.P9975673641617275196

`and(1, A304383(n+1))*A259985(A000096(n))`
-/

namespace A004306.P9975673641617275196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A304383 (n + 1)) * A259985 (A000096 n).toNat

end

end A004306.P9975673641617275196

namespace A004306

/-- `and(1, A304383(n+1))*A259985(A000096(n))` -/
def P9975673641617275196.Spec : Prop :=
  ∀ n, P9975673641617275196.a n = A004306 n

end A004306

/-! ## A004306.P4546008224030767843

`A259985(A000096(n))^A000045(n²%(n+1))`
-/

namespace A004306.P4546008224030767843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259985 (A000096 n).toNat : ℚ) ^ (A000045 (n ^ 2 % (n + 1)) : ℤ)

end

end A004306.P4546008224030767843

namespace A004306

/-- `A259985(A000096(n))^A000045(n²%(n+1))` -/
def P4546008224030767843.Spec : Prop :=
  ∀ n, P4546008224030767843.a n = (A004306 n : ℚ)

end A004306

/-! ## A004306.P4570008715662304595

`2*A259985(A000096(n))/A020639(2*(n+1))`
-/

namespace A004306.P4570008715662304595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A259985 (A000096 n).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A004306.P4570008715662304595

namespace A004306

/-- `2*A259985(A000096(n))/A020639(2*(n+1))` -/
def P4570008715662304595.Spec : Prop :=
  ∀ n, P4570008715662304595.a n = (A004306 n : ℚ)

end A004306

/-!
# A004307: Number of permutations p of [n] such that (n-p(i)+i) mod n >= 4 for all i.

The programs for A004307, there is no canonical definition to state claims against.
-/

/-! ## A004307.P2966853958517255380

`record[A016389(A002260(n+1))*A321352(n+1)]`
-/

namespace A004307.P2966853958517255380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A002260 (n + 1)).toNat * A321352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004307.P2966853958517255380

/-! ## A004307.P7232833812074735814

`A008305(A167499(n)+A008486(n))-A000007(n)`
-/

namespace A004307.P7232833812074735814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (A167499 n + A008486 n).toNat - A000007 n

end

end A004307.P7232833812074735814

/-! ## A004307.P13108402071611026582

`A003817(n)%2*A008305(A167499(n)+A008486(n))`
-/

namespace A004307.P13108402071611026582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003817 n) 2 * A008305 (A167499 n + A008486 n).toNat

end

end A004307.P13108402071611026582

/-! ## A004307.P5961128864132687081

`A013918(n+1)%2*A008305(A167499(n)+A008486(n))`
-/

namespace A004307.P5961128864132687081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013918 (n + 1)) 2 * A008305 (A167499 n + A008486 n).toNat

end

end A004307.P5961128864132687081

/-! ## A004307.P1934142343644027846

`A045311(n+1)%2*A008305(A167499(n)+A008486(n))`
-/

namespace A004307.P1934142343644027846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045311 (n + 1)) 2 * A008305 (A167499 n + A008486 n).toNat

end

end A004307.P1934142343644027846

/-!
# A004308: Hit polynomials, coefficient of y in N_n(y).

The programs for A004308, there is no canonical definition to state claims against.
-/

/-! ## A004308.P7057512120811640742

`∑[A103168(record[A020068(n)])]`
-/

namespace A004308.P7057512120811640742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004308.P7057512120811640742

/-!
# A004310: Binomial coefficient C(2n,n-4).

The programs for A004310, the canonical program `A004310.P1578982498497658378` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004310 has offset 4).

The definition of A004310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+4), n)` (program `A004310.P1578982498497658378`, by `A004310.P1578982498497658378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004310.P1578982498497658378

`C(2*(n+4), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004310

/-- `C(2*(n+4), n)` -/
def P1578982498497658378.Spec : Prop :=
  ∀ n, (P1578982498497658378.a n : ℤ) = A004310 (n + 4)

theorem P1578982498497658378.correct : P1578982498497658378.Spec := by
  intro n
  simp only [A004310, Nat.add_sub_cancel]

end A004310

/-! ## A004310.P6115223887446310367

`A037954(2*(n+4))`
-/

namespace A004310.P6115223887446310367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037954 (2 * (n + 4))

end

end A004310.P6115223887446310367

namespace A004310

/-- `A037954(2*(n+4))` -/
def P6115223887446310367.Spec : Prop :=
  ∀ n, P6115223887446310367.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P14234844022283118075

`A037958(2*(n+4))`
-/

namespace A004310.P14234844022283118075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037958 (2 * (n + 4))

end

end A004310.P14234844022283118075

namespace A004310

/-- `A037958(2*(n+4))` -/
def P14234844022283118075.Spec : Prop :=
  ∀ n, P14234844022283118075.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P10321107330278524182

`record[or(A037958(n), A210628(n))]`
-/

namespace A004310.P10321107330278524182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037958 n) (A210628 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004310.P10321107330278524182

namespace A004310

/-- `record[or(A037958(n), A210628(n))]` -/
def P10321107330278524182.Spec : Prop :=
  ∀ n, P10321107330278524182.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P12612640284731316664

`2*A172065(n)-A172064(n)`
-/

namespace A004310.P12612640284731316664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172065 n - A172064 n

end

end A004310.P12612640284731316664

namespace A004310

/-- `2*A172065(n)-A172064(n)` -/
def P12612640284731316664.Spec : Prop :=
  ∀ n, P12612640284731316664.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P1240188372040040897

`A030053(n+4)-A002696(n+4)`
-/

namespace A004310.P1240188372040040897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030053 (n + 4) - A002696 (n + 4)

end

end A004310.P1240188372040040897

namespace A004310

/-- `A030053(n+4)-A002696(n+4)` -/
def P1240188372040040897.Spec : Prop :=
  ∀ n, P1240188372040040897.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P5470562562956767373

`A030053(n+4)-(A030053(n+3)+A003516(n+3))`
-/

namespace A004310.P5470562562956767373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030053 (n + 4) - (A030053 (n + 3) + A003516 (n + 3))

end

end A004310.P5470562562956767373

namespace A004310

/-- `A030053(n+4)-(A030053(n+3)+A003516(n+3))` -/
def P5470562562956767373.Spec : Prop :=
  ∀ n, P5470562562956767373.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P10834371926193125890

`A034870((n+4)²+n)`
-/

namespace A004310.P10834371926193125890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 ((n + 4) ^ 2 + n)

end

end A004310.P10834371926193125890

namespace A004310

/-- `A034870((n+4)²+n)` -/
def P10834371926193125890.Spec : Prop :=
  ∀ n, P10834371926193125890.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P17188194172211318281

`A046899(A000096(n+8)-8)`
-/

namespace A004310.P17188194172211318281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000096 (n + 8) - 8).toNat

end

end A004310.P17188194172211318281

namespace A004310

/-- `A046899(A000096(n+8)-8)` -/
def P17188194172211318281.Spec : Prop :=
  ∀ n, P17188194172211318281.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P8200231364306084450

`A046899(A000217(n+9)-9)`
-/

namespace A004310.P8200231364306084450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000217 (n + 9) - 9).toNat

end

end A004310.P8200231364306084450

namespace A004310

/-- `A046899(A000217(n+9)-9)` -/
def P8200231364306084450.Spec : Prop :=
  ∀ n, P8200231364306084450.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P8460231238143172800

`A092392(A000217(n+9)-(n+1))`
-/

namespace A004310.P8460231238143172800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A004310.P8460231238143172800

namespace A004310

/-- `A092392(A000217(n+9)-(n+1))` -/
def P8460231238143172800.Spec : Prop :=
  ∀ n, P8460231238143172800.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P8477146896986544996

`A094527(eq[4, A002262(n)])`
-/

namespace A004310.P8477146896986544996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004310.P8477146896986544996

namespace A004310

/-- `A094527(eq[4, A002262(n)])` -/
def P8477146896986544996.Spec : Prop :=
  ∀ n, P8477146896986544996.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P13474907915221317286

`A094527(A055999(n+1)+10)`
-/

namespace A004310.P13474907915221317286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (A055999 (n + 1) + 10).toNat

end

end A004310.P13474907915221317286

namespace A004310

/-- `A094527(A055999(n+1)+10)` -/
def P13474907915221317286.Spec : Prop :=
  ∀ n, P13474907915221317286.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P10187429375578227148

`A094527(Δ[A000292(n+4)]-(n+1))`
-/

namespace A004310.P10187429375578227148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (f1 (n + 1) - f1 n - (n + 1 : ℤ)).toNat

end

end A004310.P10187429375578227148

namespace A004310

/-- `A094527(Δ[A000292(n+4)]-(n+1))` -/
def P10187429375578227148.Spec : Prop :=
  ∀ n, P10187429375578227148.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P6797655289389106168

`A062344(A052905(n+2))`
-/

namespace A004310.P6797655289389106168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A052905 (n + 2)).toNat

end

end A004310.P6797655289389106168

namespace A004310

/-- `A062344(A052905(n+2))` -/
def P6797655289389106168.Spec : Prop :=
  ∀ n, P6797655289389106168.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P5040588212715242449

`A062344(eq[4, A025581(n)])`
-/

namespace A004310.P5040588212715242449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004310.P5040588212715242449

namespace A004310

/-- `A062344(eq[4, A025581(n)])` -/
def P5040588212715242449.Spec : Prop :=
  ∀ n, P5040588212715242449.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P10189237906390586073

`A062344(A046691(n+3)-1)`
-/

namespace A004310.P10189237906390586073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A046691 (n + 3) - 1).toNat

end

end A004310.P10189237906390586073

namespace A004310

/-- `A062344(A046691(n+3)-1)` -/
def P10189237906390586073.Spec : Prop :=
  ∀ n, P10189237906390586073.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P12224590447586508082

`A062344(A034856(n+1)+3*(n+3))`
-/

namespace A004310.P12224590447586508082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A034856 (n + 1) + (3 * (n + 3) : ℤ)).toNat

end

end A004310.P12224590447586508082

namespace A004310

/-- `A062344(A034856(n+1)+3*(n+3))` -/
def P12224590447586508082.Spec : Prop :=
  ∀ n, P12224590447586508082.a n = A004310 (n + 4)

end A004310

/-! ## A004310.P15423835479888658977

`record[C(A157654(n), A173740(n))]`
-/

namespace A004310.P15423835479888658977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A157654 n).toNat (A173740 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004310.P15423835479888658977

namespace A004310

/-- `record[C(A157654(n), A173740(n))]` -/
def P15423835479888658977.Spec : Prop :=
  ∀ n, (P15423835479888658977.a n : ℤ) = A004310 (n + 4)

end A004310

/-!
# A004311: Binomial coefficient C(2n,n-5).

The programs for A004311, the canonical program `A004311.P11090177115856456` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004311 has offset 5).

The definition of A004311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+5), n)` (program `A004311.P11090177115856456`, by `A004311.P11090177115856456.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004311.P11090177115856456

`C(2*(n+5), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004311

/-- `C(2*(n+5), n)` -/
def P11090177115856456.Spec : Prop :=
  ∀ n, (P11090177115856456.a n : ℤ) = A004311 (n + 5)

theorem P11090177115856456.correct : P11090177115856456.Spec := by
  intro n
  simp only [A004311, Nat.add_sub_cancel]

end A004311

/-! ## A004311.P7792844642208275633

`2*A172067(n)-A172066(n)`
-/

namespace A004311.P7792844642208275633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172067 n - A172066 n

end

end A004311.P7792844642208275633

namespace A004311

/-- `2*A172067(n)-A172066(n)` -/
def P7792844642208275633.Spec : Prop :=
  ∀ n, P7792844642208275633.a n = A004311 (n + 5)

end A004311

/-! ## A004311.P4294719090007363789

`A004310(n+5)-A001392(n+5)`
-/

namespace A004311.P4294719090007363789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004310 (n + 5) - A001392 (n + 5)

end

end A004311.P4294719090007363789

namespace A004311

/-- `A004310(n+5)-A001392(n+5)` -/
def P4294719090007363789.Spec : Prop :=
  ∀ n, P4294719090007363789.a n = A004311 (n + 5)

end A004311

/-! ## A004311.P2901365420192710718

`A030054(n+5)-A004310(n+5)`
-/

namespace A004311.P2901365420192710718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030054 (n + 5) - A004310 (n + 5)

end

end A004311.P2901365420192710718

namespace A004311

/-- `A030054(n+5)-A004310(n+5)` -/
def P2901365420192710718.Spec : Prop :=
  ∀ n, P2901365420192710718.a n = A004311 (n + 5)

end A004311

/-! ## A004311.P13422145922448515293

`A030054(n+5)-(A030054(n+4)+A030053(n+4))`
-/

namespace A004311.P13422145922448515293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030054 (n + 5) - (A030054 (n + 4) + A030053 (n + 4))

end

end A004311.P13422145922448515293

namespace A004311

/-- `A030054(n+5)-(A030054(n+4)+A030053(n+4))` -/
def P13422145922448515293.Spec : Prop :=
  ∀ n, P13422145922448515293.a n = A004311 (n + 5)

end A004311

/-! ## A004311.P16699302245443579765

`A034870((n+5)²+n)`
-/

namespace A004311.P16699302245443579765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 ((n + 5) ^ 2 + n)

end

end A004311.P16699302245443579765

namespace A004311

/-- `A034870((n+5)²+n)` -/
def P16699302245443579765.Spec : Prop :=
  ∀ n, P16699302245443579765.a n = A004311 (n + 5)

end A004311

/-! ## A004311.P902150506846769893

`A046899(A000217(n+11)-11)`
-/

namespace A004311.P902150506846769893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000217 (n + 11) - 11).toNat

end

end A004311.P902150506846769893

namespace A004311

/-- `A046899(A000217(n+11)-11)` -/
def P902150506846769893.Spec : Prop :=
  ∀ n, P902150506846769893.a n = A004311 (n + 5)

end A004311

/-! ## A004311.P3856984678002578312

`A062344(A052905(n+3)-1)`
-/

namespace A004311.P3856984678002578312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A052905 (n + 3) - 1).toNat

end

end A004311.P3856984678002578312

namespace A004311

/-- `A062344(A052905(n+3)-1)` -/
def P3856984678002578312.Spec : Prop :=
  ∀ n, P3856984678002578312.a n = A004311 (n + 5)

end A004311

/-! ## A004311.P11490819030264813161

`A062344(A167499(n+1)+Δ[A167499(2*n+1)])`
-/

namespace A004311.P11490819030264813161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A167499 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A004311.P11490819030264813161

namespace A004311

/-- `A062344(A167499(n+1)+Δ[A167499(2*n+1)])` -/
def P11490819030264813161.Spec : Prop :=
  ∀ n, P11490819030264813161.a n = A004311 (n + 5)

end A004311

/-! ## A004311.P3982141042403042904

`or(C(A005408(n)+9, n), A000007(n))`
-/

namespace A004311.P3982141042403042904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose (A005408 n + 9).toNat n : ℤ) (A000007 n)

end

end A004311.P3982141042403042904

namespace A004311

/-- `or(C(A005408(n)+9, n), A000007(n))` -/
def P3982141042403042904.Spec : Prop :=
  ∀ n, P3982141042403042904.a n = A004311 (n + 5)

end A004311

/-!
# A004312: Binomial coefficient C(2n,n-6).

The programs for A004312, the canonical program `A004312.P10116986796889152216` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004312 has offset 6).

The definition of A004312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+6), n)` (program `A004312.P10116986796889152216`, by `A004312.P10116986796889152216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004312.P10116986796889152216

`C(2*(n+6), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004312

/-- `C(2*(n+6), n)` -/
def P10116986796889152216.Spec : Prop :=
  ∀ n, (P10116986796889152216.a n : ℤ) = A004312 (n + 6)

theorem P10116986796889152216.correct : P10116986796889152216.Spec := by
  intro n
  simp only [A004312, Nat.add_sub_cancel]

end A004312

/-! ## A004312.P16367431207927484143

`A030055(n+6)-(A030055(n+5)+A030054(n+5))`
-/

namespace A004312.P16367431207927484143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030055 (n + 6) - (A030055 (n + 5) + A030054 (n + 5))

end

end A004312.P16367431207927484143

namespace A004312

/-- `A030055(n+6)-(A030055(n+5)+A030054(n+5))` -/
def P16367431207927484143.Spec : Prop :=
  ∀ n, P16367431207927484143.a n = A004312 (n + 6)

end A004312

/-! ## A004312.P18171471585508181237

`A094527(A000096(n+5)+7)`
-/

namespace A004312.P18171471585508181237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (A000096 (n + 5) + 7).toNat

end

end A004312.P18171471585508181237

namespace A004312

/-- `A094527(A000096(n+5)+7)` -/
def P18171471585508181237.Spec : Prop :=
  ∀ n, P18171471585508181237.a n = A004312 (n + 6)

end A004312

/-! ## A004312.P8088550859670206261

`A062344(Δ[n²]+A167614(n+4)+2)`
-/

namespace A004312.P8088550859670206261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A167614 (n + 4) + 2)).toNat

end

end A004312.P8088550859670206261

namespace A004312

/-- `A062344(Δ[n²]+A167614(n+4)+2)` -/
def P8088550859670206261.Spec : Prop :=
  ∀ n, P8088550859670206261.a n = A004312 (n + 6)

end A004312

/-! ## A004312.P10504767497740529665

`record[C(n+12, A142150(n))]`
-/

namespace A004312.P10504767497740529665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 12) (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004312.P10504767497740529665

namespace A004312

/-- `record[C(n+12, A142150(n))]` -/
def P10504767497740529665.Spec : Prop :=
  ∀ n, (P10504767497740529665.a n : ℤ) = A004312 (n + 6)

end A004312

/-! ## A004312.P11366084900913119851

`A007318(A181510(n+5))`
-/

namespace A004312.P11366084900913119851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A181510 (n + 5)).toNat

end

end A004312.P11366084900913119851

namespace A004312

/-- `A007318(A181510(n+5))` -/
def P11366084900913119851.Spec : Prop :=
  ∀ n, P11366084900913119851.a n = A004312 (n + 6)

end A004312

/-! ## A004312.P2656078288370067169

`A007318(2*A027688(n+6))`
-/

namespace A004312.P2656078288370067169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * A027688 (n + 6)).toNat

end

end A004312.P2656078288370067169

namespace A004312

/-- `A007318(2*A027688(n+6))` -/
def P2656078288370067169.Spec : Prop :=
  ∀ n, P2656078288370067169.a n = A004312 (n + 6)

end A004312

/-! ## A004312.P4478049029705600579

`A007318(A224666(n+1)-2*n)`
-/

namespace A004312.P4478049029705600579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A224666 (n + 1) - (2 * n : ℤ)).toNat

end

end A004312.P4478049029705600579

namespace A004312

/-- `A007318(A224666(n+1)-2*n)` -/
def P4478049029705600579.Spec : Prop :=
  ∀ n, P4478049029705600579.a n = A004312 (n + 6)

end A004312

/-! ## A004312.P16270662069390678555

`A007318(A014107(n+7)+n+1)`
-/

namespace A004312.P16270662069390678555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014107 (n + 7) + (n + 1 : ℤ)).toNat

end

end A004312.P16270662069390678555

namespace A004312

/-- `A007318(A014107(n+7)+n+1)` -/
def P16270662069390678555.Spec : Prop :=
  ∀ n, P16270662069390678555.a n = A004312 (n + 6)

end A004312

/-! ## A004312.P10328837826768373695

`A007318(A224666(n+1)-n-n)`
-/

namespace A004312.P10328837826768373695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A224666 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A004312.P10328837826768373695

namespace A004312

/-- `A007318(A224666(n+1)-n-n)` -/
def P10328837826768373695.Spec : Prop :=
  ∀ n, P10328837826768373695.a n = A004312 (n + 6)

end A004312

/-!
# A004313: a(n) = binomial coefficient C(2n, n-7).

The programs for A004313, the canonical program `A004313.P9155515849067700773` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004313 has offset 7).

The definition of A004313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+7), n)` (program `A004313.P9155515849067700773`, by `A004313.P9155515849067700773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004313.P9155515849067700773

`C(2*(n+7), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004313

/-- `C(2*(n+7), n)` -/
def P9155515849067700773.Spec : Prop :=
  ∀ n, (P9155515849067700773.a n : ℤ) = A004313 (n + 7)

theorem P9155515849067700773.correct : P9155515849067700773.Spec := by
  intro n
  simp only [A004313, Nat.add_sub_cancel]

end A004313

/-! ## A004313.P12742415970344028195

`A094527(eq[7, A002262(n)])`
-/

namespace A004313.P12742415970344028195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004313.P12742415970344028195

namespace A004313

/-- `A094527(eq[7, A002262(n)])` -/
def P12742415970344028195.Spec : Prop :=
  ∀ n, P12742415970344028195.a n = A004313 (n + 7)

end A004313

/-! ## A004313.P141593360699219637

`A062344(eq[7, A025581(n)])`
-/

namespace A004313.P141593360699219637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004313.P141593360699219637

namespace A004313

/-- `A062344(eq[7, A025581(n)])` -/
def P141593360699219637.Spec : Prop :=
  ∀ n, P141593360699219637.a n = A004313 (n + 7)

end A004313

/-! ## A004313.P6584084610496724740

`A062344(A052905(n+5)-3)`
-/

namespace A004313.P6584084610496724740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A052905 (n + 5) - 3).toNat

end

end A004313.P6584084610496724740

namespace A004313

/-- `A062344(A052905(n+5)-3)` -/
def P6584084610496724740.Spec : Prop :=
  ∀ n, P6584084610496724740.a n = A004313 (n + 7)

end A004313

/-! ## A004313.P7861421519010018667

`A062344(A000217(n+8)-8)`
-/

namespace A004313.P7861421519010018667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A000217 (n + 8) - 8).toNat

end

end A004313.P7861421519010018667

namespace A004313

/-- `A062344(A000217(n+8)-8)` -/
def P7861421519010018667.Spec : Prop :=
  ∀ n, P7861421519010018667.a n = A004313 (n + 7)

end A004313

/-! ## A004313.P9997424421766831085

`A062344(eq[8, A004736(n+1)])`
-/

namespace A004313.P9997424421766831085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004313.P9997424421766831085

namespace A004313

/-- `A062344(eq[8, A004736(n+1)])` -/
def P9997424421766831085.Spec : Prop :=
  ∀ n, P9997424421766831085.a n = A004313 (n + 7)

end A004313

/-! ## A004313.P9312839626919669073

`A062344(2*n+A133263(n+6)+5)`
-/

namespace A004313.P9312839626919669073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 ((2 * n : ℤ) + (A133263 (n + 6) + 5)).toNat

end

end A004313.P9312839626919669073

namespace A004313

/-- `A062344(2*n+A133263(n+6)+5)` -/
def P9312839626919669073.Spec : Prop :=
  ∀ n, P9312839626919669073.a n = A004313 (n + 7)

end A004313

/-! ## A004313.P9214976555223336510

`A034869((n+8)²-(n+1))`
-/

namespace A004313.P9214976555223336510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 ((n + 8) ^ 2 - (n + 1))

end

end A004313.P9214976555223336510

namespace A004313

/-- `A034869((n+8)²-(n+1))` -/
def P9214976555223336510.Spec : Prop :=
  ∀ n, P9214976555223336510.a n = A004313 (n + 7)

end A004313

/-! ## A004313.P1528510729448454628

`A007318(A000384(n+8)-(n+1))`
-/

namespace A004313.P1528510729448454628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000384 (n + 8) - (n + 1 : ℤ)).toNat

end

end A004313.P1528510729448454628

namespace A004313

/-- `A007318(A000384(n+8)-(n+1))` -/
def P1528510729448454628.Spec : Prop :=
  ∀ n, P1528510729448454628.a n = A004313 (n + 7)

end A004313

/-! ## A004313.P13476305840453891496

`A007318(A020742((n+7)²)+A005843(n))`
-/

namespace A004313.P13476305840453891496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020742 ((n + 7) ^ 2) + A005843 n).toNat

end

end A004313.P13476305840453891496

namespace A004313

/-- `A007318(A020742((n+7)²)+A005843(n))` -/
def P13476305840453891496.Spec : Prop :=
  ∀ n, P13476305840453891496.a n = A004313 (n + 7)

end A004313

/-!
# A004314: a(n) = binomial coefficient C(2n, n - 8).

The programs for A004314, the canonical program `A004314.P3620778294949056732` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004314 has offset 8).

The definition of A004314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+8), n)` (program `A004314.P3620778294949056732`, by `A004314.P3620778294949056732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004314.P3620778294949056732

`C(2*(n+8), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004314

/-- `C(2*(n+8), n)` -/
def P3620778294949056732.Spec : Prop :=
  ∀ n, (P3620778294949056732.a n : ℤ) = A004314 (n + 8)

theorem P3620778294949056732.correct : P3620778294949056732.Spec := by
  intro n
  simp only [A004314, Nat.add_sub_cancel]

end A004314

/-! ## A004314.P17066749900436637150

`A062344(A000217(n+9)-9)`
-/

namespace A004314.P17066749900436637150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A000217 (n + 9) - 9).toNat

end

end A004314.P17066749900436637150

namespace A004314

/-- `A062344(A000217(n+9)-9)` -/
def P17066749900436637150.Spec : Prop :=
  ∀ n, P17066749900436637150.a n = A004314 (n + 8)

end A004314

/-! ## A004314.P1503633333674297597

`A074909(A067728(n+6))`
-/

namespace A004314.P1503633333674297597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A067728 (n + 6)).toNat

end

end A004314.P1503633333674297597

namespace A004314

/-- `A074909(A067728(n+6))` -/
def P1503633333674297597.Spec : Prop :=
  ∀ n, P1503633333674297597.a n = A004314 (n + 8)

end A004314

/-! ## A004314.P1487132207028594280

`A074909((n+10)*A005843(n+6))`
-/

namespace A004314.P1487132207028594280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((n + 10 : ℤ) * A005843 (n + 6)).toNat

end

end A004314.P1487132207028594280

namespace A004314

/-- `A074909((n+10)*A005843(n+6))` -/
def P1487132207028594280.Spec : Prop :=
  ∀ n, P1487132207028594280.a n = A004314 (n + 8)

end A004314

/-! ## A004314.P12916144834418352137

`A007318(4*A034856(n+7))`
-/

namespace A004314.P12916144834418352137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (4 * A034856 (n + 7)).toNat

end

end A004314.P12916144834418352137

namespace A004314

/-- `A007318(4*A034856(n+7))` -/
def P12916144834418352137.Spec : Prop :=
  ∀ n, P12916144834418352137.a n = A004314 (n + 8)

end A004314

/-! ## A004314.P15983842963239046074

`A007318(4*A133263(n+8))`
-/

namespace A004314.P15983842963239046074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (4 * A133263 (n + 8)).toNat

end

end A004314.P15983842963239046074

namespace A004314

/-- `A007318(4*A133263(n+8))` -/
def P15983842963239046074.Spec : Prop :=
  ∀ n, P15983842963239046074.a n = A004314 (n + 8)

end A004314

/-! ## A004314.P1334343083908985604

`A007318(4*Δ[A180415(n+9)])`
-/

namespace A004314.P1334343083908985604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (4 * (f1 (n + 1) - f1 n)).toNat

end

end A004314.P1334343083908985604

namespace A004314

/-- `A007318(4*Δ[A180415(n+9)])` -/
def P1334343083908985604.Spec : Prop :=
  ∀ n, P1334343083908985604.a n = A004314 (n + 8)

end A004314

/-! ## A004314.P6623363148407442503

`A097805(A067728(n+7))`
-/

namespace A004314.P6623363148407442503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A067728 (n + 7)).toNat

end

end A004314.P6623363148407442503

namespace A004314

/-- `A097805(A067728(n+7))` -/
def P6623363148407442503.Spec : Prop :=
  ∀ n, P6623363148407442503.a n = A004314 (n + 8)

end A004314

/-!
# A004315: a(n) = binomial coefficient C(2n, n-9).

The programs for A004315, the canonical program `A004315.P9956210200184966242` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004315 has offset 9).

The definition of A004315 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+9), n)` (program `A004315.P9956210200184966242`, by `A004315.P9956210200184966242.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004315.P9956210200184966242

`C(2*(n+9), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004315

/-- `C(2*(n+9), n)` -/
def P9956210200184966242.Spec : Prop :=
  ∀ n, (P9956210200184966242.a n : ℤ) = A004315 (n + 9)

theorem P9956210200184966242.correct : P9956210200184966242.Spec := by
  intro n
  simp only [A004315, Nat.add_sub_cancel]

end A004315

/-! ## A004315.P13109957684477200448

`A094527(A000124(n+9)+8)`
-/

namespace A004315.P13109957684477200448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (A000124 (n + 9) + 8).toNat

end

end A004315.P13109957684477200448

namespace A004315

/-- `A094527(A000124(n+9)+8)` -/
def P13109957684477200448.Spec : Prop :=
  ∀ n, P13109957684477200448.a n = A004315 (n + 9)

end A004315

/-! ## A004315.P17152680539291851663

`A094527(A008593(n+5)+∑[n]-(2*n+1))`
-/

namespace A004315.P17152680539291851663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (A008593 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)).toNat

end

end A004315.P17152680539291851663

namespace A004315

/-- `A094527(A008593(n+5)+∑[n]-(2*n+1))` -/
def P17152680539291851663.Spec : Prop :=
  ∀ n, P17152680539291851663.a n = A004315 (n + 9)

end A004315

/-! ## A004315.P14610911012720915317

`A062344(A056000(n+6))`
-/

namespace A004315.P14610911012720915317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A056000 (n + 6)).toNat

end

end A004315.P14610911012720915317

namespace A004315

/-- `A062344(A056000(n+6))` -/
def P14610911012720915317.Spec : Prop :=
  ∀ n, P14610911012720915317.a n = A004315 (n + 9)

end A004315

/-! ## A004315.P6911123841388233788

`A062344(A000217(n+10)-10)`
-/

namespace A004315.P6911123841388233788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A000217 (n + 10) - 10).toNat

end

end A004315.P6911123841388233788

namespace A004315

/-- `A062344(A000217(n+10)-10)` -/
def P6911123841388233788.Spec : Prop :=
  ∀ n, P6911123841388233788.a n = A004315 (n + 9)

end A004315

/-! ## A004315.P1403648223529741536

`A062344(Δ[n²]+A167499(n+7)+3)`
-/

namespace A004315.P1403648223529741536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A167499 (n + 7) + 3)).toNat

end

end A004315.P1403648223529741536

namespace A004315

/-- `A062344(Δ[n²]+A167499(n+7)+3)` -/
def P1403648223529741536.Spec : Prop :=
  ∀ n, P1403648223529741536.a n = A004315 (n + 9)

end A004315

/-! ## A004315.P17086125346689020427

`A007318(A152813(n+7))`
-/

namespace A004315.P17086125346689020427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A152813 (n + 7)).toNat

end

end A004315.P17086125346689020427

namespace A004315

/-- `A007318(A152813(n+7))` -/
def P17086125346689020427.Spec : Prop :=
  ∀ n, P17086125346689020427.a n = A004315 (n + 9)

end A004315

/-! ## A004315.P5655285997847985582

`A135278(A259059(n)-57)`
-/

namespace A004315.P5655285997847985582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A259059 n - 57).toNat

end

end A004315.P5655285997847985582

namespace A004315

/-- `A135278(A259059(n)-57)` -/
def P5655285997847985582.Spec : Prop :=
  ∀ n, P5655285997847985582.a n = A004315 (n + 9)

end A004315

/-! ## A004315.P17912314156079133089

`A007318(A014105(n+9)+n)`
-/

namespace A004315.P17912314156079133089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014105 (n + 9) + (n : ℤ)).toNat

end

end A004315.P17912314156079133089

namespace A004315

/-- `A007318(A014105(n+9)+n)` -/
def P17912314156079133089.Spec : Prop :=
  ∀ n, P17912314156079133089.a n = A004315 (n + 9)

end A004315

/-!
# A004316: a(n) = binomial coefficient C(2n, n-10).

The programs for A004316, the canonical program `A004316.P712246062864464958` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004316 has offset 10).

The definition of A004316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+10), n)` (program `A004316.P712246062864464958`, by `A004316.P712246062864464958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004316.P712246062864464958

`C(2*(n+10), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004316

/-- `C(2*(n+10), n)` -/
def P712246062864464958.Spec : Prop :=
  ∀ n, (P712246062864464958.a n : ℤ) = A004316 (n + 10)

theorem P712246062864464958.correct : P712246062864464958.Spec := by
  intro n
  simp only [A004316, Nat.add_sub_cancel]

end A004316

/-! ## A004316.P1832822607215976929

`A034870((n+10)²+n)`
-/

namespace A004316.P1832822607215976929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 ((n + 10) ^ 2 + n)

end

end A004316.P1832822607215976929

namespace A004316

/-- `A034870((n+10)²+n)` -/
def P1832822607215976929.Spec : Prop :=
  ∀ n, P1832822607215976929.a n = A004316 (n + 10)

end A004316

/-! ## A004316.P5856476019055925896

`A094527(A166136(n+9)+4)`
-/

namespace A004316.P5856476019055925896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (A166136 (n + 9) + 4).toNat

end

end A004316.P5856476019055925896

namespace A004316

/-- `A094527(A166136(n+9)+4)` -/
def P5856476019055925896.Spec : Prop :=
  ∀ n, P5856476019055925896.a n = A004316 (n + 10)

end A004316

/-! ## A004316.P11368798943253407255

`A094527(A000217(n+11)-(n+1))`
-/

namespace A004316.P11368798943253407255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A004316.P11368798943253407255

namespace A004316

/-- `A094527(A000217(n+11)-(n+1))` -/
def P11368798943253407255.Spec : Prop :=
  ∀ n, P11368798943253407255.a n = A004316 (n + 10)

end A004316

/-! ## A004316.P12139775683981867677

`A062344(A052905(n+8)-6)`
-/

namespace A004316.P12139775683981867677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A052905 (n + 8) - 6).toNat

end

end A004316.P12139775683981867677

namespace A004316

/-- `A062344(A052905(n+8)-6)` -/
def P12139775683981867677.Spec : Prop :=
  ∀ n, P12139775683981867677.a n = A004316 (n + 10)

end A004316

/-! ## A004316.P8436322117478076679

`A007318(A001844(n+10)+9)`
-/

namespace A004316.P8436322117478076679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001844 (n + 10) + 9).toNat

end

end A004316.P8436322117478076679

namespace A004316

/-- `A007318(A001844(n+10)+9)` -/
def P8436322117478076679.Spec : Prop :=
  ∀ n, P8436322117478076679.a n = A004316 (n + 10)

end A004316

/-! ## A004316.P2262055004800242135

`A007318(A016825(A055998(n+8)))`
-/

namespace A004316.P2262055004800242135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A016825 (A055998 (n + 8)).toNat).toNat

end

end A004316.P2262055004800242135

namespace A004316

/-- `A007318(A016825(A055998(n+8)))` -/
def P2262055004800242135.Spec : Prop :=
  ∀ n, P2262055004800242135.a n = A004316 (n + 10)

end A004316

/-!
# A004317: Binomial coefficient C(2n,n-11).

The programs for A004317, the canonical program `A004317.P14906026474899257787` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004317 has offset 11).

The definition of A004317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+11), n)` (program `A004317.P14906026474899257787`, by `A004317.P14906026474899257787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004317.P14906026474899257787

`C(2*(n+11), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004317

/-- `C(2*(n+11), n)` -/
def P14906026474899257787.Spec : Prop :=
  ∀ n, (P14906026474899257787.a n : ℤ) = A004317 (n + 11)

theorem P14906026474899257787.correct : P14906026474899257787.Spec := by
  intro n
  simp only [A004317, Nat.add_sub_cancel]

end A004317

/-! ## A004317.P16652851911727421881

`A034870((n+11)²+n)`
-/

namespace A004317.P16652851911727421881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 ((n + 11) ^ 2 + n)

end

end A004317.P16652851911727421881

namespace A004317

/-- `A034870((n+11)²+n)` -/
def P16652851911727421881.Spec : Prop :=
  ∀ n, P16652851911727421881.a n = A004317 (n + 11)

end A004317

/-! ## A004317.P15159207343838844186

`A062344(A000217(n+12)-12)`
-/

namespace A004317.P15159207343838844186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A000217 (n + 12) - 12).toNat

end

end A004317.P15159207343838844186

namespace A004317

/-- `A062344(A000217(n+12)-12)` -/
def P15159207343838844186.Spec : Prop :=
  ∀ n, P15159207343838844186.a n = A004317 (n + 11)

end A004317

/-! ## A004317.P8823298822328106062

`A007318(A001844(n+11)+10)`
-/

namespace A004317.P8823298822328106062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001844 (n + 11) + 10).toNat

end

end A004317.P8823298822328106062

namespace A004317

/-- `A007318(A001844(n+11)+10)` -/
def P8823298822328106062.Spec : Prop :=
  ∀ n, P8823298822328106062.a n = A004317 (n + 11)

end A004317

/-! ## A004317.P9643939036926934653

`A007318(A014105(n+11)+n)`
-/

namespace A004317.P9643939036926934653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014105 (n + 11) + (n : ℤ)).toNat

end

end A004317.P9643939036926934653

namespace A004317

/-- `A007318(A014105(n+11)+n)` -/
def P9643939036926934653.Spec : Prop :=
  ∀ n, P9643939036926934653.a n = A004317 (n + 11)

end A004317

/-!
# A004318: Binomial coefficient C(2n,n-12).

The programs for A004318, the canonical program `A004318.P2327941088359256563` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004318 has offset 12).

The definition of A004318 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+12), n)` (program `A004318.P2327941088359256563`, by `A004318.P2327941088359256563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004318.P2327941088359256563

`C(2*(n+12), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004318

/-- `C(2*(n+12), n)` -/
def P2327941088359256563.Spec : Prop :=
  ∀ n, (P2327941088359256563.a n : ℤ) = A004318 (n + 12)

theorem P2327941088359256563.correct : P2327941088359256563.Spec := by
  intro n
  simp only [A004318, Nat.add_sub_cancel]

end A004318

/-! ## A004318.P15999174937206180688

`A007318(4*A027379(n+10))`
-/

namespace A004318.P15999174937206180688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (4 * A027379 (n + 10)).toNat

end

end A004318.P15999174937206180688

namespace A004318

/-- `A007318(4*A027379(n+10))` -/
def P15999174937206180688.Spec : Prop :=
  ∀ n, P15999174937206180688.a n = A004318 (n + 12)

end A004318

/-! ## A004318.P6302310059103398638

`A007318(A001844(n+12)+11)`
-/

namespace A004318.P6302310059103398638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001844 (n + 12) + 11).toNat

end

end A004318.P6302310059103398638

namespace A004318

/-- `A007318(A001844(n+12)+11)` -/
def P6302310059103398638.Spec : Prop :=
  ∀ n, P6302310059103398638.a n = A004318 (n + 12)

end A004318

/-! ## A004318.P14554138988032418941

`A007318(A014105(n+12)+n)`
-/

namespace A004318.P14554138988032418941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014105 (n + 12) + (n : ℤ)).toNat

end

end A004318.P14554138988032418941

namespace A004318

/-- `A007318(A014105(n+12)+n)` -/
def P14554138988032418941.Spec : Prop :=
  ∀ n, P14554138988032418941.a n = A004318 (n + 12)

end A004318

/-! ## A004318.P602785245833270630

`A007318(A014106(n+12)-n)`
-/

namespace A004318.P602785245833270630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014106 (n + 12) - (n : ℤ)).toNat

end

end A004318.P602785245833270630

namespace A004318

/-- `A007318(A014106(n+12)-n)` -/
def P602785245833270630.Spec : Prop :=
  ∀ n, P602785245833270630.a n = A004318 (n + 12)

end A004318

/-!
# A004319: a(n) = binomial(3*n, n - 1).

The programs for A004319, the canonical program `A004319.P4006279159723485780` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004319 has offset 1).

The definition of A004319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+1), n)` (program `A004319.P4006279159723485780`, by `A004319.P4006279159723485780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004319.P3223308323051499873

`(n+1)*A001764(n+1)`
-/

namespace A004319.P3223308323051499873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001764 (n + 1)

end

end A004319.P3223308323051499873

namespace A004319

/-- `(n+1)*A001764(n+1)` -/
def P3223308323051499873.Spec : Prop :=
  ∀ n, P3223308323051499873.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P12143773723633910859

`C(n+2, 2)*A000139(n+1)`
-/

namespace A004319.P12143773723633910859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A000139 (n + 1)

end

end A004319.P12143773723633910859

namespace A004319

/-- `C(n+2, 2)*A000139(n+1)` -/
def P12143773723633910859.Spec : Prop :=
  ∀ n, P12143773723633910859.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P4006279159723485780

`C(3*(n+1), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004319

/-- `C(3*(n+1), n)` -/
def P4006279159723485780.Spec : Prop :=
  ∀ n, (P4006279159723485780.a n : ℤ) = A004319 (n + 1)

theorem P4006279159723485780.correct : P4006279159723485780.Spec := by
  intro n
  simp only [A004319, Nat.add_sub_cancel]

end A004319

/-! ## A004319.P16717934732787805897

`A127040(Δ[n²])`
-/

namespace A004319.P16717934732787805897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004319.P16717934732787805897

namespace A004319

/-- `A127040(Δ[n²])` -/
def P16717934732787805897.Spec : Prop :=
  ∀ n, P16717934732787805897.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P8244242565835444450

`A175167(2*(n+1))`
-/

namespace A004319.P8244242565835444450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175167 (2 * (n + 1))

end

end A004319.P8244242565835444450

namespace A004319

/-- `A175167(2*(n+1))` -/
def P8244242565835444450.Spec : Prop :=
  ∀ n, P8244242565835444450.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P2293974347659178768

`A099576(Δ[n²])/2`
-/

namespace A004319.P2293974347659178768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099576 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A004319.P2293974347659178768

namespace A004319

/-- `A099576(Δ[n²])/2` -/
def P2293974347659178768.Spec : Prop :=
  ∀ n, P2293974347659178768.a n = (A004319 (n + 1) : ℚ)

end A004319

/-! ## A004319.P11817647289445584604

`A144484(∑[n+1]+1)`
-/

namespace A004319.P11817647289445584604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144484 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004319.P11817647289445584604

namespace A004319

/-- `A144484(∑[n+1]+1)` -/
def P11817647289445584604.Spec : Prop :=
  ∀ n, P11817647289445584604.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P15304360652962617944

`A156003(∑[n+1])-1`
-/

namespace A004319.P15304360652962617944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156003 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A004319.P15304360652962617944

namespace A004319

/-- `A156003(∑[n+1])-1` -/
def P15304360652962617944.Spec : Prop :=
  ∀ n, P15304360652962617944.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P14881462897181819026

`(n+1)*A127898(∑[n])`
-/

namespace A004319.P14881462897181819026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127898 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004319.P14881462897181819026

namespace A004319

/-- `(n+1)*A127898(∑[n])` -/
def P14881462897181819026.Spec : Prop :=
  ∀ n, P14881462897181819026.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P9772231312151008284

`(n+1)*record[A127898(n)]`
-/

namespace A004319.P9772231312151008284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004319.P9772231312151008284

namespace A004319

/-- `(n+1)*record[A127898(n)]` -/
def P9772231312151008284.Spec : Prop :=
  ∀ n, P9772231312151008284.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P9574152989284685084

`A048005(3*(n+1))+1`
-/

namespace A004319.P9574152989284685084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048005 (3 * (n + 1)) + 1

end

end A004319.P9574152989284685084

namespace A004319

/-- `A048005(3*(n+1))+1` -/
def P9574152989284685084.Spec : Prop :=
  ∀ n, P9574152989284685084.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P14081640702210953983

`A048016(3*(n+1))+1`
-/

namespace A004319.P14081640702210953983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048016 (3 * (n + 1)) + 1

end

end A004319.P14081640702210953983

namespace A004319

/-- `A048016(3*(n+1))+1` -/
def P14081640702210953983.Spec : Prop :=
  ∀ n, P14081640702210953983.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P15836063813124033756

`A048027(3*(n+1))+1`
-/

namespace A004319.P15836063813124033756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048027 (3 * (n + 1)) + 1

end

end A004319.P15836063813124033756

namespace A004319

/-- `A048027(3*(n+1))+1` -/
def P15836063813124033756.Spec : Prop :=
  ∀ n, P15836063813124033756.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P17799283243978782997

`(n+1)*A047761(Δ[n²])`
-/

namespace A004319.P17799283243978782997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047761 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004319.P17799283243978782997

namespace A004319

/-- `(n+1)*A047761(Δ[n²])` -/
def P17799283243978782997.Spec : Prop :=
  ∀ n, P17799283243978782997.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P9250849145246596526

`∑[n+1]*A000139(n+1)`
-/

namespace A004319.P9250849145246596526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000139 (n + 1)

end

end A004319.P9250849145246596526

namespace A004319

/-- `∑[n+1]*A000139(n+1)` -/
def P9250849145246596526.Spec : Prop :=
  ∀ n, P9250849145246596526.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P17262951037654547507

`(n+1)*A073147(∑[n+1])`
-/

namespace A004319.P17262951037654547507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073147 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004319.P17262951037654547507

namespace A004319

/-- `(n+1)*A073147(∑[n+1])` -/
def P17262951037654547507.Spec : Prop :=
  ∀ n, P17262951037654547507.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P7553192282255765661

`(n+1)*A110616(∑[n+1])`
-/

namespace A004319.P7553192282255765661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004319.P7553192282255765661

namespace A004319

/-- `(n+1)*A110616(∑[n+1])` -/
def P7553192282255765661.Spec : Prop :=
  ∀ n, P7553192282255765661.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P2834175547687092315

`1/2*A099576(2*n+1)`
-/

namespace A004319.P2834175547687092315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A099576 (2 * n + 1) : ℚ)

end

end A004319.P2834175547687092315

namespace A004319

/-- `1/2*A099576(2*n+1)` -/
def P2834175547687092315.Spec : Prop :=
  ∀ n, P2834175547687092315.a n = (A004319 (n + 1) : ℚ)

end A004319

/-! ## A004319.P375271683480283422

`(n+1)*A047749(2*(n+1))`
-/

namespace A004319.P375271683480283422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047749 (2 * (n + 1))

end

end A004319.P375271683480283422

namespace A004319

/-- `(n+1)*A047749(2*(n+1))` -/
def P375271683480283422.Spec : Prop :=
  ∀ n, P375271683480283422.a n = A004319 (n + 1)

end A004319

/-! ## A004319.P6230517144136535969

`lcm(n+1, A127040(2*n+1))`
-/

namespace A004319.P6230517144136535969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A127040 (2 * n + 1))

end

end A004319.P6230517144136535969

namespace A004319

/-- `lcm(n+1, A127040(2*n+1))` -/
def P6230517144136535969.Spec : Prop :=
  ∀ n, (P6230517144136535969.a n : ℤ) = A004319 (n + 1)

end A004319

/-!
# A004320: a(n) = n*(n+1)*(n+2)^2/6.

The programs for A004320, the canonical program `A004320.P14002366152847676600` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004320 has offset 0).

The definition of A004320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n+2)²/6` (program `A004320.P9806014913413560019`, by `A004320.P9806014913413560019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004320.P17479464620530957948

`(n+2)*C(n+2, 3)`
-/

namespace A004320.P17479464620530957948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose (n + 2) 3

end

end A004320.P17479464620530957948

namespace A004320

/-- `(n+2)*C(n+2, 3)` -/
def P17479464620530957948.Spec : Prop :=
  ∀ n, (P17479464620530957948.a n : ℤ) = A004320 n

end A004320

/-! ## A004320.P9806014913413560019

`n*(n+1)*(n+2)²/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004320.P9806014913413560019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) ^ 2 : ℚ) / 6

end

end A004320.P9806014913413560019

namespace A004320

/-- `n*(n+1)*(n+2)²/6` -/
def P9806014913413560019.Spec : Prop :=
  ∀ n, P9806014913413560019.a n = (A004320 n : ℚ)

theorem P9806014913413560019.correct : P9806014913413560019.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A004320, Nat.add_sub_cancel, A004320.P9806014913413560019.a, A004320.P14002366152847676600.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A004320, Nat.add_sub_cancel, A004320.P9806014913413560019.a, A004320.P14002366152847676600.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A004320

/-! ## A004320.P14002366152847676600

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=16, a(3)=50, a(4)=120`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004320

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14002366152847676600.Spec : Prop :=
  ∀ n, P14002366152847676600.a n = A004320 n

theorem P14002366152847676600.correct : P14002366152847676600.Spec := by
  intro n
  simp only [A004320]

end A004320

/-! ## A004320.P3185608615470884293

`(n+2)*A000292(n)`
-/

namespace A004320.P3185608615470884293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000292 n

end

end A004320.P3185608615470884293

namespace A004320

/-- `(n+2)*A000292(n)` -/
def P3185608615470884293.Spec : Prop :=
  ∀ n, P3185608615470884293.a n = A004320 n

end A004320

/-! ## A004320.P15416643329769251909

`3*A000332(n+3)+A000332(n+2)`
-/

namespace A004320.P15416643329769251909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (n + 3) + A000332 (n + 2)

end

end A004320.P15416643329769251909

namespace A004320

/-- `3*A000332(n+3)+A000332(n+2)` -/
def P15416643329769251909.Spec : Prop :=
  ∀ n, P15416643329769251909.a n = A004320 n

end A004320

/-! ## A004320.P15134284711716954831

`∑[∑[C(Δ[n²], 2)]]`
-/

namespace A004320.P15134284711716954831
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P15134284711716954831

namespace A004320

/-- `∑[∑[C(Δ[n²], 2)]]` -/
def P15134284711716954831.Spec : Prop :=
  ∀ n, (P15134284711716954831.a n : ℤ) = A004320 n

end A004320

/-! ## A004320.P17683107256474447204

`∑[∑[lcm(n, Δ[n²])]]`
-/

namespace A004320.P17683107256474447204
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P17683107256474447204

namespace A004320

/-- `∑[∑[lcm(n, Δ[n²])]]` -/
def P17683107256474447204.Spec : Prop :=
  ∀ n, (P17683107256474447204.a n : ℤ) = A004320 n

end A004320

/-! ## A004320.P18135821156700235180

`∑[∑[n*record[xor(1, n)]]]`
-/

namespace A004320.P18135821156700235180
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P18135821156700235180

namespace A004320

/-- `∑[∑[n*record[xor(1, n)]]]` -/
def P18135821156700235180.Spec : Prop :=
  ∀ n, (P18135821156700235180.a n : ℤ) = A004320 n

end A004320

/-! ## A004320.P13012825694842540033

`∑[∑[n*or(1, 2*n)]]`
-/

namespace A004320.P13012825694842540033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P13012825694842540033

namespace A004320

/-- `∑[∑[n*or(1, 2*n)]]` -/
def P13012825694842540033.Spec : Prop :=
  ∀ n, (P13012825694842540033.a n : ℤ) = A004320 n

end A004320

/-! ## A004320.P5580794664506823707

`∑[∑[n*xor(1, 2*n)]]`
-/

namespace A004320.P5580794664506823707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P5580794664506823707

namespace A004320

/-- `∑[∑[n*xor(1, 2*n)]]` -/
def P5580794664506823707.Spec : Prop :=
  ∀ n, (P5580794664506823707.a n : ℤ) = A004320 n

end A004320

/-! ## A004320.P7624203115002359575

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0, a(1)=3`
-/

namespace A004320.P7624203115002359575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P7624203115002359575

namespace A004320

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P7624203115002359575.Spec : Prop :=
  ∀ n, (P7624203115002359575.a n : ℤ) = A004320 n

end A004320

/-! ## A004320.P4842743674361455052

`∑[∑[∑[ogf((3x+x^2)/(1-2x+x^2))]]]`
-/

namespace A004320.P4842743674361455052
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P4842743674361455052

namespace A004320

/-- `∑[∑[∑[ogf((3x+x^2)/(1-2x+x^2))]]]` -/
def P4842743674361455052.Spec : Prop :=
  ∀ n, P4842743674361455052.a n = A004320 n

end A004320

/-! ## A004320.P6556317642450066936

`∑[∑[1-∑[a(n-1)-4]]]` with `a(0)=1`
-/

namespace A004320.P6556317642450066936
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P6556317642450066936

namespace A004320

/-- `∑[∑[1-∑[a(n-1)-4]]]` -/
def P6556317642450066936.Spec : Prop :=
  ∀ n, P6556317642450066936.a n = A004320 n

end A004320

/-! ## A004320.P4886969254356965378

`∑[∑[(2*n)²-C(2*n, 2)]]`
-/

namespace A004320.P4886969254356965378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.choose (2 * n) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P4886969254356965378

namespace A004320

/-- `∑[∑[(2*n)²-C(2*n, 2)]]` -/
def P4886969254356965378.Spec : Prop :=
  ∀ n, P4886969254356965378.a n = A004320 n

end A004320

/-! ## A004320.P12069917853468690770

`C(n+2, 2)²-∑[∑[(n+1)²]]`
-/

namespace A004320.P12069917853468690770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004320.P12069917853468690770

namespace A004320

/-- `C(n+2, 2)²-∑[∑[(n+1)²]]` -/
def P12069917853468690770.Spec : Prop :=
  ∀ n, P12069917853468690770.a n = A004320 n

end A004320

/-! ## A004320.P14296539800269956752

`∑[A016061(n)]`
-/

namespace A004320.P14296539800269956752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P14296539800269956752

namespace A004320

/-- `∑[A016061(n)]` -/
def P14296539800269956752.Spec : Prop :=
  ∀ n, P14296539800269956752.a n = A004320 n

end A004320

/-! ## A004320.P9875000681614793961

`∑[∑[A014105(n)]]`
-/

namespace A004320.P9875000681614793961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004320.P9875000681614793961

namespace A004320

/-- `∑[∑[A014105(n)]]` -/
def P9875000681614793961.Spec : Prop :=
  ∀ n, P9875000681614793961.a n = A004320 n

end A004320

/-!
# A004321: Binomial coefficient C(3n, n-3).

The programs for A004321, the canonical program `A004321.P16262195378466220526` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004321 has offset 3).

The definition of A004321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+3), n)` (program `A004321.P16262195378466220526`, by `A004321.P16262195378466220526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004321.P16262195378466220526

`C(3*(n+3), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004321

/-- `C(3*(n+3), n)` -/
def P16262195378466220526.Spec : Prop :=
  ∀ n, (P16262195378466220526.a n : ℤ) = A004321 (n + 3)

theorem P16262195378466220526.correct : P16262195378466220526.Spec := by
  intro n
  simp only [A004321, Nat.add_sub_cancel]

end A004321

/-! ## A004321.P17567084061871083875

`(n+3)/3*A230547(n)`
-/

namespace A004321.P17567084061871083875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A230547 n : ℚ)

end

end A004321.P17567084061871083875

namespace A004321

/-- `(n+3)/3*A230547(n)` -/
def P17567084061871083875.Spec : Prop :=
  ∀ n, P17567084061871083875.a n = (A004321 (n + 3) : ℚ)

end A004321

/-! ## A004321.P17703679494549863431

`A116089(Δ[A037237(n)])`
-/

namespace A004321.P17703679494549863431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (f1 (n + 1) - f1 n).toNat

end

end A004321.P17703679494549863431

namespace A004321

/-- `A116089(Δ[A037237(n)])` -/
def P17703679494549863431.Spec : Prop :=
  ∀ n, P17703679494549863431.a n = A004321 (n + 3)

end A004321

/-! ## A004321.P7265123851867748192

`A116089(A268581(n)+4)`
-/

namespace A004321.P7265123851867748192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A268581 n + 4).toNat

end

end A004321.P7265123851867748192

namespace A004321

/-- `A116089(A268581(n)+4)` -/
def P7265123851867748192.Spec : Prop :=
  ∀ n, P7265123851867748192.a n = A004321 (n + 3)

end A004321

/-! ## A004321.P4935194806068514938

`A116089(A005408((n+2)²))`
-/

namespace A004321.P4935194806068514938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A005408 ((n + 2) ^ 2)).toNat

end

end A004321.P4935194806068514938

namespace A004321

/-- `A116089(A005408((n+2)²))` -/
def P4935194806068514938.Spec : Prop :=
  ∀ n, P4935194806068514938.a n = A004321 (n + 3)

end A004321

/-! ## A004321.P11628138561740565603

`record[A116089(A005893(n)-1)]`
-/

namespace A004321.P11628138561740565603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A005893 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004321.P11628138561740565603

namespace A004321

/-- `record[A116089(A005893(n)-1)]` -/
def P11628138561740565603.Spec : Prop :=
  ∀ n, P11628138561740565603.a n = A004321 (n + 3)

end A004321

/-! ## A004321.P17080371685484393950

`A116089(A037237(n+1)-A037237(n))`
-/

namespace A004321.P17080371685484393950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A037237 (n + 1) - A037237 n).toNat

end

end A004321.P17080371685484393950

namespace A004321

/-- `A116089(A037237(n+1)-A037237(n))` -/
def P17080371685484393950.Spec : Prop :=
  ∀ n, P17080371685484393950.a n = A004321 (n + 3)

end A004321

/-! ## A004321.P14272109182240394141

`A078812(A051890(n+3))`
-/

namespace A004321.P14272109182240394141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A051890 (n + 3)).toNat

end

end A004321.P14272109182240394141

namespace A004321

/-- `A078812(A051890(n+3))` -/
def P14272109182240394141.Spec : Prop :=
  ∀ n, P14272109182240394141.a n = A004321 (n + 3)

end A004321

/-! ## A004321.P17021365991882176851

`A078812(A099776(n+2)+1)`
-/

namespace A004321.P17021365991882176851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A099776 (n + 2) + 1).toNat

end

end A004321.P17021365991882176851

namespace A004321

/-- `A078812(A099776(n+2)+1)` -/
def P17021365991882176851.Spec : Prop :=
  ∀ n, P17021365991882176851.a n = A004321 (n + 3)

end A004321

/-! ## A004321.P1095447169478343984

`A078812(eq[2, A056951(n+1)-2])`
-/

namespace A004321.P1095447169478343984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004321.P1095447169478343984

namespace A004321

/-- `A078812(eq[2, A056951(n+1)-2])` -/
def P1095447169478343984.Spec : Prop :=
  ∀ n, P1095447169478343984.a n = A004321 (n + 3)

end A004321

/-!
# A004322: Binomial coefficient C(3n,n-4).

The programs for A004322, the canonical program `A004322.P2694235280448798755` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004322 has offset 4).

The definition of A004322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+4), n)` (program `A004322.P2694235280448798755`, by `A004322.P2694235280448798755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004322.P2694235280448798755

`C(3*(n+4), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004322

/-- `C(3*(n+4), n)` -/
def P2694235280448798755.Spec : Prop :=
  ∀ n, (P2694235280448798755.a n : ℤ) = A004322 (n + 4)

theorem P2694235280448798755.correct : P2694235280448798755.Spec := by
  intro n
  simp only [A004322, Nat.add_sub_cancel]

end A004322

/-! ## A004322.P9273385584429603331

`record[A116089(A051890(n))]`
-/

namespace A004322.P9273385584429603331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A051890 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004322.P9273385584429603331

namespace A004322

/-- `record[A116089(A051890(n))]` -/
def P9273385584429603331.Spec : Prop :=
  ∀ n, P9273385584429603331.a n = A004322 (n + 4)

end A004322

/-! ## A004322.P13584326360341061646

`A116089(A152813(n)+11)`
-/

namespace A004322.P13584326360341061646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A152813 n + 11).toNat

end

end A004322.P13584326360341061646

namespace A004322

/-- `A116089(A152813(n)+11)` -/
def P13584326360341061646.Spec : Prop :=
  ∀ n, P13584326360341061646.a n = A004322 (n + 4)

end A004322

/-! ## A004322.P1334979566418259517

`record[A116089(A016825(∑[n]))]`
-/

namespace A004322.P1334979566418259517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A016825 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004322.P1334979566418259517

namespace A004322

/-- `record[A116089(A016825(∑[n]))]` -/
def P1334979566418259517.Spec : Prop :=
  ∀ n, P1334979566418259517.a n = A004322 (n + 4)

end A004322

/-! ## A004322.P372756901512309591

`A116089(A016825(∑[n+2]+1))`
-/

namespace A004322.P372756901512309591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A004322.P372756901512309591

namespace A004322

/-- `A116089(A016825(∑[n+2]+1))` -/
def P372756901512309591.Spec : Prop :=
  ∀ n, P372756901512309591.a n = A004322 (n + 4)

end A004322

/-! ## A004322.P13656198457545565329

`A210551(A268581(n+1))`
-/

namespace A004322.P13656198457545565329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210551 (A268581 (n + 1)).toNat

end

end A004322.P13656198457545565329

namespace A004322

/-- `A210551(A268581(n+1))` -/
def P13656198457545565329.Spec : Prop :=
  ∀ n, P13656198457545565329.a n = A004322 (n + 4)

end A004322

/-! ## A004322.P17011181350143314878

`A054142(A014105(n+3)+n)`
-/

namespace A004322.P17011181350143314878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A014105 (n + 3) + (n : ℤ)).toNat

end

end A004322.P17011181350143314878

namespace A004322

/-- `A054142(A014105(n+3)+n)` -/
def P17011181350143314878.Spec : Prop :=
  ∀ n, P17011181350143314878.a n = A004322 (n + 4)

end A004322

/-! ## A004322.P576848337452112412

`record[A165253(A005893(n))]`
-/

namespace A004322.P576848337452112412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (A005893 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004322.P576848337452112412

namespace A004322

/-- `record[A165253(A005893(n))]` -/
def P576848337452112412.Spec : Prop :=
  ∀ n, P576848337452112412.a n = A004322 (n + 4)

end A004322

/-!
# A004323: Binomial coefficient C(3n,n-5).

The programs for A004323, the canonical program `A004323.P476625037032507599` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004323 has offset 5).

The definition of A004323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+5), n)` (program `A004323.P476625037032507599`, by `A004323.P476625037032507599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004323.P476625037032507599

`C(3*(n+5), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004323

/-- `C(3*(n+5), n)` -/
def P476625037032507599.Spec : Prop :=
  ∀ n, (P476625037032507599.a n : ℤ) = A004323 (n + 5)

theorem P476625037032507599.correct : P476625037032507599.Spec := by
  intro n
  simp only [A004323, Nat.add_sub_cancel]

end A004323

/-! ## A004323.P1836556617011188269

`record[C(A204502(n+1), A004273(n))]`
-/

namespace A004323.P1836556617011188269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204502 (n + 1)).toNat (A004273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004323.P1836556617011188269

namespace A004323

/-- `record[C(A204502(n+1), A004273(n))]` -/
def P1836556617011188269.Spec : Prop :=
  ∀ n, (P1836556617011188269.a n : ℤ) = A004323 (n + 5)

end A004323

/-! ## A004323.P14166432061535398180

`A116089(A268581(n+1)+5)`
-/

namespace A004323.P14166432061535398180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A268581 (n + 1) + 5).toNat

end

end A004323.P14166432061535398180

namespace A004323

/-- `A116089(A268581(n+1)+5)` -/
def P14166432061535398180.Spec : Prop :=
  ∀ n, P14166432061535398180.a n = A004323 (n + 5)

end A004323

/-! ## A004323.P1351425143754301782

`A116089(Δ[A037237(n+1)]+1)`
-/

namespace A004323.P1351425143754301782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (f1 (n + 1) - f1 n + 1).toNat

end

end A004323.P1351425143754301782

namespace A004323

/-- `A116089(Δ[A037237(n+1)]+1)` -/
def P1351425143754301782.Spec : Prop :=
  ∀ n, P1351425143754301782.a n = A004323 (n + 5)

end A004323

/-! ## A004323.P1960723092938622560

`A011973(A020744(n)²+n)`
-/

namespace A004323.P1960723092938622560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A020744 n ^ 2 + (n : ℤ)).toNat

end

end A004323.P1960723092938622560

namespace A004323

/-- `A011973(A020744(n)²+n)` -/
def P1960723092938622560.Spec : Prop :=
  ∀ n, P1960723092938622560.a n = A004323 (n + 5)

end A004323

/-!
# A004324: Binomial coefficient C(3n,n-6).

The programs for A004324, the canonical program `A004324.P14541814770846592696` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004324 has offset 6).

The definition of A004324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+6), n)` (program `A004324.P14541814770846592696`, by `A004324.P14541814770846592696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004324.P14541814770846592696

`C(3*(n+6), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004324

/-- `C(3*(n+6), n)` -/
def P14541814770846592696.Spec : Prop :=
  ∀ n, (P14541814770846592696.a n : ℤ) = A004324 (n + 6)

theorem P14541814770846592696.correct : P14541814770846592696.Spec := by
  intro n
  simp only [A004324, Nat.add_sub_cancel]

end A004324

/-! ## A004324.P9363841783553871454

`A116089(A097080(n+4))`
-/

namespace A004324.P9363841783553871454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A097080 (n + 4)).toNat

end

end A004324.P9363841783553871454

namespace A004324

/-- `A116089(A097080(n+4))` -/
def P9363841783553871454.Spec : Prop :=
  ∀ n, P9363841783553871454.a n = A004324 (n + 6)

end A004324

/-! ## A004324.P5381216832797529244

`A165253(A001844(n+5)+3)`
-/

namespace A004324.P5381216832797529244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (A001844 (n + 5) + 3).toNat

end

end A004324.P5381216832797529244

namespace A004324

/-- `A165253(A001844(n+5)+3)` -/
def P5381216832797529244.Spec : Prop :=
  ∀ n, P5381216832797529244.a n = A004324 (n + 6)

end A004324

/-! ## A004324.P315766007150760162

`A165253(4*A000124(n+5))`
-/

namespace A004324.P315766007150760162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (4 * A000124 (n + 5)).toNat

end

end A004324.P315766007150760162

namespace A004324

/-- `A165253(4*A000124(n+5))` -/
def P315766007150760162.Spec : Prop :=
  ∀ n, P315766007150760162.a n = A004324 (n + 6)

end A004324

/-! ## A004324.P9666279956796852960

`A011973(A002939(n+5)+n)`
-/

namespace A004324.P9666279956796852960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A002939 (n + 5) + (n : ℤ)).toNat

end

end A004324.P9666279956796852960

namespace A004324

/-- `A011973(A002939(n+5)+n)` -/
def P9666279956796852960.Spec : Prop :=
  ∀ n, P9666279956796852960.a n = A004324 (n + 6)

end A004324

/-!
# A004325: Binomial coefficient C(3n,n-7).

The programs for A004325, the canonical program `A004325.P7149170186350937984` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004325 has offset 7).

The definition of A004325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+7), n)` (program `A004325.P7149170186350937984`, by `A004325.P7149170186350937984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004325.P7149170186350937984

`C(3*(n+7), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004325

/-- `C(3*(n+7), n)` -/
def P7149170186350937984.Spec : Prop :=
  ∀ n, (P7149170186350937984.a n : ℤ) = A004325 (n + 7)

theorem P7149170186350937984.correct : P7149170186350937984.Spec := by
  intro n
  simp only [A004325, Nat.add_sub_cancel]

end A004325

/-! ## A004325.P11279020716403571832

`record[A116089(A005893(n)+1)]`
-/

namespace A004325.P11279020716403571832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A005893 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004325.P11279020716403571832

namespace A004325

/-- `record[A116089(A005893(n)+1)]` -/
def P11279020716403571832.Spec : Prop :=
  ∀ n, P11279020716403571832.a n = A004325 (n + 7)

end A004325

/-! ## A004325.P590196249934721235

`A078812((n+4)²+(n+7)²)`
-/

namespace A004325.P590196249934721235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 ((n + 4) ^ 2 + (n + 7) ^ 2)

end

end A004325.P590196249934721235

namespace A004325

/-- `A078812((n+4)²+(n+7)²)` -/
def P590196249934721235.Spec : Prop :=
  ∀ n, P590196249934721235.a n = A004325 (n + 7)

end A004325

/-! ## A004325.P14805074008081535439

`A172431(4*A000096(n+4))`
-/

namespace A004325.P14805074008081535439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (4 * A000096 (n + 4)).toNat

end

end A004325.P14805074008081535439

namespace A004325

/-- `A172431(4*A000096(n+4))` -/
def P14805074008081535439.Spec : Prop :=
  ∀ n, P14805074008081535439.a n = A004325 (n + 7)

end A004325

/-! ## A004325.P7697799932498056237

`A011973(A020742(n+2)²+n)`
-/

namespace A004325.P7697799932498056237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A020742 (n + 2) ^ 2 + (n : ℤ)).toNat

end

end A004325.P7697799932498056237

namespace A004325

/-- `A011973(A020742(n+2)²+n)` -/
def P7697799932498056237.Spec : Prop :=
  ∀ n, P7697799932498056237.a n = A004325 (n + 7)

end A004325

/-!
# A004326: Binomial coefficient C(3n,n-8).

The programs for A004326, the canonical program `A004326.P4364187478862340335` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004326 has offset 8).

The definition of A004326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+8), n)` (program `A004326.P4364187478862340335`, by `A004326.P4364187478862340335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004326.P4364187478862340335

`C(3*(n+8), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004326

/-- `C(3*(n+8), n)` -/
def P4364187478862340335.Spec : Prop :=
  ∀ n, (P4364187478862340335.a n : ℤ) = A004326 (n + 8)

theorem P4364187478862340335.correct : P4364187478862340335.Spec := by
  intro n
  simp only [A004326, Nat.add_sub_cancel]

end A004326

/-! ## A004326.P7974801380371777788

`A085478(A001844(n+6)+5)`
-/

namespace A004326.P7974801380371777788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A001844 (n + 6) + 5).toNat

end

end A004326.P7974801380371777788

namespace A004326

/-- `A085478(A001844(n+6)+5)` -/
def P7974801380371777788.Spec : Prop :=
  ∀ n, P7974801380371777788.a n = A004326 (n + 8)

end A004326

/-! ## A004326.P15359488337703000750

`A258993(A014105(n+6)-n+1)`
-/

namespace A004326.P15359488337703000750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258993 (A014105 (n + 6) - (n : ℤ) + 1).toNat

end

end A004326.P15359488337703000750

namespace A004326

/-- `A258993(A014105(n+6)-n+1)` -/
def P15359488337703000750.Spec : Prop :=
  ∀ n, P15359488337703000750.a n = A004326 (n + 8)

end A004326

/-! ## A004326.P8693398576891897653

`A030111(A005900(n+8)-A005900(n+4))`
-/

namespace A004326.P8693398576891897653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A005900 (n + 8) - A005900 (n + 4)).toNat

end

end A004326.P8693398576891897653

namespace A004326

/-- `A030111(A005900(n+8)-A005900(n+4))` -/
def P8693398576891897653.Spec : Prop :=
  ∀ n, P8693398576891897653.a n = A004326 (n + 8)

end A004326

/-! ## A004326.P12721083228942080568

`A065941(A005408(n+7)*A008586(n+5))`
-/

namespace A004326.P12721083228942080568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A005408 (n + 7) * A008586 (n + 5)).toNat

end

end A004326.P12721083228942080568

namespace A004326

/-- `A065941(A005408(n+7)*A008586(n+5))` -/
def P12721083228942080568.Spec : Prop :=
  ∀ n, P12721083228942080568.a n = A004326 (n + 8)

end A004326

/-!
# A004327: Binomial coefficient C(3n,n-9).

The programs for A004327, the canonical program `A004327.P14931429077249547353` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004327 has offset 9).

The definition of A004327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+9), n)` (program `A004327.P14931429077249547353`, by `A004327.P14931429077249547353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004327.P14931429077249547353

`C(3*(n+9), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004327

/-- `C(3*(n+9), n)` -/
def P14931429077249547353.Spec : Prop :=
  ∀ n, (P14931429077249547353.a n : ℤ) = A004327 (n + 9)

theorem P14931429077249547353.correct : P14931429077249547353.Spec := by
  intro n
  simp only [A004327, Nat.add_sub_cancel]

end A004327

/-! ## A004327.P2245675620030681722

`A116089(A000326(n+6)+A000217(n+2))`
-/

namespace A004327.P2245675620030681722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A000326 (n + 6) + A000217 (n + 2)).toNat

end

end A004327.P2245675620030681722

namespace A004327

/-- `A116089(A000326(n+6)+A000217(n+2))` -/
def P2245675620030681722.Spec : Prop :=
  ∀ n, P2245675620030681722.a n = A004327 (n + 9)

end A004327

/-! ## A004327.P2118123720572372944

`A078812(eq[13, A056951(n+1)])`
-/

namespace A004327.P2118123720572372944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004327.P2118123720572372944

namespace A004327

/-- `A078812(eq[13, A056951(n+1)])` -/
def P2118123720572372944.Spec : Prop :=
  ∀ n, P2118123720572372944.a n = A004327 (n + 9)

end A004327

/-! ## A004327.P8343843574555698484

`A078812(eq[27, A253146(n+1)])`
-/

namespace A004327.P8343843574555698484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004327.P8343843574555698484

namespace A004327

/-- `A078812(eq[27, A253146(n+1)])` -/
def P8343843574555698484.Spec : Prop :=
  ∀ n, P8343843574555698484.a n = A004327 (n + 9)

end A004327

/-! ## A004327.P17581437577970887112

`A007318(A027468(n+9)-n)`
-/

namespace A004327.P17581437577970887112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A027468 (n + 9) - (n : ℤ)).toNat

end

end A004327.P17581437577970887112

namespace A004327

/-- `A007318(A027468(n+9)-n)` -/
def P17581437577970887112.Spec : Prop :=
  ∀ n, P17581437577970887112.a n = A004327 (n + 9)

end A004327

/-!
# A004328: Binomial coefficient C(3n,n-10).

The programs for A004328, the canonical program `A004328.P6033343313753835088` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004328 has offset 10).

The definition of A004328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+10), n)` (program `A004328.P6033343313753835088`, by `A004328.P6033343313753835088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004328.P6033343313753835088

`C(3*(n+10), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004328

/-- `C(3*(n+10), n)` -/
def P6033343313753835088.Spec : Prop :=
  ∀ n, (P6033343313753835088.a n : ℤ) = A004328 (n + 10)

theorem P6033343313753835088.correct : P6033343313753835088.Spec := by
  intro n
  simp only [A004328, Nat.add_sub_cancel]

end A004328

/-! ## A004328.P18042734865263367359

`A116089((n+4)²+(n+7)²)`
-/

namespace A004328.P18042734865263367359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 ((n + 4) ^ 2 + (n + 7) ^ 2)

end

end A004328.P18042734865263367359

namespace A004328

/-- `A116089((n+4)²+(n+7)²)` -/
def P18042734865263367359.Spec : Prop :=
  ∀ n, P18042734865263367359.a n = A004328 (n + 10)

end A004328

/-! ## A004328.P10583705291809961391

`round(sqrt(C(A008585(n+9)+3, n)²+1))`
-/

namespace A004328.P10583705291809961391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (A008585 (n + 9) + 3).toNat n ^ 2 + 1 : ℝ))

end

end A004328.P10583705291809961391

namespace A004328

/-- `round(sqrt(C(A008585(n+9)+3, n)²+1))` -/
def P10583705291809961391.Spec : Prop :=
  ∀ n, P10583705291809961391.a n = A004328 (n + 10)

end A004328

/-!
# A004329: Binomial coefficient C(3n,n-11).

The programs for A004329, the canonical program `A004329.P7227341567431744237` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004329 has offset 11).

The definition of A004329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+11), n)` (program `A004329.P7227341567431744237`, by `A004329.P7227341567431744237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004329.P7227341567431744237

`C(3*(n+11), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004329

/-- `C(3*(n+11), n)` -/
def P7227341567431744237.Spec : Prop :=
  ∀ n, (P7227341567431744237.a n : ℤ) = A004329 (n + 11)

theorem P7227341567431744237.correct : P7227341567431744237.Spec := by
  intro n
  simp only [A004329, Nat.add_sub_cancel]

end A004329

/-! ## A004329.P14500939912921066906

`A011973(A224535(n+1)²+n)`
-/

namespace A004329.P14500939912921066906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A224535 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A004329.P14500939912921066906

namespace A004329

/-- `A011973(A224535(n+1)²+n)` -/
def P14500939912921066906.Spec : Prop :=
  ∀ n, P14500939912921066906.a n = A004329 (n + 11)

end A004329

/-! ## A004329.P15075060980419473661

`record[C(A097449(3*n), A097462(n))]`
-/

namespace A004329.P15075060980419473661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097449 (3 * n)).toNat (A097462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004329.P15075060980419473661

namespace A004329

/-- `record[C(A097449(3*n), A097462(n))]` -/
def P15075060980419473661.Spec : Prop :=
  ∀ n, (P15075060980419473661.a n : ℤ) = A004329 (n + 11)

end A004329

/-!
# A004330: Binomial coefficient C(3n,n-12).

The programs for A004330, the canonical program `A004330.P16866913623434683392` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004330 has offset 12).

The definition of A004330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+12), n)` (program `A004330.P16866913623434683392`, by `A004330.P16866913623434683392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004330.P16866913623434683392

`C(3*(n+12), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004330

/-- `C(3*(n+12), n)` -/
def P16866913623434683392.Spec : Prop :=
  ∀ n, (P16866913623434683392.a n : ℤ) = A004330 (n + 12)

theorem P16866913623434683392.correct : P16866913623434683392.Spec := by
  intro n
  simp only [A004330, Nat.add_sub_cancel]

end A004330

/-! ## A004330.P3274483578911614426

`A007318(A017101(A000124(n+12))+A000124(n+11))`
-/

namespace A004330.P3274483578911614426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A017101 (A000124 (n + 12)).toNat + A000124 (n + 11)).toNat

end

end A004330.P3274483578911614426

namespace A004330

/-- `A007318(A017101(A000124(n+12))+A000124(n+11))` -/
def P3274483578911614426.Spec : Prop :=
  ∀ n, P3274483578911614426.a n = A004330 (n + 12)

end A004330

/-! ## A004330.P16929978670173925980

`A071919(A051682(n+13)-12)`
-/

namespace A004330.P16929978670173925980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A051682 (n + 13) - 12).toNat

end

end A004330.P16929978670173925980

namespace A004330

/-- `A071919(A051682(n+13)-12)` -/
def P16929978670173925980.Spec : Prop :=
  ∀ n, P16929978670173925980.a n = A004330 (n + 12)

end A004330

/-!
# A004331: Binomial coefficient C(4n,n-1).

The programs for A004331, the canonical program `A004331.P2361285616106489461` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004331 has offset 1).

The definition of A004331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+1), n)` (program `A004331.P2361285616106489461`, by `A004331.P2361285616106489461.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004331.P2361285616106489461

`C(4*(n+1), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004331

/-- `C(4*(n+1), n)` -/
def P2361285616106489461.Spec : Prop :=
  ∀ n, (P2361285616106489461.a n : ℤ) = A004331 (n + 1)

theorem P2361285616106489461.correct : P2361285616106489461.Spec := by
  intro n
  simp only [A004331, Nat.add_sub_cancel]

end A004331

/-! ## A004331.P8053934310919869715

`(n+1)*A002293(n+1)`
-/

namespace A004331.P8053934310919869715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002293 (n + 1)

end

end A004331.P8053934310919869715

namespace A004331

/-- `(n+1)*A002293(n+1)` -/
def P8053934310919869715.Spec : Prop :=
  ∀ n, P8053934310919869715.a n = A004331 (n + 1)

end A004331

/-! ## A004331.P1402151286627187750

`(n+1)*A069270(∑[n+2])`
-/

namespace A004331.P1402151286627187750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069270 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004331.P1402151286627187750

namespace A004331

/-- `(n+1)*A069270(∑[n+2])` -/
def P1402151286627187750.Spec : Prop :=
  ∀ n, P1402151286627187750.a n = A004331 (n + 1)

end A004331

/-! ## A004331.P6521298870879371571

`(n+1)*A369082(2*(n+1))`
-/

namespace A004331.P6521298870879371571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369082 (2 * (n + 1))

end

end A004331.P6521298870879371571

namespace A004331

/-- `(n+1)*A369082(2*(n+1))` -/
def P6521298870879371571.Spec : Prop :=
  ∀ n, P6521298870879371571.a n = A004331 (n + 1)

end A004331

/-! ## A004331.P12184022785118501785

`(n+1)*A369472(2*(n+1))`
-/

namespace A004331.P12184022785118501785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369472 (2 * (n + 1))

end

end A004331.P12184022785118501785

namespace A004331

/-- `(n+1)*A369472(2*(n+1))` -/
def P12184022785118501785.Spec : Prop :=
  ∀ n, P12184022785118501785.a n = A004331 (n + 1)

end A004331

/-! ## A004331.P16693112728509551344

`(n+1)*A124753(3*(n+1))`
-/

namespace A004331.P16693112728509551344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A124753 (3 * (n + 1))

end

end A004331.P16693112728509551344

namespace A004331

/-- `(n+1)*A124753(3*(n+1))` -/
def P16693112728509551344.Spec : Prop :=
  ∀ n, P16693112728509551344.a n = A004331 (n + 1)

end A004331

/-! ## A004331.P5798434333929286075

`A052203(n+1)-A005810(n+1)`
-/

namespace A004331.P5798434333929286075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052203 (n + 1) - A005810 (n + 1)

end

end A004331.P5798434333929286075

namespace A004331

/-- `A052203(n+1)-A005810(n+1)` -/
def P5798434333929286075.Spec : Prop :=
  ∀ n, P5798434333929286075.a n = A004331 (n + 1)

end A004331

/-! ## A004331.P5407202882178680725

`A052204(n+1)-A052203(n+1)`
-/

namespace A004331.P5407202882178680725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052204 (n + 1) - A052203 (n + 1)

end

end A004331.P5407202882178680725

namespace A004331

/-- `A052204(n+1)-A052203(n+1)` -/
def P5407202882178680725.Spec : Prop :=
  ∀ n, P5407202882178680725.a n = A004331 (n + 1)

end A004331

/-! ## A004331.P18139322884774739332

`A005810(n+1)-A126596(n+1)`
-/

namespace A004331.P18139322884774739332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 (n + 1) - A126596 (n + 1)

end

end A004331.P18139322884774739332

namespace A004331

/-- `A005810(n+1)-A126596(n+1)` -/
def P18139322884774739332.Spec : Prop :=
  ∀ n, P18139322884774739332.a n = A004331 (n + 1)

end A004331

/-! ## A004331.P14703469415836421627

`A005810(n+1)-A208983(2*(n+1))`
-/

namespace A004331.P14703469415836421627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 (n + 1) - A208983 (2 * (n + 1))

end

end A004331.P14703469415836421627

namespace A004331

/-- `A005810(n+1)-A208983(2*(n+1))` -/
def P14703469415836421627.Spec : Prop :=
  ∀ n, P14703469415836421627.a n = A004331 (n + 1)

end A004331

/-! ## A004331.P14830930174490721017

`(A126596(n+1)-A002293(n+1))/2`
-/

namespace A004331.P14830930174490721017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126596 (n + 1) - A002293 (n + 1) : ℚ) / 2

end

end A004331.P14830930174490721017

namespace A004331

/-- `(A126596(n+1)-A002293(n+1))/2` -/
def P14830930174490721017.Spec : Prop :=
  ∀ n, P14830930174490721017.a n = (A004331 (n + 1) : ℚ)

end A004331

/-!
# A004332: a(n) = C(4n,n-2).

The programs for A004332, the canonical program `A004332.P12347699672285417764` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004332 has offset 2).

The definition of A004332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+2), n)` (program `A004332.P12347699672285417764`, by `A004332.P12347699672285417764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004332.P12347699672285417764

`C(4*(n+2), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004332

/-- `C(4*(n+2), n)` -/
def P12347699672285417764.Spec : Prop :=
  ∀ n, (P12347699672285417764.a n : ℤ) = A004332 (n + 2)

theorem P12347699672285417764.correct : P12347699672285417764.Spec := by
  intro n
  simp only [A004332, Nat.add_sub_cancel]

end A004332

/-! ## A004332.P2867040470220533422

`A283049(n+2)/4`
-/

namespace A004332.P2867040470220533422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283049 (n + 2) : ℚ) / 4

end

end A004332.P2867040470220533422

namespace A004332

/-- `A283049(n+2)/4` -/
def P2867040470220533422.Spec : Prop :=
  ∀ n, P2867040470220533422.a n = (A004332 (n + 2) : ℚ)

end A004332

/-! ## A004332.P15868963250475042287

`(n+1)/5*A196678(n+1)`
-/

namespace A004332.P15868963250475042287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 5 * (A196678 (n + 1) : ℚ)

end

end A004332.P15868963250475042287

namespace A004332

/-- `(n+1)/5*A196678(n+1)` -/
def P15868963250475042287.Spec : Prop :=
  ∀ n, P15868963250475042287.a n = (A004332 (n + 2) : ℚ)

end A004332

/-! ## A004332.P16011339807379581288

`record[C(A257846(2*n), n)]`
-/

namespace A004332.P16011339807379581288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257846 (2 * n)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004332.P16011339807379581288

namespace A004332

/-- `record[C(A257846(2*n), n)]` -/
def P16011339807379581288.Spec : Prop :=
  ∀ n, (P16011339807379581288.a n : ℤ) = A004332 (n + 2)

end A004332

/-! ## A004332.P1422344022448279814

`record[C(A019425(n), A014682(n))]`
-/

namespace A004332.P1422344022448279814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A019425 n).toNat (A014682 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004332.P1422344022448279814

namespace A004332

/-- `record[C(A019425(n), A014682(n))]` -/
def P1422344022448279814.Spec : Prop :=
  ∀ n, (P1422344022448279814.a n : ℤ) = A004332 (n + 2)

end A004332

/-! ## A004332.P3826852312787631585

`record[C(A271478(n+3), A271478(n))]`
-/

namespace A004332.P3826852312787631585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A271478 (n + 3)).toNat (A271478 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004332.P3826852312787631585

namespace A004332

/-- `record[C(A271478(n+3), A271478(n))]` -/
def P3826852312787631585.Spec : Prop :=
  ∀ n, (P3826852312787631585.a n : ℤ) = A004332 (n + 2)

end A004332

/-! ## A004332.P6593680380572280264

`A173621(∑[n+2])`
-/

namespace A004332.P6593680380572280264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004332.P6593680380572280264

namespace A004332

/-- `A173621(∑[n+2])` -/
def P6593680380572280264.Spec : Prop :=
  ∀ n, P6593680380572280264.a n = A004332 (n + 2)

end A004332

/-! ## A004332.P14246292506018718583

`A034870(Δ[A028552(n)]²+n)`
-/

namespace A004332.P14246292506018718583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ)).toNat

end

end A004332.P14246292506018718583

namespace A004332

/-- `A034870(Δ[A028552(n)]²+n)` -/
def P14246292506018718583.Spec : Prop :=
  ∀ n, P14246292506018718583.a n = A004332 (n + 2)

end A004332

/-! ## A004332.P8267664089405276331

`A127893((n+1)²+(n+2)²)`
-/

namespace A004332.P8267664089405276331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127893 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A004332.P8267664089405276331

namespace A004332

/-- `A127893((n+1)²+(n+2)²)` -/
def P8267664089405276331.Spec : Prop :=
  ∀ n, P8267664089405276331.a n = A004332 (n + 2)

end A004332

/-! ## A004332.P14170876623874784296

`A062344(A090288(n+1))`
-/

namespace A004332.P14170876623874784296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A090288 (n + 1)).toNat

end

end A004332.P14170876623874784296

namespace A004332

/-- `A062344(A090288(n+1))` -/
def P14170876623874784296.Spec : Prop :=
  ∀ n, P14170876623874784296.a n = A004332 (n + 2)

end A004332

/-!
# A004333: Binomial coefficient C(4n,n-3).

The programs for A004333, the canonical program `A004333.P18262644246616742494` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004333 has offset 3).

The definition of A004333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+3), n)` (program `A004333.P18262644246616742494`, by `A004333.P18262644246616742494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004333.P18262644246616742494

`C(4*(n+3), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004333

/-- `C(4*(n+3), n)` -/
def P18262644246616742494.Spec : Prop :=
  ∀ n, (P18262644246616742494.a n : ℤ) = A004333 (n + 3)

theorem P18262644246616742494.correct : P18262644246616742494.Spec := by
  intro n
  simp only [A004333, Nat.add_sub_cancel]

end A004333

/-! ## A004333.P9850098452004335521

`A119304(eq[4, A002262(n)])`
-/

namespace A004333.P9850098452004335521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004333.P9850098452004335521

namespace A004333

/-- `A119304(eq[4, A002262(n)])` -/
def P9850098452004335521.Spec : Prop :=
  ∀ n, P9850098452004335521.a n = A004333 (n + 3)

end A004333

/-! ## A004333.P1682955893405731778

`record[C(A271478(n+5), A271478(n))]`
-/

namespace A004333.P1682955893405731778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A271478 (n + 5)).toNat (A271478 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004333.P1682955893405731778

namespace A004333

/-- `record[C(A271478(n+5), A271478(n))]` -/
def P1682955893405731778.Spec : Prop :=
  ∀ n, (P1682955893405731778.a n : ℤ) = A004333 (n + 3)

end A004333

/-! ## A004333.P15887153325973794938

`A193636(A090288(n+1))`
-/

namespace A004333.P15887153325973794938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A090288 (n + 1)).toNat

end

end A004333.P15887153325973794938

namespace A004333

/-- `A193636(A090288(n+1))` -/
def P15887153325973794938.Spec : Prop :=
  ∀ n, P15887153325973794938.a n = A004333 (n + 3)

end A004333

/-! ## A004333.P7380969271805887707

`A193636(A152813(n)+7)`
-/

namespace A004333.P7380969271805887707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A152813 n + 7).toNat

end

end A004333.P7380969271805887707

namespace A004333

/-- `A193636(A152813(n)+7)` -/
def P7380969271805887707.Spec : Prop :=
  ∀ n, P7380969271805887707.a n = A004333 (n + 3)

end A004333

/-! ## A004333.P13944304011090177742

`A193636(eq[4, A114327(n)])`
-/

namespace A004333.P13944304011090177742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004333.P13944304011090177742

namespace A004333

/-- `A193636(eq[4, A114327(n)])` -/
def P13944304011090177742.Spec : Prop :=
  ∀ n, P13944304011090177742.a n = A004333 (n + 3)

end A004333

/-! ## A004333.P176084754472381930

`A193636(A103517(∑[2*(n+2)]))`
-/

namespace A004333.P176084754472381930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A103517 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A004333.P176084754472381930

namespace A004333

/-- `A193636(A103517(∑[2*(n+2)]))` -/
def P176084754472381930.Spec : Prop :=
  ∀ n, P176084754472381930.a n = A004333 (n + 3)

end A004333

/-! ## A004333.P3009560869275627076

`A193636(A067728(n+1)-2*n)`
-/

namespace A004333.P3009560869275627076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A067728 (n + 1) - (2 * n : ℤ)).toNat

end

end A004333.P3009560869275627076

namespace A004333

/-- `A193636(A067728(n+1)-2*n)` -/
def P3009560869275627076.Spec : Prop :=
  ∀ n, P3009560869275627076.a n = A004333 (n + 3)

end A004333

/-! ## A004333.P11115120937965180491

`A193636(A067728(n+1)-n-n)`
-/

namespace A004333.P11115120937965180491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A067728 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A004333.P11115120937965180491

namespace A004333

/-- `A193636(A067728(n+1)-n-n)` -/
def P11115120937965180491.Spec : Prop :=
  ∀ n, P11115120937965180491.a n = A004333 (n + 3)

end A004333

/-!
# A004334: Binomial coefficient C(4n,n-4).

The programs for A004334, the canonical program `A004334.P7101015383577412968` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004334 has offset 4).

The definition of A004334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+4), n)` (program `A004334.P7101015383577412968`, by `A004334.P7101015383577412968.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004334.P7101015383577412968

`C(4*(n+4), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004334

/-- `C(4*(n+4), n)` -/
def P7101015383577412968.Spec : Prop :=
  ∀ n, (P7101015383577412968.a n : ℤ) = A004334 (n + 4)

theorem P7101015383577412968.correct : P7101015383577412968.Spec := by
  intro n
  simp only [A004334, Nat.add_sub_cancel]

end A004334

/-! ## A004334.P6242289029790788589

`record[C(A200535(n+1), A016777(n))]`
-/

namespace A004334.P6242289029790788589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A200535 (n + 1)).toNat (A016777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004334.P6242289029790788589

namespace A004334

/-- `record[C(A200535(n+1), A016777(n))]` -/
def P6242289029790788589.Spec : Prop :=
  ∀ n, (P6242289029790788589.a n : ℤ) = A004334 (n + 4)

end A004334

/-! ## A004334.P8726304907403951936

`A124819(A005893(n+3))`
-/

namespace A004334.P8726304907403951936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124819 (A005893 (n + 3)).toNat

end

end A004334.P8726304907403951936

namespace A004334

/-- `A124819(A005893(n+3))` -/
def P8726304907403951936.Spec : Prop :=
  ∀ n, P8726304907403951936.a n = A004334 (n + 4)

end A004334

/-! ## A004334.P7059985617535282052

`A062344(eq[8, A114327(n)])`
-/

namespace A004334.P7059985617535282052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004334.P7059985617535282052

namespace A004334

/-- `A062344(eq[8, A114327(n)])` -/
def P7059985617535282052.Spec : Prop :=
  ∀ n, P7059985617535282052.a n = A004334 (n + 4)

end A004334

/-! ## A004334.P11967900487369015294

`A102547(A224334(n+2))`
-/

namespace A004334.P11967900487369015294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A224334 (n + 2)).toNat

end

end A004334.P11967900487369015294

namespace A004334

/-- `A102547(A224334(n+2))` -/
def P11967900487369015294.Spec : Prop :=
  ∀ n, P11967900487369015294.a n = A004334 (n + 4)

end A004334

/-!
# A004335: Binomial coefficient C(4n,n-5).

The programs for A004335, the canonical program `A004335.P16232868609946889561` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004335 has offset 5).

The definition of A004335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+5), n)` (program `A004335.P16232868609946889561`, by `A004335.P16232868609946889561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004335.P16232868609946889561

`C(4*(n+5), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004335

/-- `C(4*(n+5), n)` -/
def P16232868609946889561.Spec : Prop :=
  ∀ n, (P16232868609946889561.a n : ℤ) = A004335 (n + 5)

theorem P16232868609946889561.correct : P16232868609946889561.Spec := by
  intro n
  simp only [A004335, Nat.add_sub_cancel]

end A004335

/-! ## A004335.P3889755062835410219

`A062344(eq[10, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A004335.P3889755062835410219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004335.P3889755062835410219

namespace A004335

/-- `A062344(eq[10, round(sqrt(2*(n+1)))²-(2*n+1)])` -/
def P3889755062835410219.Spec : Prop :=
  ∀ n, P3889755062835410219.a n = A004335 (n + 5)

end A004335

/-! ## A004335.P16952648966396437607

`A062344(A152813(n+3)+4)`
-/

namespace A004335.P16952648966396437607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A152813 (n + 3) + 4).toNat

end

end A004335.P16952648966396437607

namespace A004335

/-- `A062344(A152813(n+3)+4)` -/
def P16952648966396437607.Spec : Prop :=
  ∀ n, P16952648966396437607.a n = A004335 (n + 5)

end A004335

/-! ## A004335.P18369115579428982368

`A094527(eq[10, A056951(n+1)])`
-/

namespace A004335.P18369115579428982368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004335.P18369115579428982368

namespace A004335

/-- `A094527(eq[10, A056951(n+1)])` -/
def P18369115579428982368.Spec : Prop :=
  ∀ n, P18369115579428982368.a n = A004335 (n + 5)

end A004335

/-! ## A004335.P6407108867110271942

`A007318(A033585(n+5)+n)`
-/

namespace A004335.P6407108867110271942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A033585 (n + 5) + (n : ℤ)).toNat

end

end A004335.P6407108867110271942

namespace A004335

/-- `A007318(A033585(n+5)+n)` -/
def P6407108867110271942.Spec : Prop :=
  ∀ n, P6407108867110271942.a n = A004335 (n + 5)

end A004335

/-!
# A004336: Binomial coefficient C(4n,n-6).

The programs for A004336, the canonical program `A004336.P12660849819980432207` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004336 has offset 6).

The definition of A004336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+6), n)` (program `A004336.P12660849819980432207`, by `A004336.P12660849819980432207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004336.P12660849819980432207

`C(4*(n+6), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004336

/-- `C(4*(n+6), n)` -/
def P12660849819980432207.Spec : Prop :=
  ∀ n, (P12660849819980432207.a n : ℤ) = A004336 (n + 6)

theorem P12660849819980432207.correct : P12660849819980432207.Spec := by
  intro n
  simp only [A004336, Nat.add_sub_cancel]

end A004336

/-! ## A004336.P7484724043371639004

`A119304(eq[8, A002262(n)])`
-/

namespace A004336.P7484724043371639004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004336.P7484724043371639004

namespace A004336

/-- `A119304(eq[8, A002262(n)])` -/
def P7484724043371639004.Spec : Prop :=
  ∀ n, P7484724043371639004.a n = A004336 (n + 6)

end A004336

/-! ## A004336.P3141212702473716448

`A119304(eq[9, A002260(n+1)])`
-/

namespace A004336.P3141212702473716448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004336.P3141212702473716448

namespace A004336

/-- `A119304(eq[9, A002260(n+1)])` -/
def P3141212702473716448.Spec : Prop :=
  ∀ n, P3141212702473716448.a n = A004336 (n + 6)

end A004336

/-! ## A004336.P17917188547019638248

`record[C(A200535(n), 3*n)]`
-/

namespace A004336.P17917188547019638248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A200535 n).toNat (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004336.P17917188547019638248

namespace A004336

/-- `record[C(A200535(n), 3*n)]` -/
def P17917188547019638248.Spec : Prop :=
  ∀ n, (P17917188547019638248.a n : ℤ) = A004336 (n + 6)

end A004336

/-! ## A004336.P12659101897886050775

`A193636(eq[8, A114327(n)])`
-/

namespace A004336.P12659101897886050775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004336.P12659101897886050775

namespace A004336

/-- `A193636(eq[8, A114327(n)])` -/
def P12659101897886050775.Spec : Prop :=
  ∀ n, P12659101897886050775.a n = A004336 (n + 6)

end A004336

/-! ## A004336.P10163231938084680441

`A062344(eq[12, A114327(n)])`
-/

namespace A004336.P10163231938084680441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004336.P10163231938084680441

namespace A004336

/-- `A062344(eq[12, A114327(n)])` -/
def P10163231938084680441.Spec : Prop :=
  ∀ n, P10163231938084680441.a n = A004336 (n + 6)

end A004336

/-!
# A004337: Binomial coefficient C(4n,n-7).

The programs for A004337, the canonical program `A004337.P4552413247468096952` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004337 has offset 7).

The definition of A004337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+7), n)` (program `A004337.P4552413247468096952`, by `A004337.P4552413247468096952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004337.P4552413247468096952

`C(4*(n+7), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004337

/-- `C(4*(n+7), n)` -/
def P4552413247468096952.Spec : Prop :=
  ∀ n, (P4552413247468096952.a n : ℤ) = A004337 (n + 7)

theorem P4552413247468096952.correct : P4552413247468096952.Spec := by
  intro n
  simp only [A004337, Nat.add_sub_cancel]

end A004337

/-! ## A004337.P7085514939225635983

`record[C(A200535(n), A016777(n))]`
-/

namespace A004337.P7085514939225635983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A200535 n).toNat (A016777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004337.P7085514939225635983

namespace A004337

/-- `record[C(A200535(n), A016777(n))]` -/
def P7085514939225635983.Spec : Prop :=
  ∀ n, (P7085514939225635983.a n : ℤ) = A004337 (n + 7)

end A004337

/-! ## A004337.P1413927020560920049

`A124819(eq[9, A056951(n+1)])`
-/

namespace A004337.P1413927020560920049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004337.P1413927020560920049

namespace A004337

/-- `A124819(eq[9, A056951(n+1)])` -/
def P1413927020560920049.Spec : Prop :=
  ∀ n, P1413927020560920049.a n = A004337 (n + 7)

end A004337

/-! ## A004337.P3488354191161229437

`A124819(eq[19, A253146(n+1)])`
-/

namespace A004337.P3488354191161229437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004337.P3488354191161229437

namespace A004337

/-- `A124819(eq[19, A253146(n+1)])` -/
def P3488354191161229437.Spec : Prop :=
  ∀ n, P3488354191161229437.a n = A004337 (n + 7)

end A004337

/-! ## A004337.P6678253252326548249

`round(sqrt(C(A008585(n+9)+1+n, n)²+1))`
-/

namespace A004337.P6678253252326548249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (A008585 (n + 9) + 1 + (n : ℤ)).toNat n ^ 2 + 1 : ℝ))

end

end A004337.P6678253252326548249

namespace A004337

/-- `round(sqrt(C(A008585(n+9)+1+n, n)²+1))` -/
def P6678253252326548249.Spec : Prop :=
  ∀ n, P6678253252326548249.a n = A004337 (n + 7)

end A004337

/-!
# A004338: Binomial coefficient C(4n,n-8).

The programs for A004338, the canonical program `A004338.P4095409926305162487` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004338 has offset 8).

The definition of A004338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+8), n)` (program `A004338.P4095409926305162487`, by `A004338.P4095409926305162487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004338.P4095409926305162487

`C(4*(n+8), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004338

/-- `C(4*(n+8), n)` -/
def P4095409926305162487.Spec : Prop :=
  ∀ n, (P4095409926305162487.a n : ℤ) = A004338 (n + 8)

theorem P4095409926305162487.correct : P4095409926305162487.Spec := by
  intro n
  simp only [A004338, Nat.add_sub_cancel]

end A004338

/-! ## A004338.P8292430338963285829

`abs(C(A008586(abs(1-n)+9), n)-1)+1`
-/

namespace A004338.P8292430338963285829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.choose (A008586 (|1 - (n : ℤ)| + 9).toNat).toNat n : ℤ) - 1)| + 1

end

end A004338.P8292430338963285829

namespace A004338

/-- `abs(C(A008586(abs(1-n)+9), n)-1)+1` -/
def P8292430338963285829.Spec : Prop :=
  ∀ n, P8292430338963285829.a n = A004338 (n + 8)

end A004338

/-! ## A004338.P11083410433875828137

`C(A008586(abs(1-n)+9), n)^A178334(n)`
-/

namespace A004338.P11083410433875828137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008586 (|1 - (n : ℤ)| + 9).toNat).toNat n : ℚ) ^ (A178334 n : ℤ)

end

end A004338.P11083410433875828137

namespace A004338

/-- `C(A008586(abs(1-n)+9), n)^A178334(n)` -/
def P11083410433875828137.Spec : Prop :=
  ∀ n, P11083410433875828137.a n = (A004338 (n + 8) : ℚ)

end A004338

/-! ## A004338.P8778809991392666847

`C(A008574(n+8), n)%A224971(n+1)`
-/

namespace A004338.P8778809991392666847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A008574 (n + 8)).toNat n : ℤ) (A224971 (n + 1))

end

end A004338.P8778809991392666847

namespace A004338

/-- `C(A008574(n+8), n)%A224971(n+1)` -/
def P8778809991392666847.Spec : Prop :=
  ∀ n, P8778809991392666847.a n = A004338 (n + 8)

end A004338

/-!
# A004339: Binomial coefficient C(4n,n-9).

The programs for A004339, the canonical program `A004339.P6312141671844319679` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004339 has offset 9).

The definition of A004339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+9), n)` (program `A004339.P6312141671844319679`, by `A004339.P6312141671844319679.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004339.P6312141671844319679

`C(4*(n+9), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004339

/-- `C(4*(n+9), n)` -/
def P6312141671844319679.Spec : Prop :=
  ∀ n, (P6312141671844319679.a n : ℤ) = A004339 (n + 9)

theorem P6312141671844319679.correct : P6312141671844319679.Spec := by
  intro n
  simp only [A004339, Nat.add_sub_cancel]

end A004339

/-! ## A004339.P11585840656045017087

`A119304(eq[12, A002262(n)])`
-/

namespace A004339.P11585840656045017087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004339.P11585840656045017087

namespace A004339

/-- `A119304(eq[12, A002262(n)])` -/
def P11585840656045017087.Spec : Prop :=
  ∀ n, P11585840656045017087.a n = A004339 (n + 9)

end A004339

/-! ## A004339.P3589685278153086879

`A119304(eq[12, A130270(n+1)])`
-/

namespace A004339.P3589685278153086879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004339.P3589685278153086879

namespace A004339

/-- `A119304(eq[12, A130270(n+1)])` -/
def P3589685278153086879.Spec : Prop :=
  ∀ n, P3589685278153086879.a n = A004339 (n + 9)

end A004339

/-! ## A004339.P15860826025656397458

`A193636(eq[12, A114327(n)])`
-/

namespace A004339.P15860826025656397458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004339.P15860826025656397458

namespace A004339

/-- `A193636(eq[12, A114327(n)])` -/
def P15860826025656397458.Spec : Prop :=
  ∀ n, P15860826025656397458.a n = A004339 (n + 9)

end A004339

/-! ## A004339.P7901924553908921485

`A062344(A152813(n+7))`
-/

namespace A004339.P7901924553908921485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A152813 (n + 7)).toNat

end

end A004339.P7901924553908921485

namespace A004339

/-- `A062344(A152813(n+7))` -/
def P7901924553908921485.Spec : Prop :=
  ∀ n, P7901924553908921485.a n = A004339 (n + 9)

end A004339

/-!
# A004340: Binomial coefficient C(4n,n-10).

The programs for A004340, the canonical program `A004340.P3616682412856213408` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004340 has offset 10).

The definition of A004340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+10), n)` (program `A004340.P3616682412856213408`, by `A004340.P3616682412856213408.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004340.P3616682412856213408

`C(4*(n+10), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004340

/-- `C(4*(n+10), n)` -/
def P3616682412856213408.Spec : Prop :=
  ∀ n, (P3616682412856213408.a n : ℤ) = A004340 (n + 10)

theorem P3616682412856213408.correct : P3616682412856213408.Spec := by
  intro n
  simp only [A004340, Nat.add_sub_cancel]

end A004340

/-!
# A004341: Binomial coefficient C(4n,n-11).

The programs for A004341, the canonical program `A004341.P10730432858780799336` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004341 has offset 11).

The definition of A004341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+11), n)` (program `A004341.P10730432858780799336`, by `A004341.P10730432858780799336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004341.P10730432858780799336

`C(4*(n+11), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004341

/-- `C(4*(n+11), n)` -/
def P10730432858780799336.Spec : Prop :=
  ∀ n, (P10730432858780799336.a n : ℤ) = A004341 (n + 11)

theorem P10730432858780799336.correct : P10730432858780799336.Spec := by
  intro n
  simp only [A004341, Nat.add_sub_cancel]

end A004341

/-! ## A004341.P6012155699228478852

`A007318(A017101(n+12)*(n+10))`
-/

namespace A004341.P6012155699228478852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A017101 (n + 12) * (n + 10 : ℤ)).toNat

end

end A004341.P6012155699228478852

namespace A004341

/-- `A007318(A017101(n+12)*(n+10))` -/
def P6012155699228478852.Spec : Prop :=
  ∀ n, P6012155699228478852.a n = A004341 (n + 11)

end A004341

/-! ## A004341.P5797036674964787209

`A007318(A033996(n+12)+A007742(n+10))`
-/

namespace A004341.P5797036674964787209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A033996 (n + 12) + A007742 (n + 10)).toNat

end

end A004341.P5797036674964787209

namespace A004341

/-- `A007318(A033996(n+12)+A007742(n+10))` -/
def P5797036674964787209.Spec : Prop :=
  ∀ n, P5797036674964787209.a n = A004341 (n + 11)

end A004341

/-!
# A004342: Binomial coefficient C(4n, n-12).

The programs for A004342, the canonical program `A004342.P17026458423593239374` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004342 has offset 12).

The definition of A004342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+12), n)` (program `A004342.P17026458423593239374`, by `A004342.P17026458423593239374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004342.P17026458423593239374

`C(4*(n+12), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004342

/-- `C(4*(n+12), n)` -/
def P17026458423593239374.Spec : Prop :=
  ∀ n, (P17026458423593239374.a n : ℤ) = A004342 (n + 12)

theorem P17026458423593239374.correct : P17026458423593239374.Spec := by
  intro n
  simp only [A004342, Nat.add_sub_cancel]

end A004342

/-!
# A004343: Binomial coefficient C(5n,n-1).

The programs for A004343, the canonical program `A004343.P15761770144228800804` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004343 has offset 1).

The definition of A004343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+1), n)` (program `A004343.P15761770144228800804`, by `A004343.P15761770144228800804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004343.P15761770144228800804

`C(5*(n+1), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004343

/-- `C(5*(n+1), n)` -/
def P15761770144228800804.Spec : Prop :=
  ∀ n, (P15761770144228800804.a n : ℤ) = A004343 (n + 1)

theorem P15761770144228800804.correct : P15761770144228800804.Spec := by
  intro n
  simp only [A004343, Nat.add_sub_cancel]

end A004343

/-! ## A004343.P1705532308773677798

`(n+1)*Δ[A345368(n)]`
-/

namespace A004343.P1705532308773677798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A004343.P1705532308773677798

namespace A004343

/-- `(n+1)*Δ[A345368(n)]` -/
def P1705532308773677798.Spec : Prop :=
  ∀ n, P1705532308773677798.a n = A004343 (n + 1)

end A004343

/-! ## A004343.P11198570472201402066

`∑[abs(Δ[n*A002294(n)])]`
-/

namespace A004343.P11198570472201402066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004343.P11198570472201402066

namespace A004343

/-- `∑[abs(Δ[n*A002294(n)])]` -/
def P11198570472201402066.Spec : Prop :=
  ∀ n, P11198570472201402066.a n = A004343 (n + 1)

end A004343

/-! ## A004343.P1444896221597823011

`(n+1)*A002294(n+1)`
-/

namespace A004343.P1444896221597823011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002294 (n + 1)

end

end A004343.P1444896221597823011

namespace A004343

/-- `(n+1)*A002294(n+1)` -/
def P1444896221597823011.Spec : Prop :=
  ∀ n, P1444896221597823011.a n = A004343 (n + 1)

end A004343

/-! ## A004343.P731800446539345423

`(n+1)*A143546(2*(n+1))`
-/

namespace A004343.P731800446539345423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143546 (2 * (n + 1))

end

end A004343.P731800446539345423

namespace A004343

/-- `(n+1)*A143546(2*(n+1))` -/
def P731800446539345423.Spec : Prop :=
  ∀ n, P731800446539345423.a n = A004343 (n + 1)

end A004343

/-! ## A004343.P17234153314028049092

`record[abs(1-n)*A002294(abs(1-n))]`
-/

namespace A004343.P17234153314028049092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A002294 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004343.P17234153314028049092

namespace A004343

/-- `record[abs(1-n)*A002294(abs(1-n))]` -/
def P17234153314028049092.Spec : Prop :=
  ∀ n, P17234153314028049092.a n = A004343 (n + 1)

end A004343

/-! ## A004343.P14810093863945496716

`A079589(n+1)-A001449(n+1)`
-/

namespace A004343.P14810093863945496716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079589 (n + 1) - A001449 (n + 1)

end

end A004343.P14810093863945496716

namespace A004343

/-- `A079589(n+1)-A001449(n+1)` -/
def P14810093863945496716.Spec : Prop :=
  ∀ n, P14810093863945496716.a n = A004343 (n + 1)

end A004343

/-! ## A004343.P5887065939212866608

`lcm(n+1, C(A016897(n)+1, n))`
-/

namespace A004343.P5887065939212866608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.choose (A016897 n + 1).toNat n)

end

end A004343.P5887065939212866608

namespace A004343

/-- `lcm(n+1, C(A016897(n)+1, n))` -/
def P5887065939212866608.Spec : Prop :=
  ∀ n, (P5887065939212866608.a n : ℤ) = A004343 (n + 1)

end A004343

/-! ## A004343.P17583289780008655749

`C(A016897(n)+1, n)+val(A157532(n+4), 43)`
-/

namespace A004343.P17583289780008655749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016897 n + 1).toNat n + SequenceMachineLib.valuation (A157532 (n + 4)).toNat 43

end

end A004343.P17583289780008655749

namespace A004343

/-- `C(A016897(n)+1, n)+val(A157532(n+4), 43)` -/
def P17583289780008655749.Spec : Prop :=
  ∀ n, (P17583289780008655749.a n : ℤ) = A004343 (n + 1)

end A004343

/-! ## A004343.P18024508318173935859

`A348945(A348969(n+1))+C(A016897(n)+1, n)`
-/

namespace A004343.P18024508318173935859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (A348969 (n + 1)).toNat + (Nat.choose (A016897 n + 1).toNat n : ℤ)

end

end A004343.P18024508318173935859

namespace A004343

/-- `A348945(A348969(n+1))+C(A016897(n)+1, n)` -/
def P18024508318173935859.Spec : Prop :=
  ∀ n, P18024508318173935859.a n = A004343 (n + 1)

end A004343

/-!
# A004344: Binomial coefficient C(5n+10,n).

The programs for A004344, the canonical program `A004344.P11091769195232198211` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004344 has offset 0).

The definition of A004344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*n+10, n)` (program `A004344.P11091769195232198211`, by `A004344.P11091769195232198211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004344.P8192683246741543130

`(n+2)*A233738(n)/2`
-/

namespace A004344.P8192683246741543130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A233738 n : ℚ) / 2

end

end A004344.P8192683246741543130

namespace A004344

/-- `(n+2)*A233738(n)/2` -/
def P8192683246741543130.Spec : Prop :=
  ∀ n, P8192683246741543130.a n = (A004344 n : ℚ)

end A004344

/-! ## A004344.P11091769195232198211

`C(5*n+10, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004344

/-- `C(5*n+10, n)` -/
def P11091769195232198211.Spec : Prop :=
  ∀ n, (P11091769195232198211.a n : ℤ) = A004344 n

theorem P11091769195232198211.correct : P11091769195232198211.Spec := by
  intro n
  simp only [A004344]

end A004344

/-! ## A004344.P11924532564512291716

`abs(C(abs(A016921(n+1)+3-n), n)-1)+1`
-/

namespace A004344.P11924532564512291716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.choose |A016921 (n + 1) + 3 - (n : ℤ)|.toNat n : ℤ) - 1)| + 1

end

end A004344.P11924532564512291716

namespace A004344

/-- `abs(C(abs(A016921(n+1)+3-n), n)-1)+1` -/
def P11924532564512291716.Spec : Prop :=
  ∀ n, P11924532564512291716.a n = A004344 n

end A004344

/-! ## A004344.P14251460650670991071

`record[C(A135042(n), A130824(n))]`
-/

namespace A004344.P14251460650670991071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135042 n).toNat (A130824 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004344.P14251460650670991071

namespace A004344

/-- `record[C(A135042(n), A130824(n))]` -/
def P14251460650670991071.Spec : Prop :=
  ∀ n, (P14251460650670991071.a n : ℤ) = A004344 n

end A004344

/-! ## A004344.P10969425072475544700

`record[C(A008706(n), A133653(n+1))]`
-/

namespace A004344.P10969425072475544700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008706 n).toNat (A133653 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004344.P10969425072475544700

namespace A004344

/-- `record[C(A008706(n), A133653(n+1))]` -/
def P10969425072475544700.Spec : Prop :=
  ∀ n, (P10969425072475544700.a n : ℤ) = A004344 n

end A004344

/-! ## A004344.P1230829393339153605

`record[C(A257848(n), A257848(2*n))]`
-/

namespace A004344.P1230829393339153605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257848 n).toNat (A257848 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004344.P1230829393339153605

namespace A004344

/-- `record[C(A257848(n), A257848(2*n))]` -/
def P1230829393339153605.Spec : Prop :=
  ∀ n, (P1230829393339153605.a n : ℤ) = A004344 n

end A004344

/-! ## A004344.P6771021805817158380

`A348945(A348969(n+1))+C(A016897(n+1)+1, n)`
-/

namespace A004344.P6771021805817158380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (A348969 (n + 1)).toNat + (Nat.choose (A016897 (n + 1) + 1).toNat n : ℤ)

end

end A004344.P6771021805817158380

namespace A004344

/-- `A348945(A348969(n+1))+C(A016897(n+1)+1, n)` -/
def P6771021805817158380.Spec : Prop :=
  ∀ n, P6771021805817158380.a n = A004344 n

end A004344

/-! ## A004344.P2029451064887587593

`A338995(A001844(n+1))`
-/

namespace A004344.P2029451064887587593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338995 (A001844 (n + 1)).toNat

end

end A004344.P2029451064887587593

namespace A004344

/-- `A338995(A001844(n+1))` -/
def P2029451064887587593.Spec : Prop :=
  ∀ n, P2029451064887587593.a n = A004344 n

end A004344

/-! ## A004344.P13311942623092465736

`A338995(A099776(n+1))`
-/

namespace A004344.P13311942623092465736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338995 (A099776 (n + 1)).toNat

end

end A004344.P13311942623092465736

namespace A004344

/-- `A338995(A099776(n+1))` -/
def P13311942623092465736.Spec : Prop :=
  ∀ n, P13311942623092465736.a n = A004344 n

end A004344

/-!
# A004345: Binomial coefficient C(5n,n-3).

The programs for A004345, the canonical program `A004345.P3603199163948699774` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004345 has offset 3).

The definition of A004345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+3), n)` (program `A004345.P3603199163948699774`, by `A004345.P3603199163948699774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004345.P3603199163948699774

`C(5*(n+3), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004345

/-- `C(5*(n+3), n)` -/
def P3603199163948699774.Spec : Prop :=
  ∀ n, (P3603199163948699774.a n : ℤ) = A004345 (n + 3)

theorem P3603199163948699774.correct : P3603199163948699774.Spec := by
  intro n
  simp only [A004345, Nat.add_sub_cancel]

end A004345

/-! ## A004345.P13624719326516649552

`record[C(A257846(n), A131380(n))]`
-/

namespace A004345.P13624719326516649552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257846 n).toNat (A131380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004345.P13624719326516649552

namespace A004345

/-- `record[C(A257846(n), A131380(n))]` -/
def P13624719326516649552.Spec : Prop :=
  ∀ n, (P13624719326516649552.a n : ℤ) = A004345 (n + 3)

end A004345

/-! ## A004345.P13925260590153533925

`record[C(A135042(n), A130824(n)+1)]`
-/

namespace A004345.P13925260590153533925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135042 n).toNat (A130824 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004345.P13925260590153533925

namespace A004345

/-- `record[C(A135042(n), A130824(n)+1)]` -/
def P13925260590153533925.Spec : Prop :=
  ∀ n, (P13925260590153533925.a n : ℤ) = A004345 (n + 3)

end A004345

/-! ## A004345.P7824584080493763612

`record[C(A135042(n), A008574(n)-1)]`
-/

namespace A004345.P7824584080493763612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135042 n).toNat (A008574 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004345.P7824584080493763612

namespace A004345

/-- `record[C(A135042(n), A008574(n)-1)]` -/
def P7824584080493763612.Spec : Prop :=
  ∀ n, (P7824584080493763612.a n : ℤ) = A004345 (n + 3)

end A004345

/-! ## A004345.P15734740306196584318

`record[C(A135042(n), A336705(n)-1)]`
-/

namespace A004345.P15734740306196584318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135042 n).toNat (A336705 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004345.P15734740306196584318

namespace A004345

/-- `record[C(A135042(n), A336705(n)-1)]` -/
def P15734740306196584318.Spec : Prop :=
  ∀ n, (P15734740306196584318.a n : ℤ) = A004345 (n + 3)

end A004345

/-! ## A004345.P17190025433656921853

`A193635(A268581(n+1))`
-/

namespace A004345.P17190025433656921853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A268581 (n + 1)).toNat

end

end A004345.P17190025433656921853

namespace A004345

/-- `A193635(A268581(n+1))` -/
def P17190025433656921853.Spec : Prop :=
  ∀ n, P17190025433656921853.a n = A004345 (n + 3)

end A004345

/-! ## A004345.P9200716603441293889

`A193635(eq[5, A114327(n)])`
-/

namespace A004345.P9200716603441293889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004345.P9200716603441293889

namespace A004345

/-- `A193635(eq[5, A114327(n)])` -/
def P9200716603441293889.Spec : Prop :=
  ∀ n, P9200716603441293889.a n = A004345 (n + 3)

end A004345

/-! ## A004345.P11118656344015924106

`A159965(A067728(n+1)+10)`
-/

namespace A004345.P11118656344015924106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A067728 (n + 1) + 10).toNat

end

end A004345.P11118656344015924106

namespace A004345

/-- `A159965(A067728(n+1)+10)` -/
def P11118656344015924106.Spec : Prop :=
  ∀ n, P11118656344015924106.a n = A004345 (n + 3)

end A004345

/-! ## A004345.P1745817510554972568

`A159965(eq[5, A056951(n+1)])`
-/

namespace A004345.P1745817510554972568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004345.P1745817510554972568

namespace A004345

/-- `A159965(eq[5, A056951(n+1)])` -/
def P1745817510554972568.Spec : Prop :=
  ∀ n, P1745817510554972568.a n = A004345 (n + 3)

end A004345

/-!
# A004346: Binomial coefficient C(5n,n-4).

The programs for A004346, the canonical program `A004346.P580581001371973418` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004346 has offset 4).

The definition of A004346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+4), n)` (program `A004346.P580581001371973418`, by `A004346.P580581001371973418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004346.P580581001371973418

`C(5*(n+4), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004346

/-- `C(5*(n+4), n)` -/
def P580581001371973418.Spec : Prop :=
  ∀ n, (P580581001371973418.a n : ℤ) = A004346 (n + 4)

theorem P580581001371973418.correct : P580581001371973418.Spec := by
  intro n
  simp only [A004346, Nat.add_sub_cancel]

end A004346

/-! ## A004346.P2589420441676089690

`record[C(A135042(n), 4*n)]`
-/

namespace A004346.P2589420441676089690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135042 n).toNat (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004346.P2589420441676089690

namespace A004346

/-- `record[C(A135042(n), 4*n)]` -/
def P2589420441676089690.Spec : Prop :=
  ∀ n, (P2589420441676089690.a n : ℤ) = A004346 (n + 4)

end A004346

/-! ## A004346.P5782874583822007778

`record[C(A257846(n+1), A131380(n))]`
-/

namespace A004346.P5782874583822007778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257846 (n + 1)).toNat (A131380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004346.P5782874583822007778

namespace A004346

/-- `record[C(A257846(n+1), A131380(n))]` -/
def P5782874583822007778.Spec : Prop :=
  ∀ n, (P5782874583822007778.a n : ℤ) = A004346 (n + 4)

end A004346

/-! ## A004346.P15173163702126108134

`A109960(A056220(n+3)+3)`
-/

namespace A004346.P15173163702126108134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109960 (A056220 (n + 3) + 3).toNat

end

end A004346.P15173163702126108134

namespace A004346

/-- `A109960(A056220(n+3)+3)` -/
def P15173163702126108134.Spec : Prop :=
  ∀ n, P15173163702126108134.a n = A004346 (n + 4)

end A004346

/-! ## A004346.P5190537611066632632

`A109960(eq[5, A056951(n+1)])`
-/

namespace A004346.P5190537611066632632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004346.P5190537611066632632

namespace A004346

/-- `A109960(eq[5, A056951(n+1)])` -/
def P5190537611066632632.Spec : Prop :=
  ∀ n, P5190537611066632632.a n = A004346 (n + 4)

end A004346

/-!
# A004347: Binomial coefficient C(5n,n-5).

The programs for A004347, the canonical program `A004347.P9501905224883449908` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004347 has offset 5).

The definition of A004347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+5), n)` (program `A004347.P9501905224883449908`, by `A004347.P9501905224883449908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004347.P9501905224883449908

`C(5*(n+5), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004347

/-- `C(5*(n+5), n)` -/
def P9501905224883449908.Spec : Prop :=
  ∀ n, (P9501905224883449908.a n : ℤ) = A004347 (n + 5)

theorem P9501905224883449908.correct : P9501905224883449908.Spec := by
  intro n
  simp only [A004347, Nat.add_sub_cancel]

end A004347

/-! ## A004347.P8688865712263418792

`record[C(A135042(n), A016813(n))]`
-/

namespace A004347.P8688865712263418792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135042 n).toNat (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004347.P8688865712263418792

namespace A004347

/-- `record[C(A135042(n), A016813(n))]` -/
def P8688865712263418792.Spec : Prop :=
  ∀ n, (P8688865712263418792.a n : ℤ) = A004347 (n + 5)

end A004347

/-! ## A004347.P9484533907460677926

`record[C(A135042(n), A008586(n)+1)]`
-/

namespace A004347.P9484533907460677926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135042 n).toNat (A008586 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004347.P9484533907460677926

namespace A004347

/-- `record[C(A135042(n), A008586(n)+1)]` -/
def P9484533907460677926.Spec : Prop :=
  ∀ n, (P9484533907460677926.a n : ℤ) = A004347 (n + 5)

end A004347

/-! ## A004347.P11746592788061072832

`record[C(A135042(n), A133653(n+1)-1)]`
-/

namespace A004347.P11746592788061072832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135042 n).toNat (A133653 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004347.P11746592788061072832

namespace A004347

/-- `record[C(A135042(n), A133653(n+1)-1)]` -/
def P11746592788061072832.Spec : Prop :=
  ∀ n, (P11746592788061072832.a n : ℤ) = A004347 (n + 5)

end A004347

/-! ## A004347.P6535760565124337398

`A172431(A000124(3*(n+4))+n)`
-/

namespace A004347.P6535760565124337398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (A000124 (3 * (n + 4)) + (n : ℤ)).toNat

end

end A004347.P6535760565124337398

namespace A004347

/-- `A172431(A000124(3*(n+4))+n)` -/
def P6535760565124337398.Spec : Prop :=
  ∀ n, P6535760565124337398.a n = A004347 (n + 5)

end A004347

/-!
# A004348: Binomial coefficient C(5n, n-6).

The programs for A004348, the canonical program `A004348.P8900850601788407424` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004348 has offset 6).

The definition of A004348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+6), n)` (program `A004348.P8900850601788407424`, by `A004348.P8900850601788407424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004348.P8900850601788407424

`C(5*(n+6), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004348

/-- `C(5*(n+6), n)` -/
def P8900850601788407424.Spec : Prop :=
  ∀ n, (P8900850601788407424.a n : ℤ) = A004348 (n + 6)

theorem P8900850601788407424.correct : P8900850601788407424.Spec := by
  intro n
  simp only [A004348, Nat.add_sub_cancel]

end A004348

/-! ## A004348.P17176223400860865858

`record[C(A135042(n), A133653(n+1))]`
-/

namespace A004348.P17176223400860865858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135042 n).toNat (A133653 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004348.P17176223400860865858

namespace A004348

/-- `record[C(A135042(n), A133653(n+1))]` -/
def P17176223400860865858.Spec : Prop :=
  ∀ n, (P17176223400860865858.a n : ℤ) = A004348 (n + 6)

end A004348

/-! ## A004348.P12108731631546979840

`A193635(eq[10, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A004348.P12108731631546979840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004348.P12108731631546979840

namespace A004348

/-- `A193635(eq[10, round(sqrt(2*(n+1)))²-(2*n+1)])` -/
def P12108731631546979840.Spec : Prop :=
  ∀ n, P12108731631546979840.a n = A004348 (n + 6)

end A004348

/-! ## A004348.P2316217456428350684

`A159965(eq[10, A056951(n+1)])`
-/

namespace A004348.P2316217456428350684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004348.P2316217456428350684

namespace A004348

/-- `A159965(eq[10, A056951(n+1)])` -/
def P2316217456428350684.Spec : Prop :=
  ∀ n, P2316217456428350684.a n = A004348 (n + 6)

end A004348

/-! ## A004348.P13458553654670478671

`A007318(A000217(5*(n+4)+10)+n)`
-/

namespace A004348.P13458553654670478671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (5 * (n + 4) + 10) + (n : ℤ)).toNat

end

end A004348.P13458553654670478671

namespace A004348

/-- `A007318(A000217(5*(n+4)+10)+n)` -/
def P13458553654670478671.Spec : Prop :=
  ∀ n, P13458553654670478671.a n = A004348 (n + 6)

end A004348

/-!
# A004349: Binomial coefficient C(5n,n-7).

The programs for A004349, the canonical program `A004349.P11656001515199792681` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004349 has offset 7).

The definition of A004349 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+7), n)` (program `A004349.P11656001515199792681`, by `A004349.P11656001515199792681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004349.P11656001515199792681

`C(5*(n+7), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004349

/-- `C(5*(n+7), n)` -/
def P11656001515199792681.Spec : Prop :=
  ∀ n, (P11656001515199792681.a n : ℤ) = A004349 (n + 7)

theorem P11656001515199792681.correct : P11656001515199792681.Spec := by
  intro n
  simp only [A004349, Nat.add_sub_cancel]

end A004349

/-!
# A004350: Binomial coefficient C(5n,n-8).

The programs for A004350, the canonical program `A004350.P18431469688733043152` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004350 has offset 8).

The definition of A004350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+8), n)` (program `A004350.P18431469688733043152`, by `A004350.P18431469688733043152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004350.P18431469688733043152

`C(5*(n+8), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004350

/-- `C(5*(n+8), n)` -/
def P18431469688733043152.Spec : Prop :=
  ∀ n, (P18431469688733043152.a n : ℤ) = A004350 (n + 8)

theorem P18431469688733043152.correct : P18431469688733043152.Spec := by
  intro n
  simp only [A004350, Nat.add_sub_cancel]

end A004350

/-! ## A004350.P9427608005348849585

`record[C(A008706(n+2), A173035(n))]`
-/

namespace A004350.P9427608005348849585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008706 (n + 2)).toNat (A173035 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004350.P9427608005348849585

namespace A004350

/-- `record[C(A008706(n+2), A173035(n))]` -/
def P9427608005348849585.Spec : Prop :=
  ∀ n, (P9427608005348849585.a n : ℤ) = A004350 (n + 8)

end A004350

/-! ## A004350.P11534165689898946098

`A109960(eq[10, A056951(n+1)])`
-/

namespace A004350.P11534165689898946098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004350.P11534165689898946098

namespace A004350

/-- `A109960(eq[10, A056951(n+1)])` -/
def P11534165689898946098.Spec : Prop :=
  ∀ n, P11534165689898946098.a n = A004350 (n + 8)

end A004350

/-!
# A004351: Binomial coefficient C(5*n,n-9).

The programs for A004351, the canonical program `A004351.P15535673412026197539` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004351 has offset 9).

The definition of A004351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+9), n)` (program `A004351.P15535673412026197539`, by `A004351.P15535673412026197539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004351.P15535673412026197539

`C(5*(n+9), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004351

/-- `C(5*(n+9), n)` -/
def P15535673412026197539.Spec : Prop :=
  ∀ n, (P15535673412026197539.a n : ℤ) = A004351 (n + 9)

theorem P15535673412026197539.correct : P15535673412026197539.Spec := by
  intro n
  simp only [A004351, Nat.add_sub_cancel]

end A004351

/-!
# A004352: Binomial coefficient C(5n,n-10).

The programs for A004352, the canonical program `A004352.P4223623592623281698` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004352 has offset 10).

The definition of A004352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+10), n)` (program `A004352.P4223623592623281698`, by `A004352.P4223623592623281698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004352.P4223623592623281698

`C(5*(n+10), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004352

/-- `C(5*(n+10), n)` -/
def P4223623592623281698.Spec : Prop :=
  ∀ n, (P4223623592623281698.a n : ℤ) = A004352 (n + 10)

theorem P4223623592623281698.correct : P4223623592623281698.Spec := by
  intro n
  simp only [A004352, Nat.add_sub_cancel]

end A004352

/-!
# A004353: Binomial coefficient C(5n,n-11).

The programs for A004353, the canonical program `A004353.P14006478325353557037` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004353 has offset 11).

The definition of A004353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+11), n)` (program `A004353.P14006478325353557037`, by `A004353.P14006478325353557037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004353.P14006478325353557037

`C(5*(n+11), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004353

/-- `C(5*(n+11), n)` -/
def P14006478325353557037.Spec : Prop :=
  ∀ n, (P14006478325353557037.a n : ℤ) = A004353 (n + 11)

theorem P14006478325353557037.correct : P14006478325353557037.Spec := by
  intro n
  simp only [A004353, Nat.add_sub_cancel]

end A004353

/-!
# A004354: Binomial coefficient C(5n, n-12).

The programs for A004354, the canonical program `A004354.P5094131820505745665` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004354 has offset 12).

The definition of A004354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*(n+12), n)` (program `A004354.P5094131820505745665`, by `A004354.P5094131820505745665.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004354.P5094131820505745665

`C(5*(n+12), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004354

/-- `C(5*(n+12), n)` -/
def P5094131820505745665.Spec : Prop :=
  ∀ n, (P5094131820505745665.a n : ℤ) = A004354 (n + 12)

theorem P5094131820505745665.correct : P5094131820505745665.Spec := by
  intro n
  simp only [A004354, Nat.add_sub_cancel]

end A004354

/-! ## A004354.P8178491200324225178

`record[C(A008706(n+1), A173035(n))]`
-/

namespace A004354.P8178491200324225178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008706 (n + 1)).toNat (A173035 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004354.P8178491200324225178

namespace A004354

/-- `record[C(A008706(n+1), A173035(n))]` -/
def P8178491200324225178.Spec : Prop :=
  ∀ n, (P8178491200324225178.a n : ℤ) = A004354 (n + 12)

end A004354

/-!
# A004355: Binomial coefficient C(6n,n).

The programs for A004355, the canonical program `A004355.P468162157677170159` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004355 has offset 0).

The definition of A004355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*n, n)` (program `A004355.P468162157677170159`, by `A004355.P468162157677170159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004355.P468162157677170159

`C(6*n, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004355

/-- `C(6*n, n)` -/
def P468162157677170159.Spec : Prop :=
  ∀ n, (P468162157677170159.a n : ℤ) = A004355 n

theorem P468162157677170159.correct : P468162157677170159.Spec := by
  intro n
  simp only [A004355]

end A004355

/-! ## A004355.P9642143077803175485

`A051053(6*n)`
-/

namespace A004355.P9642143077803175485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051053 (6 * n)

end

end A004355.P9642143077803175485

namespace A004355

/-- `A051053(6*n)` -/
def P9642143077803175485.Spec : Prop :=
  ∀ n, P9642143077803175485.a n = A004355 n

end A004355

/-! ## A004355.P16664679081038421350

`(5*n+1)*A002295(n)`
-/

namespace A004355.P16664679081038421350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A002295 n

end

end A004355.P16664679081038421350

namespace A004355

/-- `(5*n+1)*A002295(n)` -/
def P16664679081038421350.Spec : Prop :=
  ∀ n, P16664679081038421350.a n = A004355 n

end A004355

/-! ## A004355.P13009667666335678968

`record[A051053(A165355(n)-1)]`
-/

namespace A004355.P13009667666335678968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051053 (A165355 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004355.P13009667666335678968

namespace A004355

/-- `record[A051053(A165355(n)-1)]` -/
def P13009667666335678968.Spec : Prop :=
  ∀ n, P13009667666335678968.a n = A004355 n

end A004355

/-! ## A004355.P10474120324856082288

`A051053(A008458(n))^A178334(n)`
-/

namespace A004355.P10474120324856082288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051053 (A008458 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A004355.P10474120324856082288

namespace A004355

/-- `A051053(A008458(n))^A178334(n)` -/
def P10474120324856082288.Spec : Prop :=
  ∀ n, P10474120324856082288.a n = (A004355 n : ℚ)

end A004355

/-! ## A004355.P190538483191920256

`gcd(A000038(n), A051053(A008458(n)))`
-/

namespace A004355.P190538483191920256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A051053 (A008458 n).toNat)

end

end A004355.P190538483191920256

namespace A004355

/-- `gcd(A000038(n), A051053(A008458(n)))` -/
def P190538483191920256.Spec : Prop :=
  ∀ n, (P190538483191920256.a n : ℤ) = A004355 n

end A004355

/-! ## A004355.P9190723447498787858

`or(A000007(n), A051053(A008458(n)))`
-/

namespace A004355.P9190723447498787858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A051053 (A008458 n).toNat)

end

end A004355.P9190723447498787858

namespace A004355

/-- `or(A000007(n), A051053(A008458(n)))` -/
def P9190723447498787858.Spec : Prop :=
  ∀ n, P9190723447498787858.a n = A004355 n

end A004355

/-! ## A004355.P11428179236381343015

`A380607(n+1)/5`
-/

namespace A004355.P11428179236381343015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380607 (n + 1) : ℚ) / 5

end

end A004355.P11428179236381343015

namespace A004355

/-- `A380607(n+1)/5` -/
def P11428179236381343015.Spec : Prop :=
  ∀ n, P11428179236381343015.a n = (A004355 n : ℚ)

end A004355

/-! ## A004355.P15495696269077355615

`A090969(n)/(6*n+1)`
-/

namespace A004355.P15495696269077355615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090969 n : ℚ) / (6 * n + 1 : ℚ)

end

end A004355.P15495696269077355615

namespace A004355

/-- `A090969(n)/(6*n+1)` -/
def P15495696269077355615.Spec : Prop :=
  ∀ n, P15495696269077355615.a n = (A004355 n : ℚ)

end A004355

/-! ## A004355.P15254390585956005363

`ceil(A090969(n)/A271114(n))`
-/

namespace A004355.P15254390585956005363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090969 n : ℚ) / (A271114 n : ℚ)⌉

end

end A004355.P15254390585956005363

namespace A004355

/-- `ceil(A090969(n)/A271114(n))` -/
def P15254390585956005363.Spec : Prop :=
  ∀ n, P15254390585956005363.a n = A004355 n

end A004355

/-!
# A004356: Binomial coefficient C(6n,n-1).

The programs for A004356, the canonical program `A004356.P17945427354959100714` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004356 has offset 1).

The definition of A004356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+1), n)` (program `A004356.P17945427354959100714`, by `A004356.P17945427354959100714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004356.P17945427354959100714

`C(6*(n+1), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004356

/-- `C(6*(n+1), n)` -/
def P17945427354959100714.Spec : Prop :=
  ∀ n, (P17945427354959100714.a n : ℤ) = A004356 (n + 1)

theorem P17945427354959100714.correct : P17945427354959100714.Spec := by
  intro n
  simp only [A004356, Nat.add_sub_cancel]

end A004356

/-! ## A004356.P6058246108555568590

`(n+1)*Δ[A346065(n)]`
-/

namespace A004356.P6058246108555568590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A004356.P6058246108555568590

namespace A004356

/-- `(n+1)*Δ[A346065(n)]` -/
def P6058246108555568590.Spec : Prop :=
  ∀ n, P6058246108555568590.a n = A004356 (n + 1)

end A004356

/-! ## A004356.P11123851876433545631

`(n+1)*A002295(n+1)`
-/

namespace A004356.P11123851876433545631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002295 (n + 1)

end

end A004356.P11123851876433545631

namespace A004356

/-- `(n+1)*A002295(n+1)` -/
def P11123851876433545631.Spec : Prop :=
  ∀ n, P11123851876433545631.a n = A004356 (n + 1)

end A004356

/-! ## A004356.P4305546962343202845

`A079590(n+1)-A004355(n+1)`
-/

namespace A004356.P4305546962343202845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079590 (n + 1) - A004355 (n + 1)

end

end A004356.P4305546962343202845

namespace A004356

/-- `A079590(n+1)-A004355(n+1)` -/
def P4305546962343202845.Spec : Prop :=
  ∀ n, P4305546962343202845.a n = A004356 (n + 1)

end A004356

/-! ## A004356.P1715482521368538091

`lcm(n+1, C(A008458(n+1), n))`
-/

namespace A004356.P1715482521368538091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.choose (A008458 (n + 1)).toNat n)

end

end A004356.P1715482521368538091

namespace A004356

/-- `lcm(n+1, C(A008458(n+1), n))` -/
def P1715482521368538091.Spec : Prop :=
  ∀ n, (P1715482521368538091.a n : ℤ) = A004356 (n + 1)

end A004356

/-! ## A004356.P18287691419420192319

`record[C(A008486(n+3), A318518(n+1))]`
-/

namespace A004356.P18287691419420192319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008486 (n + 3)).toNat (A318518 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004356.P18287691419420192319

namespace A004356

/-- `record[C(A008486(n+3), A318518(n+1))]` -/
def P18287691419420192319.Spec : Prop :=
  ∀ n, (P18287691419420192319.a n : ℤ) = A004356 (n + 1)

end A004356

/-! ## A004356.P17501152082040467096

`A116089(A022267(n+1))`
-/

namespace A004356.P17501152082040467096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A022267 (n + 1)).toNat

end

end A004356.P17501152082040467096

namespace A004356

/-- `A116089(A022267(n+1))` -/
def P17501152082040467096.Spec : Prop :=
  ∀ n, P17501152082040467096.a n = A004356 (n + 1)

end A004356

/-!
# A004357: Binomial coefficient C(6n,n-2).

The programs for A004357, the canonical program `A004357.P4805506420288339714` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004357 has offset 2).

The definition of A004357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+2), n)` (program `A004357.P4805506420288339714`, by `A004357.P4805506420288339714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004357.P4805506420288339714

`C(6*(n+2), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004357

/-- `C(6*(n+2), n)` -/
def P4805506420288339714.Spec : Prop :=
  ∀ n, (P4805506420288339714.a n : ℤ) = A004357 (n + 2)

theorem P4805506420288339714.correct : P4805506420288339714.Spec := by
  intro n
  simp only [A004357, Nat.add_sub_cancel]

end A004357

/-! ## A004357.P11179331806696843990

`A116089(A064226(n+1))`
-/

namespace A004357.P11179331806696843990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A064226 (n + 1)).toNat

end

end A004357.P11179331806696843990

namespace A004357

/-- `A116089(A064226(n+1))` -/
def P11179331806696843990.Spec : Prop :=
  ∀ n, P11179331806696843990.a n = A004357 (n + 2)

end A004357

/-! ## A004357.P15083210382205876356

`A094527(A062728(n+2)+2)`
-/

namespace A004357.P15083210382205876356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (A062728 (n + 2) + 2).toNat

end

end A004357.P15083210382205876356

namespace A004357

/-- `A094527(A062728(n+2)+2)` -/
def P15083210382205876356.Spec : Prop :=
  ∀ n, P15083210382205876356.a n = A004357 (n + 2)

end A004357

/-! ## A004357.P17119171930676697986

`A014462(A154517(n+2)-1)`
-/

namespace A004357.P17119171930676697986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (A154517 (n + 2) - 1).toNat

end

end A004357.P17119171930676697986

namespace A004357

/-- `A014462(A154517(n+2)-1)` -/
def P17119171930676697986.Spec : Prop :=
  ∀ n, P17119171930676697986.a n = A004357 (n + 2)

end A004357

/-! ## A004357.P17801646120264342587

`A007318(A144314(n+2)+n)`
-/

namespace A004357.P17801646120264342587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A144314 (n + 2) + (n : ℤ)).toNat

end

end A004357.P17801646120264342587

namespace A004357

/-- `A007318(A144314(n+2)+n)` -/
def P17801646120264342587.Spec : Prop :=
  ∀ n, P17801646120264342587.a n = A004357 (n + 2)

end A004357

/-!
# A004358: Binomial coefficient C(6n,n-3).

The programs for A004358, the canonical program `A004358.P12469334198149993391` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004358 has offset 3).

The definition of A004358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+3), n)` (program `A004358.P12469334198149993391`, by `A004358.P12469334198149993391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004358.P12469334198149993391

`C(6*(n+3), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004358

/-- `C(6*(n+3), n)` -/
def P12469334198149993391.Spec : Prop :=
  ∀ n, (P12469334198149993391.a n : ℤ) = A004358 (n + 3)

theorem P12469334198149993391.correct : P12469334198149993391.Spec := by
  intro n
  simp only [A004358, Nat.add_sub_cancel]

end A004358

/-! ## A004358.P9422599475698933773

`abs(1-C(A008458(n+3), n))+1`
-/

namespace A004358.P9422599475698933773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (A008458 (n + 3)).toNat n : ℤ)| + 1

end

end A004358.P9422599475698933773

namespace A004358

/-- `abs(1-C(A008458(n+3), n))+1` -/
def P9422599475698933773.Spec : Prop :=
  ∀ n, P9422599475698933773.a n = A004358 (n + 3)

end A004358

/-! ## A004358.P4686886080590672881

`A007318(A000217(6*(n+3))+n)`
-/

namespace A004358.P4686886080590672881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (6 * (n + 3)) + (n : ℤ)).toNat

end

end A004358.P4686886080590672881

namespace A004358

/-- `A007318(A000217(6*(n+3))+n)` -/
def P4686886080590672881.Spec : Prop :=
  ∀ n, P4686886080590672881.a n = A004358 (n + 3)

end A004358

/-! ## A004358.P1215501012901863535

`A007318(A000096(6*(n+3))-n)`
-/

namespace A004358.P1215501012901863535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (6 * (n + 3)) - (n : ℤ)).toNat

end

end A004358.P1215501012901863535

namespace A004358

/-- `A007318(A000096(6*(n+3))-n)` -/
def P1215501012901863535.Spec : Prop :=
  ∀ n, P1215501012901863535.a n = A004358 (n + 3)

end A004358

/-! ## A004358.P5484646417252204476

`A007318(A179865(6*n+19)+n)`
-/

namespace A004358.P5484646417252204476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A179865 (6 * n + 19) + (n : ℤ)).toNat

end

end A004358.P5484646417252204476

namespace A004358

/-- `A007318(A179865(6*n+19)+n)` -/
def P5484646417252204476.Spec : Prop :=
  ∀ n, P5484646417252204476.a n = A004358 (n + 3)

end A004358

/-!
# A004359: Binomial coefficient C(6n,n-4).

The programs for A004359, the canonical program `A004359.P11437737394782503559` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004359 has offset 4).

The definition of A004359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+4), n)` (program `A004359.P11437737394782503559`, by `A004359.P11437737394782503559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004359.P11437737394782503559

`C(6*(n+4), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004359

/-- `C(6*(n+4), n)` -/
def P11437737394782503559.Spec : Prop :=
  ∀ n, (P11437737394782503559.a n : ℤ) = A004359 (n + 4)

theorem P11437737394782503559.correct : P11437737394782503559.Spec := by
  intro n
  simp only [A004359, Nat.add_sub_cancel]

end A004359

/-! ## A004359.P13525499007347128509

`record[C(n%7*floor(n/7), floor(5*n/7))]`
-/

namespace A004359.P13525499007347128509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n % 7 : ℕ) : ℤ) * ⌊(n : ℚ) / 7⌋).toNat ⌊5 * ((n : ℚ) / 7)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004359.P13525499007347128509

namespace A004359

/-- `record[C(n%7*floor(n/7), floor(5*n/7))]` -/
def P13525499007347128509.Spec : Prop :=
  ∀ n, (P13525499007347128509.a n : ℤ) = A004359 (n + 4)

end A004359

/-! ## A004359.P3107943446701801023

`record[C(A257847(n), floor(5*n/7))]`
-/

namespace A004359.P3107943446701801023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257847 n).toNat ⌊5 * ((n : ℚ) / 7)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004359.P3107943446701801023

namespace A004359

/-- `record[C(A257847(n), floor(5*n/7))]` -/
def P3107943446701801023.Spec : Prop :=
  ∀ n, (P3107943446701801023.a n : ℤ) = A004359 (n + 4)

end A004359

/-! ## A004359.P857462882132220482

`abs(C(Δ[A028896(n+3)], n)-1)+1`
-/

namespace A004359.P857462882132220482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (f1 (n + 1) - f1 n).toNat n : ℤ) - 1| + 1

end

end A004359.P857462882132220482

namespace A004359

/-- `abs(C(Δ[A028896(n+3)], n)-1)+1` -/
def P857462882132220482.Spec : Prop :=
  ∀ n, P857462882132220482.a n = A004359 (n + 4)

end A004359

/-! ## A004359.P15515678985795847793

`A007318(A000217(6*(n+4))+n)`
-/

namespace A004359.P15515678985795847793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (6 * (n + 4)) + (n : ℤ)).toNat

end

end A004359.P15515678985795847793

namespace A004359

/-- `A007318(A000217(6*(n+4))+n)` -/
def P15515678985795847793.Spec : Prop :=
  ∀ n, P15515678985795847793.a n = A004359 (n + 4)

end A004359

/-!
# A004360: Binomial coefficient C(6n,n-5).

The programs for A004360, the canonical program `A004360.P1987717472194084269` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004360 has offset 5).

The definition of A004360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+5), n)` (program `A004360.P1987717472194084269`, by `A004360.P1987717472194084269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004360.P1987717472194084269

`C(6*(n+5), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004360

/-- `C(6*(n+5), n)` -/
def P1987717472194084269.Spec : Prop :=
  ∀ n, (P1987717472194084269.a n : ℤ) = A004360 (n + 5)

theorem P1987717472194084269.correct : P1987717472194084269.Spec := by
  intro n
  simp only [A004360, Nat.add_sub_cancel]

end A004360

/-! ## A004360.P9795625553904072217

`abs(C(Δ[A028896(n+4)], n)-1)+1`
-/

namespace A004360.P9795625553904072217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (f1 (n + 1) - f1 n).toNat n : ℤ) - 1| + 1

end

end A004360.P9795625553904072217

namespace A004360

/-- `abs(C(Δ[A028896(n+4)], n)-1)+1` -/
def P9795625553904072217.Spec : Prop :=
  ∀ n, P9795625553904072217.a n = A004360 (n + 5)

end A004360

/-! ## A004360.P11957136992299017585

`record[A116089(A064226(n)+2)]`
-/

namespace A004360.P11957136992299017585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A064226 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004360.P11957136992299017585

namespace A004360

/-- `record[A116089(A064226(n)+2)]` -/
def P11957136992299017585.Spec : Prop :=
  ∀ n, P11957136992299017585.a n = A004360 (n + 5)

end A004360

/-! ## A004360.P7124992763300094532

`A116089(A064226(n+3)+2)`
-/

namespace A004360.P7124992763300094532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A064226 (n + 3) + 2).toNat

end

end A004360.P7124992763300094532

namespace A004360

/-- `A116089(A064226(n+3)+2)` -/
def P7124992763300094532.Spec : Prop :=
  ∀ n, P7124992763300094532.a n = A004360 (n + 5)

end A004360

/-! ## A004360.P14955974996015625673

`A007318(A000217(5*(n+4)+n+10)+n)`
-/

namespace A004360.P14955974996015625673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (5 * (n + 4) + n + 10) + (n : ℤ)).toNat

end

end A004360.P14955974996015625673

namespace A004360

/-- `A007318(A000217(5*(n+4)+n+10)+n)` -/
def P14955974996015625673.Spec : Prop :=
  ∀ n, P14955974996015625673.a n = A004360 (n + 5)

end A004360

/-!
# A004361: Binomial coefficient C(6n,n-6).

The programs for A004361, the canonical program `A004361.P18243550926064082528` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004361 has offset 6).

The definition of A004361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+6), n)` (program `A004361.P18243550926064082528`, by `A004361.P18243550926064082528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004361.P18243550926064082528

`C(6*(n+6), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004361

/-- `C(6*(n+6), n)` -/
def P18243550926064082528.Spec : Prop :=
  ∀ n, (P18243550926064082528.a n : ℤ) = A004361 (n + 6)

theorem P18243550926064082528.correct : P18243550926064082528.Spec := by
  intro n
  simp only [A004361, Nat.add_sub_cancel]

end A004361

/-! ## A004361.P11133125200926541605

`abs(C(A008458(n+6), n)-1)+1`
-/

namespace A004361.P11133125200926541605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A008458 (n + 6)).toNat n : ℤ) - 1| + 1

end

end A004361.P11133125200926541605

namespace A004361

/-- `abs(C(A008458(n+6), n)-1)+1` -/
def P11133125200926541605.Spec : Prop :=
  ∀ n, P11133125200926541605.a n = A004361 (n + 6)

end A004361

/-! ## A004361.P1696029623025804266

`C(A008458(n+6), n)/(A004442(n)-n)²`
-/

namespace A004361.P1696029623025804266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008458 (n + 6)).toNat n : ℚ) / ((A004442 n - (n : ℤ)) ^ 2 : ℚ)

end

end A004361.P1696029623025804266

namespace A004361

/-- `C(A008458(n+6), n)/(A004442(n)-n)²` -/
def P1696029623025804266.Spec : Prop :=
  ∀ n, P1696029623025804266.a n = (A004361 (n + 6) : ℚ)

end A004361

/-! ## A004361.P14019128051801562483

`C(A008458(n+6), n)+1-A001222(A348153(n+1))`
-/

namespace A004361.P14019128051801562483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008458 (n + 6)).toNat n + 1 : ℤ) - A001222 (A348153 (n + 1)).toNat

end

end A004361.P14019128051801562483

namespace A004361

/-- `C(A008458(n+6), n)+1-A001222(A348153(n+1))` -/
def P14019128051801562483.Spec : Prop :=
  ∀ n, P14019128051801562483.a n = A004361 (n + 6)

end A004361

/-! ## A004361.P8282293383528788759

`A116089(A062728(n+4)+4)`
-/

namespace A004361.P8282293383528788759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 (A062728 (n + 4) + 4).toNat

end

end A004361.P8282293383528788759

namespace A004361

/-- `A116089(A062728(n+4)+4)` -/
def P8282293383528788759.Spec : Prop :=
  ∀ n, P8282293383528788759.a n = A004361 (n + 6)

end A004361

/-!
# A004362: Binomial coefficient C(6n,n-7).

The programs for A004362, the canonical program `A004362.P15442163914601720876` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004362 has offset 7).

The definition of A004362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+7), n)` (program `A004362.P15442163914601720876`, by `A004362.P15442163914601720876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004362.P15442163914601720876

`C(6*(n+7), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004362

/-- `C(6*(n+7), n)` -/
def P15442163914601720876.Spec : Prop :=
  ∀ n, (P15442163914601720876.a n : ℤ) = A004362 (n + 7)

theorem P15442163914601720876.correct : P15442163914601720876.Spec := by
  intro n
  simp only [A004362, Nat.add_sub_cancel]

end A004362

/-! ## A004362.P2743982032484813103

`abs(C(A008458(n+7), n)-1)+1`
-/

namespace A004362.P2743982032484813103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A008458 (n + 7)).toNat n : ℤ) - 1| + 1

end

end A004362.P2743982032484813103

namespace A004362

/-- `abs(C(A008458(n+7), n)-1)+1` -/
def P2743982032484813103.Spec : Prop :=
  ∀ n, P2743982032484813103.a n = A004362 (n + 7)

end A004362

/-! ## A004362.P8875094504961831477

`C(A008458(n+7), n)+1-dr(A033999(n))`
-/

namespace A004362.P8875094504961831477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008458 (n + 7)).toNat n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (A033999 n) : ℤ)

end

end A004362.P8875094504961831477

namespace A004362

/-- `C(A008458(n+7), n)+1-dr(A033999(n))` -/
def P8875094504961831477.Spec : Prop :=
  ∀ n, P8875094504961831477.a n = A004362 (n + 7)

end A004362

/-! ## A004362.P17959765062185471825

`A070635(A004737(n+1)+1)+C(A008458(n+7), n)`
-/

namespace A004362.P17959765062185471825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A004737 (n + 1) + 1).toNat + (Nat.choose (A008458 (n + 7)).toNat n : ℤ)

end

end A004362.P17959765062185471825

namespace A004362

/-- `A070635(A004737(n+1)+1)+C(A008458(n+7), n)` -/
def P17959765062185471825.Spec : Prop :=
  ∀ n, P17959765062185471825.a n = A004362 (n + 7)

end A004362

/-! ## A004362.P15023681962140152031

`A307445(A000040(n+1))+C(A008458(n+7), n)+1`
-/

namespace A004362.P15023681962140152031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A000040 (n + 1)).toNat + (Nat.choose (A008458 (n + 7)).toNat n + 1 : ℤ)

end

end A004362.P15023681962140152031

namespace A004362

/-- `A307445(A000040(n+1))+C(A008458(n+7), n)+1` -/
def P15023681962140152031.Spec : Prop :=
  ∀ n, P15023681962140152031.a n = A004362 (n + 7)

end A004362

/-!
# A004363: Binomial coefficient C(6n,n-8).

The programs for A004363, the canonical program `A004363.P13225417012971499459` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004363 has offset 8).

The definition of A004363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+8), n)` (program `A004363.P13225417012971499459`, by `A004363.P13225417012971499459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004363.P13225417012971499459

`C(6*(n+8), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004363

/-- `C(6*(n+8), n)` -/
def P13225417012971499459.Spec : Prop :=
  ∀ n, (P13225417012971499459.a n : ℤ) = A004363 (n + 8)

theorem P13225417012971499459.correct : P13225417012971499459.Spec := by
  intro n
  simp only [A004363, Nat.add_sub_cancel]

end A004363

/-! ## A004363.P3324477787379072780

`abs(1-C(A008458(n+8), n))+1`
-/

namespace A004363.P3324477787379072780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (A008458 (n + 8)).toNat n : ℤ)| + 1

end

end A004363.P3324477787379072780

namespace A004363

/-- `abs(1-C(A008458(n+8), n))+1` -/
def P3324477787379072780.Spec : Prop :=
  ∀ n, P3324477787379072780.a n = A004363 (n + 8)

end A004363

/-! ## A004363.P2896850948734449188

`C(A008458(n+8), n)+1-dr(A033999(n))`
-/

namespace A004363.P2896850948734449188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008458 (n + 8)).toNat n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (A033999 n) : ℤ)

end

end A004363.P2896850948734449188

namespace A004363

/-- `C(A008458(n+8), n)+1-dr(A033999(n))` -/
def P2896850948734449188.Spec : Prop :=
  ∀ n, P2896850948734449188.a n = A004363 (n + 8)

end A004363

/-! ## A004363.P4847901390689109845

`C(A008458(n+8), n)-A000302(n)%3+1`
-/

namespace A004363.P4847901390689109845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008458 (n + 8)).toNat n : ℤ) - Int.tmod (A000302 n) 3 + 1

end

end A004363.P4847901390689109845

namespace A004363

/-- `C(A008458(n+8), n)-A000302(n)%3+1` -/
def P4847901390689109845.Spec : Prop :=
  ∀ n, P4847901390689109845.a n = A004363 (n + 8)

end A004363

/-! ## A004363.P15420247358430241807

`C(A008458(n+8), n)+A146326(Δ[n²]+1)%2`
-/

namespace A004363.P15420247358430241807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008458 (n + 8)).toNat n : ℤ) + Int.tmod (A146326 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) 2

end

end A004363.P15420247358430241807

namespace A004363

/-- `C(A008458(n+8), n)+A146326(Δ[n²]+1)%2` -/
def P15420247358430241807.Spec : Prop :=
  ∀ n, P15420247358430241807.a n = A004363 (n + 8)

end A004363

/-! ## A004363.P5146505223279222266

`C(A008458(n+8), n)+1-A328479(A119617(n+1))`
-/

namespace A004363.P5146505223279222266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008458 (n + 8)).toNat n + 1 : ℤ) - A328479 (A119617 (n + 1)).toNat

end

end A004363.P5146505223279222266

namespace A004363

/-- `C(A008458(n+8), n)+1-A328479(A119617(n+1))` -/
def P5146505223279222266.Spec : Prop :=
  ∀ n, P5146505223279222266.a n = A004363 (n + 8)

end A004363

/-!
# A004364: Binomial coefficient C(6n,n-9).

The programs for A004364, the canonical program `A004364.P8957060273284908986` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004364 has offset 9).

The definition of A004364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+9), n)` (program `A004364.P8957060273284908986`, by `A004364.P8957060273284908986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004364.P8957060273284908986

`C(6*(n+9), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004364

/-- `C(6*(n+9), n)` -/
def P8957060273284908986.Spec : Prop :=
  ∀ n, (P8957060273284908986.a n : ℤ) = A004364 (n + 9)

theorem P8957060273284908986.correct : P8957060273284908986.Spec := by
  intro n
  simp only [A004364, Nat.add_sub_cancel]

end A004364

/-! ## A004364.P157165407717131711

`abs(1-C(A008458(n+9), n))+1`
-/

namespace A004364.P157165407717131711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (A008458 (n + 9)).toNat n : ℤ)| + 1

end

end A004364.P157165407717131711

namespace A004364

/-- `abs(1-C(A008458(n+9), n))+1` -/
def P157165407717131711.Spec : Prop :=
  ∀ n, P157165407717131711.a n = A004364 (n + 9)

end A004364

/-! ## A004364.P16809149172767704679

`char[A140263(n)]+C(A008458(n+9), n)-1`
-/

namespace A004364.P16809149172767704679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140263 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ((Nat.choose (A008458 (n + 9)).toNat n : ℤ) - 1)

end

end A004364.P16809149172767704679

namespace A004364

/-- `char[A140263(n)]+C(A008458(n+9), n)-1` -/
def P16809149172767704679.Spec : Prop :=
  ∀ n, P16809149172767704679.a n = A004364 (n + 9)

end A004364

/-! ## A004364.P17656535478609465054

`A000038(A175965(n+1))+C(A008458(n+9), n)`
-/

namespace A004364.P17656535478609465054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A175965 (n + 1)).toNat + (Nat.choose (A008458 (n + 9)).toNat n : ℤ)

end

end A004364.P17656535478609465054

namespace A004364

/-- `A000038(A175965(n+1))+C(A008458(n+9), n)` -/
def P17656535478609465054.Spec : Prop :=
  ∀ n, P17656535478609465054.a n = A004364 (n + 9)

end A004364

/-! ## A004364.P11648886437896091577

`C(A181652(n)+1, 4)+C(A008458(n+9), n)`
-/

namespace A004364.P11648886437896091577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181652 n + 1).toNat 4 + Nat.choose (A008458 (n + 9)).toNat n

end

end A004364.P11648886437896091577

namespace A004364

/-- `C(A181652(n)+1, 4)+C(A008458(n+9), n)` -/
def P11648886437896091577.Spec : Prop :=
  ∀ n, (P11648886437896091577.a n : ℤ) = A004364 (n + 9)

end A004364

/-! ## A004364.P2791960533461470933

`C(A008458(n+9), n)+1-A001222(A348153(n+1))`
-/

namespace A004364.P2791960533461470933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008458 (n + 9)).toNat n + 1 : ℤ) - A001222 (A348153 (n + 1)).toNat

end

end A004364.P2791960533461470933

namespace A004364

/-- `C(A008458(n+9), n)+1-A001222(A348153(n+1))` -/
def P2791960533461470933.Spec : Prop :=
  ∀ n, P2791960533461470933.a n = A004364 (n + 9)

end A004364

/-!
# A004365: Binomial coefficient C(6n,n-10).

The programs for A004365, the canonical program `A004365.P8244411938618301293` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004365 has offset 10).

The definition of A004365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+10), n)` (program `A004365.P8244411938618301293`, by `A004365.P8244411938618301293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004365.P8244411938618301293

`C(6*(n+10), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004365

/-- `C(6*(n+10), n)` -/
def P8244411938618301293.Spec : Prop :=
  ∀ n, (P8244411938618301293.a n : ℤ) = A004365 (n + 10)

theorem P8244411938618301293.correct : P8244411938618301293.Spec := by
  intro n
  simp only [A004365, Nat.add_sub_cancel]

end A004365

/-! ## A004365.P14203523652829277408

`abs(1-C(A008458(n+10), n))+1`
-/

namespace A004365.P14203523652829277408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (A008458 (n + 10)).toNat n : ℤ)| + 1

end

end A004365.P14203523652829277408

namespace A004365

/-- `abs(1-C(A008458(n+10), n))+1` -/
def P14203523652829277408.Spec : Prop :=
  ∀ n, P14203523652829277408.a n = A004365 (n + 10)

end A004365

/-! ## A004365.P17481216216039314185

`C(A008458(n+10), n)^(A000007(n)+1)`
-/

namespace A004365.P17481216216039314185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008458 (n + 10)).toNat n : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A004365.P17481216216039314185

namespace A004365

/-- `C(A008458(n+10), n)^(A000007(n)+1)` -/
def P17481216216039314185.Spec : Prop :=
  ∀ n, P17481216216039314185.a n = (A004365 (n + 10) : ℚ)

end A004365

/-! ## A004365.P3565810658988530789

`A000007(A344291(n+2))+C(A008458(n+10), n)`
-/

namespace A004365.P3565810658988530789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A344291 (n + 2)).toNat + (Nat.choose (A008458 (n + 10)).toNat n : ℤ)

end

end A004365.P3565810658988530789

namespace A004365

/-- `A000007(A344291(n+2))+C(A008458(n+10), n)` -/
def P3565810658988530789.Spec : Prop :=
  ∀ n, P3565810658988530789.a n = A004365 (n + 10)

end A004365

/-! ## A004365.P14856223009581906606

`C(A008458(n+10), n)%A139287(n+4)`
-/

namespace A004365.P14856223009581906606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A008458 (n + 10)).toNat n : ℤ) (A139287 (n + 4))

end

end A004365.P14856223009581906606

namespace A004365

/-- `C(A008458(n+10), n)%A139287(n+4)` -/
def P14856223009581906606.Spec : Prop :=
  ∀ n, P14856223009581906606.a n = A004365 (n + 10)

end A004365

/-!
# A004366: Binomial coefficient C(6n,n-11).

The programs for A004366, the canonical program `A004366.P848576582387852771` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004366 has offset 11).

The definition of A004366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+11), n)` (program `A004366.P848576582387852771`, by `A004366.P848576582387852771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004366.P848576582387852771

`C(6*(n+11), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004366

/-- `C(6*(n+11), n)` -/
def P848576582387852771.Spec : Prop :=
  ∀ n, (P848576582387852771.a n : ℤ) = A004366 (n + 11)

theorem P848576582387852771.correct : P848576582387852771.Spec := by
  intro n
  simp only [A004366, Nat.add_sub_cancel]

end A004366

/-!
# A004367: Binomial coefficient C(6n,n-12).

The programs for A004367, the canonical program `A004367.P1475337815025192868` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004367 has offset 12).

The definition of A004367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*(n+12), n)` (program `A004367.P1475337815025192868`, by `A004367.P1475337815025192868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004367.P1475337815025192868

`C(6*(n+12), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004367

/-- `C(6*(n+12), n)` -/
def P1475337815025192868.Spec : Prop :=
  ∀ n, (P1475337815025192868.a n : ℤ) = A004367 (n + 12)

theorem P1475337815025192868.correct : P1475337815025192868.Spec := by
  intro n
  simp only [A004367, Nat.add_sub_cancel]

end A004367

/-!
# A004368: Binomial coefficient C(7n,n).

The programs for A004368, the canonical program `A004368.P14523385727700604469` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004368 has offset 0).

The definition of A004368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*n, n)` (program `A004368.P14523385727700604469`, by `A004368.P14523385727700604469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004368.P14523385727700604469

`C(7*n, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004368

/-- `C(7*n, n)` -/
def P14523385727700604469.Spec : Prop :=
  ∀ n, (P14523385727700604469.a n : ℤ) = A004368 n

theorem P14523385727700604469.correct : P14523385727700604469.Spec := by
  intro n
  simp only [A004368]

end A004368

/-! ## A004368.P10958178112785227320

`A062947(7*n)`
-/

namespace A004368.P10958178112785227320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062947 (7 * n)

end

end A004368.P10958178112785227320

namespace A004368

/-- `A062947(7*n)` -/
def P10958178112785227320.Spec : Prop :=
  ∀ n, P10958178112785227320.a n = A004368 n

end A004368

/-! ## A004368.P1342119957071754438

`(6*n+1)*A002296(n)`
-/

namespace A004368.P1342119957071754438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A002296 n

end

end A004368.P1342119957071754438

namespace A004368

/-- `(6*n+1)*A002296(n)` -/
def P1342119957071754438.Spec : Prop :=
  ∀ n, P1342119957071754438.a n = A004368 n

end A004368

/-! ## A004368.P12572792213555359927

`A002296(n)*A016921(n)`
-/

namespace A004368.P12572792213555359927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002296 n * A016921 n

end

end A004368.P12572792213555359927

namespace A004368

/-- `A002296(n)*A016921(n)` -/
def P12572792213555359927.Spec : Prop :=
  ∀ n, P12572792213555359927.a n = A004368 n

end A004368

/-! ## A004368.P1289875768951191013

`A002296(n)*A033627(A103517(n))`
-/

namespace A004368.P1289875768951191013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002296 n * A033627 (A103517 n).toNat

end

end A004368.P1289875768951191013

namespace A004368

/-- `A002296(n)*A033627(A103517(n))` -/
def P1289875768951191013.Spec : Prop :=
  ∀ n, P1289875768951191013.a n = A004368 n

end A004368

/-! ## A004368.P514267003627108374

`record[C(n, lcm(7, n)/7)]`
-/

namespace A004368.P514267003627108374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.roundAway ((Nat.lcm 7 n : ℚ) / 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004368.P514267003627108374

namespace A004368

/-- `record[C(n, lcm(7, n)/7)]` -/
def P514267003627108374.Spec : Prop :=
  ∀ n, (P514267003627108374.a n : ℤ) = A004368 n

end A004368

/-! ## A004368.P2980717885382930419

`record[C(n, A106608(n))]`
-/

namespace A004368.P2980717885382930419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A106608 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004368.P2980717885382930419

namespace A004368

/-- `record[C(n, A106608(n))]` -/
def P2980717885382930419.Spec : Prop :=
  ∀ n, (P2980717885382930419.a n : ℤ) = A004368 n

end A004368

/-! ## A004368.P9667733575336045817

`record[C(A030123(n), A006370(n))]`
-/

namespace A004368.P9667733575336045817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030123 n).toNat (A006370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004368.P9667733575336045817

namespace A004368

/-- `record[C(A030123(n), A006370(n))]` -/
def P9667733575336045817.Spec : Prop :=
  ∀ n, (P9667733575336045817.a n : ℤ) = A004368 n

end A004368

/-! ## A004368.P9693897919006317234

`record[C(A047355(n+1), A006370(n))]`
-/

namespace A004368.P9693897919006317234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047355 (n + 1)).toNat (A006370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004368.P9693897919006317234

namespace A004368

/-- `record[C(A047355(n+1), A006370(n))]` -/
def P9693897919006317234.Spec : Prop :=
  ∀ n, (P9693897919006317234.a n : ℤ) = A004368 n

end A004368

/-! ## A004368.P18410328779847719955

`A060539(A253145(n+5)-(n-1))`
-/

namespace A004368.P18410328779847719955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060539 (A253145 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A004368.P18410328779847719955

namespace A004368

/-- `A060539(A253145(n+5)-(n-1))` -/
def P18410328779847719955.Spec : Prop :=
  ∀ n, P18410328779847719955.a n = A004368 n

end A004368

/-!
# A004369: Binomial coefficient C(7n,n-1).

The programs for A004369, the canonical program `A004369.P4969954063635526749` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004369 has offset 1).

The definition of A004369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+1), n)` (program `A004369.P4969954063635526749`, by `A004369.P4969954063635526749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004369.P4969954063635526749

`C(7*(n+1), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004369

/-- `C(7*(n+1), n)` -/
def P4969954063635526749.Spec : Prop :=
  ∀ n, (P4969954063635526749.a n : ℤ) = A004369 (n + 1)

theorem P4969954063635526749.correct : P4969954063635526749.Spec := by
  intro n
  simp only [A004369, Nat.add_sub_cancel]

end A004369

/-! ## A004369.P7652923855501658550

`(n+1)*Δ[A346671(n)]`
-/

namespace A004369.P7652923855501658550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A004369.P7652923855501658550

namespace A004369

/-- `(n+1)*Δ[A346671(n)]` -/
def P7652923855501658550.Spec : Prop :=
  ∀ n, P7652923855501658550.a n = A004369 (n + 1)

end A004369

/-! ## A004369.P496616572856515242

`(n+1)*A002296(n+1)`
-/

namespace A004369.P496616572856515242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002296 (n + 1)

end

end A004369.P496616572856515242

namespace A004369

/-- `(n+1)*A002296(n+1)` -/
def P496616572856515242.Spec : Prop :=
  ∀ n, P496616572856515242.a n = A004369 (n + 1)

end A004369

/-! ## A004369.P5119828276390097678

`(n+1)*A143547(2*(n+1))`
-/

namespace A004369.P5119828276390097678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143547 (2 * (n + 1))

end

end A004369.P5119828276390097678

namespace A004369

/-- `(n+1)*A143547(2*(n+1))` -/
def P5119828276390097678.Spec : Prop :=
  ∀ n, P5119828276390097678.a n = A004369 (n + 1)

end A004369

/-! ## A004369.P8644274539587335114

`A124819(A022267(n+1))`
-/

namespace A004369.P8644274539587335114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124819 (A022267 (n + 1)).toNat

end

end A004369.P8644274539587335114

namespace A004369

/-- `A124819(A022267(n+1))` -/
def P8644274539587335114.Spec : Prop :=
  ∀ n, P8644274539587335114.a n = A004369 (n + 1)

end A004369

/-!
# A004370: Binomial coefficient C(7n,n-2).

The programs for A004370, the canonical program `A004370.P3045832559051313308` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004370 has offset 2).

The definition of A004370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+2), n)` (program `A004370.P3045832559051313308`, by `A004370.P3045832559051313308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004370.P3045832559051313308

`C(7*(n+2), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004370

/-- `C(7*(n+2), n)` -/
def P3045832559051313308.Spec : Prop :=
  ∀ n, (P3045832559051313308.a n : ℤ) = A004370 (n + 2)

theorem P3045832559051313308.correct : P3045832559051313308.Spec := by
  intro n
  simp only [A004370, Nat.add_sub_cancel]

end A004370

/-! ## A004370.P9064237337643849250

`A127893(A064226(n+1))`
-/

namespace A004370.P9064237337643849250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127893 (A064226 (n + 1)).toNat

end

end A004370.P9064237337643849250

namespace A004370

/-- `A127893(A064226(n+1))` -/
def P9064237337643849250.Spec : Prop :=
  ∀ n, P9064237337643849250.a n = A004370 (n + 2)

end A004370

/-! ## A004370.P13792255965781484106

`A206294(A006137(n+2))`
-/

namespace A004370.P13792255965781484106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 (A006137 (n + 2)).toNat

end

end A004370.P13792255965781484106

namespace A004370

/-- `A206294(A006137(n+2))` -/
def P13792255965781484106.Spec : Prop :=
  ∀ n, P13792255965781484106.a n = A004370 (n + 2)

end A004370

/-! ## A004370.P77303313153441743

`A206294(A081266(n+2)-(n+1))`
-/

namespace A004370.P77303313153441743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 (A081266 (n + 2) - (n + 1 : ℤ)).toNat

end

end A004370.P77303313153441743

namespace A004370

/-- `A206294(A081266(n+2)-(n+1))` -/
def P77303313153441743.Spec : Prop :=
  ∀ n, P77303313153441743.a n = A004370 (n + 2)

end A004370

/-! ## A004370.P6944504801725760069

`A127893(A051682(n+2)+n+3)`
-/

namespace A004370.P6944504801725760069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127893 (A051682 (n + 2) + (n + 3 : ℤ)).toNat

end

end A004370.P6944504801725760069

namespace A004370

/-- `A127893(A051682(n+2)+n+3)` -/
def P6944504801725760069.Spec : Prop :=
  ∀ n, P6944504801725760069.a n = A004370 (n + 2)

end A004370

/-!
# A004371: Binomial coefficient C(7n,n-3).

The programs for A004371, the canonical program `A004371.P10795570623809600048` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004371 has offset 3).

The definition of A004371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+3), n)` (program `A004371.P10795570623809600048`, by `A004371.P10795570623809600048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004371.P10795570623809600048

`C(7*(n+3), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004371

/-- `C(7*(n+3), n)` -/
def P10795570623809600048.Spec : Prop :=
  ∀ n, (P10795570623809600048.a n : ℤ) = A004371 (n + 3)

theorem P10795570623809600048.correct : P10795570623809600048.Spec := by
  intro n
  simp only [A004371, Nat.add_sub_cancel]

end A004371

/-! ## A004371.P6274623391802453304

`A110770(eq[5, A025581(n)])`
-/

namespace A004371.P6274623391802453304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110770 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004371.P6274623391802453304

namespace A004371

/-- `A110770(eq[5, A025581(n)])` -/
def P6274623391802453304.Spec : Prop :=
  ∀ n, P6274623391802453304.a n = A004371 (n + 3)

end A004371

/-! ## A004371.P1170557932515527761

`A110770(eq[6, A193739(n)])`
-/

namespace A004371.P1170557932515527761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110770 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004371.P1170557932515527761

namespace A004371

/-- `A110770(eq[6, A193739(n)])` -/
def P1170557932515527761.Spec : Prop :=
  ∀ n, P1170557932515527761.a n = A004371 (n + 3)

end A004371

/-! ## A004371.P4388379303392890256

`A110770(Δ[A023551(n+1)])`
-/

namespace A004371.P4388379303392890256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110770 (f1 (n + 1) - f1 n).toNat

end

end A004371.P4388379303392890256

namespace A004371

/-- `A110770(Δ[A023551(n+1)])` -/
def P4388379303392890256.Spec : Prop :=
  ∀ n, P4388379303392890256.a n = A004371 (n + 3)

end A004371

/-! ## A004371.P17431310198839985344

`A110770(eq[6, A004736(n+1)])`
-/

namespace A004371.P17431310198839985344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110770 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004371.P17431310198839985344

namespace A004371

/-- `A110770(eq[6, A004736(n+1)])` -/
def P17431310198839985344.Spec : Prop :=
  ∀ n, P17431310198839985344.a n = A004371 (n + 3)

end A004371

/-!
# A004372: Binomial coefficient C(7n,n-4).

The programs for A004372, the canonical program `A004372.P9898579607125480149` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004372 has offset 4).

The definition of A004372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+4), n)` (program `A004372.P9898579607125480149`, by `A004372.P9898579607125480149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004372.P9898579607125480149

`C(7*(n+4), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004372

/-- `C(7*(n+4), n)` -/
def P9898579607125480149.Spec : Prop :=
  ∀ n, (P9898579607125480149.a n : ℤ) = A004372 (n + 4)

theorem P9898579607125480149.correct : P9898579607125480149.Spec := by
  intro n
  simp only [A004372, Nat.add_sub_cancel]

end A004372

/-! ## A004372.P8077347440273847389

`record[C(A257849(n), A257846(2*n))]`
-/

namespace A004372.P8077347440273847389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257849 n).toNat (A257846 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004372.P8077347440273847389

namespace A004372

/-- `record[C(A257849(n), A257846(2*n))]` -/
def P8077347440273847389.Spec : Prop :=
  ∀ n, (P8077347440273847389.a n : ℤ) = A004372 (n + 4)

end A004372

/-! ## A004372.P10020150946889989564

`record[C(A257850(n), A257845(3*n))]`
-/

namespace A004372.P10020150946889989564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257850 n).toNat (A257845 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004372.P10020150946889989564

namespace A004372

/-- `record[C(A257850(n), A257845(3*n))]` -/
def P10020150946889989564.Spec : Prop :=
  ∀ n, (P10020150946889989564.a n : ℤ) = A004372 (n + 4)

end A004372

/-! ## A004372.P13324651695589605688

`A085478(A139273(n+4)+3)`
-/

namespace A004372.P13324651695589605688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A139273 (n + 4) + 3).toNat

end

end A004372.P13324651695589605688

namespace A004372

/-- `A085478(A139273(n+4)+3)` -/
def P13324651695589605688.Spec : Prop :=
  ∀ n, P13324651695589605688.a n = A004372 (n + 4)

end A004372

/-! ## A004372.P17171250253079056467

`A007318(A000217(7*(n+4))+n)`
-/

namespace A004372.P17171250253079056467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (7 * (n + 4)) + (n : ℤ)).toNat

end

end A004372.P17171250253079056467

namespace A004372

/-- `A007318(A000217(7*(n+4))+n)` -/
def P17171250253079056467.Spec : Prop :=
  ∀ n, P17171250253079056467.a n = A004372 (n + 4)

end A004372

/-!
# A004373: Binomial coefficient C(7n,n-5).

The programs for A004373, the canonical program `A004373.P13246609584925650437` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004373 has offset 5).

The definition of A004373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+5), n)` (program `A004373.P13246609584925650437`, by `A004373.P13246609584925650437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004373.P13246609584925650437

`C(7*(n+5), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004373

/-- `C(7*(n+5), n)` -/
def P13246609584925650437.Spec : Prop :=
  ∀ n, (P13246609584925650437.a n : ℤ) = A004373 (n + 5)

theorem P13246609584925650437.correct : P13246609584925650437.Spec := by
  intro n
  simp only [A004373, Nat.add_sub_cancel]

end A004373

/-! ## A004373.P690584465799130694

`record[C(A257848(n), A257844(3*n))]`
-/

namespace A004373.P690584465799130694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257848 n).toNat (A257844 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004373.P690584465799130694

namespace A004373

/-- `record[C(A257848(n), A257844(3*n))]` -/
def P690584465799130694.Spec : Prop :=
  ∀ n, (P690584465799130694.a n : ℤ) = A004373 (n + 5)

end A004373

/-! ## A004373.P7736765633391832019

`A206294(A081267(n+4)+3)`
-/

namespace A004373.P7736765633391832019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 (A081267 (n + 4) + 3).toNat

end

end A004373.P7736765633391832019

namespace A004373

/-- `A206294(A081267(n+4)+3)` -/
def P7736765633391832019.Spec : Prop :=
  ∀ n, P7736765633391832019.a n = A004373 (n + 5)

end A004373

/-!
# A004374: Binomial coefficient C(7n,n-6).

The programs for A004374, the canonical program `A004374.P11580853909276710106` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004374 has offset 6).

The definition of A004374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+6), n)` (program `A004374.P11580853909276710106`, by `A004374.P11580853909276710106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004374.P11580853909276710106

`C(7*(n+6), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004374

/-- `C(7*(n+6), n)` -/
def P11580853909276710106.Spec : Prop :=
  ∀ n, (P11580853909276710106.a n : ℤ) = A004374 (n + 6)

theorem P11580853909276710106.correct : P11580853909276710106.Spec := by
  intro n
  simp only [A004374, Nat.add_sub_cancel]

end A004374

/-!
# A004375: Binomial coefficient C(7n,n-7).

The programs for A004375, the canonical program `A004375.P16756746864113956093` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004375 has offset 7).

The definition of A004375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+7), n)` (program `A004375.P16756746864113956093`, by `A004375.P16756746864113956093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004375.P16756746864113956093

`C(7*(n+7), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004375

/-- `C(7*(n+7), n)` -/
def P16756746864113956093.Spec : Prop :=
  ∀ n, (P16756746864113956093.a n : ℤ) = A004375 (n + 7)

theorem P16756746864113956093.correct : P16756746864113956093.Spec := by
  intro n
  simp only [A004375, Nat.add_sub_cancel]

end A004375

/-!
# A004376: Binomial coefficient C(7n,n-8).

The programs for A004376, the canonical program `A004376.P16467165123861977076` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004376 has offset 8).

The definition of A004376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+8), n)` (program `A004376.P16467165123861977076`, by `A004376.P16467165123861977076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004376.P16467165123861977076

`C(7*(n+8), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004376

/-- `C(7*(n+8), n)` -/
def P16467165123861977076.Spec : Prop :=
  ∀ n, (P16467165123861977076.a n : ℤ) = A004376 (n + 8)

theorem P16467165123861977076.correct : P16467165123861977076.Spec := by
  intro n
  simp only [A004376, Nat.add_sub_cancel]

end A004376

/-!
# A004377: Binomial coefficient C(7n,n-9).

The programs for A004377, the canonical program `A004377.P16424138130293061866` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004377 has offset 9).

The definition of A004377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+9), n)` (program `A004377.P16424138130293061866`, by `A004377.P16424138130293061866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004377.P16424138130293061866

`C(7*(n+9), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004377

/-- `C(7*(n+9), n)` -/
def P16424138130293061866.Spec : Prop :=
  ∀ n, (P16424138130293061866.a n : ℤ) = A004377 (n + 9)

theorem P16424138130293061866.correct : P16424138130293061866.Spec := by
  intro n
  simp only [A004377, Nat.add_sub_cancel]

end A004377

/-!
# A004378: Binomial coefficient C(7n,n-10).

The programs for A004378, the canonical program `A004378.P602785265705358470` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004378 has offset 10).

The definition of A004378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+10), n)` (program `A004378.P602785265705358470`, by `A004378.P602785265705358470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004378.P602785265705358470

`C(7*(n+10), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004378

/-- `C(7*(n+10), n)` -/
def P602785265705358470.Spec : Prop :=
  ∀ n, (P602785265705358470.a n : ℤ) = A004378 (n + 10)

theorem P602785265705358470.correct : P602785265705358470.Spec := by
  intro n
  simp only [A004378, Nat.add_sub_cancel]

end A004378

/-!
# A004379: Binomial coefficient C(7n,n-11).

The programs for A004379, the canonical program `A004379.P867134552553162255` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004379 has offset 11).

The definition of A004379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+11), n)` (program `A004379.P867134552553162255`, by `A004379.P867134552553162255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004379.P867134552553162255

`C(7*(n+11), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004379

/-- `C(7*(n+11), n)` -/
def P867134552553162255.Spec : Prop :=
  ∀ n, (P867134552553162255.a n : ℤ) = A004379 (n + 11)

theorem P867134552553162255.correct : P867134552553162255.Spec := by
  intro n
  simp only [A004379, Nat.add_sub_cancel]

end A004379

/-!
# A004380: Binomial coefficient C(7n,n-12).

The programs for A004380, the canonical program `A004380.P13583441400816133199` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004380 has offset 12).

The definition of A004380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(7*(n+12), n)` (program `A004380.P13583441400816133199`, by `A004380.P13583441400816133199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004380.P13583441400816133199

`C(7*(n+12), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004380

/-- `C(7*(n+12), n)` -/
def P13583441400816133199.Spec : Prop :=
  ∀ n, (P13583441400816133199.a n : ℤ) = A004380 (n + 12)

theorem P13583441400816133199.correct : P13583441400816133199.Spec := by
  intro n
  simp only [A004380, Nat.add_sub_cancel]

end A004380

/-!
# A004381: Binomial coefficient C(8n,n).

The programs for A004381, the canonical program `A004381.P16510764700704271493` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004381 has offset 0).

The definition of A004381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*n, n)` (program `A004381.P16510764700704271493`, by `A004381.P16510764700704271493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004381.P16510764700704271493

`C(8*n, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004381

/-- `C(8*n, n)` -/
def P16510764700704271493.Spec : Prop :=
  ∀ n, (P16510764700704271493.a n : ℤ) = A004381 n

theorem P16510764700704271493.correct : P16510764700704271493.Spec := by
  intro n
  simp only [A004381]

end A004381

/-! ## A004381.P12843140349510845154

`(7*n+1)*A007556(n)`
-/

namespace A004381.P12843140349510845154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 1 : ℤ) * A007556 n

end

end A004381.P12843140349510845154

namespace A004381

/-- `(7*n+1)*A007556(n)` -/
def P12843140349510845154.Spec : Prop :=
  ∀ n, P12843140349510845154.a n = A004381 n

end A004381

/-! ## A004381.P3511797592537322504

`record[C(A008574(n), A025480(n))]`
-/

namespace A004381.P3511797592537322504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008574 n).toNat (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004381.P3511797592537322504

namespace A004381

/-- `record[C(A008574(n), A025480(n))]` -/
def P3511797592537322504.Spec : Prop :=
  ∀ n, (P3511797592537322504.a n : ℤ) = A004381 n

end A004381

/-! ## A004381.P2233992173925470221

`record[C(A008574(n), A142150(n))]`
-/

namespace A004381.P2233992173925470221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008574 n).toNat (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004381.P2233992173925470221

namespace A004381

/-- `record[C(A008574(n), A142150(n))]` -/
def P2233992173925470221.Spec : Prop :=
  ∀ n, (P2233992173925470221.a n : ℤ) = A004381 n

end A004381

/-! ## A004381.P17424185853312570577

`record[C(A008574(n), A174221(n))]`
-/

namespace A004381.P17424185853312570577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008574 n).toNat (A174221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004381.P17424185853312570577

namespace A004381

/-- `record[C(A008574(n), A174221(n))]` -/
def P17424185853312570577.Spec : Prop :=
  ∀ n, (P17424185853312570577.a n : ℤ) = A004381 n

end A004381

/-! ## A004381.P10876243887065761874

`record[C(A195161(n), A001281(n))]`
-/

namespace A004381.P10876243887065761874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A195161 n).toNat (A001281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004381.P10876243887065761874

namespace A004381

/-- `record[C(A195161(n), A001281(n))]` -/
def P10876243887065761874.Spec : Prop :=
  ∀ n, (P10876243887065761874.a n : ℤ) = A004381 n

end A004381

/-! ## A004381.P367119453750137765

`record[C(A047466(n+1), A047371(n+1))]`
-/

namespace A004381.P367119453750137765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047466 (n + 1)).toNat (A047371 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004381.P367119453750137765

namespace A004381

/-- `record[C(A047466(n+1), A047371(n+1))]` -/
def P367119453750137765.Spec : Prop :=
  ∀ n, (P367119453750137765.a n : ℤ) = A004381 n

end A004381

/-! ## A004381.P11749008541151060956

`record[C(A174256(n+1), A174257(n+1))]`
-/

namespace A004381.P11749008541151060956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A174256 (n + 1)).toNat (A174257 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004381.P11749008541151060956

namespace A004381

/-- `record[C(A174256(n+1), A174257(n+1))]` -/
def P11749008541151060956.Spec : Prop :=
  ∀ n, (P11749008541151060956.a n : ℤ) = A004381 n

end A004381

/-!
# A004382: Binomial coefficient C(8n, n-1).

The programs for A004382, the canonical program `A004382.P11185598044241859892` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004382 has offset 1).

The definition of A004382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+1), n)` (program `A004382.P11185598044241859892`, by `A004382.P11185598044241859892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004382.P11185598044241859892

`C(8*(n+1), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004382

/-- `C(8*(n+1), n)` -/
def P11185598044241859892.Spec : Prop :=
  ∀ n, (P11185598044241859892.a n : ℤ) = A004382 (n + 1)

theorem P11185598044241859892.correct : P11185598044241859892.Spec := by
  intro n
  simp only [A004382, Nat.add_sub_cancel]

end A004382

/-! ## A004382.P12015629970317083434

`(n+1)*Δ[A346672(n)]`
-/

namespace A004382.P12015629970317083434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A004382.P12015629970317083434

namespace A004382

/-- `(n+1)*Δ[A346672(n)]` -/
def P12015629970317083434.Spec : Prop :=
  ∀ n, P12015629970317083434.a n = A004382 (n + 1)

end A004382

/-! ## A004382.P11872588670486117443

`(n+1)*A007556(n+1)`
-/

namespace A004382.P11872588670486117443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007556 (n + 1)

end

end A004382.P11872588670486117443

namespace A004382

/-- `(n+1)*A007556(n+1)` -/
def P11872588670486117443.Spec : Prop :=
  ∀ n, P11872588670486117443.a n = A004382 (n + 1)

end A004382

/-! ## A004382.P17418442192730442149

`lcm(n+1, C(Δ[(n+1+n)²], n))`
-/

namespace A004382.P17418442192730442149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n)

end

end A004382.P17418442192730442149

namespace A004382

/-- `lcm(n+1, C(Δ[(n+1+n)²], n))` -/
def P17418442192730442149.Spec : Prop :=
  ∀ n, (P17418442192730442149.a n : ℤ) = A004382 (n + 1)

end A004382

/-! ## A004382.P18125963656537225248

`A094527(A139277(n+1)+1)`
-/

namespace A004382.P18125963656537225248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (A139277 (n + 1) + 1).toNat

end

end A004382.P18125963656537225248

namespace A004382

/-- `A094527(A139277(n+1)+1)` -/
def P18125963656537225248.Spec : Prop :=
  ∀ n, P18125963656537225248.a n = A004382 (n + 1)

end A004382

/-!
# A004383: Binomial coefficient C(8n,n-2).

The programs for A004383, the canonical program `A004383.P17894317105755686182` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004383 has offset 2).

The definition of A004383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+2), n)` (program `A004383.P17894317105755686182`, by `A004383.P17894317105755686182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004383.P17894317105755686182

`C(8*(n+2), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004383

/-- `C(8*(n+2), n)` -/
def P17894317105755686182.Spec : Prop :=
  ∀ n, (P17894317105755686182.a n : ℤ) = A004383 (n + 2)

theorem P17894317105755686182.correct : P17894317105755686182.Spec := by
  intro n
  simp only [A004383, Nat.add_sub_cancel]

end A004383

/-! ## A004383.P1854580028009599847

`A007318(A000217(8*(n+2))+n)`
-/

namespace A004383.P1854580028009599847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (8 * (n + 2)) + (n : ℤ)).toNat

end

end A004383.P1854580028009599847

namespace A004383

/-- `A007318(A000217(8*(n+2))+n)` -/
def P1854580028009599847.Spec : Prop :=
  ∀ n, P1854580028009599847.a n = A004383 (n + 2)

end A004383

/-! ## A004383.P7054572807074348199

`A007318(A000096(8*(n+2))-n)`
-/

namespace A004383.P7054572807074348199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (8 * (n + 2)) - (n : ℤ)).toNat

end

end A004383.P7054572807074348199

namespace A004383

/-- `A007318(A000096(8*(n+2))-n)` -/
def P7054572807074348199.Spec : Prop :=
  ∀ n, P7054572807074348199.a n = A004383 (n + 2)

end A004383

/-! ## A004383.P14511476191708627804

`A007318(A167487(8*(n+2))-(n+8))`
-/

namespace A004383.P14511476191708627804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167487 (8 * (n + 2)) - (n + 8 : ℤ)).toNat

end

end A004383.P14511476191708627804

namespace A004383

/-- `A007318(A167487(8*(n+2))-(n+8))` -/
def P14511476191708627804.Spec : Prop :=
  ∀ n, P14511476191708627804.a n = A004383 (n + 2)

end A004383

/-! ## A004383.P17963601294642604743

`A007318(n+5+A052905(8*n+13))`
-/

namespace A004383.P17963601294642604743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n + 5 : ℤ) + A052905 (8 * n + 13)).toNat

end

end A004383.P17963601294642604743

namespace A004383

/-- `A007318(n+5+A052905(8*n+13))` -/
def P17963601294642604743.Spec : Prop :=
  ∀ n, P17963601294642604743.a n = A004383 (n + 2)

end A004383

/-!
# A004384: Binomial coefficient C(8n,n-3).

The programs for A004384, the canonical program `A004384.P11943856500237417020` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004384 has offset 3).

The definition of A004384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+3), n)` (program `A004384.P11943856500237417020`, by `A004384.P11943856500237417020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004384.P11943856500237417020

`C(8*(n+3), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004384

/-- `C(8*(n+3), n)` -/
def P11943856500237417020.Spec : Prop :=
  ∀ n, (P11943856500237417020.a n : ℤ) = A004384 (n + 3)

theorem P11943856500237417020.correct : P11943856500237417020.Spec := by
  intro n
  simp only [A004384, Nat.add_sub_cancel]

end A004384

/-! ## A004384.P3904539569614085317

`record[C(A008574(n+6), A025480(n))]`
-/

namespace A004384.P3904539569614085317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008574 (n + 6)).toNat (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004384.P3904539569614085317

namespace A004384

/-- `record[C(A008574(n+6), A025480(n))]` -/
def P3904539569614085317.Spec : Prop :=
  ∀ n, (P3904539569614085317.a n : ℤ) = A004384 (n + 3)

end A004384

/-! ## A004384.P4539190415699078294

`round(sqrt(C(A017137(n+2)+2, n)²+1))`
-/

namespace A004384.P4539190415699078294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (A017137 (n + 2) + 2).toNat n ^ 2 + 1 : ℝ))

end

end A004384.P4539190415699078294

namespace A004384

/-- `round(sqrt(C(A017137(n+2)+2, n)²+1))` -/
def P4539190415699078294.Spec : Prop :=
  ∀ n, P4539190415699078294.a n = A004384 (n + 3)

end A004384

/-! ## A004384.P14831272126860865169

`A062344(A139276(n+3)-3)`
-/

namespace A004384.P14831272126860865169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A139276 (n + 3) - 3).toNat

end

end A004384.P14831272126860865169

namespace A004384

/-- `A062344(A139276(n+3)-3)` -/
def P14831272126860865169.Spec : Prop :=
  ∀ n, P14831272126860865169.a n = A004384 (n + 3)

end A004384

/-! ## A004384.P8419947017520888763

`A007318(A000217(8*(n+3))+n)`
-/

namespace A004384.P8419947017520888763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (8 * (n + 3)) + (n : ℤ)).toNat

end

end A004384.P8419947017520888763

namespace A004384

/-- `A007318(A000217(8*(n+3))+n)` -/
def P8419947017520888763.Spec : Prop :=
  ∀ n, P8419947017520888763.a n = A004384 (n + 3)

end A004384

/-!
# A004385: Binomial coefficient C(8n,n-4).

The programs for A004385, the canonical program `A004385.P17572947944838007094` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004385 has offset 4).

The definition of A004385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+4), n)` (program `A004385.P17572947944838007094`, by `A004385.P17572947944838007094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004385.P17572947944838007094

`C(8*(n+4), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004385

/-- `C(8*(n+4), n)` -/
def P17572947944838007094.Spec : Prop :=
  ∀ n, (P17572947944838007094.a n : ℤ) = A004385 (n + 4)

theorem P17572947944838007094.correct : P17572947944838007094.Spec := by
  intro n
  simp only [A004385, Nat.add_sub_cancel]

end A004385

/-! ## A004385.P5088111921850743427

`or(C(A022144(n+4), n), floor(1/(n+1)))`
-/

namespace A004385.P5088111921850743427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose (A022144 (n + 4)).toNat n : ℤ) ⌊1 / (n + 1 : ℚ)⌋

end

end A004385.P5088111921850743427

namespace A004385

/-- `or(C(A022144(n+4), n), floor(1/(n+1)))` -/
def P5088111921850743427.Spec : Prop :=
  ∀ n, P5088111921850743427.a n = A004385 (n + 4)

end A004385

/-! ## A004385.P1567453340587927660

`record[C(A008574(n+8), A025480(n))]`
-/

namespace A004385.P1567453340587927660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008574 (n + 8)).toNat (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004385.P1567453340587927660

namespace A004385

/-- `record[C(A008574(n+8), A025480(n))]` -/
def P1567453340587927660.Spec : Prop :=
  ∀ n, (P1567453340587927660.a n : ℤ) = A004385 (n + 4)

end A004385

/-! ## A004385.P17116653318356538555

`record[C(A008590(n+4), A061479(n))]`
-/

namespace A004385.P17116653318356538555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008590 (n + 4)).toNat (A061479 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004385.P17116653318356538555

namespace A004385

/-- `record[C(A008590(n+4), A061479(n))]` -/
def P17116653318356538555.Spec : Prop :=
  ∀ n, (P17116653318356538555.a n : ℤ) = A004385 (n + 4)

end A004385

/-! ## A004385.P419859647264919818

`record[C(A022144(n+4), A087051(n))]`
-/

namespace A004385.P419859647264919818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A022144 (n + 4)).toNat (A087051 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004385.P419859647264919818

namespace A004385

/-- `record[C(A022144(n+4), A087051(n))]` -/
def P419859647264919818.Spec : Prop :=
  ∀ n, (P419859647264919818.a n : ℤ) = A004385 (n + 4)

end A004385

/-!
# A004386: Binomial coefficient C(8n,n-5).

The programs for A004386, the canonical program `A004386.P10481130152473127584` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004386 has offset 5).

The definition of A004386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+5), n)` (program `A004386.P10481130152473127584`, by `A004386.P10481130152473127584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004386.P10481130152473127584

`C(8*(n+5), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004386

/-- `C(8*(n+5), n)` -/
def P10481130152473127584.Spec : Prop :=
  ∀ n, (P10481130152473127584.a n : ℤ) = A004386 (n + 5)

theorem P10481130152473127584.correct : P10481130152473127584.Spec := by
  intro n
  simp only [A004386, Nat.add_sub_cancel]

end A004386

/-!
# A004387: Binomial coefficient C(8n,n-6).

The programs for A004387, the canonical program `A004387.P2853275005124151464` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004387 has offset 6).

The definition of A004387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+6), n)` (program `A004387.P2853275005124151464`, by `A004387.P2853275005124151464.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004387.P2853275005124151464

`C(8*(n+6), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004387

/-- `C(8*(n+6), n)` -/
def P2853275005124151464.Spec : Prop :=
  ∀ n, (P2853275005124151464.a n : ℤ) = A004387 (n + 6)

theorem P2853275005124151464.correct : P2853275005124151464.Spec := by
  intro n
  simp only [A004387, Nat.add_sub_cancel]

end A004387

/-!
# A004388: Binomial coefficient C(8n,n-7).

The programs for A004388, the canonical program `A004388.P5283370793401022930` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004388 has offset 7).

The definition of A004388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+7), n)` (program `A004388.P5283370793401022930`, by `A004388.P5283370793401022930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004388.P5283370793401022930

`C(8*(n+7), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004388

/-- `C(8*(n+7), n)` -/
def P5283370793401022930.Spec : Prop :=
  ∀ n, (P5283370793401022930.a n : ℤ) = A004388 (n + 7)

theorem P5283370793401022930.correct : P5283370793401022930.Spec := by
  intro n
  simp only [A004388, Nat.add_sub_cancel]

end A004388

/-! ## A004388.P4045658870001112590

`record[C(A005943(n), A008589(n))]`
-/

namespace A004388.P4045658870001112590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005943 n).toNat (A008589 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004388.P4045658870001112590

namespace A004388

/-- `record[C(A005943(n), A008589(n))]` -/
def P4045658870001112590.Spec : Prop :=
  ∀ n, (P4045658870001112590.a n : ℤ) = A004388 (n + 7)

end A004388

/-!
# A004389: a(n) = binomial(8*n, n-8).

The programs for A004389, the canonical program `A004389.P15165660352064211315` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004389 has offset 8).

The definition of A004389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+8), n)` (program `A004389.P15165660352064211315`, by `A004389.P15165660352064211315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004389.P15165660352064211315

`C(8*(n+8), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004389

/-- `C(8*(n+8), n)` -/
def P15165660352064211315.Spec : Prop :=
  ∀ n, (P15165660352064211315.a n : ℤ) = A004389 (n + 8)

theorem P15165660352064211315.correct : P15165660352064211315.Spec := by
  intro n
  simp only [A004389, Nat.add_sub_cancel]

end A004389

/-!
# A004390: Binomial coefficient C(8n,n-9).

The programs for A004390, the canonical program `A004390.P10098490807328417836` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004390 has offset 9).

The definition of A004390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+9), n)` (program `A004390.P10098490807328417836`, by `A004390.P10098490807328417836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004390.P10098490807328417836

`C(8*(n+9), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004390

/-- `C(8*(n+9), n)` -/
def P10098490807328417836.Spec : Prop :=
  ∀ n, (P10098490807328417836.a n : ℤ) = A004390 (n + 9)

theorem P10098490807328417836.correct : P10098490807328417836.Spec := by
  intro n
  simp only [A004390, Nat.add_sub_cancel]

end A004390

/-!
# A004391: Binomial coefficient C(8n,n-10).

The programs for A004391, the canonical program `A004391.P17792823702723455556` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004391 has offset 10).

The definition of A004391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+10), n)` (program `A004391.P17792823702723455556`, by `A004391.P17792823702723455556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004391.P17792823702723455556

`C(8*(n+10), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004391

/-- `C(8*(n+10), n)` -/
def P17792823702723455556.Spec : Prop :=
  ∀ n, (P17792823702723455556.a n : ℤ) = A004391 (n + 10)

theorem P17792823702723455556.correct : P17792823702723455556.Spec := by
  intro n
  simp only [A004391, Nat.add_sub_cancel]

end A004391

/-!
# A004392: Binomial coefficient C(8n,n-11).

The programs for A004392, the canonical program `A004392.P11798348698549383150` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004392 has offset 11).

The definition of A004392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+11), n)` (program `A004392.P11798348698549383150`, by `A004392.P11798348698549383150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004392.P11798348698549383150

`C(8*(n+11), n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004392

/-- `C(8*(n+11), n)` -/
def P11798348698549383150.Spec : Prop :=
  ∀ n, (P11798348698549383150.a n : ℤ) = A004392 (n + 11)

theorem P11798348698549383150.correct : P11798348698549383150.Spec := by
  intro n
  simp only [A004392, Nat.add_sub_cancel]

end A004392

/-!
# A004393: Binomial coefficient C(8n,n-12).

The programs for A004393, the canonical program `A004393.P6514891325657627380` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004393 has offset 12).

The definition of A004393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(8*(n+12), n)` (program `A004393.P6514891325657627380`, by `A004393.P6514891325657627380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004393.P6514891325657627380

`C(8*(n+12), n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004393

/-- `C(8*(n+12), n)` -/
def P6514891325657627380.Spec : Prop :=
  ∀ n, (P6514891325657627380.a n : ℤ) = A004393 (n + 12)

theorem P6514891325657627380.correct : P6514891325657627380.Spec := by
  intro n
  simp only [A004393, Nat.add_sub_cancel]

end A004393

/-!
# A004394: Superabundant [or super-abundant] numbers: n such that sigma(n)/n > sigma(m)/m for all m < n, sigma(n) being A000203(n), the sum of the divisors of n.

The programs for A004394, there is no canonical definition to state claims against.
-/

/-! ## A004394.P11222690089824334916

`∑{d}[n+1, A008683(#)*A134672((n+1)/#)]`
-/

namespace A004394.P11222690089824334916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A134672 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A004394.P11222690089824334916

/-! ## A004394.P15293331694888303698

`A002110(A305025(n+1))*A305056(n+1)`
-/

namespace A004394.P15293331694888303698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A305025 (n + 1)).toNat * A305056 (n + 1)

end

end A004394.P15293331694888303698

/-! ## A004394.P6940492067515309237

`A025487(A293635(n+1))`
-/

namespace A004394.P6940492067515309237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A293635 (n + 1)).toNat

end

end A004394.P6940492067515309237

/-! ## A004394.P2589707157921685952

`A247451(A293635(n+1))*A305056(n+1)`
-/

namespace A004394.P2589707157921685952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (A293635 (n + 1)).toNat * A305056 (n + 1)

end

end A004394.P2589707157921685952

/-! ## A004394.P8423932726972582119

`A055932(A332035(n+1))`
-/

namespace A004394.P8423932726972582119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A332035 (n + 1)).toNat

end

end A004394.P8423932726972582119

/-!
# A004395: Ratios of successive terms are 1,1,2,3,3,4,5,5,6,7,7,...

The programs for A004395, there is no canonical definition to state claims against.
-/

/-! ## A004395.P3037804522988530380

`∏[ceil(abs(1-2*n)/3)]`
-/

namespace A004395.P3037804522988530380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (2 * n : ℤ)| : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004395.P3037804522988530380

/-! ## A004395.P9152367926996837031

`round(2*n/3)*a(n-1)` with `a(0)=1`
-/

namespace A004395.P9152367926996837031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) * a (n - 1)

end

end A004395.P9152367926996837031

/-! ## A004395.P6726665494030815858

`floor(a(n-1))*floor((2*n+1)/3)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A004395.P6726665494030815858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ⌊(2 * n + 1 : ℚ) / 3⌋

end

end A004395.P6726665494030815858

/-! ## A004395.P9163265108822225846

`a(n-1)*A004396(n)` with `a(0)=1`
-/

namespace A004395.P9163265108822225846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004396 n

end

end A004395.P9163265108822225846

/-! ## A004395.P6525770650929592932

`a(n-1)*A002264(2*n+1)` with `a(0)=1`
-/

namespace A004395.P6525770650929592932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A002264 (2 * n + 1)

end

end A004395.P6525770650929592932

/-! ## A004395.P6858159703891990876

`∏[A004396(n+1)]/A004396(n+1)`
-/

namespace A004395.P6858159703891990876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A004396 (n + 1) : ℚ)

end

end A004395.P6858159703891990876

/-! ## A004395.P7778909748889920877

`∏[A008620(2*n)]/A008620(2*n)`
-/

namespace A004395.P7778909748889920877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A008620 (2 * n) : ℚ)

end

end A004395.P7778909748889920877

/-! ## A004395.P12584072775432670667

`∏[A087504(2*n+1)]/A087504(2*n+1)`
-/

namespace A004395.P12584072775432670667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A087504 (2 * n + 1) : ℚ)

end

end A004395.P12584072775432670667

/-!
# A004396: One even number followed by two odd numbers.

The programs for A004396, the canonical program `A004396.P17032557045289780609` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004396 has offset 0).

The definition of A004396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004396.P17032557045289780609

`floor((2*n+1)/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004396

/-- `floor((2*n+1)/3)` -/
def P17032557045289780609.Spec : Prop :=
  ∀ n, P17032557045289780609.a n = A004396 n

theorem P17032557045289780609.correct : P17032557045289780609.Spec := by
  intro n
  simp only [A004396]

end A004396

/-! ## A004396.P7638262802609395614

`a(n-3)+2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A004396.P7638262802609395614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + 2

end

end A004396.P7638262802609395614

namespace A004396

/-- `a(n-3)+2` -/
def P7638262802609395614.Spec : Prop :=
  ∀ n, (P7638262802609395614.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P17595972608834005832

`A092200(n)-floor((n+5)/3)`
-/

namespace A004396.P17595972608834005832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 n - ⌊(n + 5 : ℚ) / 3⌋

end

end A004396.P17595972608834005832

namespace A004396

/-- `A092200(n)-floor((n+5)/3)` -/
def P17595972608834005832.Spec : Prop :=
  ∀ n, P17595972608834005832.a n = A004396 n

end A004396

/-! ## A004396.P7341328157435027590

`A004773(n)-A004523(n)`
-/

namespace A004396.P7341328157435027590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n - A004523 n

end

end A004396.P7341328157435027590

namespace A004396

/-- `A004773(n)-A004523(n)` -/
def P7341328157435027590.Spec : Prop :=
  ∀ n, P7341328157435027590.a n = A004396 n

end A004396

/-! ## A004396.P7377653310275375600

`∑[dr(3*n)%2]`
-/

namespace A004396.P7377653310275375600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P7377653310275375600

namespace A004396

/-- `∑[dr(3*n)%2]` -/
def P7377653310275375600.Spec : Prop :=
  ∀ n, (P7377653310275375600.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P10475991976921304049

`∑[and(1, dr(3*n))]`
-/

namespace A004396.P10475991976921304049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.digitalRoot (3 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P10475991976921304049

namespace A004396

/-- `∑[and(1, dr(3*n))]` -/
def P10475991976921304049.Spec : Prop :=
  ∀ n, (P10475991976921304049.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P15152083037450807559

`ceil(record[lcm(2, n)]/6)`
-/

namespace A004396.P15152083037450807559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 6⌉

end

end A004396.P15152083037450807559

namespace A004396

/-- `ceil(record[lcm(2, n)]/6)` -/
def P15152083037450807559.Spec : Prop :=
  ∀ n, P15152083037450807559.a n = A004396 n

end A004396

/-! ## A004396.P5296032137025079657

`n-∑[C(n, 2)%3]`
-/

namespace A004396.P5296032137025079657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004396.P5296032137025079657

namespace A004396

/-- `n-∑[C(n, 2)%3]` -/
def P5296032137025079657.Spec : Prop :=
  ∀ n, P5296032137025079657.a n = A004396 n

end A004396

/-! ## A004396.P6455346306254066152

`∑[(dr(n^3)%2)²]`
-/

namespace A004396.P6455346306254066152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n ^ 3 : ℤ) % 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P6455346306254066152

namespace A004396

/-- `∑[(dr(n^3)%2)²]` -/
def P6455346306254066152.Spec : Prop :=
  ∀ n, (P6455346306254066152.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P8360167443759016397

`∑[and(1, dr(n^3)²)]`
-/

namespace A004396.P8360167443759016397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.digitalRoot (n ^ 3 : ℤ) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P8360167443759016397

namespace A004396

/-- `∑[and(1, dr(n^3)²)]` -/
def P8360167443759016397.Spec : Prop :=
  ∀ n, (P8360167443759016397.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P13976827007842795182

`∑[dr(and(1, dr(n^3)))]`
-/

namespace A004396.P13976827007842795182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.land 1 (SequenceMachineLib.digitalRoot (n ^ 3 : ℤ)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P13976827007842795182

namespace A004396

/-- `∑[dr(and(1, dr(n^3)))]` -/
def P13976827007842795182.Spec : Prop :=
  ∀ n, (P13976827007842795182.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P542499982106826448

`∑[char[∑[n%2+1]]]`
-/

namespace A004396.P542499982106826448
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P542499982106826448

namespace A004396

/-- `∑[char[∑[n%2+1]]]` -/
def P542499982106826448.Spec : Prop :=
  ∀ n, (P542499982106826448.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P3030617092517008611

`∑[char[∑[gcd(2, n+1)]]]`
-/

namespace A004396.P3030617092517008611
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P3030617092517008611

namespace A004396

/-- `∑[char[∑[gcd(2, n+1)]]]` -/
def P3030617092517008611.Spec : Prop :=
  ∀ n, (P3030617092517008611.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P12785973655634093079

`∑[char[∑[and(1, n)+1]]]`
-/

namespace A004396.P12785973655634093079
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P12785973655634093079

namespace A004396

/-- `∑[char[∑[and(1, n)+1]]]` -/
def P12785973655634093079.Spec : Prop :=
  ∀ n, (P12785973655634093079.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P5905555438397112593

`∑[char[∑[2^and(1, n)]]]`
-/

namespace A004396.P5905555438397112593
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P5905555438397112593

namespace A004396

/-- `∑[char[∑[2^and(1, n)]]]` -/
def P5905555438397112593.Spec : Prop :=
  ∀ n, (P5905555438397112593.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P2473703678329934025

`∑[(n+1)²%3]-1`
-/

namespace A004396.P2473703678329934025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A004396.P2473703678329934025

namespace A004396

/-- `∑[(n+1)²%3]-1` -/
def P2473703678329934025.Spec : Prop :=
  ∀ n, P2473703678329934025.a n = A004396 n

end A004396

/-! ## A004396.P8453182789379288814

`∑[a(n-3)²]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A004396.P8453182789379288814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P8453182789379288814

namespace A004396

/-- `∑[a(n-3)²]` -/
def P8453182789379288814.Spec : Prop :=
  ∀ n, (P8453182789379288814.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P1519085356148406202

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A004396.P1519085356148406202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004396.P1519085356148406202

namespace A004396

/-- `∑[floor(a(n-3))]` -/
def P1519085356148406202.Spec : Prop :=
  ∀ n, (P1519085356148406202.a n : ℤ) = A004396 n

end A004396

/-! ## A004396.P15168395284876198661

`n-ceil(a(n-1)/2)` with `a(0)=0`
-/

namespace A004396.P15168395284876198661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌈(a (n - 1) : ℚ) / 2⌉

end

end A004396.P15168395284876198661

namespace A004396

/-- `n-ceil(a(n-1)/2)` -/
def P15168395284876198661.Spec : Prop :=
  ∀ n, P15168395284876198661.a n = A004396 n

end A004396

/-! ## A004396.P8216272300190212984

`n-1-floor(a(n-2)/2)` with `a(0)=0, a(1)=1`
-/

namespace A004396.P8216272300190212984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - 1 - ⌊(a (n - 2) : ℚ) / 2⌋

end

end A004396.P8216272300190212984

namespace A004396

/-- `n-1-floor(a(n-2)/2)` -/
def P8216272300190212984.Spec : Prop :=
  ∀ n, P8216272300190212984.a n = A004396 n

end A004396

/-!
# A004397: a(n) = prime(n) + Fibonacci(n).

The programs for A004397, the canonical program `A004397.P16354363738548432188` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004397 has offset 1).

The definition of A004397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004397.P18255650018490342361

`A081659(n)+A014692(n+1)`
-/

namespace A004397.P18255650018490342361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n + A014692 (n + 1)

end

end A004397.P18255650018490342361

namespace A004397

/-- `A081659(n)+A014692(n+1)` -/
def P18255650018490342361.Spec : Prop :=
  ∀ n, P18255650018490342361.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P9823625657262996134

`A212804(n)+A113753(n+1)`
-/

namespace A004397.P9823625657262996134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A113753 (n + 1)

end

end A004397.P9823625657262996134

namespace A004397

/-- `A212804(n)+A113753(n+1)` -/
def P9823625657262996134.Spec : Prop :=
  ∀ n, P9823625657262996134.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P10767433688896945650

`A350171(n+1)+A074331(n)`
-/

namespace A004397.P10767433688896945650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (n + 1) + A074331 n

end

end A004397.P10767433688896945650

namespace A004397

/-- `A350171(n+1)+A074331(n)` -/
def P10767433688896945650.Spec : Prop :=
  ∀ n, P10767433688896945650.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P15975909192569429513

`Δ[A007504(n)]+∑[A212804(n)]`
-/

namespace A004397.P15975909192569429513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A004397.P15975909192569429513

namespace A004397

/-- `Δ[A007504(n)]+∑[A212804(n)]` -/
def P15975909192569429513.Spec : Prop :=
  ∀ n, P15975909192569429513.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P8756542268307489047

`p?[A352844(n)]+∑[A212804(n)]`
-/

namespace A004397.P8756542268307489047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A004397.P8756542268307489047

namespace A004397

/-- `p?[A352844(n)]+∑[A212804(n)]` -/
def P8756542268307489047.Spec : Prop :=
  ∀ n, P8756542268307489047.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P10761663122634930462

`A000040(n+1)+∑[A212804(n)]`
-/

namespace A004397.P10761663122634930462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004397.P10761663122634930462

namespace A004397

/-- `A000040(n+1)+∑[A212804(n)]` -/
def P10761663122634930462.Spec : Prop :=
  ∀ n, P10761663122634930462.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P7410013199771320192

`Δ[A007504(n)]+A000045(n+1)`
-/

namespace A004397.P7410013199771320192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 (n + 1)

end

end A004397.P7410013199771320192

namespace A004397

/-- `Δ[A007504(n)]+A000045(n+1)` -/
def P7410013199771320192.Spec : Prop :=
  ∀ n, P7410013199771320192.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P16354363738548432188

`p?[A001057(n)]+A000045(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004397

/-- `p?[A001057(n)]+A000045(n+1)` -/
def P16354363738548432188.Spec : Prop :=
  ∀ n, P16354363738548432188.a n = A004397 (n + 1)

theorem P16354363738548432188.correct : P16354363738548432188.Spec := by
  intro n
  simp only [A004397, Nat.add_sub_cancel]

end A004397

/-! ## A004397.P11940122353683469039

`p?[A014681(n)]+A000045(n+1)`
-/

namespace A004397.P11940122353683469039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (n + 1)

end

end A004397.P11940122353683469039

namespace A004397

/-- `p?[A014681(n)]+A000045(n+1)` -/
def P11940122353683469039.Spec : Prop :=
  ∀ n, P11940122353683469039.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P8995687126300730657

`p?[A131732(n)]+A000045(n+1)`
-/

namespace A004397.P8995687126300730657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (n + 1)

end

end A004397.P8995687126300730657

namespace A004397

/-- `p?[A131732(n)]+A000045(n+1)` -/
def P8995687126300730657.Spec : Prop :=
  ∀ n, P8995687126300730657.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P251106773157494603

`p?[A143051(n)]+A000045(n+1)`
-/

namespace A004397.P251106773157494603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (n + 1)

end

end A004397.P251106773157494603

namespace A004397

/-- `p?[A143051(n)]+A000045(n+1)` -/
def P251106773157494603.Spec : Prop :=
  ∀ n, P251106773157494603.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P10396544535770704390

`p?[A352844(n)]+A000045(n+1)`
-/

namespace A004397.P10396544535770704390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (n + 1)

end

end A004397.P10396544535770704390

namespace A004397

/-- `p?[A352844(n)]+A000045(n+1)` -/
def P10396544535770704390.Spec : Prop :=
  ∀ n, P10396544535770704390.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P5971588523546230997

`A000040(n+1)+A000045(n+1)`
-/

namespace A004397.P5971588523546230997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000045 (n + 1)

end

end A004397.P5971588523546230997

namespace A004397

/-- `A000040(n+1)+A000045(n+1)` -/
def P5971588523546230997.Spec : Prop :=
  ∀ n, P5971588523546230997.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P11486035908830939990

`A008864(n+1)+A000071(n+1)`
-/

namespace A004397.P11486035908830939990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000071 (n + 1)

end

end A004397.P11486035908830939990

namespace A004397

/-- `A008864(n+1)+A000071(n+1)` -/
def P11486035908830939990.Spec : Prop :=
  ∀ n, P11486035908830939990.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P9331848302759221695

`A172022(n+1)+A007492(n+1)`
-/

namespace A004397.P9331848302759221695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172022 (n + 1) + A007492 (n + 1)

end

end A004397.P9331848302759221695

namespace A004397

/-- `A172022(n+1)+A007492(n+1)` -/
def P9331848302759221695.Spec : Prop :=
  ∀ n, P9331848302759221695.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P1402644761871649483

`A100700(n+1)+A100484(n+1)`
-/

namespace A004397.P1402644761871649483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100700 (n + 1) + A100484 (n + 1)

end

end A004397.P1402644761871649483

namespace A004397

/-- `A100700(n+1)+A100484(n+1)` -/
def P1402644761871649483.Spec : Prop :=
  ∀ n, P1402644761871649483.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P1342204358987760167

`A173072(n+1)+A129728(n+1)`
-/

namespace A004397.P1342204358987760167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) + A129728 (n + 1)

end

end A004397.P1342204358987760167

namespace A004397

/-- `A173072(n+1)+A129728(n+1)` -/
def P1342204358987760167.Spec : Prop :=
  ∀ n, P1342204358987760167.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P11170879135338409106

`A008578(n+2)+A000045(n+1)`
-/

namespace A004397.P11170879135338409106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A000045 (n + 1)

end

end A004397.P11170879135338409106

namespace A004397

/-- `A008578(n+2)+A000045(n+1)` -/
def P11170879135338409106.Spec : Prop :=
  ∀ n, P11170879135338409106.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P9055579489433576656

`A212804(n+2)+A000040(n+1)`
-/

namespace A004397.P9055579489433576656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A000040 (n + 1)

end

end A004397.P9055579489433576656

namespace A004397

/-- `A212804(n+2)+A000040(n+1)` -/
def P9055579489433576656.Spec : Prop :=
  ∀ n, P9055579489433576656.a n = A004397 (n + 1)

end A004397

/-! ## A004397.P18158494963172724446

`A324969(n+2)+A000040(n+1)`
-/

namespace A004397.P18158494963172724446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + A000040 (n + 1)

end

end A004397.P18158494963172724446

namespace A004397

/-- `A324969(n+2)+A000040(n+1)` -/
def P18158494963172724446.Spec : Prop :=
  ∀ n, P18158494963172724446.a n = A004397 (n + 1)

end A004397

/-!
# A004398: a(n) = Fibonacci(n+1) + prime(n).

The programs for A004398, the canonical program `A004398.P274541326575522069` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004398 has offset 1).

The definition of A004398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004398.P274541326575522069

`A004397(n+1)+A000045(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004398

/-- `A004397(n+1)+A000045(n)` -/
def P274541326575522069.Spec : Prop :=
  ∀ n, P274541326575522069.a n = A004398 (n + 1)

theorem P274541326575522069.correct : P274541326575522069.Spec := by
  intro n
  simp only [A004398, Nat.add_sub_cancel]

end A004398

/-! ## A004398.P1929018792840338800

`A000040(n+1)+record[A212804(n)]`
-/

namespace A004398.P1929018792840338800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004398.P1929018792840338800

namespace A004398

/-- `A000040(n+1)+record[A212804(n)]` -/
def P1929018792840338800.Spec : Prop :=
  ∀ n, P1929018792840338800.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P3479021089703255059

`A113753(n+1)+A000045(n+1)`
-/

namespace A004398.P3479021089703255059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113753 (n + 1) + A000045 (n + 1)

end

end A004398.P3479021089703255059

namespace A004398

/-- `A113753(n+1)+A000045(n+1)` -/
def P3479021089703255059.Spec : Prop :=
  ∀ n, P3479021089703255059.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P5822494931173639688

`A232896(n+1)+A014692(n+1)`
-/

namespace A004398.P5822494931173639688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232896 (n + 1) + A014692 (n + 1)

end

end A004398.P5822494931173639688

namespace A004398

/-- `A232896(n+1)+A014692(n+1)` -/
def P5822494931173639688.Spec : Prop :=
  ∀ n, P5822494931173639688.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P4575029823741129192

`A000040(n+1)+A000045(n+2)`
-/

namespace A004398.P4575029823741129192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000045 (n + 2)

end

end A004398.P4575029823741129192

namespace A004398

/-- `A000040(n+1)+A000045(n+2)` -/
def P4575029823741129192.Spec : Prop :=
  ∀ n, P4575029823741129192.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P15955507526886485971

`A004397(n+2)-A001223(n+1)`
-/

namespace A004398.P15955507526886485971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004397 (n + 2) - A001223 (n + 1)

end

end A004398.P15955507526886485971

namespace A004398

/-- `A004397(n+2)-A001223(n+1)` -/
def P15955507526886485971.Spec : Prop :=
  ∀ n, P15955507526886485971.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P13241008058696362015

`A008578(n+2)+A000045(n+2)`
-/

namespace A004398.P13241008058696362015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A000045 (n + 2)

end

end A004398.P13241008058696362015

namespace A004398

/-- `A008578(n+2)+A000045(n+2)` -/
def P13241008058696362015.Spec : Prop :=
  ∀ n, P13241008058696362015.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P16065282798270190662

`A212804(n+3)+A000040(n+1)`
-/

namespace A004398.P16065282798270190662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3) + A000040 (n + 1)

end

end A004398.P16065282798270190662

namespace A004398

/-- `A212804(n+3)+A000040(n+1)` -/
def P16065282798270190662.Spec : Prop :=
  ∀ n, P16065282798270190662.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P3979102074523308493

`A324969(n+3)+A000040(n+1)`
-/

namespace A004398.P3979102074523308493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 3) + A000040 (n + 1)

end

end A004398.P3979102074523308493

namespace A004398

/-- `A324969(n+3)+A000040(n+1)` -/
def P3979102074523308493.Spec : Prop :=
  ∀ n, P3979102074523308493.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P16412341412183671993

`∑[A054541(n+1)+A000045(n)]+1`
-/

namespace A004398.P16412341412183671993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A004398.P16412341412183671993

namespace A004398

/-- `∑[A054541(n+1)+A000045(n)]+1` -/
def P16412341412183671993.Spec : Prop :=
  ∀ n, P16412341412183671993.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P744540498187264759

`record[A093074(n+1)]+A000045(n+2)`
-/

namespace A004398.P744540498187264759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000045 (n + 2)

end

end A004398.P744540498187264759

namespace A004398

/-- `record[A093074(n+1)]+A000045(n+2)` -/
def P744540498187264759.Spec : Prop :=
  ∀ n, P744540498187264759.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P1916039167385853062

`record[A006530(n+2)]+A000045(n+2)`
-/

namespace A004398.P1916039167385853062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000045 (n + 2)

end

end A004398.P1916039167385853062

namespace A004398

/-- `record[A006530(n+2)]+A000045(n+2)` -/
def P1916039167385853062.Spec : Prop :=
  ∀ n, P1916039167385853062.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P15032570312691946948

`record[A014963(n+2)]+A000045(n+2)`
-/

namespace A004398.P15032570312691946948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000045 (n + 2)

end

end A004398.P15032570312691946948

namespace A004398

/-- `record[A014963(n+2)]+A000045(n+2)` -/
def P15032570312691946948.Spec : Prop :=
  ∀ n, P15032570312691946948.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P5282052056417324193

`record[A020639(n+2)]+A000045(n+2)`
-/

namespace A004398.P5282052056417324193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000045 (n + 2)

end

end A004398.P5282052056417324193

namespace A004398

/-- `record[A020639(n+2)]+A000045(n+2)` -/
def P5282052056417324193.Spec : Prop :=
  ∀ n, P5282052056417324193.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P7517377374150593013

`A067747(2*n+1)+A000045(n+2)`
-/

namespace A004398.P7517377374150593013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) + A000045 (n + 2)

end

end A004398.P7517377374150593013

namespace A004398

/-- `A067747(2*n+1)+A000045(n+2)` -/
def P7517377374150593013.Spec : Prop :=
  ∀ n, P7517377374150593013.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P14232961057684510778

`record[A000010(n+1)]+∑[A000045(n)]+2`
-/

namespace A004398.P14232961057684510778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (∑ j ∈ Finset.range (n + 1), f2 j + 2)

end

end A004398.P14232961057684510778

namespace A004398

/-- `record[A000010(n+1)]+∑[A000045(n)]+2` -/
def P14232961057684510778.Spec : Prop :=
  ∀ n, P14232961057684510778.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P2846549873392101897

`eq[1, A001222(n+1)]+A000045(n+2)+1`
-/

namespace A004398.P2846549873392101897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (A000045 (n + 2) + 1)

end

end A004398.P2846549873392101897

namespace A004398

/-- `eq[1, A001222(n+1)]+A000045(n+2)+1` -/
def P2846549873392101897.Spec : Prop :=
  ∀ n, P2846549873392101897.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P4334615054230672952

`eq[2, A000005(n+1)]+A000045(n+2)+1`
-/

namespace A004398.P4334615054230672952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (A000045 (n + 2) + 1)

end

end A004398.P4334615054230672952

namespace A004398

/-- `eq[2, A000005(n+1)]+A000045(n+2)+1` -/
def P4334615054230672952.Spec : Prop :=
  ∀ n, P4334615054230672952.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P18070530199554424488

`A000045(n+2)+eq[n, A000010(n+1)]+1`
-/

namespace A004398.P18070530199554424488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A004398.P18070530199554424488

namespace A004398

/-- `A000045(n+2)+eq[n, A000010(n+1)]+1` -/
def P18070530199554424488.Spec : Prop :=
  ∀ n, P18070530199554424488.a n = A004398 (n + 1)

end A004398

/-! ## A004398.P14339917896630778306

`eq[n+2, A000203(n+1)]+A000045(n+2)+1`
-/

namespace A004398.P14339917896630778306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (A000045 (n + 2) + 1)

end

end A004398.P14339917896630778306

namespace A004398

/-- `eq[n+2, A000203(n+1)]+A000045(n+2)+1` -/
def P14339917896630778306.Spec : Prop :=
  ∀ n, P14339917896630778306.a n = A004398 (n + 1)

end A004398

/-!
# A004399: a(n) = Fibonacci(n+2) + prime(n).

The programs for A004399, the canonical program `A004399.P16707702161054049742` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004399 has offset 1).

The definition of A004399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004399.P16085546083126192949

`A020695(n)+Δ[A007504(n)]`
-/

namespace A004399.P16085546083126192949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (f1 (n + 1) - f1 n)

end

end A004399.P16085546083126192949

namespace A004399

/-- `A020695(n)+Δ[A007504(n)]` -/
def P16085546083126192949.Spec : Prop :=
  ∀ n, P16085546083126192949.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P16707702161054049742

`A020695(n)+p?[A001057(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004399

/-- `A020695(n)+p?[A001057(n)]` -/
def P16707702161054049742.Spec : Prop :=
  ∀ n, P16707702161054049742.a n = A004399 (n + 1)

theorem P16707702161054049742.correct : P16707702161054049742.Spec := by
  intro n
  simp only [A004399, Nat.add_sub_cancel]

end A004399

/-! ## A004399.P5525160415456087795

`A020695(n)+A000040(n+1)`
-/

namespace A004399.P5525160415456087795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + A000040 (n + 1)

end

end A004399.P5525160415456087795

namespace A004399

/-- `A020695(n)+A000040(n+1)` -/
def P5525160415456087795.Spec : Prop :=
  ∀ n, P5525160415456087795.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P4789811679963200842

`A052147(n+1)+A001911(n)`
-/

namespace A004399.P4789811679963200842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + A001911 n

end

end A004399.P4789811679963200842

namespace A004399

/-- `A052147(n+1)+A001911(n)` -/
def P4789811679963200842.Spec : Prop :=
  ∀ n, P4789811679963200842.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P1010343567426321355

`A048577(n)+A006093(n+1)`
-/

namespace A004399.P1010343567426321355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A006093 (n + 1)

end

end A004399.P1010343567426321355

namespace A004399

/-- `A048577(n)+A006093(n+1)` -/
def P1010343567426321355.Spec : Prop :=
  ∀ n, P1010343567426321355.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P14087918255260465725

`A040976(n+1)+A018910(n)`
-/

namespace A004399.P14087918255260465725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + A018910 n

end

end A004399.P14087918255260465725

namespace A004399

/-- `A040976(n+1)+A018910(n)` -/
def P14087918255260465725.Spec : Prop :=
  ∀ n, P14087918255260465725.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P4224342587101606742

`A020695(n)+A008578(n+2)`
-/

namespace A004399.P4224342587101606742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + A008578 (n + 2)

end

end A004399.P4224342587101606742

namespace A004399

/-- `A020695(n)+A008578(n+2)` -/
def P4224342587101606742.Spec : Prop :=
  ∀ n, P4224342587101606742.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P7358721059406694373

`A004398(n+1)+A000045(n+1)`
-/

namespace A004399.P7358721059406694373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004398 (n + 1) + A000045 (n + 1)

end

end A004399.P7358721059406694373

namespace A004399

/-- `A004398(n+1)+A000045(n+1)` -/
def P7358721059406694373.Spec : Prop :=
  ∀ n, P7358721059406694373.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P5171667762732986043

`A169622(n+1)+A086801(n+1)`
-/

namespace A004399.P5171667762732986043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169622 (n + 1) + A086801 (n + 1)

end

end A004399.P5171667762732986043

namespace A004399

/-- `A169622(n+1)+A086801(n+1)` -/
def P5171667762732986043.Spec : Prop :=
  ∀ n, P5171667762732986043.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P4697866312456773600

`A160189(n+1)+A100484(n+1)`
-/

namespace A004399.P4697866312456773600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160189 (n + 1) + A100484 (n + 1)

end

end A004399.P4697866312456773600

namespace A004399

/-- `A160189(n+1)+A100484(n+1)` -/
def P4697866312456773600.Spec : Prop :=
  ∀ n, P4697866312456773600.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P10925303923724680932

`A226271(n+1)+A039915(n+1)`
-/

namespace A004399.P10925303923724680932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226271 (n + 1) + A039915 (n + 1)

end

end A004399.P10925303923724680932

namespace A004399

/-- `A226271(n+1)+A039915(n+1)` -/
def P10925303923724680932.Spec : Prop :=
  ∀ n, P10925303923724680932.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P15123325049536729761

`A000040(n+1)+A001911(n)+2`
-/

namespace A004399.P15123325049536729761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A001911 n + 2)

end

end A004399.P15123325049536729761

namespace A004399

/-- `A000040(n+1)+A001911(n)+2` -/
def P15123325049536729761.Spec : Prop :=
  ∀ n, P15123325049536729761.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P9758950544366271816

`A004397(n+1)+A000045(n+2)`
-/

namespace A004399.P9758950544366271816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004397 (n + 1) + A000045 (n + 2)

end

end A004399.P9758950544366271816

namespace A004399

/-- `A004397(n+1)+A000045(n+2)` -/
def P9758950544366271816.Spec : Prop :=
  ∀ n, P9758950544366271816.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P1385542653772111364

`A000040(n+1)+A048577(n)-1`
-/

namespace A004399.P1385542653772111364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A048577 n - 1)

end

end A004399.P1385542653772111364

namespace A004399

/-- `A000040(n+1)+A048577(n)-1` -/
def P1385542653772111364.Spec : Prop :=
  ∀ n, P1385542653772111364.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P7255437498425686353

`A000040(n+1)+A000045(n+3)`
-/

namespace A004399.P7255437498425686353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000045 (n + 3)

end

end A004399.P7255437498425686353

namespace A004399

/-- `A000040(n+1)+A000045(n+3)` -/
def P7255437498425686353.Spec : Prop :=
  ∀ n, P7255437498425686353.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P591743090103701016

`A000040(n+1)+A018910(n)-2`
-/

namespace A004399.P591743090103701016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A018910 n - 2)

end

end A004399.P591743090103701016

namespace A004399

/-- `A000040(n+1)+A018910(n)-2` -/
def P591743090103701016.Spec : Prop :=
  ∀ n, P591743090103701016.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P10674758949535367872

`A008864(n+1)+A048577(n)-2`
-/

namespace A004399.P10674758949535367872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A048577 n - 2)

end

end A004399.P10674758949535367872

namespace A004399

/-- `A008864(n+1)+A048577(n)-2` -/
def P10674758949535367872.Spec : Prop :=
  ∀ n, P10674758949535367872.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P17986860269028431249

`record[A003965(n+2)+A006530(n+2)]`
-/

namespace A004399.P17986860269028431249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003965 (n + 2) + A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004399.P17986860269028431249

namespace A004399

/-- `record[A003965(n+2)+A006530(n+2)]` -/
def P17986860269028431249.Spec : Prop :=
  ∀ n, P17986860269028431249.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P11857437067787795145

`record[A003965(n+2)+A020639(n+2)]`
-/

namespace A004399.P11857437067787795145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003965 (n + 2) + A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004399.P11857437067787795145

namespace A004399

/-- `record[A003965(n+2)+A020639(n+2)]` -/
def P11857437067787795145.Spec : Prop :=
  ∀ n, P11857437067787795145.a n = A004399 (n + 1)

end A004399

/-! ## A004399.P14510671956399601485

`record[A093074(n+1)]+A000045(n+3)`
-/

namespace A004399.P14510671956399601485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000045 (n + 3)

end

end A004399.P14510671956399601485

namespace A004399

/-- `record[A093074(n+1)]+A000045(n+3)` -/
def P14510671956399601485.Spec : Prop :=
  ∀ n, P14510671956399601485.a n = A004399 (n + 1)

end A004399

