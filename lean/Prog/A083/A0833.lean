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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A083300: a(n) = (4*7^n + (-3)^n)/5.

The programs for A083300, the canonical program `A083300.P9994174123840336200` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083300 has offset 0).

The definition of A083300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083300.P9994174123840336200

`(4*7^n+(-3)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083300

/-- `(4*7^n+(-3)^n)/5` -/
def P9994174123840336200.Spec : Prop :=
  ∀ n, P9994174123840336200.a n = (A083300 n : ℚ)

end A083300

/-! ## A083300.P14470861163393619081

`ogf((1+x)/(1-4x-21x^2))`
-/

namespace A083300.P14470861163393619081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, -21] n

end

end A083300.P14470861163393619081

namespace A083300

/-- `ogf((1+x)/(1-4x-21x^2))` -/
def P14470861163393619081.Spec : Prop :=
  ∀ n, P14470861163393619081.a n = A083300 n

end A083300

/-! ## A083300.P8513600661824377722

`4*a(n-1)+21*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A083300.P8513600661824377722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * a (n - 1) + 21 * a (n - 2)

end

end A083300.P8513600661824377722

namespace A083300

/-- `4*a(n-1)+21*a(n-2)` -/
def P8513600661824377722.Spec : Prop :=
  ∀ n, (P8513600661824377722.a n : ℤ) = A083300 n

end A083300

/-! ## A083300.P8179733629723643861

`A003950(n)-3*a(n-1)` with `a(0)=1`
-/

namespace A083300.P8179733629723643861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003950 n - 3 * a (n - 1)

end

end A083300.P8179733629723643861

namespace A083300

/-- `A003950(n)-3*a(n-1)` -/
def P8179733629723643861.Spec : Prop :=
  ∀ n, P8179733629723643861.a n = A083300 n

end A083300

/-! ## A083300.P3522993281477112315

`A059268(A000124(n))*A270471(n)-3*a(n-1)` with `a(0)=1`
-/

namespace A083300.P3522993281477112315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059268 (A000124 n).toNat * A270471 n - 3 * a (n - 1)

end

end A083300.P3522993281477112315

namespace A083300

/-- `A059268(A000124(n))*A270471(n)-3*a(n-1)` -/
def P3522993281477112315.Spec : Prop :=
  ∀ n, P3522993281477112315.a n = A083300 n

end A083300

/-! ## A083300.P17976854846421669898

`2*A000420(n)-A055272(n)-3*a(n-1)` with `a(0)=1`
-/

namespace A083300.P17976854846421669898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A000420 n - A055272 n - 3 * a (n - 1)

end

end A083300.P17976854846421669898

namespace A083300

/-- `2*A000420(n)-A055272(n)-3*a(n-1)` -/
def P17976854846421669898.Spec : Prop :=
  ∀ n, P17976854846421669898.a n = A083300 n

end A083300

/-! ## A083300.P14331460805336411165

`∏{digits}[A002281(n)+1, #]-3*a(n-1)` with `a(0)=1`
-/

namespace A083300.P14331460805336411165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ) - 3 * a (n - 1)

end

end A083300.P14331460805336411165

namespace A083300

/-- `∏{digits}[A002281(n)+1, #]-3*a(n-1)` -/
def P14331460805336411165.Spec : Prop :=
  ∀ n, P14331460805336411165.a n = A083300 n

end A083300

/-!
# A083301: a(n) = (4*8^n + (-2)^n)/5.

The programs for A083301, the canonical program `A083301.P13877006943048010802` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083301 has offset 0).

The definition of A083301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083301.P13877006943048010802

`(4*8^n+(-2)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083301

/-- `(4*8^n+(-2)^n)/5` -/
def P13877006943048010802.Spec : Prop :=
  ∀ n, P13877006943048010802.a n = (A083301 n : ℚ)

end A083301

/-! ## A083301.P5892273965577444490

`ogf(1/(1-6x-16x^2))`
-/

namespace A083301.P5892273965577444490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, -16] n

end

end A083301.P5892273965577444490

namespace A083301

/-- `ogf(1/(1-6x-16x^2))` -/
def P5892273965577444490.Spec : Prop :=
  ∀ n, P5892273965577444490.a n = A083301 n

end A083301

/-! ## A083301.P6958153217734805634

`lcm(2^n, ∑[(-4)^n])`
-/

namespace A083301.P6958153217734805634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083301.P6958153217734805634

namespace A083301

/-- `lcm(2^n, ∑[(-4)^n])` -/
def P6958153217734805634.Spec : Prop :=
  ∀ n, (P6958153217734805634.a n : ℤ) = A083301 n

end A083301

/-! ## A083301.P16322011041332938914

`8^n-2*a(n-1)` with `a(0)=1`
-/

namespace A083301.P16322011041332938914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 ^ n : ℤ) - 2 * a (n - 1)

end

end A083301.P16322011041332938914

namespace A083301

/-- `8^n-2*a(n-1)` -/
def P16322011041332938914.Spec : Prop :=
  ∀ n, P16322011041332938914.a n = A083301 n

end A083301

/-! ## A083301.P6987734082248252125

`8^n-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A083301.P6987734082248252125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 ^ n : ℤ) - (a (n - 1) + a (n - 1))

end

end A083301.P6987734082248252125

namespace A083301

/-- `8^n-(a(n-1)+a(n-1))` -/
def P6987734082248252125.Spec : Prop :=
  ∀ n, P6987734082248252125.a n = A083301 n

end A083301

/-! ## A083301.P12351469531267862898

`8^n-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A083301.P12351469531267862898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 ^ n : ℤ) - a (n - 1) - a (n - 1)

end

end A083301.P12351469531267862898

namespace A083301

/-- `8^n-a(n-1)-a(n-1)` -/
def P12351469531267862898.Spec : Prop :=
  ∀ n, P12351469531267862898.a n = A083301 n

end A083301

/-! ## A083301.P6696205554915758592

`2^n*A015521(n+1)`
-/

namespace A083301.P6696205554915758592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A015521 (n + 1)

end

end A083301.P6696205554915758592

namespace A083301

/-- `2^n*A015521(n+1)` -/
def P6696205554915758592.Spec : Prop :=
  ∀ n, P6696205554915758592.a n = A083301 n

end A083301

/-! ## A083301.P14135777091291993044

`A014985(n+1)*A122803(n)`
-/

namespace A083301.P14135777091291993044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014985 (n + 1) * A122803 n

end

end A083301.P14135777091291993044

namespace A083301

/-- `A014985(n+1)*A122803(n)` -/
def P14135777091291993044.Spec : Prop :=
  ∀ n, P14135777091291993044.a n = A083301 n

end A083301

/-! ## A083301.P7510815829705261313

`A015521(n+1)*A173300(2*n+1)`
-/

namespace A083301.P7510815829705261313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) * A173300 (2 * n + 1)

end

end A083301.P7510815829705261313

namespace A083301

/-- `A015521(n+1)*A173300(2*n+1)` -/
def P7510815829705261313.Spec : Prop :=
  ∀ n, P7510815829705261313.a n = A083301 n

end A083301

/-! ## A083301.P16157077509215499558

`abs(∑[A120617(2*n)]*A011782(n+1))`
-/

namespace A083301.P16157077509215499558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120617 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A011782 (n + 1)|

end

end A083301.P16157077509215499558

namespace A083301

/-- `abs(∑[A120617(2*n)]*A011782(n+1))` -/
def P16157077509215499558.Spec : Prop :=
  ∀ n, P16157077509215499558.a n = A083301 n

end A083301

/-! ## A083301.P15701176295471810613

`A000079(n)+A000079(n+1)*A037481(n)`
-/

namespace A083301.P15701176295471810613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A000079 (n + 1) * A037481 n

end

end A083301.P15701176295471810613

namespace A083301

/-- `A000079(n)+A000079(n+1)*A037481(n)` -/
def P15701176295471810613.Spec : Prop :=
  ∀ n, P15701176295471810613.a n = A083301 n

end A083301

/-! ## A083301.P887117818534125247

`A015521(n+1)+A000225(n)*A015521(n+1)`
-/

namespace A083301.P887117818534125247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) + A000225 n * A015521 (n + 1)

end

end A083301.P887117818534125247

namespace A083301

/-- `A015521(n+1)+A000225(n)*A015521(n+1)` -/
def P887117818534125247.Spec : Prop :=
  ∀ n, P887117818534125247.a n = A083301 n

end A083301

/-!
# A083302: a(n) = (4*9^n + (-1)^n)/5.

The programs for A083302, the canonical program `A083302.P629167806214155420` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083302 has offset 0).

The definition of A083302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083302.P629167806214155420

`(4*9^n+(-1)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083302

/-- `(4*9^n+(-1)^n)/5` -/
def P629167806214155420.Spec : Prop :=
  ∀ n, P629167806214155420.a n = (A083302 n : ℚ)

end A083302

/-! ## A083302.P8162990374755589996

`ogf((-1+x)/(-1+8x+9x^2))`
-/

namespace A083302.P8162990374755589996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -8, -9] n

end

end A083302.P8162990374755589996

namespace A083302

/-- `ogf((-1+x)/(-1+8x+9x^2))` -/
def P8162990374755589996.Spec : Prop :=
  ∀ n, P8162990374755589996.a n = A083302 n

end A083302

/-! ## A083302.P4748858560711477383

`Δ[xor(1, 9*a(n-1))]` with `a(0)=0`
-/

namespace A083302.P4748858560711477383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.xor 1 (9 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083302.P4748858560711477383

namespace A083302

/-- `Δ[xor(1, 9*a(n-1))]` -/
def P4748858560711477383.Spec : Prop :=
  ∀ n, P4748858560711477383.a n = A083302 n

end A083302

/-! ## A083302.P10267868364747006604

`Δ[xor(1, lcm(9, a(n-1)))]` with `a(0)=0`
-/

namespace A083302.P10267868364747006604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.xor 1 (Nat.lcm 9 (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083302.P10267868364747006604

namespace A083302

/-- `Δ[xor(1, lcm(9, a(n-1)))]` -/
def P10267868364747006604.Spec : Prop :=
  ∀ n, P10267868364747006604.a n = A083302 n

end A083302

/-! ## A083302.P5570949153278082103

`Δ[9^(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A083302.P5570949153278082103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083302.P5570949153278082103

namespace A083302

/-- `Δ[9^(n-1)-a(n-1)]` -/
def P5570949153278082103.Spec : Prop :=
  ∀ n, P5570949153278082103.a n = (A083302 n : ℚ)

end A083302

/-! ## A083302.P4578631825691727598

`a(n-2)+8*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A083302.P4578631825691727598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) + 8 * (a (n - 1) + a (n - 2))

end

end A083302.P4578631825691727598

namespace A083302

/-- `a(n-2)+8*(a(n-1)+a(n-2))` -/
def P4578631825691727598.Spec : Prop :=
  ∀ n, (P4578631825691727598.a n : ℤ) = A083302 n

end A083302

/-! ## A083302.P11836126028730872364

`Δ[A015577(n)]`
-/

namespace A083302.P11836126028730872364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083302.P11836126028730872364

namespace A083302

/-- `Δ[A015577(n)]` -/
def P11836126028730872364.Spec : Prop :=
  ∀ n, P11836126028730872364.a n = A083302 n

end A083302

/-! ## A083302.P8629283251211298149

`abs(2-A165749(n))`
-/

namespace A083302.P8629283251211298149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A165749 n|

end

end A083302.P8629283251211298149

namespace A083302

/-- `abs(2-A165749(n))` -/
def P8629283251211298149.Spec : Prop :=
  ∀ n, P8629283251211298149.a n = A083302 n

end A083302

/-! ## A083302.P3544537808036156756

`ceil(A198961(n)/5)`
-/

namespace A083302.P3544537808036156756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198961 n : ℚ) / 5⌉

end

end A083302.P3544537808036156756

namespace A083302

/-- `ceil(A198961(n)/5)` -/
def P3544537808036156756.Spec : Prop :=
  ∀ n, P3544537808036156756.a n = A083302 n

end A083302

/-! ## A083302.P6463907281860742370

`A055275(n)-a(n-1)` with `a(0)=1`
-/

namespace A083302.P6463907281860742370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055275 n - a (n - 1)

end

end A083302.P6463907281860742370

namespace A083302

/-- `A055275(n)-a(n-1)` -/
def P6463907281860742370.Spec : Prop :=
  ∀ n, P6463907281860742370.a n = A083302 n

end A083302

/-! ## A083302.P15720812866689684548

`A055995(n)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A083302.P15720812866689684548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A055995 n + a (n - 2)

end

end A083302.P15720812866689684548

namespace A083302

/-- `A055995(n)+a(n-2)` -/
def P15720812866689684548.Spec : Prop :=
  ∀ n, P15720812866689684548.a n = A083302 n

end A083302

/-! ## A083302.P16501657504733115017

`A080923(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A083302.P16501657504733115017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080923 (2 * n) - a (n - 1)

end

end A083302.P16501657504733115017

namespace A083302

/-- `A080923(2*n)-a(n-1)` -/
def P16501657504733115017.Spec : Prop :=
  ∀ n, P16501657504733115017.a n = A083302 n

end A083302

/-! ## A083302.P2517304067492017689

`A015577(n+1)-A015577(n)`
-/

namespace A083302.P2517304067492017689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015577 (n + 1) - A015577 n

end

end A083302.P2517304067492017689

namespace A083302

/-- `A015577(n+1)-A015577(n)` -/
def P2517304067492017689.Spec : Prop :=
  ∀ n, P2517304067492017689.a n = A083302 n

end A083302

/-! ## A083302.P18092515441488640173

`A001019(n)-2*A015577(n)`
-/

namespace A083302.P18092515441488640173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n - 2 * A015577 n

end

end A083302.P18092515441488640173

namespace A083302

/-- `A001019(n)-2*A015577(n)` -/
def P18092515441488640173.Spec : Prop :=
  ∀ n, P18092515441488640173.a n = A083302 n

end A083302

/-! ## A083302.P14825218429535555708

`A383324(2*n+1)+A383324(2*n)`
-/

namespace A083302.P14825218429535555708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383324 (2 * n + 1) + A383324 (2 * n)

end

end A083302.P14825218429535555708

namespace A083302

/-- `A383324(2*n+1)+A383324(2*n)` -/
def P14825218429535555708.Spec : Prop :=
  ∀ n, P14825218429535555708.a n = A083302 n

end A083302

/-! ## A083302.P10685684471999296916

`A178543(2*n+1)-A178543(A004273(n))`
-/

namespace A083302.P10685684471999296916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178543 (2 * n + 1) - A178543 (A004273 n).toNat

end

end A083302.P10685684471999296916

namespace A083302

/-- `A178543(2*n+1)-A178543(A004273(n))` -/
def P10685684471999296916.Spec : Prop :=
  ∀ n, P10685684471999296916.a n = A083302 n

end A083302

/-!
# A083303: Let Pi= sum(k>=0, u(k)/k!) where u(k)>=0 are integer (u(k)=A075874(k)), then sequence gives values of m such that u(m)=0.

The programs for A083303, there is no canonical definition to state claims against.
-/

/-! ## A083303.P15189653559821256887

`eq[0, A007514(n)]`
-/

namespace A083303.P15189653559821256887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083303.P15189653559821256887

/-! ## A083303.P18443737102711224895

`eq[0, A075874(A028310(n))%(A000038(n)+n)²]`
-/

namespace A083303.P18443737102711224895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075874 (A028310 n).toNat) ((A000038 n + (n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083303.P18443737102711224895

/-!
# A083304: a(n) = (4*(n+5)^n + n^n)/5.

The programs for A083304, the canonical program `A083304.P9281671654859599582` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083304 has offset 0).

The definition of A083304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083304.P9281671654859599582

`(4*(n+5)^n+n^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083304

/-- `(4*(n+5)^n+n^n)/5` -/
def P9281671654859599582.Spec : Prop :=
  ∀ n, P9281671654859599582.a n = (A083304 n : ℚ)

end A083304

/-!
# A083305: a(n) = (4*(n+10)^n+n^n)/5.

The programs for A083305, the canonical program `A083305.P5271903118133976389` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083305 has offset 0).

The definition of A083305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083305.P5271903118133976389

`(4*(n+10)^n+n^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083305

/-- `(4*(n+10)^n+n^n)/5` -/
def P5271903118133976389.Spec : Prop :=
  ∀ n, P5271903118133976389.a n = (A083305 n : ℚ)

end A083305

/-!
# A083306: a(n) = (4*(n+15)^n + n^n)/5.

The programs for A083306, the canonical program `A083306.P16261984806699216384` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083306 has offset 0).

The definition of A083306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083306.P16261984806699216384

`(4*(n+15)^n+n^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083306

/-- `(4*(n+15)^n+n^n)/5` -/
def P16261984806699216384.Spec : Prop :=
  ∀ n, P16261984806699216384.a n = (A083306 n : ℚ)

end A083306

/-!
# A083307: a(n) = (4*n^n + (n-10)^n)/5.

The programs for A083307, the canonical program `A083307.P3080060409278314335` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083307 has offset 0).

The definition of A083307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083307.P3080060409278314335

`(4*n^n+(n-10)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083307

/-- `(4*n^n+(n-10)^n)/5` -/
def P3080060409278314335.Spec : Prop :=
  ∀ n, P3080060409278314335.a n = (A083307 n : ℚ)

end A083307

/-!
# A083308: a(n) = (4*(n+1)^n + (n-9)^n)/5.

The programs for A083308, the canonical program `A083308.P255841403766595066` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083308 has offset 0).

The definition of A083308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083308.P255841403766595066

`(4*(n+1)^n+(n-9)^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083308

/-- `(4*(n+1)^n+(n-9)^n)/5` -/
def P255841403766595066.Spec : Prop :=
  ∀ n, P255841403766595066.a n = (A083308 n : ℚ)

end A083308

/-!
# A083309: a(n) is the number of times that sums 3 +- 5 +- 7 +- 11 +- ... +- prime(2n+1) of the first 2n odd primes is zero. There are 2^(2n-1) choices for the sign patterns.

The programs for A083309, there is no canonical definition to state claims against.
-/

/-! ## A083309.P6170209382512285416

`A022897(2*(n+1))`
-/

namespace A083309.P6170209382512285416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022897 (2 * (n + 1))

end

end A083309.P6170209382512285416

/-! ## A083309.P17082362473717990298

`A022897(A051755(n+2))+n%((-1)^n)`
-/

namespace A083309.P17082362473717990298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022897 (A051755 (n + 2)).toNat + Int.tmod (n : ℤ) ((-1) ^ n)

end

end A083309.P17082362473717990298

/-! ## A083309.P17951340165644774581

`A022897(A051755(n+2))+A000007(n+1)`
-/

namespace A083309.P17951340165644774581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022897 (A051755 (n + 2)).toNat + A000007 (n + 1)

end

end A083309.P17951340165644774581

/-! ## A083309.P6361669284732102909

`floor(A022897(A051755(n+2))+n/A000040(n+1))`
-/

namespace A083309.P6361669284732102909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022897 (A051755 (n + 2)).toNat : ℚ) + (n : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A083309.P6361669284732102909

/-! ## A083309.P10506212277351265942

`A022896(2*n+3)/2`
-/

namespace A083309.P10506212277351265942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022896 (2 * n + 3) : ℚ) / 2

end

end A083309.P10506212277351265942

/-! ## A083309.P10660324487555071678

`A022897(A051755(n+2))%A113040(n+1)`
-/

namespace A083309.P10660324487555071678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022897 (A051755 (n + 2)).toNat) (A113040 (n + 1))

end

end A083309.P10660324487555071678

/-! ## A083309.P7727518387397561658

`A022897(A051755(n+2))%A000142(n)`
-/

namespace A083309.P7727518387397561658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022897 (A051755 (n + 2)).toNat) (A000142 n)

end

end A083309.P7727518387397561658

/-! ## A083309.P1091263792697881815

`A022897(A000040(n+1))+A022897(A051755(n+2))`
-/

namespace A083309.P1091263792697881815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022897 (A000040 (n + 1)).toNat + A022897 (A051755 (n + 2)).toNat

end

end A083309.P1091263792697881815

/-!
# A083312: Largest integer m such that 1+2+...+m divides n.

The programs for A083312, there is no canonical definition to state claims against.
-/

/-! ## A083312.P4238603707853663482

`A133829(n+1)-1`
-/

namespace A083312.P4238603707853663482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133829 (n + 1) - 1

end

end A083312.P4238603707853663482

/-! ## A083312.P9058349968262555182

`A002024(A115017(n+1))`
-/

namespace A083312.P9058349968262555182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A115017 (n + 1)).toNat

end

end A083312.P9058349968262555182

/-! ## A083312.P13852972145508735188

`A004767(n)%A133829(n+1)`
-/

namespace A083312.P13852972145508735188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n) (A133829 (n + 1))

end

end A083312.P13852972145508735188

/-! ## A083312.P7679084702511641990

`A004771(n)%A133829(n+1)`
-/

namespace A083312.P7679084702511641990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004771 n) (A133829 (n + 1))

end

end A083312.P7679084702511641990

/-! ## A083312.P11084817208339864315

`A016755(n)%A133829(n+1)`
-/

namespace A083312.P11084817208339864315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016755 n) (A133829 (n + 1))

end

end A083312.P11084817208339864315

/-! ## A083312.P8285166526356620900

`A016757(n)%A133829(n+1)`
-/

namespace A083312.P8285166526356620900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016757 n) (A133829 (n + 1))

end

end A083312.P8285166526356620900

/-! ## A083312.P7179097491442748299

`A016759(n)%A133829(n+1)`
-/

namespace A083312.P7179097491442748299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016759 n) (A133829 (n + 1))

end

end A083312.P7179097491442748299

/-! ## A083312.P5816727407792712159

`A016761(n)%A133829(n+1)`
-/

namespace A083312.P5816727407792712159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016761 n) (A133829 (n + 1))

end

end A083312.P5816727407792712159

/-! ## A083312.P6738792789278817092

`A016839(n)%A133829(n+1)`
-/

namespace A083312.P6738792789278817092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016839 n) (A133829 (n + 1))

end

end A083312.P6738792789278817092

/-! ## A083312.P6972576493747289853

`A016841(n)%A133829(n+1)`
-/

namespace A083312.P6972576493747289853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016841 n) (A133829 (n + 1))

end

end A083312.P6972576493747289853

/-! ## A083312.P13227033638822789715

`A016843(n)%A133829(n+1)`
-/

namespace A083312.P13227033638822789715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016843 n) (A133829 (n + 1))

end

end A083312.P13227033638822789715

/-! ## A083312.P2805612494089265994

`A016969(n)%A133829(n+1)`
-/

namespace A083312.P2805612494089265994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A133829 (n + 1))

end

end A083312.P2805612494089265994

/-! ## A083312.P7386041133118989186

`A016971(n)%A133829(n+1)`
-/

namespace A083312.P7386041133118989186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A133829 (n + 1))

end

end A083312.P7386041133118989186

/-! ## A083312.P17236563929248897123

`A016973(n)%A133829(n+1)`
-/

namespace A083312.P17236563929248897123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A133829 (n + 1))

end

end A083312.P17236563929248897123

/-! ## A083312.P2979774722967211703

`A016975(n)%A133829(n+1)`
-/

namespace A083312.P2979774722967211703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A133829 (n + 1))

end

end A083312.P2979774722967211703

/-! ## A083312.P287997327921400734

`A017151(n)%A133829(n+1)`
-/

namespace A083312.P287997327921400734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017151 n) (A133829 (n + 1))

end

end A083312.P287997327921400734

/-! ## A083312.P9842532331987634469

`A017153(n)%A133829(n+1)`
-/

namespace A083312.P9842532331987634469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017153 n) (A133829 (n + 1))

end

end A083312.P9842532331987634469

/-! ## A083312.P10567722703955042555

`A017377(n)%A133829(n+1)`
-/

namespace A083312.P10567722703955042555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017377 n) (A133829 (n + 1))

end

end A083312.P10567722703955042555

/-! ## A083312.P15406844278066160542

`A017379(n)%A133829(n+1)`
-/

namespace A083312.P15406844278066160542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017379 n) (A133829 (n + 1))

end

end A083312.P15406844278066160542

/-! ## A083312.P1547447449467917713

`A017381(n)%A133829(n+1)`
-/

namespace A083312.P1547447449467917713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017381 n) (A133829 (n + 1))

end

end A083312.P1547447449467917713

/-!
# A083313: a(0)=1; a(n) = 3^n - 2^(n-1) for n >= 1.

The programs for A083313, the canonical program `A083313.P2331717050571725320` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083313 has offset 0).

The definition of A083313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083313.P17753142552359292385

`ogf((1-3x+3x^2)/(1-5x+6x^2))`
-/

namespace A083313.P17753142552359292385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -5, 6] n

end

end A083313.P17753142552359292385

namespace A083313

/-- `ogf((1-3x+3x^2)/(1-5x+6x^2))` -/
def P17753142552359292385.Spec : Prop :=
  ∀ n, P17753142552359292385.a n = A083313 n

end A083313

/-! ## A083313.P2331717050571725320

`3^n-floor(2^(n-1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083313

/-- `3^n-floor(2^(n-1))` -/
def P2331717050571725320.Spec : Prop :=
  ∀ n, P2331717050571725320.a n = A083313 n

theorem P2331717050571725320.correct : P2331717050571725320.Spec := by
  intro n
  simp only [A083313]

end A083313

/-! ## A083313.P14214406543532033538

`abs(3^n-A131577(n))`
-/

namespace A083313.P14214406543532033538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A131577 n|

end

end A083313.P14214406543532033538

namespace A083313

/-- `abs(3^n-A131577(n))` -/
def P14214406543532033538.Spec : Prop :=
  ∀ n, P14214406543532033538.a n = A083313 n

end A083313

/-! ## A083313.P13917955431215439234

`Δ[A094033(n)+2^n]`
-/

namespace A083313.P13917955431215439234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083313.P13917955431215439234

namespace A083313

/-- `Δ[A094033(n)+2^n]` -/
def P13917955431215439234.Spec : Prop :=
  ∀ n, P13917955431215439234.a n = A083313 n

end A083313

/-! ## A083313.P4525114190736311761

`or(char[1]+1, A064686(n+1))`
-/

namespace A083313.P4525114190736311761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A064686 (n + 1))

end

end A083313.P4525114190736311761

namespace A083313

/-- `or(char[1]+1, A064686(n+1))` -/
def P4525114190736311761.Spec : Prop :=
  ∀ n, P4525114190736311761.a n = A083313 n

end A083313

/-! ## A083313.P5121697932476694873

`ceil(A000244(n)-2^(n-1))`
-/

namespace A083313.P5121697932476694873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000244 n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A083313.P5121697932476694873

namespace A083313

/-- `ceil(A000244(n)-2^(n-1))` -/
def P5121697932476694873.Spec : Prop :=
  ∀ n, P5121697932476694873.a n = A083313 n

end A083313

/-! ## A083313.P611636586244482584

`Δ[A003462(n)-ceil(2^(n-1))]`
-/

namespace A083313.P611636586244482584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083313.P611636586244482584

namespace A083313

/-- `Δ[A003462(n)-ceil(2^(n-1))]` -/
def P611636586244482584.Spec : Prop :=
  ∀ n, P611636586244482584.a n = A083313 n

end A083313

/-! ## A083313.P2782977954597244229

`Δ[A007051(n)-ceil(2^(n-1))]`
-/

namespace A083313.P2782977954597244229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083313.P2782977954597244229

namespace A083313

/-- `Δ[A007051(n)-ceil(2^(n-1))]` -/
def P2782977954597244229.Spec : Prop :=
  ∀ n, P2782977954597244229.a n = A083313 n

end A083313

/-! ## A083313.P14162064997804674173

`Δ[A115098(n)-ceil(2^(n-1))]`
-/

namespace A083313.P14162064997804674173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083313.P14162064997804674173

namespace A083313

/-- `Δ[A115098(n)-ceil(2^(n-1))]` -/
def P14162064997804674173.Spec : Prop :=
  ∀ n, P14162064997804674173.a n = A083313 n

end A083313

/-! ## A083313.P12131619825889020706

`xor(A000007(n), A064686(n+1))`
-/

namespace A083313.P12131619825889020706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A064686 (n + 1))

end

end A083313.P12131619825889020706

namespace A083313

/-- `xor(A000007(n), A064686(n+1))` -/
def P12131619825889020706.Spec : Prop :=
  ∀ n, P12131619825889020706.a n = A083313 n

end A083313

/-! ## A083313.P16468877989395495468

`ceil(A001047(n)+A020639(A000010(n+1))^(n-1))`
-/

namespace A083313.P16468877989395495468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001047 n : ℚ) + (A020639 (A000010 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A083313.P16468877989395495468

namespace A083313

/-- `ceil(A001047(n)+A020639(A000010(n+1))^(n-1))` -/
def P16468877989395495468.Spec : Prop :=
  ∀ n, P16468877989395495468.a n = A083313 n

end A083313

/-! ## A083313.P14609562278650158083

`ceil(A027649(n)/2)`
-/

namespace A083313.P14609562278650158083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027649 n : ℚ) / 2⌉

end

end A083313.P14609562278650158083

namespace A083313

/-- `ceil(A027649(n)/2)` -/
def P14609562278650158083.Spec : Prop :=
  ∀ n, P14609562278650158083.a n = A083313 n

end A083313

/-! ## A083313.P6264180546466245349

`Δ[A240506(n)/2]`
-/

namespace A083313.P6264180546466245349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240506 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083313.P6264180546466245349

namespace A083313

/-- `Δ[A240506(n)/2]` -/
def P6264180546466245349.Spec : Prop :=
  ∀ n, P6264180546466245349.a n = (A083313 n : ℚ)

end A083313

/-! ## A083313.P188877660256957080

`A027649(n)/A036453(n+1)`
-/

namespace A083313.P188877660256957080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A083313.P188877660256957080

namespace A083313

/-- `A027649(n)/A036453(n+1)` -/
def P188877660256957080.Spec : Prop :=
  ∀ n, P188877660256957080.a n = (A083313 n : ℚ)

end A083313

/-! ## A083313.P4893045013633184872

`gcd(A027649(n), A064686(n+1))`
-/

namespace A083313.P4893045013633184872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027649 n) (A064686 (n + 1))

end

end A083313.P4893045013633184872

namespace A083313

/-- `gcd(A027649(n), A064686(n+1))` -/
def P4893045013633184872.Spec : Prop :=
  ∀ n, (P4893045013633184872.a n : ℤ) = A083313 n

end A083313

/-! ## A083313.P3906617762339970321

`Δ[Δ[A164039(n)]-A011782(n)]`
-/

namespace A083313.P3906617762339970321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083313.P3906617762339970321

namespace A083313

/-- `Δ[Δ[A164039(n)]-A011782(n)]` -/
def P3906617762339970321.Spec : Prop :=
  ∀ n, P3906617762339970321.a n = A083313 n

end A083313

/-! ## A083313.P16638712194246363405

`∑[A053581(n)]/A036453(n+1)`
-/

namespace A083313.P16638712194246363405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A083313.P16638712194246363405

namespace A083313

/-- `∑[A053581(n)]/A036453(n+1)` -/
def P16638712194246363405.Spec : Prop :=
  ∀ n, P16638712194246363405.a n = (A083313 n : ℚ)

end A083313

/-! ## A083313.P6401895744779559283

`Δ[A024023(n)/2-A011782(n)]`
-/

namespace A083313.P6401895744779559283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024023 n : ℚ) / 2 - (A011782 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083313.P6401895744779559283

namespace A083313

/-- `Δ[A024023(n)/2-A011782(n)]` -/
def P6401895744779559283.Spec : Prop :=
  ∀ n, P6401895744779559283.a n = (A083313 n : ℚ)

end A083313

/-!
# A083314: a(n) = (2*4^n-(3^n-1))/2.

The programs for A083314, the canonical program `A083314.P15774606035632233084` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083314 has offset 0).

The definition of A083314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083314.P15774606035632233084

`(2*4^n-(3^n-1))/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083314

/-- `(2*4^n-(3^n-1))/2` -/
def P15774606035632233084.Spec : Prop :=
  ∀ n, P15774606035632233084.a n = (A083314 n : ℚ)

end A083314

/-! ## A083314.P11053905400225674563

`4^n-A003462(n)`
-/

namespace A083314.P11053905400225674563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A003462 n

end

end A083314.P11053905400225674563

namespace A083314

/-- `4^n-A003462(n)` -/
def P11053905400225674563.Spec : Prop :=
  ∀ n, P11053905400225674563.a n = A083314 n

end A083314

/-! ## A083314.P6515492725317510519

`or(3*a(n-1)-1, A002001(n))` with `a(0)=1`
-/

namespace A083314.P6515492725317510519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (3 * a (n - 1) - 1) (A002001 n)

end

end A083314.P6515492725317510519

namespace A083314

/-- `or(3*a(n-1)-1, A002001(n))` -/
def P6515492725317510519.Spec : Prop :=
  ∀ n, P6515492725317510519.a n = A083314 n

end A083314

/-! ## A083314.P14533278921033822229

`A134168(n)+(2^n-1)*(2^(n-1)-1)`
-/

namespace A083314.P14533278921033822229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134168 n : ℚ) + ((2 ^ n : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A083314.P14533278921033822229

namespace A083314

/-- `A134168(n)+(2^n-1)*(2^(n-1)-1)` -/
def P14533278921033822229.Spec : Prop :=
  ∀ n, P14533278921033822229.a n = (A083314 n : ℚ)

end A083314

/-! ## A083314.P14056591633792917992

`A007051(n)+A005061(n)`
-/

namespace A083314.P14056591633792917992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A005061 n

end

end A083314.P14056591633792917992

namespace A083314

/-- `A007051(n)+A005061(n)` -/
def P14056591633792917992.Spec : Prop :=
  ∀ n, P14056591633792917992.a n = A083314 n

end A083314

/-! ## A083314.P10145499949608477758

`A081674(n)+A047849(n)`
-/

namespace A083314.P10145499949608477758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081674 n + A047849 n

end

end A083314.P10145499949608477758

namespace A083314

/-- `A081674(n)+A047849(n)` -/
def P10145499949608477758.Spec : Prop :=
  ∀ n, P10145499949608477758.a n = A083314 n

end A083314

/-! ## A083314.P12078532425721574778

`A134064(n)+A006516(n)`
-/

namespace A083314.P12078532425721574778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134064 n + A006516 n

end

end A083314.P12078532425721574778

namespace A083314

/-- `A134064(n)+A006516(n)` -/
def P12078532425721574778.Spec : Prop :=
  ∀ n, P12078532425721574778.a n = A083314 n

end A083314

/-! ## A083314.P12682291639605168295

`A086972(n)+A086443(n)`
-/

namespace A083314.P12682291639605168295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086972 n + A086443 n

end

end A083314.P12682291639605168295

namespace A083314

/-- `A086972(n)+A086443(n)` -/
def P12682291639605168295.Spec : Prop :=
  ∀ n, P12682291639605168295.a n = A083314 n

end A083314

/-! ## A083314.P8735735864683802201

`A162725(n)+A020988(n)`
-/

namespace A083314.P8735735864683802201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162725 n + A020988 n

end

end A083314.P8735735864683802201

namespace A083314

/-- `A162725(n)+A020988(n)` -/
def P8735735864683802201.Spec : Prop :=
  ∀ n, P8735735864683802201.a n = A083314 n

end A083314

/-! ## A083314.P8481167907545113195

`A134169(n)+A053154(n)`
-/

namespace A083314.P8481167907545113195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n + A053154 n

end

end A083314.P8481167907545113195

namespace A083314

/-- `A134169(n)+A053154(n)` -/
def P8481167907545113195.Spec : Prop :=
  ∀ n, P8481167907545113195.a n = A083314 n

end A083314

/-! ## A083314.P1298838007884671021

`A124302(n)+A080643(n)`
-/

namespace A083314.P1298838007884671021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + A080643 n

end

end A083314.P1298838007884671021

namespace A083314

/-- `A124302(n)+A080643(n)` -/
def P1298838007884671021.Spec : Prop :=
  ∀ n, P1298838007884671021.a n = A083314 n

end A083314

/-! ## A083314.P14825172572528201059

`A137786(n)+A099754(n)`
-/

namespace A083314.P14825172572528201059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137786 n + A099754 n

end

end A083314.P14825172572528201059

namespace A083314

/-- `A137786(n)+A099754(n)` -/
def P14825172572528201059.Spec : Prop :=
  ∀ n, P14825172572528201059.a n = A083314 n

end A083314

/-! ## A083314.P122939382339585570

`A052539(n)-A007051(n)`
-/

namespace A083314.P122939382339585570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 n - A007051 n

end

end A083314.P122939382339585570

namespace A083314

/-- `A052539(n)-A007051(n)` -/
def P122939382339585570.Spec : Prop :=
  ∀ n, P122939382339585570.a n = A083314 n

end A083314

/-! ## A083314.P9304927202176627156

`A001576(n)-A099754(n)`
-/

namespace A083314.P9304927202176627156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n - A099754 n

end

end A083314.P9304927202176627156

namespace A083314

/-- `A001576(n)-A099754(n)` -/
def P9304927202176627156.Spec : Prop :=
  ∀ n, P9304927202176627156.a n = A083314 n

end A083314

/-! ## A083314.P16851072356837042689

`A161168(n)-A094374(n)`
-/

namespace A083314.P16851072356837042689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 n - A094374 n

end

end A083314.P16851072356837042689

namespace A083314

/-- `A161168(n)-A094374(n)` -/
def P16851072356837042689.Spec : Prop :=
  ∀ n, P16851072356837042689.a n = A083314 n

end A083314

/-! ## A083314.P1584291027317245320

`A170939(n)-A134063(n)`
-/

namespace A083314.P1584291027317245320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170939 n - A134063 n

end

end A083314.P1584291027317245320

namespace A083314

/-- `A170939(n)-A134063(n)` -/
def P1584291027317245320.Spec : Prop :=
  ∀ n, P1584291027317245320.a n = A083314 n

end A083314

/-! ## A083314.P13332216404526809961

`A155543(n)-A261547(n)`
-/

namespace A083314.P13332216404526809961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n - A261547 n

end

end A083314.P13332216404526809961

namespace A083314

/-- `A155543(n)-A261547(n)` -/
def P13332216404526809961.Spec : Prop :=
  ∀ n, P13332216404526809961.a n = A083314 n

end A083314

/-! ## A083314.P15912833158653142672

`A083319(n)-A053152(n+1)`
-/

namespace A083314.P15912833158653142672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083319 n - A053152 (n + 1)

end

end A083314.P15912833158653142672

namespace A083314

/-- `A083319(n)-A053152(n+1)` -/
def P15912833158653142672.Spec : Prop :=
  ∀ n, P15912833158653142672.a n = A083314 n

end A083314

/-! ## A083314.P11982845960412436788

`A155602(n)-A029858(n+1)`
-/

namespace A083314.P11982845960412436788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155602 n - A029858 (n + 1)

end

end A083314.P11982845960412436788

namespace A083314

/-- `A155602(n)-A029858(n+1)` -/
def P11982845960412436788.Spec : Prop :=
  ∀ n, P11982845960412436788.a n = A083314 n

end A083314

/-! ## A083314.P16869451908077554249

`A000051(2*n)-A007051(n)`
-/

namespace A083314.P16869451908077554249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n) - A007051 n

end

end A083314.P16869451908077554249

namespace A083314

/-- `A000051(2*n)-A007051(n)` -/
def P16869451908077554249.Spec : Prop :=
  ∀ n, P16869451908077554249.a n = A083314 n

end A083314

/-!
# A083315: a(n) = (2*5^n-(4^n-2^n))/2.

The programs for A083315, the canonical program `A083315.P15579635475536545555` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083315 has offset 0).

The definition of A083315 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*5^n-(4^n-2^n))/2` (program `A083315.P1704889802166451901`, by `A083315.P1704889802166451901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083315.P1704889802166451901

`(2*5^n-(4^n-2^n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083315.P1704889802166451901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 5 ^ n : ℤ) - ((4 ^ n : ℤ) - (2 ^ n : ℤ)) : ℚ) / 2

end

end A083315.P1704889802166451901

namespace A083315

/-- `(2*5^n-(4^n-2^n))/2` -/
def P1704889802166451901.Spec : Prop :=
  ∀ n, P1704889802166451901.a n = (A083315 n : ℚ)

theorem P1704889802166451901.correct : P1704889802166451901.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A083315, Nat.add_sub_cancel, A083315.P1704889802166451901.a, A083315.P15579635475536545555.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A083315, Nat.add_sub_cancel, A083315.P1704889802166451901.a, A083315.P15579635475536545555.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083315

/-! ## A083315.P15579635475536545555

`11*a(n-1)-38*a(n-2)+40*a(n-3)` with `a(0)=1, a(1)=4, a(2)=19`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083315

/-- `11*a(n-1)-38*a(n-2)+40*a(n-3)` -/
def P15579635475536545555.Spec : Prop :=
  ∀ n, P15579635475536545555.a n = A083315 n

theorem P15579635475536545555.correct : P15579635475536545555.Spec := by
  intro n
  simp only [A083315]

end A083315

/-! ## A083315.P1169795622240537181

`5^n-C(2^n, 2)`
-/

namespace A083315.P1169795622240537181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - (Nat.choose (2 ^ n) 2 : ℤ)

end

end A083315.P1169795622240537181

namespace A083315

/-- `5^n-C(2^n, 2)` -/
def P1169795622240537181.Spec : Prop :=
  ∀ n, P1169795622240537181.a n = A083315 n

end A083315

/-! ## A083315.P13837379305894898390

`A000351(n)-A006516(n)`
-/

namespace A083315.P13837379305894898390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A006516 n

end

end A083315.P13837379305894898390

namespace A083315

/-- `A000351(n)-A006516(n)` -/
def P13837379305894898390.Spec : Prop :=
  ∀ n, P13837379305894898390.a n = A083315 n

end A083315

/-! ## A083315.P7405999399068704688

`abs(A007179(2*n)-A000351(n))`
-/

namespace A083315.P7405999399068704688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007179 (2 * n) - A000351 n|

end

end A083315.P7405999399068704688

namespace A083315

/-- `abs(A007179(2*n)-A000351(n))` -/
def P7405999399068704688.Spec : Prop :=
  ∀ n, P7405999399068704688.a n = A083315 n

end A083315

/-! ## A083315.P18133106433488175647

`abs(A137173(2*n)-A000351(n))`
-/

namespace A083315.P18133106433488175647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137173 (2 * n) - A000351 n|

end

end A083315.P18133106433488175647

namespace A083315

/-- `abs(A137173(2*n)-A000351(n))` -/
def P18133106433488175647.Spec : Prop :=
  ∀ n, P18133106433488175647.a n = A083315 n

end A083315

/-! ## A083315.P1679484811944399097

`record[A074872(n+1)-A007179(n)]`
-/

namespace A083315.P1679484811944399097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) - A007179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083315.P1679484811944399097

namespace A083315

/-- `record[A074872(n+1)-A007179(n)]` -/
def P1679484811944399097.Spec : Prop :=
  ∀ n, P1679484811944399097.a n = A083315 n

end A083315

/-! ## A083315.P14290602835661290624

`A074600(n)-A005418(2*n+1)`
-/

namespace A083315.P14290602835661290624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074600 n - A005418 (2 * n + 1)

end

end A083315.P14290602835661290624

namespace A083315

/-- `A074600(n)-A005418(2*n+1)` -/
def P14290602835661290624.Spec : Prop :=
  ∀ n, P14290602835661290624.a n = A083315 n

end A083315

/-! ## A083315.P5786387164378642919

`abs(A000351(n)-floor(A020515(n)/2))`
-/

namespace A083315.P5786387164378642919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - ⌊(A020515 n : ℚ) / 2⌋|

end

end A083315.P5786387164378642919

namespace A083315

/-- `abs(A000351(n)-floor(A020515(n)/2))` -/
def P5786387164378642919.Spec : Prop :=
  ∀ n, P5786387164378642919.a n = A083315 n

end A083315

/-! ## A083315.P9770789103344013009

`abs(A170939(n)/2-1-A000351(n))`
-/

namespace A083315.P9770789103344013009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A170939 n : ℚ) / 2 - 1 - (A000351 n : ℚ)|

end

end A083315.P9770789103344013009

namespace A083315

/-- `abs(A170939(n)/2-1-A000351(n))` -/
def P9770789103344013009.Spec : Prop :=
  ∀ n, P9770789103344013009.a n = (A083315 n : ℚ)

end A083315

/-! ## A083315.P226490626270601702

`abs(A083327(n)-A083331(n))`
-/

namespace A083315.P226490626270601702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083327 n - A083331 n|

end

end A083315.P226490626270601702

namespace A083315

/-- `abs(A083327(n)-A083331(n))` -/
def P226490626270601702.Spec : Prop :=
  ∀ n, P226490626270601702.a n = A083315 n

end A083315

/-! ## A083315.P8991754216472650809

`Δ[A003463(n)-A006095(n)]`
-/

namespace A083315.P8991754216472650809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083315.P8991754216472650809

namespace A083315

/-- `Δ[A003463(n)-A006095(n)]` -/
def P8991754216472650809.Spec : Prop :=
  ∀ n, P8991754216472650809.a n = A083315 n

end A083315

/-! ## A083315.P9952683605613301439

`A003463(n+1)-(A006516(n)+A003463(n))`
-/

namespace A083315.P9952683605613301439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1) - (A006516 n + A003463 n)

end

end A083315.P9952683605613301439

namespace A083315

/-- `A003463(n+1)-(A006516(n)+A003463(n))` -/
def P9952683605613301439.Spec : Prop :=
  ∀ n, P9952683605613301439.a n = A083315 n

end A083315

/-!
# A083316: a(n) = (2*6^n - (5^n - 3^n))/2.

The programs for A083316, the canonical program `A083316.P9917525844047762342` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083316 has offset 0).

The definition of A083316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083316.P9917525844047762342

`6^n-(5^n-3^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083316

/-- `6^n-(5^n-3^n)/2` -/
def P9917525844047762342.Spec : Prop :=
  ∀ n, P9917525844047762342.a n = (A083316 n : ℚ)

end A083316

/-! ## A083316.P14902985833878406059

`(2*6^n-(5^n-3^n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083316.P14902985833878406059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 6 ^ n : ℤ) - ((5 ^ n : ℤ) - (3 ^ n : ℤ)) : ℚ) / 2

end

end A083316.P14902985833878406059

namespace A083316

/-- `(2*6^n-(5^n-3^n))/2` -/
def P14902985833878406059.Spec : Prop :=
  ∀ n, P14902985833878406059.a n = (A083316 n : ℚ)

end A083316

/-! ## A083316.P16760855613847463651

`abs(A005059(n)-6^n)`
-/

namespace A083316.P16760855613847463651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005059 n - (6 ^ n : ℤ)|

end

end A083316.P16760855613847463651

namespace A083316

/-- `abs(A005059(n)-6^n)` -/
def P16760855613847463651.Spec : Prop :=
  ∀ n, P16760855613847463651.a n = A083316 n

end A083316

/-!
# A083318: a(0) = 1; for n>0, a(n) = 2^n + 1.

The programs for A083318, the canonical program `A083318.P6902906341366749197` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083318 has offset 0).

The definition of A083318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083318.P6902906341366749197

`or(1, 2^n)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083318

/-- `or(1, 2^n)` -/
def P6902906341366749197.Spec : Prop :=
  ∀ n, (P6902906341366749197.a n : ℤ) = A083318 n

theorem P6902906341366749197.correct : P6902906341366749197.Spec := by
  intro n
  simp only [A083318]

end A083318

/-! ## A083318.P6189651314761848362

`and(-2, 2^n)+1`
-/

namespace A083318.P6189651314761848362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (2 ^ n : ℤ) + 1

end

end A083318.P6189651314761848362

namespace A083318

/-- `and(-2, 2^n)+1` -/
def P6189651314761848362.Spec : Prop :=
  ∀ n, P6189651314761848362.a n = A083318 n

end A083318

/-! ## A083318.P14962701059246250407

`xor(1, and(-2, 2^n))`
-/

namespace A083318.P14962701059246250407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (-2) (2 ^ n : ℤ))

end

end A083318.P14962701059246250407

namespace A083318

/-- `xor(1, and(-2, 2^n))` -/
def P14962701059246250407.Spec : Prop :=
  ∀ n, P14962701059246250407.a n = A083318 n

end A083318

/-! ## A083318.P3283788898627845838

`ceil(sin(n)²)+2^n`
-/

namespace A083318.P3283788898627845838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ + (2 ^ n : ℤ)

end

end A083318.P3283788898627845838

namespace A083318

/-- `ceil(sin(n)²)+2^n` -/
def P3283788898627845838.Spec : Prop :=
  ∀ n, P3283788898627845838.a n = A083318 n

end A083318

/-! ## A083318.P3132643805338797905

`∑[2^(n-floor(atan(n)))]`
-/

namespace A083318.P3132643805338797905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083318.P3132643805338797905

namespace A083318

/-- `∑[2^(n-floor(atan(n)))]` -/
def P3132643805338797905.Spec : Prop :=
  ∀ n, P3132643805338797905.a n = (A083318 n : ℚ)

end A083318

/-! ## A083318.P9917023529182027210

`∑[2^ceil(n-atan(n))]`
-/

namespace A083318.P9917023529182027210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℝ) - Real.arctan (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083318.P9917023529182027210

namespace A083318

/-- `∑[2^ceil(n-atan(n))]` -/
def P9917023529182027210.Spec : Prop :=
  ∀ n, P9917023529182027210.a n = (A083318 n : ℚ)

end A083318

/-! ## A083318.P16314551844143267352

`round(atan(atan(n))+2^n)`
-/

namespace A083318.P16314551844143267352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (n : ℝ)) + (2 ^ n : ℝ))

end

end A083318.P16314551844143267352

namespace A083318

/-- `round(atan(atan(n))+2^n)` -/
def P16314551844143267352.Spec : Prop :=
  ∀ n, P16314551844143267352.a n = A083318 n

end A083318

/-! ## A083318.P12261063635234226654

`ogf((1-2x^2)/(1-3x+2x^2))`
-/

namespace A083318.P12261063635234226654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -3, 2] n

end

end A083318.P12261063635234226654

namespace A083318

/-- `ogf((1-2x^2)/(1-3x+2x^2))` -/
def P12261063635234226654.Spec : Prop :=
  ∀ n, P12261063635234226654.a n = A083318 n

end A083318

/-! ## A083318.P9914104157516951163

`floor(atan(n+1)+2^n)`
-/

namespace A083318.P9914104157516951163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ) + (2 ^ n : ℝ)⌋

end

end A083318.P9914104157516951163

namespace A083318

/-- `floor(atan(n+1)+2^n)` -/
def P9914104157516951163.Spec : Prop :=
  ∀ n, P9914104157516951163.a n = A083318 n

end A083318

/-! ## A083318.P15295685762122083642

`2^n--1%(n+1)`
-/

namespace A083318.P15295685762122083642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.tmod (-1) (n + 1 : ℤ)

end

end A083318.P15295685762122083642

namespace A083318

/-- `2^n--1%(n+1)` -/
def P15295685762122083642.Spec : Prop :=
  ∀ n, P15295685762122083642.a n = A083318 n

end A083318

/-! ## A083318.P5751005285292684678

`2*a(n-1)-1` with `a(0)=1, a(1)=3`
-/

namespace A083318.P5751005285292684678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) - 1

end

end A083318.P5751005285292684678

namespace A083318

/-- `2*a(n-1)-1` -/
def P5751005285292684678.Spec : Prop :=
  ∀ n, P5751005285292684678.a n = A083318 n

end A083318

/-! ## A083318.P13259041793365200264

`lcm(2, a(n-1))-1` with `a(0)=1, a(1)=3`
-/

namespace A083318.P13259041793365200264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.lcm 2 (a (n - 1)) : ℤ) - 1

end

end A083318.P13259041793365200264

namespace A083318

/-- `lcm(2, a(n-1))-1` -/
def P13259041793365200264.Spec : Prop :=
  ∀ n, P13259041793365200264.a n = A083318 n

end A083318

/-! ## A083318.P17546947188146324672

`2*floor(2^(n-1))+1`
-/

namespace A083318.P17546947188146324672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1

end

end A083318.P17546947188146324672

namespace A083318

/-- `2*floor(2^(n-1))+1` -/
def P17546947188146324672.Spec : Prop :=
  ∀ n, P17546947188146324672.a n = A083318 n

end A083318

/-! ## A083318.P12511273551050359813

`xor(1, 2*floor(2^(n-1)))`
-/

namespace A083318.P12511273551050359813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋)

end

end A083318.P12511273551050359813

namespace A083318

/-- `xor(1, 2*floor(2^(n-1)))` -/
def P12511273551050359813.Spec : Prop :=
  ∀ n, P12511273551050359813.a n = A083318 n

end A083318

/-! ## A083318.P14735301658654890700

`floor(acot(acot(n+1))+2^n)`
-/

namespace A083318.P14735301658654890700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n + 1 : ℝ)) + (2 ^ n : ℝ)⌋

end

end A083318.P14735301658654890700

namespace A083318

/-- `floor(acot(acot(n+1))+2^n)` -/
def P14735301658654890700.Spec : Prop :=
  ∀ n, P14735301658654890700.a n = A083318 n

end A083318

/-! ## A083318.P17286915709692529764

`∑{d}[-a(n-1), #^n]` with `a(0)=1, a(1)=2`
-/

namespace A083318.P17286915709692529764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A083318.P17286915709692529764

namespace A083318

/-- `∑{d}[-a(n-1), #^n]` -/
def P17286915709692529764.Spec : Prop :=
  ∀ n, (P17286915709692529764.a n : ℤ) = A083318 n

end A083318

/-! ## A083318.P14900993129072544822

`∑[2^(C(n, n²)+n-1)]`
-/

namespace A083318.P14900993129072544822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose n (n ^ 2) : ℤ) + ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083318.P14900993129072544822

namespace A083318

/-- `∑[2^(C(n, n²)+n-1)]` -/
def P14900993129072544822.Spec : Prop :=
  ∀ n, P14900993129072544822.a n = (A083318 n : ℚ)

end A083318

/-! ## A083318.P17917740817696943939

`floor(a(n-1)+2^(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A083318.P17917740817696943939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A083318.P17917740817696943939

namespace A083318

/-- `floor(a(n-1)+2^(n-1))` -/
def P17917740817696943939.Spec : Prop :=
  ∀ n, P17917740817696943939.a n = A083318 n

end A083318

/-! ## A083318.P10320020966558958454

`abs(a(n-1)+a(n-1)-1)` with `a(0)=1, a(1)=3`
-/

namespace A083318.P10320020966558958454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  |a (n - 1) + (a (n - 1) - 1)|

end

end A083318.P10320020966558958454

namespace A083318

/-- `abs(a(n-1)+a(n-1)-1)` -/
def P10320020966558958454.Spec : Prop :=
  ∀ n, P10320020966558958454.a n = A083318 n

end A083318

/-! ## A083318.P1108648614014428267

`abs(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A083318.P1108648614014428267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  |1 - a (n - 1) - a (n - 1)|

end

end A083318.P1108648614014428267

namespace A083318

/-- `abs(1-a(n-1)-a(n-1))` -/
def P1108648614014428267.Spec : Prop :=
  ∀ n, P1108648614014428267.a n = A083318 n

end A083318

/-!
# A083319: a(n) = 4^n+3^n-2^n.

The programs for A083319, the canonical program `A083319.P2639817475178864520` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083319 has offset 0).

The definition of A083319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+3^n-2^n` (program `A083319.P2639817475178864520`, by `A083319.P2639817475178864520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083319.P2639817475178864520

`4^n+3^n-2^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083319

/-- `4^n+3^n-2^n` -/
def P2639817475178864520.Spec : Prop :=
  ∀ n, P2639817475178864520.a n = A083319 n

theorem P2639817475178864520.correct : P2639817475178864520.Spec := by
  intro n
  simp only [A083319]

end A083319

/-! ## A083319.P1926791680509152956

`or(3^n-2^n, 4^n)`
-/

namespace A083319.P1926791680509152956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 ^ n : ℤ) - (2 ^ n : ℤ)) (4 ^ n : ℤ)

end

end A083319.P1926791680509152956

namespace A083319

/-- `or(3^n-2^n, 4^n)` -/
def P1926791680509152956.Spec : Prop :=
  ∀ n, P1926791680509152956.a n = A083319 n

end A083319

/-! ## A083319.P14952358833475959874

`xor(3^n-2^n, 4^n)`
-/

namespace A083319.P14952358833475959874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((3 ^ n : ℤ) - (2 ^ n : ℤ)) (4 ^ n : ℤ)

end

end A083319.P14952358833475959874

namespace A083319

/-- `xor(3^n-2^n, 4^n)` -/
def P14952358833475959874.Spec : Prop :=
  ∀ n, P14952358833475959874.a n = A083319 n

end A083319

/-! ## A083319.P7214890844475642621

`abs(A000079(n)-A074605(n))`
-/

namespace A083319.P7214890844475642621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A074605 n|

end

end A083319.P7214890844475642621

namespace A083319

/-- `abs(A000079(n)-A074605(n))` -/
def P7214890844475642621.Spec : Prop :=
  ∀ n, P7214890844475642621.a n = A083319 n

end A083319

/-! ## A083319.P10736596307731904255

`abs(A094375(n)+Δ[A006095(n)])`
-/

namespace A083319.P10736596307731904255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094375 n + (f1 (n + 1) - f1 n)|

end

end A083319.P10736596307731904255

namespace A083319

/-- `abs(A094375(n)+Δ[A006095(n)])` -/
def P10736596307731904255.Spec : Prop :=
  ∀ n, P10736596307731904255.a n = A083319 n

end A083319

/-! ## A083319.P3634716912188528120

`abs(A094375(n)+A134169(n)-1)`
-/

namespace A083319.P3634716912188528120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094375 n + (A134169 n - 1)|

end

end A083319.P3634716912188528120

namespace A083319

/-- `abs(A094375(n)+A134169(n)-1)` -/
def P3634716912188528120.Spec : Prop :=
  ∀ n, P3634716912188528120.a n = A083319 n

end A083319

/-! ## A083319.P480572310461666632

`Δ[A000392(n+1)+4^n/3]`
-/

namespace A083319.P480572310461666632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000392 (n + 1) : ℚ) + (4 ^ n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083319.P480572310461666632

namespace A083319

/-- `Δ[A000392(n+1)+4^n/3]` -/
def P480572310461666632.Spec : Prop :=
  ∀ n, P480572310461666632.a n = (A083319 n : ℚ)

end A083319

/-! ## A083319.P1464593642900392938

`Δ[A134063(n)+A047849(n)]`
-/

namespace A083319.P1464593642900392938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n + A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083319.P1464593642900392938

namespace A083319

/-- `Δ[A134063(n)+A047849(n)]` -/
def P1464593642900392938.Spec : Prop :=
  ∀ n, P1464593642900392938.a n = A083319 n

end A083319

/-! ## A083319.P2119408768984282366

`Δ[A085282(n)-A000051(n)]`
-/

namespace A083319.P2119408768984282366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083319.P2119408768984282366

namespace A083319

/-- `Δ[A085282(n)-A000051(n)]` -/
def P2119408768984282366.Spec : Prop :=
  ∀ n, P2119408768984282366.a n = A083319 n

end A083319

/-! ## A083319.P15819736715157661740

`Δ[A085282(n)-A000079(n)]`
-/

namespace A083319.P15819736715157661740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083319.P15819736715157661740

namespace A083319

/-- `Δ[A085282(n)-A000079(n)]` -/
def P15819736715157661740.Spec : Prop :=
  ∀ n, P15819736715157661740.a n = A083319 n

end A083319

/-! ## A083319.P1928697483621092993

`abs(A001047(n)+Δ[A002450(n)])`
-/

namespace A083319.P1928697483621092993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n + (f1 (n + 1) - f1 n)|

end

end A083319.P1928697483621092993

namespace A083319

/-- `abs(A001047(n)+Δ[A002450(n)])` -/
def P1928697483621092993.Spec : Prop :=
  ∀ n, P1928697483621092993.a n = A083319 n

end A083319

/-!
# A083320: a(n) = 5^n + 4^n - 3^n.

The programs for A083320, the canonical program `A083320.P8916564658639178308` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083320 has offset 0).

The definition of A083320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+4^n-3^n` (program `A083320.P8916564658639178308`, by `A083320.P8916564658639178308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083320.P8916564658639178308

`5^n+4^n-3^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083320

/-- `5^n+4^n-3^n` -/
def P8916564658639178308.Spec : Prop :=
  ∀ n, P8916564658639178308.a n = A083320 n

theorem P8916564658639178308.correct : P8916564658639178308.Spec := by
  intro n
  simp only [A083320]

end A083320

/-! ## A083320.P12237870025385491108

`abs(3^n-A074611(n))`
-/

namespace A083320.P12237870025385491108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A074611 n|

end

end A083320.P12237870025385491108

namespace A083320

/-- `abs(3^n-A074611(n))` -/
def P12237870025385491108.Spec : Prop :=
  ∀ n, P12237870025385491108.a n = A083320 n

end A083320

/-! ## A083320.P5979247046178151401

`abs(A074611(n)-A000244(n))`
-/

namespace A083320.P5979247046178151401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074611 n - A000244 n|

end

end A083320.P5979247046178151401

namespace A083320

/-- `abs(A074611(n)-A000244(n))` -/
def P5979247046178151401.Spec : Prop :=
  ∀ n, P5979247046178151401.a n = A083320 n

end A083320

/-! ## A083320.P5990392342201592377

`abs(A007689(n)-A074532(n))`
-/

namespace A083320.P5990392342201592377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007689 n - A074532 n|

end

end A083320.P5990392342201592377

namespace A083320

/-- `abs(A007689(n)-A074532(n))` -/
def P5990392342201592377.Spec : Prop :=
  ∀ n, P5990392342201592377.a n = A083320 n

end A083320

/-! ## A083320.P4854335424400616692

`abs(A024023(n)-A155616(n))`
-/

namespace A083320.P4854335424400616692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024023 n - A155616 n|

end

end A083320.P4854335424400616692

namespace A083320

/-- `abs(A024023(n)-A155616(n))` -/
def P4854335424400616692.Spec : Prop :=
  ∀ n, P4854335424400616692.a n = A083320 n

end A083320

/-! ## A083320.P9357943509513914726

`abs(A147975(n+1)+A074501(n))`
-/

namespace A083320.P9357943509513914726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147975 (n + 1) + A074501 n|

end

end A083320.P9357943509513914726

namespace A083320

/-- `abs(A147975(n+1)+A074501(n))` -/
def P9357943509513914726.Spec : Prop :=
  ∀ n, P9357943509513914726.a n = A083320 n

end A083320

/-! ## A083320.P13653828181698919194

`Δ[A007798(n)+A002450(n)]`
-/

namespace A083320.P13653828181698919194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083320.P13653828181698919194

namespace A083320

/-- `Δ[A007798(n)+A002450(n)]` -/
def P13653828181698919194.Spec : Prop :=
  ∀ n, P13653828181698919194.a n = A083320 n

end A083320

/-! ## A083320.P3434863022580333413

`Δ[A162725(n)+A003463(n)]`
-/

namespace A083320.P3434863022580333413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162725 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083320.P3434863022580333413

namespace A083320

/-- `Δ[A162725(n)+A003463(n)]` -/
def P3434863022580333413.Spec : Prop :=
  ∀ n, P3434863022580333413.a n = A083320 n

end A083320

/-! ## A083320.P17334966043889077221

`Δ[A002450(n)+A003463(n)-A007051(n)]`
-/

namespace A083320.P17334966043889077221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + (A003463 n - A007051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083320.P17334966043889077221

namespace A083320

/-- `Δ[A002450(n)+A003463(n)-A007051(n)]` -/
def P17334966043889077221.Spec : Prop :=
  ∀ n, P17334966043889077221.a n = A083320 n

end A083320

/-!
# A083321: a(n) = (-1)^n + (-2)^n - (-3)^n.

The programs for A083321, the canonical program `A083321.P1651419719373470850` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083321 has offset 0).

The definition of A083321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n+(-2)^n-(-3)^n` (program `A083321.P1651419719373470850`, by `A083321.P1651419719373470850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083321.P1688433575235854198

`(-1)^n*(1+2^n-3^n)`
-/

namespace A083321.P1688433575235854198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((1 + 2 ^ n : ℤ) - (3 ^ n : ℤ))

end

end A083321.P1688433575235854198

namespace A083321

/-- `(-1)^n*(1+2^n-3^n)` -/
def P1688433575235854198.Spec : Prop :=
  ∀ n, P1688433575235854198.a n = A083321 n

end A083321

/-! ## A083321.P1651419719373470850

`(-1)^n+(-2)^n-(-3)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083321

/-- `(-1)^n+(-2)^n-(-3)^n` -/
def P1651419719373470850.Spec : Prop :=
  ∀ n, P1651419719373470850.a n = A083321 n

theorem P1651419719373470850.correct : P1651419719373470850.Spec := by
  intro n
  simp only [A083321]

end A083321

/-! ## A083321.P16542647755455750246

`(A000051(n)-3^n)/(-1)^n`
-/

namespace A083321.P16542647755455750246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n - (3 ^ n : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A083321.P16542647755455750246

namespace A083321

/-- `(A000051(n)-3^n)/(-1)^n` -/
def P16542647755455750246.Spec : Prop :=
  ∀ n, P16542647755455750246.a n = (A083321 n : ℚ)

end A083321

/-! ## A083321.P15090742839993397625

`(A000244(n)-A000051(n))/A033999(n+1)`
-/

namespace A083321.P15090742839993397625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n - A000051 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A083321.P15090742839993397625

namespace A083321

/-- `(A000244(n)-A000051(n))/A033999(n+1)` -/
def P15090742839993397625.Spec : Prop :=
  ∀ n, P15090742839993397625.a n = (A083321 n : ℚ)

end A083321

/-!
# A083322: a(n) = 2^n - A081374(n).

The programs for A083322, the canonical program `A083322.P814296045214432664` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083322 has offset 1).

The definition of A083322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083322.P12881525959943140835

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=11`
-/

namespace A083322.P12881525959943140835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 11] fun n a =>
  2 * a (n - 1) - a (n - 3) + 2 * a (n - 4)

end

end A083322.P12881525959943140835

namespace A083322

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P12881525959943140835.Spec : Prop :=
  ∀ n, P12881525959943140835.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P814296045214432664

`2^(n+1)-A081374(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083322

/-- `2^(n+1)-A081374(n+1)` -/
def P814296045214432664.Spec : Prop :=
  ∀ n, P814296045214432664.a n = A083322 (n + 1)

theorem P814296045214432664.correct : P814296045214432664.Spec := by
  intro n
  simp only [A083322, Nat.add_sub_cancel]

end A083322

/-! ## A083322.P15764732288483575407

`ogf((1+2x^2)/(1-2x+x^3-2x^4))`
-/

namespace A083322.P15764732288483575407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -2, 0, 1, -2] n

end

end A083322.P15764732288483575407

namespace A083322

/-- `ogf((1+2x^2)/(1-2x+x^3-2x^4))` -/
def P15764732288483575407.Spec : Prop :=
  ∀ n, P15764732288483575407.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P3800155496432958332

`A242563(n)+2^n`
-/

namespace A083322.P3800155496432958332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 n + (2 ^ n : ℤ)

end

end A083322.P3800155496432958332

namespace A083322

/-- `A242563(n)+2^n` -/
def P3800155496432958332.Spec : Prop :=
  ∀ n, P3800155496432958332.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P10308456839570648827

`A130750(n)-a(n-1)` with `a(0)=1`
-/

namespace A083322.P10308456839570648827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130750 n - a (n - 1)

end

end A083322.P10308456839570648827

namespace A083322

/-- `A130750(n)-a(n-1)` -/
def P10308456839570648827.Spec : Prop :=
  ∀ n, P10308456839570648827.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P9386388156064265256

`A281166(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A083322.P9386388156064265256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281166 (n + 1) - a (n - 1)

end

end A083322.P9386388156064265256

namespace A083322

/-- `A281166(n+1)-a(n-1)` -/
def P9386388156064265256.Spec : Prop :=
  ∀ n, P9386388156064265256.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P5220142981762334669

`A158745(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A083322.P5220142981762334669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158745 (3 * n) - a (n - 1)

end

end A083322.P5220142981762334669

namespace A083322

/-- `A158745(3*n)-a(n-1)` -/
def P5220142981762334669.Spec : Prop :=
  ∀ n, P5220142981762334669.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P15707916862885806171

`A130624(n)+A130151(n)`
-/

namespace A083322.P15707916862885806171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130624 n + A130151 n

end

end A083322.P15707916862885806171

namespace A083322

/-- `A130624(n)+A130151(n)` -/
def P15707916862885806171.Spec : Prop :=
  ∀ n, P15707916862885806171.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P16429324899491078766

`A048573(n)-A024493(n)`
-/

namespace A083322.P16429324899491078766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n - A024493 n

end

end A083322.P16429324899491078766

namespace A083322

/-- `A048573(n)-A024493(n)` -/
def P16429324899491078766.Spec : Prop :=
  ∀ n, P16429324899491078766.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P16301356648303015503

`A084170(n)-A111927(n)`
-/

namespace A083322.P16301356648303015503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084170 n - A111927 n

end

end A083322.P16301356648303015503

namespace A083322

/-- `A084170(n)-A111927(n)` -/
def P16301356648303015503.Spec : Prop :=
  ∀ n, P16301356648303015503.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P5800674594018753759

`A130625(n)-A132798(n)`
-/

namespace A083322.P5800674594018753759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130625 n - A132798 n

end

end A083322.P5800674594018753759

namespace A083322

/-- `A130625(n)-A132798(n)` -/
def P5800674594018753759.Spec : Prop :=
  ∀ n, P5800674594018753759.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P3696458989601956378

`A283642(n)-A092220(n)`
-/

namespace A083322.P3696458989601956378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n - A092220 n

end

end A083322.P3696458989601956378

namespace A083322

/-- `A283642(n)-A092220(n)` -/
def P3696458989601956378.Spec : Prop :=
  ∀ n, P3696458989601956378.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P12727719902062365026

`xor(A000079(n), A242563(n))`
-/

namespace A083322.P12727719902062365026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A242563 n)

end

end A083322.P12727719902062365026

namespace A083322

/-- `xor(A000079(n), A242563(n))` -/
def P12727719902062365026.Spec : Prop :=
  ∀ n, P12727719902062365026.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P12017998464392739684

`A133684(A047268(n+2)+2)`
-/

namespace A083322.P12017998464392739684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047268 (n + 2) + 2).toNat

end

end A083322.P12017998464392739684

namespace A083322

/-- `A133684(A047268(n+2)+2)` -/
def P12017998464392739684.Spec : Prop :=
  ∀ n, P12017998464392739684.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P531451048881809113

`A130785(n)-A242563(n+1)`
-/

namespace A083322.P531451048881809113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130785 n - A242563 (n + 1)

end

end A083322.P531451048881809113

namespace A083322

/-- `A130785(n)-A242563(n+1)` -/
def P531451048881809113.Spec : Prop :=
  ∀ n, P531451048881809113.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P16018396745475601226

`A001045(n+2)-A092220(n)`
-/

namespace A083322.P16018396745475601226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) - A092220 n

end

end A083322.P16018396745475601226

namespace A083322

/-- `A001045(n+2)-A092220(n)` -/
def P16018396745475601226.Spec : Prop :=
  ∀ n, P16018396745475601226.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P12382503075939398501

`A112447(2*n)-A092220(n)`
-/

namespace A083322.P12382503075939398501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (2 * n) - A092220 n

end

end A083322.P12382503075939398501

namespace A083322

/-- `A112447(2*n)-A092220(n)` -/
def P12382503075939398501.Spec : Prop :=
  ∀ n, P12382503075939398501.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P11011651307965017539

`record[A078008(n)-A131531(n+1)]`
-/

namespace A083322.P11011651307965017539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n - A131531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083322.P11011651307965017539

namespace A083322

/-- `record[A078008(n)-A131531(n+1)]` -/
def P11011651307965017539.Spec : Prop :=
  ∀ n, P11011651307965017539.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P13206263136557935815

`A024495(n+1)+A001045(n+1)`
-/

namespace A083322.P13206263136557935815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) + A001045 (n + 1)

end

end A083322.P13206263136557935815

namespace A083322

/-- `A024495(n+1)+A001045(n+1)` -/
def P13206263136557935815.Spec : Prop :=
  ∀ n, P13206263136557935815.a n = A083322 (n + 1)

end A083322

/-! ## A083322.P3909098915112976728

`A131531(n+1)+A130781(n+1)`
-/

namespace A083322.P3909098915112976728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + A130781 (n + 1)

end

end A083322.P3909098915112976728

namespace A083322

/-- `A131531(n+1)+A130781(n+1)` -/
def P3909098915112976728.Spec : Prop :=
  ∀ n, P3909098915112976728.a n = A083322 (n + 1)

end A083322

/-!
# A083323: a(n) = 3^n - 2^n + 1.

The programs for A083323, the canonical program `A083323.P7131212959900331336` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083323 has offset 0).

The definition of A083323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-2^n+1` (program `A083323.P7131212959900331336`, by `A083323.P7131212959900331336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083323.P7131212959900331336

`3^n-2^n+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083323

/-- `3^n-2^n+1` -/
def P7131212959900331336.Spec : Prop :=
  ∀ n, P7131212959900331336.a n = A083323 n

theorem P7131212959900331336.correct : P7131212959900331336.Spec := by
  intro n
  simp only [A083323]

end A083323

/-! ## A083323.P17604329357163951375

`∑[ogf((1-4x+5x^2)/(1-5x+6x^2))]`
-/

namespace A083323.P17604329357163951375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 5] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083323.P17604329357163951375

namespace A083323

/-- `∑[ogf((1-4x+5x^2)/(1-5x+6x^2))]` -/
def P17604329357163951375.Spec : Prop :=
  ∀ n, P17604329357163951375.a n = A083323 n

end A083323

/-! ## A083323.P7219767337583683555

`abs(xor(3^n-2^n, -1))`
-/

namespace A083323.P7219767337583683555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((3 ^ n : ℤ) - (2 ^ n : ℤ)) (-1)|

end

end A083323.P7219767337583683555

namespace A083323

/-- `abs(xor(3^n-2^n, -1))` -/
def P7219767337583683555.Spec : Prop :=
  ∀ n, P7219767337583683555.a n = A083323 n

end A083323

/-! ## A083323.P933007797456764398

`-xor(3^n-2^n, -1)`
-/

namespace A083323.P933007797456764398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((3 ^ n : ℤ) - (2 ^ n : ℤ)) (-1)

end

end A083323.P933007797456764398

namespace A083323

/-- `-xor(3^n-2^n, -1)` -/
def P933007797456764398.Spec : Prop :=
  ∀ n, P933007797456764398.a n = A083323 n

end A083323

/-! ## A083323.P8326931773619161192

`abs(∑[3*a(n-1)]-2^n)` with `a(0)=2, a(1)=2`
-/

namespace A083323.P8326931773619161192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)|

end

end A083323.P8326931773619161192

namespace A083323

/-- `abs(∑[3*a(n-1)]-2^n)` -/
def P8326931773619161192.Spec : Prop :=
  ∀ n, P8326931773619161192.a n = A083323 n

end A083323

/-! ## A083323.P10723390259946388676

`floor(∑[3*a(n-1)]-2^n)` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A083323.P10723390259946388676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A083323.P10723390259946388676

namespace A083323

/-- `floor(∑[3*a(n-1)]-2^n)` -/
def P10723390259946388676.Spec : Prop :=
  ∀ n, P10723390259946388676.a n = A083323 n

end A083323

/-! ## A083323.P16079124010472584061

`ceil(∑[3*a(n-1)]-2^n)` with `a(0)=2, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A083323.P16079124010472584061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A083323.P16079124010472584061

namespace A083323

/-- `ceil(∑[3*a(n-1)]-2^n)` -/
def P16079124010472584061.Spec : Prop :=
  ∀ n, P16079124010472584061.a n = A083323 n

end A083323

/-! ## A083323.P7854033063118564909

`round(∑[3*a(n-1)]-2^n)` with `a(0)=2, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A083323.P7854033063118564909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A083323.P7854033063118564909

namespace A083323

/-- `round(∑[3*a(n-1)]-2^n)` -/
def P7854033063118564909.Spec : Prop :=
  ∀ n, P7854033063118564909.a n = A083323 n

end A083323

/-! ## A083323.P17380312734045883639

`Δ[A134063(n)+n]`
-/

namespace A083323.P17380312734045883639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083323.P17380312734045883639

namespace A083323

/-- `Δ[A134063(n)+n]` -/
def P17380312734045883639.Spec : Prop :=
  ∀ n, P17380312734045883639.a n = A083323 n

end A083323

/-! ## A083323.P14920194639891902497

`record[Δ[A098293(n)]+1]`
-/

namespace A083323.P14920194639891902497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083323.P14920194639891902497

namespace A083323

/-- `record[Δ[A098293(n)]+1]` -/
def P14920194639891902497.Spec : Prop :=
  ∀ n, P14920194639891902497.a n = A083323 n

end A083323

/-! ## A083323.P9619401929070294105

`record[1-Δ[A258439(n)]]`
-/

namespace A083323.P9619401929070294105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083323.P9619401929070294105

namespace A083323

/-- `record[1-Δ[A258439(n)]]` -/
def P9619401929070294105.Spec : Prop :=
  ∀ n, P9619401929070294105.a n = A083323 n

end A083323

/-! ## A083323.P4809780174983512860

`abs(2^n-A034472(n))`
-/

namespace A083323.P4809780174983512860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A034472 n|

end

end A083323.P4809780174983512860

namespace A083323

/-- `abs(2^n-A034472(n))` -/
def P4809780174983512860.Spec : Prop :=
  ∀ n, P4809780174983512860.a n = A083323 n

end A083323

/-! ## A083323.P11654059965077847682

`abs(3^n-A000225(n))`
-/

namespace A083323.P11654059965077847682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A000225 n|

end

end A083323.P11654059965077847682

namespace A083323

/-- `abs(3^n-A000225(n))` -/
def P11654059965077847682.Spec : Prop :=
  ∀ n, P11654059965077847682.a n = A083323 n

end A083323

/-! ## A083323.P14324990606755649483

`Δ[A000392(n+1)+n]`
-/

namespace A083323.P14324990606755649483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083323.P14324990606755649483

namespace A083323

/-- `Δ[A000392(n+1)+n]` -/
def P14324990606755649483.Spec : Prop :=
  ∀ n, P14324990606755649483.a n = A083323 n

end A083323

/-! ## A083323.P2768996180132131868

`Δ[∑[A094388(n)]-2^n]`
-/

namespace A083323.P2768996180132131868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083323.P2768996180132131868

namespace A083323

/-- `Δ[∑[A094388(n)]-2^n]` -/
def P2768996180132131868.Spec : Prop :=
  ∀ n, P2768996180132131868.a n = A083323 n

end A083323

/-! ## A083323.P17139358973954586656

`abs(3^n-(A000079(n)-1))`
-/

namespace A083323.P17139358973954586656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - (A000079 n - 1)|

end

end A083323.P17139358973954586656

namespace A083323

/-- `abs(3^n-(A000079(n)-1))` -/
def P17139358973954586656.Spec : Prop :=
  ∀ n, P17139358973954586656.a n = A083323 n

end A083323

/-! ## A083323.P6055773510601679957

`abs(A024023(n)-(2^n-2))`
-/

namespace A083323.P6055773510601679957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024023 n - ((2 ^ n : ℤ) - 2)|

end

end A083323.P6055773510601679957

namespace A083323

/-- `abs(A024023(n)-(2^n-2))` -/
def P6055773510601679957.Spec : Prop :=
  ∀ n, P6055773510601679957.a n = A083323 n

end A083323

/-! ## A083323.P16047843227344745117

`abs(2^n-1-Δ[A003462(n)])`
-/

namespace A083323.P16047843227344745117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - (f1 (n + 1) - f1 n)|

end

end A083323.P16047843227344745117

namespace A083323

/-- `abs(2^n-1-Δ[A003462(n)])` -/
def P16047843227344745117.Spec : Prop :=
  ∀ n, P16047843227344745117.a n = A083323 n

end A083323

/-! ## A083323.P1878138040361069668

`xor(A057427(n), A240506(n))`
-/

namespace A083323.P1878138040361069668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A240506 n)

end

end A083323.P1878138040361069668

namespace A083323

/-- `xor(A057427(n), A240506(n))` -/
def P1878138040361069668.Spec : Prop :=
  ∀ n, P1878138040361069668.a n = A083323 n

end A083323

/-! ## A083323.P13573901993301414469

`abs(A000225(n)-A000244(n))`
-/

namespace A083323.P13573901993301414469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A000244 n|

end

end A083323.P13573901993301414469

namespace A083323

/-- `abs(A000225(n)-A000244(n))` -/
def P13573901993301414469.Spec : Prop :=
  ∀ n, P13573901993301414469.a n = A083323 n

end A083323

/-!
# A083324: a(n) = 4^n - 3^n + 2^n.

The programs for A083324, the canonical program `A083324.P712014390410923406` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083324 has offset 0).

The definition of A083324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-3^n+2^n` (program `A083324.P712014390410923406`, by `A083324.P712014390410923406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083324.P712014390410923406

`4^n-3^n+2^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083324

/-- `4^n-3^n+2^n` -/
def P712014390410923406.Spec : Prop :=
  ∀ n, P712014390410923406.a n = A083324 n

theorem P712014390410923406.correct : P712014390410923406.Spec := by
  intro n
  simp only [A083324]

end A083324

/-! ## A083324.P4620306088232184091

`abs(4^n-A001047(n))`
-/

namespace A083324.P4620306088232184091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A001047 n|

end

end A083324.P4620306088232184091

namespace A083324

/-- `abs(4^n-A001047(n))` -/
def P4620306088232184091.Spec : Prop :=
  ∀ n, P4620306088232184091.a n = A083324 n

end A083324

/-! ## A083324.P13273154241821396097

`abs(3^n+1-A001576(n))`
-/

namespace A083324.P13273154241821396097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n + 1 : ℤ) - A001576 n|

end

end A083324.P13273154241821396097

namespace A083324

/-- `abs(3^n+1-A001576(n))` -/
def P13273154241821396097.Spec : Prop :=
  ∀ n, P13273154241821396097.a n = A083324 n

end A083324

/-! ## A083324.P4914410147515408459

`floor(4^n-A056182(n)/2)`
-/

namespace A083324.P4914410147515408459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) - (A056182 n : ℚ) / 2⌋

end

end A083324.P4914410147515408459

namespace A083324

/-- `floor(4^n-A056182(n)/2)` -/
def P4914410147515408459.Spec : Prop :=
  ∀ n, P4914410147515408459.a n = A083324 n

end A083324

/-! ## A083324.P7973251637869258577

`xor(A103454(n), A362316(n))`
-/

namespace A083324.P7973251637869258577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103454 n) (A362316 n)

end

end A083324.P7973251637869258577

namespace A083324

/-- `xor(A103454(n), A362316(n))` -/
def P7973251637869258577.Spec : Prop :=
  ∀ n, P7973251637869258577.a n = A083324 n

end A083324

/-! ## A083324.P13655009851665332088

`abs(A001576(n)-A034472(n))`
-/

namespace A083324.P13655009851665332088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001576 n - A034472 n|

end

end A083324.P13655009851665332088

namespace A083324

/-- `abs(A001576(n)-A034472(n))` -/
def P13655009851665332088.Spec : Prop :=
  ∀ n, P13655009851665332088.a n = A083324 n

end A083324

/-! ## A083324.P5325700294075290007

`abs(A024023(n)-A099393(n))`
-/

namespace A083324.P5325700294075290007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024023 n - A099393 n|

end

end A083324.P5325700294075290007

namespace A083324

/-- `abs(A024023(n)-A099393(n))` -/
def P5325700294075290007.Spec : Prop :=
  ∀ n, P5325700294075290007.a n = A083324 n

end A083324

/-! ## A083324.P17036427989637945999

`abs(A000244(n)-A161168(n))`
-/

namespace A083324.P17036427989637945999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A161168 n|

end

end A083324.P17036427989637945999

namespace A083324

/-- `abs(A000244(n)-A161168(n))` -/
def P17036427989637945999.Spec : Prop :=
  ∀ n, P17036427989637945999.a n = A083324 n

end A083324

/-! ## A083324.P5874373147951298889

`abs(A147975(n+1)+A048578(n))`
-/

namespace A083324.P5874373147951298889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147975 (n + 1) + A048578 n|

end

end A083324.P5874373147951298889

namespace A083324

/-- `abs(A147975(n+1)+A048578(n))` -/
def P5874373147951298889.Spec : Prop :=
  ∀ n, P5874373147951298889.a n = A083324 n

end A083324

/-! ## A083324.P4140113923317321221

`abs(A003063(n+1)-A020522(n))`
-/

namespace A083324.P4140113923317321221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003063 (n + 1) - A020522 n|

end

end A083324.P4140113923317321221

namespace A083324

/-- `abs(A003063(n+1)-A020522(n))` -/
def P4140113923317321221.Spec : Prop :=
  ∀ n, P4140113923317321221.a n = A083324 n

end A083324

/-! ## A083324.P16770987810930497202

`abs(A152166(2*n)+A005061(n))`
-/

namespace A083324.P16770987810930497202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152166 (2 * n) + A005061 n|

end

end A083324.P16770987810930497202

namespace A083324

/-- `abs(A152166(2*n)+A005061(n))` -/
def P16770987810930497202.Spec : Prop :=
  ∀ n, P16770987810930497202.a n = A083324 n

end A083324

/-! ## A083324.P6523550958355495405

`abs(A000079(n)²-A304973(Δ[n²]))`
-/

namespace A083324.P6523550958355495405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n ^ 2 - A304973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A083324.P6523550958355495405

namespace A083324

/-- `abs(A000079(n)²-A304973(Δ[n²]))` -/
def P6523550958355495405.Spec : Prop :=
  ∀ n, P6523550958355495405.a n = A083324 n

end A083324

/-! ## A083324.P12434260540748292974

`Δ[A162725(n)+2^n]`
-/

namespace A083324.P12434260540748292974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162725 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083324.P12434260540748292974

namespace A083324

/-- `Δ[A162725(n)+2^n]` -/
def P12434260540748292974.Spec : Prop :=
  ∀ n, P12434260540748292974.a n = A083324 n

end A083324

/-! ## A083324.P17717025812340423678

`A085601(n)%A001551(n)`
-/

namespace A083324.P17717025812340423678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085601 n) (A001551 n)

end

end A083324.P17717025812340423678

namespace A083324

/-- `A085601(n)%A001551(n)` -/
def P17717025812340423678.Spec : Prop :=
  ∀ n, P17717025812340423678.a n = A083324 n

end A083324

/-! ## A083324.P12882504147025196950

`xor(A002446(n), A083319(n))`
-/

namespace A083324.P12882504147025196950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002446 n) (A083319 n)

end

end A083324.P12882504147025196950

namespace A083324

/-- `xor(A002446(n), A083319(n))` -/
def P12882504147025196950.Spec : Prop :=
  ∀ n, P12882504147025196950.a n = A083324 n

end A083324

/-! ## A083324.P8715605755296021242

`abs(A006516(n)-A083330(n))`
-/

namespace A083324.P8715605755296021242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006516 n - A083330 n|

end

end A083324.P8715605755296021242

namespace A083324

/-- `abs(A006516(n)-A083330(n))` -/
def P8715605755296021242.Spec : Prop :=
  ∀ n, P8715605755296021242.a n = A083324 n

end A083324

/-! ## A083324.P17373533382223365533

`Δ[A079319(n)-A007051(n)]`
-/

namespace A083324.P17373533382223365533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079319 n - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083324.P17373533382223365533

namespace A083324

/-- `Δ[A079319(n)-A007051(n)]` -/
def P17373533382223365533.Spec : Prop :=
  ∀ n, P17373533382223365533.a n = A083324 n

end A083324

/-! ## A083324.P13773792165549916274

`Δ[A134168(n)-A007581(n)]`
-/

namespace A083324.P13773792165549916274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083324.P13773792165549916274

namespace A083324

/-- `Δ[A134168(n)-A007581(n)]` -/
def P13773792165549916274.Spec : Prop :=
  ∀ n, P13773792165549916274.a n = A083324 n

end A083324

/-! ## A083324.P17909427484323093822

`A028403(n+1)%A074526(n)`
-/

namespace A083324.P17909427484323093822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028403 (n + 1)) (A074526 n)

end

end A083324.P17909427484323093822

namespace A083324

/-- `A028403(n+1)%A074526(n)` -/
def P17909427484323093822.Spec : Prop :=
  ∀ n, P17909427484323093822.a n = A083324 n

end A083324

/-!
# A083325: a(n) = 5^n - 4^n + 3^n.

The programs for A083325, the canonical program `A083325.P614194036906216737` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083325 has offset 0).

The definition of A083325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-4^n+3^n` (program `A083325.P614194036906216737`, by `A083325.P614194036906216737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083325.P614194036906216737

`5^n-4^n+3^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083325

/-- `5^n-4^n+3^n` -/
def P614194036906216737.Spec : Prop :=
  ∀ n, P614194036906216737.a n = A083325 n

theorem P614194036906216737.correct : P614194036906216737.Spec := by
  intro n
  simp only [A083325]

end A083325

/-! ## A083325.P14016695859640770739

`abs(4^n-A074606(n))`
-/

namespace A083325.P14016695859640770739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A074606 n|

end

end A083325.P14016695859640770739

namespace A083325

/-- `abs(4^n-A074606(n))` -/
def P14016695859640770739.Spec : Prop :=
  ∀ n, P14016695859640770739.a n = A083325 n

end A083325

/-! ## A083325.P6832851448282484215

`abs(5^n-A005061(n))`
-/

namespace A083325.P6832851448282484215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - A005061 n|

end

end A083325.P6832851448282484215

namespace A083325

/-- `abs(5^n-A005061(n))` -/
def P6832851448282484215.Spec : Prop :=
  ∀ n, P6832851448282484215.a n = A083325 n

end A083325

/-! ## A083325.P10321917458622262012

`abs(A155626(n)+3^n-1)`
-/

namespace A083325.P10321917458622262012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155626 n + ((3 ^ n : ℤ) - 1)|

end

end A083325.P10321917458622262012

namespace A083325

/-- `abs(A155626(n)+3^n-1)` -/
def P10321917458622262012.Spec : Prop :=
  ∀ n, P10321917458622262012.a n = A083325 n

end A083325

/-! ## A083325.P9381352823606134402

`abs(A052539(n)-A074507(n))`
-/

namespace A083325.P9381352823606134402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052539 n - A074507 n|

end

end A083325.P9381352823606134402

namespace A083325

/-- `abs(A052539(n)-A074507(n))` -/
def P9381352823606134402.Spec : Prop :=
  ∀ n, P9381352823606134402.a n = A083325 n

end A083325

/-! ## A083325.P18438573134273410822

`abs(A020522(n)-A135160(n))`
-/

namespace A083325.P18438573134273410822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020522 n - A135160 n|

end

end A083325.P18438573134273410822

namespace A083325

/-- `abs(A020522(n)-A135160(n))` -/
def P18438573134273410822.Spec : Prop :=
  ∀ n, P18438573134273410822.a n = A083325 n

end A083325

/-! ## A083325.P5925511946391414809

`2*(A083327(n)+A000079(n)/2)`
-/

namespace A083325.P5925511946391414809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A083327 n : ℚ) + (A000079 n : ℚ) / 2)

end

end A083325.P5925511946391414809

namespace A083325

/-- `2*(A083327(n)+A000079(n)/2)` -/
def P5925511946391414809.Spec : Prop :=
  ∀ n, P5925511946391414809.a n = (A083325 n : ℚ)

end A083325

/-! ## A083325.P17145329887542496164

`(A000351(n)-A005061(n))*A001222(A045344(n+1))`
-/

namespace A083325.P17145329887542496164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n - A005061 n) * A001222 (A045344 (n + 1)).toNat

end

end A083325.P17145329887542496164

namespace A083325

/-- `(A000351(n)-A005061(n))*A001222(A045344(n+1))` -/
def P17145329887542496164.Spec : Prop :=
  ∀ n, P17145329887542496164.a n = A083325 n

end A083325

/-! ## A083325.P2263700454639821825

`(A000351(n)-A005061(n))*A014963(A064597(n+1))`
-/

namespace A083325.P2263700454639821825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n - A005061 n) * A014963 (A064597 (n + 1)).toNat

end

end A083325.P2263700454639821825

namespace A083325

/-- `(A000351(n)-A005061(n))*A014963(A064597(n+1))` -/
def P2263700454639821825.Spec : Prop :=
  ∀ n, P2263700454639821825.a n = A083325 n

end A083325

/-! ## A083325.P8561432414024751653

`abs(A005059(n)-A083331(n))`
-/

namespace A083325.P8561432414024751653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005059 n - A083331 n|

end

end A083325.P8561432414024751653

namespace A083325

/-- `abs(A005059(n)-A083331(n))` -/
def P8561432414024751653.Spec : Prop :=
  ∀ n, P8561432414024751653.a n = A083325 n

end A083325

/-! ## A083325.P13721401480700196787

`Δ[A003463(n)-A162725(n)]`
-/

namespace A083325.P13721401480700196787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A162725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083325.P13721401480700196787

namespace A083325

/-- `Δ[A003463(n)-A162725(n)]` -/
def P13721401480700196787.Spec : Prop :=
  ∀ n, P13721401480700196787.a n = A083325 n

end A083325

/-! ## A083325.P18320321127238150817

`Δ[A003463(n)+A007051(n)-A002450(n)]`
-/

namespace A083325.P18320321127238150817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + (A007051 n - A002450 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083325.P18320321127238150817

namespace A083325

/-- `Δ[A003463(n)+A007051(n)-A002450(n)]` -/
def P18320321127238150817.Spec : Prop :=
  ∀ n, P18320321127238150817.a n = A083325 n

end A083325

/-! ## A083325.P18313558586332992629

`A001579(n)%A074612(n)`
-/

namespace A083325.P18313558586332992629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001579 n) (A074612 n)

end

end A083325.P18313558586332992629

namespace A083325

/-- `A001579(n)%A074612(n)` -/
def P18313558586332992629.Spec : Prop :=
  ∀ n, P18313558586332992629.a n = A083325 n

end A083325

/-! ## A083325.P2937379806699865457

`(A000351(n)-A005061(n))^A178334(n)`
-/

namespace A083325.P2937379806699865457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n - A005061 n : ℚ) ^ (A178334 n : ℤ)

end

end A083325.P2937379806699865457

namespace A083325

/-- `(A000351(n)-A005061(n))^A178334(n)` -/
def P2937379806699865457.Spec : Prop :=
  ∀ n, P2937379806699865457.a n = (A083325 n : ℚ)

end A083325

/-! ## A083325.P16912525906502482508

`A135168(n)%A074534(n)`
-/

namespace A083325.P16912525906502482508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135168 n) (A074534 n)

end

end A083325.P16912525906502482508

namespace A083325

/-- `A135168(n)%A074534(n)` -/
def P16912525906502482508.Spec : Prop :=
  ∀ n, P16912525906502482508.a n = A083325 n

end A083325

/-! ## A083325.P10124897877436046426

`A074554(n)%A007689(2*n)`
-/

namespace A083325.P10124897877436046426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074554 n) (A007689 (2 * n))

end

end A083325.P10124897877436046426

namespace A083325

/-- `A074554(n)%A007689(2*n)` -/
def P10124897877436046426.Spec : Prop :=
  ∀ n, P10124897877436046426.a n = A083325 n

end A083325

/-! ## A083325.P7378555317970110442

`A155608(n)%A074501(n)`
-/

namespace A083325.P7378555317970110442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155608 n) (A074501 n)

end

end A083325.P7378555317970110442

namespace A083325

/-- `A155608(n)%A074501(n)` -/
def P7378555317970110442.Spec : Prop :=
  ∀ n, P7378555317970110442.a n = A083325 n

end A083325

/-!
# A083326: a(n) = 6^n - 5^n + 4^n.

The programs for A083326, the canonical program `A083326.P15505505502897160104` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083326 has offset 0).

The definition of A083326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-5^n+4^n` (program `A083326.P15505505502897160104`, by `A083326.P15505505502897160104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083326.P15505505502897160104

`6^n-5^n+4^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083326

/-- `6^n-5^n+4^n` -/
def P15505505502897160104.Spec : Prop :=
  ∀ n, P15505505502897160104.a n = A083326 n

theorem P15505505502897160104.correct : P15505505502897160104.Spec := by
  intro n
  simp only [A083326]

end A083326

/-! ## A083326.P4460758627920566093

`abs(A074612(n)-5^n)`
-/

namespace A083326.P4460758627920566093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074612 n - (5 ^ n : ℤ)|

end

end A083326.P4460758627920566093

namespace A083326

/-- `abs(A074612(n)-5^n)` -/
def P4460758627920566093.Spec : Prop :=
  ∀ n, P4460758627920566093.a n = A083326 n

end A083326

/-! ## A083326.P16678615824736439912

`abs(2*5^n-4^n-A074615(n))`
-/

namespace A083326.P16678615824736439912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * 5 ^ n : ℤ) - (4 ^ n : ℤ) - A074615 n|

end

end A083326.P16678615824736439912

namespace A083326

/-- `abs(2*5^n-4^n-A074615(n))` -/
def P16678615824736439912.Spec : Prop :=
  ∀ n, P16678615824736439912.a n = A083326 n

end A083326

/-! ## A083326.P7854622755440202963

`abs(A000400(n)-A005060(n))`
-/

namespace A083326.P7854622755440202963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000400 n - A005060 n|

end

end A083326.P7854622755440202963

namespace A083326

/-- `abs(A000400(n)-A005060(n))` -/
def P7854622755440202963.Spec : Prop :=
  ∀ n, P7854622755440202963.a n = A083326 n

end A083326

/-! ## A083326.P8937162070101188398

`abs(A000351(n)-A074612(n))`
-/

namespace A083326.P8937162070101188398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A074612 n|

end

end A083326.P8937162070101188398

namespace A083326

/-- `abs(A000351(n)-A074612(n))` -/
def P8937162070101188398.Spec : Prop :=
  ∀ n, P8937162070101188398.a n = A083326 n

end A083326

/-! ## A083326.P6132413301099906669

`abs(A074615(n)-A085351(n))`
-/

namespace A083326.P6132413301099906669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074615 n - A085351 n|

end

end A083326.P6132413301099906669

namespace A083326

/-- `abs(A074615(n)-A085351(n))` -/
def P6132413301099906669.Spec : Prop :=
  ∀ n, P6132413301099906669.a n = A083326 n

end A083326

/-! ## A083326.P16372677674636134733

`or(1, A005062(n)+A000302(n))`
-/

namespace A083326.P16372677674636134733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005062 n + A000302 n)

end

end A083326.P16372677674636134733

namespace A083326

/-- `or(1, A005062(n)+A000302(n))` -/
def P16372677674636134733.Spec : Prop :=
  ∀ n, P16372677674636134733.a n = A083326 n

end A083326

/-! ## A083326.P17194219851826330305

`record[A292166(A167499(n))]`
-/

namespace A083326.P17194219851826330305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083326.P17194219851826330305

namespace A083326

/-- `record[A292166(A167499(n))]` -/
def P17194219851826330305.Spec : Prop :=
  ∀ n, P17194219851826330305.a n = A083326 n

end A083326

/-! ## A083326.P15511849581319174729

`A292166(eq[5, A002262(n)])`
-/

namespace A083326.P15511849581319174729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A083326.P15511849581319174729

namespace A083326

/-- `A292166(eq[5, A002262(n)])` -/
def P15511849581319174729.Spec : Prop :=
  ∀ n, P15511849581319174729.a n = A083326 n

end A083326

/-!
# A083327: a(n) = (5^n - 4^n + 3^n - 2^n)/2.

The programs for A083327, the canonical program `A083327.P16563826329071845327` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083327 has offset 0).

The definition of A083327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n-4^n+3^n-2^n)/2` (program `A083327.P18138260366373342882`, by `A083327.P18138260366373342882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083327.P18138260366373342882

`(5^n-4^n+3^n-2^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083327.P18138260366373342882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - (4 ^ n : ℤ) + (3 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2

end

end A083327.P18138260366373342882

namespace A083327

/-- `(5^n-4^n+3^n-2^n)/2` -/
def P18138260366373342882.Spec : Prop :=
  ∀ n, P18138260366373342882.a n = (A083327 n : ℚ)

theorem P18138260366373342882.correct : P18138260366373342882.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A083327, Nat.add_sub_cancel, A083327.P18138260366373342882.a, A083327.P16563826329071845327.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A083327, Nat.add_sub_cancel, A083327.P18138260366373342882.a, A083327.P16563826329071845327.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083327

/-! ## A083327.P16563826329071845327

`14*a(n-1)-71*a(n-2)+154*a(n-3)-120*a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=40`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083327

/-- `14*a(n-1)-71*a(n-2)+154*a(n-3)-120*a(n-4)` -/
def P16563826329071845327.Spec : Prop :=
  ∀ n, P16563826329071845327.a n = A083327 n

theorem P16563826329071845327.correct : P16563826329071845327.Spec := by
  intro n
  simp only [A083327]

end A083327

/-! ## A083327.P12640923112640941702

`floor(A198628(n)/2)`
-/

namespace A083327.P12640923112640941702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198628 n : ℚ) / 2⌋

end

end A083327.P12640923112640941702

namespace A083327

/-- `floor(A198628(n)/2)` -/
def P12640923112640941702.Spec : Prop :=
  ∀ n, P12640923112640941702.a n = A083327 n

end A083327

/-! ## A083327.P10810360110095018058

`A081186(n)-A007582(n)`
-/

namespace A083327.P10810360110095018058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n - A007582 n

end

end A083327.P10810360110095018058

namespace A083327

/-- `A081186(n)-A007582(n)` -/
def P10810360110095018058.Spec : Prop :=
  ∀ n, P10810360110095018058.a n = A083327 n

end A083327

/-! ## A083327.P7031937029490688339

`A081186(n)-Δ[A007581(n)]`
-/

namespace A083327.P7031937029490688339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n - (f1 (n + 1) - f1 n)

end

end A083327.P7031937029490688339

namespace A083327

/-- `A081186(n)-Δ[A007581(n)]` -/
def P7031937029490688339.Spec : Prop :=
  ∀ n, P7031937029490688339.a n = A083327 n

end A083327

/-! ## A083327.P3071603714523251476

`floor((A005057(n)-A005061(n))/2)`
-/

namespace A083327.P3071603714523251476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005057 n - A005061 n : ℚ) / 2⌋

end

end A083327.P3071603714523251476

namespace A083327

/-- `floor((A005057(n)-A005061(n))/2)` -/
def P3071603714523251476.Spec : Prop :=
  ∀ n, P3071603714523251476.a n = A083327 n

end A083327

/-! ## A083327.P2417676416426310440

`A081186(n)-A005418(2*n+1)`
-/

namespace A083327.P2417676416426310440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n - A005418 (2 * n + 1)

end

end A083327.P2417676416426310440

namespace A083327

/-- `A081186(n)-A005418(2*n+1)` -/
def P2417676416426310440.Spec : Prop :=
  ∀ n, P2417676416426310440.a n = A083327 n

end A083327

/-! ## A083327.P8316535754416368418

`A081186(n)-A137173(2*n+1)`
-/

namespace A083327.P8316535754416368418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n - A137173 (2 * n + 1)

end

end A083327.P8316535754416368418

namespace A083327

/-- `A081186(n)-A137173(2*n+1)` -/
def P8316535754416368418.Spec : Prop :=
  ∀ n, P8316535754416368418.a n = A083327 n

end A083327

/-! ## A083327.P876879208537766523

`floor((A135160(n)-A000079(n)²)/2)`
-/

namespace A083327.P876879208537766523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135160 n - A000079 n ^ 2 : ℚ) / 2⌋

end

end A083327.P876879208537766523

namespace A083327

/-- `floor((A135160(n)-A000079(n)²)/2)` -/
def P876879208537766523.Spec : Prop :=
  ∀ n, P876879208537766523.a n = A083327 n

end A083327

/-! ## A083327.P7559417430508652478

`A081186(n)-(A110613(n+1)+A110613(n))`
-/

namespace A083327.P7559417430508652478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n - (A110613 (n + 1) + A110613 n)

end

end A083327.P7559417430508652478

namespace A083327

/-- `A081186(n)-(A110613(n+1)+A110613(n))` -/
def P7559417430508652478.Spec : Prop :=
  ∀ n, P7559417430508652478.a n = A083327 n

end A083327

/-! ## A083327.P8455532751753203038

`A083331(n)-A083315(n)`
-/

namespace A083327.P8455532751753203038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083331 n - A083315 n

end

end A083327.P8455532751753203038

namespace A083327

/-- `A083331(n)-A083315(n)` -/
def P8455532751753203038.Spec : Prop :=
  ∀ n, P8455532751753203038.a n = A083327 n

end A083327

/-!
# A083328: a(n) = (6^n - 5^n + 4^n - 3^n)/2.

The programs for A083328, the canonical program `A083328.P11224749809585666240` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083328 has offset 0).

The definition of A083328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083328.P11224749809585666240

`(6^n-5^n+4^n-3^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083328

/-- `(6^n-5^n+4^n-3^n)/2` -/
def P11224749809585666240.Spec : Prop :=
  ∀ n, P11224749809585666240.a n = (A083328 n : ℚ)

end A083328

/-! ## A083328.P12292876029527224424

`A081187(n)-A081186(n)`
-/

namespace A083328.P12292876029527224424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081187 n - A081186 n

end

end A083328.P12292876029527224424

namespace A083328

/-- `A081187(n)-A081186(n)` -/
def P12292876029527224424.Spec : Prop :=
  ∀ n, P12292876029527224424.a n = A083328 n

end A083328

/-! ## A083328.P5028551562428655923

`-((A155603(n)-A155617(n))/2)`
-/

namespace A083328.P5028551562428655923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A155603 n - A155617 n : ℚ) / 2)

end

end A083328.P5028551562428655923

namespace A083328

/-- `-((A155603(n)-A155617(n))/2)` -/
def P5028551562428655923.Spec : Prop :=
  ∀ n, P5028551562428655923.a n = (A083328 n : ℚ)

end A083328

/-! ## A083328.P13584848040517588681

`floor((A005062(n)+A005061(n))/2)`
-/

namespace A083328.P13584848040517588681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005062 n + A005061 n : ℚ) / 2⌋

end

end A083328.P13584848040517588681

namespace A083328

/-- `floor((A005062(n)+A005061(n))/2)` -/
def P13584848040517588681.Spec : Prop :=
  ∀ n, P13584848040517588681.a n = A083328 n

end A083328

/-! ## A083328.P15949196472726863070

`floor((A155611(n)-A155626(n))/2)`
-/

namespace A083328.P15949196472726863070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155611 n - A155626 n : ℚ) / 2⌋

end

end A083328.P15949196472726863070

namespace A083328

/-- `floor((A155611(n)-A155626(n))/2)` -/
def P15949196472726863070.Spec : Prop :=
  ∀ n, P15949196472726863070.a n = A083328 n

end A083328

/-! ## A083328.P4571894030970899274

`A081187(n)-Δ[A233106(n+1)]`
-/

namespace A083328.P4571894030970899274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081187 n - (f1 (n + 1) - f1 n)

end

end A083328.P4571894030970899274

namespace A083328

/-- `A081187(n)-Δ[A233106(n+1)]` -/
def P4571894030970899274.Spec : Prop :=
  ∀ n, P4571894030970899274.a n = A083328 n

end A083328

/-! ## A083328.P1290757190947519133

`(A155603(n)-A155617(n))/2*A057428(n)`
-/

namespace A083328.P1290757190947519133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155603 n - A155617 n : ℚ) / 2 * (A057428 n : ℚ)

end

end A083328.P1290757190947519133

namespace A083328

/-- `(A155603(n)-A155617(n))/2*A057428(n)` -/
def P1290757190947519133.Spec : Prop :=
  ∀ n, P1290757190947519133.a n = (A083328 n : ℚ)

end A083328

/-! ## A083328.P12648651529712573254

`char[A054817(n)]-(A155603(n)-A155617(n))/2`
-/

namespace A083328.P12648651529712573254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054817 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (A155603 n - A155617 n : ℚ) / 2

end

end A083328.P12648651529712573254

namespace A083328

/-- `char[A054817(n)]-(A155603(n)-A155617(n))/2` -/
def P12648651529712573254.Spec : Prop :=
  ∀ n, P12648651529712573254.a n = (A083328 n : ℚ)

end A083328

/-! ## A083328.P3674875330346615482

`A000007(n+1)-(A155603(n)-A155617(n))/2`
-/

namespace A083328.P3674875330346615482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) - (A155603 n - A155617 n : ℚ) / 2

end

end A083328.P3674875330346615482

namespace A083328

/-- `A000007(n+1)-(A155603(n)-A155617(n))/2` -/
def P3674875330346615482.Spec : Prop :=
  ∀ n, P3674875330346615482.a n = (A083328 n : ℚ)

end A083328

/-!
# A083329: a(0) = 1; for n > 0, a(n) = 3*2^(n-1) - 1.

The programs for A083329, the canonical program `A083329.P4694049377414067129` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083329 has offset 0).

The definition of A083329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083329.P4694049377414067129

`2*a(n-1)+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083329

/-- `2*a(n-1)+1` -/
def P4694049377414067129.Spec : Prop :=
  ∀ n, (P4694049377414067129.a n : ℤ) = A083329 n

theorem P4694049377414067129.correct : P4694049377414067129.Spec := by
  intro n
  simp only [A083329]

end A083329

/-! ## A083329.P3182018690651760244

`ogf((1-x+x^2)/(1-3x+2x^2))`
-/

namespace A083329.P3182018690651760244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 2] n

end

end A083329.P3182018690651760244

namespace A083329

/-- `ogf((1-x+x^2)/(1-3x+2x^2))` -/
def P3182018690651760244.Spec : Prop :=
  ∀ n, P3182018690651760244.a n = A083329 n

end A083329

/-! ## A083329.P14676825284295024145

`round(∑[3*2^(n-2)])`
-/

namespace A083329.P14676825284295024145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083329.P14676825284295024145

namespace A083329

/-- `round(∑[3*2^(n-2)])` -/
def P14676825284295024145.Spec : Prop :=
  ∀ n, P14676825284295024145.a n = A083329 n

end A083329

/-! ## A083329.P1134190896736447336

`or(1, 2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A083329.P1134190896736447336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A083329.P1134190896736447336

namespace A083329

/-- `or(1, 2*a(n-1))` -/
def P1134190896736447336.Spec : Prop :=
  ∀ n, (P1134190896736447336.a n : ℤ) = A083329 n

end A083329

/-! ## A083329.P11564938368044786582

`xor(1, 2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A083329.P11564938368044786582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A083329.P11564938368044786582

namespace A083329

/-- `xor(1, 2*a(n-1))` -/
def P11564938368044786582.Spec : Prop :=
  ∀ n, (P11564938368044786582.a n : ℤ) = A083329 n

end A083329

/-! ## A083329.P8201398797726351452

`∑[2*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A083329.P8201398797726351452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083329.P8201398797726351452

namespace A083329

/-- `∑[2*a(n-1)]` -/
def P8201398797726351452.Spec : Prop :=
  ∀ n, (P8201398797726351452.a n : ℤ) = A083329 n

end A083329

/-! ## A083329.P11882848975206099716

`lcm(2, a(n-1))+1` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A083329.P11882848975206099716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 1

end

end A083329.P11882848975206099716

namespace A083329

/-- `lcm(2, a(n-1))+1` -/
def P11882848975206099716.Spec : Prop :=
  ∀ n, (P11882848975206099716.a n : ℤ) = A083329 n

end A083329

/-! ## A083329.P15188009160613117395

`3-2*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A083329.P15188009160613117395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - 2 * (1 - a (n - 1))

end

end A083329.P15188009160613117395

namespace A083329

/-- `3-2*(1-a(n-1))` -/
def P15188009160613117395.Spec : Prop :=
  ∀ n, P15188009160613117395.a n = A083329 n

end A083329

/-! ## A083329.P13659605604280241250

`a(n-1)+1+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A083329.P13659605604280241250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (1 + a (n - 1))

end

end A083329.P13659605604280241250

namespace A083329

/-- `a(n-1)+1+a(n-1)` -/
def P13659605604280241250.Spec : Prop :=
  ∀ n, (P13659605604280241250.a n : ℤ) = A083329 n

theorem P13659605604280241250.correct : P13659605604280241250.Spec := by
  intro n
  simp only [A083329, Nat.add_sub_cancel, A083329.P13659605604280241250.a, A083329.P4694049377414067129.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083329

/-! ## A083329.P6224956478089037899

`1-a(n-1)/(1/2-1)` with `a(0)=1, a(1)=2`
-/

namespace A083329.P6224956478089037899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A083329.P6224956478089037899

namespace A083329

/-- `1-a(n-1)/(1/2-1)` -/
def P6224956478089037899.Spec : Prop :=
  ∀ n, P6224956478089037899.a n = (A083329 n : ℚ)

end A083329

/-! ## A083329.P10802037750147105667

`2-floor(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A083329.P10802037750147105667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1))

end

end A083329.P10802037750147105667

namespace A083329

/-- `2-floor(1-a(n-1)-a(n-1))` -/
def P10802037750147105667.Spec : Prop :=
  ∀ n, P10802037750147105667.a n = A083329 n

end A083329

/-! ## A083329.P6216268340197188522

`2-(gcd(3, a(n-1))-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A083329.P6216268340197188522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - ((Int.gcd 3 (a (n - 1)) : ℤ) - a (n - 1) - a (n - 1))

end

end A083329.P6216268340197188522

namespace A083329

/-- `2-(gcd(3, a(n-1))-a(n-1)-a(n-1))` -/
def P6216268340197188522.Spec : Prop :=
  ∀ n, P6216268340197188522.a n = A083329 n

end A083329

/-! ## A083329.P15568082649367742966

`A296953(n)+1`
-/

namespace A083329.P15568082649367742966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n + 1

end

end A083329.P15568082649367742966

namespace A083329

/-- `A296953(n)+1` -/
def P15568082649367742966.Spec : Prop :=
  ∀ n, P15568082649367742966.a n = A083329 n

end A083329

/-! ## A083329.P10638381949790161900

`A042950(n)-1`
-/

namespace A083329.P10638381949790161900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - 1

end

end A083329.P10638381949790161900

namespace A083329

/-- `A042950(n)-1` -/
def P10638381949790161900.Spec : Prop :=
  ∀ n, P10638381949790161900.a n = A083329 n

end A083329

/-! ## A083329.P13918769978650671125

`A266550(n+2)`
-/

namespace A083329.P13918769978650671125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2)

end

end A083329.P13918769978650671125

namespace A083329

/-- `A266550(n+2)` -/
def P13918769978650671125.Spec : Prop :=
  ∀ n, P13918769978650671125.a n = A083329 n

end A083329

/-! ## A083329.P15810854801084719912

`A003073(3*n)`
-/

namespace A083329.P15810854801084719912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003073 (3 * n)

end

end A083329.P15810854801084719912

namespace A083329

/-- `A003073(3*n)` -/
def P15810854801084719912.Spec : Prop :=
  ∀ n, P15810854801084719912.a n = A083329 n

end A083329

/-! ## A083329.P15845108350446906403

`∑[A122391(n+1)]`
-/

namespace A083329.P15845108350446906403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083329.P15845108350446906403

namespace A083329

/-- `∑[A122391(n+1)]` -/
def P15845108350446906403.Spec : Prop :=
  ∀ n, P15845108350446906403.a n = A083329 n

end A083329

/-! ## A083329.P7990382236273980209

`A098011(n+3)-1`
-/

namespace A083329.P7990382236273980209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 3) - 1

end

end A083329.P7990382236273980209

namespace A083329

/-- `A098011(n+3)-1` -/
def P7990382236273980209.Spec : Prop :=
  ∀ n, P7990382236273980209.a n = A083329 n

end A083329

/-! ## A083329.P8651343355250847104

`A052955(A004273(n))`
-/

namespace A083329.P8651343355250847104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004273 n).toNat

end

end A083329.P8651343355250847104

namespace A083329

/-- `A052955(A004273(n))` -/
def P8651343355250847104.Spec : Prop :=
  ∀ n, P8651343355250847104.a n = A083329 n

end A083329

/-! ## A083329.P13273220311241786827

`A081026(A004277(n))`
-/

namespace A083329.P13273220311241786827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081026 (A004277 n).toNat

end

end A083329.P13273220311241786827

namespace A083329

/-- `A081026(A004277(n))` -/
def P13273220311241786827.Spec : Prop :=
  ∀ n, P13273220311241786827.a n = A083329 n

end A083329

/-!
# A083330: a(n) = (3*4^n - 2*3^n + 2^n)/2.

The programs for A083330, the canonical program `A083330.P7288166191848404589` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083330 has offset 0).

The definition of A083330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083330.P7288166191848404589

`(3*4^n-2*3^n+2^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083330

/-- `(3*4^n-2*3^n+2^n)/2` -/
def P7288166191848404589.Spec : Prop :=
  ∀ n, P7288166191848404589.a n = (A083330 n : ℚ)

end A083330

/-! ## A083330.P1782828564063167096

`C(2^n, 2)+4^n-(3^n-2^n)`
-/

namespace A083330.P1782828564063167096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 ^ n) 2 + 4 ^ n : ℤ) - ((3 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A083330.P1782828564063167096

namespace A083330

/-- `C(2^n, 2)+4^n-(3^n-2^n)` -/
def P1782828564063167096.Spec : Prop :=
  ∀ n, P1782828564063167096.a n = A083330 n

end A083330

/-! ## A083330.P10027669954610410131

`Δ[A053154(n)]`
-/

namespace A083330.P10027669954610410131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083330.P10027669954610410131

namespace A083330

/-- `Δ[A053154(n)]` -/
def P10027669954610410131.Spec : Prop :=
  ∀ n, P10027669954610410131.a n = A083330 n

end A083330

/-! ## A083330.P14391830056051451454

`Δ[A134064(n)]`
-/

namespace A083330.P14391830056051451454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083330.P14391830056051451454

namespace A083330

/-- `Δ[A134064(n)]` -/
def P14391830056051451454.Spec : Prop :=
  ∀ n, P14391830056051451454.a n = A083330 n

end A083330

/-! ## A083330.P3699351541411769191

`Δ[A083324(n)/2]`
-/

namespace A083330.P3699351541411769191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083324 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083330.P3699351541411769191

namespace A083330

/-- `Δ[A083324(n)/2]` -/
def P3699351541411769191.Spec : Prop :=
  ∀ n, P3699351541411769191.a n = (A083330 n : ℚ)

end A083330

/-! ## A083330.P3863733306594841050

`Δ[A134168(n)]-2^n`
-/

namespace A083330.P3863733306594841050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 ^ n : ℤ)

end

end A083330.P3863733306594841050

namespace A083330

/-- `Δ[A134168(n)]-2^n` -/
def P3863733306594841050.Spec : Prop :=
  ∀ n, P3863733306594841050.a n = A083330 n

end A083330

/-! ## A083330.P8446245294231575574

`Δ[A007582(n)]-3^n`
-/

namespace A083330.P8446245294231575574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (3 ^ n : ℤ)

end

end A083330.P8446245294231575574

namespace A083330

/-- `Δ[A007582(n)]-3^n` -/
def P8446245294231575574.Spec : Prop :=
  ∀ n, P8446245294231575574.a n = A083330 n

end A083330

/-! ## A083330.P2356389703311854599

`A049775(n+2)-3^n`
-/

namespace A083330.P2356389703311854599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049775 (n + 2) - (3 ^ n : ℤ)

end

end A083330.P2356389703311854599

namespace A083330

/-- `A049775(n+2)-3^n` -/
def P2356389703311854599.Spec : Prop :=
  ∀ n, P2356389703311854599.a n = A083330 n

end A083330

/-! ## A083330.P13821095704608847652

`Δ[A005418(2*n+1)]-3^n`
-/

namespace A083330.P13821095704608847652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (3 ^ n : ℤ)

end

end A083330.P13821095704608847652

namespace A083330

/-- `Δ[A005418(2*n+1)]-3^n` -/
def P13821095704608847652.Spec : Prop :=
  ∀ n, P13821095704608847652.a n = A083330 n

end A083330

/-! ## A083330.P8640385038212618029

`A007582(n)+A005061(n)`
-/

namespace A083330.P8640385038212618029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + A005061 n

end

end A083330.P8640385038212618029

namespace A083330

/-- `A007582(n)+A005061(n)` -/
def P8640385038212618029.Spec : Prop :=
  ∀ n, P8640385038212618029.a n = A083330 n

end A083330

/-! ## A083330.P15927551181032720846

`A083324(n)+A006516(n)`
-/

namespace A083330.P15927551181032720846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083324 n + A006516 n

end

end A083330.P15927551181032720846

namespace A083330

/-- `A083324(n)+A006516(n)` -/
def P15927551181032720846.Spec : Prop :=
  ∀ n, P15927551181032720846.a n = A083330 n

end A083330

/-! ## A083330.P11406885959575149368

`A084869(n)+A020522(n)`
-/

namespace A083330.P11406885959575149368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n + A020522 n

end

end A083330.P11406885959575149368

namespace A083330

/-- `A084869(n)+A020522(n)` -/
def P11406885959575149368.Spec : Prop :=
  ∀ n, P11406885959575149368.a n = A083330 n

end A083330

/-! ## A083330.P15884079213840795128

`A083314(n)+A053154(n)`
-/

namespace A083330.P15884079213840795128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083314 n + A053154 n

end

end A083330.P15884079213840795128

namespace A083330

/-- `A083314(n)+A053154(n)` -/
def P15884079213840795128.Spec : Prop :=
  ∀ n, P15884079213840795128.a n = A083330 n

end A083330

/-! ## A083330.P3651835394163552341

`A133789(n)+A020515(n)`
-/

namespace A083330.P3651835394163552341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 n + A020515 n

end

end A083330.P3651835394163552341

namespace A083330

/-- `A133789(n)+A020515(n)` -/
def P3651835394163552341.Spec : Prop :=
  ∀ n, P3651835394163552341.a n = A083330 n

end A083330

/-! ## A083330.P4845572771225492005

`A210448(n)+A162723(n)`
-/

namespace A083330.P4845572771225492005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210448 n + A162723 n

end

end A083330.P4845572771225492005

namespace A083330

/-- `A210448(n)+A162723(n)` -/
def P4845572771225492005.Spec : Prop :=
  ∀ n, P4845572771225492005.a n = A083330 n

end A083330

/-! ## A083330.P13351175724347859569

`A257273(n)+A137786(n)`
-/

namespace A083330.P13351175724347859569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n + A137786 n

end

end A083330.P13351175724347859569

namespace A083330

/-- `A257273(n)+A137786(n)` -/
def P13351175724347859569.Spec : Prop :=
  ∀ n, P13351175724347859569.a n = A083330 n

end A083330

/-! ## A083330.P4606381156923690595

`A010036(n)-A001047(n)`
-/

namespace A083330.P4606381156923690595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n - A001047 n

end

end A083330.P4606381156923690595

namespace A083330

/-- `A010036(n)-A001047(n)` -/
def P4606381156923690595.Spec : Prop :=
  ∀ n, P4606381156923690595.a n = A083330 n

end A083330

/-! ## A083330.P9950932946694391607

`A085350(n)-A006516(n)`
-/

namespace A083330.P9950932946694391607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085350 n - A006516 n

end

end A083330.P9950932946694391607

namespace A083330

/-- `A085350(n)-A006516(n)` -/
def P9950932946694391607.Spec : Prop :=
  ∀ n, P9950932946694391607.a n = A083330 n

end A083330

/-! ## A083330.P12120329614630736093

`A004171(n)-A094375(n)`
-/

namespace A083330.P12120329614630736093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A094375 n

end

end A083330.P12120329614630736093

namespace A083330

/-- `A004171(n)-A094375(n)` -/
def P12120329614630736093.Spec : Prop :=
  ∀ n, P12120329614630736093.a n = A083330 n

end A083330

/-! ## A083330.P1417138818570868006

`A390529(n)-A053154(n)`
-/

namespace A083330.P1417138818570868006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390529 n - A053154 n

end

end A083330.P1417138818570868006

namespace A083330

/-- `A390529(n)-A053154(n)` -/
def P1417138818570868006.Spec : Prop :=
  ∀ n, P1417138818570868006.a n = A083330 n

end A083330

/-!
# A083331: a(n) = (3*5^n - 2*4^n + 3^n)/2.

The programs for A083331, the canonical program `A083331.P9685664681006121431` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083331 has offset 0).

The definition of A083331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083331.P9685664681006121431

`(3*5^n-2*4^n+3^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083331

/-- `(3*5^n-2*4^n+3^n)/2` -/
def P9685664681006121431.Spec : Prop :=
  ∀ n, P9685664681006121431.a n = (A083331 n : ℚ)

end A083331

/-! ## A083331.P1805210909442855571

`A081186(n)+A005060(n)`
-/

namespace A083331.P1805210909442855571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n + A005060 n

end

end A083331.P1805210909442855571

namespace A083331

/-- `A081186(n)+A005060(n)` -/
def P1805210909442855571.Spec : Prop :=
  ∀ n, P1805210909442855571.a n = A083331 n

end A083331

/-! ## A083331.P12148276046400147239

`A083325(n)+A005059(n)`
-/

namespace A083331.P12148276046400147239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083325 n + A005059 n

end

end A083331.P12148276046400147239

namespace A083331

/-- `A083325(n)+A005059(n)` -/
def P12148276046400147239.Spec : Prop :=
  ∀ n, P12148276046400147239.a n = A083331 n

end A083331

/-! ## A083331.P9395474620789036775

`A083327(n)+A083315(n)`
-/

namespace A083331.P9395474620789036775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083327 n + A083315 n

end

end A083331.P9395474620789036775

namespace A083331

/-- `A083327(n)+A083315(n)` -/
def P9395474620789036775.Spec : Prop :=
  ∀ n, P9395474620789036775.a n = A083331 n

end A083331

/-! ## A083331.P9321966508019112006

`A085351(n)-A005059(n)`
-/

namespace A083331.P9321966508019112006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085351 n - A005059 n

end

end A083331.P9321966508019112006

namespace A083331

/-- `A085351(n)-A005059(n)` -/
def P9321966508019112006.Spec : Prop :=
  ∀ n, P9321966508019112006.a n = A083331 n

end A083331

/-! ## A083331.P11432005991748882023

`A081186(n+1)-A074547(n)`
-/

namespace A083331.P11432005991748882023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 (n + 1) - A074547 n

end

end A083331.P11432005991748882023

namespace A083331

/-- `A081186(n+1)-A074547(n)` -/
def P11432005991748882023.Spec : Prop :=
  ∀ n, P11432005991748882023.a n = A083331 n

end A083331

/-! ## A083331.P6677855585603417525

`A083327(n+1)-A083327(n)-A083327(n)`
-/

namespace A083331.P6677855585603417525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083327 (n + 1) - A083327 n - A083327 n

end

end A083331.P6677855585603417525

namespace A083331

/-- `A083327(n+1)-A083327(n)-A083327(n)` -/
def P6677855585603417525.Spec : Prop :=
  ∀ n, P6677855585603417525.a n = A083331 n

end A083331

/-!
# A083332: a(n) = 10*a(n-2) - 16*a(n-4) for n > 3, a(0) = 1, a(1) = 5, a(2) = 14, a(3) = 34.

The programs for A083332, the canonical program `A083332.P5259686986981900542` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083332 has offset 0).

The definition of A083332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-2)-16*a(n-4)` (program `A083332.P5259686986981900542`, by `A083332.P5259686986981900542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083332.P13258694388405367363

`A016116(n)*A014551(n+1)`
-/

namespace A083332.P13258694388405367363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A014551 (n + 1)

end

end A083332.P13258694388405367363

namespace A083332

/-- `A016116(n)*A014551(n+1)` -/
def P13258694388405367363.Spec : Prop :=
  ∀ n, P13258694388405367363.a n = A083332 n

end A083332

/-! ## A083332.P5259686986981900542

`10*a(n-2)-16*a(n-4)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=34`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083332

/-- `10*a(n-2)-16*a(n-4)` -/
def P5259686986981900542.Spec : Prop :=
  ∀ n, P5259686986981900542.a n = A083332 n

theorem P5259686986981900542.correct : P5259686986981900542.Spec := by
  intro n
  simp only [A083332]

end A083332

/-! ## A083332.P13277227429950654465

`Δ[A101622(n)]*A016116(n)`
-/

namespace A083332.P13277227429950654465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A016116 n

end

end A083332.P13277227429950654465

namespace A083332

/-- `Δ[A101622(n)]*A016116(n)` -/
def P13277227429950654465.Spec : Prop :=
  ∀ n, P13277227429950654465.a n = A083332 n

end A083332

/-! ## A083332.P12155279152607230903

`lcm(Δ[A283506(n)], A016116(n))`
-/

namespace A083332.P12155279152607230903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A016116 n)

end

end A083332.P12155279152607230903

namespace A083332

/-- `lcm(Δ[A283506(n)], A016116(n))` -/
def P12155279152607230903.Spec : Prop :=
  ∀ n, (P12155279152607230903.a n : ℤ) = A083332 n

end A083332

/-! ## A083332.P15795424120521029294

`A016116(n)*A166977(n+1)`
-/

namespace A083332.P15795424120521029294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A166977 (n + 1)

end

end A083332.P15795424120521029294

namespace A083332

/-- `A016116(n)*A166977(n+1)` -/
def P15795424120521029294.Spec : Prop :=
  ∀ n, P15795424120521029294.a n = A083332 n

end A083332

/-! ## A083332.P16607244383609555808

`Δ[A166920(n+1)]*A016116(n)`
-/

namespace A083332.P16607244383609555808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A016116 n

end

end A083332.P16607244383609555808

namespace A083332

/-- `Δ[A166920(n+1)]*A016116(n)` -/
def P16607244383609555808.Spec : Prop :=
  ∀ n, P16607244383609555808.a n = A083332 n

end A083332

/-! ## A083332.P16438746711419510765

`A000079(A004526(n))*A014551(n+1)`
-/

namespace A083332.P16438746711419510765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004526 n).toNat * A014551 (n + 1)

end

end A083332.P16438746711419510765

namespace A083332

/-- `A000079(A004526(n))*A014551(n+1)` -/
def P16438746711419510765.Spec : Prop :=
  ∀ n, P16438746711419510765.a n = A083332 n

end A083332

/-! ## A083332.P37087933379816551

`sqrt(A171590(n))*A016116(n)`
-/

namespace A083332.P37087933379816551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A171590 n : ℝ) * (A016116 n : ℝ)

end

end A083332.P37087933379816551

namespace A083332

/-- `sqrt(A171590(n))*A016116(n)` -/
def P37087933379816551.Spec : Prop :=
  ∀ n, P37087933379816551.a n = (A083332 n : ℝ)

end A083332

/-! ## A083332.P11214665798433994293

`A016131(n)/(A001045(n+1)*A016116(n+1))`
-/

namespace A083332.P11214665798433994293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016131 n : ℚ) / (A001045 (n + 1) * A016116 (n + 1) : ℚ)

end

end A083332.P11214665798433994293

namespace A083332

/-- `A016131(n)/(A001045(n+1)*A016116(n+1))` -/
def P11214665798433994293.Spec : Prop :=
  ∀ n, P11214665798433994293.a n = (A083332 n : ℚ)

end A083332

/-!
# A083333: a(n) = 10*a(n-2) - 16*a(n-4) for n>=4, with a(0)=a(1)=1, a(2)=6, a(3)=10.

The programs for A083333, the canonical program `A083333.P9238128976164811416` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083333 has offset 0).

The definition of A083333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-2)-16*a(n-4)` (program `A083333.P9238128976164811416`, by `A083333.P9238128976164811416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083333.P9238128976164811416

`10*a(n-2)-16*a(n-4)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083333

/-- `10*a(n-2)-16*a(n-4)` -/
def P9238128976164811416.Spec : Prop :=
  ∀ n, P9238128976164811416.a n = A083333 n

theorem P9238128976164811416.correct : P9238128976164811416.Spec := by
  intro n
  simp only [A083333]

end A083333

/-! ## A083333.P873528892389005264

`A001045(n+1)*A016116(n)`
-/

namespace A083333.P873528892389005264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A016116 n

end

end A083333.P873528892389005264

namespace A083333

/-- `A001045(n+1)*A016116(n)` -/
def P873528892389005264.Spec : Prop :=
  ∀ n, P873528892389005264.a n = A083333 n

end A083333

/-! ## A083333.P1560201027057794805

`lcm(2^floor(n/2), ∑[(-2)^n])`
-/

namespace A083333.P1560201027057794805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083333.P1560201027057794805

namespace A083333

/-- `lcm(2^floor(n/2), ∑[(-2)^n])` -/
def P1560201027057794805.Spec : Prop :=
  ∀ n, (P1560201027057794805.a n : ℤ) = A083333 n

end A083333

/-! ## A083333.P9383222724917545814

`Δ[A000975(n)]*A016116(n)`
-/

namespace A083333.P9383222724917545814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A016116 n

end

end A083333.P9383222724917545814

namespace A083333

/-- `Δ[A000975(n)]*A016116(n)` -/
def P9383222724917545814.Spec : Prop :=
  ∀ n, P9383222724917545814.a n = A083333 n

end A083333

/-! ## A083333.P9999756034045663639

`A016116(n)*A135318(2*n)`
-/

namespace A083333.P9999756034045663639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A135318 (2 * n)

end

end A083333.P9999756034045663639

namespace A083333

/-- `A016116(n)*A135318(2*n)` -/
def P9999756034045663639.Spec : Prop :=
  ∀ n, P9999756034045663639.a n = A083333 n

end A083333

/-! ## A083333.P13019697190400419525

`A001045(n+1)*A158780(n+2)`
-/

namespace A083333.P13019697190400419525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A158780 (n + 2)

end

end A083333.P13019697190400419525

namespace A083333

/-- `A001045(n+1)*A158780(n+2)` -/
def P13019697190400419525.Spec : Prop :=
  ∀ n, P13019697190400419525.a n = A083333 n

end A083333

/-! ## A083333.P11657232434225832468

`A158780(n+2)*A167167(n+1)`
-/

namespace A083333.P11657232434225832468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 2) * A167167 (n + 1)

end

end A083333.P11657232434225832468

namespace A083333

/-- `A158780(n+2)*A167167(n+1)` -/
def P11657232434225832468.Spec : Prop :=
  ∀ n, P11657232434225832468.a n = A083333 n

end A083333

/-! ## A083333.P1293601213188869300

`A016116(n)*A112031(2*n+1)`
-/

namespace A083333.P1293601213188869300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A112031 (2 * n + 1)

end

end A083333.P1293601213188869300

namespace A083333

/-- `A016116(n)*A112031(2*n+1)` -/
def P1293601213188869300.Spec : Prop :=
  ∀ n, P1293601213188869300.a n = A083333 n

end A083333

/-! ## A083333.P976274265531210759

`A016116(n)*A112387(2*n+1)`
-/

namespace A083333.P976274265531210759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A112387 (2 * n + 1)

end

end A083333.P976274265531210759

namespace A083333

/-- `A016116(n)*A112387(2*n+1)` -/
def P976274265531210759.Spec : Prop :=
  ∀ n, P976274265531210759.a n = A083333 n

end A083333

/-! ## A083333.P15683425188635072107

`A016116(n)*A133684(2*(n+1))`
-/

namespace A083333.P15683425188635072107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A133684 (2 * (n + 1))

end

end A083333.P15683425188635072107

namespace A083333

/-- `A016116(n)*A133684(2*(n+1))` -/
def P15683425188635072107.Spec : Prop :=
  ∀ n, P15683425188635072107.a n = A083333 n

end A083333

/-! ## A083333.P7697305741034203969

`A135318(2*n)*A158780(n+2)`
-/

namespace A083333.P7697305741034203969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (2 * n) * A158780 (n + 2)

end

end A083333.P7697305741034203969

namespace A083333

/-- `A135318(2*n)*A158780(n+2)` -/
def P7697305741034203969.Spec : Prop :=
  ∀ n, P7697305741034203969.a n = A083333 n

end A083333

/-! ## A083333.P1817100978291803602

`A016116(n)*A133730(2*n+3)`
-/

namespace A083333.P1817100978291803602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A133730 (2 * n + 3)

end

end A083333.P1817100978291803602

namespace A083333

/-- `A016116(n)*A133730(2*n+3)` -/
def P1817100978291803602.Spec : Prop :=
  ∀ n, P1817100978291803602.a n = A083333 n

end A083333

/-! ## A083333.P638220417466905862

`A135318(2*n)*A200675(2*n)`
-/

namespace A083333.P638220417466905862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (2 * n) * A200675 (2 * n)

end

end A083333.P638220417466905862

namespace A083333

/-- `A135318(2*n)*A200675(2*n)` -/
def P638220417466905862.Spec : Prop :=
  ∀ n, P638220417466905862.a n = A083333 n

end A083333

/-! ## A083333.P8486256072087824245

`abs(A001045(n+1)*A117575(n+1))`
-/

namespace A083333.P8486256072087824245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001045 (n + 1) * A117575 (n + 1)|

end

end A083333.P8486256072087824245

namespace A083333

/-- `abs(A001045(n+1)*A117575(n+1))` -/
def P8486256072087824245.Spec : Prop :=
  ∀ n, P8486256072087824245.a n = A083333 n

end A083333

/-! ## A083333.P13373545708352660193

`A141416(n)+abs(A141416(3*n+2))`
-/

namespace A083333.P13373545708352660193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141416 n + |A141416 (3 * n + 2)|

end

end A083333.P13373545708352660193

namespace A083333

/-- `A141416(n)+abs(A141416(3*n+2))` -/
def P13373545708352660193.Spec : Prop :=
  ∀ n, P13373545708352660193.a n = A083333 n

end A083333

/-! ## A083333.P10937307370074826659

`A112447(2*n+1)*A158780(n+2)`
-/

namespace A083333.P10937307370074826659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (2 * n + 1) * A158780 (n + 2)

end

end A083333.P10937307370074826659

namespace A083333

/-- `A112447(2*n+1)*A158780(n+2)` -/
def P10937307370074826659.Spec : Prop :=
  ∀ n, P10937307370074826659.a n = A083333 n

end A083333

/-! ## A083333.P3754775904349020831

`A016131(n+1)/A083332(n+1)-A083332(n)`
-/

namespace A083333.P3754775904349020831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016131 (n + 1) : ℚ) / (A083332 (n + 1) : ℚ) - (A083332 n : ℚ)

end

end A083333.P3754775904349020831

namespace A083333

/-- `A016131(n+1)/A083332(n+1)-A083332(n)` -/
def P3754775904349020831.Spec : Prop :=
  ∀ n, P3754775904349020831.a n = (A083333 n : ℚ)

end A083333

/-!
# A083334: a(n) = 12*a(n-2) - 25*a(n-4) with initial terms 1,6,17,47.

The programs for A083334, the canonical program `A083334.P3149493457696780511` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083334 has offset 0).

The definition of A083334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-2)-25*a(n-4)` (program `A083334.P3149493457696780511`, by `A083334.P3149493457696780511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083334.P3149493457696780511

`12*a(n-2)-25*a(n-4)` with `a(0)=1, a(1)=6, a(2)=17, a(3)=47`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083334

/-- `12*a(n-2)-25*a(n-4)` -/
def P3149493457696780511.Spec : Prop :=
  ∀ n, P3149493457696780511.a n = A083334 n

theorem P3149493457696780511.correct : P3149493457696780511.Spec := by
  intro n
  simp only [A083334]

end A083334

/-! ## A083334.P7755053891788979016

`A083101(n)/A060546(n)`
-/

namespace A083334.P7755053891788979016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083101 n : ℚ) / (A060546 n : ℚ)

end

end A083334.P7755053891788979016

namespace A083334

/-- `A083101(n)/A060546(n)` -/
def P7755053891788979016.Spec : Prop :=
  ∀ n, P7755053891788979016.a n = (A083334 n : ℚ)

end A083334

/-! ## A083334.P12747950243877969245

`A083101(n)/Δ[A027383(n)]`
-/

namespace A083334.P12747950243877969245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083101 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A083334.P12747950243877969245

namespace A083334

/-- `A083101(n)/Δ[A027383(n)]` -/
def P12747950243877969245.Spec : Prop :=
  ∀ n, P12747950243877969245.a n = (A083334 n : ℚ)

end A083334

/-! ## A083334.P14425457248836406303

`A133294(n+1)/A060546(n)`
-/

namespace A083334.P14425457248836406303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133294 (n + 1) : ℚ) / (A060546 n : ℚ)

end

end A083334.P14425457248836406303

namespace A083334

/-- `A133294(n+1)/A060546(n)` -/
def P14425457248836406303.Spec : Prop :=
  ∀ n, P14425457248836406303.a n = (A083334 n : ℚ)

end A083334

/-! ## A083334.P14829255798815417654

`Δ[A083102(n)]/Δ[A027383(n)]`
-/

namespace A083334.P14829255798815417654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A083334.P14829255798815417654

namespace A083334

/-- `Δ[A083102(n)]/Δ[A027383(n)]` -/
def P14829255798815417654.Spec : Prop :=
  ∀ n, P14829255798815417654.a n = (A083334 n : ℚ)

end A083334

/-! ## A083334.P4683389997682382729

`A083101(n)/A000079(A110654(n))`
-/

namespace A083334.P4683389997682382729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083101 n : ℚ) / (A000079 (A110654 n).toNat : ℚ)

end

end A083334.P4683389997682382729

namespace A083334

/-- `A083101(n)/A000079(A110654(n))` -/
def P4683389997682382729.Spec : Prop :=
  ∀ n, P4683389997682382729.a n = (A083334 n : ℚ)

end A083334

/-! ## A083334.P528769033259110284

`A083101(n)/A131577(A080513(n))`
-/

namespace A083334.P528769033259110284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083101 n : ℚ) / (A131577 (A080513 n).toNat : ℚ)

end

end A083334.P528769033259110284

namespace A083334

/-- `A083101(n)/A131577(A080513(n))` -/
def P528769033259110284.Spec : Prop :=
  ∀ n, P528769033259110284.a n = (A083334 n : ℚ)

end A083334

/-! ## A083334.P7039753360013193633

`A083101(n)/gcd(A083101(n), A083102(n))`
-/

namespace A083334.P7039753360013193633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083101 n : ℚ) / (Int.gcd (A083101 n) (A083102 n) : ℚ)

end

end A083334.P7039753360013193633

namespace A083334

/-- `A083101(n)/gcd(A083101(n), A083102(n))` -/
def P7039753360013193633.Spec : Prop :=
  ∀ n, P7039753360013193633.a n = (A083334 n : ℚ)

end A083334

/-!
# A083335: a(n) = 12*a(n-2) - 25*a(n-4) with initial terms 1,1,7,12.

The programs for A083335, the canonical program `A083335.P9814525935908650796` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083335 has offset 0).

The definition of A083335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-2)-25*a(n-4)` (program `A083335.P9814525935908650796`, by `A083335.P9814525935908650796.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083335.P9814525935908650796

`12*a(n-2)-25*a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=12`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083335

/-- `12*a(n-2)-25*a(n-4)` -/
def P9814525935908650796.Spec : Prop :=
  ∀ n, P9814525935908650796.a n = A083335 n

theorem P9814525935908650796.correct : P9814525935908650796.Spec := by
  intro n
  simp only [A083335]

end A083335

/-! ## A083335.P17708894425363397339

`A083102(n)/A060546(n)`
-/

namespace A083335.P17708894425363397339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083102 n : ℚ) / (A060546 n : ℚ)

end

end A083335.P17708894425363397339

namespace A083335

/-- `A083102(n)/A060546(n)` -/
def P17708894425363397339.Spec : Prop :=
  ∀ n, P17708894425363397339.a n = (A083335 n : ℚ)

end A083335

/-! ## A083335.P409964433095394341

`A083102(n)/sqrt(A056450(n))`
-/

namespace A083335.P409964433095394341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083102 n : ℝ) / Real.sqrt (A056450 n : ℝ)

end

end A083335.P409964433095394341

namespace A083335

/-- `A083102(n)/sqrt(A056450(n))` -/
def P409964433095394341.Spec : Prop :=
  ∀ n, P409964433095394341.a n = (A083335 n : ℝ)

end A083335

/-! ## A083335.P15399206449323514698

`∑[A133294(n)]/A060546(n)`
-/

namespace A083335.P15399206449323514698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133294 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A060546 n : ℚ)

end

end A083335.P15399206449323514698

namespace A083335

/-- `∑[A133294(n)]/A060546(n)` -/
def P15399206449323514698.Spec : Prop :=
  ∀ n, P15399206449323514698.a n = (A083335 n : ℚ)

end A083335

/-! ## A083335.P8520540493863149542

`A083102(n)/Δ[A027383(n)]`
-/

namespace A083335.P8520540493863149542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083102 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A083335.P8520540493863149542

namespace A083335

/-- `A083102(n)/Δ[A027383(n)]` -/
def P8520540493863149542.Spec : Prop :=
  ∀ n, P8520540493863149542.a n = (A083335 n : ℚ)

end A083335

/-! ## A083335.P3162477453850272850

`A083102(n)/gcd(A083101(n), A083102(n))`
-/

namespace A083335.P3162477453850272850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083102 n : ℚ) / (Int.gcd (A083101 n) (A083102 n) : ℚ)

end

end A083335.P3162477453850272850

namespace A083335

/-- `A083102(n)/gcd(A083101(n), A083102(n))` -/
def P3162477453850272850.Spec : Prop :=
  ∀ n, P3162477453850272850.a n = (A083335 n : ℚ)

end A083335

/-!
# A083336: a(n) = 4*a(n-2) - a(n-4).

The programs for A083336, the canonical program `A083336.P17290330661510506022` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083336 has offset 0).

The definition of A083336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)-a(n-4)` (program `A083336.P17290330661510506022`, by `A083336.P17290330661510506022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083336.P17290330661510506022

`4*a(n-2)-a(n-4)` with `a(0)=3, a(1)=3, a(2)=9, a(3)=12`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083336

/-- `4*a(n-2)-a(n-4)` -/
def P17290330661510506022.Spec : Prop :=
  ∀ n, P17290330661510506022.a n = A083336 n

theorem P17290330661510506022.correct : P17290330661510506022.Spec := by
  intro n
  simp only [A083336]

end A083336

/-! ## A083336.P16946418045497562232

`ogf((3+3x-3x^2)/(1-4x^2+x^4))`
-/

namespace A083336.P16946418045497562232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, -3] [1, 0, -4, 0, 1] n

end

end A083336.P16946418045497562232

namespace A083336

/-- `ogf((3+3x-3x^2)/(1-4x^2+x^4))` -/
def P16946418045497562232.Spec : Prop :=
  ∀ n, P16946418045497562232.a n = A083336 n

end A083336

/-! ## A083336.P527234621385227402

`3*A002530(n+1)`
-/

namespace A083336.P527234621385227402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002530 (n + 1)

end

end A083336.P527234621385227402

namespace A083336

/-- `3*A002530(n+1)` -/
def P527234621385227402.Spec : Prop :=
  ∀ n, P527234621385227402.a n = A083336 n

end A083336

/-! ## A083336.P393738608181826407

`A002530(n+3)-A048788(n)`
-/

namespace A083336.P393738608181826407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 3) - A048788 n

end

end A083336.P393738608181826407

namespace A083336

/-- `A002530(n+3)-A048788(n)` -/
def P393738608181826407.Spec : Prop :=
  ∀ n, P393738608181826407.a n = A083336 n

end A083336

/-! ## A083336.P3463063292396658149

`A002531(n)+A002531(A109613(n)+1)`
-/

namespace A083336.P3463063292396658149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 n + A002531 (A109613 n + 1).toNat

end

end A083336.P3463063292396658149

namespace A083336

/-- `A002531(n)+A002531(A109613(n)+1)` -/
def P3463063292396658149.Spec : Prop :=
  ∀ n, P3463063292396658149.a n = A083336 n

end A083336

/-! ## A083336.P11017972908616276304

`A002531(2*A008619(n))+A002531(n)`
-/

namespace A083336.P11017972908616276304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * A008619 n).toNat + A002531 n

end

end A083336.P11017972908616276304

namespace A083336

/-- `A002531(2*A008619(n))+A002531(n)` -/
def P11017972908616276304.Spec : Prop :=
  ∀ n, P11017972908616276304.a n = A083336 n

end A083336

/-! ## A083336.P13016374499901938862

`A259593(n)+A259593(n)-A143643(n+1)`
-/

namespace A083336.P13016374499901938862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 n + (A259593 n - A143643 (n + 1))

end

end A083336.P13016374499901938862

namespace A083336

/-- `A259593(n)+A259593(n)-A143643(n+1)` -/
def P13016374499901938862.Spec : Prop :=
  ∀ n, P13016374499901938862.a n = A083336 n

end A083336

/-! ## A083336.P3825364521402993997

`A002531(n+1)+A000034(n+1)*A002531(n)`
-/

namespace A083336.P3825364521402993997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (n + 1) + A000034 (n + 1) * A002531 n

end

end A083336.P3825364521402993997

namespace A083336

/-- `A002531(n+1)+A000034(n+1)*A002531(n)` -/
def P3825364521402993997.Spec : Prop :=
  ∀ n, P3825364521402993997.a n = A083336 n

end A083336

/-! ## A083336.P15925077668736986746

`A321119(n+2)-A002531(n+3)`
-/

namespace A083336.P15925077668736986746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (n + 2) - A002531 (n + 3)

end

end A083336.P15925077668736986746

namespace A083336

/-- `A321119(n+2)-A002531(n+3)` -/
def P15925077668736986746.Spec : Prop :=
  ∀ n, P15925077668736986746.a n = A083336 n

end A083336

/-! ## A083336.P15732866195856431010

`2*A259593(n)-A143643(n+1)`
-/

namespace A083336.P15732866195856431010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259593 n - A143643 (n + 1)

end

end A083336.P15732866195856431010

namespace A083336

/-- `2*A259593(n)-A143643(n+1)` -/
def P15732866195856431010.Spec : Prop :=
  ∀ n, P15732866195856431010.a n = A083336 n

end A083336

/-! ## A083336.P7829640513927582074

`A143643(n+2)+A002531(n)-A143643(n+1)`
-/

namespace A083336.P7829640513927582074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143643 (n + 2) + (A002531 n - A143643 (n + 1))

end

end A083336.P7829640513927582074

namespace A083336

/-- `A143643(n+2)+A002531(n)-A143643(n+1)` -/
def P7829640513927582074.Spec : Prop :=
  ∀ n, P7829640513927582074.a n = A083336 n

end A083336

/-! ## A083336.P2406550208379867607

`3*A002605(n+1)/A016116(n+1)`
-/

namespace A083336.P2406550208379867607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A002605 (n + 1) : ℚ) / (A016116 (n + 1) : ℚ)

end

end A083336.P2406550208379867607

namespace A083336

/-- `3*A002605(n+1)/A016116(n+1)` -/
def P2406550208379867607.Spec : Prop :=
  ∀ n, P2406550208379867607.a n = (A083336 n : ℚ)

end A083336

/-! ## A083336.P15943568170923963208

`Δ[A026150(n+1)]/Δ[A052955(n+1)]`
-/

namespace A083336.P15943568170923963208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A083336.P15943568170923963208

namespace A083336

/-- `Δ[A026150(n+1)]/Δ[A052955(n+1)]` -/
def P15943568170923963208.Spec : Prop :=
  ∀ n, P15943568170923963208.a n = (A083336 n : ℚ)

end A083336

/-! ## A083336.P10617548518555173907

`A259593(2*n+1)/Δ[A259593(n)]`
-/

namespace A083336.P10617548518555173907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259593 (2 * n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A083336.P10617548518555173907

namespace A083336

/-- `A259593(2*n+1)/Δ[A259593(n)]` -/
def P10617548518555173907.Spec : Prop :=
  ∀ n, P10617548518555173907.a n = (A083336 n : ℚ)

end A083336

/-! ## A083336.P17721451262171884967

`2*A143643(2*(n+1))/A321119(n+1)`
-/

namespace A083336.P17721451262171884967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A143643 (2 * (n + 1)) : ℚ) / (A321119 (n + 1) : ℚ))

end

end A083336.P17721451262171884967

namespace A083336

/-- `2*A143643(2*(n+1))/A321119(n+1)` -/
def P17721451262171884967.Spec : Prop :=
  ∀ n, P17721451262171884967.a n = (A083336 n : ℚ)

end A083336

/-! ## A083336.P6378122958841874366

`(A001834(n+1)+A001834(n))/A321119(n+1)`
-/

namespace A083336.P6378122958841874366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001834 (n + 1) + A001834 n : ℚ) / (A321119 (n + 1) : ℚ)

end

end A083336.P6378122958841874366

namespace A083336

/-- `(A001834(n+1)+A001834(n))/A321119(n+1)` -/
def P6378122958841874366.Spec : Prop :=
  ∀ n, P6378122958841874366.a n = (A083336 n : ℚ)

end A083336

/-! ## A083336.P18177470107644693250

`(A082841(n+1)-A082841(n))/A321119(n+1)`
-/

namespace A083336.P18177470107644693250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082841 (n + 1) - A082841 n : ℚ) / (A321119 (n + 1) : ℚ)

end

end A083336.P18177470107644693250

namespace A083336

/-- `(A082841(n+1)-A082841(n))/A321119(n+1)` -/
def P18177470107644693250.Spec : Prop :=
  ∀ n, P18177470107644693250.a n = (A083336 n : ℚ)

end A083336

/-! ## A083336.P1003285852708097101

`A005320(n+1)/(A259593(n+1)-A259593(n))`
-/

namespace A083336.P1003285852708097101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005320 (n + 1) : ℚ) / (A259593 (n + 1) - A259593 n : ℚ)

end

end A083336.P1003285852708097101

namespace A083336

/-- `A005320(n+1)/(A259593(n+1)-A259593(n))` -/
def P1003285852708097101.Spec : Prop :=
  ∀ n, P1003285852708097101.a n = (A083336 n : ℚ)

end A083336

/-!
# A083337: a(n) = 2*a(n-1) + 2*a(n-2); a(0)=0, a(1)=3.

The programs for A083337, the canonical program `A083337.P3424264278947881640` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083337 has offset 0).

The definition of A083337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)` (program `A083337.P3424264278947881640`, by `A083337.P3424264278947881640.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083337.P3424264278947881640

`2*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083337

/-- `2*a(n-1)+2*a(n-2)` -/
def P3424264278947881640.Spec : Prop :=
  ∀ n, (P3424264278947881640.a n : ℤ) = A083337 n

theorem P3424264278947881640.correct : P3424264278947881640.Spec := by
  intro n
  simp only [A083337]

end A083337

/-! ## A083337.P7886150793243284982

`a(n-1)+3*A026150(n-1)` with `a(0)=0`
-/

namespace A083337.P7886150793243284982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 * A026150 (n - 1)

end

end A083337.P7886150793243284982

namespace A083337

/-- `a(n-1)+3*A026150(n-1)` -/
def P7886150793243284982.Spec : Prop :=
  ∀ n, P7886150793243284982.a n = A083337 n

end A083337

/-! ## A083337.P7168853567083699899

`ogf(3x/(1-2x-2x^2))`
-/

namespace A083337.P7168853567083699899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -2, -2] n

end

end A083337.P7168853567083699899

namespace A083337

/-- `ogf(3x/(1-2x-2x^2))` -/
def P7168853567083699899.Spec : Prop :=
  ∀ n, P7168853567083699899.a n = A083337 n

end A083337

/-! ## A083337.P14706199642513829482

`2*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A083337.P14706199642513829482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A083337.P14706199642513829482

namespace A083337

/-- `2*(a(n-1)+a(n-2))` -/
def P14706199642513829482.Spec : Prop :=
  ∀ n, (P14706199642513829482.a n : ℤ) = A083337 n

theorem P14706199642513829482.correct : P14706199642513829482.Spec := by
  intro n
  simp only [A083337, Nat.add_sub_cancel, A083337.P14706199642513829482.a, A083337.P3424264278947881640.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083337

/-! ## A083337.P1293369123555703069

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A083337.P1293369123555703069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A083337.P1293369123555703069

namespace A083337

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P1293369123555703069.Spec : Prop :=
  ∀ n, P1293369123555703069.a n = A083337 n

end A083337

/-! ## A083337.P15915472478632753397

`2-2*(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A083337.P15915472478632753397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 - 2 * (1 - a (n - 1) - a (n - 2))

end

end A083337.P15915472478632753397

namespace A083337

/-- `2-2*(1-a(n-1)-a(n-2))` -/
def P15915472478632753397.Spec : Prop :=
  ∀ n, P15915472478632753397.a n = A083337 n

end A083337

/-! ## A083337.P5339443579134060830

`(a(n-1)+a(n-2))/(1-1/2)` with `a(0)=0, a(1)=3`
-/

namespace A083337.P5339443579134060830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A083337.P5339443579134060830

namespace A083337

/-- `(a(n-1)+a(n-2))/(1-1/2)` -/
def P5339443579134060830.Spec : Prop :=
  ∀ n, P5339443579134060830.a n = (A083337 n : ℚ)

end A083337

/-! ## A083337.P7312431586839205653

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A083337.P7312431586839205653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A083337.P7312431586839205653

namespace A083337

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P7312431586839205653.Spec : Prop :=
  ∀ n, (P7312431586839205653.a n : ℤ) = A083337 n

theorem P7312431586839205653.correct : P7312431586839205653.Spec := by
  intro n
  simp only [A083337, Nat.add_sub_cancel, A083337.P7312431586839205653.a, A083337.P3424264278947881640.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083337

/-! ## A083337.P8017854795326687475

`3*A002605(n)`
-/

namespace A083337.P8017854795326687475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002605 n

end

end A083337.P8017854795326687475

namespace A083337

/-- `3*A002605(n)` -/
def P8017854795326687475.Spec : Prop :=
  ∀ n, P8017854795326687475.a n = A083337 n

end A083337

/-! ## A083337.P2116184307404093525

`3*A160444(Δ[n²])`
-/

namespace A083337.P2116184307404093525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A160444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A083337.P2116184307404093525

namespace A083337

/-- `3*A160444(Δ[n²])` -/
def P2116184307404093525.Spec : Prop :=
  ∀ n, P2116184307404093525.a n = A083337 n

end A083337

/-! ## A083337.P4980355223624845871

`3*A160572(2*(n+1))`
-/

namespace A083337.P4980355223624845871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A160572 (2 * (n + 1))

end

end A083337.P4980355223624845871

namespace A083337

/-- `3*A160572(2*(n+1))` -/
def P4980355223624845871.Spec : Prop :=
  ∀ n, P4980355223624845871.a n = A083337 n

end A083337

/-! ## A083337.P11832141080809330580

`3/2*A293007(n+1)`
-/

namespace A083337.P11832141080809330580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A293007 (n + 1) : ℚ)

end

end A083337.P11832141080809330580

namespace A083337

/-- `3/2*A293007(n+1)` -/
def P11832141080809330580.Spec : Prop :=
  ∀ n, P11832141080809330580.a n = (A083337 n : ℚ)

end A083337

/-! ## A083337.P7370769398062366260

`3/2*A028860(n+2)`
-/

namespace A083337.P7370769398062366260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A028860 (n + 2) : ℚ)

end

end A083337.P7370769398062366260

namespace A083337

/-- `3/2*A028860(n+2)` -/
def P7370769398062366260.Spec : Prop :=
  ∀ n, P7370769398062366260.a n = (A083337 n : ℚ)

end A083337

/-! ## A083337.P13999221769170229112

`A002605(n)+Δ[A052948(n)]`
-/

namespace A083337.P13999221769170229112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n + (f1 (n + 1) - f1 n)

end

end A083337.P13999221769170229112

namespace A083337

/-- `A002605(n)+Δ[A052948(n)]` -/
def P13999221769170229112.Spec : Prop :=
  ∀ n, P13999221769170229112.a n = A083337 n

end A083337

/-! ## A083337.P6397521905176972413

`A028860(n)+A002605(n+1)`
-/

namespace A083337.P6397521905176972413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 n + A002605 (n + 1)

end

end A083337.P6397521905176972413

namespace A083337

/-- `A028860(n)+A002605(n+1)` -/
def P6397521905176972413.Spec : Prop :=
  ∀ n, P6397521905176972413.a n = A083337 n

end A083337

/-! ## A083337.P11742775740127681639

`A005665(n)+A028860(n)+1`
-/

namespace A083337.P11742775740127681639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005665 n + (A028860 n + 1)

end

end A083337.P11742775740127681639

namespace A083337

/-- `A005665(n)+A028860(n)+1` -/
def P11742775740127681639.Spec : Prop :=
  ∀ n, P11742775740127681639.a n = A083337 n

end A083337

/-! ## A083337.P3854476158670846591

`A002605(n)+A108898(n)+1`
-/

namespace A083337.P3854476158670846591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n + (A108898 n + 1)

end

end A083337.P3854476158670846591

namespace A083337

/-- `A002605(n)+A108898(n)+1` -/
def P3854476158670846591.Spec : Prop :=
  ∀ n, P3854476158670846591.a n = A083337 n

end A083337

/-! ## A083337.P1574025771049434377

`A293007(n+1)+A002605(n)`
-/

namespace A083337.P1574025771049434377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293007 (n + 1) + A002605 n

end

end A083337.P1574025771049434377

namespace A083337

/-- `A293007(n+1)+A002605(n)` -/
def P1574025771049434377.Spec : Prop :=
  ∀ n, P1574025771049434377.a n = A083337 n

end A083337

/-! ## A083337.P16154292815656691945

`A028859(n)-A028860(n+1)`
-/

namespace A083337.P16154292815656691945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - A028860 (n + 1)

end

end A083337.P16154292815656691945

namespace A083337

/-- `A028859(n)-A028860(n+1)` -/
def P16154292815656691945.Spec : Prop :=
  ∀ n, P16154292815656691945.a n = A083337 n

end A083337

/-! ## A083337.P142371928058251627

`A160444(2*n+1)+A028860(n+2)`
-/

namespace A083337.P142371928058251627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (2 * n + 1) + A028860 (n + 2)

end

end A083337.P142371928058251627

namespace A083337

/-- `A160444(2*n+1)+A028860(n+2)` -/
def P142371928058251627.Spec : Prop :=
  ∀ n, P142371928058251627.a n = A083337 n

end A083337

/-!
# A083338: Number of partitions of odd numbers into three primes and of even numbers into two primes.

The programs for A083338, there is no canonical definition to state claims against.
-/

/-! ## A083338.P10422134667017120341

`A068307(xor(1, n+1)+1)`
-/

namespace A083338.P10422134667017120341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (Nat.xor 1 (n + 1) + 1)

end

end A083338.P10422134667017120341

/-! ## A083338.P5495716132272851897

`A068307(3^(n%2)+n)`
-/

namespace A083338.P5495716132272851897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (3 ^ (n % 2) + n)

end

end A083338.P5495716132272851897

/-! ## A083338.P2494813500030539915

`A068307(2*and(1, n)+n+1)`
-/

namespace A083338.P2494813500030539915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * Nat.land 1 n + n + 1)

end

end A083338.P2494813500030539915

/-! ## A083338.P3345025846540794546

`A068307(A004442(n+1)+1)`
-/

namespace A083338.P3345025846540794546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A004442 (n + 1) + 1).toNat

end

end A083338.P3345025846540794546

/-! ## A083338.P16784114357441185614

`A068307(A103889(n+2))`
-/

namespace A083338.P16784114357441185614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A103889 (n + 2)).toNat

end

end A083338.P16784114357441185614

/-! ## A083338.P14572265961668400785

`A068307(A114112(n+2))`
-/

namespace A083338.P14572265961668400785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A114112 (n + 2)).toNat

end

end A083338.P14572265961668400785

/-! ## A083338.P5559269574055071248

`A068307(A003324(2*n+1)+n)`
-/

namespace A083338.P5559269574055071248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A003324 (2 * n + 1) + (n : ℤ)).toNat

end

end A083338.P5559269574055071248

/-!
# A083339: a(n) is the number of distinct prime factors of n that occur in partitions into two primes when n is even and into three primes when n is odd.

The programs for A083339, there is no canonical definition to state claims against.
-/

/-! ## A083339.P17089598492100284484

`xor(A087624(A332893(n+1)), A106404(n+1))`
-/

namespace A083339.P17089598492100284484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087624 (A332893 (n + 1)).toNat) (A106404 (n + 1))

end

end A083339.P17089598492100284484

/-! ## A083339.P10830212834187605782

`A205745(gcd(1-n^8, ∏{d}[n+1, #]/(n+1)))`
-/

namespace A083339.P10830212834187605782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (Int.gcd (1 - (n ^ 8 : ℤ)) (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))))

end

end A083339.P10830212834187605782

/-! ## A083339.P1115468545435835465

`A205745(A079880(n+1)*A340679(n+1))`
-/

namespace A083339.P1115468545435835465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (A079880 (n + 1) * A340679 (n + 1)).toNat

end

end A083339.P1115468545435835465

/-! ## A083339.P1322867509893940372

`A205745(A264859(n+1)%A089241(n+1))`
-/

namespace A083339.P1322867509893940372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (Int.tmod (A264859 (n + 1)) (A089241 (n + 1))).toNat

end

end A083339.P1322867509893940372

/-!
# A083340: Numbers n such that A020549(n)=(n!)^2+1 is a semiprime.

The programs for A083340, there is no canonical definition to state claims against.
-/

/-! ## A083340.P4833451598080009248

`eq[2, A048858(n)]`
-/

namespace A083340.P4833451598080009248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083340.P4833451598080009248

/-!
# A083341: Smaller factor of the n-th semiprime of the form (m!)^2 + 1.

The programs for A083341, there is no canonical definition to state claims against.
-/

/-! ## A083341.P18103233273047443816

`A282706(A083340(n+1))`
-/

namespace A083341.P18103233273047443816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282706 (A083340 (n + 1)).toNat

end

end A083341.P18103233273047443816

/-!
# A083344: a(n) = A082457(n) - A066715(n) = gcd(2n+1, A057643(2n+1)) - gcd(2n+1, A000203(2n+1)).

The programs for A083344, there is no canonical definition to state claims against.
-/

/-! ## A083344.P15096405938641299210

`A082457(n+1)-A066715(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083344.P15096405938641299210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082457 (n + 1) - A066715 (n + 1)

end

end A083344.P15096405938641299210

/-! ## A083344.P4959466592997991821

`gcd(2*(n+1)+1, A057643(2*(n+1)+1))-gcd(2*(n+1)+1, A000203(2*(n+1)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083344.P4959466592997991821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 * (n + 1) + 1 : ℤ) (A057643 (2 * (n + 1) + 1)) : ℤ) - (Int.gcd (2 * (n + 1) + 1 : ℤ) (A000203 (2 * (n + 1) + 1)) : ℤ)

end

end A083344.P4959466592997991821

/-! ## A083344.P4291080792060380248

`A082457(n+1)-A336850(A064216(n+2))`
-/

namespace A083344.P4291080792060380248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082457 (n + 1) - A336850 (A064216 (n + 2)).toNat

end

end A083344.P4291080792060380248

/-! ## A083344.P7390895570498902252

`A082457(n+1)-A009194(2*n+3)`
-/

namespace A083344.P7390895570498902252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082457 (n + 1) - A009194 (2 * n + 3)

end

end A083344.P7390895570498902252

/-! ## A083344.P8477122744708000782

`gcd(2*n+3, A057643(2*n+3))-A066715(n+1)`
-/

namespace A083344.P8477122744708000782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 * n + 3 : ℤ) (A057643 (2 * n + 3)) : ℤ) - A066715 (n + 1)

end

end A083344.P8477122744708000782

/-! ## A083344.P5049802317119184242

`A028645(n)*A083892(A271125(n))`
-/

namespace A083344.P5049802317119184242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 n * A083892 (A271125 n).toNat

end

end A083344.P5049802317119184242

/-! ## A083344.P333083436933978520

`A198442(gcd(A130296(n+1), A240865(n)))`
-/

namespace A083344.P333083436933978520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (Int.gcd (A130296 (n + 1)) (A240865 n))

end

end A083344.P333083436933978520

/-! ## A083344.P12043553628884620978

`A025437(C(A131160(n), A082348(n)))`
-/

namespace A083344.P12043553628884620978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (Nat.choose (A131160 n).toNat (A082348 n).toNat)

end

end A083344.P12043553628884620978

/-! ## A083344.P11077334201732274816

`A112053(gcd(A097591(n), A319573(n)))`
-/

namespace A083344.P11077334201732274816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (Int.gcd (A097591 n) (A319573 n))

end

end A083344.P11077334201732274816

/-!
# A083345: Numerator of r(n) = Sum(e/p: n=Product(p^e)); a(n) = n' / gcd(n,n'), where n' is the arithmetic derivative of n.

The programs for A083345, the canonical program `A083345.P17056663291398447745` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083345 has offset 1).

The definition of A083345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A369008, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083345.P15515353970873287462

`A003415(n+1)/A085731(n+1)`
-/

namespace A083345.P15515353970873287462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083345.P15515353970873287462

namespace A083345

/-- `A003415(n+1)/A085731(n+1)` -/
def P15515353970873287462.Spec : Prop :=
  ∀ n, P15515353970873287462.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P17056663291398447745

`A342001(n+1)/A369008(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A083345

/-- `A342001(n+1)/A369008(n+1)` -/
def P17056663291398447745.Spec : Prop :=
  ∀ n, P17056663291398447745.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P5738468856049725035

`∑{d}[n+1, A369068(#)]`
-/

namespace A083345.P5738468856049725035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369068 d

end

end A083345.P5738468856049725035

namespace A083345

/-- `∑{d}[n+1, A369068(#)]` -/
def P5738468856049725035.Spec : Prop :=
  ∀ n, P5738468856049725035.a n = A083345 (n + 1)

end A083345

/-! ## A083345.P12259205460859412461

`A086130(n+1)/(n+1)`
-/

namespace A083345.P12259205460859412461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083345.P12259205460859412461

namespace A083345

/-- `A086130(n+1)/(n+1)` -/
def P12259205460859412461.Spec : Prop :=
  ∀ n, P12259205460859412461.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P10191686454318029527

`∑{d}[n+1, #*A369455((n+1)/#)]`
-/

namespace A083345.P10191686454318029527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A369455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A083345.P10191686454318029527

namespace A083345

/-- `∑{d}[n+1, #*A369455((n+1)/#)]` -/
def P10191686454318029527.Spec : Prop :=
  ∀ n, P10191686454318029527.a n = A083345 (n + 1)

end A083345

/-! ## A083345.P6256239894490758235

`∑[A258057(n)]/A085731(n+1)`
-/

namespace A083345.P6256239894490758235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083345.P6256239894490758235

namespace A083345

/-- `∑[A258057(n)]/A085731(n+1)` -/
def P6256239894490758235.Spec : Prop :=
  ∀ n, P6256239894490758235.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P12399791462602653077

`A342001(n+1)-A369009(n+1)`
-/

namespace A083345.P12399791462602653077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) - A369009 (n + 1)

end

end A083345.P12399791462602653077

namespace A083345

/-- `A342001(n+1)-A369009(n+1)` -/
def P12399791462602653077.Spec : Prop :=
  ∀ n, P12399791462602653077.a n = A083345 (n + 1)

end A083345

/-! ## A083345.P12963713389887120480

`A189036(n+1)/A083346(n+1)`
-/

namespace A083345.P12963713389887120480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189036 (n + 1) : ℚ) / (A083346 (n + 1) : ℚ)

end

end A083345.P12963713389887120480

namespace A083345

/-- `A189036(n+1)/A083346(n+1)` -/
def P12963713389887120480.Spec : Prop :=
  ∀ n, P12963713389887120480.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P4009858636344560308

`gcd(A189036(n+1), A342001(n+1))`
-/

namespace A083345.P4009858636344560308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189036 (n + 1)) (A342001 (n + 1))

end

end A083345.P4009858636344560308

namespace A083345

/-- `gcd(A189036(n+1), A342001(n+1))` -/
def P4009858636344560308.Spec : Prop :=
  ∀ n, (P4009858636344560308.a n : ℤ) = A083345 (n + 1)

end A083345

/-! ## A083345.P5862381731440036872

`∑{d}[n+1, A008966(#)*A369069((n+1)/#)]`
-/

namespace A083345.P5862381731440036872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A369069 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A083345.P5862381731440036872

namespace A083345

/-- `∑{d}[n+1, A008966(#)*A369069((n+1)/#)]` -/
def P5862381731440036872.Spec : Prop :=
  ∀ n, P5862381731440036872.a n = A083345 (n + 1)

end A083345

/-! ## A083345.P7484142318109755993

`A083346(n+1)+A168036(n+1)/A085731(n+1)`
-/

namespace A083345.P7484142318109755993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083346 (n + 1) : ℚ) + (A168036 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083345.P7484142318109755993

namespace A083345

/-- `A083346(n+1)+A168036(n+1)/A085731(n+1)` -/
def P7484142318109755993.Spec : Prop :=
  ∀ n, P7484142318109755993.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P4527578063326700874

`(A329039(n+1)+A069359(n+1))/A085731(n+1)`
-/

namespace A083345.P4527578063326700874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329039 (n + 1) + A069359 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083345.P4527578063326700874

namespace A083345

/-- `(A329039(n+1)+A069359(n+1))/A085731(n+1)` -/
def P4527578063326700874.Spec : Prop :=
  ∀ n, P4527578063326700874.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P10380875270877688658

`(A300252(n+1)+A300251(n+1))/A085731(n+1)`
-/

namespace A083345.P10380875270877688658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300252 (n + 1) + A300251 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083345.P10380875270877688658

namespace A083345

/-- `(A300252(n+1)+A300251(n+1))/A085731(n+1)` -/
def P10380875270877688658.Spec : Prop :=
  ∀ n, P10380875270877688658.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P1969295863033447754

`(A003961(n+1)-A348937(n+1))/A085731(n+1)`
-/

namespace A083345.P1969295863033447754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A348937 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083345.P1969295863033447754

namespace A083345

/-- `(A003961(n+1)-A348937(n+1))/A085731(n+1)` -/
def P1969295863033447754.Spec : Prop :=
  ∀ n, P1969295863033447754.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P10279841459781374099

`A003557(n+1)/A085731(n+1)*A342001(n+1)`
-/

namespace A083345.P10279841459781374099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ) * (A342001 (n + 1) : ℚ)

end

end A083345.P10279841459781374099

namespace A083345

/-- `A003557(n+1)/A085731(n+1)*A342001(n+1)` -/
def P10279841459781374099.Spec : Prop :=
  ∀ n, P10279841459781374099.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P8031675837104771807

`A319703(2*(n+1))/A085731(n+1)`
-/

namespace A083345.P8031675837104771807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319703 (2 * (n + 1)) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083345.P8031675837104771807

namespace A083345

/-- `A319703(2*(n+1))/A085731(n+1)` -/
def P8031675837104771807.Spec : Prop :=
  ∀ n, P8031675837104771807.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P8871761862730266068

`A319703(2*n+2)/gcd(A028310(n+1), A319703(2*n+2))`
-/

namespace A083345.P8871761862730266068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319703 (2 * n + 2) : ℚ) / (Int.gcd (A028310 (n + 1)) (A319703 (2 * n + 2)) : ℚ)

end

end A083345.P8871761862730266068

namespace A083345

/-- `A319703(2*n+2)/gcd(A028310(n+1), A319703(2*n+2))` -/
def P8871761862730266068.Spec : Prop :=
  ∀ n, P8871761862730266068.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P13164630106415556984

`A003415(n+1)/gcd(A003415(n+1), A233583(n+2))`
-/

namespace A083345.P13164630106415556984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (Int.gcd (A003415 (n + 1)) (A233583 (n + 2)) : ℚ)

end

end A083345.P13164630106415556984

namespace A083345

/-- `A003415(n+1)/gcd(A003415(n+1), A233583(n+2))` -/
def P13164630106415556984.Spec : Prop :=
  ∀ n, P13164630106415556984.a n = (A083345 (n + 1) : ℚ)

end A083345

/-! ## A083345.P5437472446223862796

`A318573(A064988(n+1))`
-/

namespace A083345.P5437472446223862796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A064988 (n + 1)).toNat

end

end A083345.P5437472446223862796

namespace A083345

/-- `A318573(A064988(n+1))` -/
def P5437472446223862796.Spec : Prop :=
  ∀ n, P5437472446223862796.a n = A083345 (n + 1)

end A083345

/-!
# A083346: Denominator of r(n) = Sum(e/p: n=Product(p^e)).

The programs for A083346, the canonical program `A083346.P12627612333518549643` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083346 has offset 1).

The definition of A083346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083346.P8789937071437341190

`∏{p}[A327938(n+1), #]`
-/

namespace A083346.P8789937071437341190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A083346.P8789937071437341190

namespace A083346

/-- `∏{p}[A327938(n+1), #]` -/
def P8789937071437341190.Spec : Prop :=
  ∀ n, (P8789937071437341190.a n : ℤ) = A083346 (n + 1)

end A083346

/-! ## A083346.P1288535791959638503

`∏{p}[A359593(n+1), #]`
-/

namespace A083346.P1288535791959638503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A083346.P1288535791959638503

namespace A083346

/-- `∏{p}[A359593(n+1), #]` -/
def P1288535791959638503.Spec : Prop :=
  ∀ n, (P1288535791959638503.a n : ℤ) = A083346 (n + 1)

end A083346

/-! ## A083346.P12627612333518549643

`(n+1)/A085731(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A083346

/-- `(n+1)/A085731(n+1)` -/
def P12627612333518549643.Spec : Prop :=
  ∀ n, P12627612333518549643.a n = (A083346 (n + 1) : ℚ)

end A083346

/-! ## A083346.P14399558590751923812

`(n+1)/gcd(n+1, A003415(n+1))`
-/

namespace A083346.P14399558590751923812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A003415 (n + 1)) : ℚ)

end

end A083346.P14399558590751923812

namespace A083346

/-- `(n+1)/gcd(n+1, A003415(n+1))` -/
def P14399558590751923812.Spec : Prop :=
  ∀ n, P14399558590751923812.a n = (A083346 (n + 1) : ℚ)

end A083346

/-! ## A083346.P12071372511602677010

`A007947(A327938(n+1))`
-/

namespace A083346.P12071372511602677010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A327938 (n + 1)).toNat

end

end A083346.P12071372511602677010

namespace A083346

/-- `A007947(A327938(n+1))` -/
def P12071372511602677010.Spec : Prop :=
  ∀ n, P12071372511602677010.a n = A083346 (n + 1)

end A083346

/-! ## A083346.P17811241263728054864

`A007947(A359593(n+1))`
-/

namespace A083346.P17811241263728054864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A359593 (n + 1)).toNat

end

end A083346.P17811241263728054864

namespace A083346

/-- `A007947(A359593(n+1))` -/
def P17811241263728054864.Spec : Prop :=
  ∀ n, P17811241263728054864.a n = A083346 (n + 1)

end A083346

/-! ## A083346.P17215719770637906653

`gcd(A144845(n), A327938(n+1))`
-/

namespace A083346.P17215719770637906653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n) (A327938 (n + 1))

end

end A083346.P17215719770637906653

namespace A083346

/-- `gcd(A144845(n), A327938(n+1))` -/
def P17215719770637906653.Spec : Prop :=
  ∀ n, (P17215719770637906653.a n : ℤ) = A083346 (n + 1)

end A083346

/-! ## A083346.P9846989128398596439

`A007947((n+1)/A327939(n+1))`
-/

namespace A083346.P9846989128398596439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327939 (n + 1) : ℚ))).toNat

end

end A083346.P9846989128398596439

namespace A083346

/-- `A007947((n+1)/A327939(n+1))` -/
def P9846989128398596439.Spec : Prop :=
  ∀ n, P9846989128398596439.a n = A083346 (n + 1)

end A083346

/-! ## A083346.P14685827374212440511

`A007947(n+1)/A369008(n+1)`
-/

namespace A083346.P14685827374212440511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A369008 (n + 1) : ℚ)

end

end A083346.P14685827374212440511

namespace A083346

/-- `A007947(n+1)/A369008(n+1)` -/
def P14685827374212440511.Spec : Prop :=
  ∀ n, P14685827374212440511.a n = (A083346 (n + 1) : ℚ)

end A083346

/-! ## A083346.P9947900176606542140

`A007913(Δ[A069891(n)]*A085731(n+1))`
-/

namespace A083346.P9947900176606542140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((f1 (n + 1) - f1 n) * A085731 (n + 1)).toNat

end

end A083346.P9947900176606542140

namespace A083346

/-- `A007913(Δ[A069891(n)]*A085731(n+1))` -/
def P9947900176606542140.Spec : Prop :=
  ∀ n, P9947900176606542140.a n = A083346 (n + 1)

end A083346

/-! ## A083346.P11080555871547818323

`A007913(A007913(n+1)*A085731(n+1))`
-/

namespace A083346.P11080555871547818323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) * A085731 (n + 1)).toNat

end

end A083346.P11080555871547818323

namespace A083346

/-- `A007913(A007913(n+1)*A085731(n+1))` -/
def P11080555871547818323.Spec : Prop :=
  ∀ n, P11080555871547818323.a n = A083346 (n + 1)

end A083346

/-! ## A083346.P16963742355373731718

`A000027(n+1)/gcd(A000027(n+1), A342014(n+1))`
-/

namespace A083346.P16963742355373731718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A342014 (n + 1)) : ℚ)

end

end A083346.P16963742355373731718

namespace A083346

/-- `A000027(n+1)/gcd(A000027(n+1), A342014(n+1))` -/
def P16963742355373731718.Spec : Prop :=
  ∀ n, P16963742355373731718.a n = (A083346 (n + 1) : ℚ)

end A083346

/-! ## A083346.P12652599408395489359

`A073675(2*(n+1))/gcd(A068719(2*(n+1)), A073675(2*(n+1)))`
-/

namespace A083346.P12652599408395489359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073675 (2 * (n + 1)) : ℚ) / (Int.gcd (A068719 (2 * (n + 1))) (A073675 (2 * (n + 1))) : ℚ)

end

end A083346.P12652599408395489359

namespace A083346

/-- `A073675(2*(n+1))/gcd(A068719(2*(n+1)), A073675(2*(n+1)))` -/
def P12652599408395489359.Spec : Prop :=
  ∀ n, P12652599408395489359.a n = (A083346 (n + 1) : ℚ)

end A083346

/-! ## A083346.P7021837676115017497

`gcd(A306745(n), A359593(n+1))`
-/

namespace A083346.P7021837676115017497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306745 n) (A359593 (n + 1))

end

end A083346.P7021837676115017497

namespace A083346

/-- `gcd(A306745(n), A359593(n+1))` -/
def P7021837676115017497.Spec : Prop :=
  ∀ n, (P7021837676115017497.a n : ℤ) = A083346 (n + 1)

end A083346

/-! ## A083346.P5350960539835252916

`∏{p}[A328618(n+1)/A327939(n+1), #]`
-/

namespace A083346.P5350960539835252916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328618 (n + 1) : ℚ) / (A327939 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A083346.P5350960539835252916

namespace A083346

/-- `∏{p}[A328618(n+1)/A327939(n+1), #]` -/
def P5350960539835252916.Spec : Prop :=
  ∀ n, (P5350960539835252916.a n : ℤ) = A083346 (n + 1)

end A083346

/-! ## A083346.P10646890400110352536

`A007913((n+1)*A085731(n+1))`
-/

namespace A083346.P10646890400110352536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A085731 (n + 1)).toNat

end

end A083346.P10646890400110352536

namespace A083346

/-- `A007913((n+1)*A085731(n+1))` -/
def P10646890400110352536.Spec : Prop :=
  ∀ n, P10646890400110352536.a n = A083346 (n + 1)

end A083346

/-! ## A083346.P16195883871990675361

`A318574(A064988(n+1))`
-/

namespace A083346.P16195883871990675361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A064988 (n + 1)).toNat

end

end A083346.P16195883871990675361

namespace A083346

/-- `A318574(A064988(n+1))` -/
def P16195883871990675361.Spec : Prop :=
  ∀ n, P16195883871990675361.a n = A083346 (n + 1)

end A083346

/-! ## A083346.P13369062735479588202

`(n+1)/A355003(A071892(n+1))`
-/

namespace A083346.P13369062735479588202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355003 (A071892 (n + 1)).toNat : ℚ)

end

end A083346.P13369062735479588202

namespace A083346

/-- `(n+1)/A355003(A071892(n+1))` -/
def P13369062735479588202.Spec : Prop :=
  ∀ n, P13369062735479588202.a n = (A083346 (n + 1) : ℚ)

end A083346

/-! ## A083346.P2551203219881174807

`A336643(A327938(n+1)²)`
-/

namespace A083346.P2551203219881174807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A327938 (n + 1) ^ 2).toNat

end

end A083346.P2551203219881174807

namespace A083346

/-- `A336643(A327938(n+1)²)` -/
def P2551203219881174807.Spec : Prop :=
  ∀ n, P2551203219881174807.a n = A083346 (n + 1)

end A083346

/-! ## A083346.P9799908818462258681

`A056552(A065883(n+1)²)`
-/

namespace A083346.P9799908818462258681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (A065883 (n + 1) ^ 2).toNat

end

end A083346.P9799908818462258681

namespace A083346

/-- `A056552(A065883(n+1)²)` -/
def P9799908818462258681.Spec : Prop :=
  ∀ n, P9799908818462258681.a n = A083346 (n + 1)

end A083346

/-!
# A083347: Numbers k such that Sum(e/p: k=Product(p^e)) < 1.

The programs for A083347, the canonical program `A083347.P586298747348292320` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083347 has offset 1).

The definition of A083347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083347.P586298747348292320

`eq[1, A341625(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A083347

/-- `eq[1, A341625(n)]` -/
def P586298747348292320.Spec : Prop :=
  ∀ n, (P586298747348292320.a n : ℤ) = A083347 (n + 1)

theorem P586298747348292320.correct : P586298747348292320.Spec := by
  intro n
  simp only [A083347, Nat.add_sub_cancel]

end A083347

/-! ## A083347.P11201265759039233840

`lt[1, A369052(n)+n]`
-/

namespace A083347.P11201265759039233840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369052 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083347.P11201265759039233840

namespace A083347

/-- `lt[1, A369052(n)+n]` -/
def P11201265759039233840.Spec : Prop :=
  ∀ n, (P11201265759039233840.a n : ℤ) = A083347 (n + 1)

end A083347

/-! ## A083347.P15578483733636128154

`eq[1, A343221(n+1)+1]+1`
-/

namespace A083347.P15578483733636128154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343221 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083347.P15578483733636128154

namespace A083347

/-- `eq[1, A343221(n+1)+1]+1` -/
def P15578483733636128154.Spec : Prop :=
  ∀ n, (P15578483733636128154.a n : ℤ) = A083347 (n + 1)

end A083347

/-! ## A083347.P10247562576099977650

`lt[A341629(2*n+1), A341625(n)]`
-/

namespace A083347.P10247562576099977650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083347.P10247562576099977650

namespace A083347

/-- `lt[A341629(2*n+1), A341625(n)]` -/
def P10247562576099977650.Spec : Prop :=
  ∀ n, (P10247562576099977650.a n : ℤ) = A083347 (n + 1)

end A083347

/-! ## A083347.P8002705681658078977

`filter[A048103(n+1), A341625(#)]`
-/

namespace A083347.P8002705681658078977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P8002705681658078977

namespace A083347

/-- `filter[A048103(n+1), A341625(#)]` -/
def P8002705681658078977.Spec : Prop :=
  ∀ n, P8002705681658078977.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P13082630756911005183

`filter[A042968(n+1), A341625(#)]`
-/

namespace A083347.P13082630756911005183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P13082630756911005183

namespace A083347

/-- `filter[A042968(n+1), A341625(#)]` -/
def P13082630756911005183.Spec : Prop :=
  ∀ n, P13082630756911005183.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P10795153292563959012

`filter[A359794(n+1), A341625(#)]`
-/

namespace A083347.P10795153292563959012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P10795153292563959012

namespace A083347

/-- `filter[A359794(n+1), A341625(#)]` -/
def P10795153292563959012.Spec : Prop :=
  ∀ n, P10795153292563959012.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P17887694921845520442

`filter[A207481(n+1), A341625(#)]`
-/

namespace A083347.P17887694921845520442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P17887694921845520442

namespace A083347

/-- `filter[A207481(n+1), A341625(#)]` -/
def P17887694921845520442.Spec : Prop :=
  ∀ n, P17887694921845520442.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P4486236985168440298

`filter[A047588(n+1), A341625(#)]`
-/

namespace A083347.P4486236985168440298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P4486236985168440298

namespace A083347

/-- `filter[A047588(n+1), A341625(#)]` -/
def P4486236985168440298.Spec : Prop :=
  ∀ n, P4486236985168440298.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P6944052443452021259

`filter[A047592(n+1), A341625(#)]`
-/

namespace A083347.P6944052443452021259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P6944052443452021259

namespace A083347

/-- `filter[A047592(n+1), A341625(#)]` -/
def P6944052443452021259.Spec : Prop :=
  ∀ n, P6944052443452021259.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P31424106138355914

`filter[A317468(n+1), A341625(#)]`
-/

namespace A083347.P31424106138355914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P31424106138355914

namespace A083347

/-- `filter[A317468(n+1), A341625(#)]` -/
def P31424106138355914.Spec : Prop :=
  ∀ n, P31424106138355914.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P11410005853389834458

`filter[A382746(n+1), A341625(#)]`
-/

namespace A083347.P11410005853389834458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P11410005853389834458

namespace A083347

/-- `filter[A382746(n+1), A341625(#)]` -/
def P11410005853389834458.Spec : Prop :=
  ∀ n, P11410005853389834458.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P1785781389803559942

`filter[A166719(n+1), A341625(#)]`
-/

namespace A083347.P1785781389803559942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P1785781389803559942

namespace A083347

/-- `filter[A166719(n+1), A341625(#)]` -/
def P1785781389803559942.Spec : Prop :=
  ∀ n, P1785781389803559942.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P3397286240650844248

`filter[A168186(n+1), A341625(#)]`
-/

namespace A083347.P3397286240650844248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P3397286240650844248

namespace A083347

/-- `filter[A168186(n+1), A341625(#)]` -/
def P3397286240650844248.Spec : Prop :=
  ∀ n, P3397286240650844248.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P12910581789573776579

`filter[A064598(n+1), A341625(#)]`
-/

namespace A083347.P12910581789573776579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P12910581789573776579

namespace A083347

/-- `filter[A064598(n+1), A341625(#)]` -/
def P12910581789573776579.Spec : Prop :=
  ∀ n, P12910581789573776579.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P2077448257390851724

`filter[A110303(n+1), A341625(#)]`
-/

namespace A083347.P2077448257390851724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P2077448257390851724

namespace A083347

/-- `filter[A110303(n+1), A341625(#)]` -/
def P2077448257390851724.Spec : Prop :=
  ∀ n, P2077448257390851724.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P10646889027835681438

`filter[A386807(n+1), A341625(#)]`
-/

namespace A083347.P10646889027835681438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P10646889027835681438

namespace A083347

/-- `filter[A386807(n+1), A341625(#)]` -/
def P10646889027835681438.Spec : Prop :=
  ∀ n, P10646889027835681438.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P13869146857843699442

`filter[A352796(n+1), A341625(#)]`
-/

namespace A083347.P13869146857843699442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P13869146857843699442

namespace A083347

/-- `filter[A352796(n+1), A341625(#)]` -/
def P13869146857843699442.Spec : Prop :=
  ∀ n, P13869146857843699442.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P17228105733759827995

`filter[A144972(n+1), A341625(#)]`
-/

namespace A083347.P17228105733759827995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P17228105733759827995

namespace A083347

/-- `filter[A144972(n+1), A341625(#)]` -/
def P17228105733759827995.Spec : Prop :=
  ∀ n, P17228105733759827995.a n = A083347 (n + 1)

end A083347

/-! ## A083347.P17813815710919630204

`filter[A068937(n+1), A341625(#)]`
-/

namespace A083347.P17813815710919630204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A083347.P17813815710919630204

namespace A083347

/-- `filter[A068937(n+1), A341625(#)]` -/
def P17813815710919630204.Spec : Prop :=
  ∀ n, P17813815710919630204.a n = A083347 (n + 1)

end A083347

/-!
# A083348: Numbers k such that r(k) = Sum(e/p: k = Product(p^e)) > 1.

The programs for A083348, the canonical program `A083348.P17228542096828798652` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083348 has offset 1).

The definition of A083348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083348.P17228542096828798652

`eq[1, A369048(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A083348

/-- `eq[1, A369048(n)]` -/
def P17228542096828798652.Spec : Prop :=
  ∀ n, (P17228542096828798652.a n : ℤ) = A083348 (n + 1)

theorem P17228542096828798652.correct : P17228542096828798652.Spec := by
  intro n
  simp only [A083348, Nat.add_sub_cancel]

end A083348

/-! ## A083348.P3360188747056064170

`eq[2, A001316(a(A343222(n)))]` with `a(0)=0`
-/

namespace A083348.P3360188747056064170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A001316 (f2 (A343222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083348.P3360188747056064170

namespace A083348

/-- `eq[2, A001316(a(A343222(n)))]` -/
def P3360188747056064170.Spec : Prop :=
  ∀ n, (P3360188747056064170.a n : ℤ) = A083348 (n + 1)

end A083348

/-! ## A083348.P15675570859485126301

`eq[1, A000045(a(A343222(n)))]` with `a(0)=3`
-/

namespace A083348.P15675570859485126301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A343222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083348.P15675570859485126301

namespace A083348

/-- `eq[1, A000045(a(A343222(n)))]` -/
def P15675570859485126301.Spec : Prop :=
  ∀ n, (P15675570859485126301.a n : ℤ) = A083348 (n + 1)

end A083348

/-! ## A083348.P17040070557029931907

`eq[4, A000203(a(A343222(n)))]` with `a(0)=2`
-/

namespace A083348.P17040070557029931907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000203 (f2 (A343222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083348.P17040070557029931907

namespace A083348

/-- `eq[4, A000203(a(A343222(n)))]` -/
def P17040070557029931907.Spec : Prop :=
  ∀ n, (P17040070557029931907.a n : ℤ) = A083348 (n + 1)

end A083348

/-! ## A083348.P3504538029211562741

`eq[1, A001222(a(A343222(n)))]` with `a(0)=12`
-/

namespace A083348.P3504538029211562741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f2 =>
  A001222 (f2 (A343222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083348.P3504538029211562741

namespace A083348

/-- `eq[1, A001222(a(A343222(n)))]` -/
def P3504538029211562741.Spec : Prop :=
  ∀ n, (P3504538029211562741.a n : ℤ) = A083348 (n + 1)

end A083348

/-! ## A083348.P8537228141632976608

`filter[A387711(n+1), A369048(#)]`
-/

namespace A083348.P8537228141632976608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P8537228141632976608

namespace A083348

/-- `filter[A387711(n+1), A369048(#)]` -/
def P8537228141632976608.Spec : Prop :=
  ∀ n, P8537228141632976608.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P3747738252879745741

`filter[A389462(n+1), A369048(#)]`
-/

namespace A083348.P3747738252879745741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P3747738252879745741

namespace A083348

/-- `filter[A389462(n+1), A369048(#)]` -/
def P3747738252879745741.Spec : Prop :=
  ∀ n, P3747738252879745741.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P238088655946182238

`filter[A091375(n+1), A369048(#)]`
-/

namespace A083348.P238088655946182238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P238088655946182238

namespace A083348

/-- `filter[A091375(n+1), A369048(#)]` -/
def P238088655946182238.Spec : Prop :=
  ∀ n, P238088655946182238.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P9201312766622396454

`filter[A343597(n+1), A369048(#)]`
-/

namespace A083348.P9201312766622396454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P9201312766622396454

namespace A083348

/-- `filter[A343597(n+1), A369048(#)]` -/
def P9201312766622396454.Spec : Prop :=
  ∀ n, P9201312766622396454.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P8130743062833907069

`filter[A341610(n+1), A369048(#)]`
-/

namespace A083348.P8130743062833907069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P8130743062833907069

namespace A083348

/-- `filter[A341610(n+1), A369048(#)]` -/
def P8130743062833907069.Spec : Prop :=
  ∀ n, P8130743062833907069.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P14834636069687539154

`filter[A246282(n+1), A369048(#)]`
-/

namespace A083348.P14834636069687539154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P14834636069687539154

namespace A083348

/-- `filter[A246282(n+1), A369048(#)]` -/
def P14834636069687539154.Spec : Prop :=
  ∀ n, P14834636069687539154.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P8090256866150092649

`filter[A246352(n+1), A369048(#)]`
-/

namespace A083348.P8090256866150092649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P8090256866150092649

namespace A083348

/-- `filter[A246352(n+1), A369048(#)]` -/
def P8090256866150092649.Spec : Prop :=
  ∀ n, P8090256866150092649.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P18111643608787349420

`lt[n², A369052(n)²]`
-/

namespace A083348.P18111643608787349420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369052 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083348.P18111643608787349420

namespace A083348

/-- `lt[n², A369052(n)²]` -/
def P18111643608787349420.Spec : Prop :=
  ∀ n, (P18111643608787349420.a n : ℤ) = A083348 (n + 1)

end A083348

/-! ## A083348.P15161888059693277506

`filter[A377723(n+1), A369048(#)]`
-/

namespace A083348.P15161888059693277506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P15161888059693277506

namespace A083348

/-- `filter[A377723(n+1), A369048(#)]` -/
def P15161888059693277506.Spec : Prop :=
  ∀ n, P15161888059693277506.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P8736817085193626969

`filter[A033942(n+1), A369048(#)]`
-/

namespace A083348.P8736817085193626969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P8736817085193626969

namespace A083348

/-- `filter[A033942(n+1), A369048(#)]` -/
def P8736817085193626969.Spec : Prop :=
  ∀ n, P8736817085193626969.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P1522049809845835797

`filter[A111087(n+1), A369048(#)]`
-/

namespace A083348.P1522049809845835797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P1522049809845835797

namespace A083348

/-- `filter[A111087(n+1), A369048(#)]` -/
def P1522049809845835797.Spec : Prop :=
  ∀ n, P1522049809845835797.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P2471017714533605793

`filter[A289553(n+1), A369048(#)]`
-/

namespace A083348.P2471017714533605793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P2471017714533605793

namespace A083348

/-- `filter[A289553(n+1), A369048(#)]` -/
def P2471017714533605793.Spec : Prop :=
  ∀ n, P2471017714533605793.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P10259084071222251546

`filter[A060652(n+1), A369048(#)]`
-/

namespace A083348.P10259084071222251546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P10259084071222251546

namespace A083348

/-- `filter[A060652(n+1), A369048(#)]` -/
def P10259084071222251546.Spec : Prop :=
  ∀ n, P10259084071222251546.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P13484074298918760768

`filter[A047229(n+1), A369048(#)]`
-/

namespace A083348.P13484074298918760768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P13484074298918760768

namespace A083348

/-- `filter[A047229(n+1), A369048(#)]` -/
def P13484074298918760768.Spec : Prop :=
  ∀ n, P13484074298918760768.a n = A083348 (n + 1)

end A083348

/-! ## A083348.P15767826189723948451

`filter[A060679(n+1), A369048(#)]`
-/

namespace A083348.P15767826189723948451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A083348.P15767826189723948451

namespace A083348

/-- `filter[A060679(n+1), A369048(#)]` -/
def P15767826189723948451.Spec : Prop :=
  ∀ n, P15767826189723948451.a n = A083348 (n + 1)

end A083348

/-!
# A083351: Numbers n such that 5*7^n + 2 is prime.

The programs for A083351, there is no canonical definition to state claims against.
-/

/-! ## A083351.P1319330651628480292

`n*A046800(A118046(n))`
-/

namespace A083351.P1319330651628480292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A046800 (A118046 n).toNat

end

end A083351.P1319330651628480292

/-! ## A083351.P13152011939045398263

`n*A131320(A046826(n))`
-/

namespace A083351.P13152011939045398263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131320 (A046826 n).toNat

end

end A083351.P13152011939045398263

/-! ## A083351.P12608573063720158256

`n*A238516(A003149(n))`
-/

namespace A083351.P12608573063720158256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238516 (A003149 n).toNat

end

end A083351.P12608573063720158256

/-!
# A083353: Coefficients of power series A(x) consist entirely of squares, where A(x) = A083352(x)^2 + A083352(x) - 1.

The programs for A083353, there is no canonical definition to state claims against.
-/

/-! ## A083353.P9191074173836330443

`A083354(n)²`
-/

namespace A083353.P9191074173836330443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083354 n ^ 2

end

end A083353.P9191074173836330443

/-! ## A083353.P2816913511302740932

`A083354(n)^A036453(n+1)`
-/

namespace A083353.P2816913511302740932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083354 n : ℚ) ^ (A036453 (n + 1) : ℤ)

end

end A083353.P2816913511302740932

/-! ## A083353.P15004126360053778177

`A083354(n)^(2%A083352(n))`
-/

namespace A083353.P15004126360053778177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083354 n : ℚ) ^ (Int.tmod 2 (A083352 n) : ℤ)

end

end A083353.P15004126360053778177

/-! ## A083353.P6571039929388325698

`A083354(n)^A141310(2*n+1)`
-/

namespace A083353.P6571039929388325698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083354 n : ℚ) ^ (A141310 (2 * n + 1) : ℤ)

end

end A083353.P6571039929388325698

/-! ## A083353.P8195666034693362299

`A083354(n)^A000124(n/A028310(n))`
-/

namespace A083353.P8195666034693362299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083354 n : ℚ) ^ (A000124 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat : ℤ)

end

end A083353.P8195666034693362299

/-! ## A083353.P2145293027795281059

`A083354(n)*A083354(n%A083354(n))`
-/

namespace A083353.P2145293027795281059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083354 n * A083354 (Int.tmod (n : ℤ) (A083354 n)).toNat

end

end A083353.P2145293027795281059

/-! ## A083353.P2525449414621381742

`A083354(n)^A000124(A006519(2*n+1))`
-/

namespace A083353.P2525449414621381742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083354 n : ℚ) ^ (A000124 (A006519 (2 * n + 1)).toNat : ℤ)

end

end A083353.P2525449414621381742

/-! ## A083353.P11138917811703677382

`A083354(n)^(2*A007318(∑[n]))`
-/

namespace A083353.P11138917811703677382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083354 n : ℚ) ^ (2 * A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A083353.P11138917811703677382

/-! ## A083353.P13887890020718154916

`A083354(n)^(3-A007318(∑[n+1]))`
-/

namespace A083353.P13887890020718154916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083354 n : ℚ) ^ (3 - A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A083353.P13887890020718154916

/-!
# A083354: Square root of coefficients of power series: A083352(x)^2 + A083352(x) - 1; term-by-term square root of A083353.

The programs for A083354, there is no canonical definition to state claims against.
-/

/-! ## A083354.P10677918778252760416

`sqrt(A083353(n))`
-/

namespace A083354.P10677918778252760416
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A083353 n : ℝ)

end

end A083354.P10677918778252760416

/-! ## A083354.P6402704465233480813

`root(A083353(n), 2%A017378(n))`
-/

namespace A083354.P6402704465233480813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083353 n : ℝ) ^ (1 / (Int.tmod 2 (A017378 n) : ℝ))

end

end A083354.P6402704465233480813

/-! ## A083354.P18353290852296404753

`root(A083353(n), gcd(2, A004277(n)))`
-/

namespace A083354.P18353290852296404753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083353 n : ℝ) ^ (1 / (Int.gcd 2 (A004277 n) : ℝ))

end

end A083354.P18353290852296404753

/-! ## A083354.P13858173810627375642

`root(A083353(n), lcm(2, A000034(n)))`
-/

namespace A083354.P13858173810627375642
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083353 n : ℝ) ^ (1 / (Int.lcm 2 (A000034 n) : ℝ))

end

end A083354.P13858173810627375642

/-! ## A083354.P9875652932505674117

`root(A083353(n), A001316(A001316(n)))`
-/

namespace A083354.P9875652932505674117
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083353 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A083354.P9875652932505674117

/-! ## A083354.P723530376111078521

`root(A083353(n), A034444(A034444(n+1)))`
-/

namespace A083354.P723530376111078521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083353 n : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A083354.P723530376111078521

/-! ## A083354.P5734675479511562008

`A083353(n)^(A007318(∑[n])/2)`
-/

namespace A083354.P5734675479511562008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083353 n : ℝ) ^ ((A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 : ℝ)

end

end A083354.P5734675479511562008

/-!
# A083355: Number of preferential arrangements for the set partitions of the n-set [1,2,3,...,n].

The programs for A083355, there is no canonical definition to state claims against.
-/

/-! ## A083355.P3682272439321692259

`ceil(A300696(n)/2)`
-/

namespace A083355.P3682272439321692259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A300696 n : ℚ) / 2⌉

end

end A083355.P3682272439321692259

/-! ## A083355.P8761162540332920618

`A000670(n)/A000629(n)*A300696(n)`
-/

namespace A083355.P8761162540332920618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n : ℚ) / (A000629 n : ℚ) * (A300696 n : ℚ)

end

end A083355.P8761162540332920618

/-! ## A083355.P4189865230962573479

`A300696(n)/A020639(A300718(2*(n+2)))`
-/

namespace A083355.P4189865230962573479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300696 n : ℚ) / (A020639 (A300718 (2 * (n + 2))).toNat : ℚ)

end

end A083355.P4189865230962573479

/-! ## A083355.P2587541504034817994

`A300696(n)/(n+1-A002262(A027379(n)))`
-/

namespace A083355.P2587541504034817994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300696 n : ℚ) / ((n + 1 : ℤ) - A002262 (A027379 n).toNat : ℚ)

end

end A083355.P2587541504034817994

/-! ## A083355.P6869560207966881841

`A153278(A212342(n+1))`
-/

namespace A083355.P6869560207966881841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (A212342 (n + 1)).toNat

end

end A083355.P6869560207966881841

/-! ## A083355.P3763113888328695126

`A153278(A347553(n+3))`
-/

namespace A083355.P3763113888328695126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (A347553 (n + 3)).toNat

end

end A083355.P3763113888328695126

/-! ## A083355.P6967360316323591977

`A153278(A027379(n)-n)`
-/

namespace A083355.P6967360316323591977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (A027379 n - (n : ℤ)).toNat

end

end A083355.P6967360316323591977

/-! ## A083355.P8343584409376377668

`A153278(A179865(n+1)+n)`
-/

namespace A083355.P8343584409376377668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (A179865 (n + 1) + (n : ℤ)).toNat

end

end A083355.P8343584409376377668

/-! ## A083355.P10030600726444696915

`A153278(A000096(A000007(n)+n))`
-/

namespace A083355.P10030600726444696915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (A000096 (A000007 n + (n : ℤ)).toNat).toNat

end

end A083355.P10030600726444696915

/-! ## A083355.P12768670114161376451

`A153278(or(A000007(n), A000096(n)))`
-/

namespace A083355.P12768670114161376451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (Int.lor (A000007 n) (A000096 n)).toNat

end

end A083355.P12768670114161376451

/-!
# A083356: Total area of all incongruent integer-sided rectangles of area <= n.

The programs for A083356, the canonical program `A083356.P17116603988832538437` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083356 has offset 0).

The definition of A083356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083356.P17116603988832538437

`A060872(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A083356

/-- `A060872(n)+a(n-1)` -/
def P17116603988832538437.Spec : Prop :=
  ∀ n, P17116603988832538437.a n = A083356 n

theorem P17116603988832538437.correct : P17116603988832538437.Spec := by
  intro n
  simp only [A083356]

end A083356

/-! ## A083356.P13219722200246280199

`∑[n*A038548(C(2, n)+n)]`
-/

namespace A083356.P13219722200246280199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038548 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083356.P13219722200246280199

namespace A083356

/-- `∑[n*A038548(C(2, n)+n)]` -/
def P13219722200246280199.Spec : Prop :=
  ∀ n, P13219722200246280199.a n = A083356 n

end A083356

/-! ## A083356.P5749556840142622951

`∑[n*A110654(∏{e}[n, #+1])]`
-/

namespace A083356.P5749556840142622951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A110654 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083356.P5749556840142622951

namespace A083356

/-- `∑[n*A110654(∏{e}[n, #+1])]` -/
def P5749556840142622951.Spec : Prop :=
  ∀ n, P5749556840142622951.a n = A083356 n

end A083356

/-! ## A083356.P9019814064140484190

`∑[A060872(round(sqrt(n²+1)))]-1`
-/

namespace A083356.P9019814064140484190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060872 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A083356.P9019814064140484190

namespace A083356

/-- `∑[A060872(round(sqrt(n²+1)))]-1` -/
def P9019814064140484190.Spec : Prop :=
  ∀ n, P9019814064140484190.a n = A083356 n

end A083356

/-! ## A083356.P9573098203821161977

`∑[n*ceil(A000005(abs(1-n)+1)/2)]`
-/

namespace A083356.P9573098203821161977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(A000005 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083356.P9573098203821161977

namespace A083356

/-- `∑[n*ceil(A000005(abs(1-n)+1)/2)]` -/
def P9573098203821161977.Spec : Prop :=
  ∀ n, P9573098203821161977.a n = A083356 n

end A083356

/-! ## A083356.P15752064829769055100

`∑[(n+1)*ceil(∏{e}[n+1, #+1]/2)]-A060872(n+1)`
-/

namespace A083356.P15752064829769055100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060872 (n + 1)

end

end A083356.P15752064829769055100

namespace A083356

/-- `∑[(n+1)*ceil(∏{e}[n+1, #+1]/2)]-A060872(n+1)` -/
def P15752064829769055100.Spec : Prop :=
  ∀ n, P15752064829769055100.a n = A083356 n

end A083356

/-! ## A083356.P12150959692656143057

`∑[(n+1)*ceil(∏{e}[n+1, #+1]/2)]-(n+1)*A038548(n+1)`
-/

namespace A083356.P12150959692656143057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ) * A038548 (n + 1)

end

end A083356.P12150959692656143057

namespace A083356

/-- `∑[(n+1)*ceil(∏{e}[n+1, #+1]/2)]-(n+1)*A038548(n+1)` -/
def P12150959692656143057.Spec : Prop :=
  ∀ n, P12150959692656143057.a n = A083356 n

end A083356

/-! ## A083356.P9827551511301275648

`∑[(n+1)*ceil(∏{e}[n+1, #+1]/2)]-(n+1)*(A072670(n)+1)`
-/

namespace A083356.P9827551511301275648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ) * (A072670 n + 1)

end

end A083356.P9827551511301275648

namespace A083356

/-- `∑[(n+1)*ceil(∏{e}[n+1, #+1]/2)]-(n+1)*(A072670(n)+1)` -/
def P9827551511301275648.Spec : Prop :=
  ∀ n, P9827551511301275648.a n = A083356 n

end A083356

/-! ## A083356.P16970493337862509619

`∑[n*A008619(A032741(n))]`
-/

namespace A083356.P16970493337862509619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008619 (A032741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083356.P16970493337862509619

namespace A083356

/-- `∑[n*A008619(A032741(n))]` -/
def P16970493337862509619.Spec : Prop :=
  ∀ n, P16970493337862509619.a n = A083356 n

end A083356

/-! ## A083356.P17677062209990559527

`∑[n*A110656(A145154(n))]`
-/

namespace A083356.P17677062209990559527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A110656 (A145154 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083356.P17677062209990559527

namespace A083356

/-- `∑[n*A110656(A145154(n))]` -/
def P17677062209990559527.Spec : Prop :=
  ∀ n, P17677062209990559527.a n = A083356 n

end A083356

/-! ## A083356.P17902237570899874728

`∑[n*A211272(2*n+1)]`
-/

namespace A083356.P17902237570899874728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A211272 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083356.P17902237570899874728

namespace A083356

/-- `∑[n*A211272(2*n+1)]` -/
def P17902237570899874728.Spec : Prop :=
  ∀ n, P17902237570899874728.a n = A083356 n

end A083356

/-! ## A083356.P11849513091365161187

`∑[n*A220400(4*n)]`
-/

namespace A083356.P11849513091365161187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A220400 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083356.P11849513091365161187

namespace A083356

/-- `∑[n*A220400(4*n)]` -/
def P11849513091365161187.Spec : Prop :=
  ∀ n, P11849513091365161187.a n = A083356 n

end A083356

/-!
# A083357: Numbers n such that A083356(n) (the total area of all incongruent integer-sided rectangles of area <= n) is a square.

The programs for A083357, there is no canonical definition to state claims against.
-/

/-! ## A083357.P4766233820350769552

`and(A123720(2*n+1), A266734(A282957(n+1)))`
-/

namespace A083357.P4766233820350769552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123720 (2 * n + 1)) (A266734 (A282957 (n + 1)).toNat)

end

end A083357.P4766233820350769552

/-!
# A083358: Square root of n-th perfect square in A083356.

The programs for A083358, there is no canonical definition to state claims against.
-/

/-! ## A083358.P211205526873528646

`sqrt(A083356(A083357(n+1)))`
-/

namespace A083358.P211205526873528646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A083356 (A083357 (n + 1)).toNat : ℝ)

end

end A083358.P211205526873528646

/-!
# A083359: Visible factor numbers (VFNs): composite numbers k with the property that every prime factor of k can be found in the decimal expansion of k and every digit of k can be covered by a prime factor.

The programs for A083359, there is no canonical definition to state claims against.
-/

/-! ## A083359.P12399484062368762360

`∩[A192180(n+1), A324257(n+1)]`
-/

namespace A083359.P12399484062368762360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083359.P12399484062368762360

/-! ## A083359.P15413126371352776108

`A324257(A063059(n)+A029731(n+1))`
-/

namespace A083359.P15413126371352776108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324257 (A063059 n + A029731 (n + 1)).toNat

end

end A083359.P15413126371352776108

/-!
# A083360: Subsequence of sequence A083359 in which factors do not overlap in the number.

The programs for A083360, there is no canonical definition to state claims against.
-/

/-! ## A083360.P3735392760636019245

`∩[A083359(n+1), A324258(n+1)]`
-/

namespace A083360.P3735392760636019245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083360.P3735392760636019245

/-! ## A083360.P3200372185857042353

`A324258(∑[A324284(3*n+1)])`
-/

namespace A083360.P3200372185857042353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324284 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083360.P3200372185857042353

/-! ## A083360.P2532291261381964376

`A324258(A076437(n+1)^A331562(n))`
-/

namespace A083360.P2532291261381964376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324258 (SequenceMachineLib.roundAway ((A076437 (n + 1) : ℚ) ^ (A331562 n : ℤ))).toNat

end

end A083360.P2532291261381964376

/-! ## A083360.P13951873311425927116

`A324258(C(A076437(n+1), A331562(n)))`
-/

namespace A083360.P13951873311425927116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324258 (Nat.choose (A076437 (n + 1)).toNat (A331562 n).toNat)

end

end A083360.P13951873311425927116

/-!
# A083361: Subsequence of sequence A083359 in which every prime factor can be found in the number at least as often as it is factor of the number.

The programs for A083361, there is no canonical definition to state claims against.
-/

/-! ## A083361.P14104884244858159188

`A324259(comp[A361968(n+1)-1])`
-/

namespace A083361.P14104884244858159188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361968 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324259 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A083361.P14104884244858159188

/-! ## A083361.P17329987135772973403

`A324259(A344296(n+1)%A071314(n))`
-/

namespace A083361.P17329987135772973403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324259 (Int.tmod (A344296 (n + 1)) (A071314 n)).toNat

end

end A083361.P17329987135772973403

/-! ## A083361.P12889260552919002664

`A324259(lcm(A099573(n), A344296(n+1)))`
-/

namespace A083361.P12889260552919002664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324259 (Int.lcm (A099573 n) (A344296 (n + 1)))

end

end A083361.P12889260552919002664

/-!
# A083363: Diagonal of table A083362.

The programs for A083363, the canonical program `A083363.P6933074432920551984` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083363 has offset 0).

The definition of A083363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083363.P6933074432920551984

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=11, a(3)=30, a(4)=38, a(5)=69`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083363

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6933074432920551984.Spec : Prop :=
  ∀ n, P6933074432920551984.a n = A083363 n

theorem P6933074432920551984.correct : P6933074432920551984.Spec := by
  intro n
  simp only [A083363]

end A083363

/-! ## A083363.P6426829375607379984

`record[abs(1-4*n)*ceil(abs((1-n)/2))]`
-/

namespace A083363.P6426829375607379984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)| * ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083363.P6426829375607379984

namespace A083363

/-- `record[abs(1-4*n)*ceil(abs((1-n)/2))]` -/
def P6426829375607379984.Spec : Prop :=
  ∀ n, P6426829375607379984.a n = A083363 n

end A083363

/-! ## A083363.P16199152019683687196

`record[xor(3, n+2)]*A065033(n)`
-/

namespace A083363.P16199152019683687196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A065033 n

end

end A083363.P16199152019683687196

namespace A083363

/-- `record[xor(3, n+2)]*A065033(n)` -/
def P16199152019683687196.Spec : Prop :=
  ∀ n, P16199152019683687196.a n = A083363 n

end A083363

/-! ## A083363.P9571231350551151383

`A065033(n)+A014494(n)`
-/

namespace A083363.P9571231350551151383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A014494 n

end

end A083363.P9571231350551151383

namespace A083363

/-- `A065033(n)+A014494(n)` -/
def P9571231350551151383.Spec : Prop :=
  ∀ n, P9571231350551151383.a n = A083363 n

end A083363

/-! ## A083363.P5009646981787512780

`A266221(n)+A062717(n+1)`
-/

namespace A083363.P5009646981787512780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266221 n + A062717 (n + 1)

end

end A083363.P5009646981787512780

namespace A083363

/-- `A266221(n)+A062717(n+1)` -/
def P5009646981787512780.Spec : Prop :=
  ∀ n, P5009646981787512780.a n = A083363 n

end A083363

/-! ## A083363.P3776235314311681927

`A234717(n+1)-A266439(n)`
-/

namespace A083363.P3776235314311681927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234717 (n + 1) - A266439 n

end

end A083363.P3776235314311681927

namespace A083363

/-- `A234717(n+1)-A266439(n)` -/
def P3776235314311681927.Spec : Prop :=
  ∀ n, P3776235314311681927.a n = A083363 n

end A083363

/-! ## A083363.P7602617575716552190

`A080476(n+1)+A036498(n+1)`
-/

namespace A083363.P7602617575716552190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) + A036498 (n + 1)

end

end A083363.P7602617575716552190

namespace A083363

/-- `A080476(n+1)+A036498(n+1)` -/
def P7602617575716552190.Spec : Prop :=
  ∀ n, P7602617575716552190.a n = A083363 n

end A083363

/-! ## A083363.P248378123377162273

`A193867(n+1)+A140106(n+1)`
-/

namespace A083363.P248378123377162273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (n + 1) + A140106 (n + 1)

end

end A083363.P248378123377162273

namespace A083363

/-- `A193867(n+1)+A140106(n+1)` -/
def P248378123377162273.Spec : Prop :=
  ∀ n, P248378123377162273.a n = A083363 n

end A083363

/-! ## A083363.P3623587426666263375

`A000007(n)+∑[n%2]*A004767(n)`
-/

namespace A083363.P3623587426666263375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004767 n

end

end A083363.P3623587426666263375

namespace A083363

/-- `A000007(n)+∑[n%2]*A004767(n)` -/
def P3623587426666263375.Spec : Prop :=
  ∀ n, P3623587426666263375.a n = A083363 n

end A083363

/-! ## A083363.P2536747342065325498

`A014494(n)+A008619((2*n)%(n+1))`
-/

namespace A083363.P2536747342065325498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n + A008619 (2 * n % (n + 1))

end

end A083363.P2536747342065325498

namespace A083363

/-- `A014494(n)+A008619((2*n)%(n+1))` -/
def P2536747342065325498.Spec : Prop :=
  ∀ n, P2536747342065325498.a n = A083363 n

end A083363

/-! ## A083363.P6083725955767779635

`A065033(n)+A000217(char[2*n+1]+2*n)`
-/

namespace A083363.P6083725955767779635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A000217 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n)

end

end A083363.P6083725955767779635

namespace A083363

/-- `A065033(n)+A000217(char[2*n+1]+2*n)` -/
def P6083725955767779635.Spec : Prop :=
  ∀ n, P6083725955767779635.a n = A083363 n

end A083363

/-! ## A083363.P10183049113501408512

`(A267872(n+1)+2*n)*A065033(n)`
-/

namespace A083363.P10183049113501408512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267872 (n + 1) + (2 * n : ℤ)) * A065033 n

end

end A083363.P10183049113501408512

namespace A083363

/-- `(A267872(n+1)+2*n)*A065033(n)` -/
def P10183049113501408512.Spec : Prop :=
  ∀ n, P10183049113501408512.a n = A083363 n

end A083363

/-! ## A083363.P3904941075002784406

`A065033(n)*A267872(2*n+1)`
-/

namespace A083363.P3904941075002784406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A267872 (2 * n + 1)

end

end A083363.P3904941075002784406

namespace A083363

/-- `A065033(n)*A267872(2*n+1)` -/
def P3904941075002784406.Spec : Prop :=
  ∀ n, P3904941075002784406.a n = A083363 n

end A083363

/-! ## A083363.P4595642245265394281

`A004273(A103517(n))*A124072(A103517(n))`
-/

namespace A083363.P4595642245265394281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A103517 n).toNat * A124072 (A103517 n).toNat

end

end A083363.P4595642245265394281

namespace A083363

/-- `A004273(A103517(n))*A124072(A103517(n))` -/
def P4595642245265394281.Spec : Prop :=
  ∀ n, P4595642245265394281.a n = A083363 n

end A083363

/-!
# A083364: Antidiagonal sums of table A083362.

The programs for A083364, the canonical program `A083364.P1998433297147206427` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083364 has offset 0).

The definition of A083364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083364.P1998433297147206427

`∑[A181900(n)+∑[gcd(2, n+1)]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083364

/-- `∑[A181900(n)+∑[gcd(2, n+1)]]` -/
def P1998433297147206427.Spec : Prop :=
  ∀ n, P1998433297147206427.a n = A083364 n

theorem P1998433297147206427.correct : P1998433297147206427.Spec := by
  intro n
  simp only [A083364]

end A083364

/-! ## A083364.P9174402380971098765

`A367965(n)+A006000(n)`
-/

namespace A083364.P9174402380971098765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367965 n + A006000 n

end

end A083364.P9174402380971098765

namespace A083364

/-- `A367965(n)+A006000(n)` -/
def P9174402380971098765.Spec : Prop :=
  ∀ n, P9174402380971098765.a n = A083364 n

end A083364

/-! ## A083364.P13520574228064413918

`A083392(n)+A074149(n+1)`
-/

namespace A083364.P13520574228064413918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n + A074149 (n + 1)

end

end A083364.P13520574228064413918

namespace A083364

/-- `A083392(n)+A074149(n+1)` -/
def P13520574228064413918.Spec : Prop :=
  ∀ n, P13520574228064413918.a n = A083364 n

end A083364

/-! ## A083364.P6227307595211674836

`A130656(n+1)-A131805(n)`
-/

namespace A083364.P6227307595211674836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130656 (n + 1) - A131805 n

end

end A083364.P6227307595211674836

namespace A083364

/-- `A130656(n+1)-A131805(n)` -/
def P6227307595211674836.Spec : Prop :=
  ∀ n, P6227307595211674836.a n = A083364 n

end A083364

/-! ## A083364.P10486974715060931175

`∑[A014601(n)]*A008619(n)+n+1`
-/

namespace A083364.P10486974715060931175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 n + (n + 1 : ℤ)

end

end A083364.P10486974715060931175

namespace A083364

/-- `∑[A014601(n)]*A008619(n)+n+1` -/
def P10486974715060931175.Spec : Prop :=
  ∀ n, P10486974715060931175.a n = A083364 n

end A083364

/-! ## A083364.P14272661235408478258

`A080512(n+1)+∑[(n+1)*A022998(n)]`
-/

namespace A083364.P14272661235408478258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083364.P14272661235408478258

namespace A083364

/-- `A080512(n+1)+∑[(n+1)*A022998(n)]` -/
def P14272661235408478258.Spec : Prop :=
  ∀ n, P14272661235408478258.a n = A083364 n

end A083364

/-! ## A083364.P15917753276996372073

`Δ[A105636(n)]-lcm(n+1, ∑[n])`
-/

namespace A083364.P15917753276996372073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A083364.P15917753276996372073

namespace A083364

/-- `Δ[A105636(n)]-lcm(n+1, ∑[n])` -/
def P15917753276996372073.Spec : Prop :=
  ∀ n, P15917753276996372073.a n = A083364 n

end A083364

/-! ## A083364.P10910476014926477224

`∑[A181900(n)+A004526(3*(n+1))]`
-/

namespace A083364.P10910476014926477224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 n + A004526 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083364.P10910476014926477224

namespace A083364

/-- `∑[A181900(n)+A004526(3*(n+1))]` -/
def P10910476014926477224.Spec : Prop :=
  ∀ n, P10910476014926477224.a n = A083364 n

end A083364

/-!
# A083365: Expansion of psi(x) / phi(x) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A083365, there is no canonical definition to state claims against.
-/

/-! ## A083365.P1009475761218236777

`A001935(n)*A033999(n)`
-/

namespace A083365.P1009475761218236777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n * A033999 n

end

end A083365.P1009475761218236777

/-! ## A083365.P14599702762452891664

`A001935(n)*A062157(n+1)`
-/

namespace A083365.P14599702762452891664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n * A062157 (n + 1)

end

end A083365.P14599702762452891664

/-! ## A083365.P6454893847145578260

`A001935(n)/A029839(n)*A082304(n)`
-/

namespace A083365.P6454893847145578260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n : ℚ) / (A029839 n : ℚ) * (A082304 n : ℚ)

end

end A083365.P6454893847145578260

/-! ## A083365.P9089518786513886132

`A001935(n)/A070048(n)*A116498(n)`
-/

namespace A083365.P9089518786513886132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n : ℚ) / (A070048 n : ℚ) * (A116498 n : ℚ)

end

end A083365.P9089518786513886132

/-! ## A083365.P14013034677760044447

`A008457(n+1)/A138503(n+1)*A001935(n)`
-/

namespace A083365.P14013034677760044447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008457 (n + 1) : ℚ) / (A138503 (n + 1) : ℚ) * (A001935 n : ℚ)

end

end A083365.P14013034677760044447

/-! ## A083365.P15956497735801842019

`A001935(n)*A056594(2*n)`
-/

namespace A083365.P15956497735801842019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n * A056594 (2 * n)

end

end A083365.P15956497735801842019

/-! ## A083365.P3039135584379348041

`A001935(n)*A057077(2*n)`
-/

namespace A083365.P3039135584379348041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n * A057077 (2 * n)

end

end A083365.P3039135584379348041

/-! ## A083365.P12927769567636061032

`A283023(2*n+1)/2-A283023(2*n+1)`
-/

namespace A083365.P12927769567636061032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283023 (2 * n + 1) : ℚ) / 2 - (A283023 (2 * n + 1) : ℚ)

end

end A083365.P12927769567636061032

/-! ## A083365.P17156086415088749899

`A001934(n)/A004403(n)*A001935(n)`
-/

namespace A083365.P17156086415088749899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004403 n : ℚ) * (A001935 n : ℚ)

end

end A083365.P17156086415088749899

/-! ## A083365.P11940280539258761727

`A092869(4*n)`
-/

namespace A083365.P11940280539258761727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092869 (4 * n)

end

end A083365.P11940280539258761727

/-! ## A083365.P6426266217681793380

`A111374(4*n+1)`
-/

namespace A083365.P6426266217681793380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111374 (4 * n + 1)

end

end A083365.P6426266217681793380

/-! ## A083365.P639484475036362605

`A001935(n)/A004404(n)*A319552(n)`
-/

namespace A083365.P639484475036362605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n : ℚ) / (A004404 n : ℚ) * (A319552 n : ℚ)

end

end A083365.P639484475036362605

/-! ## A083365.P4692052250575192009

`A005798(n+1)/A092877(n+1)*A001935(n)`
-/

namespace A083365.P4692052250575192009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005798 (n + 1) : ℚ) / (A092877 (n + 1) : ℚ) * (A001935 n : ℚ)

end

end A083365.P4692052250575192009

/-! ## A083365.P2548931875382199492

`A001935(n)*A001936(n)/A079006(n)`
-/

namespace A083365.P2548931875382199492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n * A001936 n : ℚ) / (A079006 n : ℚ)

end

end A083365.P2548931875382199492

/-!
# A083368: a(n) is the position of the highest one in A003754(n).

The programs for A083368, the canonical program `A083368.P5965228121584232260` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083368 has offset 1).

The definition of A083368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083368.P893427991920674696

`Δ[a(floor(n/ϕ))+n]` with `a(0)=0`
-/

namespace A083368.P893427991920674696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083368.P893427991920674696

namespace A083368

/-- `Δ[a(floor(n/ϕ))+n]` -/
def P893427991920674696.Spec : Prop :=
  ∀ n, P893427991920674696.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P5965228121584232260

`A356749(n)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A083368

/-- `A356749(n)+1` -/
def P5965228121584232260.Spec : Prop :=
  ∀ n, P5965228121584232260.a n = A083368 (n + 1)

theorem P5965228121584232260.correct : P5965228121584232260.Spec := by
  intro n
  simp only [A083368, Nat.add_sub_cancel]

end A083368

/-! ## A083368.P8199266041935790038

`val(A052499(n), 2)+1`
-/

namespace A083368.P8199266041935790038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052499 n).toNat 2 + 1

end

end A083368.P8199266041935790038

namespace A083368

/-- `val(A052499(n), 2)+1` -/
def P8199266041935790038.Spec : Prop :=
  ∀ n, (P8199266041935790038.a n : ℤ) = A083368 (n + 1)

end A083368

/-! ## A083368.P4920042616200512310

`val(A232559(n+1), 2)+1`
-/

namespace A083368.P4920042616200512310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A232559 (n + 1)).toNat 2 + 1

end

end A083368.P4920042616200512310

namespace A083368

/-- `val(A232559(n+1), 2)+1` -/
def P4920042616200512310.Spec : Prop :=
  ∀ n, (P4920042616200512310.a n : ℤ) = A083368 (n + 1)

end A083368

/-! ## A083368.P3225990259789794470

`val(A003754(n+1)+1, 2)+1`
-/

namespace A083368.P3225990259789794470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003754 (n + 1) + 1).toNat 2 + 1

end

end A083368.P3225990259789794470

namespace A083368

/-- `val(A003754(n+1)+1, 2)+1` -/
def P3225990259789794470.Spec : Prop :=
  ∀ n, (P3225990259789794470.a n : ℤ) = A083368 (n + 1)

end A083368

/-! ## A083368.P10012320444683782612

`val(A336231(n+2), 2)+1`
-/

namespace A083368.P10012320444683782612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336231 (n + 2)).toNat 2 + 1

end

end A083368.P10012320444683782612

namespace A083368

/-- `val(A336231(n+2), 2)+1` -/
def P10012320444683782612.Spec : Prop :=
  ∀ n, (P10012320444683782612.a n : ℤ) = A083368 (n + 1)

end A083368

/-! ## A083368.P14971267141765812331

`A065120(A385818(n+1))`
-/

namespace A083368.P14971267141765812331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A385818 (n + 1)).toNat

end

end A083368.P14971267141765812331

namespace A083368

/-- `A065120(A385818(n+1))` -/
def P14971267141765812331.Spec : Prop :=
  ∀ n, P14971267141765812331.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P935371940926132137

`A001511(A232559(n+1))`
-/

namespace A083368.P935371940926132137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A232559 (n + 1)).toNat

end

end A083368.P935371940926132137

namespace A083368

/-- `A001511(A232559(n+1))` -/
def P935371940926132137.Spec : Prop :=
  ∀ n, P935371940926132137.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P17194683403161836802

`A001511(A336231(n+2))`
-/

namespace A083368.P17194683403161836802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A336231 (n + 2)).toNat

end

end A083368.P17194683403161836802

namespace A083368

/-- `A001511(A336231(n+2))` -/
def P17194683403161836802.Spec : Prop :=
  ∀ n, P17194683403161836802.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P5815527566508229686

`A035612(A280514(n+1))`
-/

namespace A083368.P5815527566508229686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A280514 (n + 1)).toNat

end

end A083368.P5815527566508229686

namespace A083368

/-- `A035612(A280514(n+1))` -/
def P5815527566508229686.Spec : Prop :=
  ∀ n, P5815527566508229686.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P15962310598963838807

`A001511(A052499(n))`
-/

namespace A083368.P15962310598963838807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A052499 n).toNat

end

end A083368.P15962310598963838807

namespace A083368

/-- `A001511(A052499(n))` -/
def P15962310598963838807.Spec : Prop :=
  ∀ n, P15962310598963838807.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P7618830970188371976

`A001511(A003754(n+1)+1)`
-/

namespace A083368.P7618830970188371976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003754 (n + 1) + 1).toNat

end

end A083368.P7618830970188371976

namespace A083368

/-- `A001511(A003754(n+1)+1)` -/
def P7618830970188371976.Spec : Prop :=
  ∀ n, P7618830970188371976.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P9656346831515414535

`A001511(lt[A087117(n), 2]+1)`
-/

namespace A083368.P9656346831515414535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A083368.P9656346831515414535

namespace A083368

/-- `A001511(lt[A087117(n), 2]+1)` -/
def P9656346831515414535.Spec : Prop :=
  ∀ n, P9656346831515414535.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P4995586022529004426

`A091090(A358654(n+1))`
-/

namespace A083368.P4995586022529004426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A358654 (n + 1)).toNat

end

end A083368.P4995586022529004426

namespace A083368

/-- `A091090(A358654(n+1))` -/
def P4995586022529004426.Spec : Prop :=
  ∀ n, P4995586022529004426.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P483272281532842433

`A091090(A060142(n+1))`
-/

namespace A083368.P483272281532842433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A060142 (n + 1)).toNat

end

end A083368.P483272281532842433

namespace A083368

/-- `A091090(A060142(n+1))` -/
def P483272281532842433.Spec : Prop :=
  ∀ n, P483272281532842433.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P499480142620693867

`A050603(A247648(n+1))`
-/

namespace A083368.P499480142620693867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A247648 (n + 1)).toNat

end

end A083368.P499480142620693867

namespace A083368

/-- `A050603(A247648(n+1))` -/
def P499480142620693867.Spec : Prop :=
  ∀ n, P499480142620693867.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P8889755237231975108

`A091090(A280873(n+1))`
-/

namespace A083368.P8889755237231975108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A280873 (n + 1)).toNat

end

end A083368.P8889755237231975108

namespace A083368

/-- `A091090(A280873(n+1))` -/
def P8889755237231975108.Spec : Prop :=
  ∀ n, P8889755237231975108.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P5076528470859819985

`A007814(2*A052499(n))`
-/

namespace A083368.P5076528470859819985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A052499 n).toNat

end

end A083368.P5076528470859819985

namespace A083368

/-- `A007814(2*A052499(n))` -/
def P5076528470859819985.Spec : Prop :=
  ∀ n, P5076528470859819985.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P11917721409127396491

`A087117(2*A052499(n))`
-/

namespace A083368.P11917721409127396491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (2 * A052499 n).toNat

end

end A083368.P11917721409127396491

namespace A083368

/-- `A087117(2*A052499(n))` -/
def P11917721409127396491.Spec : Prop :=
  ∀ n, P11917721409127396491.a n = A083368 (n + 1)

end A083368

/-! ## A083368.P3326579282947881180

`A007814(A247648(n+1)+1)`
-/

namespace A083368.P3326579282947881180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A247648 (n + 1) + 1).toNat

end

end A083368.P3326579282947881180

namespace A083368

/-- `A007814(A247648(n+1)+1)` -/
def P3326579282947881180.Spec : Prop :=
  ∀ n, P3326579282947881180.a n = A083368 (n + 1)

end A083368

/-!
# A083370: Primes satisfying f(2p)=p when f(1)=5 (see comment).

The programs for A083370, the canonical program `A083370.P4305498635279400889` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083370 has offset 1).

The definition of A083370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083370.P13218277222469985040

`A130038(n+1)-7`
-/

namespace A083370.P13218277222469985040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130038 (n + 1) - 7

end

end A083370.P13218277222469985040

namespace A083370

/-- `A130038(n+1)-7` -/
def P13218277222469985040.Spec : Prop :=
  ∀ n, P13218277222469985040.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P13606332687804756190

`∪[A031924(n+1), A083371(n+1)]`
-/

namespace A083370.P13606332687804756190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083370.P13606332687804756190

namespace A083370

/-- `∪[A031924(n+1), A083371(n+1)]` -/
def P13606332687804756190.Spec : Prop :=
  ∀ n, (P13606332687804756190.a n : ℤ) = A083370 (n + 1)

end A083370

/-! ## A083370.P5661710970814917288

`∪[A083371(n+1), A258578(n+1)]`
-/

namespace A083370.P5661710970814917288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083370.P5661710970814917288

namespace A083370

/-- `∪[A083371(n+1), A258578(n+1)]` -/
def P5661710970814917288.Spec : Prop :=
  ∀ n, (P5661710970814917288.a n : ℤ) = A083370 (n + 1)

end A083370

/-! ## A083370.P4305498635279400889

`A049591(lt[1, A047846(n+1)])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A083370

/-- `A049591(lt[1, A047846(n+1)])` -/
def P4305498635279400889.Spec : Prop :=
  ∀ n, P4305498635279400889.a n = A083370 (n + 1)

theorem P4305498635279400889.correct : P4305498635279400889.Spec := by
  intro n
  simp only [A083370, Nat.add_sub_cancel]

end A083370

/-! ## A083370.P12281418067893525161

`∩[A049591(n+1), A067775(n+1)]`
-/

namespace A083370.P12281418067893525161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083370.P12281418067893525161

namespace A083370

/-- `∩[A049591(n+1), A067775(n+1)]` -/
def P12281418067893525161.Spec : Prop :=
  ∀ n, (P12281418067893525161.a n : ℤ) = A083370 (n + 1)

end A083370

/-! ## A083370.P13419648163489665237

`A045344(lt[4, A001223(n+1)])`
-/

namespace A083370.P13419648163489665237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P13419648163489665237

namespace A083370

/-- `A045344(lt[4, A001223(n+1)])` -/
def P13419648163489665237.Spec : Prop :=
  ∀ n, P13419648163489665237.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P10223486035090476819

`A045319(lt[2, A001223(n+1)-2])`
-/

namespace A083370.P10223486035090476819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P10223486035090476819

namespace A083370

/-- `A045319(lt[2, A001223(n+1)-2])` -/
def P10223486035090476819.Spec : Prop :=
  ∀ n, P10223486035090476819.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P8469909792380522483

`A065091(lt[2, A001223(n+1)-2])`
-/

namespace A083370.P8469909792380522483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P8469909792380522483

namespace A083370

/-- `A065091(lt[2, A001223(n+1)-2])` -/
def P8469909792380522483.Spec : Prop :=
  ∀ n, P8469909792380522483.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P5190539293098081294

`A045319(lt[2, A001223(n+1)/2])`
-/

namespace A083370.P5190539293098081294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A083370.P5190539293098081294

namespace A083370

/-- `A045319(lt[2, A001223(n+1)/2])` -/
def P5190539293098081294.Spec : Prop :=
  ∀ n, P5190539293098081294.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P412256015552272541

`A065091(lt[2, A001223(n+1)/2])`
-/

namespace A083370.P412256015552272541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A083370.P412256015552272541

namespace A083370

/-- `A065091(lt[2, A001223(n+1)/2])` -/
def P412256015552272541.Spec : Prop :=
  ∀ n, P412256015552272541.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P2736161593102666807

`A045319(lt[1, A100820(n+1)])`
-/

namespace A083370.P2736161593102666807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P2736161593102666807

namespace A083370

/-- `A045319(lt[1, A100820(n+1)])` -/
def P2736161593102666807.Spec : Prop :=
  ∀ n, P2736161593102666807.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P9700379953805581004

`A065091(lt[1, A100820(n+1)])`
-/

namespace A083370.P9700379953805581004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P9700379953805581004

namespace A083370

/-- `A065091(lt[1, A100820(n+1)])` -/
def P9700379953805581004.Spec : Prop :=
  ∀ n, P9700379953805581004.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P392215745662075398

`A045319(lt[1, A046933(n+1)-2])`
-/

namespace A083370.P392215745662075398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P392215745662075398

namespace A083370

/-- `A045319(lt[1, A046933(n+1)-2])` -/
def P392215745662075398.Spec : Prop :=
  ∀ n, P392215745662075398.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P1754127818226425165

`A065091(lt[1, A046933(n+1)-2])`
-/

namespace A083370.P1754127818226425165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P1754127818226425165

namespace A083370

/-- `A065091(lt[1, A046933(n+1)-2])` -/
def P1754127818226425165.Spec : Prop :=
  ∀ n, P1754127818226425165.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P2342845302824330695

`A000040(lt[4, A054541(n+1)])`
-/

namespace A083370.P2342845302824330695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P2342845302824330695

namespace A083370

/-- `A000040(lt[4, A054541(n+1)])` -/
def P2342845302824330695.Spec : Prop :=
  ∀ n, P2342845302824330695.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P12152970207753989645

`A000040(lt[5, A076368(n+1)])`
-/

namespace A083370.P12152970207753989645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P12152970207753989645

namespace A083370

/-- `A000040(lt[5, A076368(n+1)])` -/
def P12152970207753989645.Spec : Prop :=
  ∀ n, P12152970207753989645.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P14879724728832713505

`A000040(lt[5, A230847(n+1)])`
-/

namespace A083370.P14879724728832713505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P14879724728832713505

namespace A083370

/-- `A000040(lt[5, A230847(n+1)])` -/
def P14879724728832713505.Spec : Prop :=
  ∀ n, P14879724728832713505.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P12349855961145315862

`A000040(lt[2, A125266(n+1)-2])`
-/

namespace A083370.P12349855961145315862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P12349855961145315862

namespace A083370

/-- `A000040(lt[2, A125266(n+1)-2])` -/
def P12349855961145315862.Spec : Prop :=
  ∀ n, P12349855961145315862.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P3292133690099673468

`A000040(lt[2, A125266(n+1)/2])`
-/

namespace A083370.P3292133690099673468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125266 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A083370.P3292133690099673468

namespace A083370

/-- `A000040(lt[2, A125266(n+1)/2])` -/
def P3292133690099673468.Spec : Prop :=
  ∀ n, P3292133690099673468.a n = A083370 (n + 1)

end A083370

/-! ## A083370.P9914046783610028672

`∩[A067775(n+1), A227030(n+1)]`
-/

namespace A083370.P9914046783610028672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083370.P9914046783610028672

namespace A083370

/-- `∩[A067775(n+1), A227030(n+1)]` -/
def P9914046783610028672.Spec : Prop :=
  ∀ n, (P9914046783610028672.a n : ℤ) = A083370 (n + 1)

end A083370

/-!
# A083371: Primes p such that q-p >= 8, where q is the next prime after p.

The programs for A083371, the canonical program `A083371.P2383773422987209655` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083371 has offset 1).

The definition of A083371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083371.P18092522924640833587

`∩[A083370(n+1), A140555(n+1)]`
-/

namespace A083371.P18092522924640833587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083371.P18092522924640833587

namespace A083371

/-- `∩[A083370(n+1), A140555(n+1)]` -/
def P18092522924640833587.Spec : Prop :=
  ∀ n, (P18092522924640833587.a n : ℤ) = A083371 (n + 1)

end A083371

/-! ## A083371.P2383773422987209655

`A049591(lt[2, A047846(n+1)])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A083371

/-- `A049591(lt[2, A047846(n+1)])` -/
def P2383773422987209655.Spec : Prop :=
  ∀ n, P2383773422987209655.a n = A083371 (n + 1)

theorem P2383773422987209655.correct : P2383773422987209655.Spec := by
  intro n
  simp only [A083371, Nat.add_sub_cancel]

end A083371

/-! ## A083371.P6890689407961495301

`A065091(lt[6, A001223(n+1)])`
-/

namespace A083371.P6890689407961495301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083371.P6890689407961495301

namespace A083371

/-- `A065091(lt[6, A001223(n+1)])` -/
def P6890689407961495301.Spec : Prop :=
  ∀ n, P6890689407961495301.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P13176415994500968922

`A045319(lt[2, A100820(n+1)])`
-/

namespace A083371.P13176415994500968922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083371.P13176415994500968922

namespace A083371

/-- `A045319(lt[2, A100820(n+1)])` -/
def P13176415994500968922.Spec : Prop :=
  ∀ n, P13176415994500968922.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P11036531012926227917

`A065091(lt[2, A100820(n+1)])`
-/

namespace A083371.P11036531012926227917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083371.P11036531012926227917

namespace A083371

/-- `A065091(lt[2, A100820(n+1)])` -/
def P11036531012926227917.Spec : Prop :=
  ∀ n, P11036531012926227917.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P16115129485416723997

`A065091(lt[5, A046933(n+1)])`
-/

namespace A083371.P16115129485416723997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083371.P16115129485416723997

namespace A083371

/-- `A065091(lt[5, A046933(n+1)])` -/
def P16115129485416723997.Spec : Prop :=
  ∀ n, P16115129485416723997.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P1474289761430129524

`A000040(eq[6, 6%A001223(n+1)]+1)`
-/

namespace A083371.P1474289761430129524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (A001223 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A083371.P1474289761430129524

namespace A083371

/-- `A000040(eq[6, 6%A001223(n+1)]+1)` -/
def P1474289761430129524.Spec : Prop :=
  ∀ n, P1474289761430129524.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P1687415192729707026

`A000040(lt[6, A054541(n+1)])`
-/

namespace A083371.P1687415192729707026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083371.P1687415192729707026

namespace A083371

/-- `A000040(lt[6, A054541(n+1)])` -/
def P1687415192729707026.Spec : Prop :=
  ∀ n, P1687415192729707026.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P46953855594062235

`A000040(lt[7, A076368(n+1)])`
-/

namespace A083371.P46953855594062235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083371.P46953855594062235

namespace A083371

/-- `A000040(lt[7, A076368(n+1)])` -/
def P46953855594062235.Spec : Prop :=
  ∀ n, P46953855594062235.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P6482301118156115375

`A000040(lt[7, A230847(n+1)])`
-/

namespace A083371.P6482301118156115375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083371.P6482301118156115375

namespace A083371

/-- `A000040(lt[7, A230847(n+1)])` -/
def P6482301118156115375.Spec : Prop :=
  ∀ n, P6482301118156115375.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P1788402967988853991

`A000040(lt[7, Δ[A000040(n+1)]]+1)`
-/

namespace A083371.P1788402967988853991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A083371.P1788402967988853991

namespace A083371

/-- `A000040(lt[7, Δ[A000040(n+1)]]+1)` -/
def P1788402967988853991.Spec : Prop :=
  ∀ n, P1788402967988853991.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P7122433343117207347

`A065091(lt[7, A000040(n+2)-A000040(n+1)])`
-/

namespace A083371.P7122433343117207347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083371.P7122433343117207347

namespace A083371

/-- `A065091(lt[7, A000040(n+2)-A000040(n+1)])` -/
def P7122433343117207347.Spec : Prop :=
  ∀ n, P7122433343117207347.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P17563606266469439999

`p?[A244207(n+1)-9]`
-/

namespace A083371.P17563606266469439999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244207 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083371.P17563606266469439999

namespace A083371

/-- `p?[A244207(n+1)-9]` -/
def P17563606266469439999.Spec : Prop :=
  ∀ n, P17563606266469439999.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P14383158145410675644

`A000040(eq[2, A277255(n+2)]+2)`
-/

namespace A083371.P14383158145410675644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A083371.P14383158145410675644

namespace A083371

/-- `A000040(eq[2, A277255(n+2)]+2)` -/
def P14383158145410675644.Spec : Prop :=
  ∀ n, P14383158145410675644.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P4280787554822955176

`p?[A099019(n+1)-4]`
-/

namespace A083371.P4280787554822955176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099019 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083371.P4280787554822955176

namespace A083371

/-- `p?[A099019(n+1)-4]` -/
def P4280787554822955176.Spec : Prop :=
  ∀ n, P4280787554822955176.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P5592304932412731884

`record[A020482(A135145(n+1)-1)]`
-/

namespace A083371.P5592304932412731884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A135145 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083371.P5592304932412731884

namespace A083371

/-- `record[A020482(A135145(n+1)-1)]` -/
def P5592304932412731884.Spec : Prop :=
  ∀ n, P5592304932412731884.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P16780006145088165710

`A000040(lt[A011379(n), A167761(n+1)])`
-/

namespace A083371.P16780006145088165710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083371.P16780006145088165710

namespace A083371

/-- `A000040(lt[A011379(n), A167761(n+1)])` -/
def P16780006145088165710.Spec : Prop :=
  ∀ n, P16780006145088165710.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P18317645522566321551

`p?[A167776(n+1)-4]`
-/

namespace A083371.P18317645522566321551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167776 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083371.P18317645522566321551

namespace A083371

/-- `p?[A167776(n+1)-4]` -/
def P18317645522566321551.Spec : Prop :=
  ∀ n, P18317645522566321551.a n = A083371 (n + 1)

end A083371

/-! ## A083371.P15183215569219418621

`∪[A031926(n+1), A124584(n+1)]`
-/

namespace A083371.P15183215569219418621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083371.P15183215569219418621

namespace A083371

/-- `∪[A031926(n+1), A124584(n+1)]` -/
def P15183215569219418621.Spec : Prop :=
  ∀ n, (P15183215569219418621.a n : ℤ) = A083371 (n + 1)

end A083371

/-! ## A083371.P3327252183617826676

`p?[A129822(n+1)-2]`
-/

namespace A083371.P3327252183617826676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129822 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083371.P3327252183617826676

namespace A083371

/-- `p?[A129822(n+1)-2]` -/
def P3327252183617826676.Spec : Prop :=
  ∀ n, P3327252183617826676.a n = A083371 (n + 1)

end A083371

/-!
# A083372: Least number having exactly two odd prime factors that differ by 2n.

The programs for A083372, there is no canonical definition to state claims against.
-/

/-! ## A083372.P5117135089162199135

`A020483(n+1)*A020484(n+1)`
-/

namespace A083372.P5117135089162199135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (n + 1) * A020484 (n + 1)

end

end A083372.P5117135089162199135

/-! ## A083372.P12629502993580873939

`A020484(n+1)*A054906(n+1)`
-/

namespace A083372.P12629502993580873939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (n + 1) * A054906 (n + 1)

end

end A083372.P12629502993580873939

/-! ## A083372.P1563537278876008172

`A087711(n+1)²-(n+1)²`
-/

namespace A083372.P1563537278876008172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (n + 1) ^ 2 - ((n + 1) ^ 2 : ℤ)

end

end A083372.P1563537278876008172

/-! ## A083372.P11989111567499244554

`A000290(A087711(n+1))-A000290(n+1)`
-/

namespace A083372.P11989111567499244554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A087711 (n + 1)).toNat - A000290 (n + 1)

end

end A083372.P11989111567499244554

/-! ## A083372.P11578472947077313297

`A204894(2*(n+1))*A204895(2*(n+1))`
-/

namespace A083372.P11578472947077313297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (2 * (n + 1)) * A204895 (2 * (n + 1))

end

end A083372.P11578472947077313297

/-! ## A083372.P451804699650825916

`A204894(2*(n+1))*A204903(2*(n+1))`
-/

namespace A083372.P451804699650825916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (2 * (n + 1)) * A204903 (2 * (n + 1))

end

end A083372.P451804699650825916

/-! ## A083372.P14308993022865098702

`filter[A135093(n), A353638(#)]`
-/

namespace A083372.P14308993022865098702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A083372.P14308993022865098702

/-! ## A083372.P5308552058796349429

`filter[A135093(n), A359465(#)]`
-/

namespace A083372.P5308552058796349429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A083372.P5308552058796349429

/-! ## A083372.P13920525611035722391

`filter[A135093(n), A359595(#)]`
-/

namespace A083372.P13920525611035722391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A083372.P13920525611035722391

/-! ## A083372.P7240161301192386355

`filter[A135093(n), A359770(#)]`
-/

namespace A083372.P7240161301192386355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A083372.P7240161301192386355

/-! ## A083372.P2998177908058420442

`filter[A135093(n), A323239(#)]`
-/

namespace A083372.P2998177908058420442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A083372.P2998177908058420442

/-! ## A083372.P16338429378418680500

`filter[A135093(n), A324908(#)]`
-/

namespace A083372.P16338429378418680500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A083372.P16338429378418680500

/-! ## A083372.P785006724342657214

`filter[A135093(n), A340370(#)]`
-/

namespace A083372.P785006724342657214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A083372.P785006724342657214

/-! ## A083372.P8700215495514895580

`filter[A135093(n), A353480(#)]`
-/

namespace A083372.P8700215495514895580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A083372.P8700215495514895580

/-! ## A083372.P5710288609675898747

`filter[A135093(n), A353481(#)]`
-/

namespace A083372.P5710288609675898747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A083372.P5710288609675898747

/-! ## A083372.P13802845742480186073

`filter[A135093(n), A353557(#)]`
-/

namespace A083372.P13802845742480186073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A083372.P13802845742480186073

/-! ## A083372.P8629393497065592674

`filter[A135093(n), A353675(#)]`
-/

namespace A083372.P8629393497065592674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A083372.P8629393497065592674

/-! ## A083372.P17719730040240766646

`filter[A135093(n), A353676(#)]`
-/

namespace A083372.P17719730040240766646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A083372.P17719730040240766646

/-! ## A083372.P10887719450461908262

`filter[A135093(n), A359605(#)]`
-/

namespace A083372.P10887719450461908262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359605 (f1 j).toNat = 1) n)

end

end A083372.P10887719450461908262

/-! ## A083372.P7286742339338967883

`filter[A135093(n+2), A035263(#)]`
-/

namespace A083372.P7286742339338967883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A083372.P7286742339338967883

/-!
# A083374: a(n) = n^2 * (n^2 - 1)/2.

The programs for A083374, the canonical program `A083374.P16457191761393268953` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083374 has offset 1).

The definition of A083374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*((n+1)²-1)/2` (program `A083374.P334943457636281078`, by `A083374.P334943457636281078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083374.P12421202185438782700

`C((n+1)², 2)`
-/

namespace A083374.P12421202185438782700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2

end

end A083374.P12421202185438782700

namespace A083374

/-- `C((n+1)², 2)` -/
def P12421202185438782700.Spec : Prop :=
  ∀ n, (P12421202185438782700.a n : ℤ) = A083374 (n + 1)

end A083374

/-! ## A083374.P334943457636281078

`(n+1)²*((n+1)²-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083374.P334943457636281078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - 1) : ℚ) / 2

end

end A083374.P334943457636281078

namespace A083374

/-- `(n+1)²*((n+1)²-1)/2` -/
def P334943457636281078.Spec : Prop :=
  ∀ n, P334943457636281078.a n = (A083374 (n + 1) : ℚ)

theorem P334943457636281078.correct : P334943457636281078.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A083374, Nat.add_sub_cancel, A083374.P334943457636281078.a, A083374.P16457191761393268953.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A083374, Nat.add_sub_cancel, A083374.P334943457636281078.a, A083374.P16457191761393268953.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083374

/-! ## A083374.P16457191761393268953

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=6, a(2)=36, a(3)=120, a(4)=300`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083374

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16457191761393268953.Spec : Prop :=
  ∀ n, P16457191761393268953.a n = A083374 (n + 1)

theorem P16457191761393268953.correct : P16457191761393268953.Spec := by
  intro n
  simp only [A083374, Nat.add_sub_cancel]

end A083374

/-! ## A083374.P13904101891576696505

`A006011(n+1)*2`
-/

namespace A083374.P13904101891576696505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 (n + 1) * 2

end

end A083374.P13904101891576696505

namespace A083374

/-- `A006011(n+1)*2` -/
def P13904101891576696505.Spec : Prop :=
  ∀ n, P13904101891576696505.a n = A083374 (n + 1)

end A083374

/-! ## A083374.P12261096585848916851

`A008911(n+1)*3`
-/

namespace A083374.P12261096585848916851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1) * 3

end

end A083374.P12261096585848916851

namespace A083374

/-- `A008911(n+1)*3` -/
def P12261096585848916851.Spec : Prop :=
  ∀ n, P12261096585848916851.a n = A083374 (n + 1)

end A083374

/-! ## A083374.P1306888997543697411

`2*A000217(n)*A000217(n+1)`
-/

namespace A083374.P1306888997543697411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n * A000217 (n + 1)

end

end A083374.P1306888997543697411

namespace A083374

/-- `2*A000217(n)*A000217(n+1)` -/
def P1306888997543697411.Spec : Prop :=
  ∀ n, P1306888997543697411.a n = A083374 (n + 1)

end A083374

/-! ## A083374.P4456037348843117481

`A002415(n+1)*6`
-/

namespace A083374.P4456037348843117481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) * 6

end

end A083374.P4456037348843117481

namespace A083374

/-- `A002415(n+1)*6` -/
def P4456037348843117481.Spec : Prop :=
  ∀ n, P4456037348843117481.a n = A083374 (n + 1)

end A083374

/-! ## A083374.P7703069166104608066

`lcm(2, C(∑[2*n+1], 2))`
-/

namespace A083374.P7703069166104608066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A083374.P7703069166104608066

namespace A083374

/-- `lcm(2, C(∑[2*n+1], 2))` -/
def P7703069166104608066.Spec : Prop :=
  ∀ n, (P7703069166104608066.a n : ℤ) = A083374 (n + 1)

end A083374

/-! ## A083374.P8972778173517850380

`2*C(n+2, 2)*∑[n]`
-/

namespace A083374.P8972778173517850380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (n + 2) 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A083374.P8972778173517850380

namespace A083374

/-- `2*C(n+2, 2)*∑[n]` -/
def P8972778173517850380.Spec : Prop :=
  ∀ n, (P8972778173517850380.a n : ℤ) = A083374 (n + 1)

end A083374

/-! ## A083374.P9519315729368259257

`lcm(n, n+1)*∑[n+1]`
-/

namespace A083374.P9519315729368259257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083374.P9519315729368259257

namespace A083374

/-- `lcm(n, n+1)*∑[n+1]` -/
def P9519315729368259257.Spec : Prop :=
  ∀ n, (P9519315729368259257.a n : ℤ) = A083374 (n + 1)

end A083374

/-! ## A083374.P13358864465996406018

`∑[comp[or(1, n)]]*∑[n+1]`
-/

namespace A083374.P13358864465996406018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A083374.P13358864465996406018

namespace A083374

/-- `∑[comp[or(1, n)]]*∑[n+1]` -/
def P13358864465996406018.Spec : Prop :=
  ∀ n, (P13358864465996406018.a n : ℤ) = A083374 (n + 1)

end A083374

/-! ## A083374.P4960252899779144297

`3*(n+1)*C(n+2, 3)`
-/

namespace A083374.P4960252899779144297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1) * Nat.choose (n + 2) 3)

end

end A083374.P4960252899779144297

namespace A083374

/-- `3*(n+1)*C(n+2, 3)` -/
def P4960252899779144297.Spec : Prop :=
  ∀ n, (P4960252899779144297.a n : ℤ) = A083374 (n + 1)

end A083374

/-! ## A083374.P13871404821400098601

`(n+1)^3*sinh(log(n+1))`
-/

namespace A083374.P13871404821400098601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℝ) * Real.sinh (Real.log (n + 1 : ℝ))

end

end A083374.P13871404821400098601

namespace A083374

/-- `(n+1)^3*sinh(log(n+1))` -/
def P13871404821400098601.Spec : Prop :=
  ∀ n, P13871404821400098601.a n = (A083374 (n + 1) : ℝ)

end A083374

/-! ## A083374.P13261164977767162219

`n*∑[∑[a(n-1)+3]]` with `a(0)=1`
-/

namespace A083374.P13261164977767162219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083374.P13261164977767162219

namespace A083374

/-- `n*∑[∑[a(n-1)+3]]` -/
def P13261164977767162219.Spec : Prop :=
  ∀ n, (P13261164977767162219.a n : ℤ) = A083374 (n + 1)

end A083374

/-! ## A083374.P8110509252076993844

`floor((n+1)/acot(∑[∑[3*n]]))`
-/

namespace A083374.P8110509252076993844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A083374.P8110509252076993844

namespace A083374

/-- `floor((n+1)/acot(∑[∑[3*n]]))` -/
def P8110509252076993844.Spec : Prop :=
  ∀ n, P8110509252076993844.a n = A083374 (n + 1)

end A083374

/-! ## A083374.P7432205765776876222

`n/2*lcm(n+2, (n+1)²)`
-/

namespace A083374.P7432205765776876222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (Nat.lcm (n + 2) ((n + 1) ^ 2) : ℚ)

end

end A083374.P7432205765776876222

namespace A083374

/-- `n/2*lcm(n+2, (n+1)²)` -/
def P7432205765776876222.Spec : Prop :=
  ∀ n, P7432205765776876222.a n = (A083374 (n + 1) : ℚ)

end A083374

/-! ## A083374.P5450210559236615219

`∑[n+1]*∑[record[and(n, n+1)]]`
-/

namespace A083374.P5450210559236615219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A083374.P5450210559236615219

namespace A083374

/-- `∑[n+1]*∑[record[and(n, n+1)]]` -/
def P5450210559236615219.Spec : Prop :=
  ∀ n, (P5450210559236615219.a n : ℤ) = A083374 (n + 1)

end A083374

/-! ## A083374.P959765354837945901

`(n+1)*round(n/acot(∑[n+1]))`
-/

namespace A083374.P959765354837945901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A083374.P959765354837945901

namespace A083374

/-- `(n+1)*round(n/acot(∑[n+1]))` -/
def P959765354837945901.Spec : Prop :=
  ∀ n, P959765354837945901.a n = A083374 (n + 1)

end A083374

/-! ## A083374.P3540903004566298472

`(n+1)*n/tan(acot(∑[n+1]))`
-/

namespace A083374.P3540903004566298472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * ((n : ℝ) / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A083374.P3540903004566298472

namespace A083374

/-- `(n+1)*n/tan(acot(∑[n+1]))` -/
def P3540903004566298472.Spec : Prop :=
  ∀ n, P3540903004566298472.a n = (A083374 (n + 1) : ℝ)

end A083374

/-! ## A083374.P9888303522156251950

`n*∑[n+1]/cot(atan(n+1))`
-/

namespace A083374.P9888303522156251950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ)))

end

end A083374.P9888303522156251950

namespace A083374

/-- `n*∑[n+1]/cot(atan(n+1))` -/
def P9888303522156251950.Spec : Prop :=
  ∀ n, P9888303522156251950.a n = (A083374 (n + 1) : ℝ)

end A083374

/-!
# A083375: n appears prime(n) times.

The programs for A083375, the canonical program `A083375.P6337784781424164042` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083375 has offset 1).

The definition of A083375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083375.P6337784781424164042

`∑[char[∑[record[∑{p}[n, #]]]]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083375

/-- `∑[char[∑[record[∑{p}[n, #]]]]]` -/
def P6337784781424164042.Spec : Prop :=
  ∀ n, (P6337784781424164042.a n : ℤ) = A083375 (n + 1)

theorem P6337784781424164042.correct : P6337784781424164042.Spec := by
  intro n
  simp only [A083375, Nat.add_sub_cancel]

end A083375

/-! ## A083375.P15580399461820166419

`∑[char[∑[∑{p}[n+1, C(#, n)]]]]`
-/

namespace A083375.P15580399461820166419
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.choose p n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083375.P15580399461820166419

namespace A083375

/-- `∑[char[∑[∑{p}[n+1, C(#, n)]]]]` -/
def P15580399461820166419.Spec : Prop :=
  ∀ n, (P15580399461820166419.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P5062576861862526067

`∑[char[∑[p?[n%3+n]]]]+1`
-/

namespace A083375.P5062576861862526067
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083375.P5062576861862526067

namespace A083375

/-- `∑[char[∑[p?[n%3+n]]]]+1` -/
def P5062576861862526067.Spec : Prop :=
  ∀ n, (P5062576861862526067.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P11919256045270760451

`∑[char[∑[p?[n-(-1)^n]]]]+1`
-/

namespace A083375.P11919256045270760451
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).toNat.Prime) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083375.P11919256045270760451

namespace A083375

/-- `∑[char[∑[p?[n-(-1)^n]]]]+1` -/
def P11919256045270760451.Spec : Prop :=
  ∀ n, (P11919256045270760451.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P3938357964740075296

`∑[char[∑[∏{e}[n+1, (n+1)^#]%(n+1)²]]]`
-/

namespace A083375.P3938357964740075296
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f4 n), (n + 1) ^ Nat.factorization (f4 n) p) % (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083375.P3938357964740075296

namespace A083375

/-- `∑[char[∑[∏{e}[n+1, (n+1)^#]%(n+1)²]]]` -/
def P3938357964740075296.Spec : Prop :=
  ∀ n, (P3938357964740075296.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P8174164451201058324

`A350174(n)+1`
-/

namespace A083375.P8174164451201058324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 n + 1

end

end A083375.P8174164451201058324

namespace A083375

/-- `A350174(n)+1` -/
def P8174164451201058324.Spec : Prop :=
  ∀ n, P8174164451201058324.a n = A083375 (n + 1)

end A083375

/-! ## A083375.P11100890018731682547

`∑[char[A007504(n)]]`
-/

namespace A083375.P11100890018731682547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083375.P11100890018731682547

namespace A083375

/-- `∑[char[A007504(n)]]` -/
def P11100890018731682547.Spec : Prop :=
  ∀ n, (P11100890018731682547.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P2483578307979257845

`∑[char[A034387(n+1)]]`
-/

namespace A083375.P2483578307979257845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083375.P2483578307979257845

namespace A083375

/-- `∑[char[A034387(n+1)]]` -/
def P2483578307979257845.Spec : Prop :=
  ∀ n, (P2483578307979257845.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P3655940177499892748

`∑[char[A063960(n+1)]]`
-/

namespace A083375.P3655940177499892748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083375.P3655940177499892748

namespace A083375

/-- `∑[char[A063960(n+1)]]` -/
def P3655940177499892748.Spec : Prop :=
  ∀ n, (P3655940177499892748.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P15263743440238609130

`∑[char[∑[A061397(n+1)]]]`
-/

namespace A083375.P15263743440238609130
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083375.P15263743440238609130

namespace A083375

/-- `∑[char[∑[A061397(n+1)]]]` -/
def P15263743440238609130.Spec : Prop :=
  ∀ n, (P15263743440238609130.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P13270783223387584767

`∑[1-abs(A226520(n+1))]`
-/

namespace A083375.P13270783223387584767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A226520 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083375.P13270783223387584767

namespace A083375

/-- `∑[1-abs(A226520(n+1))]` -/
def P13270783223387584767.Spec : Prop :=
  ∀ n, P13270783223387584767.a n = A083375 (n + 1)

end A083375

/-! ## A083375.P13206102543761579869

`eq[1, A093521(n+2)]-n`
-/

namespace A083375.P13206102543761579869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093521 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A083375.P13206102543761579869

namespace A083375

/-- `eq[1, A093521(n+2)]-n` -/
def P13206102543761579869.Spec : Prop :=
  ∀ n, P13206102543761579869.a n = A083375 (n + 1)

end A083375

/-! ## A083375.P2003120439566466133

`∑[char[A014284(n+1)-1]]`
-/

namespace A083375.P2003120439566466133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083375.P2003120439566466133

namespace A083375

/-- `∑[char[A014284(n+1)-1]]` -/
def P2003120439566466133.Spec : Prop :=
  ∀ n, (P2003120439566466133.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P6487771607604321713

`∑[char[∑[comp[A018252(n+1)]]]]`
-/

namespace A083375.P6487771607604321713
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083375.P6487771607604321713

namespace A083375

/-- `∑[char[∑[comp[A018252(n+1)]]]]` -/
def P6487771607604321713.Spec : Prop :=
  ∀ n, (P6487771607604321713.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P11137030806789221758

`∑[char[∑[A000040(n+1)]]]+1`
-/

namespace A083375.P11137030806789221758
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083375.P11137030806789221758

namespace A083375

/-- `∑[char[∑[A000040(n+1)]]]+1` -/
def P11137030806789221758.Spec : Prop :=
  ∀ n, (P11137030806789221758.a n : ℤ) = A083375 (n + 1)

end A083375

/-! ## A083375.P2165831839263563329

`2*(n+1)-A193732(n+1)`
-/

namespace A083375.P2165831839263563329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A193732 (n + 1)

end

end A083375.P2165831839263563329

namespace A083375

/-- `2*(n+1)-A193732(n+1)` -/
def P2165831839263563329.Spec : Prop :=
  ∀ n, P2165831839263563329.a n = A083375 (n + 1)

end A083375

/-! ## A083375.P14625774992577192621

`A000720(A063905(n+1))`
-/

namespace A083375.P14625774992577192621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063905 (n + 1)).toNat

end

end A083375.P14625774992577192621

namespace A083375

/-- `A000720(A063905(n+1))` -/
def P14625774992577192621.Spec : Prop :=
  ∀ n, P14625774992577192621.a n = A083375 (n + 1)

end A083375

/-! ## A083375.P13338352507413601604

`A026238(A111657(n+1))`
-/

namespace A083375.P13338352507413601604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A111657 (n + 1)).toNat

end

end A083375.P13338352507413601604

namespace A083375

/-- `A026238(A111657(n+1))` -/
def P13338352507413601604.Spec : Prop :=
  ∀ n, P13338352507413601604.a n = A083375 (n + 1)

end A083375

/-! ## A083375.P14363067621840609350

`A049084(A063905(2*n+1-n))`
-/

namespace A083375.P14363067621840609350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A063905 (2 * n + 1 - n)).toNat

end

end A083375.P14363067621840609350

namespace A083375

/-- `A049084(A063905(2*n+1-n))` -/
def P14363067621840609350.Spec : Prop :=
  ∀ n, P14363067621840609350.a n = A083375 (n + 1)

end A083375

/-! ## A083375.P16641293583186136350

`A065855(A111657(2*n+1-n))`
-/

namespace A083375.P16641293583186136350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A111657 (2 * n + 1 - n)).toNat

end

end A083375.P16641293583186136350

namespace A083375

/-- `A065855(A111657(2*n+1-n))` -/
def P16641293583186136350.Spec : Prop :=
  ∀ n, P16641293583186136350.a n = A083375 (n + 1)

end A083375

/-!
# A083377: a(n) = the largest integer whose square has n digits and first digit 1.

The programs for A083377, the canonical program `A083377.P16826466757696554147` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083377 has offset 1).

The definition of A083377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083377.P16826466757696554147

`floor(sqrt(10^(n+1)/5))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083377

/-- `floor(sqrt(10^(n+1)/5))` -/
def P16826466757696554147.Spec : Prop :=
  ∀ n, P16826466757696554147.a n = A083377 (n + 1)

theorem P16826466757696554147.correct : P16826466757696554147.Spec := by
  intro n
  simp only [A083377, Nat.add_sub_cancel]

end A083377

/-! ## A083377.P17419237446468655755

`A035069(round(sqrt(n²+1)))-(A000007(n)+1)²`
-/

namespace A083377.P17419237446468655755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035069 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - (A000007 n + 1) ^ 2

end

end A083377.P17419237446468655755

namespace A083377

/-- `A035069(round(sqrt(n²+1)))-(A000007(n)+1)²` -/
def P17419237446468655755.Spec : Prop :=
  ∀ n, P17419237446468655755.a n = A083377 (n + 1)

end A083377

/-! ## A083377.P15431976228372523962

`A035069(A028310(n))-A054977(n)²`
-/

namespace A083377.P15431976228372523962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035069 (A028310 n).toNat - A054977 n ^ 2

end

end A083377.P15431976228372523962

namespace A083377

/-- `A035069(A028310(n))-A054977(n)²` -/
def P15431976228372523962.Spec : Prop :=
  ∀ n, P15431976228372523962.a n = A083377 (n + 1)

end A083377

/-! ## A083377.P2539103708099957950

`ceil(sqrt(A199682(n)))-1`
-/

namespace A083377.P2539103708099957950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A199682 n : ℝ)⌉ - 1

end

end A083377.P2539103708099957950

namespace A083377

/-- `ceil(sqrt(A199682(n)))-1` -/
def P2539103708099957950.Spec : Prop :=
  ∀ n, P2539103708099957950.a n = A083377 (n + 1)

end A083377

/-! ## A083377.P16798838224524304652

`ceil(sqrt(2*(Δ[A002275(n)]+2*n)+1))-1`
-/

namespace A083377.P16798838224524304652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * (f1 (n + 1) - f1 n + (2 * n : ℤ)) + 1 : ℝ)⌉ - 1

end

end A083377.P16798838224524304652

namespace A083377

/-- `ceil(sqrt(2*(Δ[A002275(n)]+2*n)+1))-1` -/
def P16798838224524304652.Spec : Prop :=
  ∀ n, P16798838224524304652.a n = A083377 (n + 1)

end A083377

/-! ## A083377.P12826488196877377391

`ceil(sqrt(2*10^n)-A007318(A000217(n)))`
-/

namespace A083377.P12826488196877377391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * 10 ^ n : ℝ) - (A007318 (A000217 n).toNat : ℝ)⌉

end

end A083377.P12826488196877377391

namespace A083377

/-- `ceil(sqrt(2*10^n)-A007318(A000217(n)))` -/
def P12826488196877377391.Spec : Prop :=
  ∀ n, P12826488196877377391.a n = A083377 (n + 1)

end A083377

/-!
# A083378: a(n) is the largest integer whose cube has n digits and first digit 1, except that a(2)=2.

The programs for A083378, the canonical program `A083378.P4562018791364204392` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083378 has offset 1).

The definition of A083378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083378.P4562018791364204392

`floor((10^(n+1)/5)^(1/3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083378

/-- `floor((10^(n+1)/5)^(1/3))` -/
def P4562018791364204392.Spec : Prop :=
  ∀ n, P4562018791364204392.a n = A083378 (n + 1)

theorem P4562018791364204392.correct : P4562018791364204392.Spec := by
  intro n
  simp only [A083378, Nat.add_sub_cancel]

end A083378

/-! ## A083378.P17187716845646845940

`ceil(root(2*(A011557(n)+1), 3))-1`
-/

namespace A083378.P17187716845646845940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (A011557 n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1

end

end A083378.P17187716845646845940

namespace A083378

/-- `ceil(root(2*(A011557(n)+1), 3))-1` -/
def P17187716845646845940.Spec : Prop :=
  ∀ n, P17187716845646845940.a n = A083378 (n + 1)

end A083378

/-! ## A083378.P3144118507819529968

`ceil(root(2*n+A010672(n)+2*10^n, 3))-1`
-/

namespace A083378.P3144118507819529968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℤ) + (A010672 n + (2 * 10 ^ n : ℤ)) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1

end

end A083378.P3144118507819529968

namespace A083378

/-- `ceil(root(2*n+A010672(n)+2*10^n, 3))-1` -/
def P3144118507819529968.Spec : Prop :=
  ∀ n, P3144118507819529968.a n = A083378 (n + 1)

end A083378

/-! ## A083378.P16331151585956403310

`ceil(root(A056833(n)+A082784(n)+2*10^n, 3))-1`
-/

namespace A083378.P16331151585956403310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056833 n + (A082784 n + (2 * 10 ^ n : ℤ)) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1

end

end A083378.P16331151585956403310

namespace A083378

/-- `ceil(root(A056833(n)+A082784(n)+2*10^n, 3))-1` -/
def P16331151585956403310.Spec : Prop :=
  ∀ n, P16331151585956403310.a n = A083378 (n + 1)

end A083378

/-! ## A083378.P10378510004436907976

`ceil(root(A262289(n)+A267442(n)+2*10^n, 3))-1`
-/

namespace A083378.P10378510004436907976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262289 n + (A267442 n + (2 * 10 ^ n : ℤ)) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1

end

end A083378.P10378510004436907976

namespace A083378

/-- `ceil(root(A262289(n)+A267442(n)+2*10^n, 3))-1` -/
def P10378510004436907976.Spec : Prop :=
  ∀ n, P10378510004436907976.a n = A083378 (n + 1)

end A083378

/-!
# A083379: a(n) = the number of squares with at most n digits and first digit 1.

The programs for A083379, the canonical program `A083379.P11455418921540216668` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083379 has offset 1).

The definition of A083379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083379.P11455418921540216668

`∑[A083377(n+1)+1-A017936(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083379

/-- `∑[A083377(n+1)+1-A017936(n+1)]` -/
def P11455418921540216668.Spec : Prop :=
  ∀ n, P11455418921540216668.a n = A083379 (n + 1)

theorem P11455418921540216668.correct : P11455418921540216668.Spec := by
  intro n
  simp only [A083379, Nat.add_sub_cancel]

end A083379

/-! ## A083379.P6407688035230360389

`∑[A049415(n+1)+A083377(n+1)-A049416(n+1)]`
-/

namespace A083379.P6407688035230360389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + (A083377 (n + 1) - A049416 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083379.P6407688035230360389

namespace A083379

/-- `∑[A049415(n+1)+A083377(n+1)-A049416(n+1)]` -/
def P6407688035230360389.Spec : Prop :=
  ∀ n, P6407688035230360389.a n = A083379 (n + 1)

end A083379

/-! ## A083379.P9279771654164650918

`A148770(n)+A055930(A148770(n+1))`
-/

namespace A083379.P9279771654164650918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148770 n + A055930 (A148770 (n + 1)).toNat

end

end A083379.P9279771654164650918

namespace A083379

/-- `A148770(n)+A055930(A148770(n+1))` -/
def P9279771654164650918.Spec : Prop :=
  ∀ n, P9279771654164650918.a n = A083379 (n + 1)

end A083379

/-!
# A083380: a(n) is the number of cubes with at most n digits and first digit 1.

The programs for A083380, there is no canonical definition to state claims against.
-/

/-! ## A083380.P5959373828636729270

`or(A087049(A007052(n)), A341020(n))`
-/

namespace A083380.P5959373828636729270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087049 (A007052 n).toNat) (A341020 n)

end

end A083380.P5959373828636729270

/-! ## A083380.P5343747375991365421

`or(A115971(A042039(n)), A341020(n))`
-/

namespace A083380.P5343747375991365421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A115971 (A042039 n).toNat) (A341020 n)

end

end A083380.P5343747375991365421

/-! ## A083380.P8878971122901262372

`or(A087049(A084509(n)), A341020(n))`
-/

namespace A083380.P8878971122901262372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087049 (A084509 n).toNat) (A341020 n)

end

end A083380.P8878971122901262372

/-! ## A083380.P6535454825131876793

`or(A115971(A107591(n)), A341020(n))`
-/

namespace A083380.P6535454825131876793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A115971 (A107591 n).toNat) (A341020 n)

end

end A083380.P6535454825131876793

/-! ## A083380.P16544065173586134285

`or(A267442(A042609(n)), A341020(n))`
-/

namespace A083380.P16544065173586134285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267442 (A042609 n).toNat) (A341020 n)

end

end A083380.P16544065173586134285

/-!
# A083381: Square array giving the number of trellis edges T(i,j) (i >= 0, j >= 0), read by antidiagonals.

The programs for A083381, the canonical program `A083381.P16201519354346313512` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083381 has offset 0).

The definition of A083381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083381.P9371891497166911593

`∑[char[∑[n]]]-A176625(n)`
-/

namespace A083381.P9371891497166911593
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A176625 n

end

end A083381.P9371891497166911593

namespace A083381

/-- `∑[char[∑[n]]]-A176625(n)` -/
def P9371891497166911593.Spec : Prop :=
  ∀ n, P9371891497166911593.a n = A083381 n

end A083381

/-! ## A083381.P14233020639066460543

`∑[char[∑[n]]]+A296180(n)-2`
-/

namespace A083381.P14233020639066460543
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A296180 n - 2)

end

end A083381.P14233020639066460543

namespace A083381

/-- `∑[char[∑[n]]]+A296180(n)-2` -/
def P14233020639066460543.Spec : Prop :=
  ∀ n, P14233020639066460543.a n = A083381 n

end A083381

/-! ## A083381.P4256738165647238375

`∑[char[∑[n+1]]]+3*A004247(n)`
-/

namespace A083381.P4256738165647238375
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 3 * A004247 n

end

end A083381.P4256738165647238375

namespace A083381

/-- `∑[char[∑[n+1]]]+3*A004247(n)` -/
def P4256738165647238375.Spec : Prop :=
  ∀ n, P4256738165647238375.a n = A083381 n

end A083381

/-! ## A083381.P9881480287644610181

`∑[char[∑[n]]]-(3*A176270(n)-2)`
-/

namespace A083381.P9881480287644610181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (3 * A176270 n - 2)

end

end A083381.P9881480287644610181

namespace A083381

/-- `∑[char[∑[n]]]-(3*A176270(n)-2)` -/
def P9881480287644610181.Spec : Prop :=
  ∀ n, P9881480287644610181.a n = A083381 n

end A083381

/-! ## A083381.P18038496239865992589

`A101468(n)-(2*(n-C(∑[char[∑[n]]], 2))+1)`
-/

namespace A083381.P18038496239865992589
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101468 n - (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1)

end

end A083381.P18038496239865992589

namespace A083381

/-- `A101468(n)-(2*(n-C(∑[char[∑[n]]], 2))+1)` -/
def P18038496239865992589.Spec : Prop :=
  ∀ n, P18038496239865992589.a n = A083381 n

end A083381

/-! ## A083381.P15105666717313704934

`A141387(n)+A004247(n)`
-/

namespace A083381.P15105666717313704934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n + A004247 n

end

end A083381.P15105666717313704934

namespace A083381

/-- `A141387(n)+A004247(n)` -/
def P15105666717313704934.Spec : Prop :=
  ∀ n, P15105666717313704934.a n = A083381 n

end A083381

/-! ## A083381.P1702192067809864683

`A332790(n)-A101447(n)`
-/

namespace A083381.P1702192067809864683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332790 n - A101447 n

end

end A083381.P1702192067809864683

namespace A083381

/-- `A332790(n)-A101447(n)` -/
def P1702192067809864683.Spec : Prop :=
  ∀ n, P1702192067809864683.a n = A083381 n

end A083381

/-! ## A083381.P11277997370568539757

`A077028(n)+A141387(n)-1`
-/

namespace A083381.P11277997370568539757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A141387 n - 1)

end

end A083381.P11277997370568539757

namespace A083381

/-- `A077028(n)+A141387(n)-1` -/
def P11277997370568539757.Spec : Prop :=
  ∀ n, P11277997370568539757.a n = A083381 n

end A083381

/-! ## A083381.P14579770821902874949

`A101468(n)-A158405(n+1)`
-/

namespace A083381.P14579770821902874949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101468 n - A158405 (n + 1)

end

end A083381.P14579770821902874949

namespace A083381

/-- `A101468(n)-A158405(n+1)` -/
def P14579770821902874949.Spec : Prop :=
  ∀ n, P14579770821902874949.a n = A083381 n

end A083381

/-! ## A083381.P10358571592468779864

`A129312(n+1)-A176270(n)`
-/

namespace A083381.P10358571592468779864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129312 (n + 1) - A176270 n

end

end A083381.P10358571592468779864

namespace A083381

/-- `A129312(n+1)-A176270(n)` -/
def P10358571592468779864.Spec : Prop :=
  ∀ n, P10358571592468779864.a n = A083381 n

end A083381

/-! ## A083381.P820144947377056306

`A098353(n+1)-A003991(n+1)`
-/

namespace A083381.P820144947377056306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098353 (n + 1) - A003991 (n + 1)

end

end A083381.P820144947377056306

namespace A083381

/-- `A098353(n+1)-A003991(n+1)` -/
def P820144947377056306.Spec : Prop :=
  ∀ n, P820144947377056306.a n = A083381 n

end A083381

/-! ## A083381.P16201519354346313512

`A008585(A004247(n))+A003056(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A083381

/-- `A008585(A004247(n))+A003056(n)` -/
def P16201519354346313512.Spec : Prop :=
  ∀ n, P16201519354346313512.a n = A083381 n

theorem P16201519354346313512.correct : P16201519354346313512.Spec := by
  intro n
  simp only [A083381]

end A083381

/-! ## A083381.P3997946234560022018

`A004247(n)+A059036(n)+A004247(n)`
-/

namespace A083381.P3997946234560022018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A059036 n + A004247 n)

end

end A083381.P3997946234560022018

namespace A083381

/-- `A004247(n)+A059036(n)+A004247(n)` -/
def P3997946234560022018.Spec : Prop :=
  ∀ n, P3997946234560022018.a n = A083381 n

end A083381

/-! ## A083381.P1048466456066196870

`A157454(n+1)*A204022(n+1)-A003991(n+1)`
-/

namespace A083381.P1048466456066196870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) * A204022 (n + 1) - A003991 (n + 1)

end

end A083381.P1048466456066196870

namespace A083381

/-- `A157454(n+1)*A204022(n+1)-A003991(n+1)` -/
def P1048466456066196870.Spec : Prop :=
  ∀ n, P1048466456066196870.a n = A083381 n

end A083381

/-!
# A083384: a(n) = n*Sum(((k-1)/2)*k!*Stirling_2(n,k),k=1..n).

The programs for A083384, there is no canonical definition to state claims against.
-/

/-! ## A083384.P3724289706031659606

`A083385(n+1)-(n+1)*A000670(n+1)`
-/

namespace A083384.P3724289706031659606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083385 (n + 1) - (n + 1 : ℤ) * A000670 (n + 1)

end

end A083384.P3724289706031659606

/-! ## A083384.P12313253564740854377

`(n+1)*A083411(n+1)`
-/

namespace A083384.P12313253564740854377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083411 (n + 1)

end

end A083384.P12313253564740854377

/-! ## A083384.P4716223424420659134

`(n+1)*(A091106(n+1)+1)`
-/

namespace A083384.P4716223424420659134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A091106 (n + 1) + 1)

end

end A083384.P4716223424420659134

/-! ## A083384.P15966245764516929279

`(n+1)*A052876(n+1)/2`
-/

namespace A083384.P15966245764516929279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A052876 (n + 1) : ℚ) / 2)

end

end A083384.P15966245764516929279

/-! ## A083384.P14085397560308778152

`(n+1)*(A083410(n+1)-record[A122101(n)])`
-/

namespace A083384.P14085397560308778152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A083410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A083384.P14085397560308778152

/-! ## A083384.P13299235134978471420

`(A083410(n+1)-A000670(n+1)+1)*(n+1)-(n+1)`
-/

namespace A083384.P13299235134978471420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083410 (n + 1) - A000670 (n + 1) + 1) * (n + 1 : ℤ) - (n + 1 : ℤ)

end

end A083384.P13299235134978471420

/-! ## A083384.P24426076554766021

`(n+1)*(A091346(n+1)+A091346(n)-A000670(n+1))`
-/

namespace A083384.P24426076554766021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A091346 (n + 1) + (A091346 n - A000670 (n + 1)))

end

end A083384.P24426076554766021

/-!
# A083385: Total height of all elements in all preferential arrangements of n elements, where elements at the bottom level have height 1.

The programs for A083385, there is no canonical definition to state claims against.
-/

/-! ## A083385.P15869430324389553542

`(n+1)*A083410(n+1)`
-/

namespace A083385.P15869430324389553542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083410 (n + 1)

end

end A083385.P15869430324389553542

/-! ## A083385.P12718240198591825674

`(n+1)/2*A005649(n+1)`
-/

namespace A083385.P12718240198591825674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A005649 (n + 1) : ℚ)

end

end A083385.P12718240198591825674

/-! ## A083385.P9756514997471897611

`(n+1)*A172109(n+2)/2`
-/

namespace A083385.P9756514997471897611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A172109 (n + 2) : ℚ) / 2)

end

end A083385.P9756514997471897611

/-! ## A083385.P3370194623478606423

`(ϕ²-(ϕ-n))*Δ[∑[A005649(n)]/2]`
-/

namespace A083385.P3370194623478606423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ))) * (f1 (n + 1) - f1 n : ℝ)

end

end A083385.P3370194623478606423

/-! ## A083385.P16224910273690864010

`(n+1)*(A091346(n+1)+A091346(n))`
-/

namespace A083385.P16224910273690864010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A091346 (n + 1) + A091346 n)

end

end A083385.P16224910273690864010

/-! ## A083385.P12391363137955208652

`(A083411(n+1)+A000670(n+1))*(n+1)`
-/

namespace A083385.P12391363137955208652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083411 (n + 1) + A000670 (n + 1)) * (n + 1 : ℤ)

end

end A083385.P12391363137955208652

/-!
# A083386: Number (undirected) Hamiltonian paths in the 5 X n knight graph.

The programs for A083386, there is no canonical definition to state claims against.
-/

/-! ## A083386.P15120920047499618405

`A389755(5*(n+1))`
-/

namespace A083386.P15120920047499618405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389755 (5 * (n + 1))

end

end A083386.P15120920047499618405

/-! ## A083386.P10929012252280120348

`A390833(A374005(n+1))`
-/

namespace A083386.P10929012252280120348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390833 (A374005 (n + 1)).toNat

end

end A083386.P10929012252280120348

/-! ## A083386.P12611116198589238172

`A306282(A128161(n+1)+1)/2`
-/

namespace A083386.P12611116198589238172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306282 (A128161 (n + 1) + 1).toNat : ℚ) / 2

end

end A083386.P12611116198589238172

/-!
# A083388: a(n) = beginning of a run of at least n primes when x -> 3*x + 2 is iterated.

The programs for A083388, there is no canonical definition to state claims against.
-/

/-! ## A083388.P15112626592293259333

`p?[∑[∏[A306320(n+2)]]]`
-/

namespace A083388.P15112626592293259333
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306320 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083388.P15112626592293259333

/-!
# A083390: Integers m such that 2m + 1 divides lcm(1,3,5,...,2m - 1).

The programs for A083390, the canonical program `A083390.P13570770619546265520` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083390 has offset 1).

The definition of A083390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061346, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083390.P13570770619546265520

`(A061346(n+1)-1)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A083390

/-- `(A061346(n+1)-1)/2` -/
def P13570770619546265520.Spec : Prop :=
  ∀ n, P13570770619546265520.a n = (A083390 (n + 1) : ℚ)

end A083390

/-! ## A083390.P12503581896344231859

`comp[floor(A061345(n)/2)]`
-/

namespace A083390.P12503581896344231859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061345 n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083390.P12503581896344231859

namespace A083390

/-- `comp[floor(A061345(n)/2)]` -/
def P12503581896344231859.Spec : Prop :=
  ∀ n, (P12503581896344231859.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P10702057066183051108

`floor(A061346(n+1)/2)`
-/

namespace A083390.P10702057066183051108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061346 (n + 1) : ℚ) / 2⌋

end

end A083390.P10702057066183051108

namespace A083390

/-- `floor(A061346(n+1)/2)` -/
def P10702057066183051108.Spec : Prop :=
  ∀ n, P10702057066183051108.a n = A083390 (n + 1)

end A083390

/-! ## A083390.P13179259554569685544

`eq[0, A340363(2*n+1)]`
-/

namespace A083390.P13179259554569685544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083390.P13179259554569685544

namespace A083390

/-- `eq[0, A340363(2*n+1)]` -/
def P13179259554569685544.Spec : Prop :=
  ∀ n, (P13179259554569685544.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P986480128346679093

`eq[0, A354923(2*n+1)]`
-/

namespace A083390.P986480128346679093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354923 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083390.P986480128346679093

namespace A083390

/-- `eq[0, A354923(2*n+1)]` -/
def P986480128346679093.Spec : Prop :=
  ∀ n, (P986480128346679093.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P11475840990083753149

`eq[0, A354924(2*n+1)]`
-/

namespace A083390.P11475840990083753149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083390.P11475840990083753149

namespace A083390

/-- `eq[0, A354924(2*n+1)]` -/
def P11475840990083753149.Spec : Prop :=
  ∀ n, (P11475840990083753149.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P2461853123211047205

`lt[1, A001221(2*n+1)]`
-/

namespace A083390.P2461853123211047205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083390.P2461853123211047205

namespace A083390

/-- `lt[1, A001221(2*n+1)]` -/
def P2461853123211047205.Spec : Prop :=
  ∀ n, (P2461853123211047205.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P7662835077718140091

`lt[1, A034460(2*n+1)]`
-/

namespace A083390.P7662835077718140091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083390.P7662835077718140091

namespace A083390

/-- `lt[1, A034460(2*n+1)]` -/
def P7662835077718140091.Spec : Prop :=
  ∀ n, (P7662835077718140091.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P1221416588688974047

`lt[1, A035321(2*n+1)]`
-/

namespace A083390.P1221416588688974047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035321 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083390.P1221416588688974047

namespace A083390

/-- `lt[1, A035321(2*n+1)]` -/
def P1221416588688974047.Spec : Prop :=
  ∀ n, (P1221416588688974047.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P15429395952905695537

`lt[1, A052125(2*n+1)]`
-/

namespace A083390.P15429395952905695537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083390.P15429395952905695537

namespace A083390

/-- `lt[1, A052125(2*n+1)]` -/
def P15429395952905695537.Spec : Prop :=
  ∀ n, (P15429395952905695537.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P8988920121547632034

`lt[1, A063919(2*n+1)]`
-/

namespace A083390.P8988920121547632034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083390.P8988920121547632034

namespace A083390

/-- `lt[1, A063919(2*n+1)]` -/
def P8988920121547632034.Spec : Prop :=
  ∀ n, (P8988920121547632034.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P11400996541570220417

`lt[1, A070536(2*n+1)]`
-/

namespace A083390.P11400996541570220417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083390.P11400996541570220417

namespace A083390

/-- `lt[1, A070536(2*n+1)]` -/
def P11400996541570220417.Spec : Prop :=
  ∀ n, (P11400996541570220417.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P2729352373863859467

`eq[2*n+1, A074591(2*n+1)]`
-/

namespace A083390.P2729352373863859467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083390.P2729352373863859467

namespace A083390

/-- `eq[2*n+1, A074591(2*n+1)]` -/
def P2729352373863859467.Spec : Prop :=
  ∀ n, (P2729352373863859467.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P15459938108031800144

`lt[2, ∑{p}[2*n+1, atan(#)]]`
-/

namespace A083390.P15459938108031800144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Real.arctan (p : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A083390.P15459938108031800144

namespace A083390

/-- `lt[2, ∑{p}[2*n+1, atan(#)]]` -/
def P15459938108031800144.Spec : Prop :=
  ∀ n, (P15459938108031800144.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P9375739982310160890

`lt[1, ∑{e}[2*n+1, tanh(#)]]`
-/

namespace A083390.P9375739982310160890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Real.tanh (Nat.factorization (f3 n) p : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A083390.P9375739982310160890

namespace A083390

/-- `lt[1, ∑{e}[2*n+1, tanh(#)]]` -/
def P9375739982310160890.Spec : Prop :=
  ∀ n, (P9375739982310160890.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P15463648969685656676

`lt[n, ∑{p}[2*n+1, n+1-#]]`
-/

namespace A083390.P15463648969685656676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ((n + 1 : ℤ) - (p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083390.P15463648969685656676

namespace A083390

/-- `lt[n, ∑{p}[2*n+1, n+1-#]]` -/
def P15463648969685656676.Spec : Prop :=
  ∀ n, (P15463648969685656676.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P6083279044969309442

`lt[1, A120891(n+1)]`
-/

namespace A083390.P6083279044969309442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083390.P6083279044969309442

namespace A083390

/-- `lt[1, A120891(n+1)]` -/
def P6083279044969309442.Spec : Prop :=
  ∀ n, (P6083279044969309442.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P18332633466855191545

`lt[1, A024361(2*n+1)]`
-/

namespace A083390.P18332633466855191545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083390.P18332633466855191545

namespace A083390

/-- `lt[1, A024361(2*n+1)]` -/
def P18332633466855191545.Spec : Prop :=
  ∀ n, (P18332633466855191545.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P5029775500138100888

`eq[1, A103131(2*n+1)]`
-/

namespace A083390.P5029775500138100888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083390.P5029775500138100888

namespace A083390

/-- `eq[1, A103131(2*n+1)]` -/
def P5029775500138100888.Spec : Prop :=
  ∀ n, (P5029775500138100888.a n : ℤ) = A083390 (n + 1)

end A083390

/-! ## A083390.P9544942827344590201

`lt[1, A072273(2*n+1)]`
-/

namespace A083390.P9544942827344590201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083390.P9544942827344590201

namespace A083390

/-- `lt[1, A072273(2*n+1)]` -/
def P9544942827344590201.Spec : Prop :=
  ∀ n, (P9544942827344590201.a n : ℤ) = A083390 (n + 1)

end A083390

/-!
# A083392: Alternating partial sums of A000217.

The programs for A083392, the canonical program `A083392.P15328324608992545926` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083392 has offset 0).

The definition of A083392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083392.P15328324608992545926

`(-1)^n*floor((n+1)²/4)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083392

/-- `(-1)^n*floor((n+1)²/4)` -/
def P15328324608992545926.Spec : Prop :=
  ∀ n, P15328324608992545926.a n = A083392 n

theorem P15328324608992545926.correct : P15328324608992545926.Spec := by
  intro n
  simp only [A083392]

end A083392

/-! ## A083392.P10284937730735218760

`∑[ogf(-x/(1+3x+3x^2+x^3))]`
-/

namespace A083392.P10284937730735218760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1] [1, 3, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083392.P10284937730735218760

namespace A083392

/-- `∑[ogf(-x/(1+3x+3x^2+x^3))]` -/
def P10284937730735218760.Spec : Prop :=
  ∀ n, P10284937730735218760.a n = A083392 n

end A083392

/-! ## A083392.P8778574631520011650

`ogf(x/(-1-2x+2x^3+x^4))`
-/

namespace A083392.P8778574631520011650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1] [1, 2, 0, -2, -1] n

end

end A083392.P8778574631520011650

namespace A083392

/-- `ogf(x/(-1-2x+2x^3+x^4))` -/
def P8778574631520011650.Spec : Prop :=
  ∀ n, P8778574631520011650.a n = A083392 n

end A083392

/-! ## A083392.P3430327399064875868

`a(n-1)+∑[n]/(-1)^n` with `a(0)=0`
-/

namespace A083392.P3430327399064875868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((-1) ^ n : ℚ)

end

end A083392.P3430327399064875868

namespace A083392

/-- `a(n-1)+∑[n]/(-1)^n` -/
def P3430327399064875868.Spec : Prop :=
  ∀ n, P3430327399064875868.a n = (A083392 n : ℚ)

end A083392

/-! ## A083392.P7884811096499161505

`∑[n-a(n-1)]/(-1)^n` with `a(0)=0`
-/

namespace A083392.P7884811096499161505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A083392.P7884811096499161505

namespace A083392

/-- `∑[n-a(n-1)]/(-1)^n` -/
def P7884811096499161505.Spec : Prop :=
  ∀ n, P7884811096499161505.a n = (A083392 n : ℚ)

end A083392

/-! ## A083392.P7004942697037326450

`floor(a(n-2)+n*(-1)^n)` with `a(0)=0, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A083392.P7004942697037326450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  a (n - 2) + (n : ℤ) * (-1) ^ n

end

end A083392.P7004942697037326450

namespace A083392

/-- `floor(a(n-2)+n*(-1)^n)` -/
def P7004942697037326450.Spec : Prop :=
  ∀ n, P7004942697037326450.a n = A083392 n

end A083392

/-! ## A083392.P18090883127335283355

`floor(a(n-2))+n/(-1)^n` with `a(0)=0, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A083392.P18090883127335283355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, -1] fun n a =>
  (⌊a (n - 2)⌋ : ℚ) + (n : ℚ) / ((-1) ^ n : ℚ)

end

end A083392.P18090883127335283355

namespace A083392

/-- `floor(a(n-2))+n/(-1)^n` -/
def P18090883127335283355.Spec : Prop :=
  ∀ n, P18090883127335283355.a n = (A083392 n : ℚ)

end A083392

/-! ## A083392.P7706778043097274807

`∑[lcm(n+1, 2*n)]-∑[∑[3*n]]`
-/

namespace A083392.P7706778043097274807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A083392.P7706778043097274807

namespace A083392

/-- `∑[lcm(n+1, 2*n)]-∑[∑[3*n]]` -/
def P7706778043097274807.Spec : Prop :=
  ∀ n, P7706778043097274807.a n = A083392 n

end A083392

/-! ## A083392.P14378044868553498456

`∑[(-1)^n-a(n-1)]-a(n-1)` with `a(0)=0`
-/

namespace A083392.P14378044868553498456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (-1) ^ n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A083392.P14378044868553498456

namespace A083392

/-- `∑[(-1)^n-a(n-1)]-a(n-1)` -/
def P14378044868553498456.Spec : Prop :=
  ∀ n, P14378044868553498456.a n = A083392 n

end A083392

/-! ## A083392.P12747636497693367374

`A130472(n)-a(n-1)` with `a(0)=0`
-/

namespace A083392.P12747636497693367374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A130472 n - a (n - 1)

end

end A083392.P12747636497693367374

namespace A083392

/-- `A130472(n)-a(n-1)` -/
def P12747636497693367374.Spec : Prop :=
  ∀ n, P12747636497693367374.a n = A083392 n

end A083392

/-! ## A083392.P1119152670903690853

`n-(A014682(n)+a(n-1))` with `a(0)=0`
-/

namespace A083392.P1119152670903690853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (A014682 n + a (n - 1))

end

end A083392.P1119152670903690853

namespace A083392

/-- `n-(A014682(n)+a(n-1))` -/
def P1119152670903690853.Spec : Prop :=
  ∀ n, P1119152670903690853.a n = A083392 n

end A083392

/-! ## A083392.P16449672295935807163

`A071045(n)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A083392.P16449672295935807163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A071045 n - (a (n - 1) + (n : ℤ))

end

end A083392.P16449672295935807163

namespace A083392

/-- `A071045(n)-(a(n-1)+n)` -/
def P16449672295935807163.Spec : Prop :=
  ∀ n, P16449672295935807163.a n = A083392 n

end A083392

/-! ## A083392.P16232942130108330737

`∑[(n+1)²-A110344(n+1)]`
-/

namespace A083392.P16232942130108330737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A110344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083392.P16232942130108330737

namespace A083392

/-- `∑[(n+1)²-A110344(n+1)]` -/
def P16232942130108330737.Spec : Prop :=
  ∀ n, P16232942130108330737.a n = A083392 n

end A083392

/-! ## A083392.P7328736129594113782

`∑[A110345(n+1)-(n+1)²]`
-/

namespace A083392.P7328736129594113782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110345 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083392.P7328736129594113782

namespace A083392

/-- `∑[A110345(n+1)-(n+1)²]` -/
def P7328736129594113782.Spec : Prop :=
  ∀ n, P7328736129594113782.a n = A083392 n

end A083392

/-! ## A083392.P15140634280758737287

`A001057(n)-A131723(n)`
-/

namespace A083392.P15140634280758737287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - A131723 n

end

end A083392.P15140634280758737287

namespace A083392

/-- `A001057(n)-A131723(n)` -/
def P15140634280758737287.Spec : Prop :=
  ∀ n, P15140634280758737287.a n = A083392 n

end A083392

/-! ## A083392.P14830310344399039875

`A152032(n)-A059841(n)`
-/

namespace A083392.P14830310344399039875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 n - A059841 n

end

end A083392.P14830310344399039875

namespace A083392

/-- `A152032(n)-A059841(n)` -/
def P14830310344399039875.Spec : Prop :=
  ∀ n, P14830310344399039875.a n = A083392 n

end A083392

/-! ## A083392.P17502557537492060372

`A367965(n)-A093353(n)`
-/

namespace A083392.P17502557537492060372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367965 n - A093353 n

end

end A083392.P17502557537492060372

namespace A083392

/-- `A367965(n)-A093353(n)` -/
def P17502557537492060372.Spec : Prop :=
  ∀ n, P17502557537492060372.a n = A083392 n

end A083392

/-! ## A083392.P526121755212482270

`-(A001057(n)*A008619(n))`
-/

namespace A083392.P526121755212482270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001057 n * A008619 n)

end

end A083392.P526121755212482270

namespace A083392

/-- `-(A001057(n)*A008619(n))` -/
def P526121755212482270.Spec : Prop :=
  ∀ n, P526121755212482270.a n = A083392 n

end A083392

/-! ## A083392.P18337140269509625985

`∑[A110654(n)]/A033999(n)`
-/

namespace A083392.P18337140269509625985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 n : ℚ)

end

end A083392.P18337140269509625985

namespace A083392

/-- `∑[A110654(n)]/A033999(n)` -/
def P18337140269509625985.Spec : Prop :=
  ∀ n, P18337140269509625985.a n = (A083392 n : ℚ)

end A083392

/-! ## A083392.P18053609394183277878

`A014255(n)-A133092(n+1)`
-/

namespace A083392.P18053609394183277878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n - A133092 (n + 1)

end

end A083392.P18053609394183277878

namespace A083392

/-- `A014255(n)-A133092(n+1)` -/
def P18053609394183277878.Spec : Prop :=
  ∀ n, P18053609394183277878.a n = A083392 n

end A083392

/-!
# A083393: Palindromes such that the sum of the digits is prime.

The programs for A083393, there is no canonical definition to state claims against.
-/

/-! ## A083393.P6422636991935539763

`∩[A002113(n+1), A028834(n+1)]`
-/

namespace A083393.P6422636991935539763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083393.P6422636991935539763

/-! ## A083393.P9733399199043280618

`∩[A028834(n+1), A110751(n+1)]`
-/

namespace A083393.P9733399199043280618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083393.P9733399199043280618

/-! ## A083393.P11602032290176427344

`record[A055483(A028834(n+1))]`
-/

namespace A083393.P11602032290176427344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A028834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083393.P11602032290176427344

/-! ## A083393.P7422215892211244514

`filter[A028834(n+1), A136522(#)]`
-/

namespace A083393.P7422215892211244514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A083393.P7422215892211244514

/-! ## A083393.P16218676308963613589

`eq[A007920(A007953(n)), A056965(n)]`
-/

namespace A083393.P16218676308963613589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083393.P16218676308963613589

/-!
# A083394: Terms of A083393 such that the sum of the factorials of the digits is prime.

The programs for A083394, there is no canonical definition to state claims against.
-/

/-! ## A083394.P12061654871925164543

`∩[A083393(n+1), A165451(n+1)]`
-/

namespace A083394.P12061654871925164543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083394.P12061654871925164543

/-! ## A083394.P13132036207761127669

`∩[A165451(n+1), A226732(n+1)]`
-/

namespace A083394.P13132036207761127669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083394.P13132036207761127669

/-!
# A083397: Largest prime factor of n! + k where k is the least positive integer such that n! + k is a square.

The programs for A083397, there is no canonical definition to state claims against.
-/

/-! ## A083397.P14748817975668674481

`A006530(ceil(sqrt((n+1)!)))%(3^n)`
-/

namespace A083397.P14748817975668674481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 ⌈Real.sqrt (Nat.factorial (n + 1) : ℝ)⌉.toNat) (3 ^ n : ℤ)

end

end A083397.P14748817975668674481

/-! ## A083397.P5597593552802665732

`∑{p}[A006530(A055228(n+1)), #]`
-/

namespace A083397.P5597593552802665732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A083397.P5597593552802665732

/-! ## A083397.P9718533060800742362

`∑{p}[A006530(sqrt(A087374(n+1))), #]`
-/

namespace A083397.P9718533060800742362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A087374 (n + 1) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A083397.P9718533060800742362

/-! ## A083397.P5510701959915144222

`A006530(ceil(sqrt((n+1)!)))-A000007(n)`
-/

namespace A083397.P5510701959915144222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈Real.sqrt (Nat.factorial (n + 1) : ℝ)⌉.toNat - A000007 n

end

end A083397.P5510701959915144222

/-! ## A083397.P13433307586646321872

`A006530(floor(sqrt((n+1)!))+1)*A057427(n)`
-/

namespace A083397.P13433307586646321872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.sqrt (Nat.factorial (n + 1)) + 1) * A057427 n

end

end A083397.P13433307586646321872

/-!
# A083399: Number of divisors of n that are not divisors of other divisors of n.

The programs for A083399, the canonical program `A083399.P16148020281325742632` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083399 has offset 1).

The definition of A083399 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A055212, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083399.P6262732276176031061

`A010553(A007947(n+1))`
-/

namespace A083399.P6262732276176031061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A007947 (n + 1)).toNat

end

end A083399.P6262732276176031061

namespace A083399

/-- `A010553(A007947(n+1))` -/
def P6262732276176031061.Spec : Prop :=
  ∀ n, P6262732276176031061.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P16148020281325742632

`A000005(n+1)-A055212(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A083399

/-- `A000005(n+1)-A055212(n+1)` -/
def P16148020281325742632.Spec : Prop :=
  ∀ n, P16148020281325742632.a n = A083399 (n + 1)

theorem P16148020281325742632.correct : P16148020281325742632.Spec := by
  intro n
  simp only [A083399, Nat.add_sub_cancel]

end A083399

/-! ## A083399.P16871276335417734510

`A000005(n+1)-A033273(n+1)+1`
-/

namespace A083399.P16871276335417734510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A033273 (n + 1) + 1

end

end A083399.P16871276335417734510

namespace A083399

/-- `A000005(n+1)-A033273(n+1)+1` -/
def P16871276335417734510.Spec : Prop :=
  ∀ n, P16871276335417734510.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P5843587130582624463

`∑{p}[n+1, gcd(n, #)]+1`
-/

namespace A083399.P5843587130582624463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p + 1

end

end A083399.P5843587130582624463

namespace A083399

/-- `∑{p}[n+1, gcd(n, #)]+1` -/
def P5843587130582624463.Spec : Prop :=
  ∀ n, (P5843587130582624463.a n : ℤ) = A083399 (n + 1)

end A083399

/-! ## A083399.P259111243847683169

`∑{e}[∏{p}[n+1, #], #]+1`
-/

namespace A083399.P259111243847683169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1

end

end A083399.P259111243847683169

namespace A083399

/-- `∑{e}[∏{p}[n+1, #], #]+1` -/
def P259111243847683169.Spec : Prop :=
  ∀ n, (P259111243847683169.a n : ℤ) = A083399 (n + 1)

end A083399

/-! ## A083399.P6627607553937636509

`1-∑{p}[n+1, or(#, -1)]`
-/

namespace A083399.P6627607553937636509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ p ∈ Nat.primeFactors (f1 n), Int.lor (p : ℤ) (-1)

end

end A083399.P6627607553937636509

namespace A083399

/-- `1-∑{p}[n+1, or(#, -1)]` -/
def P6627607553937636509.Spec : Prop :=
  ∀ n, P6627607553937636509.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P15334056613564268777

`∑{p}[n+1, ceil(1/#)]+1`
-/

namespace A083399.P15334056613564268777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ + 1

end

end A083399.P15334056613564268777

namespace A083399

/-- `∑{p}[n+1, ceil(1/#)]+1` -/
def P15334056613564268777.Spec : Prop :=
  ∀ n, P15334056613564268777.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P4108212144687987154

`1-∑{e}[n+1, or(#, -1)]`
-/

namespace A083399.P4108212144687987154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ p ∈ Nat.primeFactors (f1 n), Int.lor (Nat.factorization (f1 n) p : ℤ) (-1)

end

end A083399.P4108212144687987154

namespace A083399

/-- `1-∑{e}[n+1, or(#, -1)]` -/
def P4108212144687987154.Spec : Prop :=
  ∀ n, P4108212144687987154.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P16400837255938966619

`∑{e}[n+1, ceil(1/#)]+1`
-/

namespace A083399.P16400837255938966619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉ + 1

end

end A083399.P16400837255938966619

namespace A083399

/-- `∑{e}[n+1, ceil(1/#)]+1` -/
def P16400837255938966619.Spec : Prop :=
  ∀ n, P16400837255938966619.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P6240129497482179516

`1+A001221(n+1)`
-/

namespace A083399.P6240129497482179516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001221 (n + 1)

end

end A083399.P6240129497482179516

namespace A083399

/-- `1+A001221(n+1)` -/
def P6240129497482179516.Spec : Prop :=
  ∀ n, P6240129497482179516.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P6051919507021681398

`A229109(n+1)-n`
-/

namespace A083399.P6051919507021681398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1) - (n : ℤ)

end

end A083399.P6051919507021681398

namespace A083399

/-- `A229109(n+1)-n` -/
def P6051919507021681398.Spec : Prop :=
  ∀ n, P6051919507021681398.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P9307620467991960863

`∑{d}[n+1, A080339(#)]`
-/

namespace A083399.P9307620467991960863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080339 d

end

end A083399.P9307620467991960863

namespace A083399

/-- `∑{d}[n+1, A080339(#)]` -/
def P9307620467991960863.Spec : Prop :=
  ∀ n, P9307620467991960863.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P16651511341411450255

`A010553(∏{p}[n+1, #])`
-/

namespace A083399.P16651511341411450255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A083399.P16651511341411450255

namespace A083399

/-- `A010553(∏{p}[n+1, #])` -/
def P16651511341411450255.Spec : Prop :=
  ∀ n, P16651511341411450255.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P3529729120933203143

`A073093(∏{p}[n+1, #])`
-/

namespace A083399.P3529729120933203143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A083399.P3529729120933203143

namespace A083399

/-- `A073093(∏{p}[n+1, #])` -/
def P3529729120933203143.Spec : Prop :=
  ∀ n, P3529729120933203143.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P15214838629997641859

`A085082(∏{p}[n+1, #])`
-/

namespace A083399.P15214838629997641859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A083399.P15214838629997641859

namespace A083399

/-- `A085082(∏{p}[n+1, #])` -/
def P15214838629997641859.Spec : Prop :=
  ∀ n, P15214838629997641859.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P9725184859174884016

`A088873(∏{p}[n+1, #])`
-/

namespace A083399.P9725184859174884016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088873 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A083399.P9725184859174884016

namespace A083399

/-- `A088873(∏{p}[n+1, #])` -/
def P9725184859174884016.Spec : Prop :=
  ∀ n, P9725184859174884016.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P2757822743273928619

`A181796(∏{p}[n+1, #])`
-/

namespace A083399.P2757822743273928619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A083399.P2757822743273928619

namespace A083399

/-- `A181796(∏{p}[n+1, #])` -/
def P2757822743273928619.Spec : Prop :=
  ∀ n, P2757822743273928619.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P16097401329971992291

`A182860(∏{p}[n+1, #])`
-/

namespace A083399.P16097401329971992291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182860 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A083399.P16097401329971992291

namespace A083399

/-- `A182860(∏{p}[n+1, #])` -/
def P16097401329971992291.Spec : Prop :=
  ∀ n, P16097401329971992291.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P7280443455193881798

`A353861(∏{p}[n+1, #])`
-/

namespace A083399.P7280443455193881798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353861 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A083399.P7280443455193881798

namespace A083399

/-- `A353861(∏{p}[n+1, #])` -/
def P7280443455193881798.Spec : Prop :=
  ∀ n, P7280443455193881798.a n = A083399 (n + 1)

end A083399

/-! ## A083399.P1216238349947257801

`abs(A158210(n+1))+1`
-/

namespace A083399.P1216238349947257801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158210 (n + 1)| + 1

end

end A083399.P1216238349947257801

namespace A083399

/-- `abs(A158210(n+1))+1` -/
def P1216238349947257801.Spec : Prop :=
  ∀ n, P1216238349947257801.a n = A083399 (n + 1)

end A083399

