import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C001
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A016200: Expansion of g.f. 1/((1-x)*(1-2*x)*(1-6*x)).

The programs for A016200, the canonical program `A016200.P5190234407095336991` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016200 has offset 0).

The definition of A016200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016200.P5190234407095336991

`6*a(n-1)+2^(n+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016200

/-- `6*a(n-1)+2^(n+1)-1` -/
def P5190234407095336991.Spec : Prop :=
  ∀ n, P5190234407095336991.a n = A016200 n

theorem P5190234407095336991.correct : P5190234407095336991.Spec := by
  intro n
  simp only [A016200]

end A016200

/-! ## A016200.P2501291842443124852

`(9*6^n-5*2^n+1)/5`
-/

namespace A016200.P2501291842443124852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 6 ^ n : ℤ) - (5 * 2 ^ n : ℤ) + 1 : ℚ) / 5

end

end A016200.P2501291842443124852

namespace A016200

/-- `(9*6^n-5*2^n+1)/5` -/
def P2501291842443124852.Spec : Prop :=
  ∀ n, P2501291842443124852.a n = (A016200 n : ℚ)

end A016200

/-! ## A016200.P10592434067308130338

`A016129(n+1)-A003464(n+2)`
-/

namespace A016200.P10592434067308130338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 (n + 1) - A003464 (n + 2)

end

end A016200.P10592434067308130338

namespace A016200

/-- `A016129(n+1)-A003464(n+2)` -/
def P10592434067308130338.Spec : Prop :=
  ∀ n, P10592434067308130338.a n = A016200 n

end A016200

/-! ## A016200.P7568181050225814030

`∑[2*a(n-1)]+6*a(n-1)` with `a(0)=1`
-/

namespace A016200.P7568181050225814030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6 * a (n - 1)

end

end A016200.P7568181050225814030

namespace A016200

/-- `∑[2*a(n-1)]+6*a(n-1)` -/
def P7568181050225814030.Spec : Prop :=
  ∀ n, (P7568181050225814030.a n : ℤ) = A016200 n

end A016200

/-! ## A016200.P13656355974460430920

`a(n-1)+∑[6^n]+a(n-1)` with `a(0)=1`
-/

namespace A016200.P13656355974460430920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A016200.P13656355974460430920

namespace A016200

/-- `a(n-1)+∑[6^n]+a(n-1)` -/
def P13656355974460430920.Spec : Prop :=
  ∀ n, (P13656355974460430920.a n : ℤ) = A016200 n

end A016200

/-! ## A016200.P7293744348749563820

`∑[A016129(n)]`
-/

namespace A016200.P7293744348749563820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016200.P7293744348749563820

namespace A016200

/-- `∑[A016129(n)]` -/
def P7293744348749563820.Spec : Prop :=
  ∀ n, P7293744348749563820.a n = A016200 n

end A016200

/-! ## A016200.P14204411880397843625

`A199412(n)-2^n`
-/

namespace A016200.P14204411880397843625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199412 n - (2 ^ n : ℤ)

end

end A016200.P14204411880397843625

namespace A016200

/-- `A199412(n)-2^n` -/
def P14204411880397843625.Spec : Prop :=
  ∀ n, P14204411880397843625.a n = A016200 n

end A016200

/-! ## A016200.P17489268715087826625

`∑[A024023(n+1)*A131577(n)]+1`
-/

namespace A016200.P17489268715087826625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (n + 1) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A016200.P17489268715087826625

namespace A016200

/-- `∑[A024023(n+1)*A131577(n)]+1` -/
def P17489268715087826625.Spec : Prop :=
  ∀ n, P17489268715087826625.a n = A016200 n

end A016200

/-! ## A016200.P12811006348211628252

`A083066(n+1)-A000079(n+1)*A007051(n+1)`
-/

namespace A016200.P12811006348211628252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083066 (n + 1) - A000079 (n + 1) * A007051 (n + 1)

end

end A016200.P12811006348211628252

namespace A016200

/-- `A083066(n+1)-A000079(n+1)*A007051(n+1)` -/
def P12811006348211628252.Spec : Prop :=
  ∀ n, P12811006348211628252.a n = A016200 n

end A016200

/-!
# A016201: Expansion of g.f. 1/((1-x)*(1-2*x)*(1-7*x)).

The programs for A016201, the canonical program `A016201.P3532214094778051704` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016201 has offset 0).

The definition of A016201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016201.P3532214094778051704

`7*a(n-1)+2^(n+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016201

/-- `7*a(n-1)+2^(n+1)-1` -/
def P3532214094778051704.Spec : Prop :=
  ∀ n, P3532214094778051704.a n = A016201 n

theorem P3532214094778051704.correct : P3532214094778051704.Spec := by
  intro n
  simp only [A016201]

end A016201

/-! ## A016201.P3519773212562372095

`A016130(n+1)-A023000(n+2)`
-/

namespace A016201.P3519773212562372095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016130 (n + 1) - A023000 (n + 2)

end

end A016201.P3519773212562372095

namespace A016201

/-- `A016130(n+1)-A023000(n+2)` -/
def P3519773212562372095.Spec : Prop :=
  ∀ n, P3519773212562372095.a n = A016201 n

end A016201

/-! ## A016201.P18245995070458685635

`(49*7^n-24*2^n+5)/30`
-/

namespace A016201.P18245995070458685635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((49 * 7 ^ n : ℤ) - (24 * 2 ^ n : ℤ) + 5 : ℚ) / 30

end

end A016201.P18245995070458685635

namespace A016201

/-- `(49*7^n-24*2^n+5)/30` -/
def P18245995070458685635.Spec : Prop :=
  ∀ n, P18245995070458685635.a n = (A016201 n : ℚ)

end A016201

/-! ## A016201.P7469961081861314029

`∑[2^n+7*a(n-1)]` with `a(0)=1`
-/

namespace A016201.P7469961081861314029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 ^ n + 7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016201.P7469961081861314029

namespace A016201

/-- `∑[2^n+7*a(n-1)]` -/
def P7469961081861314029.Spec : Prop :=
  ∀ n, (P7469961081861314029.a n : ℤ) = A016201 n

end A016201

/-! ## A016201.P5772926424151964750

`∑[lcm(7, a(n-1))+2^n]` with `a(0)=1`
-/

namespace A016201.P5772926424151964750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 7 (f1 (n - 1)) + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016201.P5772926424151964750

namespace A016201

/-- `∑[lcm(7, a(n-1))+2^n]` -/
def P5772926424151964750.Spec : Prop :=
  ∀ n, (P5772926424151964750.a n : ℤ) = A016201 n

end A016201

/-! ## A016201.P8905903973840255568

`∑[2*a(n-1)]+7*a(n-1)` with `a(0)=1`
-/

namespace A016201.P8905903973840255568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7 * a (n - 1)

end

end A016201.P8905903973840255568

namespace A016201

/-- `∑[2*a(n-1)]+7*a(n-1)` -/
def P8905903973840255568.Spec : Prop :=
  ∀ n, (P8905903973840255568.a n : ℤ) = A016201 n

end A016201

/-! ## A016201.P5859065918710030547

`a(n-1)+∑[7^n]+a(n-1)` with `a(0)=1`
-/

namespace A016201.P5859065918710030547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A016201.P5859065918710030547

namespace A016201

/-- `a(n-1)+∑[7^n]+a(n-1)` -/
def P5859065918710030547.Spec : Prop :=
  ∀ n, (P5859065918710030547.a n : ℤ) = A016201 n

end A016201

/-! ## A016201.P14813349630772183405

`∑[A016130(n)]`
-/

namespace A016201.P14813349630772183405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016201.P14813349630772183405

namespace A016201

/-- `∑[A016130(n)]` -/
def P14813349630772183405.Spec : Prop :=
  ∀ n, P14813349630772183405.a n = A016201 n

end A016201

/-! ## A016201.P8949408776327668940

`A126646(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A016201.P8949408776327668940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126646 n + 7 * a (n - 1)

end

end A016201.P8949408776327668940

namespace A016201

/-- `A126646(n)+7*a(n-1)` -/
def P8949408776327668940.Spec : Prop :=
  ∀ n, P8949408776327668940.a n = A016201 n

end A016201

/-! ## A016201.P6631896789198601973

`2*A016212(n)-A016276(n)`
-/

namespace A016201.P6631896789198601973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016212 n - A016276 n

end

end A016201.P6631896789198601973

namespace A016201

/-- `2*A016212(n)-A016276(n)` -/
def P6631896789198601973.Spec : Prop :=
  ∀ n, P6631896789198601973.a n = A016201 n

end A016201

/-!
# A016202: Inverse of 2193rd cyclotomic polynomial.

The programs for A016202, there is no canonical definition to state claims against.
-/

/-! ## A016202.P4652193983990894791

`A015896(n*A161618(n+1))`
-/

namespace A016202.P4652193983990894791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015896 ((n : ℤ) * A161618 (n + 1)).toNat

end

end A016202.P4652193983990894791

/-!
# A016203: Expansion of g.f. 1/((1-x)*(1-2*x)*(1-8*x)).

The programs for A016203, the canonical program `A016203.P10858156780492124739` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016203 has offset 0).

The definition of A016203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016203.P10858156780492124739

`8*a(n-1)+2^(n+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016203

/-- `8*a(n-1)+2^(n+1)-1` -/
def P10858156780492124739.Spec : Prop :=
  ∀ n, P10858156780492124739.a n = A016203 n

theorem P10858156780492124739.correct : P10858156780492124739.Spec := by
  intro n
  simp only [A016203]

end A016203

/-! ## A016203.P6208469196373841706

`(4*8^(n+1)-7*2^(n+1)+3)/21`
-/

namespace A016203.P6208469196373841706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 8 ^ (n + 1) : ℤ) - (7 * 2 ^ (n + 1) : ℤ) + 3 : ℚ) / 21

end

end A016203.P6208469196373841706

namespace A016203

/-- `(4*8^(n+1)-7*2^(n+1)+3)/21` -/
def P6208469196373841706.Spec : Prop :=
  ∀ n, P6208469196373841706.a n = (A016203 n : ℚ)

end A016203

/-! ## A016203.P7754638942783879195

`A016131(n+1)-A023001(n+2)`
-/

namespace A016203.P7754638942783879195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016131 (n + 1) - A023001 (n + 2)

end

end A016203.P7754638942783879195

namespace A016203

/-- `A016131(n+1)-A023001(n+2)` -/
def P7754638942783879195.Spec : Prop :=
  ∀ n, P7754638942783879195.a n = A016203 n

end A016203

/-! ## A016203.P8481390610304551975

`∑[2*a(n-1)]+8*a(n-1)` with `a(0)=1`
-/

namespace A016203.P8481390610304551975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1)

end

end A016203.P8481390610304551975

namespace A016203

/-- `∑[2*a(n-1)]+8*a(n-1)` -/
def P8481390610304551975.Spec : Prop :=
  ∀ n, (P8481390610304551975.a n : ℤ) = A016203 n

end A016203

/-! ## A016203.P4669683112791507526

`a(n-1)+∑[8^n]+a(n-1)` with `a(0)=1`
-/

namespace A016203.P4669683112791507526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A016203.P4669683112791507526

namespace A016203

/-- `a(n-1)+∑[8^n]+a(n-1)` -/
def P4669683112791507526.Spec : Prop :=
  ∀ n, (P4669683112791507526.a n : ℤ) = A016203 n

end A016203

/-! ## A016203.P18094075684247564541

`∑[A016131(n)]`
-/

namespace A016203.P18094075684247564541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016203.P18094075684247564541

namespace A016203

/-- `∑[A016131(n)]` -/
def P18094075684247564541.Spec : Prop :=
  ∀ n, P18094075684247564541.a n = A016203 n

end A016203

/-! ## A016203.P2525906322973650595

`∑[A083333(2*n+1)]`
-/

namespace A016203.P2525906322973650595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083333 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016203.P2525906322973650595

namespace A016203

/-- `∑[A083333(2*n+1)]` -/
def P2525906322973650595.Spec : Prop :=
  ∀ n, P2525906322973650595.a n = A016203 n

end A016203

/-! ## A016203.P4076833500516450114

`A000225(n+1)+8*a(n-1)` with `a(0)=1`
-/

namespace A016203.P4076833500516450114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000225 (n + 1) + 8 * a (n - 1)

end

end A016203.P4076833500516450114

namespace A016203

/-- `A000225(n+1)+8*a(n-1)` -/
def P4076833500516450114.Spec : Prop :=
  ∀ n, P4076833500516450114.a n = A016203 n

end A016203

/-! ## A016203.P8394665629171759310

`∑[A000079(3*n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A016203.P8394665629171759310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A016203.P8394665629171759310

namespace A016203

/-- `∑[A000079(3*n)]+2*a(n-1)` -/
def P8394665629171759310.Spec : Prop :=
  ∀ n, P8394665629171759310.a n = A016203 n

end A016203

/-! ## A016203.P7292634425957181154

`A016290(n)-∑[A160873(n+1)]`
-/

namespace A016203.P7292634425957181154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016203.P7292634425957181154

namespace A016203

/-- `A016290(n)-∑[A160873(n+1)]` -/
def P7292634425957181154.Spec : Prop :=
  ∀ n, P7292634425957181154.a n = A016203 n

end A016203

/-! ## A016203.P18371180102281836331

`∑[A147538(n+1)]-A006096(n+3)`
-/

namespace A016203.P18371180102281836331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006096 (n + 3)

end

end A016203.P18371180102281836331

namespace A016203

/-- `∑[A147538(n+1)]-A006096(n+3)` -/
def P18371180102281836331.Spec : Prop :=
  ∀ n, P18371180102281836331.a n = A016203 n

end A016203

/-! ## A016203.P15407682316169866236

`∑[A001045(3*n+2)]-A000975(n)`
-/

namespace A016203.P15407682316169866236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000975 n

end

end A016203.P15407682316169866236

namespace A016203

/-- `∑[A001045(3*n+2)]-A000975(n)` -/
def P15407682316169866236.Spec : Prop :=
  ∀ n, P15407682316169866236.a n = A016203 n

end A016203

/-! ## A016203.P18235953632848078885

`∑[A167167(3*n+2)]-A000975(n)`
-/

namespace A016203.P18235953632848078885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000975 n

end

end A016203.P18235953632848078885

namespace A016203

/-- `∑[A167167(3*n+2)]-A000975(n)` -/
def P18235953632848078885.Spec : Prop :=
  ∀ n, P18235953632848078885.a n = A016203 n

end A016203

/-! ## A016203.P10895790205199117649

`∑[C(2^(n+1)+1, 3)]`
-/

namespace A016203.P10895790205199117649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (n + 1) + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016203.P10895790205199117649

namespace A016203

/-- `∑[C(2^(n+1)+1, 3)]` -/
def P10895790205199117649.Spec : Prop :=
  ∀ n, (P10895790205199117649.a n : ℤ) = A016203 n

end A016203

/-!
# A016204: Expansion of 1/((1-x)*(1-2*x)*(1-9*x)).

The programs for A016204, the canonical program `A016204.P13156318196728743247` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016204 has offset 0).

The definition of A016204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016204.P13156318196728743247

`9*a(n-1)+2^(n+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016204

/-- `9*a(n-1)+2^(n+1)-1` -/
def P13156318196728743247.Spec : Prop :=
  ∀ n, P13156318196728743247.a n = A016204 n

theorem P13156318196728743247.correct : P13156318196728743247.Spec := by
  intro n
  simp only [A016204]

end A016204

/-! ## A016204.P16670991089574366601

`(9^(n+2)-2^(n+5)+7)/56`
-/

namespace A016204.P16670991089574366601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 2) : ℤ) - (2 ^ (n + 5) : ℤ) + 7 : ℚ) / 56

end

end A016204.P16670991089574366601

namespace A016204

/-- `(9^(n+2)-2^(n+5)+7)/56` -/
def P16670991089574366601.Spec : Prop :=
  ∀ n, P16670991089574366601.a n = (A016204 n : ℚ)

end A016204

/-! ## A016204.P2270478952177266901

`∑[2^n+9*a(n-1)]` with `a(0)=1`
-/

namespace A016204.P2270478952177266901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 ^ n + 9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016204.P2270478952177266901

namespace A016204

/-- `∑[2^n+9*a(n-1)]` -/
def P2270478952177266901.Spec : Prop :=
  ∀ n, (P2270478952177266901.a n : ℤ) = A016204 n

end A016204

/-! ## A016204.P17598120263354451134

`∑[lcm(9, a(n-1))+2^n]` with `a(0)=1`
-/

namespace A016204.P17598120263354451134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 9 (f1 (n - 1)) + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016204.P17598120263354451134

namespace A016204

/-- `∑[lcm(9, a(n-1))+2^n]` -/
def P17598120263354451134.Spec : Prop :=
  ∀ n, (P17598120263354451134.a n : ℤ) = A016204 n

end A016204

/-! ## A016204.P4318208190640736076

`∑[9*a(n-1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A016204.P4318208190640736076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A016204.P4318208190640736076

namespace A016204

/-- `∑[9*a(n-1)]+2*a(n-1)` -/
def P4318208190640736076.Spec : Prop :=
  ∀ n, (P4318208190640736076.a n : ℤ) = A016204 n

end A016204

/-! ## A016204.P2385510034661401617

`a(n-1)+∑[9^n]+a(n-1)` with `a(0)=1`
-/

namespace A016204.P2385510034661401617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A016204.P2385510034661401617

namespace A016204

/-- `a(n-1)+∑[9^n]+a(n-1)` -/
def P2385510034661401617.Spec : Prop :=
  ∀ n, (P2385510034661401617.a n : ℤ) = A016204 n

end A016204

/-! ## A016204.P1409631203360350903

`∑[A016133(n)]`
-/

namespace A016204.P1409631203360350903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016204.P1409631203360350903

namespace A016204

/-- `∑[A016133(n)]` -/
def P1409631203360350903.Spec : Prop :=
  ∀ n, P1409631203360350903.a n = A016204 n

end A016204

/-! ## A016204.P2179600585237147900

`∑[A135247(2*n)]`
-/

namespace A016204.P2179600585237147900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135247 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016204.P2179600585237147900

namespace A016204

/-- `∑[A135247(2*n)]` -/
def P2179600585237147900.Spec : Prop :=
  ∀ n, P2179600585237147900.a n = A016204 n

end A016204

/-! ## A016204.P6959381517117271387

`∑[A001019(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A016204.P6959381517117271387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A016204.P6959381517117271387

namespace A016204

/-- `∑[A001019(n)]+2*a(n-1)` -/
def P6959381517117271387.Spec : Prop :=
  ∀ n, P6959381517117271387.a n = A016204 n

end A016204

/-! ## A016204.P7838702217965329669

`∑[A000079(n)]+9*a(n-1)` with `a(0)=1`
-/

namespace A016204.P7838702217965329669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9 * a (n - 1)

end

end A016204.P7838702217965329669

namespace A016204

/-- `∑[A000079(n)]+9*a(n-1)` -/
def P7838702217965329669.Spec : Prop :=
  ∀ n, P7838702217965329669.a n = A016204 n

end A016204

/-! ## A016204.P1535262496414924401

`∑[∑[A011782(n)]]+9*a(n-1)` with `a(0)=1`
-/

namespace A016204.P1535262496414924401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9 * a (n - 1)

end

end A016204.P1535262496414924401

namespace A016204

/-- `∑[∑[A011782(n)]]+9*a(n-1)` -/
def P1535262496414924401.Spec : Prop :=
  ∀ n, P1535262496414924401.a n = A016204 n

end A016204

/-! ## A016204.P3676761996455165079

`2*A002451(n)-A021084(n)`
-/

namespace A016204.P3676761996455165079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002451 n - A021084 n

end

end A016204.P3676761996455165079

namespace A016204

/-- `2*A002451(n)-A021084(n)` -/
def P3676761996455165079.Spec : Prop :=
  ∀ n, P3676761996455165079.a n = A016204 n

end A016204

/-!
# A016205: Expansion of g.f. 1/((1-x)*(1-2*x)*(1-10*x)).

The programs for A016205, the canonical program `A016205.P409179774075211988` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016205 has offset 0).

The definition of A016205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016205.P409179774075211988

`10*a(n-1)+2^(n+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016205

/-- `10*a(n-1)+2^(n+1)-1` -/
def P409179774075211988.Spec : Prop :=
  ∀ n, P409179774075211988.a n = A016205 n

theorem P409179774075211988.correct : P409179774075211988.Spec := by
  intro n
  simp only [A016205]

end A016205

/-! ## A016205.P3892293880982780008

`(25*10^n-9*2^n+2)/18`
-/

namespace A016205.P3892293880982780008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((25 * 10 ^ n : ℤ) - (9 * 2 ^ n : ℤ) + 2 : ℚ) / 18

end

end A016205.P3892293880982780008

namespace A016205

/-- `(25*10^n-9*2^n+2)/18` -/
def P3892293880982780008.Spec : Prop :=
  ∀ n, P3892293880982780008.a n = (A016205 n : ℚ)

end A016205

/-! ## A016205.P12464916031133777589

`A016134(n+1)-A002275(n+2)`
-/

namespace A016205.P12464916031133777589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016134 (n + 1) - A002275 (n + 2)

end

end A016205.P12464916031133777589

namespace A016205

/-- `A016134(n+1)-A002275(n+2)` -/
def P12464916031133777589.Spec : Prop :=
  ∀ n, P12464916031133777589.a n = A016205 n

end A016205

/-! ## A016205.P7245734587216566112

`∑[2*5*a(n-1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A016205.P7245734587216566112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A016205.P7245734587216566112

namespace A016205

/-- `∑[2*5*a(n-1)]+2*a(n-1)` -/
def P7245734587216566112.Spec : Prop :=
  ∀ n, (P7245734587216566112.a n : ℤ) = A016205 n

end A016205

/-! ## A016205.P4283211272531585827

`∑[A016134(n)]`
-/

namespace A016205.P4283211272531585827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016205.P4283211272531585827

namespace A016205

/-- `∑[A016134(n)]` -/
def P4283211272531585827.Spec : Prop :=
  ∀ n, P4283211272531585827.a n = A016205 n

end A016205

/-! ## A016205.P8878979093417601813

`A126646(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A016205.P8878979093417601813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126646 n + 10 * a (n - 1)

end

end A016205.P8878979093417601813

namespace A016205

/-- `A126646(n)+10*a(n-1)` -/
def P8878979093417601813.Spec : Prop :=
  ∀ n, P8878979093417601813.a n = A016205 n

end A016205

/-! ## A016205.P9693026849725200628

`∑[A011557(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A016205.P9693026849725200628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A016205.P9693026849725200628

namespace A016205

/-- `∑[A011557(n)]+2*a(n-1)` -/
def P9693026849725200628.Spec : Prop :=
  ∀ n, P9693026849725200628.a n = A016205 n

end A016205

/-! ## A016205.P9916423836935737202

`∑[A000079(n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A016205.P9916423836935737202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A016205.P9916423836935737202

namespace A016205

/-- `∑[A000079(n)]+10*a(n-1)` -/
def P9916423836935737202.Spec : Prop :=
  ∀ n, P9916423836935737202.a n = A016205 n

end A016205

/-! ## A016205.P18295011496244310973

`A000042(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A016205.P18295011496244310973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000042 (n + 1) + 2 * a (n - 1)

end

end A016205.P18295011496244310973

namespace A016205

/-- `A000042(n+1)+2*a(n-1)` -/
def P18295011496244310973.Spec : Prop :=
  ∀ n, P18295011496244310973.a n = A016205 n

end A016205

/-! ## A016205.P1634959821278852034

`A002275(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A016205.P1634959821278852034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002275 (n + 1) + 2 * a (n - 1)

end

end A016205.P1634959821278852034

namespace A016205

/-- `A002275(n+1)+2*a(n-1)` -/
def P1634959821278852034.Spec : Prop :=
  ∀ n, P1634959821278852034.a n = A016205 n

end A016205

/-! ## A016205.P10808467087626490366

`A000225(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A016205.P10808467087626490366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000225 (n + 1) + 10 * a (n - 1)

end

end A016205.P10808467087626490366

namespace A016205

/-- `A000225(n+1)+10*a(n-1)` -/
def P10808467087626490366.Spec : Prop :=
  ∀ n, P10808467087626490366.a n = A016205 n

end A016205

/-! ## A016205.P10022794261478432988

`2*A016215(n)-A016279(n)`
-/

namespace A016205.P10022794261478432988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016215 n - A016279 n

end

end A016205.P10022794261478432988

namespace A016205

/-- `2*A016215(n)-A016279(n)` -/
def P10022794261478432988.Spec : Prop :=
  ∀ n, P10022794261478432988.a n = A016205 n

end A016205

/-! ## A016205.P12827985339517413628

`2*A016225(n)-A021092(n)`
-/

namespace A016205.P12827985339517413628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016225 n - A021092 n

end

end A016205.P12827985339517413628

namespace A016205

/-- `2*A016225(n)-A021092(n)` -/
def P12827985339517413628.Spec : Prop :=
  ∀ n, P12827985339517413628.a n = A016205 n

end A016205

/-!
# A016206: Expansion of 1/((1-x)*(1-2x)*(1-11x)).

The programs for A016206, the canonical program `A016206.P13466425216225332674` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016206 has offset 0).

The definition of A016206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016206.P13466425216225332674

`11*a(n-1)+2^(n+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016206

/-- `11*a(n-1)+2^(n+1)-1` -/
def P13466425216225332674.Spec : Prop :=
  ∀ n, P13466425216225332674.a n = A016206 n

theorem P13466425216225332674.correct : P13466425216225332674.Spec := by
  intro n
  simp only [A016206]

end A016206

/-! ## A016206.P10484639703929935064

`(121*11^n-40*2^n+9)/90`
-/

namespace A016206.P10484639703929935064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((121 * 11 ^ n : ℤ) - (40 * 2 ^ n : ℤ) + 9 : ℚ) / 90

end

end A016206.P10484639703929935064

namespace A016206

/-- `(121*11^n-40*2^n+9)/90` -/
def P10484639703929935064.Spec : Prop :=
  ∀ n, P10484639703929935064.a n = (A016206 n : ℚ)

end A016206

/-! ## A016206.P9702435513715502121

`∑[A016135(n)]`
-/

namespace A016206.P9702435513715502121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016206.P9702435513715502121

namespace A016206

/-- `∑[A016135(n)]` -/
def P9702435513715502121.Spec : Prop :=
  ∀ n, P9702435513715502121.a n = A016206 n

end A016206

/-! ## A016206.P6478730270605018394

`∑[A139740(n+1)/9]`
-/

namespace A016206.P6478730270605018394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139740 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016206.P6478730270605018394

namespace A016206

/-- `∑[A139740(n+1)/9]` -/
def P6478730270605018394.Spec : Prop :=
  ∀ n, P6478730270605018394.a n = (A016206 n : ℚ)

end A016206

/-! ## A016206.P324211563460280977

`A126646(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A016206.P324211563460280977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126646 n + 11 * a (n - 1)

end

end A016206.P324211563460280977

namespace A016206

/-- `A126646(n)+11*a(n-1)` -/
def P324211563460280977.Spec : Prop :=
  ∀ n, P324211563460280977.a n = A016206 n

end A016206

/-! ## A016206.P7300749007145786235

`∑[A001020(n)+2*a(n-1)]` with `a(0)=1`
-/

namespace A016206.P7300749007145786235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001020 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016206.P7300749007145786235

namespace A016206

/-- `∑[A001020(n)+2*a(n-1)]` -/
def P7300749007145786235.Spec : Prop :=
  ∀ n, P7300749007145786235.a n = A016206 n

end A016206

/-! ## A016206.P6075552057186922528

`∑[A000079(n)]+11*a(n-1)` with `a(0)=1`
-/

namespace A016206.P6075552057186922528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 11 * a (n - 1)

end

end A016206.P6075552057186922528

namespace A016206

/-- `∑[A000079(n)]+11*a(n-1)` -/
def P6075552057186922528.Spec : Prop :=
  ∀ n, P6075552057186922528.a n = A016206 n

end A016206

/-! ## A016206.P10125993278126604071

`A000225(n+1)+11*a(n-1)` with `a(0)=1`
-/

namespace A016206.P10125993278126604071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000225 (n + 1) + 11 * a (n - 1)

end

end A016206.P10125993278126604071

namespace A016206

/-- `A000225(n+1)+11*a(n-1)` -/
def P10125993278126604071.Spec : Prop :=
  ∀ n, P10125993278126604071.a n = A016206 n

end A016206

/-! ## A016206.P4012900482105486555

`A089633(∑[n+1])+11*a(n-1)` with `a(0)=1`
-/

namespace A016206.P4012900482105486555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089633 (∑ j ∈ Finset.range (n + 1), f1 j) + 11 * a (n - 1)

end

end A016206.P4012900482105486555

namespace A016206

/-- `A089633(∑[n+1])+11*a(n-1)` -/
def P4012900482105486555.Spec : Prop :=
  ∀ n, P4012900482105486555.a n = A016206 n

end A016206

/-!
# A016207: Expansion of g.f. 1/((1-x)*(1-2*x)*(1-12*x)).

The programs for A016207, the canonical program `A016207.P168413300872251632` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016207 has offset 0).

The definition of A016207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016207.P168413300872251632

`12*a(n-1)+2^(n+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016207

/-- `12*a(n-1)+2^(n+1)-1` -/
def P168413300872251632.Spec : Prop :=
  ∀ n, P168413300872251632.a n = A016207 n

theorem P168413300872251632.correct : P168413300872251632.Spec := by
  intro n
  simp only [A016207]

end A016207

/-! ## A016207.P13639242332627186175

`A016136(n+1)-A016125(n+1)`
-/

namespace A016207.P13639242332627186175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016136 (n + 1) - A016125 (n + 1)

end

end A016207.P13639242332627186175

namespace A016207

/-- `A016136(n+1)-A016125(n+1)` -/
def P13639242332627186175.Spec : Prop :=
  ∀ n, P13639242332627186175.a n = A016207 n

end A016207

/-! ## A016207.P5390845413822541090

`(72*12^n-22*2^n+5)/55`
-/

namespace A016207.P5390845413822541090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((72 * 12 ^ n : ℤ) - (22 * 2 ^ n : ℤ) + 5 : ℚ) / 55

end

end A016207.P5390845413822541090

namespace A016207

/-- `(72*12^n-22*2^n+5)/55` -/
def P5390845413822541090.Spec : Prop :=
  ∀ n, P5390845413822541090.a n = (A016207 n : ℚ)

end A016207

/-! ## A016207.P15381746547552409061

`∑[A016136(n)]`
-/

namespace A016207.P15381746547552409061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016207.P15381746547552409061

namespace A016207

/-- `∑[A016136(n)]` -/
def P15381746547552409061.Spec : Prop :=
  ∀ n, P15381746547552409061.a n = A016207 n

end A016207

/-! ## A016207.P13530055819193940505

`A016125(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016207.P13530055819193940505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016125 n + 2 * a (n - 1)

end

end A016207.P13530055819193940505

namespace A016207

/-- `A016125(n)+2*a(n-1)` -/
def P13530055819193940505.Spec : Prop :=
  ∀ n, P13530055819193940505.a n = A016207 n

end A016207

/-! ## A016207.P18031716893455353009

`A126646(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A016207.P18031716893455353009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126646 n + 12 * a (n - 1)

end

end A016207.P18031716893455353009

namespace A016207

/-- `A126646(n)+12*a(n-1)` -/
def P18031716893455353009.Spec : Prop :=
  ∀ n, P18031716893455353009.a n = A016207 n

end A016207

/-!
# A016208: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)).

The programs for A016208, the canonical program `A016208.P2990751310479461956` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016208 has offset 0).

The definition of A016208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016208.P2990751310479461956

`7*a(n-1)-12*a(n-2)+1` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016208

/-- `7*a(n-1)-12*a(n-2)+1` -/
def P2990751310479461956.Spec : Prop :=
  ∀ n, P2990751310479461956.a n = A016208 n

theorem P2990751310479461956.correct : P2990751310479461956.Spec := by
  intro n
  simp only [A016208]

end A016208

/-! ## A016208.P9633404559075055546

`∑[4^(n+1)-3^(n+1)]`
-/

namespace A016208.P9633404559075055546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016208.P9633404559075055546

namespace A016208

/-- `∑[4^(n+1)-3^(n+1)]` -/
def P9633404559075055546.Spec : Prop :=
  ∀ n, P9633404559075055546.a n = A016208 n

end A016208

/-! ## A016208.P1835453439271106875

`∑[3*a(n-1)]+4*a(n-1)` with `a(0)=1`
-/

namespace A016208.P1835453439271106875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A016208.P1835453439271106875

namespace A016208

/-- `∑[3*a(n-1)]+4*a(n-1)` -/
def P1835453439271106875.Spec : Prop :=
  ∀ n, (P1835453439271106875.a n : ℤ) = A016208 n

end A016208

/-! ## A016208.P17564060404865116270

`4^(n+1)+a(n-1)-3^(n+1)` with `a(0)=1`
-/

namespace A016208.P17564060404865116270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ (n + 1) : ℤ) + (a (n - 1) - (3 ^ (n + 1) : ℤ))

end

end A016208.P17564060404865116270

namespace A016208

/-- `4^(n+1)+a(n-1)-3^(n+1)` -/
def P17564060404865116270.Spec : Prop :=
  ∀ n, P17564060404865116270.a n = A016208 n

end A016208

/-! ## A016208.P890643900362365207

`A162725(n+2)-1`
-/

namespace A016208.P890643900362365207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162725 (n + 2) - 1

end

end A016208.P890643900362365207

namespace A016208

/-- `A162725(n+2)-1` -/
def P890643900362365207.Spec : Prop :=
  ∀ n, P890643900362365207.a n = A016208 n

end A016208

/-! ## A016208.P1181363557733010612

`A000773(2*n+5)`
-/

namespace A016208.P1181363557733010612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000773 (2 * n + 5)

end

end A016208.P1181363557733010612

namespace A016208

/-- `A000773(2*n+5)` -/
def P1181363557733010612.Spec : Prop :=
  ∀ n, P1181363557733010612.a n = A016208 n

end A016208

/-! ## A016208.P6441683072326963542

`A120664(n+2)/2-1`
-/

namespace A016208.P6441683072326963542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120664 (n + 2) : ℚ) / 2 - 1

end

end A016208.P6441683072326963542

namespace A016208

/-- `A120664(n+2)/2-1` -/
def P6441683072326963542.Spec : Prop :=
  ∀ n, P6441683072326963542.a n = (A016208 n : ℚ)

end A016208

/-! ## A016208.P13240560540298462361

`A304974(2*n+5)/2`
-/

namespace A016208.P13240560540298462361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304974 (2 * n + 5) : ℚ) / 2

end

end A016208.P13240560540298462361

namespace A016208

/-- `A304974(2*n+5)/2` -/
def P13240560540298462361.Spec : Prop :=
  ∀ n, P13240560540298462361.a n = (A016208 n : ℚ)

end A016208

/-! ## A016208.P16140786954445525543

`A085282(n+2)-3^(n+2)`
-/

namespace A016208.P16140786954445525543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 (n + 2) - (3 ^ (n + 2) : ℤ)

end

end A016208.P16140786954445525543

namespace A016208

/-- `A085282(n+2)-3^(n+2)` -/
def P16140786954445525543.Spec : Prop :=
  ∀ n, P16140786954445525543.a n = A016208 n

end A016208

/-! ## A016208.P7659359727236823264

`A005061(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A016208.P7659359727236823264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005061 (n + 1) + a (n - 1)

end

end A016208.P7659359727236823264

namespace A016208

/-- `A005061(n+1)+a(n-1)` -/
def P7659359727236823264.Spec : Prop :=
  ∀ n, P7659359727236823264.a n = A016208 n

end A016208

/-! ## A016208.P15926374821139371138

`(A171477(n)+A016269(n))/2`
-/

namespace A016208.P15926374821139371138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171477 n + A016269 n : ℚ) / 2

end

end A016208.P15926374821139371138

namespace A016208

/-- `(A171477(n)+A016269(n))/2` -/
def P15926374821139371138.Spec : Prop :=
  ∀ n, P15926374821139371138.a n = (A016208 n : ℚ)

end A016208

/-! ## A016208.P15368281959491586635

`A080674(n+1)-A029858(n+2)`
-/

namespace A016208.P15368281959491586635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080674 (n + 1) - A029858 (n + 2)

end

end A016208.P15368281959491586635

namespace A016208

/-- `A080674(n+1)-A029858(n+2)` -/
def P15368281959491586635.Spec : Prop :=
  ∀ n, P15368281959491586635.a n = A016208 n

end A016208

/-! ## A016208.P11588959487794232197

`A002450(n+2)-A003462(n+2)`
-/

namespace A016208.P11588959487794232197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 2) - A003462 (n + 2)

end

end A016208.P11588959487794232197

namespace A016208

/-- `A002450(n+2)-A003462(n+2)` -/
def P11588959487794232197.Spec : Prop :=
  ∀ n, P11588959487794232197.a n = A016208 n

end A016208

/-! ## A016208.P1408890686019361414

`A047849(n+2)-A007051(n+2)`
-/

namespace A016208.P1408890686019361414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 (n + 2) - A007051 (n + 2)

end

end A016208.P1408890686019361414

namespace A016208

/-- `A047849(n+2)-A007051(n+2)` -/
def P1408890686019361414.Spec : Prop :=
  ∀ n, P1408890686019361414.a n = A016208 n

end A016208

/-! ## A016208.P17071863071875462596

`A081674(n+2)-A002450(n+2)`
-/

namespace A016208.P17071863071875462596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081674 (n + 2) - A002450 (n + 2)

end

end A016208.P17071863071875462596

namespace A016208

/-- `A081674(n+2)-A002450(n+2)` -/
def P17071863071875462596.Spec : Prop :=
  ∀ n, P17071863071875462596.a n = A016208 n

end A016208

/-! ## A016208.P4143481854836784698

`A005061(n+2)-A081674(n+2)`
-/

namespace A016208.P4143481854836784698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 2) - A081674 (n + 2)

end

end A016208.P4143481854836784698

namespace A016208

/-- `A005061(n+2)-A081674(n+2)` -/
def P4143481854836784698.Spec : Prop :=
  ∀ n, P4143481854836784698.a n = A016208 n

end A016208

/-! ## A016208.P7803119807594967920

`A038721(n+1)-A000453(n+4)`
-/

namespace A016208.P7803119807594967920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038721 (n + 1) - A000453 (n + 4)

end

end A016208.P7803119807594967920

namespace A016208

/-- `A038721(n+1)-A000453(n+4)` -/
def P7803119807594967920.Spec : Prop :=
  ∀ n, P7803119807594967920.a n = A016208 n

end A016208

/-! ## A016208.P12601033394651438036

`2*A016269(n)-A000453(n+4)`
-/

namespace A016208.P12601033394651438036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016269 n - A000453 (n + 4)

end

end A016208.P12601033394651438036

namespace A016208

/-- `2*A016269(n)-A000453(n+4)` -/
def P12601033394651438036.Spec : Prop :=
  ∀ n, P12601033394651438036.a n = A016208 n

end A016208

/-!
# A016209: Expansion of 1/((1-x)(1-3x)(1-5x)).

The programs for A016209, the canonical program `A016209.P10071193789235118769` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016209 has offset 0).

The definition of A016209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016209.P10071193789235118769

`8*a(n-1)-15*a(n-2)+1` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016209

/-- `8*a(n-1)-15*a(n-2)+1` -/
def P10071193789235118769.Spec : Prop :=
  ∀ n, P10071193789235118769.a n = A016209 n

theorem P10071193789235118769.correct : P10071193789235118769.Spec := by
  intro n
  simp only [A016209]

end A016209

/-! ## A016209.P14602303880103816740

`a(n-1)+A005059(n+1)` with `a(0)=1`
-/

namespace A016209.P14602303880103816740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A005059 (n + 1)

end

end A016209.P14602303880103816740

namespace A016209

/-- `a(n-1)+A005059(n+1)` -/
def P14602303880103816740.Spec : Prop :=
  ∀ n, P14602303880103816740.a n = A016209 n

end A016209

/-! ## A016209.P3411250898741376956

`(5^(n+2)-2*3^(n+2)+1)/8`
-/

namespace A016209.P3411250898741376956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 2) : ℤ) - (2 * 3 ^ (n + 2) : ℤ) + 1 : ℚ) / 8

end

end A016209.P3411250898741376956

namespace A016209

/-- `(5^(n+2)-2*3^(n+2)+1)/8` -/
def P3411250898741376956.Spec : Prop :=
  ∀ n, P3411250898741376956.a n = (A016209 n : ℚ)

end A016209

/-! ## A016209.P7951268493221468060

`∑[3^n+5*a(n-1)]` with `a(0)=1`
-/

namespace A016209.P7951268493221468060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 ^ n + 5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016209.P7951268493221468060

namespace A016209

/-- `∑[3^n+5*a(n-1)]` -/
def P7951268493221468060.Spec : Prop :=
  ∀ n, (P7951268493221468060.a n : ℤ) = A016209 n

end A016209

/-! ## A016209.P7056560370854747778

`∑[3*a(n-1)]+5*a(n-1)` with `a(0)=1`
-/

namespace A016209.P7056560370854747778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * a (n - 1)

end

end A016209.P7056560370854747778

namespace A016209

/-- `∑[3*a(n-1)]+5*a(n-1)` -/
def P7056560370854747778.Spec : Prop :=
  ∀ n, (P7056560370854747778.a n : ℤ) = A016209 n

end A016209

/-! ## A016209.P1528729174927466043

`∑[∑[A081625(n)]]`
-/

namespace A016209.P1528729174927466043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081625 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016209.P1528729174927466043

namespace A016209

/-- `∑[∑[A081625(n)]]` -/
def P1528729174927466043.Spec : Prop :=
  ∀ n, P1528729174927466043.a n = A016209 n

end A016209

/-! ## A016209.P8329238592337659783

`∑[A005059(n+1)]`
-/

namespace A016209.P8329238592337659783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016209.P8329238592337659783

namespace A016209

/-- `∑[A005059(n+1)]` -/
def P8329238592337659783.Spec : Prop :=
  ∀ n, P8329238592337659783.a n = A016209 n

end A016209

/-! ## A016209.P11618780974364580376

`A080961(n)+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A016209.P11618780974364580376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  A080961 n + a (n - 2)

end

end A016209.P11618780974364580376

namespace A016209

/-- `A080961(n)+a(n-2)` -/
def P11618780974364580376.Spec : Prop :=
  ∀ n, P11618780974364580376.a n = A016209 n

end A016209

/-! ## A016209.P507122586468371056

`3*a(n-1)+A104891(n)+1` with `a(0)=1`
-/

namespace A016209.P507122586468371056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (A104891 n + 1)

end

end A016209.P507122586468371056

namespace A016209

/-- `3*a(n-1)+A104891(n)+1` -/
def P507122586468371056.Spec : Prop :=
  ∀ n, P507122586468371056.a n = A016209 n

end A016209

/-! ## A016209.P8526344631740962331

`2*A014827(n+1)-A000340(n)`
-/

namespace A016209.P8526344631740962331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014827 (n + 1) - A000340 n

end

end A016209.P8526344631740962331

namespace A016209

/-- `2*A014827(n+1)-A000340(n)` -/
def P8526344631740962331.Spec : Prop :=
  ∀ n, P8526344631740962331.a n = A016209 n

end A016209

/-! ## A016209.P5272952576965623773

`A005059(n+1)+A007798(n+1)/2`
-/

namespace A016209.P5272952576965623773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005059 (n + 1) : ℚ) + (A007798 (n + 1) : ℚ) / 2

end

end A016209.P5272952576965623773

namespace A016209

/-- `A005059(n+1)+A007798(n+1)/2` -/
def P5272952576965623773.Spec : Prop :=
  ∀ n, P5272952576965623773.a n = (A016209 n : ℚ)

end A016209

/-! ## A016209.P835236521784475019

`A016273(n)+A016273(n)-∑[A016273(n)]`
-/

namespace A016209.P835236521784475019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016273 n + (A016273 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016209.P835236521784475019

namespace A016209

/-- `A016273(n)+A016273(n)-∑[A016273(n)]` -/
def P835236521784475019.Spec : Prop :=
  ∀ n, P835236521784475019.a n = A016209 n

end A016209

/-! ## A016209.P16246793909535308342

`2*A016273(n)-∑[A016273(n)]`
-/

namespace A016209.P16246793909535308342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016273 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016209.P16246793909535308342

namespace A016209

/-- `2*A016273(n)-∑[A016273(n)]` -/
def P16246793909535308342.Spec : Prop :=
  ∀ n, P16246793909535308342.a n = A016209 n

end A016209

/-!
# A016210: Inverse of 2201st cyclotomic polynomial.

The programs for A016210, there is no canonical definition to state claims against.
-/

/-! ## A016210.P1089143405082765703

`A016068(A233583(n+1)-A341281(n+1))`
-/

namespace A016210.P1089143405082765703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 (A233583 (n + 1) - A341281 (n + 1)).toNat

end

end A016210.P1089143405082765703

/-! ## A016210.P7613161901755799285

`round(A325545(n)/A000045(n+2))`
-/

namespace A016210.P7613161901755799285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A325545 n : ℚ) / (A000045 (n + 2) : ℚ))

end

end A016210.P7613161901755799285

/-! ## A016210.P4898782142796543253

`A388073(∏[A000055(∑{e}[n+1, #])])`
-/

namespace A016210.P4898782142796543253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016210.P4898782142796543253

/-! ## A016210.P13306101507045773505

`A010060(∏[A156351(∏{e}[n+1, #])])`
-/

namespace A016210.P13306101507045773505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016210.P13306101507045773505

/-! ## A016210.P6215928194042131949

`A344606(∏[A344651(val(n+1, 2)+1)])`
-/

namespace A016210.P6215928194042131949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016210.P6215928194042131949

/-! ## A016210.P9896187440073626256

`A011558(∏[A287214(2^val(n+1, 2))])`
-/

namespace A016210.P9896187440073626256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016210.P9896187440073626256

/-! ## A016210.P12542164700323109320

`A010051(floor(∑[1/A276625(n+1)])+1)`
-/

namespace A016210.P12542164700323109320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A276625 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1).toNat

end

end A016210.P12542164700323109320

/-! ## A016210.P11009333654615840206

`C(10, A340947(A214455(n+1)))`
-/

namespace A016210.P11009333654615840206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 10 (A340947 ((A214455 (n + 1)).toNat + 10)).toNat

end

end A016210.P11009333654615840206

/-! ## A016210.P3860089711024302533

`A079955(ceil(A052928(2*n+3)/A178960(n+1))+1)`
-/

namespace A016210.P3860089711024302533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 (⌈(A052928 (2 * n + 3) : ℚ) / (A178960 (n + 1) : ℚ)⌉ + 1).toNat

end

end A016210.P3860089711024302533

/-! ## A016210.P6948962391471613663

`round(8/A113724(n+5))`
-/

namespace A016210.P6948962391471613663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 / (A113724 (n + 5) : ℚ))

end

end A016210.P6948962391471613663

/-!
# A016211: Expansion of 1/((1-x)(1-3x)(1-6x)).

The programs for A016211, the canonical program `A016211.P965501781453294862` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016211 has offset 0).

The definition of A016211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016211.P965501781453294862

`9*a(n-1)-18*a(n-2)+1` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016211

/-- `9*a(n-1)-18*a(n-2)+1` -/
def P965501781453294862.Spec : Prop :=
  ∀ n, P965501781453294862.a n = A016211 n

theorem P965501781453294862.correct : P965501781453294862.Spec := by
  intro n
  simp only [A016211]

end A016211

/-! ## A016211.P9726507758275716291

`∑[3^n*∑[2^n]]`
-/

namespace A016211.P9726507758275716291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016211.P9726507758275716291

namespace A016211

/-- `∑[3^n*∑[2^n]]` -/
def P9726507758275716291.Spec : Prop :=
  ∀ n, (P9726507758275716291.a n : ℤ) = A016211 n

end A016211

/-! ## A016211.P14492592031330395799

`∑[3*a(n-1)]+6*a(n-1)` with `a(0)=1`
-/

namespace A016211.P14492592031330395799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6 * a (n - 1)

end

end A016211.P14492592031330395799

namespace A016211

/-- `∑[3*a(n-1)]+6*a(n-1)` -/
def P14492592031330395799.Spec : Prop :=
  ∀ n, (P14492592031330395799.a n : ℤ) = A016211 n

end A016211

/-! ## A016211.P658515857000397272

`∑[A016137(n)]^ceil(acot(n))`
-/

namespace A016211.P658515857000397272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016137 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A016211.P658515857000397272

namespace A016211

/-- `∑[A016137(n)]^ceil(acot(n))` -/
def P658515857000397272.Spec : Prop :=
  ∀ n, P658515857000397272.a n = (A016211 n : ℚ)

end A016211

/-! ## A016211.P9145027153334887924

`a(n-1)+∑[A000079(n)]/3^-n` with `a(0)=1`
-/

namespace A016211.P9145027153334887924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A016211.P9145027153334887924

namespace A016211

/-- `a(n-1)+∑[A000079(n)]/3^-n` -/
def P9145027153334887924.Spec : Prop :=
  ∀ n, P9145027153334887924.a n = (A016211 n : ℚ)

end A016211

/-! ## A016211.P13750328729224320922

`a(n-1)+A026549(2*n+1)-3^n` with `a(0)=1`
-/

namespace A016211.P13750328729224320922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A026549 (2 * n + 1) - (3 ^ n : ℤ))

end

end A016211.P13750328729224320922

namespace A016211

/-- `a(n-1)+A026549(2*n+1)-3^n` -/
def P13750328729224320922.Spec : Prop :=
  ∀ n, P13750328729224320922.a n = A016211 n

end A016211

/-! ## A016211.P5125101357217191703

`or(∑[A016137(n)], A000007(n))`
-/

namespace A016211.P5125101357217191703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A016211.P5125101357217191703

namespace A016211

/-- `or(∑[A016137(n)], A000007(n))` -/
def P5125101357217191703.Spec : Prop :=
  ∀ n, P5125101357217191703.a n = A016211 n

end A016211

/-! ## A016211.P8735809301966340273

`A005610(n+1)-∑[A000244(n)]`
-/

namespace A016211.P8735809301966340273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005610 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016211.P8735809301966340273

namespace A016211

/-- `A005610(n+1)-∑[A000244(n)]` -/
def P8735809301966340273.Spec : Prop :=
  ∀ n, P8735809301966340273.a n = A016211 n

end A016211

/-! ## A016211.P13413814229701540168

`∑[A016137(n)]+A000007(n+3)/2`
-/

namespace A016211.P13413814229701540168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016137 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A000007 (n + 3) : ℚ) / 2

end

end A016211.P13413814229701540168

namespace A016211

/-- `∑[A016137(n)]+A000007(n+3)/2` -/
def P13413814229701540168.Spec : Prop :=
  ∀ n, P13413814229701540168.a n = (A016211 n : ℚ)

end A016211

/-! ## A016211.P16289159487997374191

`∑[A016137(n)]+(n+2)%A057077(n+2)`
-/

namespace A016211.P16289159487997374191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (n + 2 : ℤ) (A057077 (n + 2))

end

end A016211.P16289159487997374191

namespace A016211

/-- `∑[A016137(n)]+(n+2)%A057077(n+2)` -/
def P16289159487997374191.Spec : Prop :=
  ∀ n, P16289159487997374191.a n = A016211 n

end A016211

/-! ## A016211.P12007420050895184097

`A003464(n+1)+A003464(n+1)-A003462(n+1)`
-/

namespace A016211.P12007420050895184097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (n + 1) + (A003464 (n + 1) - A003462 (n + 1))

end

end A016211.P12007420050895184097

namespace A016211

/-- `A003464(n+1)+A003464(n+1)-A003462(n+1)` -/
def P12007420050895184097.Spec : Prop :=
  ∀ n, P12007420050895184097.a n = A016211 n

end A016211

/-! ## A016211.P16135460497692189198

`∑[A060589(n+1)]/2`
-/

namespace A016211.P16135460497692189198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060589 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A016211.P16135460497692189198

namespace A016211

/-- `∑[A060589(n+1)]/2` -/
def P16135460497692189198.Spec : Prop :=
  ∀ n, P16135460497692189198.a n = (A016211 n : ℚ)

end A016211

/-! ## A016211.P6978653518080790242

`2*A001240(n+1)-∑[A001240(n+1)]`
-/

namespace A016211.P6978653518080790242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001240 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016211.P6978653518080790242

namespace A016211

/-- `2*A001240(n+1)-∑[A001240(n+1)]` -/
def P6978653518080790242.Spec : Prop :=
  ∀ n, P6978653518080790242.a n = A016211 n

end A016211

/-! ## A016211.P1395053876627175920

`∑[A016137(n)]%A016150(n+2)`
-/

namespace A016211.P1395053876627175920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A016150 (n + 2))

end

end A016211.P1395053876627175920

namespace A016211

/-- `∑[A016137(n)]%A016150(n+2)` -/
def P1395053876627175920.Spec : Prop :=
  ∀ n, P1395053876627175920.a n = A016211 n

end A016211

/-!
# A016212: Expansion of 1/((1-x)*(1-3*x)*(1-7*x)).

The programs for A016212, the canonical program `A016212.P596155912573033295` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016212 has offset 0).

The definition of A016212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016212.P596155912573033295

`1+10*a(n-1)-21*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016212

/-- `1+10*a(n-1)-21*a(n-2)` -/
def P596155912573033295.Spec : Prop :=
  ∀ n, P596155912573033295.a n = A016212 n

theorem P596155912573033295.correct : P596155912573033295.Spec := by
  intro n
  simp only [A016212]

end A016212

/-! ## A016212.P3790649634388057759

`(7^(n+2)-3^(n+3)+2)/24`
-/

namespace A016212.P3790649634388057759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 2) : ℤ) - (3 ^ (n + 3) : ℤ) + 2 : ℚ) / 24

end

end A016212.P3790649634388057759

namespace A016212

/-- `(7^(n+2)-3^(n+3)+2)/24` -/
def P3790649634388057759.Spec : Prop :=
  ∀ n, P3790649634388057759.a n = (A016212 n : ℚ)

end A016212

/-! ## A016212.P3196219886100536704

`∑[3^n+7*a(n-1)]` with `a(0)=1`
-/

namespace A016212.P3196219886100536704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 ^ n + 7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016212.P3196219886100536704

namespace A016212

/-- `∑[3^n+7*a(n-1)]` -/
def P3196219886100536704.Spec : Prop :=
  ∀ n, (P3196219886100536704.a n : ℤ) = A016212 n

end A016212

/-! ## A016212.P5079740427328341552

`∑[lcm(7, a(n-1))+3^n]` with `a(0)=1`
-/

namespace A016212.P5079740427328341552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 7 (f1 (n - 1)) + 3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016212.P5079740427328341552

namespace A016212

/-- `∑[lcm(7, a(n-1))+3^n]` -/
def P5079740427328341552.Spec : Prop :=
  ∀ n, (P5079740427328341552.a n : ℤ) = A016212 n

end A016212

/-! ## A016212.P18107859122059724830

`∑[3*a(n-1)]+7*a(n-1)` with `a(0)=1`
-/

namespace A016212.P18107859122059724830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7 * a (n - 1)

end

end A016212.P18107859122059724830

namespace A016212

/-- `∑[3*a(n-1)]+7*a(n-1)` -/
def P18107859122059724830.Spec : Prop :=
  ∀ n, (P18107859122059724830.a n : ℤ) = A016212 n

end A016212

/-! ## A016212.P1406323074298285966

`∑[A016138(n)]`
-/

namespace A016212.P1406323074298285966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016212.P1406323074298285966

namespace A016212

/-- `∑[A016138(n)]` -/
def P1406323074298285966.Spec : Prop :=
  ∀ n, P1406323074298285966.a n = A016212 n

end A016212

/-! ## A016212.P16715293516792753210

`∑[∑[A165147(n)]]`
-/

namespace A016212.P16715293516792753210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016212.P16715293516792753210

namespace A016212

/-- `∑[∑[A165147(n)]]` -/
def P16715293516792753210.Spec : Prop :=
  ∀ n, P16715293516792753210.a n = A016212 n

end A016212

/-! ## A016212.P1188212365807130389

`A081657(n)+a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A016212.P1188212365807130389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A081657 n + a (n - 2)

end

end A016212.P1188212365807130389

namespace A016212

/-- `A081657(n)+a(n-2)` -/
def P1188212365807130389.Spec : Prop :=
  ∀ n, P1188212365807130389.a n = A016212 n

end A016212

/-! ## A016212.P15870941718428694005

`A109020(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A016212.P15870941718428694005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109020 (n + 1) - a (n - 1)

end

end A016212.P15870941718428694005

namespace A016212

/-- `A109020(n+1)-a(n-1)` -/
def P15870941718428694005.Spec : Prop :=
  ∀ n, P15870941718428694005.a n = A016212 n

end A016212

/-!
# A016213: Inverse of 2204th cyclotomic polynomial.

The programs for A016213, there is no canonical definition to state claims against.
-/

/-! ## A016213.P713224966545818224

`A056594(lt[A087909(n+4), A298223(n+1)])`
-/

namespace A016213.P713224966545818224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087909 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A016213.P713224966545818224

/-! ## A016213.P2591451103205952696

`A015757(n)%A126051(n+1)`
-/

namespace A016213.P2591451103205952696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015757 n) (A126051 (n + 1))

end

end A016213.P2591451103205952696

/-!
# A016214: Expansion of g.f. 1/((1-x)*(1-3*x)(1-8*x)).

The programs for A016214, the canonical program `A016214.P17983846970214983047` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016214 has offset 0).

The definition of A016214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016214.P17983846970214983047

`11*a(n-1)-24*a(n-2)+1` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016214

/-- `11*a(n-1)-24*a(n-2)+1` -/
def P17983846970214983047.Spec : Prop :=
  ∀ n, P17983846970214983047.a n = A016214 n

theorem P17983846970214983047.correct : P17983846970214983047.Spec := by
  intro n
  simp only [A016214]

end A016214

/-! ## A016214.P14056928319123784524

`(2*8^(n+2)-7*3^(n+2)+5)/70`
-/

namespace A016214.P14056928319123784524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 8 ^ (n + 2) : ℤ) - (7 * 3 ^ (n + 2) : ℤ) + 5 : ℚ) / 70

end

end A016214.P14056928319123784524

namespace A016214

/-- `(2*8^(n+2)-7*3^(n+2)+5)/70` -/
def P14056928319123784524.Spec : Prop :=
  ∀ n, P14056928319123784524.a n = (A016214 n : ℚ)

end A016214

/-! ## A016214.P12386734231818945443

`∑[3^n+8*a(n-1)]` with `a(0)=1`
-/

namespace A016214.P12386734231818945443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 ^ n + 8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016214.P12386734231818945443

namespace A016214

/-- `∑[3^n+8*a(n-1)]` -/
def P12386734231818945443.Spec : Prop :=
  ∀ n, (P12386734231818945443.a n : ℤ) = A016214 n

end A016214

/-! ## A016214.P16269347102517879330

`∑[3*a(n-1)]+8*a(n-1)` with `a(0)=1`
-/

namespace A016214.P16269347102517879330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1)

end

end A016214.P16269347102517879330

namespace A016214

/-- `∑[3*a(n-1)]+8*a(n-1)` -/
def P16269347102517879330.Spec : Prop :=
  ∀ n, (P16269347102517879330.a n : ℤ) = A016214 n

end A016214

/-! ## A016214.P4562847645478123449

`∑[A016140(n)]`
-/

namespace A016214.P4562847645478123449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016214.P4562847645478123449

namespace A016214

/-- `∑[A016140(n)]` -/
def P4562847645478123449.Spec : Prop :=
  ∀ n, P4562847645478123449.a n = A016214 n

end A016214

/-! ## A016214.P5923346494436707130

`2*A016277(n)-∑[A016277(n)]`
-/

namespace A016214.P5923346494436707130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016277 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016214.P5923346494436707130

namespace A016214

/-- `2*A016277(n)-∑[A016277(n)]` -/
def P5923346494436707130.Spec : Prop :=
  ∀ n, P5923346494436707130.a n = A016214 n

end A016214

/-! ## A016214.P16203708881777895307

`∑[A190543(n+1)/5]`
-/

namespace A016214.P16203708881777895307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190543 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016214.P16203708881777895307

namespace A016214

/-- `∑[A190543(n+1)/5]` -/
def P16203708881777895307.Spec : Prop :=
  ∀ n, P16203708881777895307.a n = (A016214 n : ℚ)

end A016214

/-! ## A016214.P13060567276454290764

`∑[A271939(n+1)/8]`
-/

namespace A016214.P13060567276454290764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271939 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016214.P13060567276454290764

namespace A016214

/-- `∑[A271939(n+1)/8]` -/
def P13060567276454290764.Spec : Prop :=
  ∀ n, P13060567276454290764.a n = (A016214 n : ℚ)

end A016214

/-!
# A016215: Expansion of 1 / ((1-x) * (1-3*x) * (1-10*x)).

The programs for A016215, the canonical program `A016215.P17220415220920157818` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016215 has offset 0).

The definition of A016215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016215.P17220415220920157818

`13*a(n-1)-30*a(n-2)+1` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016215

/-- `13*a(n-1)-30*a(n-2)+1` -/
def P17220415220920157818.Spec : Prop :=
  ∀ n, P17220415220920157818.a n = A016215 n

theorem P17220415220920157818.correct : P17220415220920157818.Spec := by
  intro n
  simp only [A016215]

end A016215

/-! ## A016215.P11570503356976527002

`∑[3^n+10*a(n-1)]` with `a(0)=1`
-/

namespace A016215.P11570503356976527002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 ^ n + 10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016215.P11570503356976527002

namespace A016215

/-- `∑[3^n+10*a(n-1)]` -/
def P11570503356976527002.Spec : Prop :=
  ∀ n, (P11570503356976527002.a n : ℤ) = A016215 n

end A016215

/-! ## A016215.P8104758646390090923

`∑[lcm(3, a(n-1))+10^n]` with `a(0)=1`
-/

namespace A016215.P8104758646390090923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 3 (f1 (n - 1)) + 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016215.P8104758646390090923

namespace A016215

/-- `∑[lcm(3, a(n-1))+10^n]` -/
def P8104758646390090923.Spec : Prop :=
  ∀ n, (P8104758646390090923.a n : ℤ) = A016215 n

end A016215

/-! ## A016215.P4050438216268987402

`∑[3*a(n-1)]+10*a(n-1)` with `a(0)=1`
-/

namespace A016215.P4050438216268987402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A016215.P4050438216268987402

namespace A016215

/-- `∑[3*a(n-1)]+10*a(n-1)` -/
def P4050438216268987402.Spec : Prop :=
  ∀ n, (P4050438216268987402.a n : ℤ) = A016215 n

end A016215

/-! ## A016215.P18354034573091356512

`∑[A016145(n)]`
-/

namespace A016215.P18354034573091356512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016215.P18354034573091356512

namespace A016215

/-- `∑[A016145(n)]` -/
def P18354034573091356512.Spec : Prop :=
  ∀ n, P18354034573091356512.a n = A016215 n

end A016215

/-! ## A016215.P9702012514030059436

`A000042(n+1)+3*a(n-1)` with `a(0)=1`
-/

namespace A016215.P9702012514030059436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000042 (n + 1) + 3 * a (n - 1)

end

end A016215.P9702012514030059436

namespace A016215

/-- `A000042(n+1)+3*a(n-1)` -/
def P9702012514030059436.Spec : Prop :=
  ∀ n, P9702012514030059436.a n = A016215 n

end A016215

/-! ## A016215.P12408244598235261944

`A002275(n+1)+3*a(n-1)` with `a(0)=1`
-/

namespace A016215.P12408244598235261944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002275 (n + 1) + 3 * a (n - 1)

end

end A016215.P12408244598235261944

namespace A016215

/-- `A002275(n+1)+3*a(n-1)` -/
def P12408244598235261944.Spec : Prop :=
  ∀ n, P12408244598235261944.a n = A016215 n

end A016215

/-! ## A016215.P1073624672948831450

`(A016279(n)+A016205(n))/2`
-/

namespace A016215.P1073624672948831450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016279 n + A016205 n : ℚ) / 2

end

end A016215.P1073624672948831450

namespace A016215

/-- `(A016279(n)+A016205(n))/2` -/
def P1073624672948831450.Spec : Prop :=
  ∀ n, P1073624672948831450.a n = (A016215 n : ℚ)

end A016215

/-!
# A016216: Expansion of 1 / ((1-x) * (1-3*x) * (1-11*x)).

The programs for A016216, the canonical program `A016216.P17537571875872902551` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016216 has offset 0).

The definition of A016216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016216.P17537571875872902551

`14*a(n-1)-33*a(n-2)+1` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016216

/-- `14*a(n-1)-33*a(n-2)+1` -/
def P17537571875872902551.Spec : Prop :=
  ∀ n, P17537571875872902551.a n = A016216 n

theorem P17537571875872902551.correct : P17537571875872902551.Spec := by
  intro n
  simp only [A016216]

end A016216

/-! ## A016216.P15181146186453864421

`1/20-9/16*3^n+121/80*11^n`
-/

namespace A016216.P15181146186453864421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 20 - (9 : ℚ) / 16 * (3 ^ n : ℚ) + (121 : ℚ) / 80 * (11 ^ n : ℚ)

end

end A016216.P15181146186453864421

namespace A016216

/-- `1/20-9/16*3^n+121/80*11^n` -/
def P15181146186453864421.Spec : Prop :=
  ∀ n, P15181146186453864421.a n = (A016216 n : ℚ)

end A016216

/-! ## A016216.P5142450263748556391

`∑[11^n+3*a(n-1)]` with `a(0)=1`
-/

namespace A016216.P5142450263748556391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  11 ^ n + 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016216.P5142450263748556391

namespace A016216

/-- `∑[11^n+3*a(n-1)]` -/
def P5142450263748556391.Spec : Prop :=
  ∀ n, (P5142450263748556391.a n : ℤ) = A016216 n

end A016216

/-! ## A016216.P535129026226178691

`∑[lcm(11, a(n-1))+3^n]` with `a(0)=1`
-/

namespace A016216.P535129026226178691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 11 (f1 (n - 1)) + 3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016216.P535129026226178691

namespace A016216

/-- `∑[lcm(11, a(n-1))+3^n]` -/
def P535129026226178691.Spec : Prop :=
  ∀ n, (P535129026226178691.a n : ℤ) = A016216 n

end A016216

/-! ## A016216.P2659824025189249098

`∑[A016146(n)]`
-/

namespace A016216.P2659824025189249098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016216.P2659824025189249098

namespace A016216

/-- `∑[A016146(n)]` -/
def P2659824025189249098.Spec : Prop :=
  ∀ n, P2659824025189249098.a n = A016216 n

end A016216

/-! ## A016216.P677043598540157647

`∑[A139741(n+1)/8]`
-/

namespace A016216.P677043598540157647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139741 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016216.P677043598540157647

namespace A016216

/-- `∑[A139741(n+1)/8]` -/
def P677043598540157647.Spec : Prop :=
  ∀ n, P677043598540157647.a n = (A016216 n : ℚ)

end A016216

/-!
# A016217: Expansion of 1 / ((1-x) * (1-3*x) * (1-12*x)).

The programs for A016217, the canonical program `A016217.P1505898715404463281` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016217 has offset 0).

The definition of A016217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016217.P1505898715404463281

`15*a(n-1)-36*a(n-2)+1` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016217

/-- `15*a(n-1)-36*a(n-2)+1` -/
def P1505898715404463281.Spec : Prop :=
  ∀ n, P1505898715404463281.a n = A016217 n

theorem P1505898715404463281.correct : P1505898715404463281.Spec := by
  intro n
  simp only [A016217]

end A016217

/-! ## A016217.P3547707477889603153

`1/22-1/2*3^n+16/11*12^n`
-/

namespace A016217.P3547707477889603153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 22 - (1 : ℚ) / 2 * (3 ^ n : ℚ) + (16 : ℚ) / 11 * (12 ^ n : ℚ)

end

end A016217.P3547707477889603153

namespace A016217

/-- `1/22-1/2*3^n+16/11*12^n` -/
def P3547707477889603153.Spec : Prop :=
  ∀ n, P3547707477889603153.a n = (A016217 n : ℚ)

end A016217

/-! ## A016217.P18247152895210847384

`∑[A016147(n)]`
-/

namespace A016217.P18247152895210847384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016217.P18247152895210847384

namespace A016217

/-- `∑[A016147(n)]` -/
def P18247152895210847384.Spec : Prop :=
  ∀ n, P18247152895210847384.a n = A016217 n

end A016217

/-! ## A016217.P15730073660995300609

`∑[A000244(n)*A000975(2*n+1)]`
-/

namespace A016217.P15730073660995300609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A000975 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016217.P15730073660995300609

namespace A016217

/-- `∑[A000244(n)*A000975(2*n+1)]` -/
def P15730073660995300609.Spec : Prop :=
  ∀ n, P15730073660995300609.a n = A016217 n

end A016217

/-! ## A016217.P15830604902649512536

`∑[A000244(n)*A001045(2*(n+1))]`
-/

namespace A016217.P15830604902649512536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A001045 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016217.P15830604902649512536

namespace A016217

/-- `∑[A000244(n)*A001045(2*(n+1))]` -/
def P15830604902649512536.Spec : Prop :=
  ∀ n, P15830604902649512536.a n = A016217 n

end A016217

/-!
# A016218: Expansion of 1/((1-x)*(1-4*x)*(1-5*x)).

The programs for A016218, the canonical program `A016218.P10568900049475109367` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016218 has offset 0).

The definition of A016218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016218.P10568900049475109367

`9*a(n-1)-20*a(n-2)+1` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016218

/-- `9*a(n-1)-20*a(n-2)+1` -/
def P10568900049475109367.Spec : Prop :=
  ∀ n, P10568900049475109367.a n = A016218 n

theorem P10568900049475109367.correct : P10568900049475109367.Spec := by
  intro n
  simp only [A016218]

end A016218

/-! ## A016218.P9710795864911774758

`a(n-1)+5^(n+1)-4^(n+1)` with `a(0)=1`
-/

namespace A016218.P9710795864911774758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A016218.P9710795864911774758

namespace A016218

/-- `a(n-1)+5^(n+1)-4^(n+1)` -/
def P9710795864911774758.Spec : Prop :=
  ∀ n, P9710795864911774758.a n = A016218 n

end A016218

/-! ## A016218.P1452188476254003148

`∑[5^(n+1)-4^(n+1)]`
-/

namespace A016218.P1452188476254003148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016218.P1452188476254003148

namespace A016218

/-- `∑[5^(n+1)-4^(n+1)]` -/
def P1452188476254003148.Spec : Prop :=
  ∀ n, P1452188476254003148.a n = A016218 n

end A016218

/-! ## A016218.P14446436902460708478

`∑[4*a(n-1)]+5*a(n-1)` with `a(0)=1`
-/

namespace A016218.P14446436902460708478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * a (n - 1)

end

end A016218.P14446436902460708478

namespace A016218

/-- `∑[4*a(n-1)]+5*a(n-1)` -/
def P14446436902460708478.Spec : Prop :=
  ∀ n, (P14446436902460708478.a n : ℤ) = A016218 n

end A016218

/-! ## A016218.P2695431591622655500

`A005060(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A016218.P2695431591622655500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005060 (n + 1) + a (n - 1)

end

end A016218.P2695431591622655500

namespace A016218

/-- `A005060(n+1)+a(n-1)` -/
def P2695431591622655500.Spec : Prop :=
  ∀ n, P2695431591622655500.a n = A016218 n

end A016218

/-! ## A016218.P9151306905731064631

`4*a(n-1)+A104891(n)+1` with `a(0)=1`
-/

namespace A016218.P9151306905731064631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (A104891 n + 1)

end

end A016218.P9151306905731064631

namespace A016218

/-- `4*a(n-1)+A104891(n)+1` -/
def P9151306905731064631.Spec : Prop :=
  ∀ n, P9151306905731064631.a n = A016218 n

end A016218

/-! ## A016218.P6528879726940871063

`2*A016209(n)-A016208(n)`
-/

namespace A016218.P6528879726940871063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016209 n - A016208 n

end

end A016218.P6528879726940871063

namespace A016218

/-- `2*A016209(n)-A016208(n)` -/
def P6528879726940871063.Spec : Prop :=
  ∀ n, P6528879726940871063.a n = A016218 n

end A016218

/-! ## A016218.P15446988883771438394

`2*A016282(n)-∑[A016282(n)]`
-/

namespace A016218.P15446988883771438394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016282 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016218.P15446988883771438394

namespace A016218

/-- `2*A016282(n)-∑[A016282(n)]` -/
def P15446988883771438394.Spec : Prop :=
  ∀ n, P15446988883771438394.a n = A016218 n

end A016218

/-! ## A016218.P2090900498625627177

`A104891(n+1)-A080674(n+1)`
-/

namespace A016218.P2090900498625627177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104891 (n + 1) - A080674 (n + 1)

end

end A016218.P2090900498625627177

namespace A016218

/-- `A104891(n+1)-A080674(n+1)` -/
def P2090900498625627177.Spec : Prop :=
  ∀ n, P2090900498625627177.a n = A016218 n

end A016218

/-! ## A016218.P17046866843407448741

`A104891(n+1)-A155721(n+1)`
-/

namespace A016218.P17046866843407448741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104891 (n + 1) - A155721 (n + 1)

end

end A016218.P17046866843407448741

namespace A016218

/-- `A104891(n+1)-A155721(n+1)` -/
def P17046866843407448741.Spec : Prop :=
  ∀ n, P17046866843407448741.a n = A016218 n

end A016218

/-! ## A016218.P17601873591905900583

`A003463(n+2)-A002450(n+2)`
-/

namespace A016218.P17601873591905900583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 2) - A002450 (n + 2)

end

end A016218.P17601873591905900583

namespace A016218

/-- `A003463(n+2)-A002450(n+2)` -/
def P17601873591905900583.Spec : Prop :=
  ∀ n, P17601873591905900583.a n = A016218 n

end A016218

/-! ## A016218.P8914837683745876799

`A047850(n+2)-A047849(n+2)`
-/

namespace A016218.P8914837683745876799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 (n + 2) - A047849 (n + 2)

end

end A016218.P8914837683745876799

namespace A016218

/-- `A047850(n+2)-A047849(n+2)` -/
def P8914837683745876799.Spec : Prop :=
  ∀ n, P8914837683745876799.a n = A016218 n

end A016218

/-! ## A016218.P6862754068707328073

`A104891(n+1)-2*A020988(n+1)`
-/

namespace A016218.P6862754068707328073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104891 (n + 1) - 2 * A020988 (n + 1)

end

end A016218.P6862754068707328073

namespace A016218

/-- `A104891(n+1)-2*A020988(n+1)` -/
def P6862754068707328073.Spec : Prop :=
  ∀ n, P6862754068707328073.a n = A016218 n

end A016218

/-! ## A016218.P9367123471622266154

`A104891(n+1)-∑[A000079(n+1)²]`
-/

namespace A016218.P9367123471622266154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104891 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016218.P9367123471622266154

namespace A016218

/-- `A104891(n+1)-∑[A000079(n+1)²]` -/
def P9367123471622266154.Spec : Prop :=
  ∀ n, P9367123471622266154.a n = A016218 n

end A016218

/-! ## A016218.P5663871561624903619

`Δ[Δ[A304975(2*n+1)]]-A304975(2*n+1)`
-/

namespace A016218.P5663871561624903619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304975 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A304975 (2 * n + 1)

end

end A016218.P5663871561624903619

namespace A016218

/-- `Δ[Δ[A304975(2*n+1)]]-A304975(2*n+1)` -/
def P5663871561624903619.Spec : Prop :=
  ∀ n, P5663871561624903619.a n = A016218 n

end A016218

/-! ## A016218.P3178885257187071595

`2*A016222(n)-A016228(n)`
-/

namespace A016218.P3178885257187071595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016222 n - A016228 n

end

end A016218.P3178885257187071595

namespace A016218

/-- `2*A016222(n)-A016228(n)` -/
def P3178885257187071595.Spec : Prop :=
  ∀ n, P3178885257187071595.a n = A016218 n

end A016218

/-! ## A016218.P13750945595728672465

`2*A016233(n)-A021764(n)`
-/

namespace A016218.P13750945595728672465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016233 n - A021764 n

end

end A016218.P13750945595728672465

namespace A016218

/-- `2*A016233(n)-A021764(n)` -/
def P13750945595728672465.Spec : Prop :=
  ∀ n, P13750945595728672465.a n = A016218 n

end A016218

/-! ## A016218.P6614459067766988090

`2*A016225(n)-A021774(n)`
-/

namespace A016218.P6614459067766988090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016225 n - A021774 n

end

end A016218.P6614459067766988090

namespace A016218

/-- `2*A016225(n)-A021774(n)` -/
def P6614459067766988090.Spec : Prop :=
  ∀ n, P6614459067766988090.a n = A016218 n

end A016218

/-!
# A016219: Inverse of 2210th cyclotomic polynomial.

The programs for A016219, there is no canonical definition to state claims against.
-/

/-! ## A016219.P2177034094108266645

`A015114(n)*A033999(n)`
-/

namespace A016219.P2177034094108266645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015114 n * A033999 n

end

end A016219.P2177034094108266645

/-!
# A016222: Expansion of 1/((1-x)(1-4x)(1-6x)).

The programs for A016222, the canonical program `A016222.P5568941224731043652` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016222 has offset 0).

The definition of A016222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016222.P5568941224731043652

`1+10*a(n-1)-24*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016222

/-- `1+10*a(n-1)-24*a(n-2)` -/
def P5568941224731043652.Spec : Prop :=
  ∀ n, P5568941224731043652.a n = A016222 n

theorem P5568941224731043652.correct : P5568941224731043652.Spec := by
  intro n
  simp only [A016222]

end A016222

/-! ## A016222.P11972841652278523819

`1/15-8/3*4^n+18/5*6^n`
-/

namespace A016222.P11972841652278523819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 15 - (8 : ℚ) / 3 * (4 ^ n : ℚ) + (18 : ℚ) / 5 * (6 ^ n : ℚ)

end

end A016222.P11972841652278523819

namespace A016222

/-- `1/15-8/3*4^n+18/5*6^n` -/
def P11972841652278523819.Spec : Prop :=
  ∀ n, P11972841652278523819.a n = (A016222 n : ℚ)

end A016222

/-! ## A016222.P1404350420850808917

`∑[4^n+6*a(n-1)]` with `a(0)=1`
-/

namespace A016222.P1404350420850808917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 ^ n + 6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016222.P1404350420850808917

namespace A016222

/-- `∑[4^n+6*a(n-1)]` -/
def P1404350420850808917.Spec : Prop :=
  ∀ n, (P1404350420850808917.a n : ℤ) = A016222 n

end A016222

/-! ## A016222.P6546060708810727572

`∑[A016149(n)]`
-/

namespace A016222.P6546060708810727572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016222.P6546060708810727572

namespace A016222

/-- `∑[A016149(n)]` -/
def P6546060708810727572.Spec : Prop :=
  ∀ n, P6546060708810727572.a n = A016222 n

end A016222

/-! ## A016222.P12939410258823733782

`∑[A081199(n+1)]`
-/

namespace A016222.P12939410258823733782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016222.P12939410258823733782

namespace A016222

/-- `∑[A081199(n+1)]` -/
def P12939410258823733782.Spec : Prop :=
  ∀ n, P12939410258823733782.a n = A016222 n

end A016222

/-! ## A016222.P5486449310772755556

`(A016228(n)+A016218(n))/2`
-/

namespace A016222.P5486449310772755556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016228 n + A016218 n : ℚ) / 2

end

end A016222.P5486449310772755556

namespace A016222

/-- `(A016228(n)+A016218(n))/2` -/
def P5486449310772755556.Spec : Prop :=
  ∀ n, P5486449310772755556.a n = (A016222 n : ℚ)

end A016222

/-! ## A016222.P4997548836282120184

`A016320(n)/2^n`
-/

namespace A016222.P4997548836282120184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016320 n : ℚ) / (2 ^ n : ℚ)

end

end A016222.P4997548836282120184

namespace A016222

/-- `A016320(n)/2^n` -/
def P4997548836282120184.Spec : Prop :=
  ∀ n, P4997548836282120184.a n = (A016222 n : ℚ)

end A016222

/-!
# A016223: Expansion of 1/((1-x) * (1-4*x) * (1-7*x)).

The programs for A016223, the canonical program `A016223.P7020946870744572259` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016223 has offset 0).

The definition of A016223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016223.P7020946870744572259

`11*a(n-1)-28*a(n-2)+1` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016223

/-- `11*a(n-1)-28*a(n-2)+1` -/
def P7020946870744572259.Spec : Prop :=
  ∀ n, P7020946870744572259.a n = A016223 n

theorem P7020946870744572259.correct : P7020946870744572259.Spec := by
  intro n
  simp only [A016223]

end A016223

/-! ## A016223.P14479364171070490810

`1/18-16/9*4^n+49/18*7^n`
-/

namespace A016223.P14479364171070490810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 18 - (16 : ℚ) / 9 * (4 ^ n : ℚ) + (49 : ℚ) / 18 * (7 ^ n : ℚ)

end

end A016223.P14479364171070490810

namespace A016223

/-- `1/18-16/9*4^n+49/18*7^n` -/
def P14479364171070490810.Spec : Prop :=
  ∀ n, P14479364171070490810.a n = (A016223 n : ℚ)

end A016223

/-! ## A016223.P7710146874744384287

`∑[4^n+7*a(n-1)]` with `a(0)=1`
-/

namespace A016223.P7710146874744384287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 ^ n + 7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016223.P7710146874744384287

namespace A016223

/-- `∑[4^n+7*a(n-1)]` -/
def P7710146874744384287.Spec : Prop :=
  ∀ n, (P7710146874744384287.a n : ℤ) = A016223 n

end A016223

/-! ## A016223.P3458032655905339229

`∑[lcm(7, a(n-1))+4^n]` with `a(0)=1`
-/

namespace A016223.P3458032655905339229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 7 (f1 (n - 1)) + 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016223.P3458032655905339229

namespace A016223

/-- `∑[lcm(7, a(n-1))+4^n]` -/
def P3458032655905339229.Spec : Prop :=
  ∀ n, (P3458032655905339229.a n : ℤ) = A016223 n

end A016223

/-! ## A016223.P14508077146212552234

`∑[A016150(n)]`
-/

namespace A016223.P14508077146212552234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016223.P14508077146212552234

namespace A016223

/-- `∑[A016150(n)]` -/
def P14508077146212552234.Spec : Prop :=
  ∀ n, P14508077146212552234.a n = A016223 n

end A016223

/-! ## A016223.P17551361836137374581

`∑[∑[A109808(n+1)-A000079(n)²]]`
-/

namespace A016223.P17551361836137374581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109808 (n + 1) - A000079 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016223.P17551361836137374581

namespace A016223

/-- `∑[∑[A109808(n+1)-A000079(n)²]]` -/
def P17551361836137374581.Spec : Prop :=
  ∀ n, P17551361836137374581.a n = A016223 n

end A016223

/-! ## A016223.P6760861013494351613

`∑[A125725(n+2)-∑[A122803(n)²]]`
-/

namespace A016223.P6760861013494351613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016223.P6760861013494351613

namespace A016223

/-- `∑[A125725(n+2)-∑[A122803(n)²]]` -/
def P6760861013494351613.Spec : Prop :=
  ∀ n, P6760861013494351613.a n = A016223 n

end A016223

/-! ## A016223.P3969404662730900339

`∑[A125725(n+2)-∑[A122803(2*n)]]`
-/

namespace A016223.P3969404662730900339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016223.P3969404662730900339

namespace A016223

/-- `∑[A125725(n+2)-∑[A122803(2*n)]]` -/
def P3969404662730900339.Spec : Prop :=
  ∀ n, P3969404662730900339.a n = A016223 n

end A016223

/-! ## A016223.P9464056603187238997

`A111577(A167614(n+1))`
-/

namespace A016223.P9464056603187238997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111577 (A167614 (n + 1)).toNat

end

end A016223.P9464056603187238997

namespace A016223

/-- `A111577(A167614(n+1))` -/
def P9464056603187238997.Spec : Prop :=
  ∀ n, P9464056603187238997.a n = A016223 n

end A016223

/-!
# A016224: Expansion of 1/((1-x)(1-4x)(1-8x)).

The programs for A016224, the canonical program `A016224.P16507242285458443353` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016224 has offset 0).

The definition of A016224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016224.P16507242285458443353

`12*a(n-1)-32*a(n-2)+1` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016224

/-- `12*a(n-1)-32*a(n-2)+1` -/
def P16507242285458443353.Spec : Prop :=
  ∀ n, P16507242285458443353.a n = A016224 n

theorem P16507242285458443353.correct : P16507242285458443353.Spec := by
  intro n
  simp only [A016224]

end A016224

/-! ## A016224.P13548876157260451882

`1/21-4/3*4^n+16/7*8^n`
-/

namespace A016224.P13548876157260451882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 21 - (4 : ℚ) / 3 * (4 ^ n : ℚ) + (16 : ℚ) / 7 * (8 ^ n : ℚ)

end

end A016224.P13548876157260451882

namespace A016224

/-- `1/21-4/3*4^n+16/7*8^n` -/
def P13548876157260451882.Spec : Prop :=
  ∀ n, P13548876157260451882.a n = (A016224 n : ℚ)

end A016224

/-! ## A016224.P3871028900252407796

`∑[A016152(n+1)]`
-/

namespace A016224.P3871028900252407796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016224.P3871028900252407796

namespace A016224

/-- `∑[A016152(n+1)]` -/
def P3871028900252407796.Spec : Prop :=
  ∀ n, P3871028900252407796.a n = A016224 n

end A016224

/-! ## A016224.P1688510831657243284

`∑[A147538(n+1)]/2`
-/

namespace A016224.P1688510831657243284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147538 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A016224.P1688510831657243284

namespace A016224

/-- `∑[A147538(n+1)]/2` -/
def P1688510831657243284.Spec : Prop :=
  ∀ n, P1688510831657243284.a n = (A016224 n : ℚ)

end A016224

/-! ## A016224.P15531591420874838960

`(A046636(n+1)-A007583(n+1))/2`
-/

namespace A016224.P15531591420874838960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046636 (n + 1) - A007583 (n + 1) : ℚ) / 2

end

end A016224.P15531591420874838960

namespace A016224

/-- `(A046636(n+1)-A007583(n+1))/2` -/
def P15531591420874838960.Spec : Prop :=
  ∀ n, P15531591420874838960.a n = (A016224 n : ℚ)

end A016224

/-! ## A016224.P8529477483923159348

`∑[A059409(n+1)]/4`
-/

namespace A016224.P8529477483923159348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059409 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A016224.P8529477483923159348

namespace A016224

/-- `∑[A059409(n+1)]/4` -/
def P8529477483923159348.Spec : Prop :=
  ∀ n, P8529477483923159348.a n = (A016224 n : ℚ)

end A016224

/-!
# A016225: Expansion of 1/((1-x)(1-4x)(1-10x)).

The programs for A016225, the canonical program `A016225.P8080949990220095618` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016225 has offset 0).

The definition of A016225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016225.P8080949990220095618

`14*a(n-1)-40*a(n-2)+1` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016225

/-- `14*a(n-1)-40*a(n-2)+1` -/
def P8080949990220095618.Spec : Prop :=
  ∀ n, P8080949990220095618.a n = A016225 n

theorem P8080949990220095618.correct : P8080949990220095618.Spec := by
  intro n
  simp only [A016225]

end A016225

/-! ## A016225.P12237408362482876405

`(50*10^n-24*4^n+1)/27`
-/

namespace A016225.P12237408362482876405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((50 * 10 ^ n : ℤ) - (24 * 4 ^ n : ℤ) + 1 : ℚ) / 27

end

end A016225.P12237408362482876405

namespace A016225

/-- `(50*10^n-24*4^n+1)/27` -/
def P12237408362482876405.Spec : Prop :=
  ∀ n, P12237408362482876405.a n = (A016225 n : ℚ)

end A016225

/-! ## A016225.P16720504510728609407

`∑[10^n]+4*a(n-1)` with `a(0)=1`
-/

namespace A016225.P16720504510728609407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A016225.P16720504510728609407

namespace A016225

/-- `∑[10^n]+4*a(n-1)` -/
def P16720504510728609407.Spec : Prop :=
  ∀ n, (P16720504510728609407.a n : ℤ) = A016225 n

end A016225

/-! ## A016225.P18067770993333380051

`∑[A016157(n)]`
-/

namespace A016225.P18067770993333380051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016225.P18067770993333380051

namespace A016225

/-- `∑[A016157(n)]` -/
def P18067770993333380051.Spec : Prop :=
  ∀ n, P18067770993333380051.a n = A016225 n

end A016225

/-! ## A016225.P851776391446550923

`∑[A000079(n)*A016127(n)]`
-/

namespace A016225.P851776391446550923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016225.P851776391446550923

namespace A016225

/-- `∑[A000079(n)*A016127(n)]` -/
def P851776391446550923.Spec : Prop :=
  ∀ n, P851776391446550923.a n = A016225 n

end A016225

/-!
# A016226: Expansion of 1/((1-x)(1-4x)(1-11x)).

The programs for A016226, the canonical program `A016226.P4533676856399477990` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016226 has offset 0).

The definition of A016226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016226.P4533676856399477990

`15*a(n-1)-44*a(n-2)+1` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016226

/-- `15*a(n-1)-44*a(n-2)+1` -/
def P4533676856399477990.Spec : Prop :=
  ∀ n, P4533676856399477990.a n = A016226 n

theorem P4533676856399477990.correct : P4533676856399477990.Spec := by
  intro n
  simp only [A016226]

end A016226

/-! ## A016226.P8326679699132025929

`∑[4^n+11*a(n-1)]` with `a(0)=1`
-/

namespace A016226.P8326679699132025929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 ^ n + 11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016226.P8326679699132025929

namespace A016226

/-- `∑[4^n+11*a(n-1)]` -/
def P8326679699132025929.Spec : Prop :=
  ∀ n, (P8326679699132025929.a n : ℤ) = A016226 n

end A016226

/-! ## A016226.P5547391461231433583

`∑[A016158(n)]`
-/

namespace A016226.P5547391461231433583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016226.P5547391461231433583

namespace A016226

/-- `∑[A016158(n)]` -/
def P5547391461231433583.Spec : Prop :=
  ∀ n, P5547391461231433583.a n = A016226 n

end A016226

/-! ## A016226.P12892468343746135384

`∑[A139742(n+1)/7]`
-/

namespace A016226.P12892468343746135384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139742 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016226.P12892468343746135384

namespace A016226

/-- `∑[A139742(n+1)/7]` -/
def P12892468343746135384.Spec : Prop :=
  ∀ n, P12892468343746135384.a n = (A016226 n : ℚ)

end A016226

/-! ## A016226.P15053238362360728817

`∑[floor(A155632(n+1)/7)]`
-/

namespace A016226.P15053238362360728817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155632 (n + 1) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016226.P15053238362360728817

namespace A016226

/-- `∑[floor(A155632(n+1)/7)]` -/
def P15053238362360728817.Spec : Prop :=
  ∀ n, P15053238362360728817.a n = A016226 n

end A016226

/-! ## A016226.P15683356290837861426

`2*A016293(n)-A021094(n)`
-/

namespace A016226.P15683356290837861426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016293 n - A021094 n

end

end A016226.P15683356290837861426

namespace A016226

/-- `2*A016293(n)-A021094(n)` -/
def P15683356290837861426.Spec : Prop :=
  ∀ n, P15683356290837861426.a n = A016226 n

end A016226

/-!
# A016227: Expansion of g.f. 1/((1-x)*(1-4*x)*(1-12*x)).

The programs for A016227, the canonical program `A016227.P16755534863761817919` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016227 has offset 0).

The definition of A016227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016227.P16755534863761817919

`16*a(n-1)-48*a(n-2)+1` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016227

/-- `16*a(n-1)-48*a(n-2)+1` -/
def P16755534863761817919.Spec : Prop :=
  ∀ n, P16755534863761817919.a n = A016227 n

theorem P16755534863761817919.correct : P16755534863761817919.Spec := by
  intro n
  simp only [A016227]

end A016227

/-! ## A016227.P546671204771213560

`∑[4^n*∑[3^n]]`
-/

namespace A016227.P546671204771213560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016227.P546671204771213560

namespace A016227

/-- `∑[4^n*∑[3^n]]` -/
def P546671204771213560.Spec : Prop :=
  ∀ n, (P546671204771213560.a n : ℤ) = A016227 n

end A016227

/-! ## A016227.P2819973981964773924

`∑[4*a(n-1)]+12*a(n-1)` with `a(0)=1`
-/

namespace A016227.P2819973981964773924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 12 * a (n - 1)

end

end A016227.P2819973981964773924

namespace A016227

/-- `∑[4*a(n-1)]+12*a(n-1)` -/
def P2819973981964773924.Spec : Prop :=
  ∀ n, (P2819973981964773924.a n : ℤ) = A016227 n

end A016227

/-! ## A016227.P12485442657929743149

`or(1, ∑[A016159(n)])`
-/

namespace A016227.P12485442657929743149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016227.P12485442657929743149

namespace A016227

/-- `or(1, ∑[A016159(n)])` -/
def P12485442657929743149.Spec : Prop :=
  ∀ n, P12485442657929743149.a n = A016227 n

end A016227

/-! ## A016227.P5067155176884151889

`gcd(∑[A016159(n)], A000038(n))`
-/

namespace A016227.P5067155176884151889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A016227.P5067155176884151889

namespace A016227

/-- `gcd(∑[A016159(n)], A000038(n))` -/
def P5067155176884151889.Spec : Prop :=
  ∀ n, (P5067155176884151889.a n : ℤ) = A016227 n

end A016227

/-! ## A016227.P842683886205058498

`2*A016294(n)-∑[A016294(n)]`
-/

namespace A016227.P842683886205058498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016294 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016227.P842683886205058498

namespace A016227

/-- `2*A016294(n)-∑[A016294(n)]` -/
def P842683886205058498.Spec : Prop :=
  ∀ n, P842683886205058498.a n = A016227 n

end A016227

/-! ## A016227.P12426692322658481787

`∑[A016159(n)]+n%A028310(n)`
-/

namespace A016227.P12426692322658481787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (n : ℤ) (A028310 n)

end

end A016227.P12426692322658481787

namespace A016227

/-- `∑[A016159(n)]+n%A028310(n)` -/
def P12426692322658481787.Spec : Prop :=
  ∀ n, P12426692322658481787.a n = A016227 n

end A016227

/-! ## A016227.P2361900083551166039

`char[A133062(n+1)]+∑[A016159(n)]`
-/

namespace A016227.P2361900083551166039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016159 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A016227.P2361900083551166039

namespace A016227

/-- `char[A133062(n+1)]+∑[A016159(n)]` -/
def P2361900083551166039.Spec : Prop :=
  ∀ n, P2361900083551166039.a n = A016227 n

end A016227

/-! ## A016227.P15849786178871152672

`A008683(A030229(n+1))*∑[A016159(n)]`
-/

namespace A016227.P15849786178871152672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A030229 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016227.P15849786178871152672

namespace A016227

/-- `A008683(A030229(n+1))*∑[A016159(n)]` -/
def P15849786178871152672.Spec : Prop :=
  ∀ n, P15849786178871152672.a n = A016227 n

end A016227

/-!
# A016228: Expansion of 1/((1-x)*(1-5*x)(1-6*x)).

The programs for A016228, the canonical program `A016228.P26961002418070087` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016228 has offset 0).

The definition of A016228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016228.P26961002418070087

`11*a(n-1)-30*a(n-2)+1` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016228

/-- `11*a(n-1)-30*a(n-2)+1` -/
def P26961002418070087.Spec : Prop :=
  ∀ n, P26961002418070087.a n = A016228 n

theorem P26961002418070087.correct : P26961002418070087.Spec := by
  intro n
  simp only [A016228]

end A016228

/-! ## A016228.P13873919813003728272

`1/20-25/4*5^n+36/5*6^n`
-/

namespace A016228.P13873919813003728272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 20 - (25 : ℚ) / 4 * (5 ^ n : ℚ) + (36 : ℚ) / 5 * (6 ^ n : ℚ)

end

end A016228.P13873919813003728272

namespace A016228

/-- `1/20-25/4*5^n+36/5*6^n` -/
def P13873919813003728272.Spec : Prop :=
  ∀ n, P13873919813003728272.a n = (A016228 n : ℚ)

end A016228

/-! ## A016228.P7471020341825536922

`∑[∑[A257286(n)]]`
-/

namespace A016228.P7471020341825536922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016228.P7471020341825536922

namespace A016228

/-- `∑[∑[A257286(n)]]` -/
def P7471020341825536922.Spec : Prop :=
  ∀ n, P7471020341825536922.a n = A016228 n

end A016228

/-! ## A016228.P4130569632926540347

`∑[A005062(n+1)]`
-/

namespace A016228.P4130569632926540347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016228.P4130569632926540347

namespace A016228

/-- `∑[A005062(n+1)]` -/
def P4130569632926540347.Spec : Prop :=
  ∀ n, P4130569632926540347.a n = A016228 n

end A016228

/-! ## A016228.P17050801827967358797

`∑[A155639(n+1)-1]`
-/

namespace A016228.P17050801827967358797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155639 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016228.P17050801827967358797

namespace A016228

/-- `∑[A155639(n+1)-1]` -/
def P17050801827967358797.Spec : Prop :=
  ∀ n, P17050801827967358797.a n = A016228 n

end A016228

/-!
# A016229: Inverse of 2220th cyclotomic polynomial.

The programs for A016229, there is no canonical definition to state claims against.
-/

/-! ## A016229.P1508420666493457406

`A015749(n)*A015760(A089851(n))`
-/

namespace A016229.P1508420666493457406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015749 n * A015760 (A089851 n).toNat

end

end A016229.P1508420666493457406

/-!
# A016230: Expansion of 1/((1-x)(1-5x)(1-7x)).

The programs for A016230, the canonical program `A016230.P4129094207998893121` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016230 has offset 0).

The definition of A016230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016230.P4129094207998893121

`12*a(n-1)-35*a(n-2)+1` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016230

/-- `12*a(n-1)-35*a(n-2)+1` -/
def P4129094207998893121.Spec : Prop :=
  ∀ n, P4129094207998893121.a n = A016230 n

theorem P4129094207998893121.correct : P4129094207998893121.Spec := by
  intro n
  simp only [A016230]

end A016230

/-! ## A016230.P16021793830325684492

`(2*7^(n+2)-3*5^(n+2)+1)/24`
-/

namespace A016230.P16021793830325684492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 7 ^ (n + 2) : ℤ) - (3 * 5 ^ (n + 2) : ℤ) + 1 : ℚ) / 24

end

end A016230.P16021793830325684492

namespace A016230

/-- `(2*7^(n+2)-3*5^(n+2)+1)/24` -/
def P16021793830325684492.Spec : Prop :=
  ∀ n, P16021793830325684492.a n = (A016230 n : ℚ)

end A016230

/-! ## A016230.P4018227488794035331

`∑[5^n+7*a(n-1)]` with `a(0)=1`
-/

namespace A016230.P4018227488794035331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 ^ n + 7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016230.P4018227488794035331

namespace A016230

/-- `∑[5^n+7*a(n-1)]` -/
def P4018227488794035331.Spec : Prop :=
  ∀ n, (P4018227488794035331.a n : ℤ) = A016230 n

end A016230

/-! ## A016230.P9311469913880239067

`∑[lcm(5, a(n-1))+7^n]` with `a(0)=1`
-/

namespace A016230.P9311469913880239067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 5 (f1 (n - 1)) + 7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016230.P9311469913880239067

namespace A016230

/-- `∑[lcm(5, a(n-1))+7^n]` -/
def P9311469913880239067.Spec : Prop :=
  ∀ n, (P9311469913880239067.a n : ℤ) = A016230 n

end A016230

/-! ## A016230.P15289030834404935992

`∑[5*a(n-1)]+7*a(n-1)` with `a(0)=1`
-/

namespace A016230.P15289030834404935992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7 * a (n - 1)

end

end A016230.P15289030834404935992

namespace A016230

/-- `∑[5*a(n-1)]+7*a(n-1)` -/
def P15289030834404935992.Spec : Prop :=
  ∀ n, (P15289030834404935992.a n : ℤ) = A016230 n

end A016230

/-! ## A016230.P12219631713049172354

`∑[A016161(n)]`
-/

namespace A016230.P12219631713049172354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016230.P12219631713049172354

namespace A016230

/-- `∑[A016161(n)]` -/
def P12219631713049172354.Spec : Prop :=
  ∀ n, P12219631713049172354.a n = A016230 n

end A016230

/-! ## A016230.P16113992735686324690

`∑[A081200(n+1)]`
-/

namespace A016230.P16113992735686324690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016230.P16113992735686324690

namespace A016230

/-- `∑[A081200(n+1)]` -/
def P16113992735686324690.Spec : Prop :=
  ∀ n, P16113992735686324690.a n = A016230 n

end A016230

/-! ## A016230.P16878714253831337071

`A081033(n)+a(n-2)` with `a(0)=1, a(1)=13`
-/

namespace A016230.P16878714253831337071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13] fun n a =>
  A081033 n + a (n - 2)

end

end A016230.P16878714253831337071

namespace A016230

/-- `A081033(n)+a(n-2)` -/
def P16878714253831337071.Spec : Prop :=
  ∀ n, P16878714253831337071.a n = A016230 n

end A016230

/-! ## A016230.P7211974615533527284

`A016161(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A016230.P7211974615533527284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016161 n + a (A023443 n).toNat

end

end A016230.P7211974615533527284

namespace A016230

/-- `A016161(n)+a(A023443(n))` -/
def P7211974615533527284.Spec : Prop :=
  ∀ n, P7211974615533527284.a n = A016230 n

end A016230

/-! ## A016230.P6030804949750059786

`2*A016296(n)-∑[A016296(n)]`
-/

namespace A016230.P6030804949750059786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016296 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016230.P6030804949750059786

namespace A016230

/-- `2*A016296(n)-∑[A016296(n)]` -/
def P6030804949750059786.Spec : Prop :=
  ∀ n, P6030804949750059786.a n = A016230 n

end A016230

/-!
# A016231: Inverse of 2222nd cyclotomic polynomial.

The programs for A016231, there is no canonical definition to state claims against.
-/

/-! ## A016231.P17771835825219321495

`A015120(n)*A033999(n)`
-/

namespace A016231.P17771835825219321495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015120 n * A033999 n

end

end A016231.P17771835825219321495

/-! ## A016231.P10264559778237041865

`A056594(A033581(n)%A100449(2*(n+1)))`
-/

namespace A016231.P10264559778237041865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.tmod (A033581 n) (A100449 (2 * (n + 1)))).toNat

end

end A016231.P10264559778237041865

/-!
# A016232: Inverse of 2223rd cyclotomic polynomial.

The programs for A016232, there is no canonical definition to state claims against.
-/

/-! ## A016232.P14578105726433281142

`A015998(n)%A157439(n)`
-/

namespace A016232.P14578105726433281142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015998 n) (A157439 n)

end

end A016232.P14578105726433281142

/-!
# A016233: Expansion of 1/((1-x)(1-5x)(1-8x)).

The programs for A016233, the canonical program `A016233.P7115548782075114552` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016233 has offset 0).

The definition of A016233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016233.P7115548782075114552

`13*a(n-1)-40*a(n-2)+1` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016233

/-- `13*a(n-1)-40*a(n-2)+1` -/
def P7115548782075114552.Spec : Prop :=
  ∀ n, P7115548782075114552.a n = A016233 n

theorem P7115548782075114552.correct : P7115548782075114552.Spec := by
  intro n
  simp only [A016233]

end A016233

/-! ## A016233.P8256212442352530927

`∑[5^n+8*a(n-1)]` with `a(0)=1`
-/

namespace A016233.P8256212442352530927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 ^ n + 8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016233.P8256212442352530927

namespace A016233

/-- `∑[5^n+8*a(n-1)]` -/
def P8256212442352530927.Spec : Prop :=
  ∀ n, (P8256212442352530927.a n : ℤ) = A016233 n

end A016233

/-! ## A016233.P14495284605489023912

`∑[5*a(n-1)]+8*a(n-1)` with `a(0)=1`
-/

namespace A016233.P14495284605489023912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1)

end

end A016233.P14495284605489023912

namespace A016233

/-- `∑[5*a(n-1)]+8*a(n-1)` -/
def P14495284605489023912.Spec : Prop :=
  ∀ n, (P14495284605489023912.a n : ℤ) = A016233 n

end A016233

/-! ## A016233.P2555948969001817174

`∑[A016162(n)]`
-/

namespace A016233.P2555948969001817174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016233.P2555948969001817174

namespace A016233

/-- `∑[A016162(n)]` -/
def P2555948969001817174.Spec : Prop :=
  ∀ n, P2555948969001817174.a n = A016233 n

end A016233

/-! ## A016233.P11851668341469849245

`A016282(n)+∑[A016290(n)-A016282(n)]`
-/

namespace A016233.P11851668341469849245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n - A016282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016282 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016233.P11851668341469849245

namespace A016233

/-- `A016282(n)+∑[A016290(n)-A016282(n)]` -/
def P11851668341469849245.Spec : Prop :=
  ∀ n, P11851668341469849245.a n = A016233 n

end A016233

/-! ## A016233.P8959815558945133360

`A016297(n)+A016297(n)-∑[A016297(n)]`
-/

namespace A016233.P8959815558945133360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016297 n + (A016297 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016233.P8959815558945133360

namespace A016233

/-- `A016297(n)+A016297(n)-∑[A016297(n)]` -/
def P8959815558945133360.Spec : Prop :=
  ∀ n, P8959815558945133360.a n = A016233 n

end A016233

/-! ## A016233.P5555822875432705738

`∑[A191468(n+1)/3]`
-/

namespace A016233.P5555822875432705738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191468 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016233.P5555822875432705738

namespace A016233

/-- `∑[A191468(n+1)/3]` -/
def P5555822875432705738.Spec : Prop :=
  ∀ n, P5555822875432705738.a n = (A016233 n : ℚ)

end A016233

/-! ## A016233.P14082538729780735104

`2*A016297(n)-∑[A016297(n)]`
-/

namespace A016233.P14082538729780735104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016297 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016233.P14082538729780735104

namespace A016233

/-- `2*A016297(n)-∑[A016297(n)]` -/
def P14082538729780735104.Spec : Prop :=
  ∀ n, P14082538729780735104.a n = A016233 n

end A016233

/-!
# A016234: Expansion of 1/((1-x) * (1-5*x) * (1-9*x)).

The programs for A016234, the canonical program `A016234.P14031538262727373997` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016234 has offset 0).

The definition of A016234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016234.P14031538262727373997

`14*a(n-1)-45*a(n-2)+1` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016234

/-- `14*a(n-1)-45*a(n-2)+1` -/
def P14031538262727373997.Spec : Prop :=
  ∀ n, P14031538262727373997.a n = A016234 n

theorem P14031538262727373997.correct : P14031538262727373997.Spec := by
  intro n
  simp only [A016234]

end A016234

/-! ## A016234.P12172010284632549349

`(9^(n+2)-2*5^(n+2)+1)/32`
-/

namespace A016234.P12172010284632549349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 2) : ℤ) - (2 * 5 ^ (n + 2) : ℤ) + 1 : ℚ) / 32

end

end A016234.P12172010284632549349

namespace A016234

/-- `(9^(n+2)-2*5^(n+2)+1)/32` -/
def P12172010284632549349.Spec : Prop :=
  ∀ n, P12172010284632549349.a n = (A016234 n : ℚ)

end A016234

/-! ## A016234.P5850057319617485858

`∑[5^n+9*a(n-1)]` with `a(0)=1`
-/

namespace A016234.P5850057319617485858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 ^ n + 9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016234.P5850057319617485858

namespace A016234

/-- `∑[5^n+9*a(n-1)]` -/
def P5850057319617485858.Spec : Prop :=
  ∀ n, (P5850057319617485858.a n : ℤ) = A016234 n

end A016234

/-! ## A016234.P14023660476934493781

`∑[A016163(n)]`
-/

namespace A016234.P14023660476934493781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016234.P14023660476934493781

namespace A016234

/-- `∑[A016163(n)]` -/
def P14023660476934493781.Spec : Prop :=
  ∀ n, P14023660476934493781.a n = A016234 n

end A016234

/-! ## A016234.P14972487711141776532

`5*a(n-1)+A002452(n+1)` with `a(0)=1`
-/

namespace A016234.P14972487711141776532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + A002452 (n + 1)

end

end A016234.P14972487711141776532

namespace A016234

/-- `5*a(n-1)+A002452(n+1)` -/
def P14972487711141776532.Spec : Prop :=
  ∀ n, P14972487711141776532.a n = A016234 n

end A016234

/-! ## A016234.P4127793347016699159

`∑[A211866(n+1)-A104891(n)]`
-/

namespace A016234.P4127793347016699159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211866 (n + 1) - A104891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016234.P4127793347016699159

namespace A016234

/-- `∑[A211866(n+1)-A104891(n)]` -/
def P4127793347016699159.Spec : Prop :=
  ∀ n, P4127793347016699159.a n = A016234 n

end A016234

/-! ## A016234.P2857767903802080884

`A016298(n)+A016298(n)-∑[A016298(n)]`
-/

namespace A016234.P2857767903802080884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016298 n + (A016298 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016234.P2857767903802080884

namespace A016234

/-- `A016298(n)+A016298(n)-∑[A016298(n)]` -/
def P2857767903802080884.Spec : Prop :=
  ∀ n, P2857767903802080884.a n = A016234 n

end A016234

/-! ## A016234.P4762563403498145340

`∑[A191466(n+1)/4]`
-/

namespace A016234.P4762563403498145340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191466 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016234.P4762563403498145340

namespace A016234

/-- `∑[A191466(n+1)/4]` -/
def P4762563403498145340.Spec : Prop :=
  ∀ n, P4762563403498145340.a n = (A016234 n : ℚ)

end A016234

/-! ## A016234.P5257317199252433743

`2*A016298(n)-∑[A016298(n)]`
-/

namespace A016234.P5257317199252433743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016298 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016234.P5257317199252433743

namespace A016234

/-- `2*A016298(n)-∑[A016298(n)]` -/
def P5257317199252433743.Spec : Prop :=
  ∀ n, P5257317199252433743.a n = A016234 n

end A016234

/-! ## A016234.P13731833772319233135

`A111578(A167614(n+1))`
-/

namespace A016234.P13731833772319233135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111578 (A167614 (n + 1)).toNat

end

end A016234.P13731833772319233135

namespace A016234

/-- `A111578(A167614(n+1))` -/
def P13731833772319233135.Spec : Prop :=
  ∀ n, P13731833772319233135.a n = A016234 n

end A016234

/-!
# A016236: Inverse of 2227th cyclotomic polynomial.

The programs for A016236, there is no canonical definition to state claims against.
-/

/-! ## A016236.P6273751329074190807

`A016168(n+2-A087103(n+2))`
-/

namespace A016236.P6273751329074190807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 ((n + 2 : ℤ) - A087103 (n + 2)).toNat

end

end A016236.P6273751329074190807

/-! ## A016236.P11532265884503614673

`A147612(∑[A216601(n+1)]²)`
-/

namespace A016236.P11532265884503614673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A016236.P11532265884503614673

/-! ## A016236.P7253687497427997931

`A010054(∑[comp[A162939(n+5)]])`
-/

namespace A016236.P7253687497427997931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162939 (n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016236.P7253687497427997931

/-! ## A016236.P6096769873369656210

`A181004(A260529(round(n/2)+1))`
-/

namespace A016236.P6096769873369656210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (A260529 (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1).toNat).toNat

end

end A016236.P6096769873369656210

/-! ## A016236.P4127861603563385696

`A388072(∑[char[A007354(n+1)]]²!)`
-/

namespace A016236.P4127861603563385696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007354 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388072 (Nat.factorial ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2))

end

end A016236.P4127861603563385696

/-! ## A016236.P4905627763041129453

`C(A001055(A322529(n+3)), A185227(n))`
-/

namespace A016236.P4905627763041129453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001055 (A322529 (n + 3)).toNat).toNat (A185227 n).toNat

end

end A016236.P4905627763041129453

/-! ## A016236.P10424668043336705574

`val(A205753(n+1), A205753(A375396(n+1)))`
-/

namespace A016236.P10424668043336705574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A205753 (n + 1)).toNat (A205753 (A375396 (n + 1)).toNat).toNat

end

end A016236.P10424668043336705574

/-! ## A016236.P10407904993541887031

`∏{e}[A175782(n+3), A258141(#)]`
-/

namespace A016236.P10407904993541887031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175782 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A258141 (Nat.factorization (f1 n).natAbs p)

end

end A016236.P10407904993541887031

/-! ## A016236.P11622369140809628664

`∏{e}[A175782(n+3), A322337(#)]`
-/

namespace A016236.P11622369140809628664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175782 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A322337 (Nat.factorization (f1 n).natAbs p)

end

end A016236.P11622369140809628664

/-! ## A016236.P3382043455057508679

`A010054(∑[comp[A110474(n+2)]])`
-/

namespace A016236.P3382043455057508679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110474 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016236.P3382043455057508679

/-! ## A016236.P8269986192891470364

`C(A045497(2*(n+1)), A123108(A318585(n+1)))`
-/

namespace A016236.P8269986192891470364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045497 (2 * (n + 1))).toNat (A123108 (A318585 (n + 1)).toNat).toNat

end

end A016236.P8269986192891470364

/-! ## A016236.P17598672561745314048

`val(A060264(2*(n+1)), A090108(A060264(2*(n+1))))`
-/

namespace A016236.P17598672561745314048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060264 (2 * (n + 1))).toNat (A090108 (A060264 (2 * (n + 1))).toNat).toNat

end

end A016236.P17598672561745314048

/-! ## A016236.P14377582022976818454

`and(1, ∏[A184348(n+3)])`
-/

namespace A016236.P14377582022976818454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A016236.P14377582022976818454

/-! ## A016236.P12418505841632951517

`A258021(A000110(∑[char[(n+3)²+n]]))`
-/

namespace A016236.P12418505841632951517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 (A000110 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A016236.P12418505841632951517

/-!
# A016237: Expansion of 1/((1-x)(1-5x)(1-10x)).

The programs for A016237, the canonical program `A016237.P13338186947111394004` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016237 has offset 0).

The definition of A016237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016237.P13338186947111394004

`15*a(n-1)-50*a(n-2)+1` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016237

/-- `15*a(n-1)-50*a(n-2)+1` -/
def P13338186947111394004.Spec : Prop :=
  ∀ n, P13338186947111394004.a n = A016237 n

theorem P13338186947111394004.correct : P13338186947111394004.Spec := by
  intro n
  simp only [A016237]

end A016237

/-! ## A016237.P17230648810626265069

`(8*10^(n+1)-9*5^(n+1)+1)/36`
-/

namespace A016237.P17230648810626265069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 10 ^ (n + 1) : ℤ) - (9 * 5 ^ (n + 1) : ℤ) + 1 : ℚ) / 36

end

end A016237.P17230648810626265069

namespace A016237

/-- `(8*10^(n+1)-9*5^(n+1)+1)/36` -/
def P17230648810626265069.Spec : Prop :=
  ∀ n, P17230648810626265069.a n = (A016237 n : ℚ)

end A016237

/-! ## A016237.P684286748871015770

`∑[A016164(n)]`
-/

namespace A016237.P684286748871015770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016237.P684286748871015770

namespace A016237

/-- `∑[A016164(n)]` -/
def P684286748871015770.Spec : Prop :=
  ∀ n, P684286748871015770.a n = A016237 n

end A016237

/-! ## A016237.P9102062990405496107

`A002276(n+1)-∑[5^n]`
-/

namespace A016237.P9102062990405496107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A016237.P9102062990405496107

namespace A016237

/-- `A002276(n+1)-∑[5^n]` -/
def P9102062990405496107.Spec : Prop :=
  ∀ n, P9102062990405496107.a n = A016237 n

end A016237

/-! ## A016237.P15068820289934499286

`∑[A011557(n)]+5*a(n-1)` with `a(0)=1`
-/

namespace A016237.P15068820289934499286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * a (n - 1)

end

end A016237.P15068820289934499286

namespace A016237

/-- `∑[A011557(n)]+5*a(n-1)` -/
def P15068820289934499286.Spec : Prop :=
  ∀ n, P15068820289934499286.a n = A016237 n

end A016237

/-! ## A016237.P6465739001152413008

`A003463(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A016237.P6465739001152413008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003463 (n + 1) + 10 * a (n - 1)

end

end A016237.P6465739001152413008

namespace A016237

/-- `A003463(n+1)+10*a(n-1)` -/
def P6465739001152413008.Spec : Prop :=
  ∀ n, P6465739001152413008.a n = A016237 n

end A016237

/-! ## A016237.P11116355127368041664

`2*A016299(n)-∑[A016299(n)]`
-/

namespace A016237.P11116355127368041664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016299 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016237.P11116355127368041664

namespace A016237

/-- `2*A016299(n)-∑[A016299(n)]` -/
def P11116355127368041664.Spec : Prop :=
  ∀ n, P11116355127368041664.a n = A016237 n

end A016237

/-! ## A016237.P81467935997668697

`2*A002275(n+1)-A003463(n+1)`
-/

namespace A016237.P81467935997668697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002275 (n + 1) - A003463 (n + 1)

end

end A016237.P81467935997668697

namespace A016237

/-- `2*A002275(n+1)-A003463(n+1)` -/
def P81467935997668697.Spec : Prop :=
  ∀ n, P81467935997668697.a n = A016237 n

end A016237

/-!
# A016238: Expansion of 1/((1-x)*(1-5*x)*(1-11*x)).

The programs for A016238, the canonical program `A016238.P10448808943130506088` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016238 has offset 0).

The definition of A016238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016238.P10448808943130506088

`16*a(n-1)-55*a(n-2)+1` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016238

/-- `16*a(n-1)-55*a(n-2)+1` -/
def P10448808943130506088.Spec : Prop :=
  ∀ n, P10448808943130506088.a n = A016238 n

theorem P10448808943130506088.correct : P10448808943130506088.Spec := by
  intro n
  simp only [A016238]

end A016238

/-! ## A016238.P9169827413389700215

`(2*11^(n+2)-5^(n+3)+3)/120`
-/

namespace A016238.P9169827413389700215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 11 ^ (n + 2) : ℤ) - (5 ^ (n + 3) : ℤ) + 3 : ℚ) / 120

end

end A016238.P9169827413389700215

namespace A016238

/-- `(2*11^(n+2)-5^(n+3)+3)/120` -/
def P9169827413389700215.Spec : Prop :=
  ∀ n, P9169827413389700215.a n = (A016238 n : ℚ)

end A016238

/-! ## A016238.P16034339900701953630

`∑[5^n]+11*a(n-1)` with `a(0)=1`
-/

namespace A016238.P16034339900701953630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 11 * a (n - 1)

end

end A016238.P16034339900701953630

namespace A016238

/-- `∑[5^n]+11*a(n-1)` -/
def P16034339900701953630.Spec : Prop :=
  ∀ n, (P16034339900701953630.a n : ℤ) = A016238 n

end A016238

/-! ## A016238.P5689461475981060458

`∑[lcm(11, a(n-1))+5^n]` with `a(0)=1`
-/

namespace A016238.P5689461475981060458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 11 (f1 (n - 1)) + 5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016238.P5689461475981060458

namespace A016238

/-- `∑[lcm(11, a(n-1))+5^n]` -/
def P5689461475981060458.Spec : Prop :=
  ∀ n, (P5689461475981060458.a n : ℤ) = A016238 n

end A016238

/-! ## A016238.P9841168853050763349

`∑[A016165(n)]`
-/

namespace A016238.P9841168853050763349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016238.P9841168853050763349

namespace A016238

/-- `∑[A016165(n)]` -/
def P9841168853050763349.Spec : Prop :=
  ∀ n, P9841168853050763349.a n = A016238 n

end A016238

/-! ## A016238.P14070680258615059013

`∑[A139743(n+1)/6]`
-/

namespace A016238.P14070680258615059013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139743 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016238.P14070680258615059013

namespace A016238

/-- `∑[A139743(n+1)/6]` -/
def P14070680258615059013.Spec : Prop :=
  ∀ n, P14070680258615059013.a n = (A016238 n : ℚ)

end A016238

/-! ## A016238.P2325376727879255341

`2*A016301(n)-∑[A016301(n)]`
-/

namespace A016238.P2325376727879255341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016301 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016238.P2325376727879255341

namespace A016238

/-- `2*A016301(n)-∑[A016301(n)]` -/
def P2325376727879255341.Spec : Prop :=
  ∀ n, P2325376727879255341.a n = A016238 n

end A016238

/-! ## A016238.P2787947464378286803

`2*A016265(n)-A023946(n)`
-/

namespace A016238.P2787947464378286803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016265 n - A023946 n

end

end A016238.P2787947464378286803

namespace A016238

/-- `2*A016265(n)-A023946(n)` -/
def P2787947464378286803.Spec : Prop :=
  ∀ n, P2787947464378286803.a n = A016238 n

end A016238

/-!
# A016239: Expansion of 1/((1-x)*(1-5*x)*(1-12*x)).

The programs for A016239, the canonical program `A016239.P9742753630930197134` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016239 has offset 0).

The definition of A016239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016239.P9742753630930197134

`1+17*a(n-1)-60*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016239

/-- `1+17*a(n-1)-60*a(n-2)` -/
def P9742753630930197134.Spec : Prop :=
  ∀ n, P9742753630930197134.a n = A016239 n

theorem P9742753630930197134.correct : P9742753630930197134.Spec := by
  intro n
  simp only [A016239]

end A016239

/-! ## A016239.P13277007988256018354

`(4*12^(n+2)-11*5^(n+2)+7)/308`
-/

namespace A016239.P13277007988256018354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 12 ^ (n + 2) : ℤ) - (11 * 5 ^ (n + 2) : ℤ) + 7 : ℚ) / 308

end

end A016239.P13277007988256018354

namespace A016239

/-- `(4*12^(n+2)-11*5^(n+2)+7)/308` -/
def P13277007988256018354.Spec : Prop :=
  ∀ n, P13277007988256018354.a n = (A016239 n : ℚ)

end A016239

/-! ## A016239.P9261999106929211215

`∑[5^n]+12*a(n-1)` with `a(0)=1`
-/

namespace A016239.P9261999106929211215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 12 * a (n - 1)

end

end A016239.P9261999106929211215

namespace A016239

/-- `∑[5^n]+12*a(n-1)` -/
def P9261999106929211215.Spec : Prop :=
  ∀ n, (P9261999106929211215.a n : ℤ) = A016239 n

end A016239

/-! ## A016239.P3210889984532359196

`∑[A016166(n)]`
-/

namespace A016239.P3210889984532359196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016239.P3210889984532359196

namespace A016239

/-- `∑[A016166(n)]` -/
def P3210889984532359196.Spec : Prop :=
  ∀ n, P3210889984532359196.a n = A016239 n

end A016239

/-! ## A016239.P13486764864151448477

`A104891(n)+xor(1, 12*a(n-1))` with `a(0)=1`
-/

namespace A016239.P13486764864151448477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104891 n + Int.xor 1 (12 * a (n - 1))

end

end A016239.P13486764864151448477

namespace A016239

/-- `A104891(n)+xor(1, 12*a(n-1))` -/
def P13486764864151448477.Spec : Prop :=
  ∀ n, P13486764864151448477.a n = A016239 n

end A016239

/-! ## A016239.P11449563541309339225

`A003463(n+1)+3*4*a(n-1)` with `a(0)=1`
-/

namespace A016239.P11449563541309339225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003463 (n + 1) + 3 * (4 * a (n - 1))

end

end A016239.P11449563541309339225

namespace A016239

/-- `A003463(n+1)+3*4*a(n-1)` -/
def P11449563541309339225.Spec : Prop :=
  ∀ n, P11449563541309339225.a n = A016239 n

end A016239

/-! ## A016239.P10960361816308006034

`2*A016302(n)-A021164(n)`
-/

namespace A016239.P10960361816308006034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016302 n - A021164 n

end

end A016239.P10960361816308006034

namespace A016239

/-- `2*A016302(n)-A021164(n)` -/
def P10960361816308006034.Spec : Prop :=
  ∀ n, P10960361816308006034.a n = A016239 n

end A016239

/-!
# A016240: Inverse of 2231st cyclotomic polynomial.

The programs for A016240, there is no canonical definition to state claims against.
-/

/-! ## A016240.P12758161656638178192

`A069010(C(6, A326682(n+3)))`
-/

namespace A016240.P12758161656638178192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Nat.choose 6 (A326682 (n + 3)).toNat)

end

end A016240.P12758161656638178192

/-! ## A016240.P13671589881793614012

`C(A130403(n), ∑[A294889(n+1)])`
-/

namespace A016240.P13671589881793614012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130403 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016240.P13671589881793614012

/-! ## A016240.P7214351976770833732

`C(A054977(n), ∑[A137579(n+4)])`
-/

namespace A016240.P7214351976770833732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054977 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016240.P7214351976770833732

/-! ## A016240.P6331902898459241112

`and(char[A363941(n+1)], A204763(n+1))`
-/

namespace A016240.P6331902898459241112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363941 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A204763 (n + 1))

end

end A016240.P6331902898459241112

/-! ## A016240.P6312510243705252938

`C(floor(n^(1/5)), A000384(A026802(n+4)))`
-/

namespace A016240.P6312510243705252938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋.toNat (A000384 (A026802 (n + 4)).toNat).toNat

end

end A016240.P6312510243705252938

/-! ## A016240.P13467164808905593547

`C(A374540(n+1), A030451(A326683(n)))`
-/

namespace A016240.P13467164808905593547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A374540 (n + 1)).toNat (A030451 (A326683 n).toNat).toNat

end

end A016240.P13467164808905593547

/-! ## A016240.P14016868028793966715

`A230642(2*n+3)^A219254(A326545(n))`
-/

namespace A016240.P14016868028793966715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230642 (2 * n + 3) : ℚ) ^ (A219254 (A326545 n).toNat : ℤ)

end

end A016240.P14016868028793966715

/-! ## A016240.P3715872001914847605

`C(2, A326686(n))`
-/

namespace A016240.P3715872001914847605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326686 n).toNat

end

end A016240.P3715872001914847605

/-! ## A016240.P15630573907114437382

`A000007(floor(A276429(n+3)/A006450(2*n+5)))`
-/

namespace A016240.P15630573907114437382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(A276429 (n + 3) : ℚ) / (A006450 (2 * n + 5) : ℚ)⌋.toNat

end

end A016240.P15630573907114437382

/-!
# A016241: Expansion of 1/((1-x)*(1-6*x)*(1-7*x)).

The programs for A016241, the canonical program `A016241.P3520479057001008297` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016241 has offset 0).

The definition of A016241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016241.P3520479057001008297

`13*a(n-1)-42*a(n-2)+1` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016241

/-- `13*a(n-1)-42*a(n-2)+1` -/
def P3520479057001008297.Spec : Prop :=
  ∀ n, P3520479057001008297.a n = A016241 n

theorem P3520479057001008297.correct : P3520479057001008297.Spec := by
  intro n
  simp only [A016241]

end A016241

/-! ## A016241.P8893606412040392091

`∑[7^(n+1)-6^(n+1)]`
-/

namespace A016241.P8893606412040392091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016241.P8893606412040392091

namespace A016241

/-- `∑[7^(n+1)-6^(n+1)]` -/
def P8893606412040392091.Spec : Prop :=
  ∀ n, P8893606412040392091.a n = A016241 n

end A016241

/-! ## A016241.P11738433350370112347

`∑[6*a(n-1)]+7*a(n-1)` with `a(0)=1`
-/

namespace A016241.P11738433350370112347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7 * a (n - 1)

end

end A016241.P11738433350370112347

namespace A016241

/-- `∑[6*a(n-1)]+7*a(n-1)` -/
def P11738433350370112347.Spec : Prop :=
  ∀ n, (P11738433350370112347.a n : ℤ) = A016241 n

end A016241

/-! ## A016241.P12051450950824083624

`∑[A155650(n+1)]-(n+1)`
-/

namespace A016241.P12051450950824083624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A016241.P12051450950824083624

namespace A016241

/-- `∑[A155650(n+1)]-(n+1)` -/
def P12051450950824083624.Spec : Prop :=
  ∀ n, P12051450950824083624.a n = A016241 n

end A016241

/-! ## A016241.P10895043196421132320

`A016169(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A016241.P10895043196421132320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016169 (n + 1) + a (n - 1)

end

end A016241.P10895043196421132320

namespace A016241

/-- `A016169(n+1)+a(n-1)` -/
def P10895043196421132320.Spec : Prop :=
  ∀ n, P10895043196421132320.a n = A016241 n

end A016241

/-! ## A016241.P18286896126187411663

`2*A016230(n)-A016228(n)`
-/

namespace A016241.P18286896126187411663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016230 n - A016228 n

end

end A016241.P18286896126187411663

namespace A016241

/-- `2*A016230(n)-A016228(n)` -/
def P18286896126187411663.Spec : Prop :=
  ∀ n, P18286896126187411663.a n = A016241 n

end A016241

/-! ## A016241.P12078738291281067544

`A104896(n+1)-A105281(n+1)`
-/

namespace A016241.P12078738291281067544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104896 (n + 1) - A105281 (n + 1)

end

end A016241.P12078738291281067544

namespace A016241

/-- `A104896(n+1)-A105281(n+1)` -/
def P12078738291281067544.Spec : Prop :=
  ∀ n, P12078738291281067544.a n = A016241 n

end A016241

/-! ## A016241.P16109312028005031687

`A023000(n+2)-A003464(n+2)`
-/

namespace A016241.P16109312028005031687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 (n + 2) - A003464 (n + 2)

end

end A016241.P16109312028005031687

namespace A016241

/-- `A023000(n+2)-A003464(n+2)` -/
def P16109312028005031687.Spec : Prop :=
  ∀ n, P16109312028005031687.a n = A016241 n

end A016241

/-! ## A016241.P1503865697723355357

`A047852(n+2)-A047851(n+2)`
-/

namespace A016241.P1503865697723355357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 (n + 2) - A047851 (n + 2)

end

end A016241.P1503865697723355357

namespace A016241

/-- `A047852(n+2)-A047851(n+2)` -/
def P1503865697723355357.Spec : Prop :=
  ∀ n, P1503865697723355357.a n = A016241 n

end A016241

/-! ## A016241.P12112866965411113253

`Δ[A014830(n+1)-A014829(n+1)]`
-/

namespace A016241.P12112866965411113253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014830 (n + 1) - A014829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016241.P12112866965411113253

namespace A016241

/-- `Δ[A014830(n+1)-A014829(n+1)]` -/
def P12112866965411113253.Spec : Prop :=
  ∀ n, P12112866965411113253.a n = A016241 n

end A016241

/-! ## A016241.P14422721494553346690

`A016304(n)+A016304(n)-A021174(n)`
-/

namespace A016241.P14422721494553346690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016304 n + (A016304 n - A021174 n)

end

end A016241.P14422721494553346690

namespace A016241

/-- `A016304(n)+A016304(n)-A021174(n)` -/
def P14422721494553346690.Spec : Prop :=
  ∀ n, P14422721494553346690.a n = A016241 n

end A016241

/-! ## A016241.P17824329679606154620

`2*A016304(n)-A021174(n)`
-/

namespace A016241.P17824329679606154620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016304 n - A021174 n

end

end A016241.P17824329679606154620

namespace A016241

/-- `2*A016304(n)-A021174(n)` -/
def P17824329679606154620.Spec : Prop :=
  ∀ n, P17824329679606154620.a n = A016241 n

end A016241

/-! ## A016241.P10456947067816168863

`2*A016243(n)-A016249(n)`
-/

namespace A016241.P10456947067816168863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016243 n - A016249 n

end

end A016241.P10456947067816168863

namespace A016241

/-- `2*A016243(n)-A016249(n)` -/
def P10456947067816168863.Spec : Prop :=
  ∀ n, P10456947067816168863.a n = A016241 n

end A016241

/-!
# A016242: Inverse of 2233rd cyclotomic polynomial.

The programs for A016242, there is no canonical definition to state claims against.
-/

/-! ## A016242.P16836773848000166761

`A011642(n)+Δ[A002266(A034461(n+1)!)]`
-/

namespace A016242.P16836773848000166761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Nat.factorial (A034461 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011642 n + (f1 (n + 1) - f1 n)

end

end A016242.P16836773848000166761

/-!
# A016243: Expansion of 1/((1-x)*(1-6*x)*(1-8*x)).

The programs for A016243, the canonical program `A016243.P9666076489332176834` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016243 has offset 0).

The definition of A016243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016243.P9666076489332176834

`14*a(n-1)-48*a(n-2)+1` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016243

/-- `14*a(n-1)-48*a(n-2)+1` -/
def P9666076489332176834.Spec : Prop :=
  ∀ n, P9666076489332176834.a n = A016243 n

theorem P9666076489332176834.correct : P9666076489332176834.Spec := by
  intro n
  simp only [A016243]

end A016243

/-! ## A016243.P11470974940122380467

`(20*8^(n+1)-21*6^(n+1)+1)/35`
-/

namespace A016243.P11470974940122380467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 * 8 ^ (n + 1) : ℤ) - (21 * 6 ^ (n + 1) : ℤ) + 1 : ℚ) / 35

end

end A016243.P11470974940122380467

namespace A016243

/-- `(20*8^(n+1)-21*6^(n+1)+1)/35` -/
def P11470974940122380467.Spec : Prop :=
  ∀ n, P11470974940122380467.a n = (A016243 n : ℚ)

end A016243

/-! ## A016243.P11956712489232476003

`∑[6^n+8*a(n-1)]` with `a(0)=1`
-/

namespace A016243.P11956712489232476003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 ^ n + 8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016243.P11956712489232476003

namespace A016243

/-- `∑[6^n+8*a(n-1)]` -/
def P11956712489232476003.Spec : Prop :=
  ∀ n, (P11956712489232476003.a n : ℤ) = A016243 n

end A016243

/-! ## A016243.P5476023981853424654

`∑[6*a(n-1)]+8*a(n-1)` with `a(0)=1`
-/

namespace A016243.P5476023981853424654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1)

end

end A016243.P5476023981853424654

namespace A016243

/-- `∑[6*a(n-1)]+8*a(n-1)` -/
def P5476023981853424654.Spec : Prop :=
  ∀ n, (P5476023981853424654.a n : ℤ) = A016243 n

end A016243

/-! ## A016243.P10182512614881549666

`∑[A016170(n)]`
-/

namespace A016243.P10182512614881549666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016243.P10182512614881549666

namespace A016243

/-- `∑[A016170(n)]` -/
def P10182512614881549666.Spec : Prop :=
  ∀ n, P10182512614881549666.a n = A016243 n

end A016243

/-! ## A016243.P1480023889341176839

`∑[A081201(n+1)]`
-/

namespace A016243.P1480023889341176839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016243.P1480023889341176839

namespace A016243

/-- `∑[A081201(n+1)]` -/
def P1480023889341176839.Spec : Prop :=
  ∀ n, P1480023889341176839.a n = A016243 n

end A016243

/-! ## A016243.P7844426815677837531

`A081034(n)+a(n-2)` with `a(0)=1, a(1)=15`
-/

namespace A016243.P7844426815677837531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15] fun n a =>
  A081034 n + a (n - 2)

end

end A016243.P7844426815677837531

namespace A016243

/-- `A081034(n)+a(n-2)` -/
def P7844426815677837531.Spec : Prop :=
  ∀ n, P7844426815677837531.a n = A016243 n

end A016243

/-! ## A016243.P10420893288755440658

`A358598(n+1)-A358504(n+1)`
-/

namespace A016243.P10420893288755440658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358598 (n + 1) - A358504 (n + 1)

end

end A016243.P10420893288755440658

namespace A016243

/-- `A358598(n+1)-A358504(n+1)` -/
def P10420893288755440658.Spec : Prop :=
  ∀ n, P10420893288755440658.a n = A016243 n

end A016243

/-! ## A016243.P18072942216726380303

`2*A016305(n)-∑[A016305(n)]`
-/

namespace A016243.P18072942216726380303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016305 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016243.P18072942216726380303

namespace A016243

/-- `2*A016305(n)-∑[A016305(n)]` -/
def P18072942216726380303.Spec : Prop :=
  ∀ n, P18072942216726380303.a n = A016243 n

end A016243

/-!
# A016244: Expansion of 1/((1-x)*(1-6*x)*(1-9*x)).

The programs for A016244, the canonical program `A016244.P4363096758144622374` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016244 has offset 0).

The definition of A016244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016244.P4363096758144622374

`15*a(n-1)-54*a(n-2)+1` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016244

/-- `15*a(n-1)-54*a(n-2)+1` -/
def P4363096758144622374.Spec : Prop :=
  ∀ n, P4363096758144622374.a n = A016244 n

theorem P4363096758144622374.correct : P4363096758144622374.Spec := by
  intro n
  simp only [A016244]

end A016244

/-! ## A016244.P4949982345722067295

`(1-96*6^n+135*9^n)/40`
-/

namespace A016244.P4949982345722067295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (96 * 6 ^ n : ℤ) + (135 * 9 ^ n : ℤ) : ℚ) / 40

end

end A016244.P4949982345722067295

namespace A016244

/-- `(1-96*6^n+135*9^n)/40` -/
def P4949982345722067295.Spec : Prop :=
  ∀ n, P4949982345722067295.a n = (A016244 n : ℚ)

end A016244

/-! ## A016244.P4066843944843861295

`∑[A016172(n)]`
-/

namespace A016244.P4066843944843861295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016244.P4066843944843861295

namespace A016244

/-- `∑[A016172(n)]` -/
def P4066843944843861295.Spec : Prop :=
  ∀ n, P4066843944843861295.a n = A016244 n

end A016244

/-! ## A016244.P6908841448170367909

`∑[A001019(n)]+6*a(n-1)` with `a(0)=1`
-/

namespace A016244.P6908841448170367909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6 * a (n - 1)

end

end A016244.P6908841448170367909

namespace A016244

/-- `∑[A001019(n)]+6*a(n-1)` -/
def P6908841448170367909.Spec : Prop :=
  ∀ n, P6908841448170367909.a n = A016244 n

end A016244

/-! ## A016244.P14954472558012523781

`A016306(n)+A016306(n)-∑[A016306(n)]`
-/

namespace A016244.P14954472558012523781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016306 n + (A016306 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016244.P14954472558012523781

namespace A016244

/-- `A016306(n)+A016306(n)-∑[A016306(n)]` -/
def P14954472558012523781.Spec : Prop :=
  ∀ n, P14954472558012523781.a n = A016244 n

end A016244

/-! ## A016244.P17879090704206967573

`2*A016306(n)-∑[A016306(n)]`
-/

namespace A016244.P17879090704206967573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016306 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016244.P17879090704206967573

namespace A016244

/-- `2*A016306(n)-∑[A016306(n)]` -/
def P17879090704206967573.Spec : Prop :=
  ∀ n, P17879090704206967573.a n = A016244 n

end A016244

/-!
# A016245: Inverse of 2236th cyclotomic polynomial.

The programs for A016245, there is no canonical definition to state claims against.
-/

/-! ## A016245.P3664942979821559789

`A015918(A336420(n+1))*A015933(n)`
-/

namespace A016245.P3664942979821559789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (A336420 (n + 1)).toNat * A015933 n

end

end A016245.P3664942979821559789

/-!
# A016246: Expansion of 1/((1-x)(1-6x)(1-10x)).

The programs for A016246, the canonical program `A016246.P17229271922072497228` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016246 has offset 0).

The definition of A016246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016246.P17229271922072497228

`16*a(n-1)-60*a(n-2)+1` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016246

/-- `16*a(n-1)-60*a(n-2)+1` -/
def P17229271922072497228.Spec : Prop :=
  ∀ n, P17229271922072497228.a n = A016246 n

theorem P17229271922072497228.correct : P17229271922072497228.Spec := by
  intro n
  simp only [A016246]

end A016246

/-! ## A016246.P1059502192845663304

`(5*10^(n+2)-9*6^(n+2)+4)/180`
-/

namespace A016246.P1059502192845663304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 10 ^ (n + 2) : ℤ) - (9 * 6 ^ (n + 2) : ℤ) + 4 : ℚ) / 180

end

end A016246.P1059502192845663304

namespace A016246

/-- `(5*10^(n+2)-9*6^(n+2)+4)/180` -/
def P1059502192845663304.Spec : Prop :=
  ∀ n, P1059502192845663304.a n = (A016246 n : ℚ)

end A016246

/-! ## A016246.P18435448553482989961

`∑[6^n+10*a(n-1)]` with `a(0)=1`
-/

namespace A016246.P18435448553482989961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 ^ n + 10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016246.P18435448553482989961

namespace A016246

/-- `∑[6^n+10*a(n-1)]` -/
def P18435448553482989961.Spec : Prop :=
  ∀ n, (P18435448553482989961.a n : ℤ) = A016246 n

end A016246

/-! ## A016246.P13827953019466026282

`∑[A016173(n)]`
-/

namespace A016246.P13827953019466026282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016246.P13827953019466026282

namespace A016246

/-- `∑[A016173(n)]` -/
def P13827953019466026282.Spec : Prop :=
  ∀ n, P13827953019466026282.a n = A016246 n

end A016246

/-! ## A016246.P5209282387877516682

`A000042(n+1)+6*a(n-1)` with `a(0)=1`
-/

namespace A016246.P5209282387877516682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000042 (n + 1) + 6 * a (n - 1)

end

end A016246.P5209282387877516682

namespace A016246

/-- `A000042(n+1)+6*a(n-1)` -/
def P5209282387877516682.Spec : Prop :=
  ∀ n, P5209282387877516682.a n = A016246 n

end A016246

/-! ## A016246.P7063324248622797795

`A002275(n+1)+6*a(n-1)` with `a(0)=1`
-/

namespace A016246.P7063324248622797795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002275 (n + 1) + 6 * a (n - 1)

end

end A016246.P7063324248622797795

namespace A016246

/-- `A002275(n+1)+6*a(n-1)` -/
def P7063324248622797795.Spec : Prop :=
  ∀ n, P7063324248622797795.a n = A016246 n

end A016246

/-! ## A016246.P1377694455356574411

`A003464(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A016246.P1377694455356574411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003464 (n + 1) + 10 * a (n - 1)

end

end A016246.P1377694455356574411

namespace A016246

/-- `A003464(n+1)+10*a(n-1)` -/
def P1377694455356574411.Spec : Prop :=
  ∀ n, P1377694455356574411.a n = A016246 n

end A016246

/-! ## A016246.P10976999370054224794

`∑[A000079(n)*A005059(n+1)]`
-/

namespace A016246.P10976999370054224794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016246.P10976999370054224794

namespace A016246

/-- `∑[A000079(n)*A005059(n+1)]` -/
def P10976999370054224794.Spec : Prop :=
  ∀ n, P10976999370054224794.a n = A016246 n

end A016246

/-! ## A016246.P17001297130930230557

`2*A016307(n)-∑[A016307(n)]`
-/

namespace A016246.P17001297130930230557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016307 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016246.P17001297130930230557

namespace A016246

/-- `2*A016307(n)-∑[A016307(n)]` -/
def P17001297130930230557.Spec : Prop :=
  ∀ n, P17001297130930230557.a n = A016246 n

end A016246

/-! ## A016246.P17491584493588667326

`∑[A005059(n+1)*A011782(n+1)]`
-/

namespace A016246.P17491584493588667326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 1) * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016246.P17491584493588667326

namespace A016246

/-- `∑[A005059(n+1)*A011782(n+1)]` -/
def P17491584493588667326.Spec : Prop :=
  ∀ n, P17491584493588667326.a n = A016246 n

end A016246

/-!
# A016247: Expansion of 1/((1-x) * (1-6*x) * (1-11*x)).

The programs for A016247, the canonical program `A016247.P10910879909538172826` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016247 has offset 0).

The definition of A016247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016247.P10910879909538172826

`17*a(n-1)-66*a(n-2)+1` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016247

/-- `17*a(n-1)-66*a(n-2)+1` -/
def P10910879909538172826.Spec : Prop :=
  ∀ n, P10910879909538172826.a n = A016247 n

theorem P10910879909538172826.correct : P10910879909538172826.Spec := by
  intro n
  simp only [A016247]

end A016247

/-! ## A016247.P8964364868464623345

`(11^(n+2)-2*6^(n+2)+1)/50`
-/

namespace A016247.P8964364868464623345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 2) : ℤ) - (2 * 6 ^ (n + 2) : ℤ) + 1 : ℚ) / 50

end

end A016247.P8964364868464623345

namespace A016247

/-- `(11^(n+2)-2*6^(n+2)+1)/50` -/
def P8964364868464623345.Spec : Prop :=
  ∀ n, P8964364868464623345.a n = (A016247 n : ℚ)

end A016247

/-! ## A016247.P8155579792724601901

`∑[6^n+11*a(n-1)]` with `a(0)=1`
-/

namespace A016247.P8155579792724601901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 ^ n + 11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016247.P8155579792724601901

namespace A016247

/-- `∑[6^n+11*a(n-1)]` -/
def P8155579792724601901.Spec : Prop :=
  ∀ n, (P8155579792724601901.a n : ℤ) = A016247 n

end A016247

/-! ## A016247.P4129285807347715254

`a(n-1)+(11^(n+1)-6^(n+1))/5` with `a(0)=1`
-/

namespace A016247.P4129285807347715254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((11 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ) : ℚ) / 5

end

end A016247.P4129285807347715254

namespace A016247

/-- `a(n-1)+(11^(n+1)-6^(n+1))/5` -/
def P4129285807347715254.Spec : Prop :=
  ∀ n, P4129285807347715254.a n = (A016247 n : ℚ)

end A016247

/-! ## A016247.P15165904092836888824

`∑[A016174(n)]`
-/

namespace A016247.P15165904092836888824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016247.P15165904092836888824

namespace A016247

/-- `∑[A016174(n)]` -/
def P15165904092836888824.Spec : Prop :=
  ∀ n, P15165904092836888824.a n = A016247 n

end A016247

/-! ## A016247.P13829099101147133950

`2*A016308(n)-A021204(n)`
-/

namespace A016247.P13829099101147133950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016308 n - A021204 n

end

end A016247.P13829099101147133950

namespace A016247

/-- `2*A016308(n)-A021204(n)` -/
def P13829099101147133950.Spec : Prop :=
  ∀ n, P13829099101147133950.a n = A016247 n

end A016247

/-! ## A016247.P13484551014261753347

`Δ[a(n-1)+∑[A155654(n)-1]/5]` with `a(0)=1`
-/

namespace A016247.P13484551014261753347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155654 n - 1

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016247.P13484551014261753347

namespace A016247

/-- `Δ[a(n-1)+∑[A155654(n)-1]/5]` -/
def P13484551014261753347.Spec : Prop :=
  ∀ n, P13484551014261753347.a n = (A016247 n : ℚ)

end A016247

/-! ## A016247.P11851475561039462468

`A166973(∑[n+2]+4)`
-/

namespace A016247.P11851475561039462468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166973 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A016247.P11851475561039462468

namespace A016247

/-- `A166973(∑[n+2]+4)` -/
def P11851475561039462468.Spec : Prop :=
  ∀ n, P11851475561039462468.a n = A016247 n

end A016247

/-!
# A016248: Expansion of 1/((1-x)(1-6x)(1-12x)).

The programs for A016248, the canonical program `A016248.P8149568517718324575` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016248 has offset 0).

The definition of A016248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016248.P8149568517718324575

`18*a(n-1)-72*a(n-2)+1` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016248

/-- `18*a(n-1)-72*a(n-2)+1` -/
def P8149568517718324575.Spec : Prop :=
  ∀ n, P8149568517718324575.a n = A016248 n

theorem P8149568517718324575.correct : P8149568517718324575.Spec := by
  intro n
  simp only [A016248]

end A016248

/-! ## A016248.P8424555054529984671

`(5*12^(n+2)-11*6^(n+2)+6)/330`
-/

namespace A016248.P8424555054529984671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 12 ^ (n + 2) : ℤ) - (11 * 6 ^ (n + 2) : ℤ) + 6 : ℚ) / 330

end

end A016248.P8424555054529984671

namespace A016248

/-- `(5*12^(n+2)-11*6^(n+2)+6)/330` -/
def P8424555054529984671.Spec : Prop :=
  ∀ n, P8424555054529984671.a n = (A016248 n : ℚ)

end A016248

/-! ## A016248.P8434733823221617478

`∑[A016175(n)]`
-/

namespace A016248.P8434733823221617478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016248.P8434733823221617478

namespace A016248

/-- `∑[A016175(n)]` -/
def P8434733823221617478.Spec : Prop :=
  ∀ n, P8434733823221617478.a n = A016248 n

end A016248

/-! ## A016248.P8872690123793362867

`2*A016309(n)-∑[A016309(n)]`
-/

namespace A016248.P8872690123793362867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016309 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016248.P8872690123793362867

namespace A016248

/-- `2*A016309(n)-∑[A016309(n)]` -/
def P8872690123793362867.Spec : Prop :=
  ∀ n, P8872690123793362867.a n = A016248 n

end A016248

/-! ## A016248.P696373876005595520

`A016125(n)+A016125(n)-A003464(n+1)`
-/

namespace A016248.P696373876005595520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016125 n + (A016125 n - A003464 (n + 1))

end

end A016248.P696373876005595520

namespace A016248

/-- `A016125(n)+A016125(n)-A003464(n+1)` -/
def P696373876005595520.Spec : Prop :=
  ∀ n, P696373876005595520.a n = A016248 n

end A016248

/-!
# A016249: Expansion of 1/((1-x)*(1-7*x)*(1-8*x)).

The programs for A016249, the canonical program `A016249.P11964231714687387570` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016249 has offset 0).

The definition of A016249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016249.P11964231714687387570

`15*a(n-1)-56*a(n-2)+1` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016249

/-- `15*a(n-1)-56*a(n-2)+1` -/
def P11964231714687387570.Spec : Prop :=
  ∀ n, P11964231714687387570.a n = A016249 n

theorem P11964231714687387570.correct : P11964231714687387570.Spec := by
  intro n
  simp only [A016249]

end A016249

/-! ## A016249.P6147100889754798732

`∑[8^(n+1)-7^(n+1)]`
-/

namespace A016249.P6147100889754798732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ (n + 1) : ℤ) - (7 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016249.P6147100889754798732

namespace A016249

/-- `∑[8^(n+1)-7^(n+1)]` -/
def P6147100889754798732.Spec : Prop :=
  ∀ n, P6147100889754798732.a n = A016249 n

end A016249

/-! ## A016249.P14205668176818394574

`∑[7*a(n-1)]+8*a(n-1)` with `a(0)=1`
-/

namespace A016249.P14205668176818394574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1)

end

end A016249.P14205668176818394574

namespace A016249

/-- `∑[7*a(n-1)]+8*a(n-1)` -/
def P14205668176818394574.Spec : Prop :=
  ∀ n, (P14205668176818394574.a n : ℤ) = A016249 n

end A016249

/-! ## A016249.P6613570831136612977

`A016177(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A016249.P6613570831136612977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016177 (n + 1) + a (n - 1)

end

end A016249.P6613570831136612977

namespace A016249

/-- `A016177(n+1)+a(n-1)` -/
def P6613570831136612977.Spec : Prop :=
  ∀ n, P6613570831136612977.a n = A016249 n

end A016249

/-! ## A016249.P1395878081566291095

`A052379(n)-A104896(n+1)`
-/

namespace A016249.P1395878081566291095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052379 n - A104896 (n + 1)

end

end A016249.P1395878081566291095

namespace A016249

/-- `A052379(n)-A104896(n+1)` -/
def P1395878081566291095.Spec : Prop :=
  ∀ n, P1395878081566291095.a n = A016249 n

end A016249

/-! ## A016249.P9673205607575975271

`2*A016243(n)-A016241(n)`
-/

namespace A016249.P9673205607575975271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016243 n - A016241 n

end

end A016249.P9673205607575975271

namespace A016249

/-- `2*A016243(n)-A016241(n)` -/
def P9673205607575975271.Spec : Prop :=
  ∀ n, P9673205607575975271.a n = A016249 n

end A016249

/-! ## A016249.P6997828142274519479

`A016177(n+1)+∑[A016177(n)]`
-/

namespace A016249.P6997828142274519479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016177 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016249.P6997828142274519479

namespace A016249

/-- `A016177(n+1)+∑[A016177(n)]` -/
def P6997828142274519479.Spec : Prop :=
  ∀ n, P6997828142274519479.a n = A016249 n

end A016249

/-! ## A016249.P5181805616927868256

`2*A016311(n)-∑[A016311(n)]`
-/

namespace A016249.P5181805616927868256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016311 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016249.P5181805616927868256

namespace A016249

/-- `2*A016311(n)-∑[A016311(n)]` -/
def P5181805616927868256.Spec : Prop :=
  ∀ n, P5181805616927868256.a n = A016249 n

end A016249

/-! ## A016249.P2995585914184408447

`A023001(n+2)-A023000(n+2)`
-/

namespace A016249.P2995585914184408447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (n + 2) - A023000 (n + 2)

end

end A016249.P2995585914184408447

namespace A016249

/-- `A023001(n+2)-A023000(n+2)` -/
def P2995585914184408447.Spec : Prop :=
  ∀ n, P2995585914184408447.a n = A016249 n

end A016249

/-! ## A016249.P2031298799893282558

`A047853(n+2)-A047852(n+2)`
-/

namespace A016249.P2031298799893282558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 (n + 2) - A047852 (n + 2)

end

end A016249.P2031298799893282558

namespace A016249

/-- `A047853(n+2)-A047852(n+2)` -/
def P2031298799893282558.Spec : Prop :=
  ∀ n, P2031298799893282558.a n = A016249 n

end A016249

/-! ## A016249.P4101126807796542723

`Δ[A014831(n+1)-A014830(n+1)]`
-/

namespace A016249.P4101126807796542723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014831 (n + 1) - A014830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016249.P4101126807796542723

namespace A016249

/-- `Δ[A014831(n+1)-A014830(n+1)]` -/
def P4101126807796542723.Spec : Prop :=
  ∀ n, P4101126807796542723.a n = A016249 n

end A016249

/-! ## A016249.P2055285994572182599

`2*A016250(n)-A016256(n)`
-/

namespace A016249.P2055285994572182599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016250 n - A016256 n

end

end A016249.P2055285994572182599

namespace A016249

/-- `2*A016250(n)-A016256(n)` -/
def P2055285994572182599.Spec : Prop :=
  ∀ n, P2055285994572182599.a n = A016249 n

end A016249

/-!
# A016250: Expansion of 1/((1-x)(1-7x)(1-9x)).

The programs for A016250, the canonical program `A016250.P13169107479836662060` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016250 has offset 0).

The definition of A016250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016250.P13169107479836662060

`16*a(n-1)-63*a(n-2)+1` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016250

/-- `16*a(n-1)-63*a(n-2)+1` -/
def P13169107479836662060.Spec : Prop :=
  ∀ n, P13169107479836662060.a n = A016250 n

theorem P13169107479836662060.correct : P13169107479836662060.Spec := by
  intro n
  simp only [A016250]

end A016250

/-! ## A016250.P156114276973043036

`(3*9^(n+2)-4*7^(n+2)+1)/48`
-/

namespace A016250.P156114276973043036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ (n + 2) : ℤ) - (4 * 7 ^ (n + 2) : ℤ) + 1 : ℚ) / 48

end

end A016250.P156114276973043036

namespace A016250

/-- `(3*9^(n+2)-4*7^(n+2)+1)/48` -/
def P156114276973043036.Spec : Prop :=
  ∀ n, P156114276973043036.a n = (A016250 n : ℚ)

end A016250

/-! ## A016250.P10073521089770191225

`∑[7^n+9*a(n-1)]` with `a(0)=1`
-/

namespace A016250.P10073521089770191225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 ^ n + 9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016250.P10073521089770191225

namespace A016250

/-- `∑[7^n+9*a(n-1)]` -/
def P10073521089770191225.Spec : Prop :=
  ∀ n, (P10073521089770191225.a n : ℤ) = A016250 n

end A016250

/-! ## A016250.P16874349566577652986

`∑[lcm(7, a(n-1))+9^n]` with `a(0)=1`
-/

namespace A016250.P16874349566577652986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 7 (f1 (n - 1)) + 9 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016250.P16874349566577652986

namespace A016250

/-- `∑[lcm(7, a(n-1))+9^n]` -/
def P16874349566577652986.Spec : Prop :=
  ∀ n, (P16874349566577652986.a n : ℤ) = A016250 n

end A016250

/-! ## A016250.P12573953339379652817

`∑[A016178(n)]`
-/

namespace A016250.P12573953339379652817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016250.P12573953339379652817

namespace A016250

/-- `∑[A016178(n)]` -/
def P12573953339379652817.Spec : Prop :=
  ∀ n, P12573953339379652817.a n = A016250 n

end A016250

/-! ## A016250.P5959295769077387166

`∑[A081202(n+1)]`
-/

namespace A016250.P5959295769077387166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016250.P5959295769077387166

namespace A016250

/-- `∑[A081202(n+1)]` -/
def P5959295769077387166.Spec : Prop :=
  ∀ n, P5959295769077387166.a n = A016250 n

end A016250

/-! ## A016250.P8382663239956832097

`∑[record[A081202(abs(1-n))]]`
-/

namespace A016250.P8382663239956832097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081202 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016250.P8382663239956832097

namespace A016250

/-- `∑[record[A081202(abs(1-n))]]` -/
def P8382663239956832097.Spec : Prop :=
  ∀ n, P8382663239956832097.a n = A016250 n

end A016250

/-! ## A016250.P681718429690105218

`A081035(n)+a(n-2)` with `a(0)=1, a(1)=17`
-/

namespace A016250.P681718429690105218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 17] fun n a =>
  A081035 n + a (n - 2)

end

end A016250.P681718429690105218

namespace A016250

/-- `A081035(n)+a(n-2)` -/
def P681718429690105218.Spec : Prop :=
  ∀ n, P681718429690105218.a n = A016250 n

end A016250

/-! ## A016250.P2600976611335383961

`∑[A001019(n)]+7*a(n-1)` with `a(0)=1`
-/

namespace A016250.P2600976611335383961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7 * a (n - 1)

end

end A016250.P2600976611335383961

namespace A016250

/-- `∑[A001019(n)]+7*a(n-1)` -/
def P2600976611335383961.Spec : Prop :=
  ∀ n, P2600976611335383961.a n = A016250 n

end A016250

/-! ## A016250.P15245609654376595127

`A016178(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A016250.P15245609654376595127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016178 (A028310 n).toNat + a (n - 1)

end

end A016250.P15245609654376595127

namespace A016250

/-- `A016178(A028310(n))+a(n-1)` -/
def P15245609654376595127.Spec : Prop :=
  ∀ n, P15245609654376595127.a n = A016250 n

end A016250

/-! ## A016250.P5587226905663579400

`∑[A191467(n+1)/2]`
-/

namespace A016250.P5587226905663579400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191467 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016250.P5587226905663579400

namespace A016250

/-- `∑[A191467(n+1)/2]` -/
def P5587226905663579400.Spec : Prop :=
  ∀ n, P5587226905663579400.a n = (A016250 n : ℚ)

end A016250

/-! ## A016250.P10034676882587621009

`2*A016312(n)-∑[A016312(n)]`
-/

namespace A016250.P10034676882587621009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016312 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016250.P10034676882587621009

namespace A016250

/-- `2*A016312(n)-∑[A016312(n)]` -/
def P10034676882587621009.Spec : Prop :=
  ∀ n, P10034676882587621009.a n = A016250 n

end A016250

/-!
# A016251: Inverse of 2242nd cyclotomic polynomial.

The programs for A016251, there is no canonical definition to state claims against.
-/

/-! ## A016251.P8440608365524451121

`A015130(n)*A033999(n)`
-/

namespace A016251.P8440608365524451121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015130 n * A033999 n

end

end A016251.P8440608365524451121

/-!
# A016252: Expansion of 1/((1-x)*(1-7x)*(1-10x)).

The programs for A016252, the canonical program `A016252.P3681295138745290475` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016252 has offset 0).

The definition of A016252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016252.P3681295138745290475

`17*a(n-1)-70*a(n-2)+1` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016252

/-- `17*a(n-1)-70*a(n-2)+1` -/
def P3681295138745290475.Spec : Prop :=
  ∀ n, P3681295138745290475.a n = A016252 n

theorem P3681295138745290475.correct : P3681295138745290475.Spec := by
  intro n
  simp only [A016252]

end A016252

/-! ## A016252.P1305870642651833026

`(2*10^(n+2)-3*7^(n+2)+1)/54`
-/

namespace A016252.P1305870642651833026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 10 ^ (n + 2) : ℤ) - (3 * 7 ^ (n + 2) : ℤ) + 1 : ℚ) / 54

end

end A016252.P1305870642651833026

namespace A016252

/-- `(2*10^(n+2)-3*7^(n+2)+1)/54` -/
def P1305870642651833026.Spec : Prop :=
  ∀ n, P1305870642651833026.a n = (A016252 n : ℚ)

end A016252

/-! ## A016252.P1770489060568624907

`∑[7^n+10*a(n-1)]` with `a(0)=1`
-/

namespace A016252.P1770489060568624907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 ^ n + 10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016252.P1770489060568624907

namespace A016252

/-- `∑[7^n+10*a(n-1)]` -/
def P1770489060568624907.Spec : Prop :=
  ∀ n, (P1770489060568624907.a n : ℤ) = A016252 n

end A016252

/-! ## A016252.P13980662297878538310

`∑[lcm(10, a(n-1))+7^n]` with `a(0)=1`
-/

namespace A016252.P13980662297878538310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 10 (f1 (n - 1)) + 7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016252.P13980662297878538310

namespace A016252

/-- `∑[lcm(10, a(n-1))+7^n]` -/
def P13980662297878538310.Spec : Prop :=
  ∀ n, (P13980662297878538310.a n : ℤ) = A016252 n

end A016252

/-! ## A016252.P5254621723897808965

`∑[A016181(n)]`
-/

namespace A016252.P5254621723897808965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016252.P5254621723897808965

namespace A016252

/-- `∑[A016181(n)]` -/
def P5254621723897808965.Spec : Prop :=
  ∀ n, P5254621723897808965.a n = A016252 n

end A016252

/-! ## A016252.P5565228578340489831

`∑[A000420(n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A016252.P5565228578340489831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A016252.P5565228578340489831

namespace A016252

/-- `∑[A000420(n)]+10*a(n-1)` -/
def P5565228578340489831.Spec : Prop :=
  ∀ n, P5565228578340489831.a n = A016252 n

end A016252

/-! ## A016252.P7593870309139018961

`A002275(n+1)+7*a(n-1)` with `a(0)=1`
-/

namespace A016252.P7593870309139018961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002275 (n + 1) + 7 * a (n - 1)

end

end A016252.P7593870309139018961

namespace A016252

/-- `A002275(n+1)+7*a(n-1)` -/
def P7593870309139018961.Spec : Prop :=
  ∀ n, P7593870309139018961.a n = A016252 n

end A016252

/-! ## A016252.P18149314613651825570

`2*A016313(n)-∑[A016313(n)]`
-/

namespace A016252.P18149314613651825570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016313 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016252.P18149314613651825570

namespace A016252

/-- `2*A016313(n)-∑[A016313(n)]` -/
def P18149314613651825570.Spec : Prop :=
  ∀ n, P18149314613651825570.a n = A016252 n

end A016252

/-!
# A016253: Inverse of 2244th cyclotomic polynomial.

The programs for A016253, there is no canonical definition to state claims against.
-/

/-! ## A016253.P11520548197201454953

`A015131(gcd(2*n, A001281(n)))`
-/

namespace A016253.P11520548197201454953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015131 (Int.gcd (2 * n : ℤ) (A001281 n))

end

end A016253.P11520548197201454953

/-! ## A016253.P11864298581419957244

`A016331(A071669(n))`
-/

namespace A016253.P11864298581419957244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016331 (A071669 n).toNat

end

end A016253.P11864298581419957244

/-! ## A016253.P4716640712490385401

`A016331(A325692(n))`
-/

namespace A016253.P4716640712490385401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016331 (A325692 n).toNat

end

end A016253.P4716640712490385401

/-! ## A016253.P5386807927373886098

`A016331(n)%A182744(n+1)`
-/

namespace A016253.P5386807927373886098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016331 n) (A182744 (n + 1))

end

end A016253.P5386807927373886098

/-! ## A016253.P5674606236765208792

`A016331(A329303(n))`
-/

namespace A016253.P5674606236765208792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016331 (A329303 n).toNat

end

end A016253.P5674606236765208792

/-!
# A016254: Expansion of 1/((1-x)(1-7x)(1-11x)).

The programs for A016254, the canonical program `A016254.P12174284519355303678` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016254 has offset 0).

The definition of A016254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016254.P12174284519355303678

`18*a(n-1)-77*a(n-2)+1` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016254

/-- `18*a(n-1)-77*a(n-2)+1` -/
def P12174284519355303678.Spec : Prop :=
  ∀ n, P12174284519355303678.a n = A016254 n

theorem P12174284519355303678.correct : P12174284519355303678.Spec := by
  intro n
  simp only [A016254]

end A016254

/-! ## A016254.P5491425110570002067

`(3*11^(n+2)-5*7^(n+2)+2)/120`
-/

namespace A016254.P5491425110570002067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ (n + 2) : ℤ) - (5 * 7 ^ (n + 2) : ℤ) + 2 : ℚ) / 120

end

end A016254.P5491425110570002067

namespace A016254

/-- `(3*11^(n+2)-5*7^(n+2)+2)/120` -/
def P5491425110570002067.Spec : Prop :=
  ∀ n, P5491425110570002067.a n = (A016254 n : ℚ)

end A016254

/-! ## A016254.P12964137439437427911

`∑[A016183(n)]`
-/

namespace A016254.P12964137439437427911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016254.P12964137439437427911

namespace A016254

/-- `∑[A016183(n)]` -/
def P12964137439437427911.Spec : Prop :=
  ∀ n, P12964137439437427911.a n = A016254 n

end A016254

/-! ## A016254.P10289869323096272417

`∑[A139745(n+1)/4]`
-/

namespace A016254.P10289869323096272417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139745 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016254.P10289869323096272417

namespace A016254

/-- `∑[A139745(n+1)/4]` -/
def P10289869323096272417.Spec : Prop :=
  ∀ n, P10289869323096272417.a n = (A016254 n : ℚ)

end A016254

/-! ## A016254.P1766846497753625968

`11*a(n-1)+A104896(n)+1` with `a(0)=1`
-/

namespace A016254.P1766846497753625968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) + (A104896 n + 1)

end

end A016254.P1766846497753625968

namespace A016254

/-- `11*a(n-1)+A104896(n)+1` -/
def P1766846497753625968.Spec : Prop :=
  ∀ n, P1766846497753625968.a n = A016254 n

end A016254

/-! ## A016254.P16693538496204003909

`2*A016216(n)-A016212(n)`
-/

namespace A016254.P16693538496204003909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016216 n - A016212 n

end

end A016254.P16693538496204003909

namespace A016254

/-- `2*A016216(n)-A016212(n)` -/
def P16693538496204003909.Spec : Prop :=
  ∀ n, P16693538496204003909.a n = A016254 n

end A016254

/-! ## A016254.P8105269527973769337

`2*A016314(n)-∑[A016314(n)]`
-/

namespace A016254.P8105269527973769337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016314 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016254.P8105269527973769337

namespace A016254

/-- `2*A016314(n)-∑[A016314(n)]` -/
def P8105269527973769337.Spec : Prop :=
  ∀ n, P8105269527973769337.a n = A016254 n

end A016254

/-!
# A016255: Expansion of 1/((1-x)(1-7x)(1-12x)).

The programs for A016255, the canonical program `A016255.P301517136862989583` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016255 has offset 0).

The definition of A016255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016255.P301517136862989583

`19*a(n-1)-84*a(n-2)+1` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016255

/-- `19*a(n-1)-84*a(n-2)+1` -/
def P301517136862989583.Spec : Prop :=
  ∀ n, P301517136862989583.a n = A016255 n

theorem P301517136862989583.correct : P301517136862989583.Spec := by
  intro n
  simp only [A016255]

end A016255

/-! ## A016255.P10158410290501918233

`(6*12^(n+2)-11*7^(n+2)+5)/330`
-/

namespace A016255.P10158410290501918233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 12 ^ (n + 2) : ℤ) - (11 * 7 ^ (n + 2) : ℤ) + 5 : ℚ) / 330

end

end A016255.P10158410290501918233

namespace A016255

/-- `(6*12^(n+2)-11*7^(n+2)+5)/330` -/
def P10158410290501918233.Spec : Prop :=
  ∀ n, P10158410290501918233.a n = (A016255 n : ℚ)

end A016255

/-! ## A016255.P4380143481632432239

`∑[7^n+12*a(n-1)]` with `a(0)=1`
-/

namespace A016255.P4380143481632432239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 ^ n + 12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016255.P4380143481632432239

namespace A016255

/-- `∑[7^n+12*a(n-1)]` -/
def P4380143481632432239.Spec : Prop :=
  ∀ n, (P4380143481632432239.a n : ℤ) = A016255 n

end A016255

/-! ## A016255.P13446865516854967270

`∑[A016184(n)]`
-/

namespace A016255.P13446865516854967270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016255.P13446865516854967270

namespace A016255

/-- `∑[A016184(n)]` -/
def P13446865516854967270.Spec : Prop :=
  ∀ n, P13446865516854967270.a n = A016255 n

end A016255

/-! ## A016255.P97316704970171487

`2*A016207(n)-A016201(n)`
-/

namespace A016255.P97316704970171487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016207 n - A016201 n

end

end A016255.P97316704970171487

namespace A016255

/-- `2*A016207(n)-A016201(n)` -/
def P97316704970171487.Spec : Prop :=
  ∀ n, P97316704970171487.a n = A016255 n

end A016255

/-! ## A016255.P2918963402204434592

`a(n-1)+or(A016184(n), A257680(n))` with `a(0)=1`
-/

namespace A016255.P2918963402204434592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A016184 n) (A257680 n)

end

end A016255.P2918963402204434592

namespace A016255

/-- `a(n-1)+or(A016184(n), A257680(n))` -/
def P2918963402204434592.Spec : Prop :=
  ∀ n, P2918963402204434592.a n = A016255 n

end A016255

/-! ## A016255.P17577021278529237164

`A016200(n)+A021214(n)-A016201(n)`
-/

namespace A016255.P17577021278529237164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016200 n + (A021214 n - A016201 n)

end

end A016255.P17577021278529237164

namespace A016255

/-- `A016200(n)+A021214(n)-A016201(n)` -/
def P17577021278529237164.Spec : Prop :=
  ∀ n, P17577021278529237164.a n = A016255 n

end A016255

/-! ## A016255.P6751668569339786212

`A016304(n)+A021214(n)-A021174(n)`
-/

namespace A016255.P6751668569339786212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016304 n + (A021214 n - A021174 n)

end

end A016255.P6751668569339786212

namespace A016255

/-- `A016304(n)+A021214(n)-A021174(n)` -/
def P6751668569339786212.Spec : Prop :=
  ∀ n, P6751668569339786212.a n = A016255 n

end A016255

/-! ## A016255.P782266249613931264

`A016315(n)+A016315(n)-∑[A016315(n)]`
-/

namespace A016255.P782266249613931264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016315 n + (A016315 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016255.P782266249613931264

namespace A016255

/-- `A016315(n)+A016315(n)-∑[A016315(n)]` -/
def P782266249613931264.Spec : Prop :=
  ∀ n, P782266249613931264.a n = A016255 n

end A016255

/-! ## A016255.P9030406782234310050

`2*A016315(n)-∑[A016315(n)]`
-/

namespace A016255.P9030406782234310050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016315 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016255.P9030406782234310050

namespace A016255

/-- `2*A016315(n)-∑[A016315(n)]` -/
def P9030406782234310050.Spec : Prop :=
  ∀ n, P9030406782234310050.a n = A016255 n

end A016255

/-!
# A016256: Expansion of 1/((1-x)*(1-8*x)*(1-9*x)).

The programs for A016256, the canonical program `A016256.P15956888653129714303` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016256 has offset 0).

The definition of A016256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016256.P15956888653129714303

`17*a(n-1)-72*a(n-2)+1` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016256

/-- `17*a(n-1)-72*a(n-2)+1` -/
def P15956888653129714303.Spec : Prop :=
  ∀ n, P15956888653129714303.a n = A016256 n

theorem P15956888653129714303.correct : P15956888653129714303.Spec := by
  intro n
  simp only [A016256]

end A016256

/-! ## A016256.P17789980892909363252

`∑[∑[abs(Δ[9^n-8^n])]]`
-/

namespace A016256.P17789980892909363252
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) - (8 ^ n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f3 (n + 1) - f3 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016256.P17789980892909363252

namespace A016256

/-- `∑[∑[abs(Δ[9^n-8^n])]]` -/
def P17789980892909363252.Spec : Prop :=
  ∀ n, P17789980892909363252.a n = A016256 n

end A016256

/-! ## A016256.P11455908177045639906

`A016185(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A016256.P11455908177045639906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016185 (n + 1) + a (n - 1)

end

end A016256.P11455908177045639906

namespace A016256

/-- `A016185(n+1)+a(n-1)` -/
def P11455908177045639906.Spec : Prop :=
  ∀ n, P11455908177045639906.a n = A016256 n

end A016256

/-! ## A016256.P10908596846489463981

`A002452(n+1)+8*a(n-1)` with `a(0)=1`
-/

namespace A016256.P10908596846489463981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002452 (n + 1) + 8 * a (n - 1)

end

end A016256.P10908596846489463981

namespace A016256

/-- `A002452(n+1)+8*a(n-1)` -/
def P10908596846489463981.Spec : Prop :=
  ∀ n, P10908596846489463981.a n = A016256 n

end A016256

/-! ## A016256.P14937197864008881967

`A052386(n+1)-A052379(n)`
-/

namespace A016256.P14937197864008881967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052386 (n + 1) - A052379 n

end

end A016256.P14937197864008881967

namespace A016256

/-- `A052386(n+1)-A052379(n)` -/
def P14937197864008881967.Spec : Prop :=
  ∀ n, P14937197864008881967.a n = A016256 n

end A016256

/-! ## A016256.P16584044920767005067

`2*A016250(n)-A016249(n)`
-/

namespace A016256.P16584044920767005067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016250 n - A016249 n

end

end A016256.P16584044920767005067

namespace A016256

/-- `2*A016250(n)-A016249(n)` -/
def P16584044920767005067.Spec : Prop :=
  ∀ n, P16584044920767005067.a n = A016256 n

end A016256

/-! ## A016256.P10511905555160398858

`(A020343(n)+A016233(n))/2`
-/

namespace A016256.P10511905555160398858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020343 n + A016233 n : ℚ) / 2

end

end A016256.P10511905555160398858

namespace A016256

/-- `(A020343(n)+A016233(n))/2` -/
def P10511905555160398858.Spec : Prop :=
  ∀ n, P10511905555160398858.a n = (A016256 n : ℚ)

end A016256

/-! ## A016256.P7191685543980405414

`2*A016316(n)-∑[A016316(n)]`
-/

namespace A016256.P7191685543980405414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016316 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016256.P7191685543980405414

namespace A016256

/-- `2*A016316(n)-∑[A016316(n)]` -/
def P7191685543980405414.Spec : Prop :=
  ∀ n, P7191685543980405414.a n = A016256 n

end A016256

/-! ## A016256.P983985859990299630

`A002452(n+2)-A023001(n+2)`
-/

namespace A016256.P983985859990299630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 (n + 2) - A023001 (n + 2)

end

end A016256.P983985859990299630

namespace A016256

/-- `A002452(n+2)-A023001(n+2)` -/
def P983985859990299630.Spec : Prop :=
  ∀ n, P983985859990299630.a n = A016256 n

end A016256

/-! ## A016256.P4737426061145551366

`A047854(n+2)-A047853(n+2)`
-/

namespace A016256.P4737426061145551366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047854 (n + 2) - A047853 (n + 2)

end

end A016256.P4737426061145551366

namespace A016256

/-- `A047854(n+2)-A047853(n+2)` -/
def P4737426061145551366.Spec : Prop :=
  ∀ n, P4737426061145551366.a n = A016256 n

end A016256

/-! ## A016256.P13547235638988753717

`Δ[A014832(n+1)-A014831(n+1)]`
-/

namespace A016256.P13547235638988753717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014832 (n + 1) - A014831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016256.P13547235638988753717

namespace A016256

/-- `Δ[A014832(n+1)-A014831(n+1)]` -/
def P13547235638988753717.Spec : Prop :=
  ∀ n, P13547235638988753717.a n = A016256 n

end A016256

/-!
# A016257: Expansion of 1/((1-x)(1-8x)(1-10x)).

The programs for A016257, the canonical program `A016257.P16866822528635276068` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016257 has offset 0).

The definition of A016257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016257.P16866822528635276068

`18*a(n-1)-80*a(n-2)+1` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016257

/-- `18*a(n-1)-80*a(n-2)+1` -/
def P16866822528635276068.Spec : Prop :=
  ∀ n, P16866822528635276068.a n = A016257 n

theorem P16866822528635276068.correct : P16866822528635276068.Spec := by
  intro n
  simp only [A016257]

end A016257

/-! ## A016257.P2158668034714282082

`1/63*(7*2^(n+1)*5^(n+2)-9*2^(3*n+5)+1)`
-/

namespace A016257.P2158668034714282082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 63 * ((7 * 2 ^ (n + 1) * 5 ^ (n + 2) : ℤ) - (9 * 2 ^ (3 * n + 5) : ℤ) + 1 : ℚ)

end

end A016257.P2158668034714282082

namespace A016257

/-- `1/63*(7*2^(n+1)*5^(n+2)-9*2^(3*n+5)+1)` -/
def P2158668034714282082.Spec : Prop :=
  ∀ n, P2158668034714282082.a n = (A016257 n : ℚ)

end A016257

/-! ## A016257.P7543487692519390415

`∑[10*a(n-1)]+8*a(n-1)` with `a(0)=1`
-/

namespace A016257.P7543487692519390415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1)

end

end A016257.P7543487692519390415

namespace A016257

/-- `∑[10*a(n-1)]+8*a(n-1)` -/
def P7543487692519390415.Spec : Prop :=
  ∀ n, (P7543487692519390415.a n : ℤ) = A016257 n

end A016257

/-! ## A016257.P2173076757958750895

`∑[A016186(n)]`
-/

namespace A016257.P2173076757958750895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016257.P2173076757958750895

namespace A016257

/-- `∑[A016186(n)]` -/
def P2173076757958750895.Spec : Prop :=
  ∀ n, P2173076757958750895.a n = A016257 n

end A016257

/-! ## A016257.P5216694235170915209

`∑[A081203(n+1)]`
-/

namespace A016257.P5216694235170915209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016257.P5216694235170915209

namespace A016257

/-- `∑[A081203(n+1)]` -/
def P5216694235170915209.Spec : Prop :=
  ∀ n, P5216694235170915209.a n = A016257 n

end A016257

/-! ## A016257.P13454952146631271805

`A081036(n)+a(n-2)` with `a(0)=1, a(1)=19`
-/

namespace A016257.P13454952146631271805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  A081036 n + a (n - 2)

end

end A016257.P13454952146631271805

namespace A016257

/-- `A081036(n)+a(n-2)` -/
def P13454952146631271805.Spec : Prop :=
  ∀ n, P13454952146631271805.a n = A016257 n

end A016257

/-! ## A016257.P8545906451424241523

`-∑[-(A155667(n+1)-1)/2]`
-/

namespace A016257.P8545906451424241523
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A155667 (n + 1) - 1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016257.P8545906451424241523

namespace A016257

/-- `-∑[-(A155667(n+1)-1)/2]` -/
def P8545906451424241523.Spec : Prop :=
  ∀ n, P8545906451424241523.a n = (A016257 n : ℚ)

end A016257

/-! ## A016257.P10922592331816143548

`A000042(n+1)+8*a(n-1)` with `a(0)=1`
-/

namespace A016257.P10922592331816143548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000042 (n + 1) + 8 * a (n - 1)

end

end A016257.P10922592331816143548

namespace A016257

/-- `A000042(n+1)+8*a(n-1)` -/
def P10922592331816143548.Spec : Prop :=
  ∀ n, P10922592331816143548.a n = A016257 n

end A016257

/-! ## A016257.P13075163077190540943

`A002275(n+1)+8*a(n-1)` with `a(0)=1`
-/

namespace A016257.P13075163077190540943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002275 (n + 1) + 8 * a (n - 1)

end

end A016257.P13075163077190540943

namespace A016257

/-- `A002275(n+1)+8*a(n-1)` -/
def P13075163077190540943.Spec : Prop :=
  ∀ n, P13075163077190540943.a n = A016257 n

end A016257

/-! ## A016257.P5438971756704414026

`∑[A000079(3*n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A016257.P5438971756704414026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A016257.P5438971756704414026

namespace A016257

/-- `∑[A000079(3*n)]+10*a(n-1)` -/
def P5438971756704414026.Spec : Prop :=
  ∀ n, P5438971756704414026.a n = A016257 n

end A016257

/-! ## A016257.P10212826654890776264

`A358599(n+1)-A358598(n+1)`
-/

namespace A016257.P10212826654890776264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358599 (n + 1) - A358598 (n + 1)

end

end A016257.P10212826654890776264

namespace A016257

/-- `A358599(n+1)-A358598(n+1)` -/
def P10212826654890776264.Spec : Prop :=
  ∀ n, P10212826654890776264.a n = A016257 n

end A016257

/-! ## A016257.P8682141601326038869

`∑[A248343(n)/2]+(A155667(n+1)-1)/2`
-/

namespace A016257.P8682141601326038869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248343 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A155667 (n + 1) - 1 : ℚ) / 2

end

end A016257.P8682141601326038869

namespace A016257

/-- `∑[A248343(n)/2]+(A155667(n+1)-1)/2` -/
def P8682141601326038869.Spec : Prop :=
  ∀ n, P8682141601326038869.a n = (A016257 n : ℚ)

end A016257

/-!
# A016258: 

The programs for A016258, there is no canonical definition to state claims against.
-/

/-! ## A016258.P2011749881403018964

`n+1-comp[A134985(3*n+4)]`
-/

namespace A016258.P2011749881403018964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134985 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A016258.P2011749881403018964

/-! ## A016258.P17707345426303412844

`C(n, comp[A339657(n+2)])`
-/

namespace A016258.P17707345426303412844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339657 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016258.P17707345426303412844

/-! ## A016258.P10015813397919682179

`C(n, comp[A168234(n+3)])`
-/

namespace A016258.P10015813397919682179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168234 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016258.P10015813397919682179

/-! ## A016258.P11854740299282781437

`floor(6/(31-A326588(n)))+1`
-/

namespace A016258.P11854740299282781437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 / (31 - A326588 n : ℚ)⌋ + 1

end

end A016258.P11854740299282781437

/-! ## A016258.P7578466916760787272

`A000007(floor(A240026(n)/A189680(n+1)))`
-/

namespace A016258.P7578466916760787272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(A240026 n : ℚ) / (A189680 (n + 1) : ℚ)⌋.toNat

end

end A016258.P7578466916760787272

/-! ## A016258.P15582965622827614700

`C(A057063(n+1), A057063(A043318(n+1)))`
-/

namespace A016258.P15582965622827614700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057063 (n + 1)).toNat (A057063 (A043318 (n + 1)).toNat).toNat

end

end A016258.P15582965622827614700

/-! ## A016258.P10532648285425753804

`A225054(C(2, A326527(n)))`
-/

namespace A016258.P10532648285425753804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225054 (Nat.choose 2 (A326527 n).toNat)

end

end A016258.P10532648285425753804

/-! ## A016258.P6358342993485587334

`A038444(A214081(2*(n+1)))%2`
-/

namespace A016258.P6358342993485587334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038444 (A214081 (2 * (n + 1))).toNat) 2

end

end A016258.P6358342993485587334

/-! ## A016258.P5862204176592397320

`C(∑[val(n+1, 6)], A326528(n))`
-/

namespace A016258.P5862204176592397320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A326528 n).toNat

end

end A016258.P5862204176592397320

/-! ## A016258.P6054826266037015877

`A010060(C(2, A326525(n)))`
-/

namespace A016258.P6054826266037015877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose 2 (A326525 n).toNat)

end

end A016258.P6054826266037015877

/-! ## A016258.P9324541113884217996

`A165574(C(2, A326525(n)))`
-/

namespace A016258.P9324541113884217996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165574 (Nat.choose 2 (A326525 n).toNat)

end

end A016258.P9324541113884217996

/-! ## A016258.P13120123164779318866

`A365089(C(2, A326525(n)))`
-/

namespace A016258.P13120123164779318866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 (Nat.choose 2 (A326525 n).toNat)

end

end A016258.P13120123164779318866

/-!
# A016259: Expansion of 1/((1-x)(1-8x)(1-11x)).

The programs for A016259, the canonical program `A016259.P8056299051130114829` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016259 has offset 0).

The definition of A016259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016259.P8056299051130114829

`19*a(n-1)-88*a(n-2)+1` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016259

/-- `19*a(n-1)-88*a(n-2)+1` -/
def P8056299051130114829.Spec : Prop :=
  ∀ n, P8056299051130114829.a n = A016259 n

theorem P8056299051130114829.correct : P8056299051130114829.Spec := by
  intro n
  simp only [A016259]

end A016259

/-! ## A016259.P2904564136669317938

`(7*11^(n+2)-10*8^(n+2)+3)/210`
-/

namespace A016259.P2904564136669317938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 11 ^ (n + 2) : ℤ) - (10 * 8 ^ (n + 2) : ℤ) + 3 : ℚ) / 210

end

end A016259.P2904564136669317938

namespace A016259

/-- `(7*11^(n+2)-10*8^(n+2)+3)/210` -/
def P2904564136669317938.Spec : Prop :=
  ∀ n, P2904564136669317938.a n = (A016259 n : ℚ)

end A016259

/-! ## A016259.P14544013370214182173

`∑[8^n+11*a(n-1)]` with `a(0)=1`
-/

namespace A016259.P14544013370214182173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  8 ^ n + 11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016259.P14544013370214182173

namespace A016259

/-- `∑[8^n+11*a(n-1)]` -/
def P14544013370214182173.Spec : Prop :=
  ∀ n, (P14544013370214182173.a n : ℤ) = A016259 n

end A016259

/-! ## A016259.P6810751863903360342

`∑[lcm(8, a(n-1))+11^n]` with `a(0)=1`
-/

namespace A016259.P6810751863903360342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 8 (f1 (n - 1)) + 11 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016259.P6810751863903360342

namespace A016259

/-- `∑[lcm(8, a(n-1))+11^n]` -/
def P6810751863903360342.Spec : Prop :=
  ∀ n, (P6810751863903360342.a n : ℤ) = A016259 n

end A016259

/-! ## A016259.P9356614404846263024

`∑[A016187(n)]`
-/

namespace A016259.P9356614404846263024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016259.P9356614404846263024

namespace A016259

/-- `∑[A016187(n)]` -/
def P9356614404846263024.Spec : Prop :=
  ∀ n, P9356614404846263024.a n = A016259 n

end A016259

/-! ## A016259.P8485863017198019143

`∑[A139746(n+1)/3]`
-/

namespace A016259.P8485863017198019143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139746 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016259.P8485863017198019143

namespace A016259

/-- `∑[A139746(n+1)/3]` -/
def P8485863017198019143.Spec : Prop :=
  ∀ n, P8485863017198019143.a n = (A016259 n : ℚ)

end A016259

/-! ## A016259.P3692732725520920040

`2*A016238(n)-A016233(n)`
-/

namespace A016259.P3692732725520920040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016238 n - A016233 n

end

end A016259.P3692732725520920040

namespace A016259

/-- `2*A016238(n)-A016233(n)` -/
def P3692732725520920040.Spec : Prop :=
  ∀ n, P3692732725520920040.a n = A016259 n

end A016259

/-! ## A016259.P7957537272523836474

`2*A016318(n)-∑[A016318(n)]`
-/

namespace A016259.P7957537272523836474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016318 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016259.P7957537272523836474

namespace A016259

/-- `2*A016318(n)-∑[A016318(n)]` -/
def P7957537272523836474.Spec : Prop :=
  ∀ n, P7957537272523836474.a n = A016259 n

end A016259

/-! ## A016259.P12988600152830091277

`A020977(n)+∑[A016190(n)-A020977(n)]`
-/

namespace A016259.P12988600152830091277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016190 n - A020977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020977 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016259.P12988600152830091277

namespace A016259

/-- `A020977(n)+∑[A016190(n)-A020977(n)]` -/
def P12988600152830091277.Spec : Prop :=
  ∀ n, P12988600152830091277.a n = A016259 n

end A016259

/-!
# A016260: Expansion of 1/((1-x)(1-8x)(1-12x)).

The programs for A016260, the canonical program `A016260.P10945636193695080735` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016260 has offset 0).

The definition of A016260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016260.P10945636193695080735

`20*a(n-1)-96*a(n-2)+1` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016260

/-- `20*a(n-1)-96*a(n-2)+1` -/
def P10945636193695080735.Spec : Prop :=
  ∀ n, P10945636193695080735.a n = A016260 n

theorem P10945636193695080735.correct : P10945636193695080735.Spec := by
  intro n
  simp only [A016260]

end A016260

/-! ## A016260.P13702735930402614231

`(21*12^(n+1)-22*8^(n+1)+1)/77`
-/

namespace A016260.P13702735930402614231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * 12 ^ (n + 1) : ℤ) - (22 * 8 ^ (n + 1) : ℤ) + 1 : ℚ) / 77

end

end A016260.P13702735930402614231

namespace A016260

/-- `(21*12^(n+1)-22*8^(n+1)+1)/77` -/
def P13702735930402614231.Spec : Prop :=
  ∀ n, P13702735930402614231.a n = (A016260 n : ℚ)

end A016260

/-! ## A016260.P4969057919602129143

`∑[A016188(n)]`
-/

namespace A016260.P4969057919602129143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016260.P4969057919602129143

namespace A016260

/-- `∑[A016188(n)]` -/
def P4969057919602129143.Spec : Prop :=
  ∀ n, P4969057919602129143.a n = A016260 n

end A016260

/-! ## A016260.P18029643035772435912

`∑[A001018(n)]+12*a(n-1)` with `a(0)=1`
-/

namespace A016260.P18029643035772435912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 12 * a (n - 1)

end

end A016260.P18029643035772435912

namespace A016260

/-- `∑[A001018(n)]+12*a(n-1)` -/
def P18029643035772435912.Spec : Prop :=
  ∀ n, P18029643035772435912.a n = A016260 n

end A016260

/-! ## A016260.P11299431430964136765

`a(n-1)+lcm(4^n, A001047(n+1))` with `a(0)=1`
-/

namespace A016260.P11299431430964136765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (4 ^ n : ℤ) (A001047 (n + 1))

end

end A016260.P11299431430964136765

namespace A016260

/-- `a(n-1)+lcm(4^n, A001047(n+1))` -/
def P11299431430964136765.Spec : Prop :=
  ∀ n, (P11299431430964136765.a n : ℤ) = A016260 n

end A016260

/-! ## A016260.P13810645543619758652

`A016188(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A016260.P13810645543619758652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016188 (A028310 n).toNat + a (n - 1)

end

end A016260.P13810645543619758652

namespace A016260

/-- `A016188(A028310(n))+a(n-1)` -/
def P13810645543619758652.Spec : Prop :=
  ∀ n, P13810645543619758652.a n = A016260 n

end A016260

/-! ## A016260.P6153852915324428856

`A000038(n)+A016188(n)+a(n-1)` with `a(0)=1`
-/

namespace A016260.P6153852915324428856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000038 n + (A016188 n + a (n - 1))

end

end A016260.P6153852915324428856

namespace A016260

/-- `A000038(n)+A016188(n)+a(n-1)` -/
def P6153852915324428856.Spec : Prop :=
  ∀ n, P6153852915324428856.a n = A016260 n

end A016260

/-! ## A016260.P4712630924345654558

`a(n-1)+∑[A027649(n)]*A000302(n)` with `a(0)=1`
-/

namespace A016260.P4712630924345654558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A000302 n

end

end A016260.P4712630924345654558

namespace A016260

/-- `a(n-1)+∑[A027649(n)]*A000302(n)` -/
def P4712630924345654558.Spec : Prop :=
  ∀ n, P4712630924345654558.a n = A016260 n

end A016260

/-! ## A016260.P11677561734562525539

`a(n-1)+A000302(n)*A001047(n+1)` with `a(0)=1`
-/

namespace A016260.P11677561734562525539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000302 n * A001047 (n + 1)

end

end A016260.P11677561734562525539

namespace A016260

/-- `a(n-1)+A000302(n)*A001047(n+1)` -/
def P11677561734562525539.Spec : Prop :=
  ∀ n, P11677561734562525539.a n = A016260 n

end A016260

/-! ## A016260.P2474143611065381005

`a(n-1)+A000079(n)²*A001047(n+1)` with `a(0)=1`
-/

namespace A016260.P2474143611065381005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000079 n ^ 2 * A001047 (n + 1)

end

end A016260.P2474143611065381005

namespace A016260

/-- `a(n-1)+A000079(n)²*A001047(n+1)` -/
def P2474143611065381005.Spec : Prop :=
  ∀ n, P2474143611065381005.a n = A016260 n

end A016260

/-!
# A016261: Expansion of 1/((1-x)*(1-9*x)*(1-10*x)).

The programs for A016261, the canonical program `A016261.P13358395661504958530` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016261 has offset 0).

The definition of A016261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016261.P13358395661504958530

`19*a(n-1)-90*a(n-2)+1` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016261

/-- `19*a(n-1)-90*a(n-2)+1` -/
def P13358395661504958530.Spec : Prop :=
  ∀ n, P13358395661504958530.a n = A016261 n

theorem P13358395661504958530.correct : P13358395661504958530.Spec := by
  intro n
  simp only [A016261]

end A016261

/-! ## A016261.P7072819633380635146

`(800*10^n-9^(n+3)+1)/72`
-/

namespace A016261.P7072819633380635146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((800 * 10 ^ n : ℤ) - (9 ^ (n + 3) : ℤ) + 1 : ℚ) / 72

end

end A016261.P7072819633380635146

namespace A016261

/-- `(800*10^n-9^(n+3)+1)/72` -/
def P7072819633380635146.Spec : Prop :=
  ∀ n, P7072819633380635146.a n = (A016261 n : ℚ)

end A016261

/-! ## A016261.P13260519220799199246

`∑[A016189(n+1)]`
-/

namespace A016261.P13260519220799199246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016261.P13260519220799199246

namespace A016261

/-- `∑[A016189(n+1)]` -/
def P13260519220799199246.Spec : Prop :=
  ∀ n, P13260519220799199246.a n = A016261 n

end A016261

/-! ## A016261.P90264879021687879

`∑[∑[A088924(n+1)]]`
-/

namespace A016261.P90264879021687879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088924 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016261.P90264879021687879

namespace A016261

/-- `∑[∑[A088924(n+1)]]` -/
def P90264879021687879.Spec : Prop :=
  ∀ n, P90264879021687879.a n = A016261 n

end A016261

/-! ## A016261.P8908080032609887526

`∑[∑[A050686(2*n+1)]]`
-/

namespace A016261.P8908080032609887526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050686 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016261.P8908080032609887526

namespace A016261

/-- `∑[∑[A050686(2*n+1)]]` -/
def P8908080032609887526.Spec : Prop :=
  ∀ n, P8908080032609887526.a n = A016261 n

end A016261

/-! ## A016261.P13548566548138740583

`A000042(n+1)+9*a(n-1)` with `a(0)=1`
-/

namespace A016261.P13548566548138740583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000042 (n + 1) + 9 * a (n - 1)

end

end A016261.P13548566548138740583

namespace A016261

/-- `A000042(n+1)+9*a(n-1)` -/
def P13548566548138740583.Spec : Prop :=
  ∀ n, P13548566548138740583.a n = A016261 n

end A016261

/-! ## A016261.P5466105430673393424

`2*A016257(n)-A016256(n)`
-/

namespace A016261.P5466105430673393424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016257 n - A016256 n

end

end A016261.P5466105430673393424

namespace A016261

/-- `2*A016257(n)-A016256(n)` -/
def P5466105430673393424.Spec : Prop :=
  ∀ n, P5466105430673393424.a n = A016261 n

end A016261

/-! ## A016261.P13381309338275447375

`∑[2*A016186(n)]-A016256(n)`
-/

namespace A016261.P13381309338275447375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A016256 n

end

end A016261.P13381309338275447375

namespace A016261

/-- `∑[2*A016186(n)]-A016256(n)` -/
def P13381309338275447375.Spec : Prop :=
  ∀ n, P13381309338275447375.a n = A016261 n

end A016261

/-! ## A016261.P5185856954410305588

`2*A016321(n)-∑[A016321(n)]`
-/

namespace A016261.P5185856954410305588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016321 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016261.P5185856954410305588

namespace A016261

/-- `2*A016321(n)-∑[A016321(n)]` -/
def P5185856954410305588.Spec : Prop :=
  ∀ n, P5185856954410305588.a n = A016261 n

end A016261

/-! ## A016261.P12843589622676003904

`A105279(n+1)-A052386(n+1)`
-/

namespace A016261.P12843589622676003904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 (n + 1) - A052386 (n + 1)

end

end A016261.P12843589622676003904

namespace A016261

/-- `A105279(n+1)-A052386(n+1)` -/
def P12843589622676003904.Spec : Prop :=
  ∀ n, P12843589622676003904.a n = A016261 n

end A016261

/-!
# A016262: Expansion of 1/((1-x)(1-9x)(1-11x)).

The programs for A016262, the canonical program `A016262.P7393329135915573633` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016262 has offset 0).

The definition of A016262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016262.P7393329135915573633

`20*a(n-1)-99*a(n-2)+1` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016262

/-- `20*a(n-1)-99*a(n-2)+1` -/
def P7393329135915573633.Spec : Prop :=
  ∀ n, P7393329135915573633.a n = A016262 n

theorem P7393329135915573633.correct : P7393329135915573633.Spec := by
  intro n
  simp only [A016262]

end A016262

/-! ## A016262.P14508604052535744667

`(4*11^(n+2)-5*9^(n+2)+1)/80`
-/

namespace A016262.P14508604052535744667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 11 ^ (n + 2) : ℤ) - (5 * 9 ^ (n + 2) : ℤ) + 1 : ℚ) / 80

end

end A016262.P14508604052535744667

namespace A016262

/-- `(4*11^(n+2)-5*9^(n+2)+1)/80` -/
def P14508604052535744667.Spec : Prop :=
  ∀ n, P14508604052535744667.a n = (A016262 n : ℚ)

end A016262

/-! ## A016262.P3168848709337114588

`∑[9^n+11*a(n-1)]` with `a(0)=1`
-/

namespace A016262.P3168848709337114588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  9 ^ n + 11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016262.P3168848709337114588

namespace A016262

/-- `∑[9^n+11*a(n-1)]` -/
def P3168848709337114588.Spec : Prop :=
  ∀ n, (P3168848709337114588.a n : ℤ) = A016262 n

end A016262

/-! ## A016262.P2783866034260008545

`∑[A016190(n)]`
-/

namespace A016262.P2783866034260008545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016262.P2783866034260008545

namespace A016262

/-- `∑[A016190(n)]` -/
def P2783866034260008545.Spec : Prop :=
  ∀ n, P2783866034260008545.a n = A016262 n

end A016262

/-! ## A016262.P17445895413366920402

`∑[A139747(n+1)/2]`
-/

namespace A016262.P17445895413366920402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139747 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016262.P17445895413366920402

namespace A016262

/-- `∑[A139747(n+1)/2]` -/
def P17445895413366920402.Spec : Prop :=
  ∀ n, P17445895413366920402.a n = (A016262 n : ℚ)

end A016262

/-! ## A016262.P13721164401606717125

`∑[A161999(2*n+3)]`
-/

namespace A016262.P13721164401606717125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161999 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016262.P13721164401606717125

namespace A016262

/-- `∑[A161999(2*n+3)]` -/
def P13721164401606717125.Spec : Prop :=
  ∀ n, P13721164401606717125.a n = A016262 n

end A016262

/-! ## A016262.P7381752198460572010

`∑[(A155672(n+1)-1)/2]`
-/

namespace A016262.P7381752198460572010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155672 (n + 1) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016262.P7381752198460572010

namespace A016262

/-- `∑[(A155672(n+1)-1)/2]` -/
def P7381752198460572010.Spec : Prop :=
  ∀ n, P7381752198460572010.a n = (A016262 n : ℚ)

end A016262

/-! ## A016262.P12696889428978327865

`A016190(A233583(n+1))+a(n-1)` with `a(0)=1, a(1)=21`
-/

namespace A016262.P12696889428978327865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  A016190 (A233583 (n + 1)).toNat + a (n - 1)

end

end A016262.P12696889428978327865

namespace A016262

/-- `A016190(A233583(n+1))+a(n-1)` -/
def P12696889428978327865.Spec : Prop :=
  ∀ n, P12696889428978327865.a n = A016262 n

end A016262

/-! ## A016262.P10652717599622237781

`a(n-1)+A016190(n)/and(1, A107953(n))` with `a(0)=1`
-/

namespace A016262.P10652717599622237781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016190 n : ℚ) / (Int.land 1 (A107953 n) : ℚ)

end

end A016262.P10652717599622237781

namespace A016262

/-- `a(n-1)+A016190(n)/and(1, A107953(n))` -/
def P10652717599622237781.Spec : Prop :=
  ∀ n, P10652717599622237781.a n = (A016262 n : ℚ)

end A016262

/-! ## A016262.P1539821116870826764

`A016322(n)+A016322(n)-∑[A016322(n)]`
-/

namespace A016262.P1539821116870826764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016322 n + (A016322 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016262.P1539821116870826764

namespace A016262

/-- `A016322(n)+A016322(n)-∑[A016322(n)]` -/
def P1539821116870826764.Spec : Prop :=
  ∀ n, P1539821116870826764.a n = A016262 n

end A016262

/-!
# A016263: Expansion of 1/((1-x)(1-9x)(1-12x)).

The programs for A016263, the canonical program `A016263.P12826335253602741861` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016263 has offset 0).

The definition of A016263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016263.P12826335253602741861

`21*a(n-1)-108*a(n-2)+1` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016263

/-- `21*a(n-1)-108*a(n-2)+1` -/
def P12826335253602741861.Spec : Prop :=
  ∀ n, P12826335253602741861.a n = A016263 n

theorem P12826335253602741861.correct : P12826335253602741861.Spec := by
  intro n
  simp only [A016263]

end A016263

/-! ## A016263.P1670009063166420276

`(32*12^(n+1)-33*9^(n+1)+1)/88`
-/

namespace A016263.P1670009063166420276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((32 * 12 ^ (n + 1) : ℤ) - (33 * 9 ^ (n + 1) : ℤ) + 1 : ℚ) / 88

end

end A016263.P1670009063166420276

namespace A016263

/-- `(32*12^(n+1)-33*9^(n+1)+1)/88` -/
def P1670009063166420276.Spec : Prop :=
  ∀ n, P1670009063166420276.a n = (A016263 n : ℚ)

end A016263

/-! ## A016263.P10720322807613772983

`∑[9^n+12*a(n-1)]` with `a(0)=1`
-/

namespace A016263.P10720322807613772983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  9 ^ n + 12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016263.P10720322807613772983

namespace A016263

/-- `∑[9^n+12*a(n-1)]` -/
def P10720322807613772983.Spec : Prop :=
  ∀ n, (P10720322807613772983.a n : ℤ) = A016263 n

end A016263

/-! ## A016263.P9592620575579313257

`∑[A016191(n)]`
-/

namespace A016263.P9592620575579313257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016263.P9592620575579313257

namespace A016263

/-- `∑[A016191(n)]` -/
def P9592620575579313257.Spec : Prop :=
  ∀ n, P9592620575579313257.a n = A016263 n

end A016263

/-! ## A016263.P7741049240875963014

`∑[3^n*A005061(n+1)]`
-/

namespace A016263.P7741049240875963014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A005061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016263.P7741049240875963014

namespace A016263

/-- `∑[3^n*A005061(n+1)]` -/
def P7741049240875963014.Spec : Prop :=
  ∀ n, P7741049240875963014.a n = A016263 n

end A016263

/-! ## A016263.P13807732788729626345

`∑[∑[A255463(n)]*A000244(n)]`
-/

namespace A016263.P13807732788729626345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016263.P13807732788729626345

namespace A016263

/-- `∑[∑[A255463(n)]*A000244(n)]` -/
def P13807732788729626345.Spec : Prop :=
  ∀ n, P13807732788729626345.a n = A016263 n

end A016263

/-! ## A016263.P8930011071844563207

`∑[lcm(A000244(n), A005061(n+1))]`
-/

namespace A016263.P8930011071844563207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A005061 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016263.P8930011071844563207

namespace A016263

/-- `∑[lcm(A000244(n), A005061(n+1))]` -/
def P8930011071844563207.Spec : Prop :=
  ∀ n, (P8930011071844563207.a n : ℤ) = A016263 n

end A016263

/-! ## A016263.P9310590372094650415

`∑[A005061(n+1)*A166552(2*n+1)]`
-/

namespace A016263.P9310590372094650415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1) * A166552 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016263.P9310590372094650415

namespace A016263

/-- `∑[A005061(n+1)*A166552(2*n+1)]` -/
def P9310590372094650415.Spec : Prop :=
  ∀ n, P9310590372094650415.a n = A016263 n

end A016263

/-! ## A016263.P6736417563609800356

`a(n-1)+A005061(n+1)*A017914(2*n)` with `a(0)=1`
-/

namespace A016263.P6736417563609800356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A005061 (n + 1) * A017914 (2 * n)

end

end A016263.P6736417563609800356

namespace A016263

/-- `a(n-1)+A005061(n+1)*A017914(2*n)` -/
def P6736417563609800356.Spec : Prop :=
  ∀ n, P6736417563609800356.a n = A016263 n

end A016263

/-! ## A016263.P6703205509245959343

`2*A016324(n)-A021304(n)`
-/

namespace A016263.P6703205509245959343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016324 n - A021304 n

end

end A016263.P6703205509245959343

namespace A016263

/-- `2*A016324(n)-A021304(n)` -/
def P6703205509245959343.Spec : Prop :=
  ∀ n, P6703205509245959343.a n = A016263 n

end A016263

/-!
# A016264: Inverse of 2255th cyclotomic polynomial.

The programs for A016264, there is no canonical definition to state claims against.
-/

/-! ## A016264.P15104877089228221665

`(-1)^n*A011651(n)`
-/

namespace A016264.P15104877089228221665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011651 n

end

end A016264.P15104877089228221665

/-! ## A016264.P6261003183557292478

`A011651(n)*A033999(n)`
-/

namespace A016264.P6261003183557292478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011651 n * A033999 n

end

end A016264.P6261003183557292478

/-! ## A016264.P14940469984090276731

`A011651(n)/A033999(n+4)`
-/

namespace A016264.P14940469984090276731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011651 n : ℚ) / (A033999 (n + 4) : ℚ)

end

end A016264.P14940469984090276731

/-! ## A016264.P9433439976048648676

`A011651(n)*A054354(A054353(n+1))`
-/

namespace A016264.P9433439976048648676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011651 n * A054354 (A054353 (n + 1)).toNat

end

end A016264.P9433439976048648676

/-! ## A016264.P77121183455698576

`A011651(n)*A106400(A121539(n+1))`
-/

namespace A016264.P77121183455698576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011651 n * A106400 (A121539 (n + 1)).toNat

end

end A016264.P77121183455698576

/-!
# A016265: Expansion of 1/((1-x)*(1-10x)*(1-11x)).

The programs for A016265, the canonical program `A016265.P15089657997556602105` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016265 has offset 0).

The definition of A016265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016265.P15089657997556602105

`21*a(n-1)-110*a(n-2)+1` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016265

/-- `21*a(n-1)-110*a(n-2)+1` -/
def P15089657997556602105.Spec : Prop :=
  ∀ n, P15089657997556602105.a n = A016265 n

theorem P15089657997556602105.correct : P15089657997556602105.Spec := by
  intro n
  simp only [A016265]

end A016265

/-! ## A016265.P7336727884976433819

`(9*11^(n+2)-10^(n+3)+1)/90`
-/

namespace A016265.P7336727884976433819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 11 ^ (n + 2) : ℤ) - (10 ^ (n + 3) : ℤ) + 1 : ℚ) / 90

end

end A016265.P7336727884976433819

namespace A016265

/-- `(9*11^(n+2)-10^(n+3)+1)/90` -/
def P7336727884976433819.Spec : Prop :=
  ∀ n, P7336727884976433819.a n = (A016265 n : ℚ)

end A016265

/-! ## A016265.P2077075445553527752

`∑[A016195(n+1)]`
-/

namespace A016265.P2077075445553527752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016265.P2077075445553527752

namespace A016265

/-- `∑[A016195(n+1)]` -/
def P2077075445553527752.Spec : Prop :=
  ∀ n, P2077075445553527752.a n = A016265 n

end A016265

/-! ## A016265.P1220304626034115488

`∑[A155674(n+1)]-(n+1)`
-/

namespace A016265.P1220304626034115488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A016265.P1220304626034115488

namespace A016265

/-- `∑[A155674(n+1)]-(n+1)` -/
def P1220304626034115488.Spec : Prop :=
  ∀ n, P1220304626034115488.a n = A016265 n

end A016265

/-! ## A016265.P6038910392615213816

`2*A016262(n)-A016261(n)`
-/

namespace A016265.P6038910392615213816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016262 n - A016261 n

end

end A016265.P6038910392615213816

namespace A016265

/-- `2*A016262(n)-A016261(n)` -/
def P6038910392615213816.Spec : Prop :=
  ∀ n, P6038910392615213816.a n = A016265 n

end A016265

/-! ## A016265.P1383118969873674603

`2*A016325(n)-∑[A016325(n)]`
-/

namespace A016265.P1383118969873674603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016325 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016265.P1383118969873674603

namespace A016265

/-- `2*A016325(n)-∑[A016325(n)]` -/
def P1383118969873674603.Spec : Prop :=
  ∀ n, P1383118969873674603.a n = A016265 n

end A016265

/-! ## A016265.P5609381035216798013

`A105280(n+1)-A105279(n+1)`
-/

namespace A016265.P5609381035216798013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105280 (n + 1) - A105279 (n + 1)

end

end A016265.P5609381035216798013

namespace A016265

/-- `A105280(n+1)-A105279(n+1)` -/
def P5609381035216798013.Spec : Prop :=
  ∀ n, P5609381035216798013.a n = A016265 n

end A016265

/-! ## A016265.P9438815791610294654

`A016123(n+1)-A002275(n+2)`
-/

namespace A016265.P9438815791610294654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016123 (n + 1) - A002275 (n + 2)

end

end A016265.P9438815791610294654

namespace A016265

/-- `A016123(n+1)-A002275(n+2)` -/
def P9438815791610294654.Spec : Prop :=
  ∀ n, P9438815791610294654.a n = A016265 n

end A016265

/-! ## A016265.P16171588280089691344

`A047856(n+2)-A047855(n+2)`
-/

namespace A016265.P16171588280089691344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047856 (n + 2) - A047855 (n + 2)

end

end A016265.P16171588280089691344

namespace A016265

/-- `A047856(n+2)-A047855(n+2)` -/
def P16171588280089691344.Spec : Prop :=
  ∀ n, P16171588280089691344.a n = A016265 n

end A016265

/-!
# A016266: Inverse of 2257th cyclotomic polynomial.

The programs for A016266, there is no canonical definition to state claims against.
-/

/-! ## A016266.P12229888332567393095

`A015970(A140200(n+3)+4)`
-/

namespace A016266.P12229888332567393095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A140200 (n + 3) + 4).toNat

end

end A016266.P12229888332567393095

/-! ## A016266.P13753079076538281784

`A000007(C(A230980(n), 12))`
-/

namespace A016266.P13753079076538281784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose (A230980 n).toNat 12)

end

end A016266.P13753079076538281784

/-! ## A016266.P5342443042513882324

`A010060(A341168(n+1)!)`
-/

namespace A016266.P5342443042513882324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.factorial (A341168 (n + 1 + 56)).toNat)

end

end A016266.P5342443042513882324

/-! ## A016266.P13917635753424901063

`A057066(A327473(n+1)+160)`
-/

namespace A016266.P13917635753424901063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057066 (A327473 (n + 1) + 160).toNat

end

end A016266.P13917635753424901063

/-! ## A016266.P2397558193069359061

`C(A353844(n+1), A353833(n+1))`
-/

namespace A016266.P2397558193069359061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353844 (n + 1)).toNat (A353833 (n + 1)).toNat

end

end A016266.P2397558193069359061

/-! ## A016266.P8069491087005830475

`round(A190641(n+1)/A211772(n+3))`
-/

namespace A016266.P8069491087005830475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A190641 (n + 1) : ℚ) / (A211772 (n + 3) : ℚ))

end

end A016266.P8069491087005830475

/-! ## A016266.P2717950391132629563

`A071079(∑[char[A002144(3*n+5)]]^8)`
-/

namespace A016266.P2717950391132629563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (3 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071079 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 8)

end

end A016266.P2717950391132629563

/-! ## A016266.P10599131121659152631

`A000007(xor(A353833(n+1), A353844(n+1)))`
-/

namespace A016266.P10599131121659152631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A353833 (n + 1)) (A353844 (n + 1))).toNat

end

end A016266.P10599131121659152631

/-! ## A016266.P2342539074919359415

`A134832(floor(A341058(n+1)/A077090(n+1)))`
-/

namespace A016266.P2342539074919359415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 ⌊(A341058 (n + 1) : ℚ) / (A077090 (n + 1) : ℚ)⌋.toNat

end

end A016266.P2342539074919359415

/-! ## A016266.P5084034163835508687

`A010060(∏[Δ[A304678(n+1)]])`
-/

namespace A016266.P5084034163835508687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016266.P5084034163835508687

/-!
# A016267: Expansion of 1/((1-x)(1-10x)(1-12x)).

The programs for A016267, the canonical program `A016267.P17762589061692544057` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016267 has offset 0).

The definition of A016267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016267.P17762589061692544057

`22*a(n-1)-120*a(n-2)+1` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016267

/-- `22*a(n-1)-120*a(n-2)+1` -/
def P17762589061692544057.Spec : Prop :=
  ∀ n, P17762589061692544057.a n = A016267 n

theorem P17762589061692544057.correct : P17762589061692544057.Spec := by
  intro n
  simp only [A016267]

end A016267

/-! ## A016267.P12223601370831836626

`(648*12^n-550*10^n+1)/99`
-/

namespace A016267.P12223601370831836626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((648 * 12 ^ n : ℤ) - (550 * 10 ^ n : ℤ) + 1 : ℚ) / 99

end

end A016267.P12223601370831836626

namespace A016267

/-- `(648*12^n-550*10^n+1)/99` -/
def P12223601370831836626.Spec : Prop :=
  ∀ n, P12223601370831836626.a n = (A016267 n : ℚ)

end A016267

/-! ## A016267.P1252559424185425200

`∑[A016196(n)]`
-/

namespace A016267.P1252559424185425200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016267.P1252559424185425200

namespace A016267

/-- `∑[A016196(n)]` -/
def P1252559424185425200.Spec : Prop :=
  ∀ n, P1252559424185425200.a n = A016267 n

end A016267

/-! ## A016267.P11561706977426732795

`A000042(n+1)+12*a(n-1)` with `a(0)=1`
-/

namespace A016267.P11561706977426732795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000042 (n + 1) + 12 * a (n - 1)

end

end A016267.P11561706977426732795

namespace A016267

/-- `A000042(n+1)+12*a(n-1)` -/
def P11561706977426732795.Spec : Prop :=
  ∀ n, P11561706977426732795.a n = A016267 n

end A016267

/-! ## A016267.P7704310938490712250

`2*A016326(n)-∑[A016326(n)]`
-/

namespace A016267.P7704310938490712250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016326 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016267.P7704310938490712250

namespace A016267

/-- `2*A016326(n)-∑[A016326(n)]` -/
def P7704310938490712250.Spec : Prop :=
  ∀ n, P7704310938490712250.a n = A016267 n

end A016267

/-! ## A016267.P16229518123227237422

`A358600(n+1)-A358599(n+1)`
-/

namespace A016267.P16229518123227237422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358600 (n + 1) - A358599 (n + 1)

end

end A016267.P16229518123227237422

namespace A016267

/-- `A358600(n+1)-A358599(n+1)` -/
def P16229518123227237422.Spec : Prop :=
  ∀ n, P16229518123227237422.a n = A016267 n

end A016267

/-!
# A016268: Expansion of 1/((1-x)(1-11x)(1-12x)).

The programs for A016268, the canonical program `A016268.P4779273043877821969` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016268 has offset 0).

The definition of A016268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016268.P4779273043877821969

`24*a(n-1)-155*a(n-2)+132*a(n-3)` with `a(0)=1, a(1)=24, a(2)=421`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016268

/-- `24*a(n-1)-155*a(n-2)+132*a(n-3)` -/
def P4779273043877821969.Spec : Prop :=
  ∀ n, P4779273043877821969.a n = A016268 n

theorem P4779273043877821969.correct : P4779273043877821969.Spec := by
  intro n
  simp only [A016268]

end A016268

/-! ## A016268.P13919521518841357485

`(10*12^(n+2)-11^(n+3)+1)/110`
-/

namespace A016268.P13919521518841357485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 12 ^ (n + 2) : ℤ) - (11 ^ (n + 3) : ℤ) + 1 : ℚ) / 110

end

end A016268.P13919521518841357485

namespace A016268

/-- `(10*12^(n+2)-11^(n+3)+1)/110` -/
def P13919521518841357485.Spec : Prop :=
  ∀ n, P13919521518841357485.a n = (A016268 n : ℚ)

end A016268

/-! ## A016268.P16628660389406837567

`∑[A016197(n+1)]`
-/

namespace A016268.P16628660389406837567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016268.P16628660389406837567

namespace A016268

/-- `∑[A016197(n+1)]` -/
def P16628660389406837567.Spec : Prop :=
  ∀ n, P16628660389406837567.a n = A016268 n

end A016268

/-! ## A016268.P3560983812938667775

`A016123(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A016268.P3560983812938667775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016123 n + 12 * a (n - 1)

end

end A016268.P3560983812938667775

namespace A016268

/-- `A016123(n)+12*a(n-1)` -/
def P3560983812938667775.Spec : Prop :=
  ∀ n, P3560983812938667775.a n = A016268 n

end A016268

/-! ## A016268.P17055702958984237407

`2*A016267(n)-A016265(n)`
-/

namespace A016268.P17055702958984237407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016267 n - A016265 n

end

end A016268.P17055702958984237407

namespace A016268

/-- `2*A016267(n)-A016265(n)` -/
def P17055702958984237407.Spec : Prop :=
  ∀ n, P17055702958984237407.a n = A016268 n

end A016268

/-! ## A016268.P5788432722529851482

`2*A016633(n)-∑[A016633(n)]`
-/

namespace A016268.P5788432722529851482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016633 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016268.P5788432722529851482

namespace A016268

/-- `2*A016633(n)-∑[A016633(n)]` -/
def P5788432722529851482.Spec : Prop :=
  ∀ n, P5788432722529851482.a n = A016268 n

end A016268

/-! ## A016268.P11771593739710445015

`A016125(n+1)-A016123(n+1)`
-/

namespace A016268.P11771593739710445015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016125 (n + 1) - A016123 (n + 1)

end

end A016268.P11771593739710445015

namespace A016268

/-- `A016125(n+1)-A016123(n+1)` -/
def P11771593739710445015.Spec : Prop :=
  ∀ n, P11771593739710445015.a n = A016268 n

end A016268

/-! ## A016268.P2913374645889793903

`Δ[A014882(n+1)-A014881(n+1)]`
-/

namespace A016268.P2913374645889793903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014882 (n + 1) - A014881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016268.P2913374645889793903

namespace A016268

/-- `Δ[A014882(n+1)-A014881(n+1)]` -/
def P2913374645889793903.Spec : Prop :=
  ∀ n, P2913374645889793903.a n = A016268 n

end A016268

/-!
# A016269: Number of monotone Boolean functions of n variables with 2 mincuts. Also number of Sperner systems with 2 blocks.

The programs for A016269, the canonical program `A016269.P629723056826128420` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016269 has offset 0).

The definition of A016269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016269.P629723056826128420

`2^(n+1)*(1+2^(n+2))-3^(n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016269

/-- `2^(n+1)*(1+2^(n+2))-3^(n+2)` -/
def P629723056826128420.Spec : Prop :=
  ∀ n, P629723056826128420.a n = A016269 n

theorem P629723056826128420.correct : P629723056826128420.Spec := by
  intro n
  simp only [A016269]

end A016269

/-! ## A016269.P8119300193631030296

`∑[A027650(n)]`
-/

namespace A016269.P8119300193631030296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016269.P8119300193631030296

namespace A016269

/-- `∑[A027650(n)]` -/
def P8119300193631030296.Spec : Prop :=
  ∀ n, P8119300193631030296.a n = A016269 n

end A016269

/-! ## A016269.P17341592646157514165

`A038721(n+1)/2`
-/

namespace A016269.P17341592646157514165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038721 (n + 1) : ℚ) / 2

end

end A016269.P17341592646157514165

namespace A016269

/-- `A038721(n+1)/2` -/
def P17341592646157514165.Spec : Prop :=
  ∀ n, P17341592646157514165.a n = (A016269 n : ℚ)

end A016269

/-! ## A016269.P5848916809119653588

`Δ[A056473(2*(n+3))]`
-/

namespace A016269.P5848916809119653588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016269.P5848916809119653588

namespace A016269

/-- `Δ[A056473(2*(n+3))]` -/
def P5848916809119653588.Spec : Prop :=
  ∀ n, P5848916809119653588.a n = A016269 n

end A016269

/-! ## A016269.P14413571333926384169

`Δ[A056510(2*n+5)]`
-/

namespace A016269.P14413571333926384169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016269.P14413571333926384169

namespace A016269

/-- `Δ[A056510(2*n+5)]` -/
def P14413571333926384169.Spec : Prop :=
  ∀ n, P14413571333926384169.a n = A016269 n

end A016269

/-! ## A016269.P4413758660407309445

`∑[∑[A291002(n)-A291010(n)]]`
-/

namespace A016269.P4413758660407309445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291002 n - A291010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016269.P4413758660407309445

namespace A016269

/-- `∑[∑[A291002(n)-A291010(n)]]` -/
def P4413758660407309445.Spec : Prop :=
  ∀ n, P4413758660407309445.a n = A016269 n

end A016269

/-! ## A016269.P2097526907206879471

`∑[∑[A291010(n)-A291009(n)]]`
-/

namespace A016269.P2097526907206879471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291010 n - A291009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016269.P2097526907206879471

namespace A016269

/-- `∑[∑[A291010(n)-A291009(n)]]` -/
def P2097526907206879471.Spec : Prop :=
  ∀ n, P2097526907206879471.a n = A016269 n

end A016269

/-! ## A016269.P6986731044771606519

`(A016208(n)+A000453(n+4))/2`
-/

namespace A016269.P6986731044771606519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016208 n + A000453 (n + 4) : ℚ) / 2

end

end A016269.P6986731044771606519

namespace A016269

/-- `(A016208(n)+A000453(n+4))/2` -/
def P6986731044771606519.Spec : Prop :=
  ∀ n, P6986731044771606519.a n = (A016269 n : ℚ)

end A016269

/-! ## A016269.P4924946002901439836

`Δ[A032263(n+2)+A006095(n+1)]`
-/

namespace A016269.P4924946002901439836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 2) + A006095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016269.P4924946002901439836

namespace A016269

/-- `Δ[A032263(n+2)+A006095(n+1)]` -/
def P4924946002901439836.Spec : Prop :=
  ∀ n, P4924946002901439836.a n = A016269 n

end A016269

/-! ## A016269.P15191603588507715989

`Δ[A032263(n+3)/3]`
-/

namespace A016269.P15191603588507715989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032263 (n + 3) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016269.P15191603588507715989

namespace A016269

/-- `Δ[A032263(n+3)/3]` -/
def P15191603588507715989.Spec : Prop :=
  ∀ n, P15191603588507715989.a n = (A016269 n : ℚ)

end A016269

/-! ## A016269.P16052840303614718792

`A126643(n+1)%A126642(n+1)`
-/

namespace A016269.P16052840303614718792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126643 (n + 1)) (A126642 (n + 1))

end

end A016269.P16052840303614718792

namespace A016269

/-- `A126643(n+1)%A126642(n+1)` -/
def P16052840303614718792.Spec : Prop :=
  ∀ n, P16052840303614718792.a n = A016269 n

end A016269

/-! ## A016269.P3714023452468051605

`A126718(n+1)%A126643(n+1)`
-/

namespace A016269.P3714023452468051605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126718 (n + 1)) (A126643 (n + 1))

end

end A016269.P3714023452468051605

namespace A016269

/-- `A126718(n+1)%A126643(n+1)` -/
def P3714023452468051605.Spec : Prop :=
  ∀ n, P3714023452468051605.a n = A016269 n

end A016269

/-! ## A016269.P11801900684908427035

`(A126718(n+1)-A126642(n+1))/2`
-/

namespace A016269.P11801900684908427035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126718 (n + 1) - A126642 (n + 1) : ℚ) / 2

end

end A016269.P11801900684908427035

namespace A016269

/-- `(A126718(n+1)-A126642(n+1))/2` -/
def P11801900684908427035.Spec : Prop :=
  ∀ n, P11801900684908427035.a n = (A016269 n : ℚ)

end A016269

/-! ## A016269.P7551069275163100284

`A019333(n)/A000079(n)`
-/

namespace A016269.P7551069275163100284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019333 n : ℚ) / (A000079 n : ℚ)

end

end A016269.P7551069275163100284

namespace A016269

/-- `A019333(n)/A000079(n)` -/
def P7551069275163100284.Spec : Prop :=
  ∀ n, P7551069275163100284.a n = (A016269 n : ℚ)

end A016269

/-!
# A016270: Inverse of 2261st cyclotomic polynomial.

The programs for A016270, there is no canonical definition to state claims against.
-/

/-! ## A016270.P3666372317039941970

`A016384(A055645(n))^p?[A091183(n)]`
-/

namespace A016270.P3666372317039941970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091183 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016384 (A055645 n).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A016270.P3666372317039941970

/-! ## A016270.P2490313503840091016

`Δ[A351290(3*n+5)%A006337(n+1)]`
-/

namespace A016270.P2490313503840091016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351290 (3 * n + 5)) (A006337 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016270.P2490313503840091016

/-!
# A016271: Inverse of 2262nd cyclotomic polynomial.

The programs for A016271, there is no canonical definition to state claims against.
-/

/-! ## A016271.P7278049512834178797

`A015140(n)*A033999(n)`
-/

namespace A016271.P7278049512834178797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015140 n * A033999 n

end

end A016271.P7278049512834178797

/-! ## A016271.P12528059697801541510

`A011652(A288657(n+1))`
-/

namespace A016271.P12528059697801541510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011652 (A288657 (n + 1)).toNat

end

end A016271.P12528059697801541510

/-! ## A016271.P12476526021740889879

`A016345(A168205(n+2))`
-/

namespace A016271.P12476526021740889879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016345 (A168205 (n + 2)).toNat

end

end A016271.P12476526021740889879

/-! ## A016271.P4848291787972886725

`A016340(2*n)`
-/

namespace A016271.P4848291787972886725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016340 (2 * n)

end

end A016271.P4848291787972886725

/-! ## A016271.P12185838239947960214

`A016350(A055655(n))`
-/

namespace A016271.P12185838239947960214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016350 (A055655 n).toNat

end

end A016271.P12185838239947960214

/-!
# A016272: Inverse of 2263rd cyclotomic polynomial.

The programs for A016272, there is no canonical definition to state claims against.
-/

/-! ## A016272.P17635996806538539975

`A016210(A122987(n+1)-(n-1))`
-/

namespace A016272.P17635996806538539975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016210 (A122987 (n + 1) - ((n : ℤ) - 1)).toNat

end

end A016272.P17635996806538539975

/-! ## A016272.P9303286683075640818

`A016068(n-A334028(n))`
-/

namespace A016272.P9303286683075640818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 ((n : ℤ) - A334028 n).toNat

end

end A016272.P9303286683075640818

/-! ## A016272.P17838286573784350872

`A015952(A304681(n+1)-A327406(n+1))`
-/

namespace A016272.P17838286573784350872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015952 (A304681 (n + 1) - A327406 (n + 1)).toNat

end

end A016272.P17838286573784350872

/-! ## A016272.P18374874524038416300

`A168182(A207901(n+1))`
-/

namespace A016272.P18374874524038416300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 (A207901 (n + 1)).toNat

end

end A016272.P18374874524038416300

/-! ## A016272.P9007751022580931198

`A336868(A074082(round(sqrt(n))))`
-/

namespace A016272.P9007751022580931198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336868 (A074082 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat).toNat

end

end A016272.P9007751022580931198

/-! ## A016272.P1771558730968360025

`A351819(A374632(round(sqrt(n))))`
-/

namespace A016272.P1771558730968360025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351819 (A374632 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat).toNat

end

end A016272.P1771558730968360025

/-! ## A016272.P6411142051636659221

`A010815(A325393(round(sqrt(n))²))²`
-/

namespace A016272.P6411142051636659221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A325393 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2).toNat).toNat ^ 2

end

end A016272.P6411142051636659221

/-! ## A016272.P2243169513949367448

`A368992(A000142(floor(sqrt(n)+1/2)))`
-/

namespace A016272.P2243169513949367448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368992 (A000142 ⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋.toNat).toNat

end

end A016272.P2243169513949367448

/-! ## A016272.P15730892430353486240

`A151800(n)-A123068(A151800(n))`
-/

namespace A016272.P15730892430353486240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - A123068 (A151800 n).toNat

end

end A016272.P15730892430353486240

/-! ## A016272.P1151597245161877908

`C(A000009(n), ∑[A243836(2*n+3)])`
-/

namespace A016272.P1151597245161877908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000009 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016272.P1151597245161877908

/-!
# A016273: Expansion of g.f. 1/((1-2x)(1-3x)(1-5x)).

The programs for A016273, the canonical program `A016273.P16484502482163297800` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016273 has offset 0).

The definition of A016273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016273.P10556526844261981339

`(2^(n+3)+5^(n+2)-3^(n+3))/6`
-/

namespace A016273.P10556526844261981339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 3) + 5 ^ (n + 2) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 6

end

end A016273.P10556526844261981339

namespace A016273

/-- `(2^(n+3)+5^(n+2)-3^(n+3))/6` -/
def P10556526844261981339.Spec : Prop :=
  ∀ n, P10556526844261981339.a n = (A016273 n : ℚ)

end A016273

/-! ## A016273.P16484502482163297800

`8*a(n-1)-15*a(n-2)+2^n` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016273

/-- `8*a(n-1)-15*a(n-2)+2^n` -/
def P16484502482163297800.Spec : Prop :=
  ∀ n, P16484502482163297800.a n = A016273 n

theorem P16484502482163297800.correct : P16484502482163297800.Spec := by
  intro n
  simp only [A016273]

end A016273

/-! ## A016273.P10322710190965576331

`A005059(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A016273.P10322710190965576331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005059 (n + 1) + 2 * a (n - 1)

end

end A016273.P10322710190965576331

namespace A016273

/-- `A005059(n+1)+2*a(n-1)` -/
def P10322710190965576331.Spec : Prop :=
  ∀ n, P10322710190965576331.a n = A016273 n

end A016273

/-! ## A016273.P182329732631604558

`A001047(n+1)+5*a(n-1)` with `a(0)=1`
-/

namespace A016273.P182329732631604558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001047 (n + 1) + 5 * a (n - 1)

end

end A016273.P182329732631604558

namespace A016273

/-- `A001047(n+1)+5*a(n-1)` -/
def P182329732631604558.Spec : Prop :=
  ∀ n, P182329732631604558.a n = A016273 n

end A016273

/-! ## A016273.P1900531400630130644

`A016209(n)+A016209(n)-A016198(n)`
-/

namespace A016273.P1900531400630130644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016209 n + (A016209 n - A016198 n)

end

end A016273.P1900531400630130644

namespace A016273

/-- `A016209(n)+A016209(n)-A016198(n)` -/
def P1900531400630130644.Spec : Prop :=
  ∀ n, P1900531400630130644.a n = A016273 n

end A016273

/-! ## A016273.P8883489112054912027

`A099621(n+1)+A099622(n+1)-A094705(n+1)`
-/

namespace A016273.P8883489112054912027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099621 (n + 1) + (A099622 (n + 1) - A094705 (n + 1))

end

end A016273.P8883489112054912027

namespace A016273

/-- `A099621(n+1)+A099622(n+1)-A094705(n+1)` -/
def P8883489112054912027.Spec : Prop :=
  ∀ n, P8883489112054912027.a n = A016273 n

end A016273

/-! ## A016273.P16683041278012017566

`Δ[A016209(n)-A016198(n)]`
-/

namespace A016273.P16683041278012017566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016209 n - A016198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016273.P16683041278012017566

namespace A016273

/-- `Δ[A016209(n)-A016198(n)]` -/
def P16683041278012017566.Spec : Prop :=
  ∀ n, P16683041278012017566.a n = A016273 n

end A016273

/-! ## A016273.P15920890204947495806

`ceil(A019483(n)/2^n)`
-/

namespace A016273.P15920890204947495806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A019483 n : ℚ) / (2 ^ n : ℚ)⌉

end

end A016273.P15920890204947495806

namespace A016273

/-- `ceil(A019483(n)/2^n)` -/
def P15920890204947495806.Spec : Prop :=
  ∀ n, P15920890204947495806.a n = A016273 n

end A016273

/-! ## A016273.P8039490172356549420

`A124960(∑[n+2]+4)`
-/

namespace A016273.P8039490172356549420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124960 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A016273.P8039490172356549420

namespace A016273

/-- `A124960(∑[n+2]+4)` -/
def P8039490172356549420.Spec : Prop :=
  ∀ n, P8039490172356549420.a n = A016273 n

end A016273

/-!
# A016274: Numbers k where the fractional part of tan(k) decreases monotonically to 0.

The programs for A016274, there is no canonical definition to state claims against.
-/

/-! ## A016274.P10884039651211789308

`record[gcd(A055635(n+1), A317685(n))]`
-/

namespace A016274.P10884039651211789308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055635 (n + 1)) (A317685 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016274.P10884039651211789308

/-! ## A016274.P12073462402123653172

`A002266(A176682(2*n+1)+A161798(n))`
-/

namespace A016274.P12073462402123653172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A176682 (2 * n + 1) + A161798 n).toNat

end

end A016274.P12073462402123653172

/-!
# A016275: Inverse of 2266th cyclotomic polynomial.

The programs for A016275, there is no canonical definition to state claims against.
-/

/-! ## A016275.P13911387732049718343

`A015142(n)*A033999(n)`
-/

namespace A016275.P13911387732049718343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015142 n * A033999 n

end

end A016275.P13911387732049718343

/-!
# A016276: Expansion of 1/((1-2x)(1-3x)(1-7x)).

The programs for A016276, the canonical program `A016276.P7989410940148495998` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016276 has offset 0).

The definition of A016276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016276.P7989410940148495998

`10*a(n-1)-21*a(n-2)+2^n` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016276

/-- `10*a(n-1)-21*a(n-2)+2^n` -/
def P7989410940148495998.Spec : Prop :=
  ∀ n, P7989410940148495998.a n = A016276 n

theorem P7989410940148495998.correct : P7989410940148495998.Spec := by
  intro n
  simp only [A016276]

end A016276

/-! ## A016276.P6438418228580516636

`A016138(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016276.P6438418228580516636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016138 n + 2 * a (n - 1)

end

end A016276.P6438418228580516636

namespace A016276

/-- `A016138(n)+2*a(n-1)` -/
def P6438418228580516636.Spec : Prop :=
  ∀ n, P6438418228580516636.a n = A016276 n

end A016276

/-! ## A016276.P2341782318671356101

`A001047(n+1)+7*a(n-1)` with `a(0)=1`
-/

namespace A016276.P2341782318671356101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001047 (n + 1) + 7 * a (n - 1)

end

end A016276.P2341782318671356101

namespace A016276

/-- `A001047(n+1)+7*a(n-1)` -/
def P2341782318671356101.Spec : Prop :=
  ∀ n, P2341782318671356101.a n = A016276 n

end A016276

/-! ## A016276.P9876396437028267352

`2*A016212(n)-A016201(n)`
-/

namespace A016276.P9876396437028267352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016212 n - A016201 n

end

end A016276.P9876396437028267352

namespace A016276

/-- `2*A016212(n)-A016201(n)` -/
def P9876396437028267352.Spec : Prop :=
  ∀ n, P9876396437028267352.a n = A016276 n

end A016276

/-! ## A016276.P3499821976073657708

`A016138(n+1)-A016130(n+1)`
-/

namespace A016276.P3499821976073657708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016138 (n + 1) - A016130 (n + 1)

end

end A016276.P3499821976073657708

namespace A016276

/-- `A016138(n+1)-A016130(n+1)` -/
def P3499821976073657708.Spec : Prop :=
  ∀ n, P3499821976073657708.a n = A016276 n

end A016276

/-! ## A016276.P9906790884295807785

`Δ[A016212(n)-A016201(n)]`
-/

namespace A016276.P9906790884295807785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016212 n - A016201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016276.P9906790884295807785

namespace A016276

/-- `Δ[A016212(n)-A016201(n)]` -/
def P9906790884295807785.Spec : Prop :=
  ∀ n, P9906790884295807785.a n = A016276 n

end A016276

/-! ## A016276.P12675274605349377365

`2*A016304(n)-A025937(n)`
-/

namespace A016276.P12675274605349377365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016304 n - A025937 n

end

end A016276.P12675274605349377365

namespace A016276

/-- `2*A016304(n)-A025937(n)` -/
def P12675274605349377365.Spec : Prop :=
  ∀ n, P12675274605349377365.a n = A016276 n

end A016276

/-!
# A016277: Expansion of 1/((1-2x)(1-3x)(1-8x)).

The programs for A016277, the canonical program `A016277.P617245277307540597` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016277 has offset 0).

The definition of A016277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016277.P617245277307540597

`11*a(n-1)-24*a(n-2)+2^n` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016277

/-- `11*a(n-1)-24*a(n-2)+2^n` -/
def P617245277307540597.Spec : Prop :=
  ∀ n, P617245277307540597.a n = A016277 n

theorem P617245277307540597.correct : P617245277307540597.Spec := by
  intro n
  simp only [A016277]

end A016277

/-! ## A016277.P16971134904782969146

`a(n-1)+A016140(n)+a(n-1)` with `a(0)=1`
-/

namespace A016277.P16971134904782969146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016140 n + a (n - 1))

end

end A016277.P16971134904782969146

namespace A016277

/-- `a(n-1)+A016140(n)+a(n-1)` -/
def P16971134904782969146.Spec : Prop :=
  ∀ n, P16971134904782969146.a n = A016277 n

end A016277

/-! ## A016277.P9796166071080223951

`2*A016214(n)-A016203(n)`
-/

namespace A016277.P9796166071080223951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016214 n - A016203 n

end

end A016277.P9796166071080223951

namespace A016277

/-- `2*A016214(n)-A016203(n)` -/
def P9796166071080223951.Spec : Prop :=
  ∀ n, P9796166071080223951.a n = A016277 n

end A016277

/-! ## A016277.P15786958496312700565

`(A025467(n)+A016269(n))/2`
-/

namespace A016277.P15786958496312700565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025467 n + A016269 n : ℚ) / 2

end

end A016277.P15786958496312700565

namespace A016277

/-- `(A025467(n)+A016269(n))/2` -/
def P15786958496312700565.Spec : Prop :=
  ∀ n, P15786958496312700565.a n = (A016277 n : ℚ)

end A016277

/-! ## A016277.P11095992758461372562

`Δ[A016214(n)-A016203(n)]`
-/

namespace A016277.P11095992758461372562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016214 n - A016203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016277.P11095992758461372562

namespace A016277

/-- `Δ[A016214(n)-A016203(n)]` -/
def P11095992758461372562.Spec : Prop :=
  ∀ n, P11095992758461372562.a n = A016277 n

end A016277

/-! ## A016277.P14902326470480490083

`A016140(n+1)-A016131(n+1)`
-/

namespace A016277.P14902326470480490083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016140 (n + 1) - A016131 (n + 1)

end

end A016277.P14902326470480490083

namespace A016277

/-- `A016140(n+1)-A016131(n+1)` -/
def P14902326470480490083.Spec : Prop :=
  ∀ n, P14902326470480490083.a n = A016277 n

end A016277

/-!
# A016278: Expansion of g.f. 1/((1-2x)(1-3x)(1-9x)).

The programs for A016278, the canonical program `A016278.P4141200260468694315` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016278 has offset 0).

The definition of A016278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016278.P4141200260468694315

`14*a(n-1)-51*a(n-2)+54*a(n-3)` with `a(0)=1, a(1)=14, a(2)=145`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016278

/-- `14*a(n-1)-51*a(n-2)+54*a(n-3)` -/
def P4141200260468694315.Spec : Prop :=
  ∀ n, P4141200260468694315.a n = A016278 n

theorem P4141200260468694315.correct : P4141200260468694315.Spec := by
  intro n
  simp only [A016278]

end A016278

/-! ## A016278.P9044791253088092818

`2*a(n-1)+3^n*∑[3^n]` with `a(0)=1`
-/

namespace A016278.P9044791253088092818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016278.P9044791253088092818

namespace A016278

/-- `2*a(n-1)+3^n*∑[3^n]` -/
def P9044791253088092818.Spec : Prop :=
  ∀ n, (P9044791253088092818.a n : ℤ) = A016278 n

end A016278

/-! ## A016278.P14557362245935277965

`A016142(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016278.P14557362245935277965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016142 n + 2 * a (n - 1)

end

end A016278.P14557362245935277965

namespace A016278

/-- `A016142(n)+2*a(n-1)` -/
def P14557362245935277965.Spec : Prop :=
  ∀ n, P14557362245935277965.a n = A016278 n

end A016278

/-! ## A016278.P4156867334598799257

`A016133(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A016278.P4156867334598799257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016133 n + 3 * a (n - 1)

end

end A016278.P4156867334598799257

namespace A016278

/-- `A016133(n)+3*a(n-1)` -/
def P4156867334598799257.Spec : Prop :=
  ∀ n, P4156867334598799257.a n = A016278 n

end A016278

/-! ## A016278.P11243632446827378025

`A001047(n+1)+9*a(n-1)` with `a(0)=1`
-/

namespace A016278.P11243632446827378025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001047 (n + 1) + 9 * a (n - 1)

end

end A016278.P11243632446827378025

namespace A016278

/-- `A001047(n+1)+9*a(n-1)` -/
def P11243632446827378025.Spec : Prop :=
  ∀ n, P11243632446827378025.a n = A016278 n

end A016278

/-! ## A016278.P10319491113826713677

`A016142(n+1)-A016133(n+1)`
-/

namespace A016278.P10319491113826713677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 (n + 1) - A016133 (n + 1)

end

end A016278.P10319491113826713677

namespace A016278

/-- `A016142(n+1)-A016133(n+1)` -/
def P10319491113826713677.Spec : Prop :=
  ∀ n, P10319491113826713677.a n = A016278 n

end A016278

/-!
# A016279: Expansion of 1/((1-2x)(1-3x)(1-10x)).

The programs for A016279, the canonical program `A016279.P14616873308467691903` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016279 has offset 0).

The definition of A016279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016279.P14616873308467691903

`15*a(n-1)-56*a(n-2)+60*a(n-3)` with `a(0)=1, a(1)=15, a(2)=169`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016279

/-- `15*a(n-1)-56*a(n-2)+60*a(n-3)` -/
def P14616873308467691903.Spec : Prop :=
  ∀ n, P14616873308467691903.a n = A016279 n

theorem P14616873308467691903.correct : P14616873308467691903.Spec := by
  intro n
  simp only [A016279]

end A016279

/-! ## A016279.P3012266151494077579

`A001047(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A016279.P3012266151494077579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001047 (n + 1) + 10 * a (n - 1)

end

end A016279.P3012266151494077579

namespace A016279

/-- `A001047(n+1)+10*a(n-1)` -/
def P3012266151494077579.Spec : Prop :=
  ∀ n, P3012266151494077579.a n = A016279 n

end A016279

/-! ## A016279.P15422632161346389094

`a(n-1)+A016145(n)+a(n-1)` with `a(0)=1`
-/

namespace A016279.P15422632161346389094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016145 n + a (n - 1))

end

end A016279.P15422632161346389094

namespace A016279

/-- `a(n-1)+A016145(n)+a(n-1)` -/
def P15422632161346389094.Spec : Prop :=
  ∀ n, P15422632161346389094.a n = A016279 n

end A016279

/-! ## A016279.P16502187988813279929

`2*A016215(n)-A016205(n)`
-/

namespace A016279.P16502187988813279929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016215 n - A016205 n

end

end A016279.P16502187988813279929

namespace A016279

/-- `2*A016215(n)-A016205(n)` -/
def P16502187988813279929.Spec : Prop :=
  ∀ n, P16502187988813279929.a n = A016279 n

end A016279

/-! ## A016279.P6305525714898803822

`(A021049(n)+A016215(n))/2`
-/

namespace A016279.P6305525714898803822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021049 n + A016215 n : ℚ) / 2

end

end A016279.P6305525714898803822

namespace A016279

/-- `(A021049(n)+A016215(n))/2` -/
def P6305525714898803822.Spec : Prop :=
  ∀ n, P6305525714898803822.a n = (A016279 n : ℚ)

end A016279

/-! ## A016279.P4297462087715797906

`2*A016215(n)-∑[A016134(n)]`
-/

namespace A016279.P4297462087715797906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016215 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016279.P4297462087715797906

namespace A016279

/-- `2*A016215(n)-∑[A016134(n)]` -/
def P4297462087715797906.Spec : Prop :=
  ∀ n, P4297462087715797906.a n = A016279 n

end A016279

/-! ## A016279.P10008372126123473340

`A016225(n)+A021092(n)-A016981(n)`
-/

namespace A016279.P10008372126123473340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016225 n + (A021092 n - A016981 n)

end

end A016279.P10008372126123473340

namespace A016279

/-- `A016225(n)+A021092(n)-A016981(n)` -/
def P10008372126123473340.Spec : Prop :=
  ∀ n, P10008372126123473340.a n = A016279 n

end A016279

/-! ## A016279.P8718281364091910320

`Δ[A016215(n)-A016205(n)]`
-/

namespace A016279.P8718281364091910320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016215 n - A016205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016279.P8718281364091910320

namespace A016279

/-- `Δ[A016215(n)-A016205(n)]` -/
def P8718281364091910320.Spec : Prop :=
  ∀ n, P8718281364091910320.a n = A016279 n

end A016279

/-! ## A016279.P13170175567997350078

`Δ[A016215(n)-∑[A016134(n)]]`
-/

namespace A016279.P13170175567997350078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016134 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016215 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016279.P13170175567997350078

namespace A016279

/-- `Δ[A016215(n)-∑[A016134(n)]]` -/
def P13170175567997350078.Spec : Prop :=
  ∀ n, P13170175567997350078.a n = A016279 n

end A016279

/-! ## A016279.P4592473864608390481

`Δ[A016215(n)]-A016134(n+1)`
-/

namespace A016279.P4592473864608390481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016134 (n + 1)

end

end A016279.P4592473864608390481

namespace A016279

/-- `Δ[A016215(n)]-A016134(n+1)` -/
def P4592473864608390481.Spec : Prop :=
  ∀ n, P4592473864608390481.a n = A016279 n

end A016279

/-!
# A016280: Expansion of 1/((1-2x)(1-3x)(1-11x)).

The programs for A016280, the canonical program `A016280.P5751178886915315157` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016280 has offset 0).

The definition of A016280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016280.P5751178886915315157

`16*a(n-1)-61*a(n-2)+66*a(n-3)` with `a(0)=1, a(1)=16, a(2)=195`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016280

/-- `16*a(n-1)-61*a(n-2)+66*a(n-3)` -/
def P5751178886915315157.Spec : Prop :=
  ∀ n, P5751178886915315157.a n = A016280 n

theorem P5751178886915315157.correct : P5751178886915315157.Spec := by
  intro n
  simp only [A016280]

end A016280

/-! ## A016280.P3232515062785309852

`3^(n+1)-2^(n+1)+11*a(n-1)` with `a(0)=1`
-/

namespace A016280.P3232515062785309852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) + 11 * a (n - 1)

end

end A016280.P3232515062785309852

namespace A016280

/-- `3^(n+1)-2^(n+1)+11*a(n-1)` -/
def P3232515062785309852.Spec : Prop :=
  ∀ n, P3232515062785309852.a n = A016280 n

end A016280

/-! ## A016280.P2914355781786364200

`A001047(n+1)+12*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A016280.P2914355781786364200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001047 (n + 1) + 12 * a (n - 1) - a (n - 1)

end

end A016280.P2914355781786364200

namespace A016280

/-- `A001047(n+1)+12*a(n-1)-a(n-1)` -/
def P2914355781786364200.Spec : Prop :=
  ∀ n, P2914355781786364200.a n = A016280 n

end A016280

/-! ## A016280.P14772593850846112420

`2*A016216(n)-A016206(n)`
-/

namespace A016280.P14772593850846112420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016216 n - A016206 n

end

end A016280.P14772593850846112420

namespace A016280

/-- `2*A016216(n)-A016206(n)` -/
def P14772593850846112420.Spec : Prop :=
  ∀ n, P14772593850846112420.a n = A016280 n

end A016280

/-! ## A016280.P13970804900450733232

`∑[2*A016146(n)]-A016206(n)`
-/

namespace A016280.P13970804900450733232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A016206 n

end

end A016280.P13970804900450733232

namespace A016280

/-- `∑[2*A016146(n)]-A016206(n)` -/
def P13970804900450733232.Spec : Prop :=
  ∀ n, P13970804900450733232.a n = A016280 n

end A016280

/-! ## A016280.P14968597934628380703

`Δ[A016216(n)-A016206(n)]`
-/

namespace A016280.P14968597934628380703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016216 n - A016206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016280.P14968597934628380703

namespace A016280

/-- `Δ[A016216(n)-A016206(n)]` -/
def P14968597934628380703.Spec : Prop :=
  ∀ n, P14968597934628380703.a n = A016280 n

end A016280

/-! ## A016280.P14778606557980100082

`Δ[∑[A016146(n)]-A016206(n)]`
-/

namespace A016280.P14778606557980100082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016146 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A016206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016280.P14778606557980100082

namespace A016280

/-- `Δ[∑[A016146(n)]-A016206(n)]` -/
def P14778606557980100082.Spec : Prop :=
  ∀ n, P14778606557980100082.a n = A016280 n

end A016280

/-! ## A016280.P11016570518921572352

`A016146(n+1)-Δ[A016206(n)]`
-/

namespace A016280.P11016570518921572352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016146 (n + 1) - (f1 (n + 1) - f1 n)

end

end A016280.P11016570518921572352

namespace A016280

/-- `A016146(n+1)-Δ[A016206(n)]` -/
def P11016570518921572352.Spec : Prop :=
  ∀ n, P11016570518921572352.a n = A016280 n

end A016280

/-! ## A016280.P10366325010526610900

`A016146(n+1)-A016135(n+1)`
-/

namespace A016280.P10366325010526610900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016146 (n + 1) - A016135 (n + 1)

end

end A016280.P10366325010526610900

namespace A016280

/-- `A016146(n+1)-A016135(n+1)` -/
def P10366325010526610900.Spec : Prop :=
  ∀ n, P10366325010526610900.a n = A016280 n

end A016280

/-!
# A016281: Expansion of g.f. 1/((1-2*x)*(1-3*x)*(1-12*x)).

The programs for A016281, the canonical program `A016281.P17823663082885965801` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016281 has offset 0).

The definition of A016281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016281.P17823663082885965801

`17*a(n-1)-66*a(n-2)+72*a(n-3)` with `a(0)=1, a(1)=17, a(2)=223`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016281

/-- `17*a(n-1)-66*a(n-2)+72*a(n-3)` -/
def P17823663082885965801.Spec : Prop :=
  ∀ n, P17823663082885965801.a n = A016281 n

theorem P17823663082885965801.correct : P17823663082885965801.Spec := by
  intro n
  simp only [A016281]

end A016281

/-! ## A016281.P16853802661261304837

`A016147(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016281.P16853802661261304837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016147 n + 2 * a (n - 1)

end

end A016281.P16853802661261304837

namespace A016281

/-- `A016147(n)+2*a(n-1)` -/
def P16853802661261304837.Spec : Prop :=
  ∀ n, P16853802661261304837.a n = A016281 n

end A016281

/-! ## A016281.P10829896334036311983

`A001047(n+1)+12*a(n-1)` with `a(0)=1`
-/

namespace A016281.P10829896334036311983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001047 (n + 1) + 12 * a (n - 1)

end

end A016281.P10829896334036311983

namespace A016281

/-- `A001047(n+1)+12*a(n-1)` -/
def P10829896334036311983.Spec : Prop :=
  ∀ n, P10829896334036311983.a n = A016281 n

end A016281

/-! ## A016281.P8353531817220353054

`2*A016217(n)-A016207(n)`
-/

namespace A016281.P8353531817220353054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016217 n - A016207 n

end

end A016281.P8353531817220353054

namespace A016281

/-- `2*A016217(n)-A016207(n)` -/
def P8353531817220353054.Spec : Prop :=
  ∀ n, P8353531817220353054.a n = A016281 n

end A016281

/-! ## A016281.P11629802874949368965

`2*A016309(n)-A025942(n)`
-/

namespace A016281.P11629802874949368965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016309 n - A025942 n

end

end A016281.P11629802874949368965

namespace A016281

/-- `2*A016309(n)-A025942(n)` -/
def P11629802874949368965.Spec : Prop :=
  ∀ n, P11629802874949368965.a n = A016281 n

end A016281

/-! ## A016281.P2405406423762082030

`∑[A016147(n)/A000079(n)]*A000079(n)`
-/

namespace A016281.P2405406423762082030
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016147 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A016281.P2405406423762082030

namespace A016281

/-- `∑[A016147(n)/A000079(n)]*A000079(n)` -/
def P2405406423762082030.Spec : Prop :=
  ∀ n, P2405406423762082030.a n = (A016281 n : ℚ)

end A016281

/-! ## A016281.P17650347290866924581

`Δ[A016217(n)-A016207(n)]`
-/

namespace A016281.P17650347290866924581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016217 n - A016207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016281.P17650347290866924581

namespace A016281

/-- `Δ[A016217(n)-A016207(n)]` -/
def P17650347290866924581.Spec : Prop :=
  ∀ n, P17650347290866924581.a n = A016281 n

end A016281

/-!
# A016282: Expansion of 1/((1-2*x)*(1-4*x)*(1-5*x)).

The programs for A016282, the canonical program `A016282.P13213864495726131740` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016282 has offset 0).

The definition of A016282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016282.P13213864495726131740

`2/3*2^n-8*4^n+25/3*5^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016282

/-- `2/3*2^n-8*4^n+25/3*5^n` -/
def P13213864495726131740.Spec : Prop :=
  ∀ n, P13213864495726131740.a n = (A016282 n : ℚ)

end A016282

/-! ## A016282.P14162692434902236524

`Δ[A304975(2*n+3)]`
-/

namespace A016282.P14162692434902236524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304975 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016282.P14162692434902236524

namespace A016282

/-- `Δ[A304975(2*n+3)]` -/
def P14162692434902236524.Spec : Prop :=
  ∀ n, P14162692434902236524.a n = A016282 n

end A016282

/-! ## A016282.P17939148225688988538

`Δ[record[A304975(A026741(n))]]`
-/

namespace A016282.P17939148225688988538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304975 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016282.P17939148225688988538

namespace A016282

/-- `Δ[record[A304975(A026741(n))]]` -/
def P17939148225688988538.Spec : Prop :=
  ∀ n, P17939148225688988538.a n = A016282 n

end A016282

/-! ## A016282.P889192376339357445

`Δ[record[A304975(A000265(n+1))]]`
-/

namespace A016282.P889192376339357445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304975 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016282.P889192376339357445

namespace A016282

/-- `Δ[record[A304975(A000265(n+1))]]` -/
def P889192376339357445.Spec : Prop :=
  ∀ n, P889192376339357445.a n = A016282 n

end A016282

/-! ## A016282.P9505834071385048149

`A019671(n)/2^n`
-/

namespace A016282.P9505834071385048149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019671 n : ℚ) / (2 ^ n : ℚ)

end

end A016282.P9505834071385048149

namespace A016282

/-- `A019671(n)/2^n` -/
def P9505834071385048149.Spec : Prop :=
  ∀ n, P9505834071385048149.a n = (A016282 n : ℚ)

end A016282

/-!
# A016283: a(n) = 6^n/8 - 4^(n-1) + 2^(n-3).

The programs for A016283, the canonical program `A016283.P10632640769537291988` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016283 has offset 0).

The definition of A016283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016283.P10632640769537291988

`10*a(n-1)-24*a(n-2)+2^(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016283

/-- `10*a(n-1)-24*a(n-2)+2^(n-2)` -/
def P10632640769537291988.Spec : Prop :=
  ∀ n, P10632640769537291988.a n = (A016283 n : ℚ)

end A016283

/-! ## A016283.P15681658611015863755

`6^n/8-4^(n-1)+2^(n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A016283.P15681658611015863755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℚ) / 8 - (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A016283.P15681658611015863755

namespace A016283

/-- `6^n/8-4^(n-1)+2^(n-3)` -/
def P15681658611015863755.Spec : Prop :=
  ∀ n, P15681658611015863755.a n = (A016283 n : ℚ)

end A016283

/-! ## A016283.P11274091874057108494

`2^(n-2)*A000392(n+1)`
-/

namespace A016283.P11274091874057108494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A000392 (n + 1) : ℚ)

end

end A016283.P11274091874057108494

namespace A016283

/-- `2^(n-2)*A000392(n+1)` -/
def P11274091874057108494.Spec : Prop :=
  ∀ n, P11274091874057108494.a n = (A016283 n : ℚ)

end A016283

/-! ## A016283.P1394726935545303398

`(∑[floor(3^(n-1))]-A000225(n))*2^(n-2)`
-/

namespace A016283.P1394726935545303398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A000225 n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A016283.P1394726935545303398

namespace A016283

/-- `(∑[floor(3^(n-1))]-A000225(n))*2^(n-2)` -/
def P1394726935545303398.Spec : Prop :=
  ∀ n, P1394726935545303398.a n = (A016283 n : ℚ)

end A016283

/-! ## A016283.P17791242984888646346

`A000392(n+1)*A034008(n)`
-/

namespace A016283.P17791242984888646346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) * A034008 n

end

end A016283.P17791242984888646346

namespace A016283

/-- `A000392(n+1)*A034008(n)` -/
def P17791242984888646346.Spec : Prop :=
  ∀ n, P17791242984888646346.a n = A016283 n

end A016283

/-! ## A016283.P8508262638669845123

`A056509(2*n+1)*A166444(n)`
-/

namespace A016283.P8508262638669845123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056509 (2 * n + 1) * A166444 n

end

end A016283.P8508262638669845123

namespace A016283

/-- `A056509(2*n+1)*A166444(n)` -/
def P8508262638669845123.Spec : Prop :=
  ∀ n, P8508262638669845123.a n = A016283 n

end A016283

/-! ## A016283.P17625932404812099156

`A028243(n+1)/4*A011782(n)`
-/

namespace A016283.P17625932404812099156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 1) : ℚ) / 4 * (A011782 n : ℚ)

end

end A016283.P17625932404812099156

namespace A016283

/-- `A028243(n+1)/4*A011782(n)` -/
def P17625932404812099156.Spec : Prop :=
  ∀ n, P17625932404812099156.a n = (A016283 n : ℚ)

end A016283

/-! ## A016283.P9374668680405439466

`A028243(n+1)/8*A000079(n)`
-/

namespace A016283.P9374668680405439466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 1) : ℚ) / 8 * (A000079 n : ℚ)

end

end A016283.P9374668680405439466

namespace A016283

/-- `A028243(n+1)/8*A000079(n)` -/
def P9374668680405439466.Spec : Prop :=
  ∀ n, P9374668680405439466.a n = (A016283 n : ℚ)

end A016283

/-! ## A016283.P3680133417478305194

`A028243(n+1)/8*Δ[A036563(n)]`
-/

namespace A016283.P3680133417478305194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 1) : ℚ) / 8 * (f1 (n + 1) - f1 n : ℚ)

end

end A016283.P3680133417478305194

namespace A016283

/-- `A028243(n+1)/8*Δ[A036563(n)]` -/
def P3680133417478305194.Spec : Prop :=
  ∀ n, P3680133417478305194.a n = (A016283 n : ℚ)

end A016283

/-! ## A016283.P11810358205880629660

`(A007051(n)-record[A034008(n)])*A034008(n)`
-/

namespace A016283.P11810358205880629660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007051 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) * A034008 n

end

end A016283.P11810358205880629660

namespace A016283

/-- `(A007051(n)-record[A034008(n)])*A034008(n)` -/
def P11810358205880629660.Spec : Prop :=
  ∀ n, P11810358205880629660.a n = A016283 n

end A016283

/-! ## A016283.P12241585238717700261

`A000392(n+1)*A011782(A289207(n+1))`
-/

namespace A016283.P12241585238717700261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) * A011782 (A289207 (n + 1)).toNat

end

end A016283.P12241585238717700261

namespace A016283

/-- `A000392(n+1)*A011782(A289207(n+1))` -/
def P12241585238717700261.Spec : Prop :=
  ∀ n, P12241585238717700261.a n = A016283 n

end A016283

/-! ## A016283.P2175291581918342676

`A228701(n)/4`
-/

namespace A016283.P2175291581918342676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228701 n : ℚ) / 4

end

end A016283.P2175291581918342676

namespace A016283

/-- `A228701(n)/4` -/
def P2175291581918342676.Spec : Prop :=
  ∀ n, P2175291581918342676.a n = (A016283 n : ℚ)

end A016283

/-!
# A016284: Inverse of 2275th cyclotomic polynomial.

The programs for A016284, there is no canonical definition to state claims against.
-/

/-! ## A016284.P17981903900162473891

`char[5*n]*A016384(3*n)`
-/

namespace A016284.P17981903900162473891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016384 (3 * n)

end

end A016284.P17981903900162473891

/-!
# A016285: Expansion of 1/((1-2x)(1-4x)(1-7x)).

The programs for A016285, the canonical program `A016285.P3077142475723227168` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016285 has offset 0).

The definition of A016285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016285.P3077142475723227168

`2/5*2^n-8/3*4^n+49/15*7^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016285

/-- `2/5*2^n-8/3*4^n+49/15*7^n` -/
def P3077142475723227168.Spec : Prop :=
  ∀ n, P3077142475723227168.a n = (A016285 n : ℚ)

end A016285

/-! ## A016285.P12037411304839787333

`floor(A016130(n)+4*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A016285.P12037411304839787333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016130 n + 4 * a (n - 1)

end

end A016285.P12037411304839787333

namespace A016285

/-- `floor(A016130(n)+4*a(n-1))` -/
def P12037411304839787333.Spec : Prop :=
  ∀ n, P12037411304839787333.a n = A016285 n

end A016285

/-!
# A016286: Inverse of 2277th cyclotomic polynomial.

The programs for A016286, there is no canonical definition to state claims against.
-/

/-! ## A016286.P17446932817081620269

`A011648(n)`
-/

namespace A016286.P17446932817081620269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011648 n

end

end A016286.P17446932817081620269

/-! ## A016286.P1971538354429158932

`A010892(n)*A016354(n)`
-/

namespace A016286.P1971538354429158932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A016354 n

end

end A016286.P1971538354429158932

/-! ## A016286.P17628746167469360409

`A014027(A160272(n))`
-/

namespace A016286.P17628746167469360409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014027 (A160272 n).toNat

end

end A016286.P17628746167469360409

/-! ## A016286.P17866885228877439256

`A015692(n)%A157439(n)`
-/

namespace A016286.P17866885228877439256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015692 n) (A157439 n)

end

end A016286.P17866885228877439256

/-! ## A016286.P8167679379083298357

`A015890(n)%A157439(n)`
-/

namespace A016286.P8167679379083298357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015890 n) (A157439 n)

end

end A016286.P8167679379083298357

/-!
# A016287: Inverse of 2278th cyclotomic polynomial.

The programs for A016287, there is no canonical definition to state claims against.
-/

/-! ## A016287.P7144174738742345827

`(A004442(n)-n)*A015148(n)`
-/

namespace A016287.P7144174738742345827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A015148 n

end

end A016287.P7144174738742345827

/-! ## A016287.P11579359745094956464

`(-A059108(A335376(n+1)-n))^n`
-/

namespace A016287.P11579359745094956464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A059108 (A335376 (n + 1) - (n : ℤ)).toNat) ^ n

end

end A016287.P11579359745094956464

/-! ## A016287.P7147238322062953383

`A014655(A130575(n))`
-/

namespace A016287.P7147238322062953383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014655 (A130575 n).toNat

end

end A016287.P7147238322062953383

/-! ## A016287.P17072149818137644816

`A015063(A024652(n))`
-/

namespace A016287.P17072149818137644816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015063 (A024652 n).toNat

end

end A016287.P17072149818137644816

/-!
# A016288: Inverse of 2279th cyclotomic polynomial.

The programs for A016288, there is no canonical definition to state claims against.
-/

/-! ## A016288.P16857444263797288145

`or(A015970(n), A015970(A305820(n)))`
-/

namespace A016288.P16857444263797288145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015970 n) (A015970 (A305820 n).toNat)

end

end A016288.P16857444263797288145

/-! ## A016288.P5677657603398267927

`A015970(∑[A336569(n+1)])`
-/

namespace A016288.P5677657603398267927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016288.P5677657603398267927

/-! ## A016288.P2181247991648768788

`A015748(A374767(n+1)-n)`
-/

namespace A016288.P2181247991648768788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (A374767 (n + 1) - (n : ℤ)).toNat

end

end A016288.P2181247991648768788

/-! ## A016288.P11214884515430474815

`A010059(C(A022290(n), 21))`
-/

namespace A016288.P11214884515430474815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Nat.choose (A022290 n).toNat 21)

end

end A016288.P11214884515430474815

/-! ## A016288.P10399176260992751913

`C(2, A151878(A014601(n+2)))`
-/

namespace A016288.P10399176260992751913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A151878 (A014601 (n + 2)).toNat).toNat

end

end A016288.P10399176260992751913

/-! ## A016288.P14617254623940994649

`A073202(C(A003056(n+2), 7))`
-/

namespace A016288.P14617254623940994649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073202 (Nat.choose (A003056 (n + 2)).toNat 7)

end

end A016288.P14617254623940994649

/-! ## A016288.P5691468549996394216

`ceil(A016030(n)/A344415(n+1))`
-/

namespace A016288.P5691468549996394216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016030 n : ℚ) / (A344415 (n + 1) : ℚ)⌉

end

end A016288.P5691468549996394216

/-! ## A016288.P3269042764854934747

`ceil(A016030(n)/A385402(n+5))`
-/

namespace A016288.P3269042764854934747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016030 n : ℚ) / (A385402 (n + 5) : ℚ)⌉

end

end A016288.P3269042764854934747

/-! ## A016288.P18097472298814101025

`A030300(A357118(n+1)+A324520(n+1))`
-/

namespace A016288.P18097472298814101025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (A357118 (n + 1) + A324520 (n + 1)).toNat

end

end A016288.P18097472298814101025

/-! ## A016288.P13872532375601532996

`C(n+1, A151622(n))`
-/

namespace A016288.P13872532375601532996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A151622 n).toNat

end

end A016288.P13872532375601532996

/-!
# A016289: Inverse of 2280th cyclotomic polynomial.

The programs for A016289, there is no canonical definition to state claims against.
-/

/-! ## A016289.P8813513769556622618

`A015149(lcm(2, n)/2)`
-/

namespace A016289.P8813513769556622618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015149 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A016289.P8813513769556622618

/-!
# A016290: Expansion of g.f. 1/((1-2*x)*(1-4*x)*(1-8*x)).

The programs for A016290, the canonical program `A016290.P17602199607367041769` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016290 has offset 0).

The definition of A016290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016290.P17602199607367041769

`12*a(n-1)-32*a(n-2)+2^n` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016290

/-- `12*a(n-1)-32*a(n-2)+2^n` -/
def P17602199607367041769.Spec : Prop :=
  ∀ n, P17602199607367041769.a n = A016290 n

theorem P17602199607367041769.correct : P17602199607367041769.Spec := by
  intro n
  simp only [A016290]

end A016290

/-! ## A016290.P3737823729086370433

`(2^n-6*4^n+8*8^n)/3`
-/

namespace A016290.P3737823729086370433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (6 * 4 ^ n : ℤ) + (8 * 8 ^ n : ℤ) : ℚ) / 3

end

end A016290.P3737823729086370433

namespace A016290

/-- `(2^n-6*4^n+8*8^n)/3` -/
def P3737823729086370433.Spec : Prop :=
  ∀ n, P3737823729086370433.a n = (A016290 n : ℚ)

end A016290

/-! ## A016290.P14072005169494910389

`2^n*A171477(n)`
-/

namespace A016290.P14072005169494910389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A171477 n

end

end A016290.P14072005169494910389

namespace A016290

/-- `2^n*A171477(n)` -/
def P14072005169494910389.Spec : Prop :=
  ∀ n, P14072005169494910389.a n = A016290 n

end A016290

/-! ## A016290.P5391371014008398350

`A016152(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A016290.P5391371014008398350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016152 (n + 1) + 2 * a (n - 1)

end

end A016290.P5391371014008398350

namespace A016290

/-- `A016152(n+1)+2*a(n-1)` -/
def P5391371014008398350.Spec : Prop :=
  ∀ n, P5391371014008398350.a n = A016290 n

end A016290

/-! ## A016290.P15730708274626384760

`lcm(∑[2^n*∑[2^n]], A000079(n))`
-/

namespace A016290.P15730708274626384760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000079 n)

end

end A016290.P15730708274626384760

namespace A016290

/-- `lcm(∑[2^n*∑[2^n]], A000079(n))` -/
def P15730708274626384760.Spec : Prop :=
  ∀ n, (P15730708274626384760.a n : ℤ) = A016290 n

end A016290

/-! ## A016290.P9049931298383009602

`lcm(A000079(n), A171477(n))`
-/

namespace A016290.P9049931298383009602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A171477 n)

end

end A016290.P9049931298383009602

namespace A016290

/-- `lcm(A000079(n), A171477(n))` -/
def P9049931298383009602.Spec : Prop :=
  ∀ n, (P9049931298383009602.a n : ℤ) = A016290 n

end A016290

/-! ## A016290.P9842030347816568943

`A000079(n)*A006095(n+2)`
-/

namespace A016290.P9842030347816568943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A006095 (n + 2)

end

end A016290.P9842030347816568943

namespace A016290

/-- `A000079(n)*A006095(n+2)` -/
def P9842030347816568943.Spec : Prop :=
  ∀ n, P9842030347816568943.a n = A016290 n

end A016290

/-! ## A016290.P2237306810912642423

`A006095(n+2)*A077957(2*n)`
-/

namespace A016290.P2237306810912642423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 2) * A077957 (2 * n)

end

end A016290.P2237306810912642423

namespace A016290

/-- `A006095(n+2)*A077957(2*n)` -/
def P2237306810912642423.Spec : Prop :=
  ∀ n, P2237306810912642423.a n = A016290 n

end A016290

/-! ## A016290.P2502983438099687098

`A006516(n+1)+2*A026740(n+1)`
-/

namespace A016290.P2502983438099687098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) + 2 * A026740 (n + 1)

end

end A016290.P2502983438099687098

namespace A016290

/-- `A006516(n+1)+2*A026740(n+1)` -/
def P2502983438099687098.Spec : Prop :=
  ∀ n, P2502983438099687098.a n = A016290 n

end A016290

/-! ## A016290.P7213321478926912947

`A083332(2*n+1)-A092055(n+1)`
-/

namespace A016290.P7213321478926912947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083332 (2 * n + 1) - A092055 (n + 1)

end

end A016290.P7213321478926912947

namespace A016290

/-- `A083332(2*n+1)-A092055(n+1)` -/
def P7213321478926912947.Spec : Prop :=
  ∀ n, P7213321478926912947.a n = A016290 n

end A016290

/-! ## A016290.P13065273382291354633

`A171477(n)+A000225(n)*A171477(n)`
-/

namespace A016290.P13065273382291354633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171477 n + A000225 n * A171477 n

end

end A016290.P13065273382291354633

namespace A016290

/-- `A171477(n)+A000225(n)*A171477(n)` -/
def P13065273382291354633.Spec : Prop :=
  ∀ n, P13065273382291354633.a n = A016290 n

end A016290

/-! ## A016290.P3461672446817545834

`A007583(n)+A000225(n)*A007583(n+1)`
-/

namespace A016290.P3461672446817545834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n + A000225 n * A007583 (n + 1)

end

end A016290.P3461672446817545834

namespace A016290

/-- `A007583(n)+A000225(n)*A007583(n+1)` -/
def P3461672446817545834.Spec : Prop :=
  ∀ n, P3461672446817545834.a n = A016290 n

end A016290

/-! ## A016290.P16942281631970912728

`A000051(n)*A007583(n+1)-A206373(n)`
-/

namespace A016290.P16942281631970912728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A007583 (n + 1) - A206373 n

end

end A016290.P16942281631970912728

namespace A016290

/-- `A000051(n)*A007583(n+1)-A206373(n)` -/
def P16942281631970912728.Spec : Prop :=
  ∀ n, P16942281631970912728.a n = A016290 n

end A016290

/-! ## A016290.P17035845622749728381

`(A007583(n+1)-A000079(n+1))*A000079(n)`
-/

namespace A016290.P17035845622749728381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007583 (n + 1) - A000079 (n + 1)) * A000079 n

end

end A016290.P17035845622749728381

namespace A016290

/-- `(A007583(n+1)-A000079(n+1))*A000079(n)` -/
def P17035845622749728381.Spec : Prop :=
  ∀ n, P17035845622749728381.a n = A016290 n

end A016290

/-! ## A016290.P10856953184213059297

`A000225(n+1)*A002450(n+1)-A006095(n+1)`
-/

namespace A016290.P10856953184213059297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A002450 (n + 1) - A006095 (n + 1)

end

end A016290.P10856953184213059297

namespace A016290

/-- `A000225(n+1)*A002450(n+1)-A006095(n+1)` -/
def P10856953184213059297.Spec : Prop :=
  ∀ n, P10856953184213059297.a n = A016290 n

end A016290

/-! ## A016290.P17273343729309231294

`A000079(n+1)*A002450(n+1)-A006516(n+1)`
-/

namespace A016290.P17273343729309231294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A002450 (n + 1) - A006516 (n + 1)

end

end A016290.P17273343729309231294

namespace A016290

/-- `A000079(n+1)*A002450(n+1)-A006516(n+1)` -/
def P17273343729309231294.Spec : Prop :=
  ∀ n, P17273343729309231294.a n = A016290 n

end A016290

/-! ## A016290.P3051104213651483177

`A026740(n+2)-A160873(n+2)`
-/

namespace A016290.P3051104213651483177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026740 (n + 2) - A160873 (n + 2)

end

end A016290.P3051104213651483177

namespace A016290

/-- `A026740(n+2)-A160873(n+2)` -/
def P3051104213651483177.Spec : Prop :=
  ∀ n, P3051104213651483177.a n = A016290 n

end A016290

/-!
# A016291: Expansion of 1/((1-2x)*(1-4x)*(1-9x)).

The programs for A016291, the canonical program `A016291.P9645198488764327823` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016291 has offset 0).

The definition of A016291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016291.P9645198488764327823

`2/7*2^n-8/5*4^n+81/35*9^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016291

/-- `2/7*2^n-8/5*4^n+81/35*9^n` -/
def P9645198488764327823.Spec : Prop :=
  ∀ n, P9645198488764327823.a n = (A016291 n : ℚ)

end A016291

/-! ## A016291.P10056117534844240861

`(A021084(n)+A002451(n))/2`
-/

namespace A016291.P10056117534844240861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021084 n + A002451 n : ℚ) / 2

end

end A016291.P10056117534844240861

namespace A016291

/-- `(A021084(n)+A002451(n))/2` -/
def P10056117534844240861.Spec : Prop :=
  ∀ n, P10056117534844240861.a n = (A016291 n : ℚ)

end A016291

/-! ## A016291.P4778096161585837922

`2*(A016306(n)-A019443(n)/2)`
-/

namespace A016291.P4778096161585837922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A016306 n : ℚ) - (A019443 n : ℚ) / 2)

end

end A016291.P4778096161585837922

namespace A016291

/-- `2*(A016306(n)-A019443(n)/2)` -/
def P4778096161585837922.Spec : Prop :=
  ∀ n, P4778096161585837922.a n = (A016291 n : ℚ)

end A016291

/-! ## A016291.P1344000979091170660

`(A002451(n)+(A021379(n)+A021048(n))/2)/2`
-/

namespace A016291.P1344000979091170660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002451 n : ℚ) + (A021379 n + A021048 n : ℚ) / 2) / 2

end

end A016291.P1344000979091170660

namespace A016291

/-- `(A002451(n)+(A021379(n)+A021048(n))/2)/2` -/
def P1344000979091170660.Spec : Prop :=
  ∀ n, P1344000979091170660.a n = (A016291 n : ℚ)

end A016291

/-! ## A016291.P9139118573455833834

`(A002451(n)+2*A021194(n)-A021824(n))/2`
-/

namespace A016291.P9139118573455833834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002451 n + (2 * A021194 n - A021824 n) : ℚ) / 2

end

end A016291.P9139118573455833834

namespace A016291

/-- `(A002451(n)+2*A021194(n)-A021824(n))/2` -/
def P9139118573455833834.Spec : Prop :=
  ∀ n, P9139118573455833834.a n = (A016291 n : ℚ)

end A016291

/-! ## A016291.P5793292477156606306

`(A002451(n)+2*A021229(n)-A025972(n))/2`
-/

namespace A016291.P5793292477156606306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002451 n + (2 * A021229 n - A025972 n) : ℚ) / 2

end

end A016291.P5793292477156606306

namespace A016291

/-- `(A002451(n)+2*A021229(n)-A025972(n))/2` -/
def P5793292477156606306.Spec : Prop :=
  ∀ n, P5793292477156606306.a n = (A016291 n : ℚ)

end A016291

/-! ## A016291.P7320259145268761594

`(A002451(n)+(A274870(2*(n+3))+A274869(2*(n+3)))/3)/2`
-/

namespace A016291.P7320259145268761594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002451 n : ℚ) + (A274870 (2 * (n + 3)) + A274869 (2 * (n + 3)) : ℚ) / 3) / 2

end

end A016291.P7320259145268761594

namespace A016291

/-- `(A002451(n)+(A274870(2*(n+3))+A274869(2*(n+3)))/3)/2` -/
def P7320259145268761594.Spec : Prop :=
  ∀ n, P7320259145268761594.a n = (A016291 n : ℚ)

end A016291

/-! ## A016291.P3341540560754754860

`(A002451(n)+A021079(n)+A021864(n)-A021229(n))/2`
-/

namespace A016291.P3341540560754754860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002451 n + (A021079 n + (A021864 n - A021229 n)) : ℚ) / 2

end

end A016291.P3341540560754754860

namespace A016291

/-- `(A002451(n)+A021079(n)+A021864(n)-A021229(n))/2` -/
def P3341540560754754860.Spec : Prop :=
  ∀ n, P3341540560754754860.a n = (A016291 n : ℚ)

end A016291

/-!
# A016292: Expansion of 1/((1-2x)*(1-4x)*(1-10x)).

The programs for A016292, the canonical program `A016292.P15603484581278240016` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016292 has offset 0).

The definition of A016292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016292.P15603484581278240016

`1/4*2^n-4/3*4^n+25/12*10^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016292

/-- `1/4*2^n-4/3*4^n+25/12*10^n` -/
def P15603484581278240016.Spec : Prop :=
  ∀ n, P15603484581278240016.a n = (A016292 n : ℚ)

end A016292

/-! ## A016292.P18111189647792828728

`A000079(n)*A016198(n)`
-/

namespace A016292.P18111189647792828728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016198 n

end

end A016292.P18111189647792828728

namespace A016292

/-- `A000079(n)*A016198(n)` -/
def P18111189647792828728.Spec : Prop :=
  ∀ n, P18111189647792828728.a n = A016292 n

end A016292

/-! ## A016292.P14835599322469026881

`abs(A016198(n)*A122803(n))`
-/

namespace A016292.P14835599322469026881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016198 n * A122803 n|

end

end A016292.P14835599322469026881

namespace A016292

/-- `abs(A016198(n)*A122803(n))` -/
def P14835599322469026881.Spec : Prop :=
  ∀ n, P14835599322469026881.a n = A016292 n

end A016292

/-! ## A016292.P10018585703818788784

`(A021092(n)+A016225(n))/2`
-/

namespace A016292.P10018585703818788784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021092 n + A016225 n : ℚ) / 2

end

end A016292.P10018585703818788784

namespace A016292

/-- `(A021092(n)+A016225(n))/2` -/
def P10018585703818788784.Spec : Prop :=
  ∀ n, P10018585703818788784.a n = (A016292 n : ℚ)

end A016292

/-! ## A016292.P15058847675021126864

`A016198(n)*A122803(n)/A033999(n)`
-/

namespace A016292.P15058847675021126864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016198 n * A122803 n : ℚ) / (A033999 n : ℚ)

end

end A016292.P15058847675021126864

namespace A016292

/-- `A016198(n)*A122803(n)/A033999(n)` -/
def P15058847675021126864.Spec : Prop :=
  ∀ n, P15058847675021126864.a n = (A016292 n : ℚ)

end A016292

/-! ## A016292.P12618955590872062273

`gcd(A016198(n)*A122803(n), A000038(n))`
-/

namespace A016292.P12618955590872062273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016198 n * A122803 n) (A000038 n)

end

end A016292.P12618955590872062273

namespace A016292

/-- `gcd(A016198(n)*A122803(n), A000038(n))` -/
def P12618955590872062273.Spec : Prop :=
  ∀ n, (P12618955590872062273.a n : ℤ) = A016292 n

end A016292

/-!
# A016293: Expansion of 1 / ((1-2*x) * (1-4*x) * (1-11*x)).

The programs for A016293, the canonical program `A016293.P795896110269082573` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016293 has offset 0).

The definition of A016293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016293.P795896110269082573

`15*a(n-1)-44*a(n-2)+2^n` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016293

/-- `15*a(n-1)-44*a(n-2)+2^n` -/
def P795896110269082573.Spec : Prop :=
  ∀ n, P795896110269082573.a n = A016293 n

theorem P795896110269082573.correct : P795896110269082573.Spec := by
  intro n
  simp only [A016293]

end A016293

/-! ## A016293.P8537875929124102481

`11*a(n-1)+A129868(n)+1` with `a(0)=1`
-/

namespace A016293.P8537875929124102481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) + (A129868 n + 1)

end

end A016293.P8537875929124102481

namespace A016293

/-- `11*a(n-1)+A129868(n)+1` -/
def P8537875929124102481.Spec : Prop :=
  ∀ n, P8537875929124102481.a n = A016293 n

end A016293

/-! ## A016293.P9175953920632732852

`a(n-1)+A016158(n)+a(n-1)` with `a(0)=1`
-/

namespace A016293.P9175953920632732852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016158 n + a (n - 1))

end

end A016293.P9175953920632732852

namespace A016293

/-- `a(n-1)+A016158(n)+a(n-1)` -/
def P9175953920632732852.Spec : Prop :=
  ∀ n, P9175953920632732852.a n = A016293 n

end A016293

/-! ## A016293.P2147878143188341136

`lcm(4, a(n-1))+A139740(n+1)/9` with `a(0)=1`
-/

namespace A016293.P2147878143188341136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 4 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + (A139740 (n + 1) : ℚ) / 9

end

end A016293.P2147878143188341136

namespace A016293

/-- `lcm(4, a(n-1))+A139740(n+1)/9` -/
def P2147878143188341136.Spec : Prop :=
  ∀ n, P2147878143188341136.a n = (A016293 n : ℚ)

end A016293

/-! ## A016293.P18435036449974651256

`2*A016158(n)-A016135(n)`
-/

namespace A016293.P18435036449974651256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016158 n - A016135 n

end

end A016293.P18435036449974651256

namespace A016293

/-- `2*A016158(n)-A016135(n)` -/
def P18435036449974651256.Spec : Prop :=
  ∀ n, P18435036449974651256.a n = A016293 n

end A016293

/-! ## A016293.P3129081573548594325

`Δ[(A016226(n)-A016206(n))/2]`
-/

namespace A016293.P3129081573548594325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016226 n - A016206 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016293.P3129081573548594325

namespace A016293

/-- `Δ[(A016226(n)-A016206(n))/2]` -/
def P3129081573548594325.Spec : Prop :=
  ∀ n, P3129081573548594325.a n = (A016293 n : ℚ)

end A016293

/-! ## A016293.P16673205651093531791

`(A016158(n+1)-A016135(n+1))/2`
-/

namespace A016293.P16673205651093531791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016158 (n + 1) - A016135 (n + 1) : ℚ) / 2

end

end A016293.P16673205651093531791

namespace A016293

/-- `(A016158(n+1)-A016135(n+1))/2` -/
def P16673205651093531791.Spec : Prop :=
  ∀ n, P16673205651093531791.a n = (A016293 n : ℚ)

end A016293

/-!
# A016294: Expansion of 1/((1-2x)(1-4x)(1-12x)).

The programs for A016294, the canonical program `A016294.P16893392842862911908` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016294 has offset 0).

The definition of A016294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016294.P16893392842862911908

`16*a(n-1)-48*a(n-2)+2^n` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016294

/-- `16*a(n-1)-48*a(n-2)+2^n` -/
def P16893392842862911908.Spec : Prop :=
  ∀ n, P16893392842862911908.a n = A016294 n

theorem P16893392842862911908.correct : P16893392842862911908.Spec := by
  intro n
  simp only [A016294]

end A016294

/-! ## A016294.P7155703405738426391

`2^n*∑[2^n*∑[3^n]]`
-/

namespace A016294.P7155703405738426391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016294.P7155703405738426391

namespace A016294

/-- `2^n*∑[2^n*∑[3^n]]` -/
def P7155703405738426391.Spec : Prop :=
  ∀ n, (P7155703405738426391.a n : ℤ) = A016294 n

end A016294

/-! ## A016294.P4271124226355728770

`A016159(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016294.P4271124226355728770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016159 n + 2 * a (n - 1)

end

end A016294.P4271124226355728770

namespace A016294

/-- `A016159(n)+2*a(n-1)` -/
def P4271124226355728770.Spec : Prop :=
  ∀ n, P4271124226355728770.a n = A016294 n

end A016294

/-! ## A016294.P9873884162852748041

`A016136(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A016294.P9873884162852748041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016136 n + 4 * a (n - 1)

end

end A016294.P9873884162852748041

namespace A016294

/-- `A016136(n)+4*a(n-1)` -/
def P9873884162852748041.Spec : Prop :=
  ∀ n, P9873884162852748041.a n = A016294 n

end A016294

/-! ## A016294.P13962121791529297916

`lcm(∑[2^n*∑[3^n]], A000079(n))`
-/

namespace A016294.P13962121791529297916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000079 n)

end

end A016294.P13962121791529297916

namespace A016294

/-- `lcm(∑[2^n*∑[3^n]], A000079(n))` -/
def P13962121791529297916.Spec : Prop :=
  ∀ n, (P13962121791529297916.a n : ℤ) = A016294 n

end A016294

/-! ## A016294.P13879431154410233052

`lcm(A000079(n), A016200(n))`
-/

namespace A016294.P13879431154410233052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A016200 n)

end

end A016294.P13879431154410233052

namespace A016294

/-- `lcm(A000079(n), A016200(n))` -/
def P13879431154410233052.Spec : Prop :=
  ∀ n, (P13879431154410233052.a n : ℤ) = A016294 n

end A016294

/-! ## A016294.P17035278428264460239

`lcm(∑[A016129(n)], A122803(n))`
-/

namespace A016294.P17035278428264460239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A122803 n)

end

end A016294.P17035278428264460239

namespace A016294

/-- `lcm(∑[A016129(n)], A122803(n))` -/
def P17035278428264460239.Spec : Prop :=
  ∀ n, (P17035278428264460239.a n : ℤ) = A016294 n

end A016294

/-!
# A016295: Expansion of 1/((1-2x)(1-5x)(1-6x)).

The programs for A016295, the canonical program `A016295.P8125767538681755015` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016295 has offset 0).

The definition of A016295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016295.P8125767538681755015

`7*a(n-1)-10*a(n-2)+6^n` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016295

/-- `7*a(n-1)-10*a(n-2)+6^n` -/
def P8125767538681755015.Spec : Prop :=
  ∀ n, P8125767538681755015.a n = A016295 n

theorem P8125767538681755015.correct : P8125767538681755015.Spec := by
  intro n
  simp only [A016295]

end A016295

/-! ## A016295.P1552397373542060354

`A016129(n+1)-A016127(n+1)`
-/

namespace A016295.P1552397373542060354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 (n + 1) - A016127 (n + 1)

end

end A016295.P1552397373542060354

namespace A016295

/-- `A016129(n+1)-A016127(n+1)` -/
def P1552397373542060354.Spec : Prop :=
  ∀ n, P1552397373542060354.a n = A016295 n

end A016295

/-! ## A016295.P10008391907399708808

`A005062(n+1)+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A016295.P10008391907399708808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005062 (n + 1) + (a (n - 1) + a (n - 1))

end

end A016295.P10008391907399708808

namespace A016295

/-- `A005062(n+1)+a(n-1)+a(n-1)` -/
def P10008391907399708808.Spec : Prop :=
  ∀ n, P10008391907399708808.a n = A016295 n

end A016295

/-! ## A016295.P7597439453954167936

`Δ[A016200(n)-A016198(n)]`
-/

namespace A016295.P7597439453954167936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016200 n - A016198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016295.P7597439453954167936

namespace A016295

/-- `Δ[A016200(n)-A016198(n)]` -/
def P7597439453954167936.Spec : Prop :=
  ∀ n, P7597439453954167936.a n = A016295 n

end A016295

/-! ## A016295.P14819013385640734386

`2*A016296(n)-A016304(n)`
-/

namespace A016295.P14819013385640734386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016296 n - A016304 n

end

end A016295.P14819013385640734386

namespace A016295

/-- `2*A016296(n)-A016304(n)` -/
def P14819013385640734386.Spec : Prop :=
  ∀ n, P14819013385640734386.a n = A016295 n

end A016295

/-! ## A016295.P6026379581968618944

`A019747(n)/A000079(n)`
-/

namespace A016295.P6026379581968618944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019747 n : ℚ) / (A000079 n : ℚ)

end

end A016295.P6026379581968618944

namespace A016295

/-- `A019747(n)/A000079(n)` -/
def P6026379581968618944.Spec : Prop :=
  ∀ n, P6026379581968618944.a n = (A016295 n : ℚ)

end A016295

/-! ## A016295.P15253787089245491064

`A019747(n)/A087207(A000040(n+1))`
-/

namespace A016295.P15253787089245491064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019747 n : ℚ) / (A087207 (A000040 (n + 1)).toNat : ℚ)

end

end A016295.P15253787089245491064

namespace A016295

/-- `A019747(n)/A087207(A000040(n+1))` -/
def P15253787089245491064.Spec : Prop :=
  ∀ n, P15253787089245491064.a n = (A016295 n : ℚ)

end A016295

/-!
# A016296: Expansion of g.f. 1/((1 - 2*x)*(1 - 5*x)*(1 - 7*x)).

The programs for A016296, the canonical program `A016296.P8265631745306333220` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016296 has offset 0).

The definition of A016296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016296.P8265631745306333220

`12*a(n-1)-35*a(n-2)+2^n` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016296

/-- `12*a(n-1)-35*a(n-2)+2^n` -/
def P8265631745306333220.Spec : Prop :=
  ∀ n, P8265631745306333220.a n = A016296 n

theorem P8265631745306333220.correct : P8265631745306333220.Spec := by
  intro n
  simp only [A016296]

end A016296

/-! ## A016296.P14345044139351248304

`A016161(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016296.P14345044139351248304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016161 n + 2 * a (n - 1)

end

end A016296.P14345044139351248304

namespace A016296

/-- `A016161(n)+2*a(n-1)` -/
def P14345044139351248304.Spec : Prop :=
  ∀ n, P14345044139351248304.a n = A016296 n

end A016296

/-! ## A016296.P17343554411307935482

`A016127(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A016296.P17343554411307935482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016127 n + 7 * a (n - 1)

end

end A016296.P17343554411307935482

namespace A016296

/-- `A016127(n)+7*a(n-1)` -/
def P17343554411307935482.Spec : Prop :=
  ∀ n, P17343554411307935482.a n = A016296 n

end A016296

/-! ## A016296.P3038026732225093838

`2*A016276(n)-A016273(n)`
-/

namespace A016296.P3038026732225093838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016276 n - A016273 n

end

end A016296.P3038026732225093838

namespace A016296

/-- `2*A016276(n)-A016273(n)` -/
def P3038026732225093838.Spec : Prop :=
  ∀ n, P3038026732225093838.a n = A016296 n

end A016296

/-! ## A016296.P13148198627563049535

`(A016304(n)+A016295(n))/2`
-/

namespace A016296.P13148198627563049535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016304 n + A016295 n : ℚ) / 2

end

end A016296.P13148198627563049535

namespace A016296

/-- `(A016304(n)+A016295(n))/2` -/
def P13148198627563049535.Spec : Prop :=
  ∀ n, P13148198627563049535.a n = (A016296 n : ℚ)

end A016296

/-! ## A016296.P8112389306241221685

`(A016130(n+1)-A016127(n+1))/2`
-/

namespace A016296.P8112389306241221685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016130 (n + 1) - A016127 (n + 1) : ℚ) / 2

end

end A016296.P8112389306241221685

namespace A016296

/-- `(A016130(n+1)-A016127(n+1))/2` -/
def P8112389306241221685.Spec : Prop :=
  ∀ n, P8112389306241221685.a n = (A016296 n : ℚ)

end A016296

/-! ## A016296.P4309913450564205472

`A016130(n)+A016161(n)-A016127(n)`
-/

namespace A016296.P4309913450564205472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016130 n + (A016161 n - A016127 n)

end

end A016296.P4309913450564205472

namespace A016296

/-- `A016130(n)+A016161(n)-A016127(n)` -/
def P4309913450564205472.Spec : Prop :=
  ∀ n, P4309913450564205472.a n = A016296 n

end A016296

/-! ## A016296.P423142127986617325

`2*A016311(n)-A019928(n)`
-/

namespace A016296.P423142127986617325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016311 n - A019928 n

end

end A016296.P423142127986617325

namespace A016296

/-- `2*A016311(n)-A019928(n)` -/
def P423142127986617325.Spec : Prop :=
  ∀ n, P423142127986617325.a n = A016296 n

end A016296

/-!
# A016297: Expansion of 1/((1-2*x) * (1-5*x) * (1-8*x)).

The programs for A016297, the canonical program `A016297.P9525863879766117420` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016297 has offset 0).

The definition of A016297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016297.P9525863879766117420

`13*a(n-1)-40*a(n-2)+2^n` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016297

/-- `13*a(n-1)-40*a(n-2)+2^n` -/
def P9525863879766117420.Spec : Prop :=
  ∀ n, P9525863879766117420.a n = A016297 n

theorem P9525863879766117420.correct : P9525863879766117420.Spec := by
  intro n
  simp only [A016297]

end A016297

/-! ## A016297.P6563583162643435157

`A016162(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016297.P6563583162643435157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016162 n + 2 * a (n - 1)

end

end A016297.P6563583162643435157

namespace A016297

/-- `A016162(n)+2*a(n-1)` -/
def P6563583162643435157.Spec : Prop :=
  ∀ n, P6563583162643435157.a n = A016297 n

end A016297

/-! ## A016297.P13083266452098978320

`A016127(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A016297.P13083266452098978320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016127 n + 8 * a (n - 1)

end

end A016297.P13083266452098978320

namespace A016297

/-- `A016127(n)+8*a(n-1)` -/
def P13083266452098978320.Spec : Prop :=
  ∀ n, P13083266452098978320.a n = A016297 n

end A016297

/-! ## A016297.P11122211315925478619

`A016311(n)+A019928(n)-A025992(n)`
-/

namespace A016297.P11122211315925478619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016311 n + (A019928 n - A025992 n)

end

end A016297.P11122211315925478619

namespace A016297

/-- `A016311(n)+A019928(n)-A025992(n)` -/
def P11122211315925478619.Spec : Prop :=
  ∀ n, P11122211315925478619.a n = A016297 n

end A016297

/-! ## A016297.P5921837706953503366

`2*A016301(n)-A016318(n)`
-/

namespace A016297.P5921837706953503366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016301 n - A016318 n

end

end A016297.P5921837706953503366

namespace A016297

/-- `2*A016301(n)-A016318(n)` -/
def P5921837706953503366.Spec : Prop :=
  ∀ n, P5921837706953503366.a n = A016297 n

end A016297

/-! ## A016297.P9279301916334371063

`A225468(∑[n+2]+3)`
-/

namespace A016297.P9279301916334371063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225468 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A016297.P9279301916334371063

namespace A016297

/-- `A225468(∑[n+2]+3)` -/
def P9279301916334371063.Spec : Prop :=
  ∀ n, P9279301916334371063.a n = A016297 n

end A016297

/-!
# A016298: Expansion of 1/((1-2x)(1-5x)(1-9x)).

The programs for A016298, the canonical program `A016298.P10093680459180150524` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016298 has offset 0).

The definition of A016298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016298.P10093680459180150524

`14*a(n-1)-45*a(n-2)+2^n` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016298

/-- `14*a(n-1)-45*a(n-2)+2^n` -/
def P10093680459180150524.Spec : Prop :=
  ∀ n, P10093680459180150524.a n = A016298 n

theorem P10093680459180150524.correct : P10093680459180150524.Spec := by
  intro n
  simp only [A016298]

end A016298

/-! ## A016298.P8728774047840229588

`A016133(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A016298.P8728774047840229588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016133 n + 5 * a (n - 1)

end

end A016298.P8728774047840229588

namespace A016298

/-- `A016133(n)+5*a(n-1)` -/
def P8728774047840229588.Spec : Prop :=
  ∀ n, P8728774047840229588.a n = A016298 n

end A016298

/-! ## A016298.P10883475592858155015

`a(n-1)+A016163(n)+a(n-1)` with `a(0)=1`
-/

namespace A016298.P10883475592858155015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016163 n + a (n - 1))

end

end A016298.P10883475592858155015

namespace A016298

/-- `a(n-1)+A016163(n)+a(n-1)` -/
def P10883475592858155015.Spec : Prop :=
  ∀ n, P10883475592858155015.a n = A016298 n

end A016298

/-! ## A016298.P16291497585918282340

`2*A016204(n)-A016198(n)`
-/

namespace A016298.P16291497585918282340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016204 n - A016198 n

end

end A016298.P16291497585918282340

namespace A016298

/-- `2*A016204(n)-A016198(n)` -/
def P16291497585918282340.Spec : Prop :=
  ∀ n, P16291497585918282340.a n = A016298 n

end A016298

/-! ## A016298.P8806220798852100573

`∑[2*A016133(n)-A016127(n)]`
-/

namespace A016298.P8806220798852100573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016133 n - A016127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016298.P8806220798852100573

namespace A016298

/-- `∑[2*A016133(n)-A016127(n)]` -/
def P8806220798852100573.Spec : Prop :=
  ∀ n, P8806220798852100573.a n = A016298 n

end A016298

/-! ## A016298.P7295471838191422690

`2*a(n-1)+A211866(n+1)-A104891(n)` with `a(0)=1`
-/

namespace A016298.P7295471838191422690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (A211866 (n + 1) - A104891 n)

end

end A016298.P7295471838191422690

namespace A016298

/-- `2*a(n-1)+A211866(n+1)-A104891(n)` -/
def P7295471838191422690.Spec : Prop :=
  ∀ n, P7295471838191422690.a n = A016298 n

end A016298

/-! ## A016298.P4293343280923331121

`(A016312(n)+A016296(n))/2`
-/

namespace A016298.P4293343280923331121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016312 n + A016296 n : ℚ) / 2

end

end A016298.P4293343280923331121

namespace A016298

/-- `(A016312(n)+A016296(n))/2` -/
def P4293343280923331121.Spec : Prop :=
  ∀ n, P4293343280923331121.a n = (A016298 n : ℚ)

end A016298

/-!
# A016299: Expansion of 1/((1-2*x)*(1-5*x)*(1-10*x)).

The programs for A016299, the canonical program `A016299.P9978041680828877189` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016299 has offset 0).

The definition of A016299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016299.P9978041680828877189

`15*a(n-1)-50*a(n-2)+2^n` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016299

/-- `15*a(n-1)-50*a(n-2)+2^n` -/
def P9978041680828877189.Spec : Prop :=
  ∀ n, P9978041680828877189.a n = A016299 n

theorem P9978041680828877189.correct : P9978041680828877189.Spec := by
  intro n
  simp only [A016299]

end A016299

/-! ## A016299.P14347094188932393132

`1/6*(2^n-10*5^n+15*10^n)`
-/

namespace A016299.P14347094188932393132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((2 ^ n : ℤ) - (10 * 5 ^ n : ℤ) + (15 * 10 ^ n : ℤ) : ℚ)

end

end A016299.P14347094188932393132

namespace A016299

/-- `1/6*(2^n-10*5^n+15*10^n)` -/
def P14347094188932393132.Spec : Prop :=
  ∀ n, P14347094188932393132.a n = (A016299 n : ℚ)

end A016299

/-! ## A016299.P6315933144902938640

`A016134(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A016299.P6315933144902938640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016134 n + 5 * a (n - 1)

end

end A016299.P6315933144902938640

namespace A016299

/-- `A016134(n)+5*a(n-1)` -/
def P6315933144902938640.Spec : Prop :=
  ∀ n, P6315933144902938640.a n = A016299 n

end A016299

/-! ## A016299.P4665690343236199822

`a(n-1)+A016164(n)+a(n-1)` with `a(0)=1`
-/

namespace A016299.P4665690343236199822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016164 n + a (n - 1))

end

end A016299.P4665690343236199822

namespace A016299

/-- `a(n-1)+A016164(n)+a(n-1)` -/
def P4665690343236199822.Spec : Prop :=
  ∀ n, P4665690343236199822.a n = A016299 n

end A016299

/-! ## A016299.P2865225535210226008

`2*A016134(n)-A016127(n)`
-/

namespace A016299.P2865225535210226008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016134 n - A016127 n

end

end A016299.P2865225535210226008

namespace A016299

/-- `2*A016134(n)-A016127(n)` -/
def P2865225535210226008.Spec : Prop :=
  ∀ n, P2865225535210226008.a n = A016299 n

end A016299

/-! ## A016299.P15252559541354638794

`A016317(n)+A016317(n)-A020346(n)`
-/

namespace A016299.P15252559541354638794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016317 n + (A016317 n - A020346 n)

end

end A016299.P15252559541354638794

namespace A016299

/-- `A016317(n)+A016317(n)-A020346(n)` -/
def P15252559541354638794.Spec : Prop :=
  ∀ n, P15252559541354638794.a n = A016299 n

end A016299

/-! ## A016299.P10721845925196727279

`2*A016317(n)-A020346(n)`
-/

namespace A016299.P10721845925196727279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016317 n - A020346 n

end

end A016299.P10721845925196727279

namespace A016299

/-- `2*A016317(n)-A020346(n)` -/
def P10721845925196727279.Spec : Prop :=
  ∀ n, P10721845925196727279.a n = A016299 n

end A016299

/-! ## A016299.P14402446473288926154

`A016297(n)+A025998(n)-A020346(n)`
-/

namespace A016299.P14402446473288926154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016297 n + (A025998 n - A020346 n)

end

end A016299.P14402446473288926154

namespace A016299

/-- `A016297(n)+A025998(n)-A020346(n)` -/
def P14402446473288926154.Spec : Prop :=
  ∀ n, P14402446473288926154.a n = A016299 n

end A016299

