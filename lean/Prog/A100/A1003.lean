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
import Seq.B000.C029
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A100300: Number of dissections of a convex n-gon by nonintersecting diagonals into an odd number of regions.

The programs for A100300, the canonical program `A100300.P11647304078459393174` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100300 has offset 3).

The definition of A100300 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100299, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100300.P11647304078459393174

`A100299(n+3)-(-1)^(n+3)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A100300

/-- `A100299(n+3)-(-1)^(n+3)` -/
def P11647304078459393174.Spec : Prop :=
  ∀ n, P11647304078459393174.a n = A100300 (n + 3)

theorem P11647304078459393174.correct : P11647304078459393174.Spec := by
  intro n
  simp only [A100300, Nat.add_sub_cancel]

end A100300

/-! ## A100300.P6699333219190927452

`(A001003(n+1)-(-1)^(n+3))/2`
-/

namespace A100300.P6699333219190927452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 1) - (-1) ^ (n + 3) : ℚ) / 2

end

end A100300.P6699333219190927452

namespace A100300

/-- `(A001003(n+1)-(-1)^(n+3))/2` -/
def P6699333219190927452.Spec : Prop :=
  ∀ n, P6699333219190927452.a n = (A100300 (n + 3) : ℚ)

end A100300

/-! ## A100300.P16008185314277046218

`Δ[floor(A104858(n)/2)]`
-/

namespace A100300.P16008185314277046218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104858 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100300.P16008185314277046218

namespace A100300

/-- `Δ[floor(A104858(n)/2)]` -/
def P16008185314277046218.Spec : Prop :=
  ∀ n, P16008185314277046218.a n = A100300 (n + 3)

end A100300

/-! ## A100300.P8516863378938914231

`abs(∑[Δ[A080243(n)]/2])`
-/

namespace A100300.P8516863378938914231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080243 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A100300.P8516863378938914231

namespace A100300

/-- `abs(∑[Δ[A080243(n)]/2])` -/
def P8516863378938914231.Spec : Prop :=
  ∀ n, P8516863378938914231.a n = (A100300 (n + 3) : ℚ)

end A100300

/-! ## A100300.P15371988367247824418

`A010683(n)-a(n-1)` with `a(0)=1`
-/

namespace A100300.P15371988367247824418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010683 n - a (n - 1)

end

end A100300.P15371988367247824418

namespace A100300

/-- `A010683(n)-a(n-1)` -/
def P15371988367247824418.Spec : Prop :=
  ∀ n, P15371988367247824418.a n = A100300 (n + 3)

end A100300

/-! ## A100300.P13917620414398069739

`abs(floor(A080243(n+1)/2))`
-/

namespace A100300.P13917620414398069739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A080243 (n + 1) : ℚ) / 2⌋|

end

end A100300.P13917620414398069739

namespace A100300

/-- `abs(floor(A080243(n+1)/2))` -/
def P13917620414398069739.Spec : Prop :=
  ∀ n, P13917620414398069739.a n = A100300 (n + 3)

end A100300

/-! ## A100300.P1656328172572166118

`abs(∑[A010683(n)*A033999(n)])`
-/

namespace A100300.P1656328172572166118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A100300.P1656328172572166118

namespace A100300

/-- `abs(∑[A010683(n)*A033999(n)])` -/
def P1656328172572166118.Spec : Prop :=
  ∀ n, P1656328172572166118.a n = A100300 (n + 3)

end A100300

/-! ## A100300.P17125903554860240890

`A001003(n+1)-A100299(n+3)`
-/

namespace A100300.P17125903554860240890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (n + 1) - A100299 (n + 3)

end

end A100300.P17125903554860240890

namespace A100300

/-- `A001003(n+1)-A100299(n+3)` -/
def P17125903554860240890.Spec : Prop :=
  ∀ n, P17125903554860240890.a n = A100300 (n + 3)

end A100300

/-! ## A100300.P16520555724845860504

`(A062157(n+1)+A001003(n+1))/2`
-/

namespace A100300.P16520555724845860504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062157 (n + 1) + A001003 (n + 1) : ℚ) / 2

end

end A100300.P16520555724845860504

namespace A100300

/-- `(A062157(n+1)+A001003(n+1))/2` -/
def P16520555724845860504.Spec : Prop :=
  ∀ n, P16520555724845860504.a n = (A100300 (n + 3) : ℚ)

end A100300

/-! ## A100300.P6148767625517662892

`(A080243(n+1)-1)/A280560(n+1)`
-/

namespace A100300.P6148767625517662892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080243 (n + 1) - 1 : ℚ) / (A280560 (n + 1) : ℚ)

end

end A100300.P6148767625517662892

namespace A100300

/-- `(A080243(n+1)-1)/A280560(n+1)` -/
def P6148767625517662892.Spec : Prop :=
  ∀ n, P6148767625517662892.a n = (A100300 (n + 3) : ℚ)

end A100300

/-! ## A100300.P14187727515321903861

`(A056594(2*n)+A001003(n+1))/2`
-/

namespace A100300.P14187727515321903861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056594 (2 * n) + A001003 (n + 1) : ℚ) / 2

end

end A100300.P14187727515321903861

namespace A100300

/-- `(A056594(2*n)+A001003(n+1))/2` -/
def P14187727515321903861.Spec : Prop :=
  ∀ n, P14187727515321903861.a n = (A100300 (n + 3) : ℚ)

end A100300

/-! ## A100300.P7218786556151959316

`(A009531(2*n+1)+A001003(n+1))/2`
-/

namespace A100300.P7218786556151959316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009531 (2 * n + 1) + A001003 (n + 1) : ℚ) / 2

end

end A100300.P7218786556151959316

namespace A100300

/-- `(A009531(2*n+1)+A001003(n+1))/2` -/
def P7218786556151959316.Spec : Prop :=
  ∀ n, P7218786556151959316.a n = (A100300 (n + 3) : ℚ)

end A100300

/-!
# A100301: Primes resulting from A085013.

The programs for A100301, there is no canonical definition to state claims against.
-/

/-! ## A100301.P12783924218443971940

`∏[A085013(n+2)]+2`
-/

namespace A100301.P12783924218443971940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085013 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A100301.P12783924218443971940

/-!
# A100302: Expansion of (1 - x - 6*x^2)/((1 - x)*(1 - x - 8*x^2)).

The programs for A100302, the canonical program `A100302.P11702262025916096967` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100302 has offset 0).

The definition of A100302 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-6x^2)/(1-2x-7x^2+8x^3))` (program `A100302.P11702262025916096967`, by `A100302.P11702262025916096967.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100302.P11702262025916096967

`ogf((1-x-6x^2)/(1-2x-7x^2+8x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100302

/-- `ogf((1-x-6x^2)/(1-2x-7x^2+8x^3))` -/
def P11702262025916096967.Spec : Prop :=
  ∀ n, P11702262025916096967.a n = A100302 n

theorem P11702262025916096967.correct : P11702262025916096967.Spec := by
  intro n
  simp only [A100302]

end A100302

/-! ## A100302.P3554034869559220147

`2*a(n-1)+7*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A100302.P3554034869559220147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * a (n - 1) + 7 * a (n - 2) - 8 * a (n - 3)

end

end A100302.P3554034869559220147

namespace A100302

/-- `2*a(n-1)+7*a(n-2)-8*a(n-3)` -/
def P3554034869559220147.Spec : Prop :=
  ∀ n, P3554034869559220147.a n = A100302 n

end A100302

/-! ## A100302.P6484731995815409031

`1/4*(3+A015443(n))`
-/

namespace A100302.P6484731995815409031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (3 + A015443 n : ℚ)

end

end A100302.P6484731995815409031

namespace A100302

/-- `1/4*(3+A015443(n))` -/
def P6484731995815409031.Spec : Prop :=
  ∀ n, P6484731995815409031.a n = (A100302 n : ℚ)

end A100302

/-! ## A100302.P10307140928923659709

`3/4+1/(4*sqrt(33))*(((1+sqrt(33))/2)^(n+1)-((1-sqrt(33))/2)^(n+1))`
-/

namespace A100302.P10307140928923659709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 4 : ℝ) + 1 / (4 * Real.sqrt (33 : ℝ)) * (((1 + Real.sqrt (33 : ℝ)) / 2) ^ (n + 1) - ((1 - Real.sqrt (33 : ℝ)) / 2) ^ (n + 1))

end

end A100302.P10307140928923659709

namespace A100302

/-- `3/4+1/(4*sqrt(33))*(((1+sqrt(33))/2)^(n+1)-((1-sqrt(33))/2)^(n+1))` -/
def P10307140928923659709.Spec : Prop :=
  ∀ n, P10307140928923659709.a n = (A100302 n : ℝ)

end A100302

/-! ## A100302.P11519048348978862692

`∑[A100304(n)]`
-/

namespace A100302.P11519048348978862692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100302.P11519048348978862692

namespace A100302

/-- `∑[A100304(n)]` -/
def P11519048348978862692.Spec : Prop :=
  ∀ n, P11519048348978862692.a n = A100302 n

end A100302

/-! ## A100302.P6683208121423518546

`ceil(A100305(n)/2)`
-/

namespace A100302.P6683208121423518546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100305 n : ℚ) / 2⌉

end

end A100302.P6683208121423518546

namespace A100302

/-- `ceil(A100305(n)/2)` -/
def P6683208121423518546.Spec : Prop :=
  ∀ n, P6683208121423518546.a n = A100302 n

end A100302

/-! ## A100302.P6917208985232057534

`(∑[A100303(n)]+1)/2`
-/

namespace A100302.P6917208985232057534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100303 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A100302.P6917208985232057534

namespace A100302

/-- `(∑[A100303(n)]+1)/2` -/
def P6917208985232057534.Spec : Prop :=
  ∀ n, P6917208985232057534.a n = (A100302 n : ℚ)

end A100302

/-! ## A100302.P7321890885794202919

`ceil(A015443(n)/4)`
-/

namespace A100302.P7321890885794202919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A015443 n : ℚ) / 4⌉

end

end A100302.P7321890885794202919

namespace A100302

/-- `ceil(A015443(n)/4)` -/
def P7321890885794202919.Spec : Prop :=
  ∀ n, P7321890885794202919.a n = A100302 n

end A100302

/-!
# A100303: Expansion of (1 - x - 4*x^2)/(1 - x - 8*x^2).

The programs for A100303, the canonical program `A100303.P1884561300210039514` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100303 has offset 0).

The definition of A100303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-4x^2)/(1-x-8x^2))` (program `A100303.P1884561300210039514`, by `A100303.P1884561300210039514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100303.P1884561300210039514

`ogf((1-x-4x^2)/(1-x-8x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100303

/-- `ogf((1-x-4x^2)/(1-x-8x^2))` -/
def P1884561300210039514.Spec : Prop :=
  ∀ n, P1884561300210039514.a n = A100303 n

theorem P1884561300210039514.correct : P1884561300210039514.Spec := by
  intro n
  simp only [A100303]

end A100303

/-! ## A100303.P14199867063348342416

`a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A100303.P14199867063348342416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  a (n - 1) + 8 * a (n - 2)

end

end A100303.P14199867063348342416

namespace A100303

/-- `a(n-1)+8*a(n-2)` -/
def P14199867063348342416.Spec : Prop :=
  ∀ n, (P14199867063348342416.a n : ℤ) = A100303 n

end A100303

/-! ## A100303.P7950044148650863868

`a(n-1)-8*ceil(-a(n-2))` with `a(0)=1, a(1)=0, a(2)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A100303.P7950044148650863868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  a (n - 1) - 8 * (-a (n - 2))

end

end A100303.P7950044148650863868

namespace A100303

/-- `a(n-1)-8*ceil(-a(n-2))` -/
def P7950044148650863868.Spec : Prop :=
  ∀ n, P7950044148650863868.a n = A100303 n

end A100303

/-! ## A100303.P4551806147177350894

`9*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A100303.P4551806147177350894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  9 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A100303.P4551806147177350894

namespace A100303

/-- `9*a(n-2)-(a(n-2)-a(n-1))` -/
def P4551806147177350894.Spec : Prop :=
  ∀ n, P4551806147177350894.a n = A100303 n

end A100303

/-! ## A100303.P18326956858288927082

`lcm(A100304(n), A113311(n))`
-/

namespace A100303.P18326956858288927082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100304 n) (A113311 n)

end

end A100303.P18326956858288927082

namespace A100303

/-- `lcm(A100304(n), A113311(n))` -/
def P18326956858288927082.Spec : Prop :=
  ∀ n, (P18326956858288927082.a n : ℤ) = A100303 n

end A100303

/-! ## A100303.P7900417626735593382

`A036453(n+1)*A100304(n)`
-/

namespace A100303.P7900417626735593382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A100304 n

end

end A100303.P7900417626735593382

namespace A100303

/-- `A036453(n+1)*A100304(n)` -/
def P7900417626735593382.Spec : Prop :=
  ∀ n, P7900417626735593382.a n = A100303 n

end A100303

/-! ## A100303.P4171409678450436609

`A100304(n)*A104435(n+1)`
-/

namespace A100303.P4171409678450436609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100304 n * A104435 (n + 1)

end

end A100303.P4171409678450436609

namespace A100303

/-- `A100304(n)*A104435(n+1)` -/
def P4171409678450436609.Spec : Prop :=
  ∀ n, P4171409678450436609.a n = A100303 n

end A100303

/-! ## A100303.P11480146759284085576

`(2-A000007(n))*A100304(n)`
-/

namespace A100303.P11480146759284085576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A100304 n

end

end A100303.P11480146759284085576

namespace A100303

/-- `(2-A000007(n))*A100304(n)` -/
def P11480146759284085576.Spec : Prop :=
  ∀ n, P11480146759284085576.a n = A100303 n

end A100303

/-! ## A100303.P8667796227948459128

`gcd(2, A008864(n+1))*A100304(n)`
-/

namespace A100303.P8667796227948459128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A008864 (n + 1)) : ℤ) * A100304 n

end

end A100303.P8667796227948459128

namespace A100303

/-- `gcd(2, A008864(n+1))*A100304(n)` -/
def P8667796227948459128.Spec : Prop :=
  ∀ n, P8667796227948459128.a n = A100303 n

end A100303

/-! ## A100303.P6882415399883247791

`A020639(A000118(n))*A100304(n)`
-/

namespace A100303.P6882415399883247791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A100304 n

end

end A100303.P6882415399883247791

namespace A100303

/-- `A020639(A000118(n))*A100304(n)` -/
def P6882415399883247791.Spec : Prop :=
  ∀ n, P6882415399883247791.a n = A100303 n

end A100303

/-! ## A100303.P6431702014211363224

`A020639(A004011(n))*A100304(n)`
-/

namespace A100303.P6431702014211363224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004011 n).toNat * A100304 n

end

end A100303.P6431702014211363224

namespace A100303

/-- `A020639(A004011(n))*A100304(n)` -/
def P6431702014211363224.Spec : Prop :=
  ∀ n, P6431702014211363224.a n = A100303 n

end A100303

/-! ## A100303.P14681300351443739850

`A020639(A004277(n))*A100304(n)`
-/

namespace A100303.P14681300351443739850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A100304 n

end

end A100303.P14681300351443739850

namespace A100303

/-- `A020639(A004277(n))*A100304(n)` -/
def P14681300351443739850.Spec : Prop :=
  ∀ n, P14681300351443739850.a n = A100303 n

end A100303

/-! ## A100303.P8068851196795019322

`A020639(A001615(n+1))*A100304(n)`
-/

namespace A100303.P8068851196795019322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001615 (n + 1)).toNat * A100304 n

end

end A100303.P8068851196795019322

namespace A100303

/-- `A020639(A001615(n+1))*A100304(n)` -/
def P8068851196795019322.Spec : Prop :=
  ∀ n, P8068851196795019322.a n = A100303 n

end A100303

/-! ## A100303.P13628016408170402908

`A020639(A002322(n+1))*A100304(n)`
-/

namespace A100303.P13628016408170402908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002322 (n + 1)).toNat * A100304 n

end

end A100303.P13628016408170402908

namespace A100303

/-- `A020639(A002322(n+1))*A100304(n)` -/
def P13628016408170402908.Spec : Prop :=
  ∀ n, P13628016408170402908.a n = A100303 n

end A100303

/-! ## A100303.P13312095173575424297

`A020639(A025586(n+1))*A100304(n)`
-/

namespace A100303.P13312095173575424297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025586 (n + 1)).toNat * A100304 n

end

end A100303.P13312095173575424297

namespace A100303

/-- `A020639(A025586(n+1))*A100304(n)` -/
def P13312095173575424297.Spec : Prop :=
  ∀ n, P13312095173575424297.a n = A100303 n

end A100303

/-! ## A100303.P5456038084723127062

`A100304(A000007(n)+n)+A100304(n)`
-/

namespace A100303.P5456038084723127062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100304 (A000007 n + (n : ℤ)).toNat + A100304 n

end

end A100303.P5456038084723127062

namespace A100303

/-- `A100304(A000007(n)+n)+A100304(n)` -/
def P5456038084723127062.Spec : Prop :=
  ∀ n, P5456038084723127062.a n = A100303 n

end A100303

/-! ## A100303.P11000358889309514884

`A100304(A004277(n)-n)+A100304(n)`
-/

namespace A100303.P11000358889309514884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100304 (A004277 n - (n : ℤ)).toNat + A100304 n

end

end A100303.P11000358889309514884

namespace A100303

/-- `A100304(A004277(n)-n)+A100304(n)` -/
def P11000358889309514884.Spec : Prop :=
  ∀ n, P11000358889309514884.a n = A100303 n

end A100303

/-! ## A100303.P14837773676133415107

`A000122(n²)*A100304(n)`
-/

namespace A100303.P14837773676133415107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A100304 n

end

end A100303.P14837773676133415107

namespace A100303

/-- `A000122(n²)*A100304(n)` -/
def P14837773676133415107.Spec : Prop :=
  ∀ n, P14837773676133415107.a n = A100303 n

end A100303

/-!
# A100304: Expansion of (1 - x - 6*x^2)/(1 - x - 8*x^2).

The programs for A100304, the canonical program `A100304.P4616277992626189445` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100304 has offset 0).

The definition of A100304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-6x^2)/(1-x-8x^2))` (program `A100304.P4616277992626189445`, by `A100304.P4616277992626189445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100304.P4616277992626189445

`ogf((1-x-6x^2)/(1-x-8x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100304

/-- `ogf((1-x-6x^2)/(1-x-8x^2))` -/
def P4616277992626189445.Spec : Prop :=
  ∀ n, P4616277992626189445.a n = A100304 n

theorem P4616277992626189445.correct : P4616277992626189445.Spec := by
  intro n
  simp only [A100304]

end A100304

/-! ## A100304.P7821548389489416296

`a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A100304.P7821548389489416296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + 8 * a (n - 2)

end

end A100304.P7821548389489416296

namespace A100304

/-- `a(n-1)+8*a(n-2)` -/
def P7821548389489416296.Spec : Prop :=
  ∀ n, (P7821548389489416296.a n : ℤ) = A100304 n

end A100304

/-! ## A100304.P12040244174771136342

`a(n-1)+a(n-2)/(1/2)^3` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A100304.P12040244174771136342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 3

end

end A100304.P12040244174771136342

namespace A100304

/-- `a(n-1)+a(n-2)/(1/2)^3` -/
def P12040244174771136342.Spec : Prop :=
  ∀ n, P12040244174771136342.a n = (A100304 n : ℚ)

end A100304

/-! ## A100304.P4224637504173316605

`9*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A100304.P4224637504173316605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  9 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A100304.P4224637504173316605

namespace A100304

/-- `9*a(n-2)-(a(n-2)-a(n-1))` -/
def P4224637504173316605.Spec : Prop :=
  ∀ n, P4224637504173316605.a n = A100304 n

end A100304

/-! ## A100304.P9055280007840051121

`ceil(A100303(n)/2)`
-/

namespace A100304.P9055280007840051121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100303 n : ℚ) / 2⌉

end

end A100304.P9055280007840051121

namespace A100304

/-- `ceil(A100303(n)/2)` -/
def P9055280007840051121.Spec : Prop :=
  ∀ n, P9055280007840051121.a n = A100304 n

end A100304

/-! ## A100304.P584695447458849992

`A100303(n)/A036453(n+1)`
-/

namespace A100304.P584695447458849992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100303 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A100304.P584695447458849992

namespace A100304

/-- `A100303(n)/A036453(n+1)` -/
def P584695447458849992.Spec : Prop :=
  ∀ n, P584695447458849992.a n = (A100304 n : ℚ)

end A100304

/-! ## A100304.P5334927742256474816

`A100303(n)/A104435(n+1)`
-/

namespace A100304.P5334927742256474816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100303 n : ℚ) / (A104435 (n + 1) : ℚ)

end

end A100304.P5334927742256474816

namespace A100304

/-- `A100303(n)/A104435(n+1)` -/
def P5334927742256474816.Spec : Prop :=
  ∀ n, P5334927742256474816.a n = (A100304 n : ℚ)

end A100304

/-! ## A100304.P742320452483767046

`A100303(n)/A280560(2*n)`
-/

namespace A100304.P742320452483767046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100303 n : ℚ) / (A280560 (2 * n) : ℚ)

end

end A100304.P742320452483767046

namespace A100304

/-- `A100303(n)/A280560(2*n)` -/
def P742320452483767046.Spec : Prop :=
  ∀ n, P742320452483767046.a n = (A100304 n : ℚ)

end A100304

/-! ## A100304.P6245605819211996798

`A100303(n)/A014963(A001316(n))`
-/

namespace A100304.P6245605819211996798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100303 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A100304.P6245605819211996798

namespace A100304

/-- `A100303(n)/A014963(A001316(n))` -/
def P6245605819211996798.Spec : Prop :=
  ∀ n, P6245605819211996798.a n = (A100304 n : ℚ)

end A100304

/-! ## A100304.P14523743759806723128

`A100303(n)/A020639(A004011(n))`
-/

namespace A100304.P14523743759806723128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100303 n : ℚ) / (A020639 (A004011 n).toNat : ℚ)

end

end A100304.P14523743759806723128

namespace A100304

/-- `A100303(n)/A020639(A004011(n))` -/
def P14523743759806723128.Spec : Prop :=
  ∀ n, P14523743759806723128.a n = (A100304 n : ℚ)

end A100304

/-! ## A100304.P8623956875010248769

`A100303(n)/A020639(A004277(n))`
-/

namespace A100304.P8623956875010248769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100303 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A100304.P8623956875010248769

namespace A100304

/-- `A100303(n)/A020639(A004277(n))` -/
def P8623956875010248769.Spec : Prop :=
  ∀ n, P8623956875010248769.a n = (A100304 n : ℚ)

end A100304

/-! ## A100304.P6135474335006816986

`A100303(n)/A020639(A008458(n))`
-/

namespace A100304.P6135474335006816986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100303 n : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A100304.P6135474335006816986

namespace A100304

/-- `A100303(n)/A020639(A008458(n))` -/
def P6135474335006816986.Spec : Prop :=
  ∀ n, P6135474335006816986.a n = (A100304 n : ℚ)

end A100304

/-! ## A100304.P12572120223490703161

`A100303(n)/A020639(A004275(n+1))`
-/

namespace A100304.P12572120223490703161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100303 n : ℚ) / (A020639 (A004275 (n + 1)).toNat : ℚ)

end

end A100304.P12572120223490703161

namespace A100304

/-- `A100303(n)/A020639(A004275(n+1))` -/
def P12572120223490703161.Spec : Prop :=
  ∀ n, P12572120223490703161.a n = (A100304 n : ℚ)

end A100304

/-! ## A100304.P12855496912026724190

`A100303(n)/A014963(A053644(n+1))`
-/

namespace A100304.P12855496912026724190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100303 n : ℚ) / (A014963 (A053644 (n + 1)).toNat : ℚ)

end

end A100304.P12855496912026724190

namespace A100304

/-- `A100303(n)/A014963(A053644(n+1))` -/
def P12855496912026724190.Spec : Prop :=
  ∀ n, P12855496912026724190.a n = (A100304 n : ℚ)

end A100304

/-! ## A100304.P6045586252009255307

`A100303(n)/A000122(n²)`
-/

namespace A100304.P6045586252009255307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100303 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A100304.P6045586252009255307

namespace A100304

/-- `A100303(n)/A000122(n²)` -/
def P6045586252009255307.Spec : Prop :=
  ∀ n, P6045586252009255307.a n = (A100304 n : ℚ)

end A100304

/-!
# A100305: Expansion of (1 - x - 4*x^2)/(1 - 2*x - 7*x^2 + 8*x^3).

The programs for A100305, the canonical program `A100305.P8472596468989199076` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100305 has offset 0).

The definition of A100305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-4x^2)/(1-2x-7x^2+8x^3))` (program `A100305.P8472596468989199076`, by `A100305.P8472596468989199076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100305.P8472596468989199076

`ogf((1-x-4x^2)/(1-2x-7x^2+8x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100305

/-- `ogf((1-x-4x^2)/(1-2x-7x^2+8x^3))` -/
def P8472596468989199076.Spec : Prop :=
  ∀ n, P8472596468989199076.a n = A100305 n

theorem P8472596468989199076.correct : P8472596468989199076.Spec := by
  intro n
  simp only [A100305]

end A100305

/-! ## A100305.P16339960023139528001

`2*a(n-1)+7*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A100305.P16339960023139528001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  2 * a (n - 1) + 7 * a (n - 2) - 8 * a (n - 3)

end

end A100305.P16339960023139528001

namespace A100305

/-- `2*a(n-1)+7*a(n-2)-8*a(n-3)` -/
def P16339960023139528001.Spec : Prop :=
  ∀ n, P16339960023139528001.a n = A100305 n

end A100305

/-! ## A100305.P4439213788441052368

`1/2+2^-n*sqrt(33)/132*((1+sqrt(33))^(n+1)-(1-sqrt(33))^(n+1))`
-/

namespace A100305.P4439213788441052368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) + ((2 : ℚ) ^ (-(n : ℤ) : ℤ) : ℝ) * (Real.sqrt (33 : ℝ) / 132) * ((1 + Real.sqrt (33 : ℝ)) ^ (n + 1) - (1 - Real.sqrt (33 : ℝ)) ^ (n + 1))

end

end A100305.P4439213788441052368

namespace A100305

/-- `1/2+2^-n*sqrt(33)/132*((1+sqrt(33))^(n+1)-(1-sqrt(33))^(n+1))` -/
def P4439213788441052368.Spec : Prop :=
  ∀ n, P4439213788441052368.a n = (A100305 n : ℝ)

end A100305

/-! ## A100305.P9471996631962436493

`∑[A100303(n)]`
-/

namespace A100305.P9471996631962436493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100305.P9471996631962436493

namespace A100305

/-- `∑[A100303(n)]` -/
def P9471996631962436493.Spec : Prop :=
  ∀ n, P9471996631962436493.a n = A100305 n

end A100305

/-! ## A100305.P6703209107923891448

`ceil(A015443(n)/2)`
-/

namespace A100305.P6703209107923891448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A015443 n : ℚ) / 2⌉

end

end A100305.P6703209107923891448

namespace A100305

/-- `ceil(A015443(n)/2)` -/
def P6703209107923891448.Spec : Prop :=
  ∀ n, P6703209107923891448.a n = A100305 n

end A100305

/-!
# A100306: Numbers for which the values of the Moebius function (A008683) and the Mertens function (A002321) agree.

The programs for A100306, the canonical program `A100306.P659555459822025134` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100306 has offset 1).

The definition of A100306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1074 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100306.P659555459822025134

`eq[0, A008683(n)+a(n-1)]+1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100306

/-- `eq[0, A008683(n)+a(n-1)]+1` -/
def P659555459822025134.Spec : Prop :=
  ∀ n, (P659555459822025134.a n : ℤ) = A100306 (n + 1)

theorem P659555459822025134.correct : P659555459822025134.Spec := by
  intro n
  simp only [A100306, Nat.add_sub_cancel]

end A100306

/-! ## A100306.P16354026324166037247

`eq[0, a(n-1)-A008683(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A100306.P16354026324166037247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - A008683 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100306.P16354026324166037247

namespace A100306

/-- `eq[0, a(n-1)-A008683(n-1)]` -/
def P16354026324166037247.Spec : Prop :=
  ∀ n, (P16354026324166037247.a n : ℤ) = A100306 (n + 1)

end A100306

/-! ## A100306.P2871772740020994673

`A062982(n+1)+A057427(n)`
-/

namespace A100306.P2871772740020994673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1) + A057427 n

end

end A100306.P2871772740020994673

namespace A100306

/-- `A062982(n+1)+A057427(n)` -/
def P2871772740020994673.Spec : Prop :=
  ∀ n, P2871772740020994673.a n = A100306 (n + 1)

end A100306

/-! ## A100306.P14220706947045762158

`A062982(n+1)-A057428(n)`
-/

namespace A100306.P14220706947045762158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1) - A057428 n

end

end A100306.P14220706947045762158

namespace A100306

/-- `A062982(n+1)-A057428(n)` -/
def P14220706947045762158.Spec : Prop :=
  ∀ n, P14220706947045762158.a n = A100306 (n + 1)

end A100306

/-! ## A100306.P6162210679354619742

`A062982(n+1)+char[A160855(n+1)]`
-/

namespace A100306.P6162210679354619742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160855 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A100306.P6162210679354619742

namespace A100306

/-- `A062982(n+1)+char[A160855(n+1)]` -/
def P6162210679354619742.Spec : Prop :=
  ∀ n, P6162210679354619742.a n = A100306 (n + 1)

end A100306

/-! ## A100306.P7979368993190136942

`A062982(n+1)+char[A253046(n+1)]`
-/

namespace A100306.P7979368993190136942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253046 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A100306.P7979368993190136942

namespace A100306

/-- `A062982(n+1)+char[A253046(n+1)]` -/
def P7979368993190136942.Spec : Prop :=
  ∀ n, P7979368993190136942.a n = A100306 (n + 1)

end A100306

/-! ## A100306.P10949427583620300603

`A062982(n+1)%A043298(n+1)²+1`
-/

namespace A100306.P10949427583620300603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062982 (n + 1)) (A043298 (n + 1) ^ 2) + 1

end

end A100306.P10949427583620300603

namespace A100306

/-- `A062982(n+1)%A043298(n+1)²+1` -/
def P10949427583620300603.Spec : Prop :=
  ∀ n, P10949427583620300603.a n = A100306 (n + 1)

end A100306

/-! ## A100306.P17644901534692921140

`A062982(n+1)+char[A008344(n+1)+1]`
-/

namespace A100306.P17644901534692921140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A100306.P17644901534692921140

namespace A100306

/-- `A062982(n+1)+char[A008344(n+1)+1]` -/
def P17644901534692921140.Spec : Prop :=
  ∀ n, P17644901534692921140.a n = A100306 (n + 1)

end A100306

/-! ## A100306.P11411294450903438007

`A062982(n+1)+A023713(n²%(n+1)+1)`
-/

namespace A100306.P11411294450903438007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1) + A023713 (n ^ 2 % (n + 1) + 1)

end

end A100306.P11411294450903438007

namespace A100306

/-- `A062982(n+1)+A023713(n²%(n+1)+1)` -/
def P11411294450903438007.Spec : Prop :=
  ∀ n, P11411294450903438007.a n = A100306 (n + 1)

end A100306

/-! ## A100306.P13197949057730523371

`a(n-1)+A081222(a(n-1))+1` with `a(0)=1`
-/

namespace A100306.P13197949057730523371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A081222 (a (n - 1)).toNat + 1)

end

end A100306.P13197949057730523371

namespace A100306

/-- `a(n-1)+A081222(a(n-1))+1` -/
def P13197949057730523371.Spec : Prop :=
  ∀ n, P13197949057730523371.a n = A100306 (n + 1)

end A100306

/-! ## A100306.P6782362882921505093

`A065475(A062982(n+1))`
-/

namespace A100306.P6782362882921505093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A062982 (n + 1)).toNat

end

end A100306.P6782362882921505093

namespace A100306

/-- `A065475(A062982(n+1))` -/
def P6782362882921505093.Spec : Prop :=
  ∀ n, P6782362882921505093.a n = A100306 (n + 1)

end A100306

/-! ## A100306.P10873599437166387021

`eq[A002321(n+1), A008683(n+1)]+1`
-/

namespace A100306.P10873599437166387021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100306.P10873599437166387021

namespace A100306

/-- `eq[A002321(n+1), A008683(n+1)]+1` -/
def P10873599437166387021.Spec : Prop :=
  ∀ n, (P10873599437166387021.a n : ℤ) = A100306 (n + 1)

end A100306

/-! ## A100306.P9389233616309278543

`A062982(n+1)+A014963(A062982(n+2))%2`
-/

namespace A100306.P9389233616309278543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1) + Int.tmod (A014963 (A062982 (n + 2)).toNat) 2

end

end A100306.P9389233616309278543

namespace A100306

/-- `A062982(n+1)+A014963(A062982(n+2))%2` -/
def P9389233616309278543.Spec : Prop :=
  ∀ n, P9389233616309278543.a n = A100306 (n + 1)

end A100306

/-!
# A100307: Modulo 2 binomial transform of 3^n.

The programs for A100307, the canonical program `A100307.P6315419929701372693` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100307 has offset 0).

The definition of A100307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100307.P6315419929701372693

`2*(a(n-1)+a(and(n, n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100307

/-- `2*(a(n-1)+a(and(n, n-1)))` -/
def P6315419929701372693.Spec : Prop :=
  ∀ n, (P6315419929701372693.a n : ℤ) = A100307 n

theorem P6315419929701372693.correct : P6315419929701372693.Spec := by
  intro n
  simp only [A100307]

end A100307

/-! ## A100307.P1658410839617841274

`2*a(and(n, n-1))-ceil(-(2*a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A100307.P1658410839617841274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - (-(2 * a (n - 1)))

end

end A100307.P1658410839617841274

namespace A100307

/-- `2*a(and(n, n-1))-ceil(-(2*a(n-1)))` -/
def P1658410839617841274.Spec : Prop :=
  ∀ n, P1658410839617841274.a n = A100307 n

end A100307

/-! ## A100307.P13430230922373148425

`2*a(and(n, n-1))-round(-(2*a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A100307.P13430230922373148425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - (-(2 * a (n - 1)))

end

end A100307.P13430230922373148425

namespace A100307

/-- `2*a(and(n, n-1))-round(-(2*a(n-1)))` -/
def P13430230922373148425.Spec : Prop :=
  ∀ n, P13430230922373148425.a n = A100307 n

end A100307

/-! ## A100307.P18326583511744885665

`∏{p}[A019565(n), A000244(A048675(#))+1]`
-/

namespace A100307.P18326583511744885665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000244 (A048675 p).toNat + 1)

end

end A100307.P18326583511744885665

namespace A100307

/-- `∏{p}[A019565(n), A000244(A048675(#))+1]` -/
def P18326583511744885665.Spec : Prop :=
  ∀ n, P18326583511744885665.a n = A100307 n

end A100307

/-! ## A100307.P7772785221083954773

`A100736(2*n)/A100736(n)`
-/

namespace A100307.P7772785221083954773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100736 (2 * n) : ℚ) / (A100736 n : ℚ)

end

end A100307.P7772785221083954773

namespace A100307

/-- `A100736(2*n)/A100736(n)` -/
def P7772785221083954773.Spec : Prop :=
  ∀ n, P7772785221083954773.a n = (A100307 n : ℚ)

end A100307

/-!
# A100308: Modulo 2 binomial transform of 5^n.

The programs for A100308, the canonical program `A100308.P16088458504743238027` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100308 has offset 0).

The definition of A100308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100308.P16088458504743238027

`2*a(and(n, n-1))+4*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100308

/-- `2*a(and(n, n-1))+4*a(n-1)` -/
def P16088458504743238027.Spec : Prop :=
  ∀ n, (P16088458504743238027.a n : ℤ) = A100308 n

theorem P16088458504743238027.correct : P16088458504743238027.Spec := by
  intro n
  simp only [A100308]

end A100308

/-! ## A100308.P5371062503822258374

`∑{d}[A019565(n), A000351(A048675(#))]`
-/

namespace A100308.P5371062503822258374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000351 (A048675 d).toNat

end

end A100308.P5371062503822258374

namespace A100308

/-- `∑{d}[A019565(n), A000351(A048675(#))]` -/
def P5371062503822258374.Spec : Prop :=
  ∀ n, P5371062503822258374.a n = A100308 n

end A100308

/-! ## A100308.P7731378349890421346

`∏{p}[A001317(n), A033042(#)]`
-/

namespace A100308.P7731378349890421346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033042 p

end

end A100308.P7731378349890421346

namespace A100308

/-- `∏{p}[A001317(n), A033042(#)]` -/
def P7731378349890421346.Spec : Prop :=
  ∀ n, P7731378349890421346.a n = A100308 n

end A100308

/-! ## A100308.P866749051680949535

`∏{p}[A053576(n), A033042(#)]`
-/

namespace A100308.P866749051680949535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033042 p

end

end A100308.P866749051680949535

namespace A100308

/-- `∏{p}[A053576(n), A033042(#)]` -/
def P866749051680949535.Spec : Prop :=
  ∀ n, P866749051680949535.a n = A100308 n

end A100308

/-! ## A100308.P3337564460529709677

`∏{p}[A133179(A206332(n+1)), A033042(#)]`
-/

namespace A100308.P3337564460529709677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A206332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033042 p

end

end A100308.P3337564460529709677

namespace A100308

/-- `∏{p}[A133179(A206332(n+1)), A033042(#)]` -/
def P3337564460529709677.Spec : Prop :=
  ∀ n, P3337564460529709677.a n = A100308 n

end A100308

/-!
# A100309: Modulo 2 binomial transform of 6^n.

The programs for A100309, the canonical program `A100309.P11826223244437257782` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100309 has offset 0).

The definition of A100309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100309.P11826223244437257782

`2*a(and(n, n-1))+5*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100309

/-- `2*a(and(n, n-1))+5*a(n-1)` -/
def P11826223244437257782.Spec : Prop :=
  ∀ n, (P11826223244437257782.a n : ℤ) = A100309 n

theorem P11826223244437257782.correct : P11826223244437257782.Spec := by
  intro n
  simp only [A100309]

end A100309

/-! ## A100309.P9819170390986319243

`A100739(2*n)/A100739(n)`
-/

namespace A100309.P9819170390986319243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100739 (2 * n) : ℚ) / (A100739 n : ℚ)

end

end A100309.P9819170390986319243

namespace A100309

/-- `A100739(2*n)/A100739(n)` -/
def P9819170390986319243.Spec : Prop :=
  ∀ n, P9819170390986319243.a n = (A100309 n : ℚ)

end A100309

/-! ## A100309.P15159378066638431594

`∏{p}[A001317(n), A033043(#)]`
-/

namespace A100309.P15159378066638431594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033043 p

end

end A100309.P15159378066638431594

namespace A100309

/-- `∏{p}[A001317(n), A033043(#)]` -/
def P15159378066638431594.Spec : Prop :=
  ∀ n, P15159378066638431594.a n = A100309 n

end A100309

/-! ## A100309.P14973547529374600238

`∏{p}[A053576(n), A033043(#)]`
-/

namespace A100309.P14973547529374600238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033043 p

end

end A100309.P14973547529374600238

namespace A100309

/-- `∏{p}[A053576(n), A033043(#)]` -/
def P14973547529374600238.Spec : Prop :=
  ∀ n, P14973547529374600238.a n = A100309 n

end A100309

/-! ## A100309.P15475785364280169623

`A033043(A001317(n))`
-/

namespace A100309.P15475785364280169623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A001317 n).toNat

end

end A100309.P15475785364280169623

namespace A100309

/-- `A033043(A001317(n))` -/
def P15475785364280169623.Spec : Prop :=
  ∀ n, P15475785364280169623.a n = A100309 n

end A100309

/-!
# A100310: Modulo 2 binomial transform of 7^n.

The programs for A100310, the canonical program `A100310.P15977019918682993160` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100310 has offset 0).

The definition of A100310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100310.P15977019918682993160

`2*a(and(n, n-1))+6*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100310

/-- `2*a(and(n, n-1))+6*a(n-1)` -/
def P15977019918682993160.Spec : Prop :=
  ∀ n, (P15977019918682993160.a n : ℤ) = A100310 n

theorem P15977019918682993160.correct : P15977019918682993160.Spec := by
  intro n
  simp only [A100310]

end A100310

/-! ## A100310.P16969994919707353321

`A100740(2*n)/A100740(n)`
-/

namespace A100310.P16969994919707353321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100740 (2 * n) : ℚ) / (A100740 n : ℚ)

end

end A100310.P16969994919707353321

namespace A100310

/-- `A100740(2*n)/A100740(n)` -/
def P16969994919707353321.Spec : Prop :=
  ∀ n, P16969994919707353321.a n = (A100310 n : ℚ)

end A100310

/-! ## A100310.P6724119632595215624

`A033044(A001317(n)+1)`
-/

namespace A100310.P6724119632595215624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A001317 n + 1).toNat

end

end A100310.P6724119632595215624

namespace A100310

/-- `A033044(A001317(n)+1)` -/
def P6724119632595215624.Spec : Prop :=
  ∀ n, P6724119632595215624.a n = A100310 n

end A100310

/-! ## A100310.P2158745944175390426

`A033044(A053576(n)+1)`
-/

namespace A100310.P2158745944175390426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A053576 n + 1).toNat

end

end A100310.P2158745944175390426

namespace A100310

/-- `A033044(A053576(n)+1)` -/
def P2158745944175390426.Spec : Prop :=
  ∀ n, P2158745944175390426.a n = A100310 n

end A100310

/-! ## A100310.P17965112215934785057

`A033044(A126646(n)+1-A219843(n))`
-/

namespace A100310.P17965112215934785057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A126646 n + (1 - A219843 n)).toNat

end

end A100310.P17965112215934785057

namespace A100310

/-- `A033044(A126646(n)+1-A219843(n))` -/
def P17965112215934785057.Spec : Prop :=
  ∀ n, P17965112215934785057.a n = A100310 n

end A100310

/-!
# A100311: Modulo 2 binomial transform of 8^n.

The programs for A100311, the canonical program `A100311.P5669623371176133148` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100311 has offset 0).

The definition of A100311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100311.P5669623371176133148

`xor(8*a(n-1), a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100311

/-- `xor(8*a(n-1), a(n-1))` -/
def P5669623371176133148.Spec : Prop :=
  ∀ n, (P5669623371176133148.a n : ℤ) = A100311 n

theorem P5669623371176133148.correct : P5669623371176133148.Spec := by
  intro n
  simp only [A100311]

end A100311

/-! ## A100311.P108345097325596415

`xor(lcm(8, a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A100311.P108345097325596415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (Nat.lcm 8 (a (n - 1))) (a (n - 1))

end

end A100311.P108345097325596415

namespace A100311

/-- `xor(lcm(8, a(n-1)), a(n-1))` -/
def P108345097325596415.Spec : Prop :=
  ∀ n, (P108345097325596415.a n : ℤ) = A100311 n

end A100311

/-! ## A100311.P2360487288974380513

`and(9*a(n-1), 25*a(n-1))` with `a(0)=1`
-/

namespace A100311.P2360487288974380513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land (9 * a (n - 1)) (25 * a (n - 1))

end

end A100311.P2360487288974380513

namespace A100311

/-- `and(9*a(n-1), 25*a(n-1))` -/
def P2360487288974380513.Spec : Prop :=
  ∀ n, (P2360487288974380513.a n : ℤ) = A100311 n

end A100311

/-! ## A100311.P3596402216707382578

`and(11*a(n-1), ∑[A001018(n)])` with `a(0)=1`
-/

namespace A100311.P3596402216707382578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (11 * a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100311.P3596402216707382578

namespace A100311

/-- `and(11*a(n-1), ∑[A001018(n)])` -/
def P3596402216707382578.Spec : Prop :=
  ∀ n, P3596402216707382578.a n = A100311 n

end A100311

/-! ## A100311.P5006529384409773426

`A048723(A000217(n+10)-(n+1))`
-/

namespace A100311.P5006529384409773426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A100311.P5006529384409773426

namespace A100311

/-- `A048723(A000217(n+10)-(n+1))` -/
def P5006529384409773426.Spec : Prop :=
  ∀ n, P5006529384409773426.a n = A100311 n

end A100311

/-!
# A100312: Number of 3 X n binary matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (10;0) and (01;1).

The programs for A100312, the canonical program `A100312.P2688047435445954742` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100312 has offset 0).

The definition of A100312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100312.P2688047435445954742

`2^(n-1)*(n²+5*n+2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100312

/-- `2^(n-1)*(n²+5*n+2)` -/
def P2688047435445954742.Spec : Prop :=
  ∀ n, P2688047435445954742.a n = (A100312 n : ℚ)

end A100312

/-! ## A100312.P4912471567429476319

`(∑[n+2]-1)/tan(acot(2^n))`
-/

namespace A100312.P4912471567429476319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℝ) / Real.tan (SequenceMachineLib.acot (2 ^ n : ℝ))

end

end A100312.P4912471567429476319

namespace A100312

/-- `(∑[n+2]-1)/tan(acot(2^n))` -/
def P4912471567429476319.Spec : Prop :=
  ∀ n, P4912471567429476319.a n = (A100312 n : ℝ)

end A100312

/-! ## A100312.P13550426991355347632

`(∑[n+1]+n)/tan(acot(2))^n`
-/

namespace A100312.P13550426991355347632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ)) ^ n

end

end A100312.P13550426991355347632

namespace A100312

/-- `(∑[n+1]+n)/tan(acot(2))^n` -/
def P13550426991355347632.Spec : Prop :=
  ∀ n, P13550426991355347632.a n = (A100312 n : ℝ)

end A100312

/-! ## A100312.P4930628716042739121

`Δ[n*2^n]+2*a(n-1)` with `a(0)=1`
-/

namespace A100312.P4930628716042739121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2 * a (n - 1)

end

end A100312.P4930628716042739121

namespace A100312

/-- `Δ[n*2^n]+2*a(n-1)` -/
def P4930628716042739121.Spec : Prop :=
  ∀ n, P4930628716042739121.a n = A100312 n

end A100312

/-! ## A100312.P3313496059660965031

`A080929(n+1)-2^(n+1)`
-/

namespace A100312.P3313496059660965031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080929 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A100312.P3313496059660965031

namespace A100312

/-- `A080929(n+1)-2^(n+1)` -/
def P3313496059660965031.Spec : Prop :=
  ∀ n, P3313496059660965031.a n = A100312 n

end A100312

/-! ## A100312.P519378038112617327

`A052482(n+2)-2^(n+1)`
-/

namespace A100312.P519378038112617327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052482 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A100312.P519378038112617327

namespace A100312

/-- `A052482(n+2)-2^(n+1)` -/
def P519378038112617327.Spec : Prop :=
  ∀ n, P519378038112617327.a n = A100312 n

end A100312

/-! ## A100312.P4377740203798491088

`∑[∑[n+3]*A131577(n)]+1`
-/

namespace A100312.P4377740203798491088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A100312.P4377740203798491088

namespace A100312

/-- `∑[∑[n+3]*A131577(n)]+1` -/
def P4377740203798491088.Spec : Prop :=
  ∀ n, P4377740203798491088.a n = A100312 n

end A100312

/-! ## A100312.P1757317791491954200

`A130129(n)+A100381(n)`
-/

namespace A100312.P1757317791491954200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130129 n + A100381 n

end

end A100312.P1757317791491954200

namespace A100312

/-- `A130129(n)+A100381(n)` -/
def P1757317791491954200.Spec : Prop :=
  ∀ n, P1757317791491954200.a n = A100312 n

end A100312

/-! ## A100312.P15312940397373025785

`A036289(n)+A001788(n+1)`
-/

namespace A100312.P15312940397373025785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A001788 (n + 1)

end

end A100312.P15312940397373025785

namespace A100312

/-- `A036289(n)+A001788(n+1)` -/
def P15312940397373025785.Spec : Prop :=
  ∀ n, P15312940397373025785.a n = A100312 n

end A100312

/-! ## A100312.P9723290440417727516

`A176027(n)+A001793(n+1)`
-/

namespace A100312.P9723290440417727516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n + A001793 (n + 1)

end

end A100312.P9723290440417727516

namespace A100312

/-- `A176027(n)+A001793(n+1)` -/
def P9723290440417727516.Spec : Prop :=
  ∀ n, P9723290440417727516.a n = A100312 n

end A100312

/-! ## A100312.P603649450622743719

`A340257(n)+A058922(n+1)`
-/

namespace A100312.P603649450622743719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340257 n + A058922 (n + 1)

end

end A100312.P603649450622743719

namespace A100312

/-- `A340257(n)+A058922(n+1)` -/
def P603649450622743719.Spec : Prop :=
  ∀ n, P603649450622743719.a n = A100312 n

end A100312

/-! ## A100312.P3207556807820437040

`A014480(n)+2*A001788(n)`
-/

namespace A100312.P3207556807820437040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 n + 2 * A001788 n

end

end A100312.P3207556807820437040

namespace A100312

/-- `A014480(n)+2*A001788(n)` -/
def P3207556807820437040.Spec : Prop :=
  ∀ n, P3207556807820437040.a n = A100312 n

end A100312

/-! ## A100312.P5198776480745010578

`A340257(n)+2*A036289(n)`
-/

namespace A100312.P5198776480745010578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340257 n + 2 * A036289 n

end

end A100312.P5198776480745010578

namespace A100312

/-- `A340257(n)+2*A036289(n)` -/
def P5198776480745010578.Spec : Prop :=
  ∀ n, P5198776480745010578.a n = A100312 n

end A100312

/-! ## A100312.P1865649394857010891

`∑[2*A084851(n)]-A000079(n)`
-/

namespace A100312.P1865649394857010891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000079 n

end

end A100312.P1865649394857010891

namespace A100312

/-- `∑[2*A084851(n)]-A000079(n)` -/
def P1865649394857010891.Spec : Prop :=
  ∀ n, P1865649394857010891.a n = A100312 n

end A100312

/-! ## A100312.P1446420243489142711

`A176027(n+1)-A057711(n+2)`
-/

namespace A100312.P1446420243489142711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 (n + 1) - A057711 (n + 2)

end

end A100312.P1446420243489142711

namespace A100312

/-- `A176027(n+1)-A057711(n+2)` -/
def P1446420243489142711.Spec : Prop :=
  ∀ n, P1446420243489142711.a n = A100312 n

end A100312

/-! ## A100312.P2393808719634101442

`A176027(n+1)-A129952(n+2)`
-/

namespace A100312.P2393808719634101442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 (n + 1) - A129952 (n + 2)

end

end A100312.P2393808719634101442

namespace A100312

/-- `A176027(n+1)-A129952(n+2)` -/
def P2393808719634101442.Spec : Prop :=
  ∀ n, P2393808719634101442.a n = A100312 n

end A100312

/-! ## A100312.P5962121657420807244

`A001788(n+1)+2*A001787(n)`
-/

namespace A100312.P5962121657420807244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + 2 * A001787 n

end

end A100312.P5962121657420807244

namespace A100312

/-- `A001788(n+1)+2*A001787(n)` -/
def P5962121657420807244.Spec : Prop :=
  ∀ n, P5962121657420807244.a n = A100312 n

end A100312

/-! ## A100312.P11761088619049251165

`2*A001793(n+1)-A000079(n)`
-/

namespace A100312.P11761088619049251165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001793 (n + 1) - A000079 n

end

end A100312.P11761088619049251165

namespace A100312

/-- `2*A001793(n+1)-A000079(n)` -/
def P11761088619049251165.Spec : Prop :=
  ∀ n, P11761088619049251165.a n = A100312 n

end A100312

/-! ## A100312.P18330345865282682874

`A053220(n+1)+n*A001792(n)`
-/

namespace A100312.P18330345865282682874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1) + (n : ℤ) * A001792 n

end

end A100312.P18330345865282682874

namespace A100312

/-- `A053220(n+1)+n*A001792(n)` -/
def P18330345865282682874.Spec : Prop :=
  ∀ n, P18330345865282682874.a n = A100312 n

end A100312

/-! ## A100312.P4345691503198728443

`A001793(n+1)+∑[A084266(n)]-1`
-/

namespace A100312.P4345691503198728443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A100312.P4345691503198728443

namespace A100312

/-- `A001793(n+1)+∑[A084266(n)]-1` -/
def P4345691503198728443.Spec : Prop :=
  ∀ n, P4345691503198728443.a n = A100312 n

end A100312

/-!
# A100313: Number of 4 X n binary matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (10;0) and (01;1).

The programs for A100313, the canonical program `A100313.P12289164920810252229` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100313 has offset 0).

The definition of A100313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100313.P12289164920810252229

`record[A081913(n)-A129953(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100313

/-- `record[A081913(n)-A129953(n)]` -/
def P12289164920810252229.Spec : Prop :=
  ∀ n, P12289164920810252229.a n = A100313 n

theorem P12289164920810252229.correct : P12289164920810252229.Spec := by
  intro n
  simp only [A100313]

end A100313

/-! ## A100313.P4203572698206904596

`Δ[Δ[A290031(n)+A004277(n)]]`
-/

namespace A100313.P4203572698206904596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290031 n + A004277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100313.P4203572698206904596

namespace A100313

/-- `Δ[Δ[A290031(n)+A004277(n)]]` -/
def P4203572698206904596.Spec : Prop :=
  ∀ n, P4203572698206904596.a n = A100313 n

end A100313

/-! ## A100313.P13189063684916298236

`Δ[Δ[A290031(n)+A008458(n)]]`
-/

namespace A100313.P13189063684916298236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290031 n + A008458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100313.P13189063684916298236

namespace A100313

/-- `Δ[Δ[A290031(n)+A008458(n)]]` -/
def P13189063684916298236.Spec : Prop :=
  ∀ n, P13189063684916298236.a n = A100313 n

end A100313

/-! ## A100313.P6864074837591017356

`Δ[Δ[A290031(n)+A008486(n)]]`
-/

namespace A100313.P6864074837591017356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290031 n + A008486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100313.P6864074837591017356

namespace A100313

/-- `Δ[Δ[A290031(n)+A008486(n)]]` -/
def P6864074837591017356.Spec : Prop :=
  ∀ n, P6864074837591017356.a n = A100313 n

end A100313

/-! ## A100313.P832055578860650530

`Δ[Δ[A290031(n)+A008574(n)]]`
-/

namespace A100313.P832055578860650530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290031 n + A008574 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100313.P832055578860650530

namespace A100313

/-- `Δ[Δ[A290031(n)+A008574(n)]]` -/
def P832055578860650530.Spec : Prop :=
  ∀ n, P832055578860650530.a n = A100313 n

end A100313

/-!
# A100314: Number of 2 X n 0-1 matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (00;1), (01;0), (10;0) and (01;1).

The programs for A100314, the canonical program `A100314.P9525572227045906692` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100314 has offset 0).

The definition of A100314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100314.P9525572227045906692

`2^n+2*n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100314

/-- `2^n+2*n` -/
def P9525572227045906692.Spec : Prop :=
  ∀ n, (P9525572227045906692.a n : ℤ) = A100314 n

theorem P9525572227045906692.correct : P9525572227045906692.Spec := by
  intro n
  simp only [A100314]

end A100314

/-! ## A100314.P17091438837819327314

`record[(-sqrt(2))^n+n]`
-/

namespace A100314.P17091438837819327314
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (2 : ℝ)) ^ n + (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100314.P17091438837819327314

namespace A100314

/-- `record[(-sqrt(2))^n+n]` -/
def P17091438837819327314.Spec : Prop :=
  ∀ n, P17091438837819327314.a n = (A100314 n : ℝ)

end A100314

/-! ## A100314.P1438133890133869657

`abs(xor(-(2*n), 2^n))`
-/

namespace A100314.P1438133890133869657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-(2 * n : ℤ)) (2 ^ n : ℤ)|

end

end A100314.P1438133890133869657

namespace A100314

/-- `abs(xor(-(2*n), 2^n))` -/
def P1438133890133869657.Spec : Prop :=
  ∀ n, P1438133890133869657.a n = A100314 n

end A100314

/-! ## A100314.P1618984809931299517

`∑[ogf((1-3x^2)/(1-3x+2x^2))]`
-/

namespace A100314.P1618984809931299517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100314.P1618984809931299517

namespace A100314

/-- `∑[ogf((1-3x^2)/(1-3x+2x^2))]` -/
def P1618984809931299517.Spec : Prop :=
  ∀ n, P1618984809931299517.a n = A100314 n

end A100314

/-! ## A100314.P2750879070865309116

`ogf((1-3x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A100314.P2750879070865309116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -4, 5, -2] n

end

end A100314.P2750879070865309116

namespace A100314

/-- `ogf((1-3x^2)/(1-4x+5x^2-2x^3))` -/
def P2750879070865309116.Spec : Prop :=
  ∀ n, P2750879070865309116.a n = A100314 n

end A100314

/-! ## A100314.P15396248712216412719

`∑[2*(a(n-1)-1)]` with `a(0)=1, a(1)=3`
-/

namespace A100314.P15396248712216412719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100314.P15396248712216412719

namespace A100314

/-- `∑[2*(a(n-1)-1)]` -/
def P15396248712216412719.Spec : Prop :=
  ∀ n, P15396248712216412719.a n = A100314 n

end A100314

/-! ## A100314.P8086220838355491470

`2*(a(n-1)+2-n)` with `a(0)=1`
-/

namespace A100314.P8086220838355491470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (2 - (n : ℤ)))

end

end A100314.P8086220838355491470

namespace A100314

/-- `2*(a(n-1)+2-n)` -/
def P8086220838355491470.Spec : Prop :=
  ∀ n, P8086220838355491470.a n = A100314 n

theorem P8086220838355491470.correct : P8086220838355491470.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100314, Nat.add_sub_cancel, A100314.P8086220838355491470.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100314, Nat.add_sub_cancel, A100314.P8086220838355491470.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A100314

/-! ## A100314.P2475220929555698399

`2*(2-(n-a(n-1)))` with `a(0)=1`
-/

namespace A100314.P2475220929555698399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - ((n : ℤ) - a (n - 1)))

end

end A100314.P2475220929555698399

namespace A100314

/-- `2*(2-(n-a(n-1)))` -/
def P2475220929555698399.Spec : Prop :=
  ∀ n, P2475220929555698399.a n = A100314 n

theorem P2475220929555698399.correct : P2475220929555698399.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100314, Nat.add_sub_cancel, A100314.P2475220929555698399.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100314, Nat.add_sub_cancel, A100314.P2475220929555698399.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A100314

/-! ## A100314.P5645765561786423606

`∑[∑[2^(n-2%(n+1))]]`
-/

namespace A100314.P5645765561786423606
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100314.P5645765561786423606

namespace A100314

/-- `∑[∑[2^(n-2%(n+1))]]` -/
def P5645765561786423606.Spec : Prop :=
  ∀ n, P5645765561786423606.a n = (A100314 n : ℚ)

end A100314

/-! ## A100314.P12524769282799291327

`abs(xor(n-1, 2^n)+n+1)`
-/

namespace A100314.P12524769282799291327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n : ℤ) - 1) (2 ^ n : ℤ) + (n + 1 : ℤ)|

end

end A100314.P12524769282799291327

namespace A100314

/-- `abs(xor(n-1, 2^n)+n+1)` -/
def P12524769282799291327.Spec : Prop :=
  ∀ n, P12524769282799291327.a n = A100314 n

end A100314

/-! ## A100314.P13494323150480866137

`∑[a(n-1)+2^(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A100314.P13494323150480866137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100314.P13494323150480866137

namespace A100314

/-- `∑[a(n-1)+2^(n-2)]` -/
def P13494323150480866137.Spec : Prop :=
  ∀ n, P13494323150480866137.a n = (A100314 n : ℚ)

end A100314

/-! ## A100314.P607499630747286462

`(a(n-1)+2-n)/(1-1/2)` with `a(0)=1`
-/

namespace A100314.P607499630747286462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (2 - (n : ℤ) : ℚ)) / (1 - (1 : ℚ) / 2)

end

end A100314.P607499630747286462

namespace A100314

/-- `(a(n-1)+2-n)/(1-1/2)` -/
def P607499630747286462.Spec : Prop :=
  ∀ n, P607499630747286462.a n = (A100314 n : ℚ)

theorem P607499630747286462.correct : P607499630747286462.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100314, Nat.add_sub_cancel, A100314.P607499630747286462.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100314, Nat.add_sub_cancel, A100314.P607499630747286462.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A100314

/-! ## A100314.P1917965925462941315

`(2-(n-a(n-1)))/(1-1/2)` with `a(0)=1`
-/

namespace A100314.P1917965925462941315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - ((n : ℚ) - a (n - 1))) / (1 - (1 : ℚ) / 2)

end

end A100314.P1917965925462941315

namespace A100314

/-- `(2-(n-a(n-1)))/(1-1/2)` -/
def P1917965925462941315.Spec : Prop :=
  ∀ n, P1917965925462941315.a n = (A100314 n : ℚ)

theorem P1917965925462941315.correct : P1917965925462941315.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100314, Nat.add_sub_cancel, A100314.P1917965925462941315.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100314, Nat.add_sub_cancel, A100314.P1917965925462941315.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A100314

/-! ## A100314.P10348916984810179723

`∑[floor(a(n-1)+a(n-1)-2)]` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A100314.P10348916984810179723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100314.P10348916984810179723

namespace A100314

/-- `∑[floor(a(n-1)+a(n-1)-2)]` -/
def P10348916984810179723.Spec : Prop :=
  ∀ n, P10348916984810179723.a n = A100314 n

end A100314

/-! ## A100314.P13463061350411144965

`∑[floor(a(n-1)-(2-a(n-1)))]` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A100314.P13463061350411144965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100314.P13463061350411144965

namespace A100314

/-- `∑[floor(a(n-1)-(2-a(n-1)))]` -/
def P13463061350411144965.Spec : Prop :=
  ∀ n, P13463061350411144965.a n = A100314 n

end A100314

/-! ## A100314.P1688577747373490230

`floor(4-n+a(n-1)+a(n-1)-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A100314.P1688577747373490230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - (n : ℤ) + (a (n - 1) + (a (n - 1) - (n : ℤ)))

end

end A100314.P1688577747373490230

namespace A100314

/-- `floor(4-n+a(n-1)+a(n-1)-n)` -/
def P1688577747373490230.Spec : Prop :=
  ∀ n, P1688577747373490230.a n = A100314 n

theorem P1688577747373490230.correct : P1688577747373490230.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100314, Nat.add_sub_cancel, A100314.P1688577747373490230.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100314, Nat.add_sub_cancel, A100314.P1688577747373490230.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A100314

/-! ## A100314.P7727133531035484875

`floor(4-(n-a(n-1)-a(n-1))-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A100314.P7727133531035484875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - ((n : ℤ) - a (n - 1) - a (n - 1)) - (n : ℤ)

end

end A100314.P7727133531035484875

namespace A100314

/-- `floor(4-(n-a(n-1)-a(n-1))-n)` -/
def P7727133531035484875.Spec : Prop :=
  ∀ n, P7727133531035484875.a n = A100314 n

theorem P7727133531035484875.correct : P7727133531035484875.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100314, Nat.add_sub_cancel, A100314.P7727133531035484875.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100314, Nat.add_sub_cancel, A100314.P7727133531035484875.a, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A100314

/-! ## A100314.P11241999694365632555

`abs(1-A176691(n))`
-/

namespace A100314.P11241999694365632555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A176691 n|

end

end A100314.P11241999694365632555

namespace A100314

/-- `abs(1-A176691(n))` -/
def P11241999694365632555.Spec : Prop :=
  ∀ n, P11241999694365632555.a n = A100314 n

end A100314

/-! ## A100314.P15140216607210635965

`Δ[or(n²-n, 2^n)]`
-/

namespace A100314.P15140216607210635965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n ^ 2 : ℤ) - (n : ℤ)) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100314.P15140216607210635965

namespace A100314

/-- `Δ[or(n²-n, 2^n)]` -/
def P15140216607210635965.Spec : Prop :=
  ∀ n, P15140216607210635965.a n = A100314 n

end A100314

/-! ## A100314.P4777816278499207412

`Δ[lcm(n, n-1)+2^n]`
-/

namespace A100314.P4777816278499207412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1) + 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100314.P4777816278499207412

namespace A100314

/-- `Δ[lcm(n, n-1)+2^n]` -/
def P4777816278499207412.Spec : Prop :=
  ∀ n, P4777816278499207412.a n = A100314 n

end A100314

/-!
# A100315: Number of 3 X n 0-1 matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (00;1), (01;0), (10;0) and (01;1).

The programs for A100315, the canonical program `A100315.P7336412497841908468` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100315 has offset 0).

The definition of A100315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100315.P7336412497841908468

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=8, a(2)=14, a(3)=22`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100315

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P7336412497841908468.Spec : Prop :=
  ∀ n, P7336412497841908468.a n = A100315 n

theorem P7336412497841908468.correct : P7336412497841908468.Spec := by
  intro n
  simp only [A100315]

end A100315

/-! ## A100315.P5738003843970876782

`4*n-xor(-2, 2^n)`
-/

namespace A100315.P5738003843970876782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - Int.xor (-2) (2 ^ n : ℤ)

end

end A100315.P5738003843970876782

namespace A100315

/-- `4*n-xor(-2, 2^n)` -/
def P5738003843970876782.Spec : Prop :=
  ∀ n, P5738003843970876782.a n = A100315 n

end A100315

/-! ## A100315.P1345579931249290566

`xor(1, 2^n)+4*n+1`
-/

namespace A100315.P1345579931249290566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ n) + (4 * n + 1)

end

end A100315.P1345579931249290566

namespace A100315

/-- `xor(1, 2^n)+4*n+1` -/
def P1345579931249290566.Spec : Prop :=
  ∀ n, (P1345579931249290566.a n : ℤ) = A100315 n

end A100315

/-! ## A100315.P12327602472911193618

`∑[2*(a(n-1)-2)]` with `a(0)=1, a(1)=7, a(2)=6`
-/

namespace A100315.P12327602472911193618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 6] fun n f1 =>
  2 * (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100315.P12327602472911193618

namespace A100315

/-- `∑[2*(a(n-1)-2)]` -/
def P12327602472911193618.Spec : Prop :=
  ∀ n, P12327602472911193618.a n = A100315 n

end A100315

/-! ## A100315.P11112875236789388629

`record[xor(3, n+2)]+2^n-1`
-/

namespace A100315.P11112875236789388629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((2 ^ n : ℤ) - 1)

end

end A100315.P11112875236789388629

namespace A100315

/-- `record[xor(3, n+2)]+2^n-1` -/
def P11112875236789388629.Spec : Prop :=
  ∀ n, P11112875236789388629.a n = A100315 n

end A100315

/-! ## A100315.P14486905520746650722

`2*abs(a(n-1)-n-n)+6` with `a(0)=1`
-/

namespace A100315.P14486905520746650722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * |a (n - 1) - (n : ℤ) - (n : ℤ)| + 6

end

end A100315.P14486905520746650722

namespace A100315

/-- `2*abs(a(n-1)-n-n)+6` -/
def P14486905520746650722.Spec : Prop :=
  ∀ n, P14486905520746650722.a n = A100315 n

end A100315

/-! ## A100315.P5611217246958880934

`∑[a(n-1)+a(n-1)-4]` with `a(0)=1, a(1)=7, a(2)=6`
-/

namespace A100315.P5611217246958880934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100315.P5611217246958880934

namespace A100315

/-- `∑[a(n-1)+a(n-1)-4]` -/
def P5611217246958880934.Spec : Prop :=
  ∀ n, P5611217246958880934.a n = A100315 n

end A100315

/-! ## A100315.P16174245264731250695

`∑[a(n-1)-(4-a(n-1))]` with `a(0)=1, a(1)=7, a(2)=6`
-/

namespace A100315.P16174245264731250695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 6] fun n f1 =>
  f1 (n - 1) - (4 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100315.P16174245264731250695

namespace A100315

/-- `∑[a(n-1)-(4-a(n-1))]` -/
def P16174245264731250695.Spec : Prop :=
  ∀ n, P16174245264731250695.a n = A100315 n

end A100315

/-! ## A100315.P12631073683101762325

`2-2*(xor(1, 2*n-a(n-1))-3)` with `a(0)=1`
-/

namespace A100315.P12631073683101762325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - 2 * (Int.xor 1 ((2 * n : ℤ) - a (n - 1)) - 3)

end

end A100315.P12631073683101762325

namespace A100315

/-- `2-2*(xor(1, 2*n-a(n-1))-3)` -/
def P12631073683101762325.Spec : Prop :=
  ∀ n, P12631073683101762325.a n = A100315 n

end A100315

/-! ## A100315.P16653216521305801092

`A132824(n)+A008588(n)`
-/

namespace A100315.P16653216521305801092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132824 n + A008588 n

end

end A100315.P16653216521305801092

namespace A100315

/-- `A132824(n)+A008588(n)` -/
def P16653216521305801092.Spec : Prop :=
  ∀ n, P16653216521305801092.a n = A100315 n

end A100315

/-! ## A100315.P3972714120836588315

`A171449(n)+A016825(n)`
-/

namespace A100315.P3972714120836588315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 n + A016825 n

end

end A100315.P3972714120836588315

namespace A100315

/-- `A171449(n)+A016825(n)` -/
def P3972714120836588315.Spec : Prop :=
  ∀ n, P3972714120836588315.a n = A100315 n

end A100315

/-! ## A100315.P15598139953343515152

`A081494(n+1)+A062545(n)`
-/

namespace A100315.P15598139953343515152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081494 (n + 1) + A062545 n

end

end A100315.P15598139953343515152

namespace A100315

/-- `A081494(n+1)+A062545(n)` -/
def P15598139953343515152.Spec : Prop :=
  ∀ n, P15598139953343515152.a n = A100315 n

end A100315

/-! ## A100315.P12646570255768919191

`A166977(n)+A047522(n+1)`
-/

namespace A100315.P12646570255768919191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166977 n + A047522 (n + 1)

end

end A100315.P12646570255768919191

namespace A100315

/-- `A166977(n)+A047522(n+1)` -/
def P12646570255768919191.Spec : Prop :=
  ∀ n, P12646570255768919191.a n = A100315 n

end A100315

/-! ## A100315.P17734287154783941134

`A163300(n+1)+A100314(n)`
-/

namespace A100315.P17734287154783941134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) + A100314 n

end

end A100315.P17734287154783941134

namespace A100315

/-- `A163300(n+1)+A100314(n)` -/
def P17734287154783941134.Spec : Prop :=
  ∀ n, P17734287154783941134.a n = A100315 n

end A100315

/-! ## A100315.P13618543701672753781

`A155559(n)+A133653(n+1)`
-/

namespace A100315.P13618543701672753781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A133653 (n + 1)

end

end A100315.P13618543701672753781

namespace A100315

/-- `A155559(n)+A133653(n+1)` -/
def P13618543701672753781.Spec : Prop :=
  ∀ n, P13618543701672753781.a n = A100315 n

end A100315

/-! ## A100315.P12169145939981994595

`A155559(n)+A103517(2*n)`
-/

namespace A100315.P12169145939981994595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A103517 (2 * n)

end

end A100315.P12169145939981994595

namespace A100315

/-- `A155559(n)+A103517(2*n)` -/
def P12169145939981994595.Spec : Prop :=
  ∀ n, P12169145939981994595.a n = A100315 n

end A100315

/-! ## A100315.P3545134653551140437

`A255047(n)+A062545(2*n)`
-/

namespace A100315.P3545134653551140437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + A062545 (2 * n)

end

end A100315.P3545134653551140437

namespace A100315

/-- `A255047(n)+A062545(2*n)` -/
def P3545134653551140437.Spec : Prop :=
  ∀ n, P3545134653551140437.a n = A100315 n

end A100315

/-! ## A100315.P11942766288723638682

`A000079(n)+2*comp[A004277(n)]`
-/

namespace A100315.P11942766288723638682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A100315.P11942766288723638682

namespace A100315

/-- `A000079(n)+2*comp[A004277(n)]` -/
def P11942766288723638682.Spec : Prop :=
  ∀ n, P11942766288723638682.a n = A100315 n

end A100315

/-! ## A100315.P9792354270919174835

`A163300(n+1)+∑[A094373(n)]+n`
-/

namespace A100315.P9792354270919174835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A100315.P9792354270919174835

namespace A100315

/-- `A163300(n+1)+∑[A094373(n)]+n` -/
def P9792354270919174835.Spec : Prop :=
  ∀ n, P9792354270919174835.a n = A100315 n

end A100315

/-! ## A100315.P11625258135004241160

`A011782(n+1)+2*A131738(2*n)`
-/

namespace A100315.P11625258135004241160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + 2 * A131738 (2 * n)

end

end A100315.P11625258135004241160

namespace A100315

/-- `A011782(n+1)+2*A131738(2*n)` -/
def P11625258135004241160.Spec : Prop :=
  ∀ n, P11625258135004241160.a n = A100315 n

end A100315

/-!
# A100316: Number of 4 X n 0-1 matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (00;1), (01;0), (10;0) and (01;1).

The programs for A100316, the canonical program `A100316.P14902676668082116420` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100316 has offset 0).

The definition of A100316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100316.P15200056059547876873

`A255047(n)+3*A062545(n)`
-/

namespace A100316.P15200056059547876873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + 3 * A062545 n

end

end A100316.P15200056059547876873

namespace A100316

/-- `A255047(n)+3*A062545(n)` -/
def P15200056059547876873.Spec : Prop :=
  ∀ n, P15200056059547876873.a n = A100316 n

end A100316

/-! ## A100316.P14902676668082116420

`A008486(A062545(n))+A000225(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100316

/-- `A008486(A062545(n))+A000225(n)` -/
def P14902676668082116420.Spec : Prop :=
  ∀ n, P14902676668082116420.a n = A100316 n

theorem P14902676668082116420.correct : P14902676668082116420.Spec := by
  intro n
  simp only [A100316]

end A100316

/-! ## A100316.P4325307927337916662

`A083318(n)+A019426(A062545(n))`
-/

namespace A100316.P4325307927337916662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n + A019426 (A062545 n).toNat

end

end A100316.P4325307927337916662

namespace A100316

/-- `A083318(n)+A019426(A062545(n))` -/
def P4325307927337916662.Spec : Prop :=
  ∀ n, P4325307927337916662.a n = A100316 n

end A100316

/-! ## A100316.P2985708790324987717

`A255047(n)+A008585(A062545(n))`
-/

namespace A100316.P2985708790324987717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + A008585 (A062545 n).toNat

end

end A100316.P2985708790324987717

namespace A100316

/-- `A255047(n)+A008585(A062545(n))` -/
def P2985708790324987717.Spec : Prop :=
  ∀ n, P2985708790324987717.a n = A100316 n

end A100316

/-! ## A100316.P17432817536145100070

`A062709(n)-A084060(A103517(n))`
-/

namespace A100316.P17432817536145100070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 n - A084060 (A103517 n).toNat

end

end A100316.P17432817536145100070

namespace A100316

/-- `A062709(n)-A084060(A103517(n))` -/
def P17432817536145100070.Spec : Prop :=
  ∀ n, P17432817536145100070.a n = A100316 n

end A100316

/-! ## A100316.P11203947671425403239

`A081494(n+1)+A062545(A062545(n))`
-/

namespace A100316.P11203947671425403239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081494 (n + 1) + A062545 (A062545 n).toNat

end

end A100316.P11203947671425403239

namespace A100316

/-- `A081494(n+1)+A062545(A062545(n))` -/
def P11203947671425403239.Spec : Prop :=
  ∀ n, P11203947671425403239.a n = A100316 n

end A100316

/-! ## A100316.P18204285630325020662

`A255047(n)+A062545(A062545(n)+n)`
-/

namespace A100316.P18204285630325020662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + A062545 (A062545 n + (n : ℤ)).toNat

end

end A100316.P18204285630325020662

namespace A100316

/-- `A255047(n)+A062545(A062545(n)+n)` -/
def P18204285630325020662.Spec : Prop :=
  ∀ n, P18204285630325020662.a n = A100316 n

end A100316

/-!
# A100317: Numbers k such that exactly one of k - 1 and k + 1 is prime.

The programs for A100317, the canonical program `A100317.P11661269307119985409` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100317 has offset 1).

The definition of A100317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100317.P11661269307119985409

`∪[A025584(n+1), A107986(n+1)]-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A100317

/-- `∪[A025584(n+1), A107986(n+1)]-1` -/
def P11661269307119985409.Spec : Prop :=
  ∀ n, P11661269307119985409.a n = A100317 (n + 1)

theorem P11661269307119985409.correct : P11661269307119985409.Spec := by
  intro n
  simp only [A100317, Nat.add_sub_cancel]

end A100317

/-! ## A100317.P6681018853288202127

`eq[A014017(n+1)+2, A002126(n+1)]`
-/

namespace A100317.P6681018853288202127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P6681018853288202127

namespace A100317

/-- `eq[A014017(n+1)+2, A002126(n+1)]` -/
def P6681018853288202127.Spec : Prop :=
  ∀ n, (P6681018853288202127.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P13826819861646601960

`eq[A014289(n+1)+2, A002126(n+1)]`
-/

namespace A100317.P13826819861646601960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014289 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P13826819861646601960

namespace A100317

/-- `eq[A014289(n+1)+2, A002126(n+1)]` -/
def P13826819861646601960.Spec : Prop :=
  ∀ n, (P13826819861646601960.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P14433437932543061544

`eq[A014625(n+1)+2, A002126(n+1)]`
-/

namespace A100317.P14433437932543061544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014625 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P14433437932543061544

namespace A100317

/-- `eq[A014625(n+1)+2, A002126(n+1)]` -/
def P14433437932543061544.Spec : Prop :=
  ∀ n, (P14433437932543061544.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P14890748551058806504

`eq[A014737(n+1)+2, A002126(n+1)]`
-/

namespace A100317.P14890748551058806504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014737 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P14890748551058806504

namespace A100317

/-- `eq[A014737(n+1)+2, A002126(n+1)]` -/
def P14890748551058806504.Spec : Prop :=
  ∀ n, (P14890748551058806504.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P17523745590401510847

`eq[A014961(n+1)+2, A002126(n+1)]`
-/

namespace A100317.P17523745590401510847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014961 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P17523745590401510847

namespace A100317

/-- `eq[A014961(n+1)+2, A002126(n+1)]` -/
def P17523745590401510847.Spec : Prop :=
  ∀ n, (P17523745590401510847.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P4151128760505433648

`eq[1, A343730(2*(n+1))]+1`
-/

namespace A100317.P4151128760505433648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343730 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100317.P4151128760505433648

namespace A100317

/-- `eq[1, A343730(2*(n+1))]+1` -/
def P4151128760505433648.Spec : Prop :=
  ∀ n, (P4151128760505433648.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P11421761450358829852

`lt[A343730(A004273(n)+1), 2]`
-/

namespace A100317.P11421761450358829852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343730 (A004273 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A100317.P11421761450358829852

namespace A100317

/-- `lt[A343730(A004273(n)+1), 2]` -/
def P11421761450358829852.Spec : Prop :=
  ∀ n, (P11421761450358829852.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P1774622170053639237

`lt[A343730(A028310(2*n)), 2]`
-/

namespace A100317.P1774622170053639237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343730 (A028310 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A100317.P1774622170053639237

namespace A100317

/-- `lt[A343730(A028310(2*n)), 2]` -/
def P1774622170053639237.Spec : Prop :=
  ∀ n, (P1774622170053639237.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P7054649583627748005

`lt[A343730(A028310(n)+n), 2]`
-/

namespace A100317.P7054649583627748005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343730 (A028310 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A100317.P7054649583627748005

namespace A100317

/-- `lt[A343730(A028310(n)+n), 2]` -/
def P7054649583627748005.Spec : Prop :=
  ∀ n, (P7054649583627748005.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P648007880210772721

`eq[A015073(n+1)+2, A002126(n+1)]`
-/

namespace A100317.P648007880210772721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015073 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P648007880210772721

namespace A100317

/-- `eq[A015073(n+1)+2, A002126(n+1)]` -/
def P648007880210772721.Spec : Prop :=
  ∀ n, (P648007880210772721.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P10120270229114034069

`eq[A015153(n+1)+2, A002126(n+1)]`
-/

namespace A100317.P10120270229114034069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015153 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P10120270229114034069

namespace A100317

/-- `eq[A015153(n+1)+2, A002126(n+1)]` -/
def P10120270229114034069.Spec : Prop :=
  ∀ n, (P10120270229114034069.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P7547511361752203952

`eq[A015297(n+1)+2, A002126(n+1)]`
-/

namespace A100317.P7547511361752203952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015297 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P7547511361752203952

namespace A100317

/-- `eq[A015297(n+1)+2, A002126(n+1)]` -/
def P7547511361752203952.Spec : Prop :=
  ∀ n, (P7547511361752203952.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P10659919184790113585

`eq[A015505(n+1)+2, A002126(n+1)]`
-/

namespace A100317.P10659919184790113585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015505 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P10659919184790113585

namespace A100317

/-- `eq[A015505(n+1)+2, A002126(n+1)]` -/
def P10659919184790113585.Spec : Prop :=
  ∀ n, (P10659919184790113585.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P4076608646933344223

`eq[A015681(n+1)+2, A002126(n+1)]`
-/

namespace A100317.P4076608646933344223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015681 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P4076608646933344223

namespace A100317

/-- `eq[A015681(n+1)+2, A002126(n+1)]` -/
def P4076608646933344223.Spec : Prop :=
  ∀ n, (P4076608646933344223.a n : ℤ) = A100317 (n + 1)

end A100317

/-! ## A100317.P3415101540542763738

`eq[A002126(n), A002126(A187038(n))]-1`
-/

namespace A100317.P3415101540542763738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A187038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A100317.P3415101540542763738

namespace A100317

/-- `eq[A002126(n), A002126(A187038(n))]-1` -/
def P3415101540542763738.Spec : Prop :=
  ∀ n, P3415101540542763738.a n = A100317 (n + 1)

end A100317

/-! ## A100317.P6259654539716316515

`eq[A002126(n+1), A002126(A187038(n+1))]`
-/

namespace A100317.P6259654539716316515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A187038 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100317.P6259654539716316515

namespace A100317

/-- `eq[A002126(n+1), A002126(A187038(n+1))]` -/
def P6259654539716316515.Spec : Prop :=
  ∀ n, (P6259654539716316515.a n : ℤ) = A100317 (n + 1)

end A100317

/-!
# A100318: Numbers n such that at least one of n-1 and n+1 is composite.

The programs for A100318, the canonical program `A100318.P17095725171134732642` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100318 has offset 1).

The definition of A100318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100318.P7260615258971027216

`lt[A326041(n+1), n]`
-/

namespace A100318.P7260615258971027216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326041 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A100318.P7260615258971027216

namespace A100318

/-- `lt[A326041(n+1), n]` -/
def P7260615258971027216.Spec : Prop :=
  ∀ n, (P7260615258971027216.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P12897949357363333691

`lt[A079068(n+1)+1, n]`
-/

namespace A100318.P12897949357363333691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A100318.P12897949357363333691

namespace A100318

/-- `lt[A079068(n+1)+1, n]` -/
def P12897949357363333691.Spec : Prop :=
  ∀ n, (P12897949357363333691.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P9911894019076068294

`lt[A268674(n+1)+1, n]`
-/

namespace A100318.P9911894019076068294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A100318.P9911894019076068294

namespace A100318

/-- `lt[A268674(n+1)+1, n]` -/
def P9911894019076068294.Spec : Prop :=
  ∀ n, (P9911894019076068294.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P18064140251470162055

`lt[1, A349348(n+1)+n]`
-/

namespace A100318.P18064140251470162055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349348 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A100318.P18064140251470162055

namespace A100318

/-- `lt[1, A349348(n+1)+n]` -/
def P18064140251470162055.Spec : Prop :=
  ∀ n, (P18064140251470162055.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P6387331443381164392

`lt[A353412(n+1)+1, n]`
-/

namespace A100318.P6387331443381164392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A100318.P6387331443381164392

namespace A100318

/-- `lt[A353412(n+1)+1, n]` -/
def P6387331443381164392.Spec : Prop :=
  ∀ n, (P6387331443381164392.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P18389195820187585977

`comp[A144834(n+1)-1]+3`
-/

namespace A100318.P18389195820187585977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A100318.P18389195820187585977

namespace A100318

/-- `comp[A144834(n+1)-1]+3` -/
def P18389195820187585977.Spec : Prop :=
  ∀ n, (P18389195820187585977.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P18392354942900418064

`comp[A001359(n+1)-2]+3`
-/

namespace A100318.P18392354942900418064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A100318.P18392354942900418064

namespace A100318

/-- `comp[A001359(n+1)-2]+3` -/
def P18392354942900418064.Spec : Prop :=
  ∀ n, (P18392354942900418064.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P17238294668597120141

`lt[A353749(n+1), (1-n)²]`
-/

namespace A100318.P17238294668597120141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100318.P17238294668597120141

namespace A100318

/-- `lt[A353749(n+1), (1-n)²]` -/
def P17238294668597120141.Spec : Prop :=
  ∀ n, (P17238294668597120141.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P17095725171134732642

`A071538(a(n-1))+n+3` with `a(0)=3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100318

/-- `A071538(a(n-1))+n+3` -/
def P17095725171134732642.Spec : Prop :=
  ∀ n, P17095725171134732642.a n = A100318 (n + 1)

theorem P17095725171134732642.correct : P17095725171134732642.Spec := by
  intro n
  simp only [A100318, Nat.add_sub_cancel]

end A100318

/-! ## A100318.P13885813368483953097

`∪[A005381(n+1), A072668(n+1)]`
-/

namespace A100318.P13885813368483953097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100318.P13885813368483953097

namespace A100318

/-- `∪[A005381(n+1), A072668(n+1)]` -/
def P13885813368483953097.Spec : Prop :=
  ∀ n, (P13885813368483953097.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P7355248515489100705

`∪[A007617(n+1), A100319(n+1)]`
-/

namespace A100318.P7355248515489100705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100318.P7355248515489100705

namespace A100318

/-- `∪[A007617(n+1), A100319(n+1)]` -/
def P7355248515489100705.Spec : Prop :=
  ∀ n, (P7355248515489100705.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P17577884239349761503

`∪[A072668(n+1), A079696(n+1)]`
-/

namespace A100318.P17577884239349761503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100318.P17577884239349761503

namespace A100318

/-- `∪[A072668(n+1), A079696(n+1)]` -/
def P17577884239349761503.Spec : Prop :=
  ∀ n, (P17577884239349761503.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P10593863955655670059

`∪[A072668(n+1), A100319(n+1)]`
-/

namespace A100318.P10593863955655670059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100318.P10593863955655670059

namespace A100318

/-- `∪[A072668(n+1), A100319(n+1)]` -/
def P10593863955655670059.Spec : Prop :=
  ∀ n, (P10593863955655670059.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P14224066214126800831

`∪[A072668(n+1), A136799(n+1)]`
-/

namespace A100318.P14224066214126800831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100318.P14224066214126800831

namespace A100318

/-- `∪[A072668(n+1), A136799(n+1)]` -/
def P14224066214126800831.Spec : Prop :=
  ∀ n, (P14224066214126800831.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P5024083380351027948

`∪[A100319(n+1), A144396(n+1)]`
-/

namespace A100318.P5024083380351027948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100318.P5024083380351027948

namespace A100318

/-- `∪[A100319(n+1), A144396(n+1)]` -/
def P5024083380351027948.Spec : Prop :=
  ∀ n, (P5024083380351027948.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P7689648192426580728

`∪[A072668(n+1), A264719(n+1)]`
-/

namespace A100318.P7689648192426580728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100318.P7689648192426580728

namespace A100318

/-- `∪[A072668(n+1), A264719(n+1)]` -/
def P7689648192426580728.Spec : Prop :=
  ∀ n, (P7689648192426580728.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P10719725007432443368

`∪[A072668(n+1), A264721(n+1)]`
-/

namespace A100318.P10719725007432443368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100318.P10719725007432443368

namespace A100318

/-- `∪[A072668(n+1), A264721(n+1)]` -/
def P10719725007432443368.Spec : Prop :=
  ∀ n, (P10719725007432443368.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P546154850020283388

`∪[A079696(n+1), A264720(n+1)]`
-/

namespace A100318.P546154850020283388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100318.P546154850020283388

namespace A100318

/-- `∪[A079696(n+1), A264720(n+1)]` -/
def P546154850020283388.Spec : Prop :=
  ∀ n, (P546154850020283388.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P7726658917144690573

`lt[A000010(n+3), A000203(n+1)]+2`
-/

namespace A100318.P7726658917144690573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A100318.P7726658917144690573

namespace A100318

/-- `lt[A000010(n+3), A000203(n+1)]+2` -/
def P7726658917144690573.Spec : Prop :=
  ∀ n, (P7726658917144690573.a n : ℤ) = A100318 (n + 1)

end A100318

/-! ## A100318.P12769958352372297448

`lt[A020639(n+3), A000203(n+1)]+2`
-/

namespace A100318.P12769958352372297448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A100318.P12769958352372297448

namespace A100318

/-- `lt[A020639(n+3), A000203(n+1)]+2` -/
def P12769958352372297448.Spec : Prop :=
  ∀ n, (P12769958352372297448.a n : ℤ) = A100318 (n + 1)

end A100318

/-!
# A100319: Even numbers m such that at least one of m-1 and m+1 is composite.

The programs for A100319, the canonical program `A100319.P5803763208182587955` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100319 has offset 1).

The definition of A100319 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167692, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100319.P5803763208182587955

`A167692(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100319

/-- `A167692(n+2)` -/
def P5803763208182587955.Spec : Prop :=
  ∀ n, P5803763208182587955.a n = A100319 (n + 1)

theorem P5803763208182587955.correct : P5803763208182587955.Spec := by
  intro n
  simp only [A100319, Nat.add_sub_cancel]

end A100319

/-! ## A100319.P12019961535207711173

`A256387(n+1)+3`
-/

namespace A100319.P12019961535207711173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256387 (n + 1) + 3

end

end A100319.P12019961535207711173

namespace A100319

/-- `A256387(n+1)+3` -/
def P12019961535207711173.Spec : Prop :=
  ∀ n, P12019961535207711173.a n = A100319 (n + 1)

theorem P12019961535207711173.correct : P12019961535207711173.Spec := by
  intro n
  simp only [A100319, Nat.add_sub_cancel, A100319.P12019961535207711173.a, A100319.P5803763208182587955.a, A167692, A167692.P14273374061267607574.f1, A167692.P14273374061267607574.a, A256387, A256387.P2495670137866599394.a, A292438, A292438.P17678663792653604288.a, A323162, A323162.P4199434762193306250.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100319

/-! ## A100319.P5508365151590771588

`2*lt[2, A166597(2*n)]`
-/

namespace A100319.P5508365151590771588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A100319.P5508365151590771588

namespace A100319

/-- `2*lt[2, A166597(2*n)]` -/
def P5508365151590771588.Spec : Prop :=
  ∀ n, (P5508365151590771588.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P14062697484509687670

`lt[A305897(3*(n+1)), n]`
-/

namespace A100319.P14062697484509687670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A100319.P14062697484509687670

namespace A100319

/-- `lt[A305897(3*(n+1)), n]` -/
def P14062697484509687670.Spec : Prop :=
  ∀ n, (P14062697484509687670.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P8672239138170446813

`2*comp[A049563(n+1)-1]`
-/

namespace A100319.P8672239138170446813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049563 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A100319.P8672239138170446813

namespace A100319

/-- `2*comp[A049563(n+1)-1]` -/
def P8672239138170446813.Spec : Prop :=
  ∀ n, (P8672239138170446813.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P1711391566128488193

`2*(comp[A243811(n+1)]+2)`
-/

namespace A100319.P1711391566128488193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A100319.P1711391566128488193

namespace A100319

/-- `2*(comp[A243811(n+1)]+2)` -/
def P1711391566128488193.Spec : Prop :=
  ∀ n, (P1711391566128488193.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P11842166600266416862

`2*lt[2, A356165(2*n+1)]`
-/

namespace A100319.P11842166600266416862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356165 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A100319.P11842166600266416862

namespace A100319

/-- `2*lt[2, A356165(2*n+1)]` -/
def P11842166600266416862.Spec : Prop :=
  ∀ n, (P11842166600266416862.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P1640988753594542450

`lt[3, and(n*A292438(n), -n)+2]`
-/

namespace A100319.P1640988753594542450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * A292438 n) (-(n : ℤ)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A100319.P1640988753594542450

namespace A100319

/-- `lt[3, and(n*A292438(n), -n)+2]` -/
def P1640988753594542450.Spec : Prop :=
  ∀ n, (P1640988753594542450.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P4636539772787604086

`ceil(sqrt(A123754(n+2)))`
-/

namespace A100319.P4636539772787604086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A123754 (n + 2) : ℝ)⌉

end

end A100319.P4636539772787604086

namespace A100319

/-- `ceil(sqrt(A123754(n+2)))` -/
def P4636539772787604086.Spec : Prop :=
  ∀ n, P4636539772787604086.a n = A100319 (n + 1)

end A100319

/-! ## A100319.P7465174092570220089

`Δ[2*∑[comp[A168497(n+1)]]]`
-/

namespace A100319.P7465174092570220089
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100319.P7465174092570220089

namespace A100319

/-- `Δ[2*∑[comp[A168497(n+1)]]]` -/
def P7465174092570220089.Spec : Prop :=
  ∀ n, P7465174092570220089.a n = A100319 (n + 1)

end A100319

/-! ## A100319.P15122535742227202086

`filter[A020744(n), A292438(#)]`
-/

namespace A100319.P15122535742227202086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A100319.P15122535742227202086

namespace A100319

/-- `filter[A020744(n), A292438(#)]` -/
def P15122535742227202086.Spec : Prop :=
  ∀ n, P15122535742227202086.a n = A100319 (n + 1)

end A100319

/-! ## A100319.P9523232123823482142

`filter[A020739(n), A292438(#)]`
-/

namespace A100319.P9523232123823482142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A100319.P9523232123823482142

namespace A100319

/-- `filter[A020739(n), A292438(#)]` -/
def P9523232123823482142.Spec : Prop :=
  ∀ n, P9523232123823482142.a n = A100319 (n + 1)

end A100319

/-! ## A100319.P12603091586457549030

`eq[A019426(n), A292438(n)]`
-/

namespace A100319.P12603091586457549030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100319.P12603091586457549030

namespace A100319

/-- `eq[A019426(n), A292438(n)]` -/
def P12603091586457549030.Spec : Prop :=
  ∀ n, (P12603091586457549030.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P8798552139548623268

`eq[A019427(n), A292438(n)]`
-/

namespace A100319.P8798552139548623268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100319.P8798552139548623268

namespace A100319

/-- `eq[A019427(n), A292438(n)]` -/
def P8798552139548623268.Spec : Prop :=
  ∀ n, (P8798552139548623268.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P10259379206425966225

`eq[A019428(n), A292438(n)]`
-/

namespace A100319.P10259379206425966225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100319.P10259379206425966225

namespace A100319

/-- `eq[A019428(n), A292438(n)]` -/
def P10259379206425966225.Spec : Prop :=
  ∀ n, (P10259379206425966225.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P16006780901601704272

`eq[A019429(n), A292438(n)]`
-/

namespace A100319.P16006780901601704272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100319.P16006780901601704272

namespace A100319

/-- `eq[A019429(n), A292438(n)]` -/
def P16006780901601704272.Spec : Prop :=
  ∀ n, (P16006780901601704272.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P6577300953822304057

`eq[A019430(n), A292438(n)]`
-/

namespace A100319.P6577300953822304057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100319.P6577300953822304057

namespace A100319

/-- `eq[A019430(n), A292438(n)]` -/
def P6577300953822304057.Spec : Prop :=
  ∀ n, (P6577300953822304057.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P13535039525384844107

`eq[A019431(n), A292438(n)]`
-/

namespace A100319.P13535039525384844107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100319.P13535039525384844107

namespace A100319

/-- `eq[A019431(n), A292438(n)]` -/
def P13535039525384844107.Spec : Prop :=
  ∀ n, (P13535039525384844107.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P15446511466080086046

`eq[A019432(n), A292438(n)]`
-/

namespace A100319.P15446511466080086046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100319.P15446511466080086046

namespace A100319

/-- `eq[A019432(n), A292438(n)]` -/
def P15446511466080086046.Spec : Prop :=
  ∀ n, (P15446511466080086046.a n : ℤ) = A100319 (n + 1)

end A100319

/-! ## A100319.P7661438777428996316

`eq[A019433(n), A292438(n)]`
-/

namespace A100319.P7661438777428996316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100319.P7661438777428996316

namespace A100319

/-- `eq[A019433(n), A292438(n)]` -/
def P7661438777428996316.Spec : Prop :=
  ∀ n, (P7661438777428996316.a n : ℤ) = A100319 (n + 1)

end A100319

/-!
# A100320: A Catalan transform of (1 + 2*x)/(1 - 2*x).

The programs for A100320, the canonical program `A100320.P3203221508681432936` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100320 has offset 0).

The definition of A100320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100320.P3203221508681432936

`2*(2*n-1)*a(n-1)/n` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100320

/-- `2*(2*n-1)*a(n-1)/n` -/
def P3203221508681432936.Spec : Prop :=
  ∀ n, P3203221508681432936.a n = (A100320 n : ℚ)

end A100320

/-! ## A100320.P17523010203599190766

`(4-2/n)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A100320.P17523010203599190766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A100320.P17523010203599190766

namespace A100320

/-- `(4-2/n)*a(n-1)` -/
def P17523010203599190766.Spec : Prop :=
  ∀ n, P17523010203599190766.a n = (A100320 n : ℚ)

end A100320

/-! ## A100320.P11432162424558210713

`2*(2-n^(-1))*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A100320.P11432162424558210713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1))

end

end A100320.P11432162424558210713

namespace A100320

/-- `2*(2-n^(-1))*a(n-1)` -/
def P11432162424558210713.Spec : Prop :=
  ∀ n, P11432162424558210713.a n = (A100320 n : ℚ)

end A100320

/-! ## A100320.P6955665675344615913

`record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A100320.P6955665675344615913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100320.P6955665675344615913

namespace A100320

/-- `record[a(n-1)/(floor(n/2)/n-1)]` -/
def P6955665675344615913.Spec : Prop :=
  ∀ n, P6955665675344615913.a n = (A100320 n : ℚ)

end A100320

/-! ## A100320.P8609732108692591910

`lcm(2, A146534(n))/2`
-/

namespace A100320.P8609732108692591910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A146534 n) : ℚ) / 2

end

end A100320.P8609732108692591910

namespace A100320

/-- `lcm(2, A146534(n))/2` -/
def P8609732108692591910.Spec : Prop :=
  ∀ n, P8609732108692591910.a n = (A100320 n : ℚ)

end A100320

/-! ## A100320.P17189675203583329215

`(n+1)*A068875(n)`
-/

namespace A100320.P17189675203583329215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A068875 n

end

end A100320.P17189675203583329215

namespace A100320

/-- `(n+1)*A068875(n)` -/
def P17189675203583329215.Spec : Prop :=
  ∀ n, P17189675203583329215.a n = A100320 n

end A100320

/-! ## A100320.P10708005342313852550

`ceil(cosh(sin(n)))*A000984(n)`
-/

namespace A100320.P10708005342313852550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A000984 n

end

end A100320.P10708005342313852550

namespace A100320

/-- `ceil(cosh(sin(n)))*A000984(n)` -/
def P10708005342313852550.Spec : Prop :=
  ∀ n, P10708005342313852550.a n = A100320 n

end A100320

/-! ## A100320.P5580011366321902536

`(n+1)*A329688(3*n)`
-/

namespace A100320.P5580011366321902536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A329688 (3 * n)

end

end A100320.P5580011366321902536

namespace A100320

/-- `(n+1)*A329688(3*n)` -/
def P5580011366321902536.Spec : Prop :=
  ∀ n, P5580011366321902536.a n = A100320 n

end A100320

/-! ## A100320.P3467124822779869325

`A063886(2*n+1)-C(2, n+2)`
-/

namespace A100320.P3467124822779869325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A100320.P3467124822779869325

namespace A100320

/-- `A063886(2*n+1)-C(2, n+2)` -/
def P3467124822779869325.Spec : Prop :=
  ∀ n, P3467124822779869325.a n = A100320 n

end A100320

/-! ## A100320.P11963979366682489748

`2*(n+1)*A000108(n)-floor(acot(n))`
-/

namespace A100320.P11963979366682489748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A000108 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A100320.P11963979366682489748

namespace A100320

/-- `2*(n+1)*A000108(n)-floor(acot(n))` -/
def P11963979366682489748.Spec : Prop :=
  ∀ n, P11963979366682489748.a n = A100320 n

end A100320

/-! ## A100320.P12055152748990404388

`4*(a(n-1)-A000108(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A100320.P12055152748990404388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (a (n - 1) - A000108 (n - 1))

end

end A100320.P12055152748990404388

namespace A100320

/-- `4*(a(n-1)-A000108(n-1))` -/
def P12055152748990404388.Spec : Prop :=
  ∀ n, P12055152748990404388.a n = A100320 n

end A100320

/-! ## A100320.P16491229116370321982

`A047073(A130773(n))`
-/

namespace A100320.P16491229116370321982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047073 (A130773 n).toNat

end

end A100320.P16491229116370321982

namespace A100320

/-- `A047073(A130773(n))` -/
def P16491229116370321982.Spec : Prop :=
  ∀ n, P16491229116370321982.a n = A100320 n

end A100320

/-! ## A100320.P6309055884452983465

`A182027(A163300(n+1))`
-/

namespace A100320.P6309055884452983465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A163300 (n + 1)).toNat

end

end A100320.P6309055884452983465

namespace A100320

/-- `A182027(A163300(n+1))` -/
def P6309055884452983465.Spec : Prop :=
  ∀ n, P6309055884452983465.a n = A100320 n

end A100320

/-! ## A100320.P17717845533287430526

`A063886(A103517(n)-1)`
-/

namespace A100320.P17717845533287430526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (A103517 n - 1).toNat

end

end A100320.P17717845533287430526

namespace A100320

/-- `A063886(A103517(n)-1)` -/
def P17717845533287430526.Spec : Prop :=
  ∀ n, P17717845533287430526.a n = A100320 n

end A100320

/-! ## A100320.P11297117345677289788

`A141351(n)+A010763(n)`
-/

namespace A100320.P11297117345677289788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n + A010763 n

end

end A100320.P11297117345677289788

namespace A100320

/-- `A141351(n)+A010763(n)` -/
def P11297117345677289788.Spec : Prop :=
  ∀ n, P11297117345677289788.a n = A100320 n

end A100320

/-! ## A100320.P2075242013766789925

`A134760(n)+A057427(n)`
-/

namespace A100320.P2075242013766789925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 n + A057427 n

end

end A100320.P2075242013766789925

namespace A100320

/-- `A134760(n)+A057427(n)` -/
def P2075242013766789925.Spec : Prop :=
  ∀ n, P2075242013766789925.a n = A100320 n

end A100320

/-! ## A100320.P17417055764490953162

`A162551(n)+A068875(n)`
-/

namespace A100320.P17417055764490953162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A068875 n

end

end A100320.P17417055764490953162

namespace A100320

/-- `A162551(n)+A068875(n)` -/
def P17417055764490953162.Spec : Prop :=
  ∀ n, P17417055764490953162.a n = A100320 n

end A100320

/-! ## A100320.P14056524798448433928

`A028329(n)-A000007(n)`
-/

namespace A100320.P14056524798448433928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A000007 n

end

end A100320.P14056524798448433928

namespace A100320

/-- `A028329(n)-A000007(n)` -/
def P14056524798448433928.Spec : Prop :=
  ∀ n, P14056524798448433928.a n = A100320 n

end A100320

/-! ## A100320.P16958494282879013842

`A000108(n)*A103517(n)`
-/

namespace A100320.P16958494282879013842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A103517 n

end

end A100320.P16958494282879013842

namespace A100320

/-- `A000108(n)*A103517(n)` -/
def P16958494282879013842.Spec : Prop :=
  ∀ n, P16958494282879013842.a n = A100320 n

end A100320

/-!
# A100321: The trinomial transform (A027907) gives powers of 2, while the trinomial transform of this sequence shift one place left gives powers of 3.

The programs for A100321, the canonical program `A100321.P14654763514196518351` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100321 has offset 0).

The definition of A100321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100321.P424676433141210105

`ogf((1+3x-3x^3)/(1+2x-2x^2-3x^3+2x^4))`
-/

namespace A100321.P424676433141210105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 0, -3] [1, 2, -2, -3, 2] n

end

end A100321.P424676433141210105

namespace A100321

/-- `ogf((1+3x-3x^3)/(1+2x-2x^2-3x^3+2x^4))` -/
def P424676433141210105.Spec : Prop :=
  ∀ n, P424676433141210105.a n = A100321 n

end A100321

/-! ## A100321.P14654763514196518351

`A119282(n)+A084247(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100321

/-- `A119282(n)+A084247(n)` -/
def P14654763514196518351.Spec : Prop :=
  ∀ n, P14654763514196518351.a n = A100321 n

theorem P14654763514196518351.correct : P14654763514196518351.Spec := by
  intro n
  simp only [A100321]

end A100321

/-! ## A100321.P9935906418803360277

`A119282(n)+∑[A123344(n)]`
-/

namespace A100321.P9935906418803360277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100321.P9935906418803360277

namespace A100321

/-- `A119282(n)+∑[A123344(n)]` -/
def P9935906418803360277.Spec : Prop :=
  ∀ n, P9935906418803360277.a n = A100321 n

end A100321

/-! ## A100321.P6553511329339551339

`(A212804(n)-A001045(n))*A033999(n)`
-/

namespace A100321.P6553511329339551339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n - A001045 n) * A033999 n

end

end A100321.P6553511329339551339

namespace A100321

/-- `(A212804(n)-A001045(n))*A033999(n)` -/
def P6553511329339551339.Spec : Prop :=
  ∀ n, P6553511329339551339.a n = A100321 n

end A100321

/-! ## A100321.P17202302993750873811

`A136531(A000217(n))+1-A151575(n)`
-/

namespace A100321.P17202302993750873811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136531 (A000217 n).toNat + (1 - A151575 n)

end

end A100321.P17202302993750873811

namespace A100321

/-- `A136531(A000217(n))+1-A151575(n)` -/
def P17202302993750873811.Spec : Prop :=
  ∀ n, P17202302993750873811.a n = A100321 n

end A100321

/-!
# A100324: Square array, read by antidiagonals, where rows are successive self-convolutions of the top row, which equals A003169 shifted one place right.

The programs for A100324, there is no canonical definition to state claims against.
-/

/-! ## A100324.P8156703455305892670

`A123731(A244490(n))`
-/

namespace A100324.P8156703455305892670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A244490 n).toNat

end

end A100324.P8156703455305892670

/-! ## A100324.P8223726081204383087

`A263484(n+1)+A059123(A283666(n+4))`
-/

namespace A100324.P8223726081204383087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (n + 1) + A059123 (A283666 (n + 4)).toNat

end

end A100324.P8223726081204383087

/-!
# A100325: Antidiagonal sums of square array A100324, which lists the self-convolutions of SHIFT(A003169).

The programs for A100325, there is no canonical definition to state claims against.
-/

/-! ## A100325.P18351771342318273770

`∑[A264749(record[A322504(n)])]`
-/

namespace A100325.P18351771342318273770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100325.P18351771342318273770

/-! ## A100325.P17313638792605881581

`∑[A264749(A322504(2*n))]`
-/

namespace A100325.P17313638792605881581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A322504 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100325.P17313638792605881581

/-!
# A100327: Row sums of triangle A100326, in which row n equals the inverse binomial of column n of square array A100324.

The programs for A100327, there is no canonical definition to state claims against.
-/

/-! ## A100327.P831044294801839704

`A007165(Δ[n²])`
-/

namespace A100327.P831044294801839704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007165 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100327.P831044294801839704

/-! ## A100327.P17009823557365828547

`(2-A000007(n))*A003168(n)`
-/

namespace A100327.P17009823557365828547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A003168 n

end

end A100327.P17009823557365828547

/-! ## A100327.P9102981960515115540

`gcd(2, A000079(n))*A003168(n)`
-/

namespace A100327.P9102981960515115540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000079 n) : ℤ) * A003168 n

end

end A100327.P9102981960515115540

/-! ## A100327.P8171781132648713260

`A003169(n+1)-A294728(2*(n+1))`
-/

namespace A100327.P8171781132648713260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003169 (n + 1) - A294728 (2 * (n + 1))

end

end A100327.P8171781132648713260

/-! ## A100327.P1823407037453004987

`A007165(2*(n+1))-A294728(2*(n+1))`
-/

namespace A100327.P1823407037453004987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007165 (2 * (n + 1)) - A294728 (2 * (n + 1))

end

end A100327.P1823407037453004987

/-! ## A100327.P14776601475010593509

`A003168(n)*A060632(A001316(n))`
-/

namespace A100327.P14776601475010593509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003168 n * A060632 (A001316 n).toNat

end

end A100327.P14776601475010593509

/-! ## A100327.P11008326924330268877

`A003168(n)*A020639(A103517(n))`
-/

namespace A100327.P11008326924330268877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003168 n * A020639 (A103517 n).toNat

end

end A100327.P11008326924330268877

/-! ## A100327.P13484555608116157448

`A000045(p?[A047789(n)])*A003168(n)`
-/

namespace A100327.P13484555608116157448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A003168 n

end

end A100327.P13484555608116157448

/-! ## A100327.P17478263306804663436

`A003168(n)*A060632(A060632(n+1))`
-/

namespace A100327.P17478263306804663436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003168 n * A060632 (A060632 (n + 1)).toNat

end

end A100327.P17478263306804663436

/-! ## A100327.P15476650794304163599

`A003168(n)/A001003(n)*A006318(n)`
-/

namespace A100327.P15476650794304163599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003168 n : ℚ) / (A001003 n : ℚ) * (A006318 n : ℚ)

end

end A100327.P15476650794304163599

/-! ## A100327.P1270975522693745113

`A011782(n+1)/A011782(n)*A003168(n)`
-/

namespace A100327.P1270975522693745113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A003168 n : ℚ)

end

end A100327.P1270975522693745113

/-! ## A100327.P13954095293810833342

`A155069(n+1)/A001003(n)*A003168(n)`
-/

namespace A100327.P13954095293810833342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155069 (n + 1) : ℚ) / (A001003 n : ℚ) * (A003168 n : ℚ)

end

end A100327.P13954095293810833342

/-! ## A100327.P8737398951521530944

`A007165(2*n+1)+A007165(2*(n+1))*A007814(2*n+1)`
-/

namespace A100327.P8737398951521530944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007165 (2 * n + 1) + A007165 (2 * (n + 1)) * A007814 (2 * n + 1)

end

end A100327.P8737398951521530944

/-! ## A100327.P260630044004859990

`2*A003169(n+1)-A100328(n)`
-/

namespace A100327.P260630044004859990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003169 (n + 1) - A100328 n

end

end A100327.P260630044004859990

/-! ## A100327.P6151265300213966620

`gcd(n*A007165(2*n+1), A007165(2*n+1))`
-/

namespace A100327.P6151265300213966620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A007165 (2 * n + 1)) (A007165 (2 * n + 1))

end

end A100327.P6151265300213966620

/-! ## A100327.P12995602980608398837

`A003168(n)+A003168(n)%A114496(n)`
-/

namespace A100327.P12995602980608398837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003168 n + Int.tmod (A003168 n) (A114496 n)

end

end A100327.P12995602980608398837

/-!
# A100328: Column 1 of triangle A100326, in which row n equals the inverse binomial of column n of square array A100324, with leading zero omitted.

The programs for A100328, there is no canonical definition to state claims against.
-/

/-! ## A100328.P280096674559218159

`A100326(∑[n+1]+1)`
-/

namespace A100328.P280096674559218159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100328.P280096674559218159

/-! ## A100328.P2719961371216879601

`record[A100326(A080036(n)-1)]`
-/

namespace A100328.P2719961371216879601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A080036 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100328.P2719961371216879601

/-! ## A100328.P18308944444381593663

`record[A100326(n*A326822(n))]`
-/

namespace A100328.P18308944444381593663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 ((n : ℤ) * A326822 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100328.P18308944444381593663

/-! ## A100328.P7990058723777578709

`record[A100326(n)/A114489(n)]`
-/

namespace A100328.P7990058723777578709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100326 n : ℚ) / (A114489 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100328.P7990058723777578709

/-! ## A100328.P1888046808050751994

`record[A100326(A053616(n+1)+n)]`
-/

namespace A100328.P1888046808050751994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A053616 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100328.P1888046808050751994

/-! ## A100328.P1375139919706199048

`record[A100326(A326822(n+1)+n)]`
-/

namespace A100328.P1375139919706199048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A326822 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100328.P1375139919706199048

/-! ## A100328.P5235734979632883544

`2*A003169(n+1)-A100327(n)`
-/

namespace A100328.P5235734979632883544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003169 (n + 1) - A100327 n

end

end A100328.P5235734979632883544

/-! ## A100328.P5511486297890996946

`lcm((-1)^n, A100326(A134869(n+1)))`
-/

namespace A100328.P5511486297890996946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A100326 (A134869 (n + 1)).toNat)

end

end A100328.P5511486297890996946

/-! ## A100328.P13383368205778280236

`A294728(2*(n+1))+A003169(n+1)`
-/

namespace A100328.P13383368205778280236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294728 (2 * (n + 1)) + A003169 (n + 1)

end

end A100328.P13383368205778280236

/-! ## A100328.P15144266143453847334

`A294728(2*(n+1))+A007165(2*(n+1))`
-/

namespace A100328.P15144266143453847334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294728 (2 * (n + 1)) + A007165 (2 * (n + 1))

end

end A100328.P15144266143453847334

/-! ## A100328.P404230154449320654

`2*A007165(2*(n+1))-A007165(2*n+1)`
-/

namespace A100328.P404230154449320654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007165 (2 * (n + 1)) - A007165 (2 * n + 1)

end

end A100328.P404230154449320654

/-! ## A100328.P5957628745671178710

`record[A100326(A066182(A080036(n)))]`
-/

namespace A100328.P5957628745671178710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100326 (A066182 (A080036 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100328.P5957628745671178710

/-!
# A100329: a(n) = -a(n-1) -a(n-2) -a(n-3) +a(n-4), a(0)=0, a(1)=1, a(2)=-1, a(3)=0.

The programs for A100329, the canonical program `A100329.P8080635101747500147` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100329 has offset 0).

The definition of A100329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)-a(n-2)-a(n-3)+a(n-4)` (program `A100329.P8080635101747500147`, by `A100329.P8080635101747500147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100329.P8080635101747500147

`-a(n-1)-a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100329

/-- `-a(n-1)-a(n-2)-a(n-3)+a(n-4)` -/
def P8080635101747500147.Spec : Prop :=
  ∀ n, P8080635101747500147.a n = A100329 n

theorem P8080635101747500147.correct : P8080635101747500147.Spec := by
  intro n
  simp only [A100329]

end A100329

/-! ## A100329.P4568073137753946783

`ogf(x/(1+x+x^2+x^3-x^4))`
-/

namespace A100329.P4568073137753946783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 1, 1, 1, -1] n

end

end A100329.P4568073137753946783

namespace A100329

/-- `ogf(x/(1+x+x^2+x^3-x^4))` -/
def P4568073137753946783.Spec : Prop :=
  ∀ n, P4568073137753946783.a n = A100329 n

end A100329

/-! ## A100329.P16343725380057902544

`2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=0, a(4)=0`
-/

namespace A100329.P16343725380057902544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 0, 0] fun n a =>
  2 * a (n - 4) - a (n - 5)

end

end A100329.P16343725380057902544

namespace A100329

/-- `2*a(n-4)-a(n-5)` -/
def P16343725380057902544.Spec : Prop :=
  ∀ n, P16343725380057902544.a n = A100329 n

end A100329

/-! ## A100329.P5430284975780306182

`a(n-4)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=0, a(4)=0`
-/

namespace A100329.P5430284975780306182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 0, 0] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 5))

end

end A100329.P5430284975780306182

namespace A100329

/-- `a(n-4)+a(n-4)-a(n-5)` -/
def P5430284975780306182.Spec : Prop :=
  ∀ n, P5430284975780306182.a n = A100329 n

end A100329

/-!
# A100330: Positive integers k such that k^6 + k^5 + k^4 + k^3 + k^2 + k + 1 is prime.

The programs for A100330, there is no canonical definition to state claims against.
-/

/-! ## A100330.P6174460707439720776

`floor(root(A088550(n+1), 6))`
-/

namespace A100330.P6174460707439720776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088550 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A100330.P6174460707439720776

/-! ## A100330.P6037065783265393459

`A000027(round(root(A088550(n+1), 6)))`
-/

namespace A100330.P6037065783265393459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A088550 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))).toNat

end

end A100330.P6037065783265393459

/-! ## A100330.P1225773419242599018

`∪[A163268(n+1), A288939(n+1)]`
-/

namespace A100330.P1225773419242599018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100330.P1225773419242599018

/-! ## A100330.P2456918070546332124

`A057077(n)²*round(root(A088550(n+1), 6))`
-/

namespace A100330.P2456918070546332124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * SequenceMachineLib.roundAway ((A088550 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))

end

end A100330.P2456918070546332124

/-! ## A100330.P12375562125076675263

`2*n+round(root(A088550(n+1), 6))-A005843(n)`
-/

namespace A100330.P12375562125076675263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (SequenceMachineLib.roundAway ((A088550 (n + 1) : ℝ) ^ (1 / (6 : ℝ))) - A005843 n)

end

end A100330.P12375562125076675263

/-! ## A100330.P16749425848135636923

`A005843(round(root(A088550(n+1), 6)))/2`
-/

namespace A100330.P16749425848135636923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A088550 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))).toNat : ℚ) / 2

end

end A100330.P16749425848135636923

/-! ## A100330.P11364553637308846474

`record[floor(root(A256146(n+1), 6))]`
-/

namespace A100330.P11364553637308846474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256146 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100330.P11364553637308846474

/-!
# A100334: An inverse Catalan transform of Fibonacci(2n).

The programs for A100334, the canonical program `A100334.P13778999279246642015` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100334 has offset 0).

The definition of A100334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100334.P13778999279246642015

`3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100334

/-- `3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` -/
def P13778999279246642015.Spec : Prop :=
  ∀ n, P13778999279246642015.a n = A100334 n

theorem P13778999279246642015.correct : P13778999279246642015.Spec := by
  intro n
  simp only [A100334]

end A100334

/-! ## A100334.P12959278986977336911

`ogf((x-x^2)/(1-3x+4x^2-2x^3+x^4))`
-/

namespace A100334.P12959278986977336911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -3, 4, -2, 1] n

end

end A100334.P12959278986977336911

namespace A100334

/-- `ogf((x-x^2)/(1-3x+4x^2-2x^3+x^4))` -/
def P12959278986977336911.Spec : Prop :=
  ∀ n, P12959278986977336911.a n = A100334 n

end A100334

/-! ## A100334.P11457851530624497367

`∑[A103311(n)]`
-/

namespace A100334.P11457851530624497367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100334.P11457851530624497367

namespace A100334

/-- `∑[A103311(n)]` -/
def P11457851530624497367.Spec : Prop :=
  ∀ n, P11457851530624497367.a n = A100334 n

end A100334

/-! ## A100334.P13907000865244918140

`Δ[A138112(n+1)]`
-/

namespace A100334.P13907000865244918140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100334.P13907000865244918140

namespace A100334

/-- `Δ[A138112(n+1)]` -/
def P13907000865244918140.Spec : Prop :=
  ∀ n, P13907000865244918140.a n = A100334 n

end A100334

/-! ## A100334.P11415752347265589651

`A138112(n+2)-A138112(n+1)`
-/

namespace A100334.P11415752347265589651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 (n + 2) - A138112 (n + 1)

end

end A100334.P11415752347265589651

namespace A100334

/-- `A138112(n+2)-A138112(n+1)` -/
def P11415752347265589651.Spec : Prop :=
  ∀ n, P11415752347265589651.a n = A100334 n

end A100334

/-! ## A100334.P11738344438626498168

`A138112(n+3)-A138003(n)`
-/

namespace A100334.P11738344438626498168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 (n + 3) - A138003 n

end

end A100334.P11738344438626498168

namespace A100334

/-- `A138112(n+3)-A138003(n)` -/
def P11738344438626498168.Spec : Prop :=
  ∀ n, P11738344438626498168.a n = A100334 n

end A100334

/-! ## A100334.P6087832755920155044

`A138003(n)-A105371(n)-A138112(n)`
-/

namespace A100334.P6087832755920155044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138003 n - A105371 n - A138112 n

end

end A100334.P6087832755920155044

namespace A100334

/-- `A138003(n)-A105371(n)-A138112(n)` -/
def P6087832755920155044.Spec : Prop :=
  ∀ n, P6087832755920155044.a n = A100334 n

end A100334

/-! ## A100334.P9915137200016625917

`A105371(n+1)-A103311(n+2)`
-/

namespace A100334.P9915137200016625917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 (n + 1) - A103311 (n + 2)

end

end A100334.P9915137200016625917

namespace A100334

/-- `A105371(n+1)-A103311(n+2)` -/
def P9915137200016625917.Spec : Prop :=
  ∀ n, P9915137200016625917.a n = A100334 n

end A100334

/-! ## A100334.P4798152973624883522

`Δ[Δ[n-A105371(n)]]`
-/

namespace A100334.P4798152973624883522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105371 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100334.P4798152973624883522

namespace A100334

/-- `Δ[Δ[n-A105371(n)]]` -/
def P4798152973624883522.Spec : Prop :=
  ∀ n, P4798152973624883522.a n = A100334 n

end A100334

/-! ## A100334.P1861726184893360234

`A133476(n)-A139748(n)`
-/

namespace A100334.P1861726184893360234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - A139748 n

end

end A100334.P1861726184893360234

namespace A100334

/-- `A133476(n)-A139748(n)` -/
def P1861726184893360234.Spec : Prop :=
  ∀ n, P1861726184893360234.a n = A100334 n

end A100334

/-! ## A100334.P654035888440078116

`∑[A133476(n)-A139714(n)]`
-/

namespace A100334.P654035888440078116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - A139714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100334.P654035888440078116

namespace A100334

/-- `∑[A133476(n)-A139714(n)]` -/
def P654035888440078116.Spec : Prop :=
  ∀ n, P654035888440078116.a n = A100334 n

end A100334

/-! ## A100334.P3708577350028606528

`A138003(n)+A139761(n)-A139398(n)`
-/

namespace A100334.P3708577350028606528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138003 n + (A139761 n - A139398 n)

end

end A100334.P3708577350028606528

namespace A100334

/-- `A138003(n)+A139761(n)-A139398(n)` -/
def P3708577350028606528.Spec : Prop :=
  ∀ n, P3708577350028606528.a n = A100334 n

end A100334

/-! ## A100334.P6304729394956406123

`A133476(n)-Δ[A139761(n)]`
-/

namespace A100334.P6304729394956406123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - (f1 (n + 1) - f1 n)

end

end A100334.P6304729394956406123

namespace A100334

/-- `A133476(n)-Δ[A139761(n)]` -/
def P6304729394956406123.Spec : Prop :=
  ∀ n, P6304729394956406123.a n = A100334 n

end A100334

/-! ## A100334.P1321775496776377265

`Δ[A139714(n)]-A139748(n)`
-/

namespace A100334.P1321775496776377265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A139748 n

end

end A100334.P1321775496776377265

namespace A100334

/-- `Δ[A139714(n)]-A139748(n)` -/
def P1321775496776377265.Spec : Prop :=
  ∀ n, P1321775496776377265.a n = A100334 n

end A100334

/-! ## A100334.P1774491680332347247

`Δ[A139714(n)-A139761(n)]`
-/

namespace A100334.P1774491680332347247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n - A139761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100334.P1774491680332347247

namespace A100334

/-- `Δ[A139714(n)-A139761(n)]` -/
def P1774491680332347247.Spec : Prop :=
  ∀ n, P1774491680332347247.a n = A100334 n

end A100334

/-! ## A100334.P3217097259647999611

`A139714(n+1)-∑[A139714(n)]`
-/

namespace A100334.P3217097259647999611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100334.P3217097259647999611

namespace A100334

/-- `A139714(n+1)-∑[A139714(n)]` -/
def P3217097259647999611.Spec : Prop :=
  ∀ n, P3217097259647999611.a n = A100334 n

end A100334

/-! ## A100334.P11169345332549765834

`A139714(n+1)-A139748(n+1)`
-/

namespace A100334.P11169345332549765834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 (n + 1) - A139748 (n + 1)

end

end A100334.P11169345332549765834

namespace A100334

/-- `A139714(n+1)-A139748(n+1)` -/
def P11169345332549765834.Spec : Prop :=
  ∀ n, P11169345332549765834.a n = A100334 n

end A100334

/-! ## A100334.P10764555401097411965

`A103311(n)+Δ[A139748(n)]-A139748(n)`
-/

namespace A100334.P10764555401097411965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 n + (f1 (n + 1) - f1 n - A139748 n)

end

end A100334.P10764555401097411965

namespace A100334

/-- `A103311(n)+Δ[A139748(n)]-A139748(n)` -/
def P10764555401097411965.Spec : Prop :=
  ∀ n, P10764555401097411965.a n = A100334 n

end A100334

/-! ## A100334.P15996012938523794202

`A133476(n)+A139761(n)-A139761(n+1)`
-/

namespace A100334.P15996012938523794202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n + (A139761 n - A139761 (n + 1))

end

end A100334.P15996012938523794202

namespace A100334

/-- `A133476(n)+A139761(n)-A139761(n+1)` -/
def P15996012938523794202.Spec : Prop :=
  ∀ n, P15996012938523794202.a n = A100334 n

end A100334

/-! ## A100334.P14294135206845699382

`Δ[Δ[A139748(n)-A139398(n)]]`
-/

namespace A100334.P14294135206845699382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n - A139398 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100334.P14294135206845699382

namespace A100334

/-- `Δ[Δ[A139748(n)-A139398(n)]]` -/
def P14294135206845699382.Spec : Prop :=
  ∀ n, P14294135206845699382.a n = A100334 n

end A100334

/-!
# A100335: An inverse Catalan transform of J(2n).

The programs for A100335, the canonical program `A100335.P4873476801702266139` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100335 has offset 0).

The definition of A100335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100335.P4873476801702266139

`5*a(n-1)-9*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100335

/-- `5*a(n-1)-9*a(n-2)+8*a(n-3)-4*a(n-4)` -/
def P4873476801702266139.Spec : Prop :=
  ∀ n, P4873476801702266139.a n = A100335 n

theorem P4873476801702266139.correct : P4873476801702266139.Spec := by
  intro n
  simp only [A100335]

end A100335

/-! ## A100335.P261766355249192457

`1/3*((n+1)*2^n-A010892(n))`
-/

namespace A100335.P261766355249192457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (((n + 1) * 2 ^ n : ℤ) - A010892 n : ℚ)

end

end A100335.P261766355249192457

namespace A100335

/-- `1/3*((n+1)*2^n-A010892(n))` -/
def P261766355249192457.Spec : Prop :=
  ∀ n, P261766355249192457.a n = (A100335 n : ℚ)

end A100335

/-! ## A100335.P6139962386004777002

`round((n+1)*2^n/3)`
-/

namespace A100335.P6139962386004777002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((2 ^ n : ℚ) / 3))

end

end A100335.P6139962386004777002

namespace A100335

/-- `round((n+1)*2^n/3)` -/
def P6139962386004777002.Spec : Prop :=
  ∀ n, P6139962386004777002.a n = A100335 n

end A100335

/-! ## A100335.P789244548116858639

`A131708(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A100335.P789244548116858639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131708 n + 2 * a (n - 1)

end

end A100335.P789244548116858639

namespace A100335

/-- `A131708(n)+2*a(n-1)` -/
def P789244548116858639.Spec : Prop :=
  ∀ n, P789244548116858639.a n = A100335 n

end A100335

/-! ## A100335.P2244049020012144196

`A127985(n)-A153234(n)`
-/

namespace A100335.P2244049020012144196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 n - A153234 n

end

end A100335.P2244049020012144196

namespace A100335

/-- `A127985(n)-A153234(n)` -/
def P2244049020012144196.Spec : Prop :=
  ∀ n, P2244049020012144196.a n = A100335 n

end A100335

/-! ## A100335.P15796235826212788723

`A113405(n+1)+A045883(n)`
-/

namespace A100335.P15796235826212788723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 1) + A045883 n

end

end A100335.P15796235826212788723

namespace A100335

/-- `A113405(n+1)+A045883(n)` -/
def P15796235826212788723.Spec : Prop :=
  ∀ n, P15796235826212788723.a n = A100335 n

end A100335

/-! ## A100335.P4307516871526951012

`A093041(n+1)-A130781(n)`
-/

namespace A100335.P4307516871526951012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093041 (n + 1) - A130781 n

end

end A100335.P4307516871526951012

namespace A100335

/-- `A093041(n+1)-A130781(n)` -/
def P4307516871526951012.Spec : Prop :=
  ∀ n, P4307516871526951012.a n = A100335 n

end A100335

/-! ## A100335.P3763064183530844778

`A137221(n+1)+A024495(n+1)`
-/

namespace A100335.P3763064183530844778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137221 (n + 1) + A024495 (n + 1)

end

end A100335.P3763064183530844778

namespace A100335

/-- `A137221(n+1)+A024495(n+1)` -/
def P3763064183530844778.Spec : Prop :=
  ∀ n, P3763064183530844778.a n = A100335 n

end A100335

/-! ## A100335.P9978784885952972227

`A137221(n+1)+Δ[A024493(n+1)]`
-/

namespace A100335.P9978784885952972227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137221 (n + 1) + (f1 (n + 1) - f1 n)

end

end A100335.P9978784885952972227

namespace A100335

/-- `A137221(n+1)+Δ[A024493(n+1)]` -/
def P9978784885952972227.Spec : Prop :=
  ∀ n, P9978784885952972227.a n = A100335 n

end A100335

/-! ## A100335.P16782952732257478322

`A131708(n+1)+A137221(n+1)-A010892(n)`
-/

namespace A100335.P16782952732257478322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (n + 1) + (A137221 (n + 1) - A010892 n)

end

end A100335.P16782952732257478322

namespace A100335

/-- `A131708(n+1)+A137221(n+1)-A010892(n)` -/
def P16782952732257478322.Spec : Prop :=
  ∀ n, P16782952732257478322.a n = A100335 n

end A100335

/-! ## A100335.P14805499639843272140

`Δ[A137221(n+1)]`
-/

namespace A100335.P14805499639843272140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100335.P14805499639843272140

namespace A100335

/-- `Δ[A137221(n+1)]` -/
def P14805499639843272140.Spec : Prop :=
  ∀ n, P14805499639843272140.a n = A100335 n

end A100335

/-! ## A100335.P8326148392311536397

`A001787(n)-A137221(n)`
-/

namespace A100335.P8326148392311536397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A137221 n

end

end A100335.P8326148392311536397

namespace A100335

/-- `A001787(n)-A137221(n)` -/
def P8326148392311536397.Spec : Prop :=
  ∀ n, P8326148392311536397.a n = A100335 n

end A100335

/-! ## A100335.P7456327408888626659

`A139756(n+1)-A137221(n)`
-/

namespace A100335.P7456327408888626659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) - A137221 n

end

end A100335.P7456327408888626659

namespace A100335

/-- `A139756(n+1)-A137221(n)` -/
def P7456327408888626659.Spec : Prop :=
  ∀ n, P7456327408888626659.a n = A100335 n

end A100335

/-! ## A100335.P10376668953754962074

`A137221(n+2)-A137221(n+1)`
-/

namespace A100335.P10376668953754962074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137221 (n + 2) - A137221 (n + 1)

end

end A100335.P10376668953754962074

namespace A100335

/-- `A137221(n+2)-A137221(n+1)` -/
def P10376668953754962074.Spec : Prop :=
  ∀ n, P10376668953754962074.a n = A100335 n

end A100335

/-! ## A100335.P10522216163038674863

`ceil(A087323(n)/3)`
-/

namespace A100335.P10522216163038674863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087323 n : ℚ) / 3⌉

end

end A100335.P10522216163038674863

namespace A100335

/-- `ceil(A087323(n)/3)` -/
def P10522216163038674863.Spec : Prop :=
  ∀ n, P10522216163038674863.a n = A100335 n

end A100335

/-! ## A100335.P12474117183856901233

`floor(A005183(n+1)/3)`
-/

namespace A100335.P12474117183856901233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005183 (n + 1) : ℚ) / 3⌋

end

end A100335.P12474117183856901233

namespace A100335

/-- `floor(A005183(n+1)/3)` -/
def P12474117183856901233.Spec : Prop :=
  ∀ n, P12474117183856901233.a n = A100335 n

end A100335

/-! ## A100335.P5806013694044494694

`ceil((∑[A001792(n)]-1)/3)`
-/

namespace A100335.P5806013694044494694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 3⌉

end

end A100335.P5806013694044494694

namespace A100335

/-- `ceil((∑[A001792(n)]-1)/3)` -/
def P5806013694044494694.Spec : Prop :=
  ∀ n, P5806013694044494694.a n = A100335 n

end A100335

/-! ## A100335.P16901029001971258777

`ceil(((n+1)*A000225(n)+n)/3)`
-/

namespace A100335.P16901029001971258777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) * A000225 n + (n : ℤ) : ℚ) / 3⌉

end

end A100335.P16901029001971258777

namespace A100335

/-- `ceil(((n+1)*A000225(n)+n)/3)` -/
def P16901029001971258777.Spec : Prop :=
  ∀ n, P16901029001971258777.a n = A100335 n

end A100335

/-!
# A100336: Arshon's sequence with a different start: start from 2 and replace the letters in odd positions using 1 -> 123, 2 -> 231, 3 -> 312 and the letters in even positions using 1 -> 321, 2-> 132, 3 -> 213.

The programs for A100336, the canonical program `A100336.P854489641558138116` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100336 has offset 1).

The definition of A100336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100336.P1810605777954458578

`a(A219762(n+1))` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A100336.P1810605777954458578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  a (A219762 (n + 1)).toNat

end

end A100336.P1810605777954458578

namespace A100336

/-- `a(A219762(n+1))` -/
def P1810605777954458578.Spec : Prop :=
  ∀ n, (P1810605777954458578.a n : ℤ) = A100336 (n + 1)

end A100336

/-! ## A100336.P10862258395266843738

`A219762(3*n+2)+1`
-/

namespace A100336.P10862258395266843738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219762 (3 * n + 2) + 1

end

end A100336.P10862258395266843738

namespace A100336

/-- `A219762(3*n+2)+1` -/
def P10862258395266843738.Spec : Prop :=
  ∀ n, P10862258395266843738.a n = A100336 (n + 1)

end A100336

/-! ## A100336.P7901786444183100554

`ceil(abs(tan(A100337(n+1)+1)))`
-/

namespace A100336.P7901786444183100554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.tan (A100337 (n + 1) + 1 : ℝ)|⌉

end

end A100336.P7901786444183100554

namespace A100336

/-- `ceil(abs(tan(A100337(n+1)+1)))` -/
def P7901786444183100554.Spec : Prop :=
  ∀ n, P7901786444183100554.a n = A100336 (n + 1)

end A100336

/-! ## A100336.P854489641558138116

`A090193(A128173(n))+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100336

/-- `A090193(A128173(n))+1` -/
def P854489641558138116.Spec : Prop :=
  ∀ n, P854489641558138116.a n = A100336 (n + 1)

theorem P854489641558138116.correct : P854489641558138116.Spec := by
  intro n
  simp only [A100336, Nat.add_sub_cancel]

end A100336

/-! ## A100336.P2440439770046634542

`A100337(xor(n, xor(n, A100337(n+1))))`
-/

namespace A100336.P2440439770046634542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100337 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A100337 (n + 1)))).toNat

end

end A100336.P2440439770046634542

namespace A100336

/-- `A100337(xor(n, xor(n, A100337(n+1))))` -/
def P2440439770046634542.Spec : Prop :=
  ∀ n, P2440439770046634542.a n = A100336 (n + 1)

end A100336

/-! ## A100336.P8907226471318381552

`A100337(A100337(n+1)-A047762(2*(n+2)))`
-/

namespace A100336.P8907226471318381552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100337 (A100337 (n + 1) - A047762 (2 * (n + 2))).toNat

end

end A100336.P8907226471318381552

namespace A100336

/-- `A100337(A100337(n+1)-A047762(2*(n+2)))` -/
def P8907226471318381552.Spec : Prop :=
  ∀ n, P8907226471318381552.a n = A100336 (n + 1)

end A100336

/-!
# A100337: Arshon's sequence with a different start: start from 3 and replace the letters in odd positions using 1 -> 123, 2 -> 231, 3 -> 312 and the letters in even positions using 1 -> 321, 2-> 132, 3 -> 213.

The programs for A100337, the canonical program `A100337.P11188072152999393634` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100337 has offset 1).

The definition of A100337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100337.P3432537740947785004

`dr(gcd(12, A219762(n+1)))`
-/

namespace A100337.P3432537740947785004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd 12 (A219762 (n + 1)) : ℤ)

end

end A100337.P3432537740947785004

namespace A100337

/-- `dr(gcd(12, A219762(n+1)))` -/
def P3432537740947785004.Spec : Prop :=
  ∀ n, (P3432537740947785004.a n : ℤ) = A100337 (n + 1)

end A100337

/-! ## A100337.P8073125898020199497

`ceil(abs(tan(A100336(n+1))))`
-/

namespace A100337.P8073125898020199497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.tan (A100336 (n + 1) : ℝ)|⌉

end

end A100337.P8073125898020199497

namespace A100337

/-- `ceil(abs(tan(A100336(n+1))))` -/
def P8073125898020199497.Spec : Prop :=
  ∀ n, P8073125898020199497.a n = A100337 (n + 1)

end A100337

/-! ## A100337.P12614271934049188728

`A219762(9*n+3)+1`
-/

namespace A100337.P12614271934049188728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219762 (9 * n + 3) + 1

end

end A100337.P12614271934049188728

namespace A100337

/-- `A219762(9*n+3)+1` -/
def P12614271934049188728.Spec : Prop :=
  ∀ n, P12614271934049188728.a n = A100337 (n + 1)

end A100337

/-! ## A100337.P11188072152999393634

`A100336(xor(n, xor(n, A100336(n+1))))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100337

/-- `A100336(xor(n, xor(n, A100336(n+1))))` -/
def P11188072152999393634.Spec : Prop :=
  ∀ n, P11188072152999393634.a n = A100337 (n + 1)

theorem P11188072152999393634.correct : P11188072152999393634.Spec := by
  intro n
  simp only [A100337, Nat.add_sub_cancel]

end A100337

/-! ## A100337.P18201250814045297407

`A079399(∑[A241418(n)]-A241418(n))`
-/

namespace A100337.P18201250814045297407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (∑ j ∈ Finset.range (n + 1), f1 j - A241418 n).toNat

end

end A100337.P18201250814045297407

namespace A100337

/-- `A079399(∑[A241418(n)]-A241418(n))` -/
def P18201250814045297407.Spec : Prop :=
  ∀ n, P18201250814045297407.a n = A100337 (n + 1)

end A100337

/-! ## A100337.P6393378065427616021

`A000032(2-(∑[A241418(n)]-A241418(n)))`
-/

namespace A100337.P6393378065427616021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 - (∑ j ∈ Finset.range (n + 1), f1 j - A241418 n)).toNat

end

end A100337.P6393378065427616021

namespace A100337

/-- `A000032(2-(∑[A241418(n)]-A241418(n)))` -/
def P6393378065427616021.Spec : Prop :=
  ∀ n, P6393378065427616021.a n = A100337 (n + 1)

end A100337

/-! ## A100337.P7846710763748970135

`A067004(5-(∑[A241418(n)]-A241418(n)))`
-/

namespace A100337.P7846710763748970135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (5 - (∑ j ∈ Finset.range (n + 1), f1 j - A241418 n)).toNat

end

end A100337.P7846710763748970135

namespace A100337

/-- `A067004(5-(∑[A241418(n)]-A241418(n)))` -/
def P7846710763748970135.Spec : Prop :=
  ∀ n, P7846710763748970135.a n = A100337 (n + 1)

end A100337

/-! ## A100337.P17700240358197203816

`A001222(8-(∑[A241418(n)]-A241418(n)))`
-/

namespace A100337.P17700240358197203816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 - (∑ j ∈ Finset.range (n + 1), f1 j - A241418 n)).toNat

end

end A100337.P17700240358197203816

namespace A100337

/-- `A001222(8-(∑[A241418(n)]-A241418(n)))` -/
def P17700240358197203816.Spec : Prop :=
  ∀ n, P17700240358197203816.a n = A100337 (n + 1)

end A100337

/-! ## A100337.P8687316943706925136

`A060502((∑[A241418(n)]-A241418(n)+9)²)`
-/

namespace A100337.P8687316943706925136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 ((∑ j ∈ Finset.range (n + 1), f1 j - A241418 n + 9) ^ 2).toNat

end

end A100337.P8687316943706925136

namespace A100337

/-- `A060502((∑[A241418(n)]-A241418(n)+9)²)` -/
def P8687316943706925136.Spec : Prop :=
  ∀ n, P8687316943706925136.a n = A100337 (n + 1)

end A100337

/-!
# A100340: Numerators of the convergents in the continued fraction expansion for the constant given by A100338, where the partial quotients equal A006519 (greatest power of 2 dividing n).

The programs for A100340, the canonical program `A100340.P6090323841538418593` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100340 has offset 1).

The definition of A100340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100340.P6401734408958275181

`a(n-1)*2^val(n+1, 2)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A100340.P6401734408958275181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * 2 ^ SequenceMachineLib.valuation (n + 1) 2 + a (n - 2)

end

end A100340.P6401734408958275181

namespace A100340

/-- `a(n-1)*2^val(n+1, 2)+a(n-2)` -/
def P6401734408958275181.Spec : Prop :=
  ∀ n, (P6401734408958275181.a n : ℤ) = A100340 (n + 1)

end A100340

/-! ## A100340.P6090323841538418593

`a(n-1)*A006519(n+1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100340

/-- `a(n-1)*A006519(n+1)+a(n-2)` -/
def P6090323841538418593.Spec : Prop :=
  ∀ n, P6090323841538418593.a n = A100340 (n + 1)

theorem P6090323841538418593.correct : P6090323841538418593.Spec := by
  intro n
  simp only [A100340, Nat.add_sub_cancel]

end A100340

/-! ## A100340.P10578993756334333783

`a(n-2)+(or(n, n+1)-n)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A100340.P10578993756334333783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) * a (n - 1)

end

end A100340.P10578993756334333783

namespace A100340

/-- `a(n-2)+(or(n, n+1)-n)*a(n-1)` -/
def P10578993756334333783.Spec : Prop :=
  ∀ n, P10578993756334333783.a n = A100340 (n + 1)

end A100340

/-!
# A100341: Denominators of the convergents in the continued fraction expansion for the constant given by A100338, where the partial quotients equal A006519 (greatest power of 2 dividing n).

The programs for A100341, the canonical program `A100341.P14698015609869133761` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100341 has offset 1).

The definition of A100341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100341.P7358617159868722674

`a(n-1)*2^val(n+1, 2)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A100341.P7358617159868722674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * 2 ^ SequenceMachineLib.valuation (n + 1) 2 + a (n - 2)

end

end A100341.P7358617159868722674

namespace A100341

/-- `a(n-1)*2^val(n+1, 2)+a(n-2)` -/
def P7358617159868722674.Spec : Prop :=
  ∀ n, (P7358617159868722674.a n : ℤ) = A100341 (n + 1)

end A100341

/-! ## A100341.P14698015609869133761

`a(n-1)*A006519(n+1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100341

/-- `a(n-1)*A006519(n+1)+a(n-2)` -/
def P14698015609869133761.Spec : Prop :=
  ∀ n, P14698015609869133761.a n = A100341 (n + 1)

theorem P14698015609869133761.correct : P14698015609869133761.Spec := by
  intro n
  simp only [A100341, Nat.add_sub_cancel]

end A100341

/-! ## A100341.P12619476635784853600

`a(n-2)+(or(n, n+1)-n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A100341.P12619476635784853600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) * a (n - 1)

end

end A100341.P12619476635784853600

namespace A100341

/-- `a(n-2)+(or(n, n+1)-n)*a(n-1)` -/
def P12619476635784853600.Spec : Prop :=
  ∀ n, P12619476635784853600.a n = A100341 (n + 1)

end A100341

/-! ## A100341.P12832371767196608561

`(n%2+1)*A100343(n+1)`
-/

namespace A100341.P12832371767196608561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A100343 (n + 1)

end

end A100341.P12832371767196608561

namespace A100341

/-- `(n%2+1)*A100343(n+1)` -/
def P12832371767196608561.Spec : Prop :=
  ∀ n, P12832371767196608561.a n = A100341 (n + 1)

end A100341

/-!
# A100342: Numerators of the convergents in the continued fraction expansion for twice the constant given by A100338, where the partial quotients equal A006519 (greatest power of 2 dividing n) interleaved with 2's.

The programs for A100342, there is no canonical definition to state claims against.
-/

/-! ## A100342.P8325185737819674158

`gcd(2, n)*A100340(n+1)`
-/

namespace A100342.P8325185737819674158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A100340 (n + 1)

end

end A100342.P8325185737819674158

/-! ## A100342.P11942763351126079845

`Δ[A007494(n)]*A100340(n+1)`
-/

namespace A100342.P11942763351126079845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A100340 (n + 1)

end

end A100342.P11942763351126079845

/-! ## A100342.P14970095590329408471

`A000034(n+1)*A100340(n+1)`
-/

namespace A100342.P14970095590329408471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A100340 (n + 1)

end

end A100342.P14970095590329408471

/-! ## A100342.P17508230261575644656

`A014710(2*n)*A100340(n+1)`
-/

namespace A100342.P17508230261575644656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 (2 * n) * A100340 (n + 1)

end

end A100342.P17508230261575644656

/-!
# A100343: Denominators of the convergents in the continued fraction expansion for twice the constant given by A100338, where the partial quotients equal A006519 (greatest power of 2 dividing n) interleaved with 2's.

The programs for A100343, there is no canonical definition to state claims against.
-/

/-! ## A100343.P1230494271805529897

`lcm(2, A100341(n+1))/2`
-/

namespace A100343.P1230494271805529897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A100341 (n + 1)) : ℚ) / 2

end

end A100343.P1230494271805529897

/-! ## A100343.P10591735057392332942

`A100341(n+1)/A000034(n)`
-/

namespace A100343.P10591735057392332942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100341 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A100343.P10591735057392332942

/-! ## A100343.P3314581893373258937

`A100341(n+1)/(A000035(n)+1)`
-/

namespace A100343.P3314581893373258937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100341 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A100343.P3314581893373258937

/-! ## A100343.P3837658436340826074

`A100341(n+1)/Δ[A057353(2*n)]`
-/

namespace A100343.P3837658436340826074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100341 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A100343.P3837658436340826074

/-!
# A100345: Triangle read by rows: T(n,k) = n*(n+k), 0 <= k <= n.

The programs for A100345, the canonical program `A100345.P12526129573146748191` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100345 has offset 0).

The definition of A100345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)*(row(n)+col(n))` (program `A100345.P12526129573146748191`, by `A100345.P12526129573146748191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100345.P12526129573146748191

`row(n)*(row(n)+col(n))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100345

/-- `row(n)*(row(n)+col(n))` -/
def P12526129573146748191.Spec : Prop :=
  ∀ n, (P12526129573146748191.a n : ℤ) = A100345 n

theorem P12526129573146748191.correct : P12526129573146748191.Spec := by
  intro n
  simp only [A100345]

end A100345

/-! ## A100345.P5842756281762793998

`∑[char[∑[n+1]]]*A051162(n)`
-/

namespace A100345.P5842756281762793998
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A051162 n

end

end A100345.P5842756281762793998

namespace A100345

/-- `∑[char[∑[n+1]]]*A051162(n)` -/
def P5842756281762793998.Spec : Prop :=
  ∀ n, P5842756281762793998.a n = A100345 n

end A100345

/-! ## A100345.P8933074959781037405

`∑[char[∑[n+1]]]*A134478(n)`
-/

namespace A100345.P8933074959781037405
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A134478 n

end

end A100345.P8933074959781037405

namespace A100345

/-- `∑[char[∑[n+1]]]*A134478(n)` -/
def P8933074959781037405.Spec : Prop :=
  ∀ n, P8933074959781037405.a n = A100345 n

end A100345

/-! ## A100345.P10218068871368461112

`A069011(n)+A004247(n)`
-/

namespace A100345.P10218068871368461112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + A004247 n

end

end A100345.P10218068871368461112

namespace A100345

/-- `A069011(n)+A004247(n)` -/
def P10218068871368461112.Spec : Prop :=
  ∀ n, P10218068871368461112.a n = A100345 n

theorem P10218068871368461112.correct : P10218068871368461112.Spec := by
  intro n
  simp only [A100345, Nat.add_sub_cancel, A100345.P10218068871368461112.a, A100345.P12526129573146748191.a, A004247, A004247.P2751605162508615148.a, A069011, A069011.P12730965949212328677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100345

/-! ## A100345.P6686201409245584131

`A281385(n)+A143844(n)`
-/

namespace A100345.P6686201409245584131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n + A143844 n

end

end A100345.P6686201409245584131

namespace A100345

/-- `A281385(n)+A143844(n)` -/
def P6686201409245584131.Spec : Prop :=
  ∀ n, P6686201409245584131.a n = A100345 n

theorem P6686201409245584131.correct : P6686201409245584131.Spec := by
  intro n
  simp only [A100345, Nat.add_sub_cancel, A100345.P6686201409245584131.a, A100345.P12526129573146748191.a, A143844, A143844.P13341456288637914710.a, A281385, A281385.P1365053129118161988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100345

/-! ## A100345.P2474024037638678972

`A132111(n)-A143844(n)`
-/

namespace A100345.P2474024037638678972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n - A143844 n

end

end A100345.P2474024037638678972

namespace A100345

/-- `A132111(n)-A143844(n)` -/
def P2474024037638678972.Spec : Prop :=
  ∀ n, P2474024037638678972.a n = A100345 n

theorem P2474024037638678972.correct : P2474024037638678972.Spec := by
  intro n
  simp only [A100345, Nat.add_sub_cancel, A100345.P2474024037638678972.a, A100345.P12526129573146748191.a, A132111, A132111.P14495534047387877315.a, A143844, A143844.P13341456288637914710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100345

/-! ## A100345.P918236070296750558

`A079904(n)+A003056(n)²`
-/

namespace A100345.P918236070296750558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A003056 n ^ 2

end

end A100345.P918236070296750558

namespace A100345

/-- `A079904(n)+A003056(n)²` -/
def P918236070296750558.Spec : Prop :=
  ∀ n, P918236070296750558.a n = A100345 n

end A100345

/-! ## A100345.P8194243363827758518

`(A281385(n)+A132111(n))/2`
-/

namespace A100345.P8194243363827758518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281385 n + A132111 n : ℚ) / 2

end

end A100345.P8194243363827758518

namespace A100345

/-- `(A281385(n)+A132111(n))/2` -/
def P8194243363827758518.Spec : Prop :=
  ∀ n, P8194243363827758518.a n = (A100345 n : ℚ)

theorem P8194243363827758518.correct : P8194243363827758518.Spec := by
  intro n
  simp only [A100345, Nat.add_sub_cancel, A100345.P8194243363827758518.a, A100345.P12526129573146748191.a, A132111, A132111.P14495534047387877315.a, A281385, A281385.P1365053129118161988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100345

/-! ## A100345.P1717408496244911046

`A051162(n)/2*A279891(n)`
-/

namespace A100345.P1717408496244911046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051162 n : ℚ) / 2 * (A279891 n : ℚ)

end

end A100345.P1717408496244911046

namespace A100345

/-- `A051162(n)/2*A279891(n)` -/
def P1717408496244911046.Spec : Prop :=
  ∀ n, P1717408496244911046.a n = (A100345 n : ℚ)

theorem P1717408496244911046.correct : P1717408496244911046.Spec := by
  intro n
  simp only [A100345, Nat.add_sub_cancel, A100345.P1717408496244911046.a, A100345.P12526129573146748191.a, A051162, A051162.P4484969187050632534.a, A279891, A279891.P11915647867805557395.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100345

/-! ## A100345.P11657402669103129277

`2*A003056(n)²-A091435(n)`
-/

namespace A100345.P11657402669103129277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003056 n ^ 2 - A091435 n

end

end A100345.P11657402669103129277

namespace A100345

/-- `2*A003056(n)²-A091435(n)` -/
def P11657402669103129277.Spec : Prop :=
  ∀ n, P11657402669103129277.a n = A100345 n

end A100345

/-! ## A100345.P3308010938832084

`(A094727(n+1)-1)*A003056(n)`
-/

namespace A100345.P3308010938832084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) - 1) * A003056 n

end

end A100345.P3308010938832084

namespace A100345

/-- `(A094727(n+1)-1)*A003056(n)` -/
def P3308010938832084.Spec : Prop :=
  ∀ n, P3308010938832084.a n = A100345 n

end A100345

/-! ## A100345.P2368923672762489129

`(A108872(n+1)-2)*A003056(n)`
-/

namespace A100345.P2368923672762489129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) - 2) * A003056 n

end

end A100345.P2368923672762489129

namespace A100345

/-- `(A108872(n+1)-2)*A003056(n)` -/
def P2368923672762489129.Spec : Prop :=
  ∀ n, P2368923672762489129.a n = A100345 n

end A100345

/-! ## A100345.P4978208772368137073

`A076110(n+1)+A003056(n)²-1`
-/

namespace A100345.P4978208772368137073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + (A003056 n ^ 2 - 1)

end

end A100345.P4978208772368137073

namespace A100345

/-- `A076110(n+1)+A003056(n)²-1` -/
def P4978208772368137073.Spec : Prop :=
  ∀ n, P4978208772368137073.a n = A100345 n

end A100345

/-! ## A100345.P3991266162894014796

`A079904(n)+(1-A002024(n+1))²`
-/

namespace A100345.P3991266162894014796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + (1 - A002024 (n + 1)) ^ 2

end

end A100345.P3991266162894014796

namespace A100345

/-- `A079904(n)+(1-A002024(n+1))²` -/
def P3991266162894014796.Spec : Prop :=
  ∀ n, P3991266162894014796.a n = A100345 n

end A100345

/-! ## A100345.P5585814757598591512

`A079904(n)+(2-A003057(n+2))²`
-/

namespace A100345.P5585814757598591512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + (2 - A003057 (n + 2)) ^ 2

end

end A100345.P5585814757598591512

namespace A100345

/-- `A079904(n)+(2-A003057(n+2))²` -/
def P5585814757598591512.Spec : Prop :=
  ∀ n, P5585814757598591512.a n = A100345 n

end A100345

/-! ## A100345.P6751914414816078338

`A079904(n)+A069011(A057944(n))`
-/

namespace A100345.P6751914414816078338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A069011 (A057944 n).toNat

end

end A100345.P6751914414816078338

namespace A100345

/-- `A079904(n)+A069011(A057944(n))` -/
def P6751914414816078338.Spec : Prop :=
  ∀ n, P6751914414816078338.a n = A100345 n

end A100345

/-! ## A100345.P14655971119944548543

`A079904(A061579(n))+2*A079904(n)`
-/

namespace A100345.P14655971119944548543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (A061579 n).toNat + 2 * A079904 n

end

end A100345.P14655971119944548543

namespace A100345

/-- `A079904(A061579(n))+2*A079904(n)` -/
def P14655971119944548543.Spec : Prop :=
  ∀ n, P14655971119944548543.a n = A100345 n

end A100345

/-! ## A100345.P18277569120754808774

`A048147(n)+A069011(n)-A349039(n)`
-/

namespace A100345.P18277569120754808774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n + (A069011 n - A349039 n)

end

end A100345.P18277569120754808774

namespace A100345

/-- `A048147(n)+A069011(n)-A349039(n)` -/
def P18277569120754808774.Spec : Prop :=
  ∀ n, P18277569120754808774.a n = A100345 n

theorem P18277569120754808774.correct : P18277569120754808774.Spec := by
  intro n
  simp only [A100345, Nat.add_sub_cancel, A100345.P18277569120754808774.a, A100345.P12526129573146748191.a, A048147, A048147.P4216793298014454486.a, A069011, A069011.P12730965949212328677.a, A349039, A349039.P8937323776347289677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100345

/-! ## A100345.P2930204463604453068

`(A003056(n)+A002262(n))*A003056(n)`
-/

namespace A100345.P2930204463604453068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + A002262 n) * A003056 n

end

end A100345.P2930204463604453068

namespace A100345

/-- `(A003056(n)+A002262(n))*A003056(n)` -/
def P2930204463604453068.Spec : Prop :=
  ∀ n, P2930204463604453068.a n = A100345 n

end A100345

/-! ## A100345.P13710988094229042507

`A002024(n+1)*A051162(n)-A051162(n)`
-/

namespace A100345.P13710988094229042507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A051162 n - A051162 n

end

end A100345.P13710988094229042507

namespace A100345

/-- `A002024(n+1)*A051162(n)-A051162(n)` -/
def P13710988094229042507.Spec : Prop :=
  ∀ n, P13710988094229042507.a n = A100345 n

end A100345

/-!
# A100346: Number of compositions of n into divisors of n.

The programs for A100346, there is no canonical definition to state claims against.
-/

/-! ## A100346.P2637463850589476223

`A294138(n)+A057427(n)`
-/

namespace A100346.P2637463850589476223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 n + A057427 n

end

end A100346.P2637463850589476223

/-! ## A100346.P4948065702634218520

`A294138(n)-A057428(n)`
-/

namespace A100346.P4948065702634218520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 n - A057428 n

end

end A100346.P4948065702634218520

/-! ## A100346.P7810595308688776707

`A294138(n)+A211111(2*n+1)`
-/

namespace A100346.P7810595308688776707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 n + A211111 (2 * n + 1)

end

end A100346.P7810595308688776707

/-! ## A100346.P1762688524923130181

`A294138(n)+A279061(A279061(n))`
-/

namespace A100346.P1762688524923130181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 n + A279061 (A279061 n).toNat

end

end A100346.P1762688524923130181

/-! ## A100346.P16504464722815077611

`A294138(A027748(n+1))+A294138(n)`
-/

namespace A100346.P16504464722815077611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 (A027748 (n + 1)).toNat + A294138 n

end

end A100346.P16504464722815077611

/-! ## A100346.P8941522166034027600

`A294138(n)+A011623(n²)`
-/

namespace A100346.P8941522166034027600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 n + A011623 (n ^ 2)

end

end A100346.P8941522166034027600

/-! ## A100346.P10496628468552350531

`A294138(n)+A190321(n²)`
-/

namespace A100346.P10496628468552350531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 n + A190321 (n ^ 2)

end

end A100346.P10496628468552350531

/-! ## A100346.P16491951122737791828

`A294138(A302170(n+1))+A294138(n)`
-/

namespace A100346.P16491951122737791828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 (A302170 (n + 1)).toNat + A294138 n

end

end A100346.P16491951122737791828

/-!
# A100348: Numbers n such that n-4^k is a prime for all k > 0 with 4^k < n.

The programs for A100348, there is no canonical definition to state claims against.
-/

/-! ## A100348.P5373000081032564227

`∩[A067528(n+1), A367186(n+1)]`
-/

namespace A100348.P5373000081032564227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100348.P5373000081032564227

/-! ## A100348.P3687676314641160138

`filter[A067528(n+2), A337264(#)]`
-/

namespace A100348.P3687676314641160138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067528 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337264 (f1 j).toNat = 1) n)

end

end A100348.P3687676314641160138

/-!
# A100352: Integers out of lexicographic order in A097104 in order of their presentation.

The programs for A100352, there is no canonical definition to state claims against.
-/

/-! ## A100352.P1118007115332456031

`floor(log2(A199940(n+1)-8))`
-/

namespace A100352.P1118007115332456031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A199940 (n + 1) - 8).toNat

end

end A100352.P1118007115332456031

/-! ## A100352.P202652014333642280

`A006530(3^n)+floor(π*n)`
-/

namespace A100352.P202652014333642280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 ^ n) + ⌊Real.pi * (n : ℝ)⌋

end

end A100352.P202652014333642280

/-! ## A100352.P17233415777919503188

`A007947(3^n)+floor(π*n)`
-/

namespace A100352.P17233415777919503188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (3 ^ n) + ⌊Real.pi * (n : ℝ)⌋

end

end A100352.P17233415777919503188

/-! ## A100352.P2738117981421173675

`A070939(A270339(3*n+1))+A005843(n)`
-/

namespace A100352.P2738117981421173675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A270339 (3 * n + 1)).toNat + A005843 n

end

end A100352.P2738117981421173675

/-! ## A100352.P12204050341791574580

`A335525(3*(n+1))-A102283(A007051(n))`
-/

namespace A100352.P12204050341791574580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (3 * (n + 1)) - A102283 (A007051 n).toNat

end

end A100352.P12204050341791574580

/-!
# A100353: Inverse of A097104.

The programs for A100353, there is no canonical definition to state claims against.
-/

/-! ## A100353.P1180396379277562007

`n*A147804(a(n-1))` with `a(0)=4`
-/

namespace A100353.P1180396379277562007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (n : ℤ) * A147804 (a (n - 1)).toNat

end

end A100353.P1180396379277562007

/-!
# A100354: Maximal number of 1432 patterns in a permutation of 1,2,...,n.

The programs for A100354, there is no canonical definition to state claims against.
-/

/-! ## A100354.P18089510769584330573

`∑{e}[A140429(n), A049032(#+1)]`
-/

namespace A100354.P18089510769584330573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049032 (Nat.factorization (f1 n).natAbs p + 1)

end

end A100354.P18089510769584330573

/-! ## A100354.P15922210148963137324

`∑{e}[∑[A025192(n)], A049032(#)]`
-/

namespace A100354.P15922210148963137324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049032 (Nat.factorization (f1 n).natAbs p)

end

end A100354.P15922210148963137324

/-! ## A100354.P232644447626114357

`∑{e}[A025192(n), A049032(#+1)]`
-/

namespace A100354.P232644447626114357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049032 (Nat.factorization (f1 n).natAbs p + 1)

end

end A100354.P232644447626114357

/-! ## A100354.P14073085001920208897

`A049032(floor(log2(A006946(n+1)))+1)`
-/

namespace A100354.P14073085001920208897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049032 (Nat.log 2 (A006946 (n + 1)).toNat + 1)

end

end A100354.P14073085001920208897

/-! ## A100354.P8829600580183548799

`A023532(A049032(2*(n+1)))*A049032(A065033(2*n))`
-/

namespace A100354.P8829600580183548799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A049032 (2 * (n + 1))).toNat * A049032 (A065033 (2 * n)).toNat

end

end A100354.P8829600580183548799

/-!
# A100355: Maximal number of 15432 patterns in a permutation of 1,2,...,n.

The programs for A100355, there is no canonical definition to state claims against.
-/

/-! ## A100355.P5854346930011004278

`A334708(A000124(n)-A056811(n+1))`
-/

namespace A100355.P5854346930011004278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334708 (A000124 n - A056811 (n + 1)).toNat

end

end A100355.P5854346930011004278

/-! ## A100355.P12065045230996912466

`A185284(C(n, 2))+C(n, 4)`
-/

namespace A100355.P12065045230996912466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (Nat.choose n 2) + (Nat.choose n 4 : ℤ)

end

end A100355.P12065045230996912466

/-! ## A100355.P7423571550697782116

`A289895(A036653(n))`
-/

namespace A100355.P7423571550697782116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289895 (A036653 n).toNat

end

end A100355.P7423571550697782116

/-! ## A100355.P14987422543026456463

`A115859(A005177(n))+A000332(n)`
-/

namespace A100355.P14987422543026456463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115859 (A005177 n).toNat + A000332 n

end

end A100355.P14987422543026456463

/-! ## A100355.P2960945119651022574

`A185238(A000045(n))+A000332(n)`
-/

namespace A100355.P2960945119651022574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A000045 n).toNat + A000332 n

end

end A100355.P2960945119651022574

/-!
# A100356: Maximal number of 165432 patterns in a permutation of 1,2,...,n.

The programs for A100356, there is no canonical definition to state claims against.
-/

/-! ## A100356.P6720669004655571209

`A286270(A108558(n))+A000389(n)`
-/

namespace A100356.P6720669004655571209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286270 (A108558 n).toNat + A000389 n

end

end A100356.P6720669004655571209

/-! ## A100356.P17476858205187354169

`A290993(n)+A174615(A172350(n))`
-/

namespace A100356.P17476858205187354169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290993 n + A174615 (A172350 n).toNat

end

end A100356.P17476858205187354169

/-! ## A100356.P17235567609450377038

`xor(A000389(n), A308920(A174615(n)))`
-/

namespace A100356.P17235567609450377038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000389 n) (A308920 (A174615 n).toNat)

end

end A100356.P17235567609450377038

/-! ## A100356.P13999303630229437329

`xor(A000389(n), A308920(A276532(n)))`
-/

namespace A100356.P13999303630229437329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000389 n) (A308920 (A276532 n).toNat)

end

end A100356.P13999303630229437329

/-!
# A100357: Numbers k such that 2^k + k^2 + 1 is prime.

The programs for A100357, there is no canonical definition to state claims against.
-/

/-! ## A100357.P7756923319795517106

`A145897(A102947(n+1))-1`
-/

namespace A100357.P7756923319795517106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145897 (A102947 (n + 1)).toNat - 1

end

end A100357.P7756923319795517106

/-! ## A100357.P1923092046671066067

`lt[A175392(n+4), A178225(n+3)+2]`
-/

namespace A100357.P1923092046671066067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175392 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (n + 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100357.P1923092046671066067

/-!
# A100359: Numbers k such that 2^k + k + 1 is prime.

The programs for A100359, there is no canonical definition to state claims against.
-/

/-! ## A100359.P13149529014337680400

`A061422(n+1)-1`
-/

namespace A100359.P13149529014337680400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061422 (n + 1) - 1

end

end A100359.P13149529014337680400

/-! ## A100359.P5323591783505877585

`2*A173053(n+1)`
-/

namespace A100359.P5323591783505877585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173053 (n + 1)

end

end A100359.P5323591783505877585

/-! ## A100359.P14425272188942798361

`xor(1, A061422(gcd(n²+n, ∏{p}[n+1, #²])))`
-/

namespace A100359.P14425272188942798361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A061422 (Nat.gcd (n ^ 2 + n) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)))

end

end A100359.P14425272188942798361

/-!
# A100361: Numbers k such that 2^k - k + 1 is prime.

The programs for A100361, there is no canonical definition to state claims against.
-/

/-! ## A100361.P7469654886076070649

`val(Δ[A268209(n+1)], 2)`
-/

namespace A100361.P7469654886076070649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268209 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A100361.P7469654886076070649

/-! ## A100361.P1054214796727029206

`lt[A123492(n), A059639(A034693(n+1))]`
-/

namespace A100361.P1054214796727029206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059639 (A034693 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100361.P1054214796727029206

/-! ## A100361.P12108838448119957752

`∪[A010430(A118551(2*n)), A147945(n+1)]`
-/

namespace A100361.P12108838448119957752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010430 (A118551 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100361.P12108838448119957752

/-! ## A100361.P3468534527062825752

`record[A201241(n+1)%A000196(A091522(n+1))]`
-/

namespace A100361.P3468534527062825752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201241 (n + 1)) (A000196 (A091522 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100361.P3468534527062825752

/-! ## A100361.P18183967542161451477

`lt[A264974(3*(n+1)), A003344(A295636(n+2))]`
-/

namespace A100361.P18183967542161451477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003344 (A295636 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100361.P18183967542161451477

/-!
# A100362: Primes of the form 2^k - k + 1.

The programs for A100362, there is no canonical definition to state claims against.
-/

/-! ## A100362.P7325901789317123491

`A000325(A100361(n+1))+1`
-/

namespace A100362.P7325901789317123491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (A100361 (n + 1)).toNat + 1

end

end A100362.P7325901789317123491

/-! ## A100362.P8841935264096906171

`A268209(n+1)-A100361(n+1)`
-/

namespace A100362.P8841935264096906171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268209 (n + 1) - A100361 (n + 1)

end

end A100362.P8841935264096906171

/-! ## A100362.P17792449577336782096

`A132045(A100361(n+1)+A000007(n))`
-/

namespace A100362.P17792449577336782096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 (A100361 (n + 1) + A000007 n).toNat

end

end A100362.P17792449577336782096

/-! ## A100362.P2070763485125245078

`A132045(A100361(n+1)^A178334(n))`
-/

namespace A100362.P2070763485125245078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 (SequenceMachineLib.roundAway ((A100361 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A100362.P2070763485125245078

/-! ## A100362.P9976351863385781504

`A132045(A100361(n+1)+1-A178334(n))`
-/

namespace A100362.P9976351863385781504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 (A100361 (n + 1) + (1 - A178334 n)).toNat

end

end A100362.P9976351863385781504

/-!
# A100363: Numbers n such that the numbers of divisors of n,n+1 and n+2 are k,2k,4k respectively for some k.

The programs for A100363, the canonical program `A100363.P13811518360178267428` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100363 has offset 1).

The definition of A100363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100363.P13811518360178267428

`∩[A063446(n+1)-1, A063446(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100363

/-- `∩[A063446(n+1)-1, A063446(n+1)]` -/
def P13811518360178267428.Spec : Prop :=
  ∀ n, (P13811518360178267428.a n : ℤ) = A100363 (n + 1)

theorem P13811518360178267428.correct : P13811518360178267428.Spec := by
  intro n
  simp only [A100363, Nat.add_sub_cancel]

end A100363

/-! ## A100363.P9654914340898065181

`∩[A063446(n+1), A023443(A063446(n+1))]`
-/

namespace A100363.P9654914340898065181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063446 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100363.P9654914340898065181

namespace A100363

/-- `∩[A063446(n+1), A023443(A063446(n+1))]` -/
def P9654914340898065181.Spec : Prop :=
  ∀ n, (P9654914340898065181.a n : ℤ) = A100363 (n + 1)

end A100363

/-!
# A100364: Numbers n such that the numbers of divisors of n,n+1,n+2 and n+3 are k,2k,4k,8k respectively for some k.

The programs for A100364, there is no canonical definition to state claims against.
-/

/-! ## A100364.P11393346128570085056

`∩[A100363(n+1)-1, A100363(n+1)]`
-/

namespace A100364.P11393346128570085056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100363 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100364.P11393346128570085056

/-! ## A100364.P8202918723247129519

`∩[A100363(n+1), A023443(A100363(n+1))]`
-/

namespace A100364.P8202918723247129519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A100363 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100364.P8202918723247129519

/-!
# A100365: Prime numbers q such that q, q+1, q+2, q+3, q+4 have 2, 4, 8, 16, 32 divisors respectively.

The programs for A100365, there is no canonical definition to state claims against.
-/

/-! ## A100365.P720683554328563956

`A340229(lt[A007054(n), A324800(n+1)])`
-/

namespace A100365.P720683554328563956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340229 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100365.P720683554328563956

/-! ## A100365.P5713644251584196074

`A340229(A043718(n+1))`
-/

namespace A100365.P5713644251584196074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340229 (A043718 (n + 1)).toNat

end

end A100365.P5713644251584196074

/-! ## A100365.P18351396016271482781

`A340229(A044826(n+1))`
-/

namespace A100365.P18351396016271482781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340229 (A044826 (n + 1)).toNat

end

end A100365.P18351396016271482781

/-! ## A100365.P6146410480722298274

`A340229(A044964(n+1))`
-/

namespace A100365.P6146410480722298274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340229 (A044964 (n + 1)).toNat

end

end A100365.P6146410480722298274

/-! ## A100365.P16481749529339889495

`A340229(A048312(n+1))`
-/

namespace A100365.P16481749529339889495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340229 (A048312 (n + 1)).toNat

end

end A100365.P16481749529339889495

/-!
# A100366: a(n) is the least prime number q such that q,q+1,q+2,q+3,...,q+n-1 have 2,4,8,...,2^n divisors respectively.

The programs for A100366, there is no canonical definition to state claims against.
-/

/-! ## A100366.P13668458333398800302

`A340230(n+1)+A130706(n)²`
-/

namespace A100366.P13668458333398800302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340230 (n + 1) + A130706 n ^ 2

end

end A100366.P13668458333398800302

/-! ## A100366.P4936335026759451839

`xor(A132139(n+4), A340230(n+1))`
-/

namespace A100366.P4936335026759451839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A132139 (n + 4)) (A340230 (n + 1))

end

end A100366.P4936335026759451839

/-! ## A100366.P7045264006819704062

`A340230(n+1)+A072507(n+1)²`
-/

namespace A100366.P7045264006819704062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340230 (n + 1) + A072507 (n + 1) ^ 2

end

end A100366.P7045264006819704062

/-!
# A100367: Even numbers with two prime factors, not counting multiplicity.

The programs for A100367, the canonical program `A100367.P14256185625619579639` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100367 has offset 1).

The definition of A100367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100367.P17665474083112890883

`2*A336101(n+1)`
-/

namespace A100367.P17665474083112890883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336101 (n + 1)

end

end A100367.P17665474083112890883

namespace A100367

/-- `2*A336101(n+1)` -/
def P17665474083112890883.Spec : Prop :=
  ∀ n, P17665474083112890883.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P14256185625619579639

`2*(eq[1, A340373(n+1)]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100367

/-- `2*(eq[1, A340373(n+1)]+1)` -/
def P14256185625619579639.Spec : Prop :=
  ∀ n, (P14256185625619579639.a n : ℤ) = A100367 (n + 1)

theorem P14256185625619579639.correct : P14256185625619579639.Spec := by
  intro n
  simp only [A100367, Nat.add_sub_cancel]

end A100367

/-! ## A100367.P10416732812303600055

`2*(eq[2, A001221(2*(n+1))]+1)`
-/

namespace A100367.P10416732812303600055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A100367.P10416732812303600055

namespace A100367

/-- `2*(eq[2, A001221(2*(n+1))]+1)` -/
def P10416732812303600055.Spec : Prop :=
  ∀ n, (P10416732812303600055.a n : ℤ) = A100367 (n + 1)

end A100367

/-! ## A100367.P17347501289219046647

`2*(lt[1, A347633(A336158(n+1))]+1)`
-/

namespace A100367.P17347501289219046647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (A336158 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A100367.P17347501289219046647

namespace A100367

/-- `2*(lt[1, A347633(A336158(n+1))]+1)` -/
def P17347501289219046647.Spec : Prop :=
  ∀ n, (P17347501289219046647.a n : ℤ) = A100367 (n + 1)

end A100367

/-! ## A100367.P821182379181081956

`A336101(A000027(n+1))+A336101(n+1)`
-/

namespace A100367.P821182379181081956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (A000027 (n + 1)).toNat + A336101 (n + 1)

end

end A100367.P821182379181081956

namespace A100367

/-- `A336101(A000027(n+1))+A336101(n+1)` -/
def P821182379181081956.Spec : Prop :=
  ∀ n, P821182379181081956.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P14758928200041838976

`A000265(A336101(n+1)+A336101(n+1)+1)-1`
-/

namespace A100367.P14758928200041838976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A336101 (n + 1) + A336101 (n + 1) + 1).toNat - 1

end

end A100367.P14758928200041838976

namespace A100367

/-- `A000265(A336101(n+1)+A336101(n+1)+1)-1` -/
def P14758928200041838976.Spec : Prop :=
  ∀ n, P14758928200041838976.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P3577265047356143271

`2*sqrt(A372724(n+2))`
-/

namespace A100367.P3577265047356143271
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A372724 (n + 2) : ℝ)

end

end A100367.P3577265047356143271

namespace A100367

/-- `2*sqrt(A372724(n+2))` -/
def P3577265047356143271.Spec : Prop :=
  ∀ n, P3577265047356143271.a n = (A100367 (n + 1) : ℝ)

end A100367

/-! ## A100367.P15690895266913328412

`A336101(n+1)+A372724(n+2)/A336101(n+1)`
-/

namespace A100367.P15690895266913328412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336101 (n + 1) : ℚ) + (A372724 (n + 2) : ℚ) / (A336101 (n + 1) : ℚ)

end

end A100367.P15690895266913328412

namespace A100367

/-- `A336101(n+1)+A372724(n+2)/A336101(n+1)` -/
def P15690895266913328412.Spec : Prop :=
  ∀ n, P15690895266913328412.a n = (A100367 (n + 1) : ℚ)

end A100367

/-! ## A100367.P16427675495765536104

`filter[A174164(n+1), A340363(#)]`
-/

namespace A100367.P16427675495765536104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A100367.P16427675495765536104

namespace A100367

/-- `filter[A174164(n+1), A340363(#)]` -/
def P16427675495765536104.Spec : Prop :=
  ∀ n, P16427675495765536104.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P16368432990414925697

`filter[A174164(n+1), A340373(#)]`
-/

namespace A100367.P16368432990414925697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A100367.P16368432990414925697

namespace A100367

/-- `filter[A174164(n+1), A340373(#)]` -/
def P16368432990414925697.Spec : Prop :=
  ∀ n, P16368432990414925697.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P8300317381293992686

`filter[A321193(n+1), A202238(#)]`
-/

namespace A100367.P8300317381293992686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A100367.P8300317381293992686

namespace A100367

/-- `filter[A321193(n+1), A202238(#)]` -/
def P8300317381293992686.Spec : Prop :=
  ∀ n, P8300317381293992686.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P16039544481255520330

`filter[A174164(n+1), A353672(#)]`
-/

namespace A100367.P16039544481255520330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A100367.P16039544481255520330

namespace A100367

/-- `filter[A174164(n+1), A353672(#)]` -/
def P16039544481255520330.Spec : Prop :=
  ∀ n, P16039544481255520330.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P13089404944229621174

`filter[A321193(n+1), A323170(#)]`
-/

namespace A100367.P13089404944229621174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A100367.P13089404944229621174

namespace A100367

/-- `filter[A321193(n+1), A323170(#)]` -/
def P13089404944229621174.Spec : Prop :=
  ∀ n, P13089404944229621174.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P12440967340113278222

`filter[A321193(n+1), A340373(#)]`
-/

namespace A100367.P12440967340113278222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A100367.P12440967340113278222

namespace A100367

/-- `filter[A321193(n+1), A340373(#)]` -/
def P12440967340113278222.Spec : Prop :=
  ∀ n, P12440967340113278222.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P11151563580210751513

`filter[A321193(n+1), A347523(#)]`
-/

namespace A100367.P11151563580210751513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A100367.P11151563580210751513

namespace A100367

/-- `filter[A321193(n+1), A347523(#)]` -/
def P11151563580210751513.Spec : Prop :=
  ∀ n, P11151563580210751513.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P9336422594865910800

`filter[A321193(n+1), A353672(#)]`
-/

namespace A100367.P9336422594865910800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A100367.P9336422594865910800

namespace A100367

/-- `filter[A321193(n+1), A353672(#)]` -/
def P9336422594865910800.Spec : Prop :=
  ∀ n, P9336422594865910800.a n = A100367 (n + 1)

end A100367

/-! ## A100367.P12166557679077037337

`eq[2, A076820(n+1)]+1`
-/

namespace A100367.P12166557679077037337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100367.P12166557679077037337

namespace A100367

/-- `eq[2, A076820(n+1)]+1` -/
def P12166557679077037337.Spec : Prop :=
  ∀ n, (P12166557679077037337.a n : ℤ) = A100367 (n + 1)

end A100367

/-! ## A100367.P11080428561469981763

`eq[-a(n-1), A001221(n+2)]+2` with `a(0)=2`
-/

namespace A100367.P11080428561469981763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A100367.P11080428561469981763

namespace A100367

/-- `eq[-a(n-1), A001221(n+2)]+2` -/
def P11080428561469981763.Spec : Prop :=
  ∀ n, (P11080428561469981763.a n : ℤ) = A100367 (n + 1)

end A100367

/-! ## A100367.P9880065017386778959

`eq[2, A001222(A007947(n+1))^gcd(2, n)]+1`
-/

namespace A100367.P9880065017386778959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat ^ Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100367.P9880065017386778959

namespace A100367

/-- `eq[2, A001222(A007947(n+1))^gcd(2, n)]+1` -/
def P9880065017386778959.Spec : Prop :=
  ∀ n, (P9880065017386778959.a n : ℤ) = A100367 (n + 1)

end A100367

/-! ## A100367.P3855039021083338011

`filter[A070776(n+1), A323170(#)]`
-/

namespace A100367.P3855039021083338011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A100367.P3855039021083338011

namespace A100367

/-- `filter[A070776(n+1), A323170(#)]` -/
def P3855039021083338011.Spec : Prop :=
  ∀ n, P3855039021083338011.a n = A100367 (n + 1)

end A100367

/-!
# A100368: Numbers of the form 2^k * p where k > 0 and p is an odd prime.

The programs for A100368, the canonical program `A100368.P13264735113197873513` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100368 has offset 1).

The definition of A100368 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038550, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100368.P13264735113197873513

`2*A038550(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100368

/-- `2*A038550(n+1)` -/
def P13264735113197873513.Spec : Prop :=
  ∀ n, P13264735113197873513.a n = A100368 (n + 1)

theorem P13264735113197873513.correct : P13264735113197873513.Spec := by
  intro n
  simp only [A100368, Nat.add_sub_cancel]

end A100368

/-! ## A100368.P10703567005915892923

`2*(eq[2, A336158(n+1)]+1)`
-/

namespace A100368.P10703567005915892923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A100368.P10703567005915892923

namespace A100368

/-- `2*(eq[2, A336158(n+1)]+1)` -/
def P10703567005915892923.Spec : Prop :=
  ∀ n, (P10703567005915892923.a n : ℤ) = A100368 (n + 1)

end A100368

/-! ## A100368.P5156455865891489265

`A038550(n+1)+eq[2, A318874(n+1)]+1`
-/

namespace A100368.P5156455865891489265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A100368.P5156455865891489265

namespace A100368

/-- `A038550(n+1)+eq[2, A318874(n+1)]+1` -/
def P5156455865891489265.Spec : Prop :=
  ∀ n, P5156455865891489265.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P8371070712072046887

`A038550(A000027(n+1))+A038550(n+1)`
-/

namespace A100368.P8371070712072046887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (A000027 (n + 1)).toNat + A038550 (n + 1)

end

end A100368.P8371070712072046887

namespace A100368

/-- `A038550(A000027(n+1))+A038550(n+1)` -/
def P8371070712072046887.Spec : Prop :=
  ∀ n, P8371070712072046887.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P11707205397905569775

`A038550(A028310(n+1))+A038550(n+1)`
-/

namespace A100368.P11707205397905569775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (A028310 (n + 1)).toNat + A038550 (n + 1)

end

end A100368.P11707205397905569775

namespace A100368

/-- `A038550(A028310(n+1))+A038550(n+1)` -/
def P11707205397905569775.Spec : Prop :=
  ∀ n, P11707205397905569775.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P6220074637308906153

`A038550(n+1)+eq[A000265(n+1), A318884(n+1)]+1`
-/

namespace A100368.P6220074637308906153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 : ℤ)

end

end A100368.P6220074637308906153

namespace A100368

/-- `A038550(n+1)+eq[A000265(n+1), A318884(n+1)]+1` -/
def P6220074637308906153.Spec : Prop :=
  ∀ n, P6220074637308906153.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P1288192051315209732

`2*∩[A093641(n+1), A267895(n+1)]`
-/

namespace A100368.P1288192051315209732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100368.P1288192051315209732

namespace A100368

/-- `2*∩[A093641(n+1), A267895(n+1)]` -/
def P1288192051315209732.Spec : Prop :=
  ∀ n, (P1288192051315209732.a n : ℤ) = A100368 (n + 1)

end A100368

/-! ## A100368.P3867175959630258529

`filter[A100367(n+1), A340371(#)]`
-/

namespace A100368.P3867175959630258529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A100368.P3867175959630258529

namespace A100368

/-- `filter[A100367(n+1), A340371(#)]` -/
def P3867175959630258529.Spec : Prop :=
  ∀ n, P3867175959630258529.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P811181939556133161

`filter[A100367(n+1), A353627(#)]`
-/

namespace A100368.P811181939556133161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A100368.P811181939556133161

namespace A100368

/-- `filter[A100367(n+1), A353627(#)]` -/
def P811181939556133161.Spec : Prop :=
  ∀ n, P811181939556133161.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P2372323812479656603

`filter[A100367(n+1), A353670(#)]`
-/

namespace A100368.P2372323812479656603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A100368.P2372323812479656603

namespace A100368

/-- `filter[A100367(n+1), A353670(#)]` -/
def P2372323812479656603.Spec : Prop :=
  ∀ n, P2372323812479656603.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P14233461549484549938

`filter[A100367(n+1), A353671(#)]`
-/

namespace A100368.P14233461549484549938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353671 (f1 j).toNat = 1) n)

end

end A100368.P14233461549484549938

namespace A100368

/-- `filter[A100367(n+1), A353671(#)]` -/
def P14233461549484549938.Spec : Prop :=
  ∀ n, P14233461549484549938.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P9749688963367490333

`filter[A174164(n+1), A340371(#)]`
-/

namespace A100368.P9749688963367490333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A100368.P9749688963367490333

namespace A100368

/-- `filter[A174164(n+1), A340371(#)]` -/
def P9749688963367490333.Spec : Prop :=
  ∀ n, P9749688963367490333.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P6189262598802059486

`filter[A174164(n+1), A353670(#)]`
-/

namespace A100368.P6189262598802059486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A100368.P6189262598802059486

namespace A100368

/-- `filter[A174164(n+1), A353670(#)]` -/
def P6189262598802059486.Spec : Prop :=
  ∀ n, P6189262598802059486.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P12081821232583136787

`filter[A174164(n+1), A353671(#)]`
-/

namespace A100368.P12081821232583136787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353671 (f1 j).toNat = 1) n)

end

end A100368.P12081821232583136787

namespace A100368

/-- `filter[A174164(n+1), A353671(#)]` -/
def P12081821232583136787.Spec : Prop :=
  ∀ n, P12081821232583136787.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P14324374705610931328

`filter[A321193(n+1), A353670(#)]`
-/

namespace A100368.P14324374705610931328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A100368.P14324374705610931328

namespace A100368

/-- `filter[A321193(n+1), A353670(#)]` -/
def P14324374705610931328.Spec : Prop :=
  ∀ n, P14324374705610931328.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P9470656605048761234

`filter[A321193(n+1), A353671(#)]`
-/

namespace A100368.P9470656605048761234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353671 (f1 j).toNat = 1) n)

end

end A100368.P9470656605048761234

namespace A100368

/-- `filter[A321193(n+1), A353671(#)]` -/
def P9470656605048761234.Spec : Prop :=
  ∀ n, P9470656605048761234.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P1914731988257585763

`filter[A360127(n+1), A353670(#)]`
-/

namespace A100368.P1914731988257585763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A100368.P1914731988257585763

namespace A100368

/-- `filter[A360127(n+1), A353670(#)]` -/
def P1914731988257585763.Spec : Prop :=
  ∀ n, P1914731988257585763.a n = A100368 (n + 1)

end A100368

/-! ## A100368.P8882005838058933168

`filter[A360127(n+1), A353671(#)]`
-/

namespace A100368.P8882005838058933168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353671 (f1 j).toNat = 1) n)

end

end A100368.P8882005838058933168

namespace A100368

/-- `filter[A360127(n+1), A353671(#)]` -/
def P8882005838058933168.Spec : Prop :=
  ∀ n, P8882005838058933168.a n = A100368 (n + 1)

end A100368

/-!
# A100370: Primes in A099756, sorted.

The programs for A100370, there is no canonical definition to state claims against.
-/

/-! ## A100370.P17027710581135786846

`eq[A003415(n), A373671(A050873(n+1))]`
-/

namespace A100370.P17027710581135786846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373671 (A050873 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100370.P17027710581135786846

/-! ## A100370.P9596110555338837155

`eq[A032741(n), A069292(A164874(n+1))]`
-/

namespace A100370.P9596110555338837155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069292 (A164874 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100370.P9596110555338837155

/-! ## A100370.P5559273124482934938

`A000040(lt[A383735(3*n+1), A321443(n)])`
-/

namespace A100370.P5559273124482934938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383735 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100370.P5559273124482934938

/-! ## A100370.P13598493285759956390

`A000040(lt[A354823(n+1), A329744(3*(n+1))])`
-/

namespace A100370.P13598493285759956390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329744 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100370.P13598493285759956390

/-! ## A100370.P12008921098645557372

`A000040(lt[A383735(3*n+1), A380414(n+1)])`
-/

namespace A100370.P12008921098645557372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383735 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100370.P12008921098645557372

/-!
# A100371: a(n) = 2^phi(n) - 1 = A066781(n) - 1.

The programs for A100371, the canonical program `A100371.P1765266703165715938` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100371 has offset 1).

The definition of A100371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066781, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100371.P1765266703165715938

`A066781(n+1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100371

/-- `A066781(n+1)-1` -/
def P1765266703165715938.Spec : Prop :=
  ∀ n, P1765266703165715938.a n = A100371 (n + 1)

theorem P1765266703165715938.correct : P1765266703165715938.Spec := by
  intro n
  simp only [A100371, Nat.add_sub_cancel]

end A100371

/-! ## A100371.P18201011126576084943

`2^A000010(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100371.P18201011126576084943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ) - 1

end

end A100371.P18201011126576084943

namespace A100371

/-- `2^A000010(n+1)-1` -/
def P18201011126576084943.Spec : Prop :=
  ∀ n, P18201011126576084943.a n = (A100371 (n + 1) : ℚ)

end A100371

/-! ## A100371.P5321804985561097610

`A243305(n+1)-2`
-/

namespace A100371.P5321804985561097610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1) - 2

end

end A100371.P5321804985561097610

namespace A100371

/-- `A243305(n+1)-2` -/
def P5321804985561097610.Spec : Prop :=
  ∀ n, P5321804985561097610.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P4211167586582770426

`A000225(Δ[A002088(n)])`
-/

namespace A100371.P4211167586582770426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (f1 (n + 1) - f1 n).toNat

end

end A100371.P4211167586582770426

namespace A100371

/-- `A000225(Δ[A002088(n)])` -/
def P4211167586582770426.Spec : Prop :=
  ∀ n, P4211167586582770426.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P8350165193446860550

`A000225(A000010(n+1))`
-/

namespace A100371.P8350165193446860550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000010 (n + 1)).toNat

end

end A100371.P8350165193446860550

namespace A100371

/-- `A000225(A000010(n+1))` -/
def P8350165193446860550.Spec : Prop :=
  ∀ n, P8350165193446860550.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P17708649459675717243

`A126646(A109606(n+1))`
-/

namespace A100371.P17708649459675717243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A109606 (n + 1)).toNat

end

end A100371.P17708649459675717243

namespace A100371

/-- `A126646(A109606(n+1))` -/
def P17708649459675717243.Spec : Prop :=
  ∀ n, P17708649459675717243.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P10655445806348999405

`A243071(A048848(n+1))`
-/

namespace A100371.P10655445806348999405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A048848 (n + 1)).toNat

end

end A100371.P10655445806348999405

namespace A100371

/-- `A243071(A048848(n+1))` -/
def P10655445806348999405.Spec : Prop :=
  ∀ n, P10655445806348999405.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P4987003134033374153

`A000079(Δ[A002088(n)])-1`
-/

namespace A100371.P4987003134033374153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat - 1

end

end A100371.P4987003134033374153

namespace A100371

/-- `A000079(Δ[A002088(n)])-1` -/
def P4987003134033374153.Spec : Prop :=
  ∀ n, P4987003134033374153.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P14561748104371315266

`A011782(A039649(n+1))-1`
-/

namespace A100371.P14561748104371315266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A039649 (n + 1)).toNat - 1

end

end A100371.P14561748104371315266

namespace A100371

/-- `A011782(A039649(n+1))-1` -/
def P14561748104371315266.Spec : Prop :=
  ∀ n, P14561748104371315266.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P5750895796973477838

`A126646(A000010(n+1)-1)`
-/

namespace A100371.P5750895796973477838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A000010 (n + 1) - 1).toNat

end

end A100371.P5750895796973477838

namespace A100371

/-- `A126646(A000010(n+1)-1)` -/
def P5750895796973477838.Spec : Prop :=
  ∀ n, P5750895796973477838.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P16510339822664278354

`A017912(A140434(n+1))-1`
-/

namespace A100371.P16510339822664278354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (A140434 (n + 1)).toNat - 1

end

end A100371.P16510339822664278354

namespace A100371

/-- `A017912(A140434(n+1))-1` -/
def P16510339822664278354.Spec : Prop :=
  ∀ n, P16510339822664278354.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P14643420884353218744

`A017979(A200905(n+1))-1`
-/

namespace A100371.P14643420884353218744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (A200905 (n + 1)).toNat - 1

end

end A100371.P14643420884353218744

namespace A100371

/-- `A017979(A200905(n+1))-1` -/
def P14643420884353218744.Spec : Prop :=
  ∀ n, P14643420884353218744.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P241210749546947679

`A239678(A000010(n+1)+2)`
-/

namespace A100371.P241210749546947679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239678 (A000010 (n + 1) + 2).toNat

end

end A100371.P241210749546947679

namespace A100371

/-- `A239678(A000010(n+1)+2)` -/
def P241210749546947679.Spec : Prop :=
  ∀ n, P241210749546947679.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P13765243798016548206

`A277936(A000010(n+1)-1)`
-/

namespace A100371.P13765243798016548206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277936 (A000010 (n + 1) - 1).toNat

end

end A100371.P13765243798016548206

namespace A100371

/-- `A277936(A000010(n+1)-1)` -/
def P13765243798016548206.Spec : Prop :=
  ∀ n, P13765243798016548206.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P206938567678511433

`A282123(A000010(n+1)-1)`
-/

namespace A100371.P206938567678511433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282123 (A000010 (n + 1) - 1).toNat

end

end A100371.P206938567678511433

namespace A100371

/-- `A282123(A000010(n+1)-1)` -/
def P206938567678511433.Spec : Prop :=
  ∀ n, P206938567678511433.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P16116859747386273085

`A282124(A000010(n+1)-1)`
-/

namespace A100371.P16116859747386273085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282124 (A000010 (n + 1) - 1).toNat

end

end A100371.P16116859747386273085

namespace A100371

/-- `A282124(A000010(n+1)-1)` -/
def P16116859747386273085.Spec : Prop :=
  ∀ n, P16116859747386273085.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P12146905430317061734

`A283606(A000010(n+1)-1)`
-/

namespace A100371.P12146905430317061734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283606 (A000010 (n + 1) - 1).toNat

end

end A100371.P12146905430317061734

namespace A100371

/-- `A283606(A000010(n+1)-1)` -/
def P12146905430317061734.Spec : Prop :=
  ∀ n, P12146905430317061734.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P6667510644079960216

`A283607(A000010(n+1)-1)`
-/

namespace A100371.P6667510644079960216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283607 (A000010 (n + 1) - 1).toNat

end

end A100371.P6667510644079960216

namespace A100371

/-- `A283607(A000010(n+1)-1)` -/
def P6667510644079960216.Spec : Prop :=
  ∀ n, P6667510644079960216.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P4945401790956043056

`A285475(A000010(n+1)-1)`
-/

namespace A100371.P4945401790956043056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285475 (A000010 (n + 1) - 1).toNat

end

end A100371.P4945401790956043056

namespace A100371

/-- `A285475(A000010(n+1)-1)` -/
def P4945401790956043056.Spec : Prop :=
  ∀ n, P4945401790956043056.a n = A100371 (n + 1)

end A100371

/-! ## A100371.P9324814608857267781

`A243306(n+1)+A109606(n+1)`
-/

namespace A100371.P9324814608857267781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243306 (n + 1) + A109606 (n + 1)

end

end A100371.P9324814608857267781

namespace A100371

/-- `A243306(n+1)+A109606(n+1)` -/
def P9324814608857267781.Spec : Prop :=
  ∀ n, P9324814608857267781.a n = A100371 (n + 1)

end A100371

/-!
# A100373: Lexicographically earliest increasing sequence of composite numbers such that the digits of a(n) do not appear in a(n-1).

The programs for A100373, there is no canonical definition to state claims against.
-/

/-! ## A100373.P17327423995251911198

`A337945(A255260(n+1)+1)`
-/

namespace A100373.P17327423995251911198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337945 (A255260 (n + 1) + 1).toNat

end

end A100373.P17327423995251911198

/-! ## A100373.P18041968029742459879

`A337945(A181288(n+2)+1)`
-/

namespace A100373.P18041968029742459879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337945 (A181288 (n + 2) + 1).toNat

end

end A100373.P18041968029742459879

/-!
# A100374: Largest power of 2 dividing prime(n+1) - prime(n), the n-th consecutive prime difference.

The programs for A100374, the canonical program `A100374.P3644398539316585198` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100374 has offset 1).

The definition of A100374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100374.P3644398539316585198

`A006519(A001223(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100374

/-- `A006519(A001223(n+1))` -/
def P3644398539316585198.Spec : Prop :=
  ∀ n, P3644398539316585198.a n = A100374 (n + 1)

theorem P3644398539316585198.correct : P3644398539316585198.Spec := by
  intro n
  simp only [A100374, Nat.add_sub_cancel]

end A100374

/-! ## A100374.P17481920299434334440

`A214546(A100803(n+1))`
-/

namespace A100374.P17481920299434334440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (A100803 (n + 1)).toNat

end

end A100374.P17481920299434334440

namespace A100374

/-- `A214546(A100803(n+1))` -/
def P17481920299434334440.Spec : Prop :=
  ∀ n, P17481920299434334440.a n = A100374 (n + 1)

end A100374

/-! ## A100374.P12977265331855028888

`A308896(A076821(n+1))`
-/

namespace A100374.P12977265331855028888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308896 (A076821 (n + 1)).toNat

end

end A100374.P12977265331855028888

namespace A100374

/-- `A308896(A076821(n+1))` -/
def P12977265331855028888.Spec : Prop :=
  ∀ n, P12977265331855028888.a n = A100374 (n + 1)

end A100374

/-! ## A100374.P54128355091214742

`A006519(Δ[A001748(n+1)])`
-/

namespace A100374.P54128355091214742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (f1 (n + 1) - f1 n).toNat

end

end A100374.P54128355091214742

namespace A100374

/-- `A006519(Δ[A001748(n+1)])` -/
def P54128355091214742.Spec : Prop :=
  ∀ n, P54128355091214742.a n = A100374 (n + 1)

end A100374

/-! ## A100374.P17513935052520018031

`A006519(A046933(n+1)+1)`
-/

namespace A100374.P17513935052520018031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A046933 (n + 1) + 1).toNat

end

end A100374.P17513935052520018031

namespace A100374

/-- `A006519(A046933(n+1)+1)` -/
def P17513935052520018031.Spec : Prop :=
  ∀ n, P17513935052520018031.a n = A100374 (n + 1)

theorem P17513935052520018031.correct : P17513935052520018031.Spec := by
  intro n
  simp only [A100374, Nat.add_sub_cancel, A100374.P17513935052520018031.a, A100374.P3644398539316585198.a, A001223, A001223.P5034056745985311719.a, A006519, A006519.P10435570611646570274.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100374

/-! ## A100374.P10551729897265222096

`A330086(2*A001223(n+1))`
-/

namespace A100374.P10551729897265222096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330086 (2 * A001223 (n + 1)).toNat

end

end A100374.P10551729897265222096

namespace A100374

/-- `A330086(2*A001223(n+1))` -/
def P10551729897265222096.Spec : Prop :=
  ∀ n, P10551729897265222096.a n = A100374 (n + 1)

end A100374

/-! ## A100374.P11651670647323976331

`gcd(A029930(n), A129701(n+1))`
-/

namespace A100374.P11651670647323976331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029930 n) (A129701 (n + 1))

end

end A100374.P11651670647323976331

namespace A100374

/-- `gcd(A029930(n), A129701(n+1))` -/
def P11651670647323976331.Spec : Prop :=
  ∀ n, (P11651670647323976331.a n : ℤ) = A100374 (n + 1)

end A100374

/-! ## A100374.P17210201568560465018

`gcd(A062383(n), A291463(n+1))`
-/

namespace A100374.P17210201568560465018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062383 n) (A291463 (n + 1))

end

end A100374.P17210201568560465018

namespace A100374

/-- `gcd(A062383(n), A291463(n+1))` -/
def P17210201568560465018.Spec : Prop :=
  ∀ n, (P17210201568560465018.a n : ℤ) = A100374 (n + 1)

end A100374

/-! ## A100374.P7799372148031229580

`A001223(n+1)/A100375(n+1)`
-/

namespace A100374.P7799372148031229580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A100375 (n + 1) : ℚ)

end

end A100374.P7799372148031229580

namespace A100374

/-- `A001223(n+1)/A100375(n+1)` -/
def P7799372148031229580.Spec : Prop :=
  ∀ n, P7799372148031229580.a n = (A100374 (n + 1) : ℚ)

end A100374

/-! ## A100374.P5767208036765474269

`A006519(A065091(n+1)-A000040(n+1))`
-/

namespace A100374.P5767208036765474269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A065091 (n + 1) - A000040 (n + 1)).toNat

end

end A100374.P5767208036765474269

namespace A100374

/-- `A006519(A065091(n+1)-A000040(n+1))` -/
def P5767208036765474269.Spec : Prop :=
  ∀ n, P5767208036765474269.a n = A100374 (n + 1)

end A100374

/-! ## A100374.P4162466178971117193

`A001223(n+1)/A000265(2*A001223(n+1))`
-/

namespace A100374.P4162466178971117193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A000265 (2 * A001223 (n + 1)).toNat : ℚ)

end

end A100374.P4162466178971117193

namespace A100374

/-- `A001223(n+1)/A000265(2*A001223(n+1))` -/
def P4162466178971117193.Spec : Prop :=
  ∀ n, P4162466178971117193.a n = (A100374 (n + 1) : ℚ)

end A100374

/-! ## A100374.P8520158446514053707

`A006519(Δ[A000040(n+1)])`
-/

namespace A100374.P8520158446514053707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (f1 (n + 1) - f1 n).toNat

end

end A100374.P8520158446514053707

namespace A100374

/-- `A006519(Δ[A000040(n+1)])` -/
def P8520158446514053707.Spec : Prop :=
  ∀ n, P8520158446514053707.a n = A100374 (n + 1)

theorem P8520158446514053707.correct : P8520158446514053707.Spec := by
  intro n
  simp only [A100374, Nat.add_sub_cancel, A100374.P8520158446514053707.f1, A100374.P8520158446514053707.a, A100374.P3644398539316585198.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100374

/-! ## A100374.P2401201139446455402

`A006519(Δ[A006093(n+1)])`
-/

namespace A100374.P2401201139446455402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (f1 (n + 1) - f1 n).toNat

end

end A100374.P2401201139446455402

namespace A100374

/-- `A006519(Δ[A006093(n+1)])` -/
def P2401201139446455402.Spec : Prop :=
  ∀ n, P2401201139446455402.a n = A100374 (n + 1)

theorem P2401201139446455402.correct : P2401201139446455402.Spec := by
  intro n
  simp only [A100374, Nat.add_sub_cancel, A100374.P2401201139446455402.f1, A100374.P2401201139446455402.a, A100374.P3644398539316585198.a, A001223, A001223.P5034056745985311719.a, A006093, A006093.P2906174024863549003.a, A006519, A006519.P10435570611646570274.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100374

/-! ## A100374.P2510615353830560587

`A006519(Δ[A008864(n+1)])`
-/

namespace A100374.P2510615353830560587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (f1 (n + 1) - f1 n).toNat

end

end A100374.P2510615353830560587

namespace A100374

/-- `A006519(Δ[A008864(n+1)])` -/
def P2510615353830560587.Spec : Prop :=
  ∀ n, P2510615353830560587.a n = A100374 (n + 1)

theorem P2510615353830560587.correct : P2510615353830560587.Spec := by
  intro n
  simp only [A100374, Nat.add_sub_cancel, A100374.P2510615353830560587.f1, A100374.P2510615353830560587.a, A100374.P3644398539316585198.a, A001223, A001223.P5034056745985311719.a, A006519, A006519.P10435570611646570274.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100374

/-! ## A100374.P4593101673903264434

`A028233(Δ[A000040(n+1)])`
-/

namespace A100374.P4593101673903264434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (f1 (n + 1) - f1 n).toNat

end

end A100374.P4593101673903264434

namespace A100374

/-- `A028233(Δ[A000040(n+1)])` -/
def P4593101673903264434.Spec : Prop :=
  ∀ n, P4593101673903264434.a n = A100374 (n + 1)

end A100374

/-! ## A100374.P14684696601711848833

`A028233(Δ[A040976(n+1)])`
-/

namespace A100374.P14684696601711848833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (f1 (n + 1) - f1 n).toNat

end

end A100374.P14684696601711848833

namespace A100374

/-- `A028233(Δ[A040976(n+1)])` -/
def P14684696601711848833.Spec : Prop :=
  ∀ n, P14684696601711848833.a n = A100374 (n + 1)

end A100374

/-! ## A100374.P11931496078827187891

`A000079(val(Δ[A000040(n+1)], 2))`
-/

namespace A100374.P11931496078827187891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2)

end

end A100374.P11931496078827187891

namespace A100374

/-- `A000079(val(Δ[A000040(n+1)], 2))` -/
def P11931496078827187891.Spec : Prop :=
  ∀ n, P11931496078827187891.a n = A100374 (n + 1)

end A100374

/-! ## A100374.P14390741453954595670

`A006519(A006093(n+2)-A006093(n+1))`
-/

namespace A100374.P14390741453954595670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006093 (n + 2) - A006093 (n + 1)).toNat

end

end A100374.P14390741453954595670

namespace A100374

/-- `A006519(A006093(n+2)-A006093(n+1))` -/
def P14390741453954595670.Spec : Prop :=
  ∀ n, P14390741453954595670.a n = A100374 (n + 1)

theorem P14390741453954595670.correct : P14390741453954595670.Spec := by
  intro n
  simp only [A100374, Nat.add_sub_cancel, A100374.P14390741453954595670.a, A100374.P3644398539316585198.a, A001223, A001223.P5034056745985311719.a, A006093, A006093.P2906174024863549003.a, A006519, A006519.P10435570611646570274.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100374

/-! ## A100374.P5091897428170266409

`A006519(A008864(n+2)-A008864(n+1))`
-/

namespace A100374.P5091897428170266409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A008864 (n + 2) - A008864 (n + 1)).toNat

end

end A100374.P5091897428170266409

namespace A100374

/-- `A006519(A008864(n+2)-A008864(n+1))` -/
def P5091897428170266409.Spec : Prop :=
  ∀ n, P5091897428170266409.a n = A100374 (n + 1)

theorem P5091897428170266409.correct : P5091897428170266409.Spec := by
  intro n
  simp only [A100374, Nat.add_sub_cancel, A100374.P5091897428170266409.a, A100374.P3644398539316585198.a, A001223, A001223.P5034056745985311719.a, A006519, A006519.P10435570611646570274.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100374

/-! ## A100374.P9213409591791055293

`gcd(A000079(n), A001223(n+1))`
-/

namespace A100374.P9213409591791055293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A001223 (n + 1))

end

end A100374.P9213409591791055293

namespace A100374

/-- `gcd(A000079(n), A001223(n+1))` -/
def P9213409591791055293.Spec : Prop :=
  ∀ n, (P9213409591791055293.a n : ℤ) = A100374 (n + 1)

end A100374

/-!
# A100375: a(n) is the n-th consecutive prime difference divided by the largest power of 2 which divides it.

The programs for A100375, the canonical program `A100375.P7290689656260670325` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100375 has offset 1).

The definition of A100375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100375.P7290689656260670325

`A001223(n+1)/A006519(A001223(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100375

/-- `A001223(n+1)/A006519(A001223(n+1))` -/
def P7290689656260670325.Spec : Prop :=
  ∀ n, P7290689656260670325.a n = (A100375 (n + 1) : ℚ)

end A100375

/-! ## A100375.P644983775564528830

`A000265(A001223(n+1))`
-/

namespace A100375.P644983775564528830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001223 (n + 1)).toNat

end

end A100375.P644983775564528830

namespace A100375

/-- `A000265(A001223(n+1))` -/
def P644983775564528830.Spec : Prop :=
  ∀ n, P644983775564528830.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P9465175580758381521

`A086767(A046933(n+1))`
-/

namespace A100375.P9465175580758381521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 (A046933 (n + 1)).toNat

end

end A100375.P9465175580758381521

namespace A100375

/-- `A086767(A046933(n+1))` -/
def P9465175580758381521.Spec : Prop :=
  ∀ n, P9465175580758381521.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P7387950066878329095

`A086767(A100803(n+1))`
-/

namespace A100375.P7387950066878329095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 (A100803 (n + 1)).toNat

end

end A100375.P7387950066878329095

namespace A100375

/-- `A086767(A100803(n+1))` -/
def P7387950066878329095.Spec : Prop :=
  ∀ n, P7387950066878329095.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P737284436600977270

`A127197(A082910(n+1))`
-/

namespace A100375.P737284436600977270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127197 (A082910 (n + 1)).toNat

end

end A100375.P737284436600977270

namespace A100375

/-- `A127197(A082910(n+1))` -/
def P737284436600977270.Spec : Prop :=
  ∀ n, P737284436600977270.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P16054610710922305638

`A001223(n+1)/A100374(n+1)`
-/

namespace A100375.P16054610710922305638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A100374 (n + 1) : ℚ)

end

end A100375.P16054610710922305638

namespace A100375

/-- `A001223(n+1)/A100374(n+1)` -/
def P16054610710922305638.Spec : Prop :=
  ∀ n, P16054610710922305638.a n = (A100375 (n + 1) : ℚ)

end A100375

/-! ## A100375.P4339102515540572452

`A000265(A075526(n+1))`
-/

namespace A100375.P4339102515540572452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A075526 (n + 1)).toNat

end

end A100375.P4339102515540572452

namespace A100375

/-- `A000265(A075526(n+1))` -/
def P4339102515540572452.Spec : Prop :=
  ∀ n, P4339102515540572452.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P6685871219560478794

`A000265(A054541(n+2))`
-/

namespace A100375.P6685871219560478794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A054541 (n + 2)).toNat

end

end A100375.P6685871219560478794

namespace A100375

/-- `A000265(A054541(n+2))` -/
def P6685871219560478794.Spec : Prop :=
  ∀ n, P6685871219560478794.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P8990667052293423507

`A000265(A125266(n+2))`
-/

namespace A100375.P8990667052293423507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125266 (n + 2)).toNat

end

end A100375.P8990667052293423507

namespace A100375

/-- `A000265(A125266(n+2))` -/
def P8990667052293423507.Spec : Prop :=
  ∀ n, P8990667052293423507.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P1999079069347101869

`A000265(Δ[A000040(n+1)])`
-/

namespace A100375.P1999079069347101869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A100375.P1999079069347101869

namespace A100375

/-- `A000265(Δ[A000040(n+1)])` -/
def P1999079069347101869.Spec : Prop :=
  ∀ n, P1999079069347101869.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P10724517684771906048

`A000265(Δ[A006093(n+1)])`
-/

namespace A100375.P10724517684771906048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A100375.P10724517684771906048

namespace A100375

/-- `A000265(Δ[A006093(n+1)])` -/
def P10724517684771906048.Spec : Prop :=
  ∀ n, P10724517684771906048.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P12745639751239163924

`A028234(Δ[A000040(n+1)])`
-/

namespace A100375.P12745639751239163924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (f1 (n + 1) - f1 n).toNat

end

end A100375.P12745639751239163924

namespace A100375

/-- `A028234(Δ[A000040(n+1)])` -/
def P12745639751239163924.Spec : Prop :=
  ∀ n, P12745639751239163924.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P6291174832477202263

`A093803(Δ[A000040(n+1)])`
-/

namespace A100375.P6291174832477202263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (f1 (n + 1) - f1 n).toNat

end

end A100375.P6291174832477202263

namespace A100375

/-- `A093803(Δ[A000040(n+1)])` -/
def P6291174832477202263.Spec : Prop :=
  ∀ n, P6291174832477202263.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P15080560260393620786

`A139391(Δ[A000040(n+1)])`
-/

namespace A100375.P15080560260393620786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (f1 (n + 1) - f1 n).toNat

end

end A100375.P15080560260393620786

namespace A100375

/-- `A139391(Δ[A000040(n+1)])` -/
def P15080560260393620786.Spec : Prop :=
  ∀ n, P15080560260393620786.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P9194292280761204188

`A000265(A000040(n+2)-A008578(n+2))`
-/

namespace A100375.P9194292280761204188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000040 (n + 2) - A008578 (n + 2)).toNat

end

end A100375.P9194292280761204188

namespace A100375

/-- `A000265(A000040(n+2)-A008578(n+2))` -/
def P9194292280761204188.Spec : Prop :=
  ∀ n, P9194292280761204188.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P3359354694879592632

`A000265(Δ[record[A000010(n+1)]])`
-/

namespace A100375.P3359354694879592632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A100375.P3359354694879592632

namespace A100375

/-- `A000265(Δ[record[A000010(n+1)]])` -/
def P3359354694879592632.Spec : Prop :=
  ∀ n, P3359354694879592632.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P16687483282766402278

`A000265(Δ[record[A003958(n+1)]])`
-/

namespace A100375.P16687483282766402278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A100375.P16687483282766402278

namespace A100375

/-- `A000265(Δ[record[A003958(n+1)]])` -/
def P16687483282766402278.Spec : Prop :=
  ∀ n, P16687483282766402278.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P1276400533755540956

`A000265(Δ[eq[1, A001222(n+1)]])`
-/

namespace A100375.P1276400533755540956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100375.P1276400533755540956

namespace A100375

/-- `A000265(Δ[eq[1, A001222(n+1)]])` -/
def P1276400533755540956.Spec : Prop :=
  ∀ n, P1276400533755540956.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P13834063029749177963

`A000265(A262138(Δ[n²]))`
-/

namespace A100375.P13834063029749177963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A262138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A100375.P13834063029749177963

namespace A100375

/-- `A000265(A262138(Δ[n²]))` -/
def P13834063029749177963.Spec : Prop :=
  ∀ n, P13834063029749177963.a n = A100375 (n + 1)

end A100375

/-! ## A100375.P16936468887426763055

`A000265(A219606(2*n+1))`
-/

namespace A100375.P16936468887426763055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A219606 (2 * n + 1)).toNat

end

end A100375.P16936468887426763055

namespace A100375

/-- `A000265(A219606(2*n+1))` -/
def P16936468887426763055.Spec : Prop :=
  ∀ n, P16936468887426763055.a n = A100375 (n + 1)

end A100375

/-!
# A100376: a(n) is the largest number x such that for m=n to n+x-1, A006530(m) increases.

The programs for A100376, the canonical program `A100376.P793315732072041826` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100376 has offset 2).

The definition of A100376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100376.P6136578127373567572

`A079748(n+2)+1`
-/

namespace A100376.P6136578127373567572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079748 (n + 2) + 1

end

end A100376.P6136578127373567572

namespace A100376

/-- `A079748(n+2)+1` -/
def P6136578127373567572.Spec : Prop :=
  ∀ n, P6136578127373567572.a n = A100376 (n + 2)

end A100376

/-! ## A100376.P793315732072041826

`A070087(∑[1-A087429(n+1)]+1)-(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A100376

/-- `A070087(∑[1-A087429(n+1)]+1)-(n+1)` -/
def P793315732072041826.Spec : Prop :=
  ∀ n, P793315732072041826.a n = A100376 (n + 2)

theorem P793315732072041826.correct : P793315732072041826.Spec := by
  intro n
  simp only [A100376, Nat.add_sub_cancel]

end A100376

/-! ## A100376.P6884444542048982678

`gcd(A014886(n+1), A376307(A135137(n+1)))`
-/

namespace A100376.P6884444542048982678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014886 (n + 1)) (A376307 (A135137 (n + 1)).toNat)

end

end A100376.P6884444542048982678

namespace A100376

/-- `gcd(A014886(n+1), A376307(A135137(n+1)))` -/
def P6884444542048982678.Spec : Prop :=
  ∀ n, (P6884444542048982678.a n : ℤ) = A100376 (n + 2)

end A100376

/-! ## A100376.P17773708056852804839

`gcd(A006015(A001676(n+1)), A277012(n))`
-/

namespace A100376.P17773708056852804839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006015 (A001676 (n + 1)).toNat) (A277012 n)

end

end A100376.P17773708056852804839

namespace A100376

/-- `gcd(A006015(A001676(n+1)), A277012(n))` -/
def P17773708056852804839.Spec : Prop :=
  ∀ n, (P17773708056852804839.a n : ℤ) = A100376 (n + 2)

end A100376

/-! ## A100376.P12888282170404136153

`gcd(A139614(n), A343180(A318228(n+1)))`
-/

namespace A100376.P12888282170404136153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139614 n) (A343180 (A318228 (n + 1)).toNat)

end

end A100376.P12888282170404136153

namespace A100376

/-- `gcd(A139614(n), A343180(A318228(n+1)))` -/
def P12888282170404136153.Spec : Prop :=
  ∀ n, (P12888282170404136153.a n : ℤ) = A100376 (n + 2)

end A100376

/-!
# A100377: Number of prime numbers >= P(n)# and < P(n+1)# where P(i)=i-th prime, P(i)#=i-th primorial.

The programs for A100377, there is no canonical definition to state claims against.
-/

/-! ## A100377.P8868589437022442960

`floor(A072236(n+1)+acot(n))`
-/

namespace A100377.P8868589437022442960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072236 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A100377.P8868589437022442960

/-! ## A100377.P8851936885109508627

`Δ[A000849(n+1)]+floor(acot(n))`
-/

namespace A100377.P8851936885109508627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A100377.P8851936885109508627

/-! ## A100377.P11938738741293960935

`A072236((n+1)%a(n-1))` with `a(0)=3`
-/

namespace A100377.P11938738741293960935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A072236 (Int.tmod (n + 1 : ℤ) (a (n - 1))).toNat

end

end A100377.P11938738741293960935

/-! ## A100377.P821606459726433052

`Δ[A000849(comp[(n+1)*Δ[n^3]])]`
-/

namespace A100377.P821606459726433052
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000849 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100377.P821606459726433052

/-! ## A100377.P13185651664071737837

`A072236(n+1)+A067158(n)`
-/

namespace A100377.P13185651664071737837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072236 (n + 1) + A067158 (n + 11)

end

end A100377.P13185651664071737837

/-!
# A100380: a(n) = least k such that prime(n) + A002110(k) is prime.

The programs for A100380, there is no canonical definition to state claims against.
-/

/-! ## A100380.P245854558455631190

`A001221(A092793(n+2)-A000040(n+1))`
-/

namespace A100380.P245854558455631190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A092793 (n + 2) - A000040 (n + 1)).toNat

end

end A100380.P245854558455631190

/-! ## A100380.P16544920683314006003

`A001222(A092793(n+2)-A000040(n+1))`
-/

namespace A100380.P16544920683314006003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A092793 (n + 2) - A000040 (n + 1)).toNat

end

end A100380.P16544920683314006003

/-! ## A100380.P16647681693306813292

`A001222(A092793(n+2)-record[A006530(n+2)])`
-/

namespace A100380.P16647681693306813292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A092793 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100380.P16647681693306813292

/-! ## A100380.P7427286971523499831

`A001222(A092793(n+2)-record[A020639(n+2)])`
-/

namespace A100380.P7427286971523499831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A092793 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100380.P7427286971523499831

/-! ## A100380.P644523200690395864

`A001221(A092793(n+2)-p?[A018252(n+1)-7])`
-/

namespace A100380.P644523200690395864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A092793 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100380.P644523200690395864

/-!
# A100381: a(n) = 2^n*binomial(n,2).

The programs for A100381, the canonical program `A100381.P11000662029855507408` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100381 has offset 0).

The definition of A100381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(n, 2)` (program `A100381.P11000662029855507408`, by `A100381.P11000662029855507408.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100381.P11000662029855507408

`2^n*C(n, 2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100381

/-- `2^n*C(n, 2)` -/
def P11000662029855507408.Spec : Prop :=
  ∀ n, (P11000662029855507408.a n : ℤ) = A100381 n

theorem P11000662029855507408.correct : P11000662029855507408.Spec := by
  intro n
  simp only [A100381]

end A100381

/-! ## A100381.P15258559399801255377

`2*A001815(n)`
-/

namespace A100381.P15258559399801255377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001815 n

end

end A100381.P15258559399801255377

namespace A100381

/-- `2*A001815(n)` -/
def P15258559399801255377.Spec : Prop :=
  ∀ n, P15258559399801255377.a n = A100381 n

end A100381

/-! ## A100381.P9384559987602520607

`C(n, 2)/2^-n`
-/

namespace A100381.P9384559987602520607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A100381.P9384559987602520607

namespace A100381

/-- `C(n, 2)/2^-n` -/
def P9384559987602520607.Spec : Prop :=
  ∀ n, P9384559987602520607.a n = (A100381 n : ℚ)

end A100381

/-! ## A100381.P7811787055395053083

`(∑[n]-n)*2^n`
-/

namespace A100381.P7811787055395053083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * (2 ^ n : ℤ)

end

end A100381.P7811787055395053083

namespace A100381

/-- `(∑[n]-n)*2^n` -/
def P7811787055395053083.Spec : Prop :=
  ∀ n, P7811787055395053083.a n = A100381 n

end A100381

/-! ## A100381.P11335160541771125961

`A048504(n)-(n+1)`
-/

namespace A100381.P11335160541771125961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048504 n - (n + 1 : ℤ)

end

end A100381.P11335160541771125961

namespace A100381

/-- `A048504(n)-(n+1)` -/
def P11335160541771125961.Spec : Prop :=
  ∀ n, P11335160541771125961.a n = A100381 n

end A100381

/-! ## A100381.P17471317581763947953

`A052481(n)-2^n`
-/

namespace A100381.P17471317581763947953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 n - (2 ^ n : ℤ)

end

end A100381.P17471317581763947953

namespace A100381

/-- `A052481(n)-2^n` -/
def P17471317581763947953.Spec : Prop :=
  ∀ n, P17471317581763947953.a n = A100381 n

theorem P17471317581763947953.correct : P17471317581763947953.Spec := by
  intro n
  simp only [A100381, Nat.add_sub_cancel, A100381.P17471317581763947953.a, A100381.P11000662029855507408.a, A052481, A052481.P12009171480250880183.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100381

/-! ## A100381.P14709834997893693758

`abs((1-n)*A118442(n))`
-/

namespace A100381.P14709834997893693758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) * A118442 n|

end

end A100381.P14709834997893693758

namespace A100381

/-- `abs((1-n)*A118442(n))` -/
def P14709834997893693758.Spec : Prop :=
  ∀ n, P14709834997893693758.a n = A100381 n

end A100381

/-! ## A100381.P16775235796001992887

`abs(n/2*A159964(n))`
-/

namespace A100381.P16775235796001992887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 2 * (A159964 n : ℚ)|

end

end A100381.P16775235796001992887

namespace A100381

/-- `abs(n/2*A159964(n))` -/
def P16775235796001992887.Spec : Prop :=
  ∀ n, P16775235796001992887.a n = (A100381 n : ℚ)

end A100381

/-! ## A100381.P15018311265436633066

`∑[(n-1)*A129953(n)]`
-/

namespace A100381.P15018311265436633066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A129953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100381.P15018311265436633066

namespace A100381

/-- `∑[(n-1)*A129953(n)]` -/
def P15018311265436633066.Spec : Prop :=
  ∀ n, P15018311265436633066.a n = A100381 n

end A100381

/-! ## A100381.P699334064688701195

`∑[(n+2)*A139756(n)]`
-/

namespace A100381.P699334064688701195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100381.P699334064688701195

namespace A100381

/-- `∑[(n+2)*A139756(n)]` -/
def P699334064688701195.Spec : Prop :=
  ∀ n, P699334064688701195.a n = A100381 n

end A100381

/-! ## A100381.P4726093528132231462

`A178987(n+1)+2^n`
-/

namespace A100381.P4726093528132231462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 (n + 1) + (2 ^ n : ℤ)

end

end A100381.P4726093528132231462

namespace A100381

/-- `A178987(n+1)+2^n` -/
def P4726093528132231462.Spec : Prop :=
  ∀ n, P4726093528132231462.a n = A100381 n

end A100381

/-! ## A100381.P6874319180386249961

`abs((1-n)*A085750(n+1))`
-/

namespace A100381.P6874319180386249961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) * A085750 (n + 1)|

end

end A100381.P6874319180386249961

namespace A100381

/-- `abs((1-n)*A085750(n+1))` -/
def P6874319180386249961.Spec : Prop :=
  ∀ n, P6874319180386249961.a n = A100381 n

end A100381

/-! ## A100381.P7068237981617569296

`a(n-1)+A058922(n)+a(n-1)` with `a(0)=0`
-/

namespace A100381.P7068237981617569296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A058922 n + a (n - 1))

end

end A100381.P7068237981617569296

namespace A100381

/-- `a(n-1)+A058922(n)+a(n-1)` -/
def P7068237981617569296.Spec : Prop :=
  ∀ n, P7068237981617569296.a n = A100381 n

end A100381

/-! ## A100381.P4846911621541260435

`A330592(A004277(n))`
-/

namespace A100381.P4846911621541260435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330592 (A004277 n).toNat

end

end A100381.P4846911621541260435

namespace A100381

/-- `A330592(A004277(n))` -/
def P4846911621541260435.Spec : Prop :=
  ∀ n, P4846911621541260435.a n = A100381 n

end A100381

/-! ## A100381.P16117671342884119200

`A330592(A004275(n+1))`
-/

namespace A100381.P16117671342884119200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330592 (A004275 (n + 1)).toNat

end

end A100381.P16117671342884119200

namespace A100381

/-- `A330592(A004275(n+1))` -/
def P16117671342884119200.Spec : Prop :=
  ∀ n, P16117671342884119200.a n = A100381 n

end A100381

/-! ## A100381.P5565520954631270635

`A330592(A300576(n+2))`
-/

namespace A100381.P5565520954631270635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330592 (A300576 (n + 2)).toNat

end

end A100381.P5565520954631270635

namespace A100381

/-- `A330592(A300576(n+2))` -/
def P5565520954631270635.Spec : Prop :=
  ∀ n, P5565520954631270635.a n = A100381 n

end A100381

/-! ## A100381.P16999089258187288853

`A048482(n)-A002064(n)`
-/

namespace A100381.P16999089258187288853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048482 n - A002064 n

end

end A100381.P16999089258187288853

namespace A100381

/-- `A048482(n)-A002064(n)` -/
def P16999089258187288853.Spec : Prop :=
  ∀ n, P16999089258187288853.a n = A100381 n

end A100381

/-! ## A100381.P21493884994875739

`A084857(n)-A001788(n)`
-/

namespace A100381.P21493884994875739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084857 n - A001788 n

end

end A100381.P21493884994875739

namespace A100381

/-- `A084857(n)-A001788(n)` -/
def P21493884994875739.Spec : Prop :=
  ∀ n, P21493884994875739.a n = A100381 n

end A100381

/-! ## A100381.P204425381325819198

`A100312(n)-A130129(n)`
-/

namespace A100381.P204425381325819198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100312 n - A130129 n

end

end A100381.P204425381325819198

namespace A100381

/-- `A100312(n)-A130129(n)` -/
def P204425381325819198.Spec : Prop :=
  ∀ n, P204425381325819198.a n = A100381 n

end A100381

/-! ## A100381.P1458285942162258436

`lcm(A001787(n), A097064(n))`
-/

namespace A100381.P1458285942162258436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001787 n) (A097064 n)

end

end A100381.P1458285942162258436

namespace A100381

/-- `lcm(A001787(n), A097064(n))` -/
def P1458285942162258436.Spec : Prop :=
  ∀ n, (P1458285942162258436.a n : ℤ) = A100381 n

end A100381

/-!
# A100382: Record values of A062700.

The programs for A100382, there is no canonical definition to state claims against.
-/

/-! ## A100382.P8274332437525382697

`record[A062700(n+1)]`
-/

namespace A100382.P8274332437525382697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100382.P8274332437525382697

/-! ## A100382.P16525362031021097623

`or(1, record[A062700(A005408(n)-n)])`
-/

namespace A100382.P16525362031021097623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062700 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A100382.P16525362031021097623

/-! ## A100382.P5155702601209418458

`record[A062700(A008619(n))-n%2]`
-/

namespace A100382.P5155702601209418458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062700 (A008619 n).toNat - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100382.P5155702601209418458

/-! ## A100382.P9847893469938315161

`A033999(n)²*record[A062700(A008619(n))]`
-/

namespace A100382.P9847893469938315161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062700 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100382.P9847893469938315161

/-! ## A100382.P8752929684350078523

`record[A062700(A008619(n))]*A071222(2*n)`
-/

namespace A100382.P8752929684350078523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062700 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A071222 (2 * n)

end

end A100382.P8752929684350078523

/-! ## A100382.P8511655831043266193

`record[A062700(A008619(n))]%A072251(n)`
-/

namespace A100382.P8511655831043266193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062700 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A072251 n)

end

end A100382.P8511655831043266193

/-! ## A100382.P1651436879055123785

`record[A062700(A005408(n)-n)]%A176662(n)²`
-/

namespace A100382.P1651436879055123785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062700 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A176662 n ^ 2)

end

end A100382.P1651436879055123785

/-!
# A100384: a(n) = the smallest number x >= 2 such that for m = x to x + n - 1, A006530(m) increases.

The programs for A100384, there is no canonical definition to state claims against.
-/

/-! ## A100384.P10910826027317594769

`A051801(2*A324954(n))`
-/

namespace A100384.P10910826027317594769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (2 * A324954 n).toNat

end

end A100384.P10910826027317594769

/-! ## A100384.P14354706915536112407

`∏{d}[A335602(n), A161768(#)]`
-/

namespace A100384.P14354706915536112407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A161768 d

end

end A100384.P14354706915536112407

/-!
# A100385: a(n) is the least number x >= 2 such that for m=x to x+n-1, A006530(m) decreases.

The programs for A100385, there is no canonical definition to state claims against.
-/

/-! ## A100385.P670114551511747949

`A151574(A075272(n)-1)+1`
-/

namespace A100385.P670114551511747949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 (A075272 n - 1).toNat + 1

end

end A100385.P670114551511747949

/-!
# A100387: a(n) is the largest number x such that for m=n to n+x-1, A006530(m) decreases.

The programs for A100387, the canonical program `A100387.P11346560181924153831` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100387 has offset 2).

The definition of A100387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100387.P11346560181924153831

`A070089(∑[A087429(n+1)]+1)-(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A100387

/-- `A070089(∑[A087429(n+1)]+1)-(n+1)` -/
def P11346560181924153831.Spec : Prop :=
  ∀ n, P11346560181924153831.a n = A100387 (n + 2)

theorem P11346560181924153831.correct : P11346560181924153831.Spec := by
  intro n
  simp only [A100387, Nat.add_sub_cancel]

end A100387

/-! ## A100387.P7738337719007816822

`gcd(n+9, A061579(A167040(n)))`
-/

namespace A100387.P7738337719007816822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 9 : ℤ) (A061579 (A167040 n).toNat)

end

end A100387.P7738337719007816822

namespace A100387

/-- `gcd(n+9, A061579(A167040(n)))` -/
def P7738337719007816822.Spec : Prop :=
  ∀ n, (P7738337719007816822.a n : ℤ) = A100387 (n + 2)

end A100387

/-! ## A100387.P4304825058844161374

`gcd(3*(n+1), A059292(A066094(n)))`
-/

namespace A100387.P4304825058844161374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * (n + 1) : ℤ) (A059292 (A066094 n).toNat)

end

end A100387.P4304825058844161374

namespace A100387

/-- `gcd(3*(n+1), A059292(A066094(n)))` -/
def P4304825058844161374.Spec : Prop :=
  ∀ n, (P4304825058844161374.a n : ℤ) = A100387 (n + 2)

end A100387

/-! ## A100387.P12757731733838408069

`gcd(A014085(A045912(n)), A080723(n))`
-/

namespace A100387.P12757731733838408069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014085 (A045912 n).toNat) (A080723 n)

end

end A100387.P12757731733838408069

namespace A100387

/-- `gcd(A014085(A045912(n)), A080723(n))` -/
def P12757731733838408069.Spec : Prop :=
  ∀ n, (P12757731733838408069.a n : ℤ) = A100387 (n + 2)

end A100387

/-! ## A100387.P12436871001706436507

`gcd(A061579(A167040(n)), A080727(n))`
-/

namespace A100387.P12436871001706436507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061579 (A167040 n).toNat) (A080727 n)

end

end A100387.P12436871001706436507

namespace A100387

/-- `gcd(A061579(A167040(n)), A080727(n))` -/
def P12436871001706436507.Spec : Prop :=
  ∀ n, (P12436871001706436507.a n : ℤ) = A100387 (n + 2)

end A100387

/-!
# A100388: a(n) = Bell(n) + Fibonacci(n).

The programs for A100388, there is no canonical definition to state claims against.
-/

/-! ## A100388.P11620858605352803645

`A000045(n)+A000110(n)`
-/

namespace A100388.P11620858605352803645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A000110 n

end

end A100388.P11620858605352803645

/-! ## A100388.P3433262729925208208

`A000110(n)+A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100388.P3433262729925208208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + A000045 n

end

end A100388.P3433262729925208208

/-! ## A100388.P205097666959071309

`A000045(n)+abs(A292935(n))`
-/

namespace A100388.P205097666959071309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + |A292935 n|

end

end A100388.P205097666959071309

/-! ## A100388.P15161313497055702978

`A011971(∑[n])+A000045(n)`
-/

namespace A100388.P15161313497055702978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) + A000045 n

end

end A100388.P15161313497055702978

/-! ## A100388.P16064396659591124207

`A095149(∑[n])+A000045(n)`
-/

namespace A100388.P16064396659591124207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) + A000045 n

end

end A100388.P16064396659591124207

/-! ## A100388.P15511368503331843965

`A108087(∑[n])+A000045(n)`
-/

namespace A100388.P15511368503331843965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) + A000045 n

end

end A100388.P15511368503331843965

/-! ## A100388.P17379065928766568939

`A123081(∑[n])+A000045(n)`
-/

namespace A100388.P17379065928766568939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (∑ j ∈ Finset.range (n + 1), f1 j) + A000045 n

end

end A100388.P17379065928766568939

/-! ## A100388.P13355190393906919221

`A186020(∑[n])+A000045(n)`
-/

namespace A100388.P13355190393906919221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) + A000045 n

end

end A100388.P13355190393906919221

/-! ## A100388.P6535655473896605817

`A327884(∑[n])+A000045(n)`
-/

namespace A100388.P6535655473896605817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 (∑ j ∈ Finset.range (n + 1), f1 j) + A000045 n

end

end A100388.P6535655473896605817

/-!
# A100389: a(n) = Bell(n) - Fibonacci(n).

The programs for A100389, there is no canonical definition to state claims against.
-/

/-! ## A100389.P1875209427902554330

`A000110(n)-A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100389.P1875209427902554330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A000045 n

end

end A100389.P1875209427902554330

/-! ## A100389.P14495414676964153209

`abs(A292935(n))-A000045(n)`
-/

namespace A100389.P14495414676964153209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A000045 n

end

end A100389.P14495414676964153209

/-! ## A100389.P4388083965678583634

`A011971(∑[n])-A000045(n)`
-/

namespace A100389.P4388083965678583634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A000045 n

end

end A100389.P4388083965678583634

/-! ## A100389.P12033074300193445928

`A095149(∑[n])-A000045(n)`
-/

namespace A100389.P12033074300193445928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - A000045 n

end

end A100389.P12033074300193445928

/-! ## A100389.P10331428094393196798

`A108087(∑[n])-A000045(n)`
-/

namespace A100389.P10331428094393196798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - A000045 n

end

end A100389.P10331428094393196798

/-! ## A100389.P12355468685039060605

`A123081(∑[n])-A000045(n)`
-/

namespace A100389.P12355468685039060605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (∑ j ∈ Finset.range (n + 1), f1 j) - A000045 n

end

end A100389.P12355468685039060605

/-! ## A100389.P14862229488243287950

`A186020(∑[n])-A000045(n)`
-/

namespace A100389.P14862229488243287950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) - A000045 n

end

end A100389.P14862229488243287950

/-! ## A100389.P3534074910679737113

`A327884(∑[n])-A000045(n)`
-/

namespace A100389.P3534074910679737113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 (∑ j ∈ Finset.range (n + 1), f1 j) - A000045 n

end

end A100389.P3534074910679737113

/-! ## A100389.P4727710836821036029

`Δ[A005001(n)]-A000045(n)`
-/

namespace A100389.P4727710836821036029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000045 n

end

end A100389.P4727710836821036029

/-!
# A100390: Numbers n where A006530 has a local minimum.

The programs for A100390, the canonical program `A100390.P17410593274530359535` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100390 has offset 1).

The definition of A100390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082418, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100390.P17410593274530359535

`A082418(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A100390

/-- `A082418(n+1)+1` -/
def P17410593274530359535.Spec : Prop :=
  ∀ n, P17410593274530359535.a n = A100390 (n + 1)

theorem P17410593274530359535.correct : P17410593274530359535.Spec := by
  intro n
  simp only [A100390, Nat.add_sub_cancel]

end A100390

/-! ## A100390.P12939727797425141918

`∪[A082421(n+1), A082422(n+1)]+1`
-/

namespace A100390.P12939727797425141918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A100390.P12939727797425141918

namespace A100390

/-- `∪[A082421(n+1), A082422(n+1)]+1` -/
def P12939727797425141918.Spec : Prop :=
  ∀ n, (P12939727797425141918.a n : ℤ) = A100390 (n + 1)

end A100390

/-! ## A100390.P1563999204825939833

`∩[A070087(n+1)+1, A070089(n+1)]`
-/

namespace A100390.P1563999204825939833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100390.P1563999204825939833

namespace A100390

/-- `∩[A070087(n+1)+1, A070089(n+1)]` -/
def P1563999204825939833.Spec : Prop :=
  ∀ n, (P1563999204825939833.a n : ℤ) = A100390 (n + 1)

end A100390

/-! ## A100390.P17559843716096467593

`A020725(A082418(n+1))`
-/

namespace A100390.P17559843716096467593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A082418 (n + 1)).toNat

end

end A100390.P17559843716096467593

namespace A100390

/-- `A020725(A082418(n+1))` -/
def P17559843716096467593.Spec : Prop :=
  ∀ n, P17559843716096467593.a n = A100390 (n + 1)

end A100390

/-! ## A100390.P1885473485557158355

`∩[A020725(A070087(n+1)), A070089(n+1)]`
-/

namespace A100390.P1885473485557158355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A070087 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100390.P1885473485557158355

namespace A100390

/-- `∩[A020725(A070087(n+1)), A070089(n+1)]` -/
def P1885473485557158355.Spec : Prop :=
  ∀ n, (P1885473485557158355.a n : ℤ) = A100390 (n + 1)

end A100390

/-! ## A100390.P2325360976566531471

`A020725(∪[A082421(n+1), A082422(n+1)])`
-/

namespace A100390.P2325360976566531471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082422 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A100390.P2325360976566531471

namespace A100390

/-- `A020725(∪[A082421(n+1), A082422(n+1)])` -/
def P2325360976566531471.Spec : Prop :=
  ∀ n, P2325360976566531471.a n = A100390 (n + 1)

end A100390

/-! ## A100390.P10710477237851410103

`A065475(∪[A082421(n+1), A082422(n+1)])`
-/

namespace A100390.P10710477237851410103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082422 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A100390.P10710477237851410103

namespace A100390

/-- `A065475(∪[A082421(n+1), A082422(n+1)])` -/
def P10710477237851410103.Spec : Prop :=
  ∀ n, P10710477237851410103.a n = A100390 (n + 1)

end A100390

/-!
# A100391: Prime powers which are local minima of A006530.

The programs for A100391, there is no canonical definition to state claims against.
-/

/-! ## A100391.P10403208155985037784

`filter[A100390(n+1), A069513(#)]`
-/

namespace A100391.P10403208155985037784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A100391.P10403208155985037784

/-! ## A100391.P9170132898421866621

`filter[A100390(n+1), A268340(#)]`
-/

namespace A100391.P9170132898421866621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268340 (f1 j).toNat = 1) n)

end

end A100391.P9170132898421866621

/-! ## A100391.P17391740462380773561

`record[A034699(A082418(n+1)+1)]`
-/

namespace A100391.P17391740462380773561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A082418 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100391.P17391740462380773561

/-! ## A100391.P3933885078381769860

`∩[A000961(n+1), A100390(n+1)]`
-/

namespace A100391.P3933885078381769860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100391.P3933885078381769860

/-! ## A100391.P5132515118784313226

`∩[A025475(n+1), A100390(n+1)]`
-/

namespace A100391.P5132515118784313226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100391.P5132515118784313226

/-!
# A100392: Numbers k such that A006530(k-1) < A006530(k) > A006530(k+1).

The programs for A100392, the canonical program `A100392.P5549897110138831043` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100392 has offset 1).

The definition of A100392 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082417, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100392.P5549897110138831043

`A082417(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A100392

/-- `A082417(n+1)+1` -/
def P5549897110138831043.Spec : Prop :=
  ∀ n, P5549897110138831043.a n = A100392 (n + 1)

theorem P5549897110138831043.correct : P5549897110138831043.Spec := by
  intro n
  simp only [A100392, Nat.add_sub_cancel]

end A100392

/-! ## A100392.P8589204012232817942

`∪[A065091(n+1), A100393(n+1)]`
-/

namespace A100392.P8589204012232817942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100392.P8589204012232817942

namespace A100392

/-- `∪[A065091(n+1), A100393(n+1)]` -/
def P8589204012232817942.Spec : Prop :=
  ∀ n, (P8589204012232817942.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P2564419157569025009

`∩[A070087(n+1), A070089(n+1)+1]`
-/

namespace A100392.P2564419157569025009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100392.P2564419157569025009

namespace A100392

/-- `∩[A070087(n+1), A070089(n+1)+1]` -/
def P2564419157569025009.Spec : Prop :=
  ∀ n, (P2564419157569025009.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P9682316344689864098

`A020725(A082417(n+1))`
-/

namespace A100392.P9682316344689864098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A082417 (n + 1)).toNat

end

end A100392.P9682316344689864098

namespace A100392

/-- `A020725(A082417(n+1))` -/
def P9682316344689864098.Spec : Prop :=
  ∀ n, P9682316344689864098.a n = A100392 (n + 1)

end A100392

/-! ## A100392.P2987810173756866963

`A153152(eq[2, A100376(n+2)]+2)`
-/

namespace A100392.P2987810173756866963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100376 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A100392.P2987810173756866963

namespace A100392

/-- `A153152(eq[2, A100376(n+2)]+2)` -/
def P2987810173756866963.Spec : Prop :=
  ∀ n, P2987810173756866963.a n = A100392 (n + 1)

end A100392

/-! ## A100392.P11204105479472242875

`eq[A006530(n+1), A093074(n+1)]+1`
-/

namespace A100392.P11204105479472242875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100392.P11204105479472242875

namespace A100392

/-- `eq[A006530(n+1), A093074(n+1)]+1` -/
def P11204105479472242875.Spec : Prop :=
  ∀ n, (P11204105479472242875.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P17825236490719399982

`eq[A025492(n+1), A093074(n+1)]+1`
-/

namespace A100392.P17825236490719399982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100392.P17825236490719399982

namespace A100392

/-- `eq[A025492(n+1), A093074(n+1)]+1` -/
def P17825236490719399982.Spec : Prop :=
  ∀ n, (P17825236490719399982.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P8636306570346084903

`eq[A093074(n+1), A284695(n+1)]+1`
-/

namespace A100392.P8636306570346084903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100392.P8636306570346084903

namespace A100392

/-- `eq[A093074(n+1), A284695(n+1)]+1` -/
def P8636306570346084903.Spec : Prop :=
  ∀ n, (P8636306570346084903.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P10590482970349977928

`eq[A093074(n+1), A299766(n+1)]+1`
-/

namespace A100392.P10590482970349977928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100392.P10590482970349977928

namespace A100392

/-- `eq[A093074(n+1), A299766(n+1)]+1` -/
def P10590482970349977928.Spec : Prop :=
  ∀ n, (P10590482970349977928.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P506890270098795702

`eq[A093074(n+1), A345931(n+1)]+1`
-/

namespace A100392.P506890270098795702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100392.P506890270098795702

namespace A100392

/-- `eq[A093074(n+1), A345931(n+1)]+1` -/
def P506890270098795702.Spec : Prop :=
  ∀ n, (P506890270098795702.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P16915164865168804573

`eq[A074399(n+2), A074399(n+1)]+2`
-/

namespace A100392.P16915164865168804573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A100392.P16915164865168804573

namespace A100392

/-- `eq[A074399(n+2), A074399(n+1)]+2` -/
def P16915164865168804573.Spec : Prop :=
  ∀ n, (P16915164865168804573.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P16813002644012210894

`eq[A252489(n+2), A252489(n+1)]+2`
-/

namespace A100392.P16813002644012210894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A100392.P16813002644012210894

namespace A100392

/-- `eq[A252489(n+2), A252489(n+1)]+2` -/
def P16813002644012210894.Spec : Prop :=
  ∀ n, (P16813002644012210894.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P2785414162599238846

`∩[A070087(n+1), A020725(A070089(n+1))]`
-/

namespace A100392.P2785414162599238846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A070089 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100392.P2785414162599238846

namespace A100392

/-- `∩[A070087(n+1), A020725(A070089(n+1))]` -/
def P2785414162599238846.Spec : Prop :=
  ∀ n, (P2785414162599238846.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P4087740520636385199

`eq[A014963(A053585(n+1)), A093074(n+1)]+1`
-/

namespace A100392.P4087740520636385199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053585 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100392.P4087740520636385199

namespace A100392

/-- `eq[A014963(A053585(n+1)), A093074(n+1)]+1` -/
def P4087740520636385199.Spec : Prop :=
  ∀ n, (P4087740520636385199.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P6535202454899938580

`eq[A055396(A093074(n+1)), A061395(n+1)]+1`
-/

namespace A100392.P6535202454899938580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A093074 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100392.P6535202454899938580

namespace A100392

/-- `eq[A055396(A093074(n+1)), A061395(n+1)]+1` -/
def P6535202454899938580.Spec : Prop :=
  ∀ n, (P6535202454899938580.a n : ℤ) = A100392 (n + 1)

end A100392

/-! ## A100392.P6693852679641707919

`eq[0, Δ[A006530((n+1)*(n+2))]]+2`
-/

namespace A100392.P6693852679641707919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A100392.P6693852679641707919

namespace A100392

/-- `eq[0, Δ[A006530((n+1)*(n+2))]]+2` -/
def P6693852679641707919.Spec : Prop :=
  ∀ n, (P6693852679641707919.a n : ℤ) = A100392 (n + 1)

end A100392

/-!
# A100393: Composite numbers k such that Gpf(k-1) < Gpf(k) > Gpf(k+1), where Gpf = A006530.

The programs for A100393, the canonical program `A100393.P10076484748129395392` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100393 has offset 1).

The definition of A100393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6784 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100393.P10076484748129395392

`filter[A100392(n+1), A005171(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A100393

/-- `filter[A100392(n+1), A005171(#)]` -/
def P10076484748129395392.Spec : Prop :=
  ∀ n, P10076484748129395392.a n = A100393 (n + 1)

theorem P10076484748129395392.correct : P10076484748129395392.Spec := by
  intro n
  simp only [A100393, Nat.add_sub_cancel]

end A100393

/-! ## A100393.P10015177832028871043

`filter[A100392(n+1), A066247(#)]`
-/

namespace A100393.P10015177832028871043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A100393.P10015177832028871043

namespace A100393

/-- `filter[A100392(n+1), A066247(#)]` -/
def P10015177832028871043.Spec : Prop :=
  ∀ n, P10015177832028871043.a n = A100393 (n + 1)

end A100393

/-! ## A100393.P11040896389083371610

`filter[A100392(n+1), A202238(#)]`
-/

namespace A100393.P11040896389083371610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A100393.P11040896389083371610

namespace A100393

/-- `filter[A100392(n+1), A202238(#)]` -/
def P11040896389083371610.Spec : Prop :=
  ∀ n, P11040896389083371610.a n = A100393 (n + 1)

end A100393

/-! ## A100393.P11389867274626508397

`filter[A100392(n+1), A292438(#)]`
-/

namespace A100393.P11389867274626508397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A100393.P11389867274626508397

namespace A100393

/-- `filter[A100392(n+1), A292438(#)]` -/
def P11389867274626508397.Spec : Prop :=
  ∀ n, P11389867274626508397.a n = A100393 (n + 1)

end A100393

/-! ## A100393.P10798209333498911086

`filter[A100392(n+1), A323162(#)]`
-/

namespace A100393.P10798209333498911086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A100393.P10798209333498911086

namespace A100393

/-- `filter[A100392(n+1), A323162(#)]` -/
def P10798209333498911086.Spec : Prop :=
  ∀ n, P10798209333498911086.a n = A100393 (n + 1)

end A100393

/-! ## A100393.P5417679151987957326

`∩[A087430(n+1), A100392(n+1)]`
-/

namespace A100393.P5417679151987957326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P5417679151987957326

namespace A100393

/-- `∩[A087430(n+1), A100392(n+1)]` -/
def P5417679151987957326.Spec : Prop :=
  ∀ n, (P5417679151987957326.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P4812036268502997972

`filter[A100392(n+1), A174898(#)]`
-/

namespace A100393.P4812036268502997972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A100393.P4812036268502997972

namespace A100393

/-- `filter[A100392(n+1), A174898(#)]` -/
def P4812036268502997972.Spec : Prop :=
  ∀ n, P4812036268502997972.a n = A100393 (n + 1)

end A100393

/-! ## A100393.P4896587546530298842

`∩[A002808(n+1), A100392(n+1)]`
-/

namespace A100393.P4896587546530298842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P4896587546530298842

namespace A100393

/-- `∩[A002808(n+1), A100392(n+1)]` -/
def P4896587546530298842.Spec : Prop :=
  ∀ n, (P4896587546530298842.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P10702579579545656608

`∩[A018252(n+1), A100392(n+1)]`
-/

namespace A100393.P10702579579545656608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P10702579579545656608

namespace A100393

/-- `∩[A018252(n+1), A100392(n+1)]` -/
def P10702579579545656608.Spec : Prop :=
  ∀ n, (P10702579579545656608.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P8521647858401953202

`∩[A100392(n+1), A141468(n+1)]`
-/

namespace A100393.P8521647858401953202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P8521647858401953202

namespace A100393

/-- `∩[A100392(n+1), A141468(n+1)]` -/
def P8521647858401953202.Spec : Prop :=
  ∀ n, (P8521647858401953202.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P13057500770238557995

`∩[A079364(n+1), A100392(n+1)]`
-/

namespace A100393.P13057500770238557995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P13057500770238557995

namespace A100393

/-- `∩[A079364(n+1), A100392(n+1)]` -/
def P13057500770238557995.Spec : Prop :=
  ∀ n, (P13057500770238557995.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P498386941448065770

`∩[A100392(n+1), A171845(n+1)]`
-/

namespace A100393.P498386941448065770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P498386941448065770

namespace A100393

/-- `∩[A100392(n+1), A171845(n+1)]` -/
def P498386941448065770.Spec : Prop :=
  ∀ n, (P498386941448065770.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P2759176160642435117

`∩[A005381(n+1), A100392(n+1)]`
-/

namespace A100393.P2759176160642435117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P2759176160642435117

namespace A100393

/-- `∩[A005381(n+1), A100392(n+1)]` -/
def P2759176160642435117.Spec : Prop :=
  ∀ n, (P2759176160642435117.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P14284693840942405431

`∩[A068780(n+1), A100392(n+1)]`
-/

namespace A100393.P14284693840942405431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P14284693840942405431

namespace A100393

/-- `∩[A068780(n+1), A100392(n+1)]` -/
def P14284693840942405431.Spec : Prop :=
  ∀ n, (P14284693840942405431.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P7328977882564662993

`∩[A100392(n+1), A164276(n+1)]`
-/

namespace A100393.P7328977882564662993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P7328977882564662993

namespace A100393

/-- `∩[A100392(n+1), A164276(n+1)]` -/
def P7328977882564662993.Spec : Prop :=
  ∀ n, (P7328977882564662993.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P9532220264375374794

`∩[A078542(n+1), A100392(n+1)]`
-/

namespace A100393.P9532220264375374794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P9532220264375374794

namespace A100393

/-- `∩[A078542(n+1), A100392(n+1)]` -/
def P9532220264375374794.Spec : Prop :=
  ∀ n, (P9532220264375374794.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P6008023567776471218

`∩[A067810(n+1), A100392(n+1)]`
-/

namespace A100393.P6008023567776471218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P6008023567776471218

namespace A100393

/-- `∩[A067810(n+1), A100392(n+1)]` -/
def P6008023567776471218.Spec : Prop :=
  ∀ n, (P6008023567776471218.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P18247279081623269707

`∩[A100392(n+1), A138592(n+1)]`
-/

namespace A100393.P18247279081623269707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P18247279081623269707

namespace A100393

/-- `∩[A100392(n+1), A138592(n+1)]` -/
def P18247279081623269707.Spec : Prop :=
  ∀ n, (P18247279081623269707.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P13177357865969656891

`∩[A062973(n+1), A100392(n+1)]`
-/

namespace A100393.P13177357865969656891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P13177357865969656891

namespace A100393

/-- `∩[A062973(n+1), A100392(n+1)]` -/
def P13177357865969656891.Spec : Prop :=
  ∀ n, (P13177357865969656891.a n : ℤ) = A100393 (n + 1)

end A100393

/-! ## A100393.P3055535203435371511

`∩[A100392(n+1), A343311(n+1)]`
-/

namespace A100393.P3055535203435371511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100393.P3055535203435371511

namespace A100393

/-- `∩[A100392(n+1), A343311(n+1)]` -/
def P3055535203435371511.Spec : Prop :=
  ∀ n, (P3055535203435371511.a n : ℤ) = A100393 (n + 1)

end A100393

/-!
# A100394: a(n) is the subscript of the greatest prime factor of (2*prime(n) + 1).

The programs for A100394, the canonical program `A100394.P7851725404528444770` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100394 has offset 1).

The definition of A100394 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023590, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100394.P7851725404528444770

`A000720(A023590(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A100394

/-- `A000720(A023590(n+1))` -/
def P7851725404528444770.Spec : Prop :=
  ∀ n, P7851725404528444770.a n = A100394 (n + 1)

theorem P7851725404528444770.correct : P7851725404528444770.Spec := by
  intro n
  simp only [A100394, Nat.add_sub_cancel]

end A100394

/-! ## A100394.P1880373662043632610

`A000720(A006530(2*A000040(n+1)+1))`
-/

namespace A100394.P1880373662043632610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (2 * A000040 (n + 1) + 1).toNat).toNat

end

end A100394.P1880373662043632610

namespace A100394

/-- `A000720(A006530(2*A000040(n+1)+1))` -/
def P1880373662043632610.Spec : Prop :=
  ∀ n, P1880373662043632610.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P17521421935606336271

`A061395(A072055(n+1))`
-/

namespace A100394.P17521421935606336271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A072055 (n + 1)).toNat

end

end A100394.P17521421935606336271

namespace A100394

/-- `A061395(A072055(n+1))` -/
def P17521421935606336271.Spec : Prop :=
  ∀ n, P17521421935606336271.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P10003382776633028151

`A061395(A072058(n+1))`
-/

namespace A100394.P10003382776633028151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A072058 (n + 1)).toNat

end

end A100394.P10003382776633028151

namespace A100394

/-- `A061395(A072058(n+1))` -/
def P10003382776633028151.Spec : Prop :=
  ∀ n, P10003382776633028151.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P5132271357775408988

`A061395(A100484(n+1)+1)`
-/

namespace A100394.P5132271357775408988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A100484 (n + 1) + 1).toNat

end

end A100394.P5132271357775408988

namespace A100394

/-- `A061395(A100484(n+1)+1)` -/
def P5132271357775408988.Spec : Prop :=
  ∀ n, P5132271357775408988.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P9206596472939576327

`A061395(A001747(n+2)+1)`
-/

namespace A100394.P9206596472939576327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A001747 (n + 2) + 1).toNat

end

end A100394.P9206596472939576327

namespace A100394

/-- `A061395(A001747(n+2)+1)` -/
def P9206596472939576327.Spec : Prop :=
  ∀ n, P9206596472939576327.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P17302480741113272286

`A061395(A076274(n+2)+2)`
-/

namespace A100394.P17302480741113272286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A076274 (n + 2) + 2).toNat

end

end A100394.P17302480741113272286

namespace A100394

/-- `A061395(A076274(n+2)+2)` -/
def P17302480741113272286.Spec : Prop :=
  ∀ n, P17302480741113272286.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P5339692651794641187

`A061395(A129069(n+1)-2)`
-/

namespace A100394.P5339692651794641187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A129069 (n + 1) - 2).toNat

end

end A100394.P5339692651794641187

namespace A100394

/-- `A061395(A129069(n+1)-2)` -/
def P5339692651794641187.Spec : Prop :=
  ∀ n, P5339692651794641187.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P16718853530121420769

`A061395(2*A000040(n+1)+1)`
-/

namespace A100394.P16718853530121420769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A000040 (n + 1) + 1).toNat

end

end A100394.P16718853530121420769

namespace A100394

/-- `A061395(2*A000040(n+1)+1)` -/
def P16718853530121420769.Spec : Prop :=
  ∀ n, P16718853530121420769.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P2397324442788422408

`A061395(A001749(n+1)/2+1)`
-/

namespace A100394.P2397324442788422408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A100394.P2397324442788422408

namespace A100394

/-- `A061395(A001749(n+1)/2+1)` -/
def P2397324442788422408.Spec : Prop :=
  ∀ n, P2397324442788422408.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P9921721957829974667

`A061395(2*A008864(n+1)-1)`
-/

namespace A100394.P9921721957829974667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A008864 (n + 1) - 1).toNat

end

end A100394.P9921721957829974667

namespace A100394

/-- `A061395(2*A008864(n+1)-1)` -/
def P9921721957829974667.Spec : Prop :=
  ∀ n, P9921721957829974667.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P6180347965444163955

`A061395(2*p?[A000961(n+1)]+1)`
-/

namespace A100394.P6180347965444163955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A100394.P6180347965444163955

namespace A100394

/-- `A061395(2*p?[A000961(n+1)]+1)` -/
def P6180347965444163955.Spec : Prop :=
  ∀ n, P6180347965444163955.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P18251010302610931600

`A061395(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A100394.P18251010302610931600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A100394.P18251010302610931600

namespace A100394

/-- `A061395(A000040(n+1)+A000040(n+1)+1)` -/
def P18251010302610931600.Spec : Prop :=
  ∀ n, P18251010302610931600.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P2508288574548433216

`A061395(A008864(n+1)+A008864(n+1)-1)`
-/

namespace A100394.P2508288574548433216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A008864 (n + 1) + (A008864 (n + 1) - 1)).toNat

end

end A100394.P2508288574548433216

namespace A100394

/-- `A061395(A008864(n+1)+A008864(n+1)-1)` -/
def P2508288574548433216.Spec : Prop :=
  ∀ n, P2508288574548433216.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P7523565761812172932

`A061395(A001749(n+1)+2)`
-/

namespace A100394.P7523565761812172932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A001749 (n + 1) + 2).toNat

end

end A100394.P7523565761812172932

namespace A100394

/-- `A061395(A001749(n+1)+2)` -/
def P7523565761812172932.Spec : Prop :=
  ∀ n, P7523565761812172932.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P8956556888681104066

`A285715(A000040(n+1)+1)+1`
-/

namespace A100394.P8956556888681104066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285715 (A000040 (n + 1) + 1).toNat + 1

end

end A100394.P8956556888681104066

namespace A100394

/-- `A285715(A000040(n+1)+1)+1` -/
def P8956556888681104066.Spec : Prop :=
  ∀ n, P8956556888681104066.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P8684330222107297251

`A290103(2*A023590(n+1))`
-/

namespace A100394.P8684330222107297251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A023590 (n + 1)).toNat

end

end A100394.P8684330222107297251

namespace A100394

/-- `A290103(2*A023590(n+1))` -/
def P8684330222107297251.Spec : Prop :=
  ∀ n, P8684330222107297251.a n = A100394 (n + 1)

end A100394

/-! ## A100394.P12825388779148419421

`val(A181821(2*A000040(n+1)+1), 2)`
-/

namespace A100394.P12825388779148419421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181821 (2 * A000040 (n + 1) + 1).toNat).toNat 2

end

end A100394.P12825388779148419421

namespace A100394

/-- `val(A181821(2*A000040(n+1)+1), 2)` -/
def P12825388779148419421.Spec : Prop :=
  ∀ n, (P12825388779148419421.a n : ℤ) = A100394 (n + 1)

end A100394

/-!
# A100396: Bell(n-1) + Fibonacci(n).

The programs for A100396, there is no canonical definition to state claims against.
-/

/-! ## A100396.P3958484796105184475

`A011971(C(n, 2))+A000045(n)`
-/

namespace A100396.P3958484796105184475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (Nat.choose n 2) + A000045 n

end

end A100396.P3958484796105184475

/-! ## A100396.P271427417478440203

`A095149(C(n, 2))+A000045(n)`
-/

namespace A100396.P271427417478440203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (Nat.choose n 2) + A000045 n

end

end A100396.P271427417478440203

/-! ## A100396.P9379135906042113297

`A108087(C(n, 2))+A000045(n)`
-/

namespace A100396.P9379135906042113297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (Nat.choose n 2) + A000045 n

end

end A100396.P9379135906042113297

/-! ## A100396.P8557170730781722927

`A123081(C(n, 2))+A000045(n)`
-/

namespace A100396.P8557170730781722927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (Nat.choose n 2) + A000045 n

end

end A100396.P8557170730781722927

/-! ## A100396.P7867866742141802941

`A346500(C(n, 2))+A000045(n)`
-/

namespace A100396.P7867866742141802941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (Nat.choose n 2) + A000045 n

end

end A100396.P7867866742141802941

/-!
# A100397: Bell(n-1) - Fibonacci(n).

The programs for A100397, there is no canonical definition to state claims against.
-/

/-! ## A100397.P467912971669311428

`A000110(abs(2-n))-Δ[A000045(n)]`
-/

namespace A100397.P467912971669311428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 |2 - (n : ℤ)|.toNat - (f1 (n + 1) - f1 n)

end

end A100397.P467912971669311428

/-! ## A100397.P12991693226645681288

`A033183(A014585(n))-A038189(n)`
-/

namespace A100397.P12991693226645681288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A014585 n).toNat - A038189 n

end

end A100397.P12991693226645681288

/-!
# A100399: a(n) = Fibonacci(n)^n.

The programs for A100399, the canonical program `A100399.P867976258850218576` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100399 has offset 0).

The definition of A100399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)^n` (program `A100399.P867976258850218576`, by `A100399.P867976258850218576.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100399.P867976258850218576

`A000045(n)^n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100399

/-- `A000045(n)^n` -/
def P867976258850218576.Spec : Prop :=
  ∀ n, P867976258850218576.a n = A100399 n

theorem P867976258850218576.correct : P867976258850218576.Spec := by
  intro n
  simp only [A100399]

end A100399

/-! ## A100399.P10176689162104681758

`round(ϕ^n/sqrt(5))^n`
-/

namespace A100399.P10176689162104681758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ n

end

end A100399.P10176689162104681758

namespace A100399

/-- `round(ϕ^n/sqrt(5))^n` -/
def P10176689162104681758.Spec : Prop :=
  ∀ n, P10176689162104681758.a n = A100399 n

end A100399

