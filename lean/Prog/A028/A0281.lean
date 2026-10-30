import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C014
import Seq.B000.C020
import Seq.B001.C000
import Seq.B001.C001
import Seq.B002.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C001
import Seq.Opaque.C005

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A028100: Expansion of 1/((1-3x)(1-8x)(1-9x)(1-11x)).

The programs for A028100, the canonical program `A028100.P5347037158339530249` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028100 has offset 0).

The definition of A028100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028100.P5347037158339530249

`(5*11^(n+3)-20*9^(n+3)+2*8^(n+4)-3^(n+3))/240`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028100

/-- `(5*11^(n+3)-20*9^(n+3)+2*8^(n+4)-3^(n+3))/240` -/
def P5347037158339530249.Spec : Prop :=
  ∀ n, P5347037158339530249.a n = (A028100 n : ℚ)

end A028100

/-! ## A028100.P34598439721081334

`Δ[A021694(n)-A021664(n)]`
-/

namespace A028100.P34598439721081334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021694 n - A021664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028100.P34598439721081334

namespace A028100

/-- `Δ[A021694(n)-A021664(n)]` -/
def P34598439721081334.Spec : Prop :=
  ∀ n, P34598439721081334.a n = A028100 n

end A028100

/-! ## A028100.P16510269822658290603

`2*A028069(n)-A028064(n)`
-/

namespace A028100.P16510269822658290603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028069 n - A028064 n

end

end A028100.P16510269822658290603

namespace A028100

/-- `2*A028069(n)-A028064(n)` -/
def P16510269822658290603.Spec : Prop :=
  ∀ n, P16510269822658290603.a n = A028100 n

end A028100

/-! ## A028100.P11812074244715752348

`2*A028091(n)-A028089(n)`
-/

namespace A028100.P11812074244715752348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028091 n - A028089 n

end

end A028100.P11812074244715752348

namespace A028100

/-- `2*A028091(n)-A028089(n)` -/
def P11812074244715752348.Spec : Prop :=
  ∀ n, P11812074244715752348.a n = A028100 n

end A028100

/-! ## A028100.P17501945052321372481

`2*A028094(n)-A028091(n)`
-/

namespace A028100.P17501945052321372481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028094 n - A028091 n

end

end A028100.P17501945052321372481

namespace A028100

/-- `2*A028094(n)-A028091(n)` -/
def P17501945052321372481.Spec : Prop :=
  ∀ n, P17501945052321372481.a n = A028100 n

end A028100

/-! ## A028100.P15169825097248384441

`A028081(n)+A028084(n)-A028079(n)`
-/

namespace A028100.P15169825097248384441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028081 n + (A028084 n - A028079 n)

end

end A028100.P15169825097248384441

namespace A028100

/-- `A028081(n)+A028084(n)-A028079(n)` -/
def P15169825097248384441.Spec : Prop :=
  ∀ n, P15169825097248384441.a n = A028100 n

end A028100

/-! ## A028100.P9817687876668634671

`A028093(n)+A028096(n)-A028091(n)`
-/

namespace A028100.P9817687876668634671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028093 n + (A028096 n - A028091 n)

end

end A028100.P9817687876668634671

namespace A028100

/-- `A028093(n)+A028096(n)-A028091(n)` -/
def P9817687876668634671.Spec : Prop :=
  ∀ n, P9817687876668634671.a n = A028100 n

end A028100

/-!
# A028101: Expansion of 1/((1-3x)(1-8x)(1-9x)(1-12x)).

The programs for A028101, there is no canonical definition to state claims against.
-/

/-! ## A028101.P9688240182588888500

`A020978(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028101.P9688240182588888500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020978 n + 3 * a (n - 1)

end

end A028101.P9688240182588888500

/-! ## A028101.P10470495939321586974

`2*A028082(n)-A028079(n)`
-/

namespace A028101.P10470495939321586974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028082 n - A028079 n

end

end A028101.P10470495939321586974

/-! ## A028101.P5621092610698363861

`2*A028095(n)-A028092(n)`
-/

namespace A028101.P5621092610698363861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028095 n - A028092 n

end

end A028101.P5621092610698363861

/-! ## A028101.P11071126269288044114

`(A028106(n)+A028099(n))/2`
-/

namespace A028101.P11071126269288044114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028106 n + A028099 n : ℚ) / 2

end

end A028101.P11071126269288044114

/-! ## A028101.P6302383071056880299

`2*A028103(n)-A028106(n)`
-/

namespace A028101.P6302383071056880299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028103 n - A028106 n

end

end A028101.P6302383071056880299

/-! ## A028101.P5749056983506177014

`A028080(n)+A028087(n)-A028079(n)`
-/

namespace A028101.P5749056983506177014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028080 n + (A028087 n - A028079 n)

end

end A028101.P5749056983506177014

/-! ## A028101.P18244450961745227257

`A028078(n)+A028092(n)-A028079(n)`
-/

namespace A028101.P18244450961745227257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028078 n + (A028092 n - A028079 n)

end

end A028101.P18244450961745227257

/-! ## A028101.P14387330240493774301

`A028083(n)+A028087(n)-A028080(n)`
-/

namespace A028101.P14387330240493774301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028083 n + (A028087 n - A028080 n)

end

end A028101.P14387330240493774301

/-! ## A028101.P9885875918616687809

`Δ[A021704(n)-A021674(n)]`
-/

namespace A028101.P9885875918616687809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021704 n - A021674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028101.P9885875918616687809

/-!
# A028102: Expansion of 1/((1-3x)(1-8x)(1-10x)(1-11x)).

The programs for A028102, the canonical program `A028102.P11269974999195866855` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028102 has offset 0).

The definition of A028102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028102.P11269974999195866855

`(35*11^(n+3)-6*10^(n+4)+28*8^(n+3)-3^(n+4))/840`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028102

/-- `(35*11^(n+3)-6*10^(n+4)+28*8^(n+3)-3^(n+4))/840` -/
def P11269974999195866855.Spec : Prop :=
  ∀ n, P11269974999195866855.a n = (A028102 n : ℚ)

end A028102

/-! ## A028102.P10774102634408969104

`Δ[A021664(n)-A021644(n)]`
-/

namespace A028102.P10774102634408969104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021664 n - A021644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028102.P10774102634408969104

namespace A028102

/-- `Δ[A021664(n)-A021644(n)]` -/
def P10774102634408969104.Spec : Prop :=
  ∀ n, P10774102634408969104.a n = A028102 n

end A028102

/-! ## A028102.P11991633037056854092

`2*A028071(n)-A028065(n)`
-/

namespace A028102.P11991633037056854092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028071 n - A028065 n

end

end A028102.P11991633037056854092

namespace A028102

/-- `2*A028071(n)-A028065(n)` -/
def P11991633037056854092.Spec : Prop :=
  ∀ n, P11991633037056854092.a n = A028102 n

end A028102

/-! ## A028102.P895972506409496843

`2*A028086(n)-A028081(n)`
-/

namespace A028102.P895972506409496843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028086 n - A028081 n

end

end A028102.P895972506409496843

namespace A028102

/-- `2*A028086(n)-A028081(n)` -/
def P895972506409496843.Spec : Prop :=
  ∀ n, P895972506409496843.a n = A028102 n

end A028102

/-! ## A028102.P11294315449172925149

`2*A028100(n)-A028099(n)`
-/

namespace A028102.P11294315449172925149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028100 n - A028099 n

end

end A028102.P11294315449172925149

namespace A028102

/-- `2*A028100(n)-A028099(n)` -/
def P11294315449172925149.Spec : Prop :=
  ∀ n, P11294315449172925149.a n = A028102 n

end A028102

/-! ## A028102.P12991280616948847413

`A028091(n)+A028096(n)-A028090(n)`
-/

namespace A028102.P12991280616948847413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028091 n + (A028096 n - A028090 n)

end

end A028102.P12991280616948847413

namespace A028102

/-- `A028091(n)+A028096(n)-A028090(n)` -/
def P12991280616948847413.Spec : Prop :=
  ∀ n, P12991280616948847413.a n = A028102 n

end A028102

/-!
# A028103: Expansion of 1/((1-3x)(1-8x)(1-10x)(1-12x)).

The programs for A028103, there is no canonical definition to state claims against.
-/

/-! ## A028103.P3943142233367305736

`a(n-1)+A020980(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A028103.P3943142233367305736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020980 n + 2 * a (n - 1))

end

end A028103.P3943142233367305736

/-! ## A028103.P6352824611423386491

`2*A028051(n)-A028044(n)`
-/

namespace A028103.P6352824611423386491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028051 n - A028044 n

end

end A028103.P6352824611423386491

/-! ## A028103.P10103082496605890661

`2*A028087(n)-A028082(n)`
-/

namespace A028103.P10103082496605890661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028087 n - A028082 n

end

end A028103.P10103082496605890661

/-! ## A028103.P6021699063713166371

`(A028104(n)+A028102(n))/2`
-/

namespace A028103.P6021699063713166371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028104 n + A028102 n : ℚ) / 2

end

end A028103.P6021699063713166371

/-! ## A028103.P6062249173472962840

`(A028106(n)+A028101(n))/2`
-/

namespace A028103.P6062249173472962840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028106 n + A028101 n : ℚ) / 2

end

end A028103.P6062249173472962840

/-! ## A028103.P7395187635296676835

`(A018071(n+1)-A018069(n+1))/2`
-/

namespace A028103.P7395187635296676835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018071 (n + 1) - A018069 (n + 1) : ℚ) / 2

end

end A028103.P7395187635296676835

/-! ## A028103.P16867677463125171896

`3*a(n-1)+A011782(n+1)*A016103(n)` with `a(0)=1`
-/

namespace A028103.P16867677463125171896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A011782 (n + 1) * A016103 n

end

end A028103.P16867677463125171896

/-! ## A028103.P13988694333376196089

`A028050(n)+A028052(n)-A028044(n)`
-/

namespace A028103.P13988694333376196089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028050 n + (A028052 n - A028044 n)

end

end A028103.P13988694333376196089

/-! ## A028103.P4598192799047539177

`A028082(n)+A028087(n)-A028080(n)`
-/

namespace A028103.P4598192799047539177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028082 n + (A028087 n - A028080 n)

end

end A028103.P4598192799047539177

/-! ## A028103.P3988372789108122324

`A028086(n)+A028088(n)-A028082(n)`
-/

namespace A028103.P3988372789108122324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028086 n + (A028088 n - A028082 n)

end

end A028103.P3988372789108122324

/-!
# A028104: Expansion of 1/((1-3x)(1-8x)(1-11x)(1-12x)).

The programs for A028104, the canonical program `A028104.P18052047414520096132` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028104 has offset 0).

The definition of A028104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028104.P18052047414520096132

`(10*12^(n+3)-15*11^(n+3)+6*8^(n+3)-3^(n+3))/360`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028104

/-- `(10*12^(n+3)-15*11^(n+3)+6*8^(n+3)-3^(n+3))/360` -/
def P18052047414520096132.Spec : Prop :=
  ∀ n, P18052047414520096132.a n = (A028104 n : ℚ)

end A028104

/-! ## A028104.P13600298713625163399

`Δ[A021674(n)-A021664(n)]`
-/

namespace A028104.P13600298713625163399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021674 n - A021664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028104.P13600298713625163399

namespace A028104

/-- `Δ[A021674(n)-A021664(n)]` -/
def P13600298713625163399.Spec : Prop :=
  ∀ n, P13600298713625163399.a n = A028104 n

end A028104

/-! ## A028104.P3435532168043183159

`2*A028052(n)-A028045(n)`
-/

namespace A028104.P3435532168043183159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028052 n - A028045 n

end

end A028104.P3435532168043183159

namespace A028104

/-- `2*A028052(n)-A028045(n)` -/
def P3435532168043183159.Spec : Prop :=
  ∀ n, P3435532168043183159.a n = A028104 n

end A028104

/-! ## A028104.P9982660880012546794

`2*A028073(n)-A028067(n)`
-/

namespace A028104.P9982660880012546794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028073 n - A028067 n

end

end A028104.P9982660880012546794

namespace A028104

/-- `2*A028073(n)-A028067(n)` -/
def P9982660880012546794.Spec : Prop :=
  ∀ n, P9982660880012546794.a n = A028104 n

end A028104

/-! ## A028104.P6290800139830704647

`A028092(n)+A028098(n)-A028091(n)`
-/

namespace A028104.P6290800139830704647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028092 n + (A028098 n - A028091 n)

end

end A028104.P6290800139830704647

namespace A028104

/-- `A028092(n)+A028098(n)-A028091(n)` -/
def P6290800139830704647.Spec : Prop :=
  ∀ n, P6290800139830704647.a n = A028104 n

end A028104

/-! ## A028104.P5003584680640269068

`A028100(n)+A028107(n)-A028101(n)`
-/

namespace A028104.P5003584680640269068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028100 n + (A028107 n - A028101 n)

end

end A028104.P5003584680640269068

namespace A028104

/-- `A028100(n)+A028107(n)-A028101(n)` -/
def P5003584680640269068.Spec : Prop :=
  ∀ n, P5003584680640269068.a n = A028104 n

end A028104

/-!
# A028105: Expansion of 1/((1-3x)(1-9x)(1-10x)(1-11x)).

The programs for A028105, the canonical program `A028105.P12333016546658172050` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028105 has offset 0).

The definition of A028105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028105.P12333016546658172050

`(21*11^(n+3)-48*10^(n+3)+28*9^(n+3)-3^(n+3))/336`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028105

/-- `(21*11^(n+3)-48*10^(n+3)+28*9^(n+3)-3^(n+3))/336` -/
def P12333016546658172050.Spec : Prop :=
  ∀ n, P12333016546658172050.a n = (A028105 n : ℚ)

end A028105

/-! ## A028105.P3562711623663324400

`A018206(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028105.P3562711623663324400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018206 n + 9 * a (n - 1)

end

end A028105.P3562711623663324400

namespace A028105

/-- `A018206(n)+9*a(n-1)` -/
def P3562711623663324400.Spec : Prop :=
  ∀ n, P3562711623663324400.a n = A028105 n

end A028105

/-! ## A028105.P1899741575720200996

`Δ[A021694(n)-A021684(n)]`
-/

namespace A028105.P1899741575720200996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021694 n - A021684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028105.P1899741575720200996

namespace A028105

/-- `Δ[A021694(n)-A021684(n)]` -/
def P1899741575720200996.Spec : Prop :=
  ∀ n, P1899741575720200996.a n = A028105 n

end A028105

/-! ## A028105.P16103510332515152615

`2*A028096(n)-A028093(n)`
-/

namespace A028105.P16103510332515152615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028096 n - A028093 n

end

end A028105.P16103510332515152615

namespace A028105

/-- `2*A028096(n)-A028093(n)` -/
def P16103510332515152615.Spec : Prop :=
  ∀ n, P16103510332515152615.a n = A028105 n

end A028105

/-! ## A028105.P4859758601067757119

`A018091(n+1)-A018090(n+1)`
-/

namespace A028105.P4859758601067757119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018091 (n + 1) - A018090 (n + 1)

end

end A028105.P4859758601067757119

namespace A028105

/-- `A018091(n+1)-A018090(n+1)` -/
def P4859758601067757119.Spec : Prop :=
  ∀ n, P4859758601067757119.a n = A028105 n

end A028105

/-! ## A028105.P6356477521960253997

`Δ[A021714(n)-A021694(n)]`
-/

namespace A028105.P6356477521960253997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021714 n - A021694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028105.P6356477521960253997

namespace A028105

/-- `Δ[A021714(n)-A021694(n)]` -/
def P6356477521960253997.Spec : Prop :=
  ∀ n, P6356477521960253997.a n = A028105 n

end A028105

/-! ## A028105.P13129887647676504005

`2*A028106(n)-A028107(n)`
-/

namespace A028105.P13129887647676504005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028106 n - A028107 n

end

end A028105.P13129887647676504005

namespace A028105

/-- `2*A028106(n)-A028107(n)` -/
def P13129887647676504005.Spec : Prop :=
  ∀ n, P13129887647676504005.a n = A028105 n

end A028105

/-! ## A028105.P14870186034400948490

`A028106(n)+A028107(n)-A028108(n)`
-/

namespace A028105.P14870186034400948490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028106 n + (A028107 n - A028108 n)

end

end A028105.P14870186034400948490

namespace A028105

/-- `A028106(n)+A028107(n)-A028108(n)` -/
def P14870186034400948490.Spec : Prop :=
  ∀ n, P14870186034400948490.a n = A028105 n

end A028105

/-!
# A028106: Expansion of 1/((1-3x)(1-9x)(1-10x)(1-12x)).

The programs for A028106, the canonical program `A028106.P16878288037499977813` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028106 has offset 0).

The definition of A028106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028106.P16878288037499977813

`(7*12^(n+3)-27*10^(n+3)+21*9^(n+3)-3^(n+3))/378`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028106

/-- `(7*12^(n+3)-27*10^(n+3)+21*9^(n+3)-3^(n+3))/378` -/
def P16878288037499977813.Spec : Prop :=
  ∀ n, P16878288037499977813.a n = (A028106 n : ℚ)

end A028106

/-! ## A028106.P17008970779910978177

`A018207(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028106.P17008970779910978177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018207 n + 9 * a (n - 1)

end

end A028106.P17008970779910978177

namespace A028106

/-- `A018207(n)+9*a(n-1)` -/
def P17008970779910978177.Spec : Prop :=
  ∀ n, P17008970779910978177.a n = A028106 n

end A028106

/-! ## A028106.P16488487218841394940

`2*A028087(n)-A028083(n)`
-/

namespace A028106.P16488487218841394940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028087 n - A028083 n

end

end A028106.P16488487218841394940

namespace A028106

/-- `2*A028087(n)-A028083(n)` -/
def P16488487218841394940.Spec : Prop :=
  ∀ n, P16488487218841394940.a n = A028106 n

end A028106

/-! ## A028106.P413500313484103779

`2*A028103(n)-A028101(n)`
-/

namespace A028106.P413500313484103779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028103 n - A028101 n

end

end A028106.P413500313484103779

namespace A028106

/-- `2*A028103(n)-A028101(n)` -/
def P413500313484103779.Spec : Prop :=
  ∀ n, P413500313484103779.a n = A028106 n

end A028106

/-! ## A028106.P17161581961257116385

`A028086(n)+A028088(n)-A028083(n)`
-/

namespace A028106.P17161581961257116385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028086 n + (A028088 n - A028083 n)

end

end A028106.P17161581961257116385

namespace A028106

/-- `A028086(n)+A028088(n)-A028083(n)` -/
def P17161581961257116385.Spec : Prop :=
  ∀ n, P17161581961257116385.a n = A028106 n

end A028106

/-! ## A028106.P6610728361070824677

`A028095(n)+A028097(n)-A028093(n)`
-/

namespace A028106.P6610728361070824677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028095 n + (A028097 n - A028093 n)

end

end A028106.P6610728361070824677

namespace A028106

/-- `A028095(n)+A028097(n)-A028093(n)` -/
def P6610728361070824677.Spec : Prop :=
  ∀ n, P6610728361070824677.a n = A028106 n

end A028106

/-! ## A028106.P6068185402738008164

`Δ[A021724(n)-A021704(n)]`
-/

namespace A028106.P6068185402738008164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021724 n - A021704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028106.P6068185402738008164

namespace A028106

/-- `Δ[A021724(n)-A021704(n)]` -/
def P6068185402738008164.Spec : Prop :=
  ∀ n, P6068185402738008164.a n = A028106 n

end A028106

/-! ## A028106.P4417257488931335155

`2*A028107(n)-A028108(n)`
-/

namespace A028106.P4417257488931335155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028107 n - A028108 n

end

end A028106.P4417257488931335155

namespace A028106

/-- `2*A028107(n)-A028108(n)` -/
def P4417257488931335155.Spec : Prop :=
  ∀ n, P4417257488931335155.a n = A028106 n

end A028106

/-!
# A028107: Expansion of 1/((1-3x)(1-9x)(1-11x)(1-12x)).

The programs for A028107, the canonical program `A028107.P6062221600691721788` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028107 has offset 0).

The definition of A028107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028107.P6062221600691721788

`(16*12^(n+3)-27*11^(n+3)+12*9^(n+3)-3^(n+3))/432`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028107

/-- `(16*12^(n+3)-27*11^(n+3)+12*9^(n+3)-3^(n+3))/432` -/
def P6062221600691721788.Spec : Prop :=
  ∀ n, P6062221600691721788.a n = (A028107 n : ℚ)

end A028107

/-! ## A028107.P1763568727459238779

`A020984(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028107.P1763568727459238779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020984 n + 3 * a (n - 1)

end

end A028107.P1763568727459238779

namespace A028107

/-- `A020984(n)+3*a(n-1)` -/
def P1763568727459238779.Spec : Prop :=
  ∀ n, P1763568727459238779.a n = A028107 n

end A028107

/-! ## A028107.P11350534015559914188

`A018208(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028107.P11350534015559914188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018208 n + 9 * a (n - 1)

end

end A028107.P11350534015559914188

namespace A028107

/-- `A018208(n)+9*a(n-1)` -/
def P11350534015559914188.Spec : Prop :=
  ∀ n, P11350534015559914188.a n = A028107 n

end A028107

/-! ## A028107.P10162218335401546706

`Δ[A021704(n)-A021694(n)]`
-/

namespace A028107.P10162218335401546706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021704 n - A021694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028107.P10162218335401546706

namespace A028107

/-- `Δ[A021704(n)-A021694(n)]` -/
def P10162218335401546706.Spec : Prop :=
  ∀ n, P10162218335401546706.a n = A028107 n

end A028107

/-! ## A028107.P9450185995672350082

`2*A028088(n)-A028084(n)`
-/

namespace A028107.P9450185995672350082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028088 n - A028084 n

end

end A028107.P9450185995672350082

namespace A028107

/-- `2*A028088(n)-A028084(n)` -/
def P9450185995672350082.Spec : Prop :=
  ∀ n, P9450185995672350082.a n = A028107 n

end A028107

/-! ## A028107.P17476712875988560635

`2*A028098(n)-A028095(n)`
-/

namespace A028107.P17476712875988560635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028098 n - A028095 n

end

end A028107.P17476712875988560635

namespace A028107

/-- `2*A028098(n)-A028095(n)` -/
def P17476712875988560635.Spec : Prop :=
  ∀ n, P17476712875988560635.a n = A028107 n

end A028107

/-! ## A028107.P17263879880696849832

`2*A028106(n)-A028105(n)`
-/

namespace A028107.P17263879880696849832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028106 n - A028105 n

end

end A028107.P17263879880696849832

namespace A028107

/-- `2*A028106(n)-A028105(n)` -/
def P17263879880696849832.Spec : Prop :=
  ∀ n, P17263879880696849832.a n = A028107 n

end A028107

/-! ## A028107.P15069663519754710248

`A028101(n)+A028104(n)-A028100(n)`
-/

namespace A028107.P15069663519754710248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028101 n + (A028104 n - A028100 n)

end

end A028107.P15069663519754710248

namespace A028107

/-- `A028101(n)+A028104(n)-A028100(n)` -/
def P15069663519754710248.Spec : Prop :=
  ∀ n, P15069663519754710248.a n = A028107 n

end A028107

/-! ## A028107.P4159862212862825963

`A028105(n)+A028108(n)-A028106(n)`
-/

namespace A028107.P4159862212862825963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028105 n + (A028108 n - A028106 n)

end

end A028107.P4159862212862825963

namespace A028107

/-- `A028105(n)+A028108(n)-A028106(n)` -/
def P4159862212862825963.Spec : Prop :=
  ∀ n, P4159862212862825963.a n = A028107 n

end A028107

/-!
# A028108: Expansion of 1/((1-3x)(1-10x)(1-11x)(1-12x)).

The programs for A028108, the canonical program `A028108.P12142508768766585921` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028108 has offset 0).

The definition of A028108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028108.P12142508768766585921

`(28*12^(n+3)-63*11^(n+3)+36*10^(n+3)-3^(n+3))/504`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028108

/-- `(28*12^(n+3)-63*11^(n+3)+36*10^(n+3)-3^(n+3))/504` -/
def P12142508768766585921.Spec : Prop :=
  ∀ n, P12142508768766585921.a n = (A028108 n : ℚ)

end A028108

/-! ## A028108.P9474643729478558265

`Δ[A021724(n)-A021714(n)]`
-/

namespace A028108.P9474643729478558265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021724 n - A021714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028108.P9474643729478558265

namespace A028108

/-- `Δ[A021724(n)-A021714(n)]` -/
def P9474643729478558265.Spec : Prop :=
  ∀ n, P9474643729478558265.a n = A028108 n

end A028108

/-! ## A028108.P14623166885731289582

`Δ[A021734(n)-A021724(n)]`
-/

namespace A028108.P14623166885731289582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021734 n - A021724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028108.P14623166885731289582

namespace A028108

/-- `Δ[A021734(n)-A021724(n)]` -/
def P14623166885731289582.Spec : Prop :=
  ∀ n, P14623166885731289582.a n = A028108 n

end A028108

/-! ## A028108.P7160829391074018468

`2*A028104(n)-A028102(n)`
-/

namespace A028108.P7160829391074018468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028104 n - A028102 n

end

end A028108.P7160829391074018468

namespace A028108

/-- `2*A028104(n)-A028102(n)` -/
def P7160829391074018468.Spec : Prop :=
  ∀ n, P7160829391074018468.a n = A028108 n

end A028108

/-! ## A028108.P11578453558148671456

`2*A028107(n)-A028106(n)`
-/

namespace A028108.P11578453558148671456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028107 n - A028106 n

end

end A028108.P11578453558148671456

namespace A028108

/-- `2*A028107(n)-A028106(n)` -/
def P11578453558148671456.Spec : Prop :=
  ∀ n, P11578453558148671456.a n = A028108 n

end A028108

/-! ## A028108.P11875767747545952602

`Δ[∑[A018207(n)]-A021714(n)]`
-/

namespace A028108.P11875767747545952602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A021714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028108.P11875767747545952602

namespace A028108

/-- `Δ[∑[A018207(n)]-A021714(n)]` -/
def P11875767747545952602.Spec : Prop :=
  ∀ n, P11875767747545952602.a n = A028108 n

end A028108

/-! ## A028108.P8226282818531899044

`Δ[A021724(n)-∑[A018206(n)]]`
-/

namespace A028108.P8226282818531899044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021724 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028108.P8226282818531899044

namespace A028108

/-- `Δ[A021724(n)-∑[A018206(n)]]` -/
def P8226282818531899044.Spec : Prop :=
  ∀ n, P8226282818531899044.a n = A028108 n

end A028108

/-! ## A028108.P370277291505841044

`Δ[∑[A018208(n)]-A021724(n)]`
-/

namespace A028108.P370277291505841044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018208 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A021724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028108.P370277291505841044

namespace A028108

/-- `Δ[∑[A018208(n)]-A021724(n)]` -/
def P370277291505841044.Spec : Prop :=
  ∀ n, P370277291505841044.a n = A028108 n

end A028108

/-! ## A028108.P9341707109802277513

`A018207(n+1)-Δ[A021714(n)]`
-/

namespace A028108.P9341707109802277513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018207 (n + 1) - (f1 (n + 1) - f1 n)

end

end A028108.P9341707109802277513

namespace A028108

/-- `A018207(n+1)-Δ[A021714(n)]` -/
def P9341707109802277513.Spec : Prop :=
  ∀ n, P9341707109802277513.a n = A028108 n

end A028108

/-! ## A028108.P15954979190057440191

`A018208(n+1)-Δ[A021724(n)]`
-/

namespace A028108.P15954979190057440191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018208 (n + 1) - (f1 (n + 1) - f1 n)

end

end A028108.P15954979190057440191

namespace A028108

/-- `A018208(n+1)-Δ[A021724(n)]` -/
def P15954979190057440191.Spec : Prop :=
  ∀ n, P15954979190057440191.a n = A028108 n

end A028108

/-!
# A028110: Expansion of 1/((1-4x)(1-5x)(1-6x)(1-8x)).

The programs for A028110, the canonical program `A028110.P12893175595033221456` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028110 has offset 0).

The definition of A028110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028110.P12893175595033221456

`(8^(n+3)-6^(n+4)+8*5^(n+3)-3*4^(n+3))/24`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028110

/-- `(8^(n+3)-6^(n+4)+8*5^(n+3)-3*4^(n+3))/24` -/
def P12893175595033221456.Spec : Prop :=
  ∀ n, P12893175595033221456.a n = (A028110 n : ℚ)

end A028110

/-! ## A028110.P4567753453671108525

`A018250(n)+3*2*a(n-1)` with `a(0)=1`
-/

namespace A028110.P4567753453671108525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018250 n + 3 * (2 * a (n - 1))

end

end A028110.P4567753453671108525

namespace A028110

/-- `A018250(n)+3*2*a(n-1)` -/
def P4567753453671108525.Spec : Prop :=
  ∀ n, P4567753453671108525.a n = A028110 n

end A028110

/-! ## A028110.P7779017206612118604

`2*A025987(n)-A025960(n)`
-/

namespace A028110.P7779017206612118604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025987 n - A025960 n

end

end A028110.P7779017206612118604

namespace A028110

/-- `2*A025987(n)-A025960(n)` -/
def P7779017206612118604.Spec : Prop :=
  ∀ n, P7779017206612118604.a n = A028110 n

end A028110

/-! ## A028110.P8716529105055558840

`2*A028054(n)-A028033(n)`
-/

namespace A028110.P8716529105055558840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028054 n - A028033 n

end

end A028110.P8716529105055558840

namespace A028110

/-- `2*A028054(n)-A028033(n)` -/
def P8716529105055558840.Spec : Prop :=
  ∀ n, P8716529105055558840.a n = A028110 n

end A028110

/-! ## A028110.P5090983284858328023

`A016290(n+1)-A016295(n+1)`
-/

namespace A028110.P5090983284858328023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 (n + 1) - A016295 (n + 1)

end

end A028110.P5090983284858328023

namespace A028110

/-- `A016290(n+1)-A016295(n+1)` -/
def P5090983284858328023.Spec : Prop :=
  ∀ n, P5090983284858328023.a n = A028110 n

end A028110

/-! ## A028110.P6083892589743351540

`Δ[A021814(n)-A021764(n)]`
-/

namespace A028110.P6083892589743351540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021814 n - A021764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028110.P6083892589743351540

namespace A028110

/-- `Δ[A021814(n)-A021764(n)]` -/
def P6083892589743351540.Spec : Prop :=
  ∀ n, P6083892589743351540.a n = A028110 n

end A028110

/-! ## A028110.P13415665774282913435

`2*A028115(n)-A028130(n)`
-/

namespace A028110.P13415665774282913435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028115 n - A028130 n

end

end A028110.P13415665774282913435

namespace A028110

/-- `2*A028115(n)-A028130(n)` -/
def P13415665774282913435.Spec : Prop :=
  ∀ n, P13415665774282913435.a n = A028110 n

end A028110

/-! ## A028110.P15005083508699884005

`2*A028112(n)-A028121(n)`
-/

namespace A028110.P15005083508699884005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028112 n - A028121 n

end

end A028110.P15005083508699884005

namespace A028110

/-- `2*A028112(n)-A028121(n)` -/
def P15005083508699884005.Spec : Prop :=
  ∀ n, P15005083508699884005.a n = A028110 n

end A028110

/-!
# A028111: Expansion of 1/((1-4x)(1-5x)(1-6x)(1-9x)).

The programs for A028111, the canonical program `A028111.P16915677565496497178` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028111 has offset 0).

The definition of A028111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028111.P16915677565496497178

`(9^(n+3)-10*6^(n+3)+3*5^(n+4)-6*4^(n+3))/60`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028111

/-- `(9^(n+3)-10*6^(n+3)+3*5^(n+4)-6*4^(n+3))/60` -/
def P16915677565496497178.Spec : Prop :=
  ∀ n, P16915677565496497178.a n = (A028111 n : ℚ)

end A028111

/-! ## A028111.P3856006498225152459

`2*A021824(n)-A021744(n)`
-/

namespace A028111.P3856006498225152459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021824 n - A021744 n

end

end A028111.P3856006498225152459

namespace A028111

/-- `2*A021824(n)-A021744(n)` -/
def P3856006498225152459.Spec : Prop :=
  ∀ n, P3856006498225152459.a n = A028111 n

end A028111

/-! ## A028111.P8407753505324189818

`2*A028055(n)-A028034(n)`
-/

namespace A028111.P8407753505324189818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028055 n - A028034 n

end

end A028111.P8407753505324189818

namespace A028111

/-- `2*A028055(n)-A028034(n)` -/
def P8407753505324189818.Spec : Prop :=
  ∀ n, P8407753505324189818.a n = A028111 n

end A028111

/-! ## A028111.P819606685603421314

`A028110(n)+A028135(n)-A028120(n)`
-/

namespace A028111.P819606685603421314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028110 n + (A028135 n - A028120 n)

end

end A028111.P819606685603421314

namespace A028111

/-- `A028110(n)+A028135(n)-A028120(n)` -/
def P819606685603421314.Spec : Prop :=
  ∀ n, P819606685603421314.a n = A028111 n

end A028111

/-! ## A028111.P6761514027635865003

`A028115(n)+A028120(n)-A028131(n)`
-/

namespace A028111.P6761514027635865003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028115 n + (A028120 n - A028131 n)

end

end A028111.P6761514027635865003

namespace A028111

/-- `A028115(n)+A028120(n)-A028131(n)` -/
def P6761514027635865003.Spec : Prop :=
  ∀ n, P6761514027635865003.a n = A028111 n

end A028111

/-! ## A028111.P2748662261051841768

`Δ[A021824(n)-A021772(n)]`
-/

namespace A028111.P2748662261051841768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021824 n - A021772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028111.P2748662261051841768

namespace A028111

/-- `Δ[A021824(n)-A021772(n)]` -/
def P2748662261051841768.Spec : Prop :=
  ∀ n, P2748662261051841768.a n = A028111 n

end A028111

/-!
# A028112: Expansion of 1/((1-4x)(1-5x)(1-6x)(1-10x)).

The programs for A028112, the canonical program `A028112.P4928885988340277800` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028112 has offset 0).

The definition of A028112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028112.P4928885988340277800

`(10^(n+3)-15*6^(n+3)+24*5^(n+3)-10*4^(n+3))/120`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028112

/-- `(10^(n+3)-15*6^(n+3)+24*5^(n+3)-10*4^(n+3))/120` -/
def P4928885988340277800.Spec : Prop :=
  ∀ n, P4928885988340277800.a n = (A028112 n : ℚ)

end A028112

/-! ## A028112.P5625670247989372504

`A021774(n)+A021829(n)-A021744(n)`
-/

namespace A028112.P5625670247989372504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021774 n + (A021829 n - A021744 n)

end

end A028112.P5625670247989372504

namespace A028112

/-- `A021774(n)+A021829(n)-A021744(n)` -/
def P5625670247989372504.Spec : Prop :=
  ∀ n, P5625670247989372504.a n = A028112 n

end A028112

/-! ## A028112.P15701560707312700775

`Δ[A021829(n)-A021774(n)]`
-/

namespace A028112.P15701560707312700775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021829 n - A021774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028112.P15701560707312700775

namespace A028112

/-- `Δ[A021829(n)-A021774(n)]` -/
def P15701560707312700775.Spec : Prop :=
  ∀ n, P15701560707312700775.a n = A028112 n

end A028112

/-! ## A028112.P287321535807079675

`Δ[A022343(n)-A021829(n)]`
-/

namespace A028112.P287321535807079675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022343 n - A021829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028112.P287321535807079675

namespace A028112

/-- `Δ[A022343(n)-A021829(n)]` -/
def P287321535807079675.Spec : Prop :=
  ∀ n, P287321535807079675.a n = A028112 n

end A028112

/-! ## A028112.P8222419046604343189

`2*A028117(n)-A028132(n)`
-/

namespace A028112.P8222419046604343189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028117 n - A028132 n

end

end A028112.P8222419046604343189

namespace A028112

/-- `2*A028117(n)-A028132(n)` -/
def P8222419046604343189.Spec : Prop :=
  ∀ n, P8222419046604343189.a n = A028112 n

end A028112

/-! ## A028112.P11447162769334381248

`Δ[∑[A019839(n)]-A021829(n)]`
-/

namespace A028112.P11447162769334381248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019839 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A021829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028112.P11447162769334381248

namespace A028112

/-- `Δ[∑[A019839(n)]-A021829(n)]` -/
def P11447162769334381248.Spec : Prop :=
  ∀ n, P11447162769334381248.a n = A028112 n

end A028112

/-! ## A028112.P11594179509637816900

`A019839(n+1)-Δ[A021829(n)]`
-/

namespace A028112.P11594179509637816900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019839 (n + 1) - (f1 (n + 1) - f1 n)

end

end A028112.P11594179509637816900

namespace A028112

/-- `A019839(n+1)-Δ[A021829(n)]` -/
def P11594179509637816900.Spec : Prop :=
  ∀ n, P11594179509637816900.a n = A028112 n

end A028112

/-!
# A028113: Expansion of 1/((1-4x)(1-5x)(1-6x)(1-11x)).

The programs for A028113, the canonical program `A028113.P122094551861578072` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028113 has offset 0).

The definition of A028113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028113.P122094551861578072

`(11^(n+3)-21*6^(n+3)+7*5^(n+4)-15*4^(n+3))/210`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028113

/-- `(11^(n+3)-21*6^(n+3)+7*5^(n+4)-15*4^(n+3))/210` -/
def P122094551861578072.Spec : Prop :=
  ∀ n, P122094551861578072.a n = (A028113 n : ℚ)

end A028113

/-! ## A028113.P13021023880502865667

`2*A021784(n)-A021744(n)`
-/

namespace A028113.P13021023880502865667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021784 n - A021744 n

end

end A028113.P13021023880502865667

namespace A028113

/-- `2*A021784(n)-A021744(n)` -/
def P13021023880502865667.Spec : Prop :=
  ∀ n, P13021023880502865667.a n = A028113 n

end A028113

/-! ## A028113.P9687285105929029862

`2*A025990(n)-A025963(n)`
-/

namespace A028113.P9687285105929029862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025990 n - A025963 n

end

end A028113.P9687285105929029862

namespace A028113

/-- `2*A025990(n)-A025963(n)` -/
def P9687285105929029862.Spec : Prop :=
  ∀ n, P9687285105929029862.a n = A028113 n

end A028113

/-! ## A028113.P13145751213820437990

`2*A028057(n)-A028036(n)`
-/

namespace A028113.P13145751213820437990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028057 n - A028036 n

end

end A028113.P13145751213820437990

namespace A028113

/-- `2*A028057(n)-A028036(n)` -/
def P13145751213820437990.Spec : Prop :=
  ∀ n, P13145751213820437990.a n = A028113 n

end A028113

/-! ## A028113.P3758482940926148589

`A025928(n)+A025941(n)-A025930(n)`
-/

namespace A028113.P3758482940926148589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025928 n + (A025941 n - A025930 n)

end

end A028113.P3758482940926148589

namespace A028113

/-- `A025928(n)+A025941(n)-A025930(n)` -/
def P3758482940926148589.Spec : Prop :=
  ∀ n, P3758482940926148589.a n = A028113 n

end A028113

/-! ## A028113.P15533903165298268236

`Δ[A021834(n)-A021784(n)]`
-/

namespace A028113.P15533903165298268236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021834 n - A021784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028113.P15533903165298268236

namespace A028113

/-- `Δ[A021834(n)-A021784(n)]` -/
def P15533903165298268236.Spec : Prop :=
  ∀ n, P15533903165298268236.a n = A028113 n

end A028113

/-! ## A028113.P959554277789881995

`2*A028122(n)-A028172(n)`
-/

namespace A028113.P959554277789881995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028122 n - A028172 n

end

end A028113.P959554277789881995

namespace A028113

/-- `2*A028122(n)-A028172(n)` -/
def P959554277789881995.Spec : Prop :=
  ∀ n, P959554277789881995.a n = A028113 n

end A028113

/-!
# A028114: Expansion of 1/((1-4x)(1-5x)(1-6x)(1-12x)).

The programs for A028114, the canonical program `A028114.P8695699289983412909` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028114 has offset 0).

The definition of A028114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028114.P8695699289983412909

`(12^(n+3)-28*6^(n+3)+48*5^(n+3)-21*4^(n+3))/336`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028114

/-- `(12^(n+3)-28*6^(n+3)+48*5^(n+3)-21*4^(n+3))/336` -/
def P8695699289983412909.Spec : Prop :=
  ∀ n, P8695699289983412909.a n = (A028114 n : ℚ)

end A028114

/-! ## A028114.P11911467678277585368

`A019869(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A028114.P11911467678277585368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019869 n + 4 * a (n - 1)

end

end A028114.P11911467678277585368

namespace A028114

/-- `A019869(n)+4*a(n-1)` -/
def P11911467678277585368.Spec : Prop :=
  ∀ n, P11911467678277585368.a n = A028114 n

end A028114

/-! ## A028114.P11341266140690609645

`A019041(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A028114.P11341266140690609645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019041 n + 6 * a (n - 1)

end

end A028114.P11341266140690609645

namespace A028114

/-- `A019041(n)+6*a(n-1)` -/
def P11341266140690609645.Spec : Prop :=
  ∀ n, P11341266140690609645.a n = A028114 n

end A028114

/-! ## A028114.P18356371786162697511

`A025929(n)+A025936(n)-A025930(n)`
-/

namespace A028114.P18356371786162697511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025929 n + (A025936 n - A025930 n)

end

end A028114.P18356371786162697511

namespace A028114

/-- `A025929(n)+A025936(n)-A025930(n)` -/
def P18356371786162697511.Spec : Prop :=
  ∀ n, P18356371786162697511.a n = A028114 n

end A028114

/-! ## A028114.P311208992812791749

`A025991(n)+A025991(n)-A025964(n)`
-/

namespace A028114.P311208992812791749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025991 n + (A025991 n - A025964 n)

end

end A028114.P311208992812791749

namespace A028114

/-- `A025991(n)+A025991(n)-A025964(n)` -/
def P311208992812791749.Spec : Prop :=
  ∀ n, P311208992812791749.a n = A028114 n

end A028114

/-! ## A028114.P2695004032177813737

`Δ[A021844(n)-A021794(n)]`
-/

namespace A028114.P2695004032177813737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021844 n - A021794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028114.P2695004032177813737

namespace A028114

/-- `Δ[A021844(n)-A021794(n)]` -/
def P2695004032177813737.Spec : Prop :=
  ∀ n, P2695004032177813737.a n = A028114 n

end A028114

/-! ## A028114.P4659032364796282443

`2*A025991(n)-A025964(n)`
-/

namespace A028114.P4659032364796282443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025991 n - A025964 n

end

end A028114.P4659032364796282443

namespace A028114

/-- `2*A025991(n)-A025964(n)` -/
def P4659032364796282443.Spec : Prop :=
  ∀ n, P4659032364796282443.a n = A028114 n

end A028114

/-! ## A028114.P17523014311741126272

`2*A028119(n)-A028134(n)`
-/

namespace A028114.P17523014311741126272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028119 n - A028134 n

end

end A028114.P17523014311741126272

namespace A028114

/-- `2*A028119(n)-A028134(n)` -/
def P17523014311741126272.Spec : Prop :=
  ∀ n, P17523014311741126272.a n = A028114 n

end A028114

/-!
# A028115: Expansion of 1/((1-4x)(1-5x)(1-7x)(1-8x)).

The programs for A028115, the canonical program `A028115.P2225354539681697345` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028115 has offset 0).

The definition of A028115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028115.P2225354539681697345

`(8^(n+3)-2*7^(n+3)+2*5^(n+3)-4^(n+3))/12`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028115

/-- `(8^(n+3)-2*7^(n+3)+2*5^(n+3)-4^(n+3))/12` -/
def P2225354539681697345.Spec : Prop :=
  ∀ n, P2225354539681697345.a n = (A028115 n : ℚ)

end A028115

/-! ## A028115.P7784112575216355198

`Δ[A021764(n)-A021754(n)]`
-/

namespace A028115.P7784112575216355198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021764 n - A021754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028115.P7784112575216355198

namespace A028115

/-- `Δ[A021764(n)-A021754(n)]` -/
def P7784112575216355198.Spec : Prop :=
  ∀ n, P7784112575216355198.a n = A028115 n

end A028115

/-! ## A028115.P17142402605927977604

`2*A028130(n)-A028165(n)`
-/

namespace A028115.P17142402605927977604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028130 n - A028165 n

end

end A028115.P17142402605927977604

namespace A028115

/-- `2*A028130(n)-A028165(n)` -/
def P17142402605927977604.Spec : Prop :=
  ∀ n, P17142402605927977604.a n = A028115 n

end A028115

/-! ## A028115.P1925945067376505944

`A028111(n)+A028131(n)-A028120(n)`
-/

namespace A028115.P1925945067376505944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028111 n + (A028131 n - A028120 n)

end

end A028115.P1925945067376505944

namespace A028115

/-- `A028111(n)+A028131(n)-A028120(n)` -/
def P1925945067376505944.Spec : Prop :=
  ∀ n, P1925945067376505944.a n = A028115 n

end A028115

/-! ## A028115.P12004370778996230669

`2*A028120(n)-A028145(n)`
-/

namespace A028115.P12004370778996230669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028120 n - A028145 n

end

end A028115.P12004370778996230669

namespace A028115

/-- `2*A028120(n)-A028145(n)` -/
def P12004370778996230669.Spec : Prop :=
  ∀ n, P12004370778996230669.a n = A028115 n

end A028115

/-! ## A028115.P11397110121839713615

`2*A028118(n)-A028147(n)`
-/

namespace A028115.P11397110121839713615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028118 n - A028147 n

end

end A028115.P11397110121839713615

namespace A028115

/-- `2*A028118(n)-A028147(n)` -/
def P11397110121839713615.Spec : Prop :=
  ∀ n, P11397110121839713615.a n = A028115 n

end A028115

/-!
# A028116: Expansion of 1 / ((1-4*x)*(1-5*x)*(1-7*x)*(1-9*x)).

The programs for A028116, the canonical program `A028116.P13759368641497660590` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028116 has offset 0).

The definition of A028116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028116.P13759368641497660590

`A018209(n)+9*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028116

/-- `A018209(n)+9*a(n-1)` -/
def P13759368641497660590.Spec : Prop :=
  ∀ n, P13759368641497660590.a n = A028116 n

theorem P13759368641497660590.correct : P13759368641497660590.Spec := by
  intro n
  simp only [A028116]

end A028116

/-! ## A028116.P10033253892915838555

`A019613(n)+10*a(n-1)/2` with `a(0)=1`
-/

namespace A028116.P10033253892915838555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A019613 n : ℚ) + 10 * a (n - 1) / 2

end

end A028116.P10033253892915838555

namespace A028116

/-- `A019613(n)+10*a(n-1)/2` -/
def P10033253892915838555.Spec : Prop :=
  ∀ n, P10033253892915838555.a n = (A028116 n : ℚ)

end A028116

/-! ## A028116.P3293245571407074500

`(A028120(n)+A028115(n))/2`
-/

namespace A028116.P3293245571407074500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028120 n + A028115 n : ℚ) / 2

end

end A028116.P3293245571407074500

namespace A028116

/-- `(A028120(n)+A028115(n))/2` -/
def P3293245571407074500.Spec : Prop :=
  ∀ n, P3293245571407074500.a n = (A028116 n : ℚ)

end A028116

/-! ## A028116.P8538670681651870745

`(A028131(n)+A028111(n))/2`
-/

namespace A028116.P8538670681651870745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028131 n + A028111 n : ℚ) / 2

end

end A028116.P8538670681651870745

namespace A028116

/-- `(A028131(n)+A028111(n))/2` -/
def P8538670681651870745.Spec : Prop :=
  ∀ n, P8538670681651870745.a n = (A028116 n : ℚ)

end A028116

/-! ## A028116.P7864796944349153035

`2*A028131(n)-A028166(n)`
-/

namespace A028116.P7864796944349153035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028131 n - A028166 n

end

end A028116.P7864796944349153035

namespace A028116

/-- `2*A028131(n)-A028166(n)` -/
def P7864796944349153035.Spec : Prop :=
  ∀ n, P7864796944349153035.a n = A028116 n

end A028116

/-! ## A028116.P208487004445069473

`2*A028118(n)-A028125(n)`
-/

namespace A028116.P208487004445069473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028118 n - A028125 n

end

end A028116.P208487004445069473

namespace A028116

/-- `2*A028118(n)-A028125(n)` -/
def P208487004445069473.Spec : Prop :=
  ∀ n, P208487004445069473.a n = A028116 n

end A028116

/-! ## A028116.P12829594703367022265

`A028113(n)+A028133(n)-A028125(n)`
-/

namespace A028116.P12829594703367022265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028113 n + (A028133 n - A028125 n)

end

end A028116.P12829594703367022265

namespace A028116

/-- `A028113(n)+A028133(n)-A028125(n)` -/
def P12829594703367022265.Spec : Prop :=
  ∀ n, P12829594703367022265.a n = A028116 n

end A028116

/-! ## A028116.P8081424800243090004

`A028115(n)+A028147(n)-A028125(n)`
-/

namespace A028116.P8081424800243090004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028115 n + (A028147 n - A028125 n)

end

end A028116.P8081424800243090004

namespace A028116

/-- `A028115(n)+A028147(n)-A028125(n)` -/
def P8081424800243090004.Spec : Prop :=
  ∀ n, P8081424800243090004.a n = A028116 n

end A028116

/-! ## A028116.P16472989462013450834

`A028120(n)+A028125(n)-A028147(n)`
-/

namespace A028116.P16472989462013450834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028120 n + (A028125 n - A028147 n)

end

end A028116.P16472989462013450834

namespace A028116

/-- `A028120(n)+A028125(n)-A028147(n)` -/
def P16472989462013450834.Spec : Prop :=
  ∀ n, P16472989462013450834.a n = A028116 n

end A028116

/-!
# A028117: Expansion of 1/((1-4x)(1-5x)(1-7x)(1-10x)).

The programs for A028117, the canonical program `A028117.P4742836676513773400` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028117 has offset 0).

The definition of A028117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028117.P4742836676513773400

`(10^(n+3)-5*7^(n+3)+9*5^(n+3)-5*4^(n+3))/90`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028117

/-- `(10^(n+3)-5*7^(n+3)+9*5^(n+3)-5*4^(n+3))/90` -/
def P4742836676513773400.Spec : Prop :=
  ∀ n, P4742836676513773400.a n = (A028117 n : ℚ)

end A028117

/-! ## A028117.P13923916374149894846

`2*A028040(n)-A028029(n)`
-/

namespace A028117.P13923916374149894846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028040 n - A028029 n

end

end A028117.P13923916374149894846

namespace A028117

/-- `2*A028040(n)-A028029(n)` -/
def P13923916374149894846.Spec : Prop :=
  ∀ n, P13923916374149894846.a n = A028117 n

end A028117

/-! ## A028117.P16822967126560543862

`2*A028124(n)-A028149(n)`
-/

namespace A028117.P16822967126560543862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028124 n - A028149 n

end

end A028117.P16822967126560543862

namespace A028117

/-- `2*A028124(n)-A028149(n)` -/
def P16822967126560543862.Spec : Prop :=
  ∀ n, P16822967126560543862.a n = A028117 n

end A028117

/-! ## A028117.P13484648303482364310

`2*A028132(n)-A028167(n)`
-/

namespace A028117.P13484648303482364310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028132 n - A028167 n

end

end A028117.P13484648303482364310

namespace A028117

/-- `2*A028132(n)-A028167(n)` -/
def P13484648303482364310.Spec : Prop :=
  ∀ n, P13484648303482364310.a n = A028117 n

end A028117

/-! ## A028117.P8466590364594632229

`A019958(n+1)-A019618(n+1)`
-/

namespace A028117.P8466590364594632229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019958 (n + 1) - A019618 (n + 1)

end

end A028117.P8466590364594632229

namespace A028117

/-- `A019958(n+1)-A019618(n+1)` -/
def P8466590364594632229.Spec : Prop :=
  ∀ n, P8466590364594632229.a n = A028117 n

end A028117

/-!
# A028118: Expansion of 1/((1-4x)(1-5x)(1-7x)(1-11x)).

The programs for A028118, the canonical program `A028118.P15457418953967805429` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028118 has offset 0).

The definition of A028118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028118.P15457418953967805429

`(11^(n+3)-7^(n+4)+14*5^(n+3)-8*4^(n+3))/168`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028118

/-- `(11^(n+3)-7^(n+4)+14*5^(n+3)-8*4^(n+3))/168` -/
def P15457418953967805429.Spec : Prop :=
  ∀ n, P15457418953967805429.a n = (A028118 n : ℚ)

end A028118

/-! ## A028118.P12222796264940792527

`2*A028030(n)-A028026(n)`
-/

namespace A028118.P12222796264940792527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028030 n - A028026 n

end

end A028118.P12222796264940792527

namespace A028118

/-- `2*A028030(n)-A028026(n)` -/
def P12222796264940792527.Spec : Prop :=
  ∀ n, P12222796264940792527.a n = A028118 n

end A028118

/-! ## A028118.P13670557044378950611

`A028041(n)+A028041(n)-A028030(n)`
-/

namespace A028118.P13670557044378950611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028041 n + (A028041 n - A028030 n)

end

end A028118.P13670557044378950611

namespace A028118

/-- `A028041(n)+A028041(n)-A028030(n)` -/
def P13670557044378950611.Spec : Prop :=
  ∀ n, P13670557044378950611.a n = A028118 n

end A028118

/-! ## A028118.P6318270048061746936

`2*A028041(n)-A028030(n)`
-/

namespace A028118.P6318270048061746936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028041 n - A028030 n

end

end A028118.P6318270048061746936

namespace A028118

/-- `2*A028041(n)-A028030(n)` -/
def P6318270048061746936.Spec : Prop :=
  ∀ n, P6318270048061746936.a n = A028118 n

end A028118

/-! ## A028118.P832718319654844860

`2*A028125(n)-A028150(n)`
-/

namespace A028118.P832718319654844860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028125 n - A028150 n

end

end A028118.P832718319654844860

namespace A028118

/-- `2*A028125(n)-A028150(n)` -/
def P832718319654844860.Spec : Prop :=
  ∀ n, P832718319654844860.a n = A028118 n

end A028118

/-! ## A028118.P12852512539872336057

`A028120(n)+A028150(n)-A028147(n)`
-/

namespace A028118.P12852512539872336057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028120 n + (A028150 n - A028147 n)

end

end A028118.P12852512539872336057

namespace A028118

/-- `A028120(n)+A028150(n)-A028147(n)` -/
def P12852512539872336057.Spec : Prop :=
  ∀ n, P12852512539872336057.a n = A028118 n

end A028118

/-!
# A028119: Expansion of 1/((1-4x)(1-5x)(1-7x)(1-12x)).

The programs for A028119, the canonical program `A028119.P9891222467340400343` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028119 has offset 0).

The definition of A028119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028119.P9891222467340400343

`19*a(n-1)-84*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028119

/-- `19*a(n-1)-84*a(n-2)+5^(n+1)-4^(n+1)` -/
def P9891222467340400343.Spec : Prop :=
  ∀ n, P9891222467340400343.a n = A028119 n

theorem P9891222467340400343.correct : P9891222467340400343.Spec := by
  intro n
  simp only [A028119]

end A028119

/-! ## A028119.P15767875244779277275

`A019628(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A028119.P15767875244779277275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019628 n + 5 * a (n - 1)

end

end A028119.P15767875244779277275

namespace A028119

/-- `A019628(n)+5*a(n-1)` -/
def P15767875244779277275.Spec : Prop :=
  ∀ n, P15767875244779277275.a n = A028119 n

end A028119

/-! ## A028119.P6793589122904796282

`A019041(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A028119.P6793589122904796282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019041 n + 7 * a (n - 1)

end

end A028119.P6793589122904796282

namespace A028119

/-- `A019041(n)+7*a(n-1)` -/
def P6793589122904796282.Spec : Prop :=
  ∀ n, P6793589122904796282.a n = A028119 n

end A028119

/-! ## A028119.P3955165820681470188

`2*A022456(n)-A021794(n)`
-/

namespace A028119.P3955165820681470188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022456 n - A021794 n

end

end A028119.P3955165820681470188

namespace A028119

/-- `2*A022456(n)-A021794(n)` -/
def P3955165820681470188.Spec : Prop :=
  ∀ n, P3955165820681470188.a n = A028119 n

end A028119

/-! ## A028119.P16348643596109158024

`2*A025964(n)-A025959(n)`
-/

namespace A028119.P16348643596109158024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025964 n - A025959 n

end

end A028119.P16348643596109158024

namespace A028119

/-- `2*A025964(n)-A025959(n)` -/
def P16348643596109158024.Spec : Prop :=
  ∀ n, P16348643596109158024.a n = A028119 n

end A028119

/-! ## A028119.P6193870732985445300

`2*A028042(n)-A028031(n)`
-/

namespace A028119.P6193870732985445300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028042 n - A028031 n

end

end A028119.P6193870732985445300

namespace A028119

/-- `2*A028042(n)-A028031(n)` -/
def P6193870732985445300.Spec : Prop :=
  ∀ n, P6193870732985445300.a n = A028119 n

end A028119

/-! ## A028119.P1661994622569521401

`2*A028063(n)-A028042(n)`
-/

namespace A028119.P1661994622569521401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028063 n - A028042 n

end

end A028119.P1661994622569521401

namespace A028119

/-- `2*A028063(n)-A028042(n)` -/
def P1661994622569521401.Spec : Prop :=
  ∀ n, P1661994622569521401.a n = A028119 n

end A028119

/-! ## A028119.P7497251989943093687

`(A028134(n)+A028114(n))/2`
-/

namespace A028119.P7497251989943093687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028134 n + A028114 n : ℚ) / 2

end

end A028119.P7497251989943093687

namespace A028119

/-- `(A028134(n)+A028114(n))/2` -/
def P7497251989943093687.Spec : Prop :=
  ∀ n, P7497251989943093687.a n = (A028119 n : ℚ)

end A028119

/-!
# A028120: Expansion of 1/((1-4x)(1-5x)(1-8x)(1-9x)).

The programs for A028120, the canonical program `A028120.P12990248173837776729` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028120 has offset 0).

The definition of A028120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028120.P12990248173837776729

`17*a(n-1)-72*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028120

/-- `17*a(n-1)-72*a(n-2)+5^(n+1)-4^(n+1)` -/
def P12990248173837776729.Spec : Prop :=
  ∀ n, P12990248173837776729.a n = A028120 n

theorem P12990248173837776729.correct : P12990248173837776729.Spec := by
  intro n
  simp only [A028120]

end A028120

/-! ## A028120.P12500530700888605520

`Δ[A021772(n)-A021764(n)]`
-/

namespace A028120.P12500530700888605520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021772 n - A021764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028120.P12500530700888605520

namespace A028120

/-- `Δ[A021772(n)-A021764(n)]` -/
def P12500530700888605520.Spec : Prop :=
  ∀ n, P12500530700888605520.a n = A028120 n

end A028120

/-! ## A028120.P16527245837352063232

`2*A021904(n)-A021764(n)`
-/

namespace A028120.P16527245837352063232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021904 n - A021764 n

end

end A028120.P16527245837352063232

namespace A028120

/-- `2*A021904(n)-A021764(n)` -/
def P16527245837352063232.Spec : Prop :=
  ∀ n, P16527245837352063232.a n = A028120 n

end A028120

/-! ## A028120.P8490402935508231158

`2*A028116(n)-A028115(n)`
-/

namespace A028120.P8490402935508231158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028116 n - A028115 n

end

end A028120.P8490402935508231158

namespace A028120

/-- `2*A028116(n)-A028115(n)` -/
def P8490402935508231158.Spec : Prop :=
  ∀ n, P8490402935508231158.a n = A028120 n

end A028120

/-! ## A028120.P8426446802186873767

`A021904(n)+A022469(n)-A021772(n)`
-/

namespace A028120.P8426446802186873767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021904 n + (A022469 n - A021772 n)

end

end A028120.P8426446802186873767

namespace A028120

/-- `A021904(n)+A022469(n)-A021772(n)` -/
def P8426446802186873767.Spec : Prop :=
  ∀ n, P8426446802186873767.a n = A028120 n

end A028120

/-! ## A028120.P8407970919770393830

`2*A028121(n)-A028124(n)`
-/

namespace A028120.P8407970919770393830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028121 n - A028124 n

end

end A028120.P8407970919770393830

namespace A028120

/-- `2*A028121(n)-A028124(n)` -/
def P8407970919770393830.Spec : Prop :=
  ∀ n, P8407970919770393830.a n = A028120 n

end A028120

/-!
# A028121: Expansion of 1/((1-4x)(1-5x)(1-8x)(1-10x)).

The programs for A028121, the canonical program `A028121.P10038995587172898732` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028121 has offset 0).

The definition of A028121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028121.P10038995587172898732

`18*a(n-1)-80*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028121

/-- `18*a(n-1)-80*a(n-2)+5^(n+1)-4^(n+1)` -/
def P10038995587172898732.Spec : Prop :=
  ∀ n, P10038995587172898732.a n = A028121 n

theorem P10038995587172898732.correct : P10038995587172898732.Spec := by
  intro n
  simp only [A028121]

end A028121

/-! ## A028121.P7033951453161131051

`Δ[A016225(n)-A016233(n)]`
-/

namespace A028121.P7033951453161131051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016225 n - A016233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028121.P7033951453161131051

namespace A028121

/-- `Δ[A016225(n)-A016233(n)]` -/
def P7033951453161131051.Spec : Prop :=
  ∀ n, P7033951453161131051.a n = A028121 n

end A028121

/-! ## A028121.P725067128363784363

`2*A025977(n)-A025962(n)`
-/

namespace A028121.P725067128363784363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025977 n - A025962 n

end

end A028121.P725067128363784363

namespace A028121

/-- `2*A025977(n)-A025962(n)` -/
def P725067128363784363.Spec : Prop :=
  ∀ n, P725067128363784363.a n = A028121 n

end A028121

/-! ## A028121.P15057209587603041422

`2*A028065(n)-A028044(n)`
-/

namespace A028121.P15057209587603041422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028065 n - A028044 n

end

end A028121.P15057209587603041422

namespace A028121

/-- `2*A028065(n)-A028044(n)` -/
def P15057209587603041422.Spec : Prop :=
  ∀ n, P15057209587603041422.a n = A028121 n

end A028121

/-! ## A028121.P9789833990703167367

`2*A028112(n)-A028110(n)`
-/

namespace A028121.P9789833990703167367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028112 n - A028110 n

end

end A028121.P9789833990703167367

namespace A028121

/-- `2*A028112(n)-A028110(n)` -/
def P9789833990703167367.Spec : Prop :=
  ∀ n, P9789833990703167367.a n = A028121 n

end A028121

/-! ## A028121.P4921325671898805103

`(A028124(n)+A028120(n))/2`
-/

namespace A028121.P4921325671898805103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028124 n + A028120 n : ℚ) / 2

end

end A028121.P4921325671898805103

namespace A028121

/-- `(A028124(n)+A028120(n))/2` -/
def P4921325671898805103.Spec : Prop :=
  ∀ n, P4921325671898805103.a n = (A028121 n : ℚ)

end A028121

/-! ## A028121.P11554397240160925082

`A016157(n+1)-A016162(n+1)`
-/

namespace A028121.P11554397240160925082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016157 (n + 1) - A016162 (n + 1)

end

end A028121.P11554397240160925082

namespace A028121

/-- `A016157(n+1)-A016162(n+1)` -/
def P11554397240160925082.Spec : Prop :=
  ∀ n, P11554397240160925082.a n = A028121 n

end A028121

/-!
# A028122: Expansion of 1/((1-4x)(1-5x)(1-8x)(1-11x)).

The programs for A028122, the canonical program `A028122.P13161302490456340507` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028122 has offset 0).

The definition of A028122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028122.P13161302490456340507

`19*a(n-1)-88*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028122

/-- `19*a(n-1)-88*a(n-2)+5^(n+1)-4^(n+1)` -/
def P13161302490456340507.Spec : Prop :=
  ∀ n, P13161302490456340507.a n = A028122 n

theorem P13161302490456340507.correct : P13161302490456340507.Spec := by
  intro n
  simp only [A028122]

end A028122

/-! ## A028122.P16248672118468744535

`A028066(n)+A028066(n)-A028045(n)`
-/

namespace A028122.P16248672118468744535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028066 n + (A028066 n - A028045 n)

end

end A028122.P16248672118468744535

namespace A028122

/-- `A028066(n)+A028066(n)-A028045(n)` -/
def P16248672118468744535.Spec : Prop :=
  ∀ n, P16248672118468744535.a n = A028122 n

end A028122

/-! ## A028122.P16026943346936455833

`2*A028066(n)-A028045(n)`
-/

namespace A028122.P16026943346936455833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028066 n - A028045 n

end

end A028122.P16026943346936455833

namespace A028122

/-- `2*A028066(n)-A028045(n)` -/
def P16026943346936455833.Spec : Prop :=
  ∀ n, P16026943346936455833.a n = A028122 n

end A028122

/-! ## A028122.P11173977870416262303

`(A028172(n)+A028113(n))/2`
-/

namespace A028122.P11173977870416262303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028172 n + A028113 n : ℚ) / 2

end

end A028122.P11173977870416262303

namespace A028122

/-- `(A028172(n)+A028113(n))/2` -/
def P11173977870416262303.Spec : Prop :=
  ∀ n, P11173977870416262303.a n = (A028122 n : ℚ)

end A028122

/-! ## A028122.P11287820164456433925

`2*A028137(n)-A028172(n)`
-/

namespace A028122.P11287820164456433925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028137 n - A028172 n

end

end A028122.P11287820164456433925

namespace A028122

/-- `2*A028137(n)-A028172(n)` -/
def P11287820164456433925.Spec : Prop :=
  ∀ n, P11287820164456433925.a n = A028122 n

end A028122

/-! ## A028122.P11506732407027760526

`A028133(n)+A028147(n)-A028172(n)`
-/

namespace A028122.P11506732407027760526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028133 n + (A028147 n - A028172 n)

end

end A028122.P11506732407027760526

namespace A028122

/-- `A028133(n)+A028147(n)-A028172(n)` -/
def P11506732407027760526.Spec : Prop :=
  ∀ n, P11506732407027760526.a n = A028122 n

end A028122

/-!
# A028123: Expansion of 1/((1-4x)(1-5x)(1-8x)(1-12x)).

The programs for A028123, the canonical program `A028123.P2735845225732327976` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028123 has offset 0).

The definition of A028123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028123.P2735845225732327976

`20*a(n-1)-96*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028123

/-- `20*a(n-1)-96*a(n-2)+5^(n+1)-4^(n+1)` -/
def P2735845225732327976.Spec : Prop :=
  ∀ n, P2735845225732327976.a n = A028123 n

theorem P2735845225732327976.correct : P2735845225732327976.Spec := by
  intro n
  simp only [A028123]

end A028123

/-! ## A028123.P10009211482311264464

`5^(n+3)/21-2*4^n-4*8^(n+1)/3+54*12^n/7`
-/

namespace A028123.P10009211482311264464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 3) : ℚ) / 21 - (2 * 4 ^ n : ℚ) - (4 * 8 ^ (n + 1) : ℚ) / 3 + (54 * 12 ^ n : ℚ) / 7

end

end A028123.P10009211482311264464

namespace A028123

/-- `5^(n+3)/21-2*4^n-4*8^(n+1)/3+54*12^n/7` -/
def P10009211482311264464.Spec : Prop :=
  ∀ n, P10009211482311264464.a n = (A028123 n : ℚ)

theorem P10009211482311264464.correct : P10009211482311264464.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028123, Nat.add_sub_cancel, A028123.P10009211482311264464.a, A028123.P2735845225732327976.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028123, Nat.add_sub_cancel, A028123.P10009211482311264464.a, A028123.P2735845225732327976.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A028123

/-! ## A028123.P6317826047973425262

`(A028128(n)+A028121(n))/2`
-/

namespace A028123.P6317826047973425262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028128 n + A028121 n : ℚ) / 2

end

end A028123.P6317826047973425262

namespace A028123

/-- `(A028128(n)+A028121(n))/2` -/
def P6317826047973425262.Spec : Prop :=
  ∀ n, P6317826047973425262.a n = (A028123 n : ℚ)

end A028123

/-!
# A028124: Expansion of 1/((1-4x)(1-5x)(1-9x)(1-10x)).

The programs for A028124, the canonical program `A028124.P13604593609229359715` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028124 has offset 0).

The definition of A028124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028124.P13604593609229359715

`19*a(n-1)-90*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028124

/-- `19*a(n-1)-90*a(n-2)+5^(n+1)-4^(n+1)` -/
def P13604593609229359715.Spec : Prop :=
  ∀ n, P13604593609229359715.a n = A028124 n

theorem P13604593609229359715.correct : P13604593609229359715.Spec := by
  intro n
  simp only [A028124]

end A028124

/-! ## A028124.P11140854458329025254

`Δ[A021774(n)-A021772(n)]`
-/

namespace A028124.P11140854458329025254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021774 n - A021772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028124.P11140854458329025254

namespace A028124

/-- `Δ[A021774(n)-A021772(n)]` -/
def P11140854458329025254.Spec : Prop :=
  ∀ n, P11140854458329025254.a n = A028124 n

end A028124

/-! ## A028124.P16451971399297604806

`2*A021954(n)-A021774(n)`
-/

namespace A028124.P16451971399297604806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021954 n - A021774 n

end

end A028124.P16451971399297604806

namespace A028124

/-- `2*A021954(n)-A021774(n)` -/
def P16451971399297604806.Spec : Prop :=
  ∀ n, P16451971399297604806.a n = A028124 n

end A028124

/-! ## A028124.P2523280903939774252

`2*A028121(n)-A028120(n)`
-/

namespace A028124.P2523280903939774252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028121 n - A028120 n

end

end A028124.P2523280903939774252

namespace A028124

/-- `2*A028121(n)-A028120(n)` -/
def P2523280903939774252.Spec : Prop :=
  ∀ n, P2523280903939774252.a n = A028124 n

end A028124

/-! ## A028124.P5982054479862229567

`Δ[A022845(n)-A021954(n)]`
-/

namespace A028124.P5982054479862229567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022845 n - A021954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028124.P5982054479862229567

namespace A028124

/-- `Δ[A022845(n)-A021954(n)]` -/
def P5982054479862229567.Spec : Prop :=
  ∀ n, P5982054479862229567.a n = A028124 n

end A028124

/-! ## A028124.P3491743464623054020

`2*A028125(n)-A028127(n)`
-/

namespace A028124.P3491743464623054020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028125 n - A028127 n

end

end A028124.P3491743464623054020

namespace A028124

/-- `2*A028125(n)-A028127(n)` -/
def P3491743464623054020.Spec : Prop :=
  ∀ n, P3491743464623054020.a n = A028124 n

end A028124

/-!
# A028125: Expansion of 1/((1-4x)(1-5x)(1-9x)(1-11x)).

The programs for A028125, the canonical program `A028125.P18353353096466902462` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028125 has offset 0).

The definition of A028125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028125.P18353353096466902462

`20*a(n-1)-99*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028125

/-- `20*a(n-1)-99*a(n-2)+5^(n+1)-4^(n+1)` -/
def P18353353096466902462.Spec : Prop :=
  ∀ n, P18353353096466902462.a n = A028125 n

theorem P18353353096466902462.correct : P18353353096466902462.Spec := by
  intro n
  simp only [A028125]

end A028125

/-! ## A028125.P973496338307036708

`A020499(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A028125.P973496338307036708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020499 n + 4 * a (n - 1)

end

end A028125.P973496338307036708

namespace A028125

/-- `A020499(n)+4*a(n-1)` -/
def P973496338307036708.Spec : Prop :=
  ∀ n, P973496338307036708.a n = A028125 n

end A028125

/-! ## A028125.P7513096474661243522

`2*a(n-1)+A019687(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028125.P7513096474661243522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (A019687 n + 3 * a (n - 1))

end

end A028125.P7513096474661243522

namespace A028125

/-- `2*a(n-1)+A019687(n)+3*a(n-1)` -/
def P7513096474661243522.Spec : Prop :=
  ∀ n, P7513096474661243522.a n = A028125 n

end A028125

/-! ## A028125.P16091815712893268943

`2*A028069(n)-A028048(n)`
-/

namespace A028125.P16091815712893268943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028069 n - A028048 n

end

end A028125.P16091815712893268943

namespace A028125

/-- `2*A028069(n)-A028048(n)` -/
def P16091815712893268943.Spec : Prop :=
  ∀ n, P16091815712893268943.a n = A028125 n

end A028125

/-! ## A028125.P13152047807349963422

`2*A028118(n)-A028116(n)`
-/

namespace A028125.P13152047807349963422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028118 n - A028116 n

end

end A028125.P13152047807349963422

namespace A028125

/-- `2*A028118(n)-A028116(n)` -/
def P13152047807349963422.Spec : Prop :=
  ∀ n, P13152047807349963422.a n = A028125 n

end A028125

/-! ## A028125.P7585631224677507356

`(A028127(n)+A028124(n))/2`
-/

namespace A028125.P7585631224677507356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028127 n + A028124 n : ℚ) / 2

end

end A028125.P7585631224677507356

namespace A028125

/-- `(A028127(n)+A028124(n))/2` -/
def P7585631224677507356.Spec : Prop :=
  ∀ n, P7585631224677507356.a n = (A028125 n : ℚ)

end A028125

/-! ## A028125.P13820880871336246060

`2*A028140(n)-A028175(n)`
-/

namespace A028125.P13820880871336246060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028140 n - A028175 n

end

end A028125.P13820880871336246060

namespace A028125

/-- `2*A028140(n)-A028175(n)` -/
def P13820880871336246060.Spec : Prop :=
  ∀ n, P13820880871336246060.a n = A028125 n

end A028125

/-! ## A028125.P17394310628822622597

`A028145(n)+A028147(n)-A028180(n)`
-/

namespace A028125.P17394310628822622597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028145 n + (A028147 n - A028180 n)

end

end A028125.P17394310628822622597

namespace A028125

/-- `A028145(n)+A028147(n)-A028180(n)` -/
def P17394310628822622597.Spec : Prop :=
  ∀ n, P17394310628822622597.a n = A028125 n

end A028125

/-!
# A028126: Expansion of 1/((1-4x)(1-5x)(1-9x)(1-12x)).

The programs for A028126, the canonical program `A028126.P5384623786314200931` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028126 has offset 0).

The definition of A028126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028126.P5384623786314200931

`21*a(n-1)-108*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028126

/-- `21*a(n-1)-108*a(n-2)+5^(n+1)-4^(n+1)` -/
def P5384623786314200931.Spec : Prop :=
  ∀ n, P5384623786314200931.a n = A028126 n

theorem P5384623786314200931.correct : P5384623786314200931.Spec := by
  intro n
  simp only [A028126]

end A028126

/-! ## A028126.P16070005304899711381

`2*A021974(n)-A021794(n)`
-/

namespace A028126.P16070005304899711381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021974 n - A021794 n

end

end A028126.P16070005304899711381

namespace A028126

/-- `2*A021974(n)-A021794(n)` -/
def P16070005304899711381.Spec : Prop :=
  ∀ n, P16070005304899711381.a n = A028126 n

end A028126

/-! ## A028126.P13482918610756159768

`2*A028070(n)-A028049(n)`
-/

namespace A028126.P13482918610756159768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028070 n - A028049 n

end

end A028126.P13482918610756159768

namespace A028126

/-- `2*A028070(n)-A028049(n)` -/
def P13482918610756159768.Spec : Prop :=
  ∀ n, P13482918610756159768.a n = A028126 n

end A028126

/-! ## A028126.P16796749128888431355

`2*A028114(n)-A028111(n)`
-/

namespace A028126.P16796749128888431355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028114 n - A028111 n

end

end A028126.P16796749128888431355

namespace A028126

/-- `2*A028114(n)-A028111(n)` -/
def P16796749128888431355.Spec : Prop :=
  ∀ n, P16796749128888431355.a n = A028126 n

end A028126

/-! ## A028126.P153733133737457864

`2*A028141(n)-A028176(n)`
-/

namespace A028126.P153733133737457864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028141 n - A028176 n

end

end A028126.P153733133737457864

namespace A028126

/-- `2*A028141(n)-A028176(n)` -/
def P153733133737457864.Spec : Prop :=
  ∀ n, P153733133737457864.a n = A028126 n

end A028126

/-! ## A028126.P16837718068940441306

`A028042(n)+A028063(n)-A028039(n)`
-/

namespace A028126.P16837718068940441306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028042 n + (A028063 n - A028039 n)

end

end A028126.P16837718068940441306

namespace A028126

/-- `A028042(n)+A028063(n)-A028039(n)` -/
def P16837718068940441306.Spec : Prop :=
  ∀ n, P16837718068940441306.a n = A028126 n

end A028126

/-!
# A028127: Expansion of 1/((1-4x)(1-5x)(1-10x)(1-11x)).

The programs for A028127, the canonical program `A028127.P2482063176981550722` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028127 has offset 0).

The definition of A028127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028127.P2482063176981550722

`21*a(n-1)-110*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028127

/-- `21*a(n-1)-110*a(n-2)+5^(n+1)-4^(n+1)` -/
def P2482063176981550722.Spec : Prop :=
  ∀ n, P2482063176981550722.a n = A028127 n

theorem P2482063176981550722.correct : P2482063176981550722.Spec := by
  intro n
  simp only [A028127]

end A028127

/-! ## A028127.P958439096790081901

`Δ[A021784(n)-A021774(n)]`
-/

namespace A028127.P958439096790081901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021784 n - A021774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028127.P958439096790081901

namespace A028127

/-- `Δ[A021784(n)-A021774(n)]` -/
def P958439096790081901.Spec : Prop :=
  ∀ n, P958439096790081901.a n = A028127 n

end A028127

/-! ## A028127.P6846040069818409364

`2*A028071(n)-A028050(n)`
-/

namespace A028127.P6846040069818409364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028071 n - A028050 n

end

end A028127.P6846040069818409364

namespace A028127

/-- `2*A028071(n)-A028050(n)` -/
def P6846040069818409364.Spec : Prop :=
  ∀ n, P6846040069818409364.a n = A028127 n

end A028127

/-! ## A028127.P257749915721100014

`2*A028125(n)-A028124(n)`
-/

namespace A028127.P257749915721100014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028125 n - A028124 n

end

end A028127.P257749915721100014

namespace A028127

/-- `2*A028125(n)-A028124(n)` -/
def P257749915721100014.Spec : Prop :=
  ∀ n, P257749915721100014.a n = A028127 n

end A028127

/-! ## A028127.P14741117027576506260

`2*A028147(n)-A028181(n)`
-/

namespace A028127.P14741117027576506260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028147 n - A028181 n

end

end A028127.P14741117027576506260

namespace A028127

/-- `2*A028147(n)-A028181(n)` -/
def P14741117027576506260.Spec : Prop :=
  ∀ n, P14741117027576506260.a n = A028127 n

end A028127

/-! ## A028127.P13066363520850169936

`A028133(n)+A028202(n)-A028181(n)`
-/

namespace A028127.P13066363520850169936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028133 n + (A028202 n - A028181 n)

end

end A028127.P13066363520850169936

namespace A028127

/-- `A028133(n)+A028202(n)-A028181(n)` -/
def P13066363520850169936.Spec : Prop :=
  ∀ n, P13066363520850169936.a n = A028127 n

end A028127

/-!
# A028128: Expansion of 1/((1-4x)(1-5x)(1-10x)(1-12x)).

The programs for A028128, the canonical program `A028128.P5884926791331286685` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028128 has offset 0).

The definition of A028128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028128.P5884926791331286685

`22*a(n-1)-120*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=31`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028128

/-- `22*a(n-1)-120*a(n-2)+5^(n+1)-4^(n+1)` -/
def P5884926791331286685.Spec : Prop :=
  ∀ n, P5884926791331286685.a n = A028128 n

theorem P5884926791331286685.correct : P5884926791331286685.Spec := by
  intro n
  simp only [A028128]

end A028128

/-! ## A028128.P1051157002931430845

`2*A028072(n)-A028051(n)`
-/

namespace A028128.P1051157002931430845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028072 n - A028051 n

end

end A028128.P1051157002931430845

namespace A028128

/-- `2*A028072(n)-A028051(n)` -/
def P1051157002931430845.Spec : Prop :=
  ∀ n, P1051157002931430845.a n = A028128 n

end A028128

/-! ## A028128.P710008273442800081

`2*A028123(n)-A028121(n)`
-/

namespace A028128.P710008273442800081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028123 n - A028121 n

end

end A028128.P710008273442800081

namespace A028128

/-- `2*A028123(n)-A028121(n)` -/
def P710008273442800081.Spec : Prop :=
  ∀ n, P710008273442800081.a n = A028128 n

end A028128

/-! ## A028128.P16481379077272517289

`(A028129(n)+A028127(n))/2`
-/

namespace A028128.P16481379077272517289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028129 n + A028127 n : ℚ) / 2

end

end A028128.P16481379077272517289

namespace A028128

/-- `(A028129(n)+A028127(n))/2` -/
def P16481379077272517289.Spec : Prop :=
  ∀ n, P16481379077272517289.a n = (A028128 n : ℚ)

end A028128

/-! ## A028128.P13618985423428461461

`A028071(n)+A028073(n)-A028051(n)`
-/

namespace A028128.P13618985423428461461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028071 n + (A028073 n - A028051 n)

end

end A028128.P13618985423428461461

namespace A028128

/-- `A028071(n)+A028073(n)-A028051(n)` -/
def P13618985423428461461.Spec : Prop :=
  ∀ n, P13618985423428461461.a n = A028128 n

end A028128

/-! ## A028128.P10401572580723878393

`2*(A021794(n)+A021944(n)-A021764(n))-A028121(n)`
-/

namespace A028128.P10401572580723878393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A021794 n + (A021944 n - A021764 n)) - A028121 n

end

end A028128.P10401572580723878393

namespace A028128

/-- `2*(A021794(n)+A021944(n)-A021764(n))-A028121(n)` -/
def P10401572580723878393.Spec : Prop :=
  ∀ n, P10401572580723878393.a n = A028128 n

end A028128

/-! ## A028128.P12071893059216477291

`2*(A028065(n)+A028072(n)-A028046(n))-A028121(n)`
-/

namespace A028128.P12071893059216477291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028065 n + (A028072 n - A028046 n)) - A028121 n

end

end A028128.P12071893059216477291

namespace A028128

/-- `2*(A028065(n)+A028072(n)-A028046(n))-A028121(n)` -/
def P12071893059216477291.Spec : Prop :=
  ∀ n, P12071893059216477291.a n = A028128 n

end A028128

/-!
# A028129: Expansion of 1/((1-4x)(1-5x)(1-11x)(1-12x)).

The programs for A028129, the canonical program `A028129.P5882279996072267250` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028129 has offset 0).

The definition of A028129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028129.P5882279996072267250

`23*a(n-1)-132*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028129

/-- `23*a(n-1)-132*a(n-2)+5^(n+1)-4^(n+1)` -/
def P5882279996072267250.Spec : Prop :=
  ∀ n, P5882279996072267250.a n = A028129 n

theorem P5882279996072267250.correct : P5882279996072267250.Spec := by
  intro n
  simp only [A028129]

end A028129

/-! ## A028129.P14695117049472350019

`Δ[A021794(n)-A021784(n)]`
-/

namespace A028129.P14695117049472350019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021794 n - A021784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028129.P14695117049472350019

namespace A028129

/-- `Δ[A021794(n)-A021784(n)]` -/
def P14695117049472350019.Spec : Prop :=
  ∀ n, P14695117049472350019.a n = A028129 n

end A028129

/-! ## A028129.P7833456547854805920

`2*A028073(n)-A028052(n)`
-/

namespace A028129.P7833456547854805920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028073 n - A028052 n

end

end A028129.P7833456547854805920

namespace A028129

/-- `2*A028073(n)-A028052(n)` -/
def P7833456547854805920.Spec : Prop :=
  ∀ n, P7833456547854805920.a n = A028129 n

end A028129

/-! ## A028129.P11538120559929672328

`2*A028128(n)-A028127(n)`
-/

namespace A028129.P11538120559929672328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028128 n - A028127 n

end

end A028129.P11538120559929672328

namespace A028129

/-- `2*A028128(n)-A028127(n)` -/
def P11538120559929672328.Spec : Prop :=
  ∀ n, P11538120559929672328.a n = A028129 n

end A028129

/-! ## A028129.P9444048157869110429

`A019041(n+1)-A019040(n+1)`
-/

namespace A028129.P9444048157869110429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019041 (n + 1) - A019040 (n + 1)

end

end A028129.P9444048157869110429

namespace A028129

/-- `A019041(n+1)-A019040(n+1)` -/
def P9444048157869110429.Spec : Prop :=
  ∀ n, P9444048157869110429.a n = A028129 n

end A028129

/-! ## A028129.P17338982735299013502

`A028052(n)+A028067(n)-A028045(n)`
-/

namespace A028129.P17338982735299013502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028052 n + (A028067 n - A028045 n)

end

end A028129.P17338982735299013502

namespace A028129

/-- `A028052(n)+A028067(n)-A028045(n)` -/
def P17338982735299013502.Spec : Prop :=
  ∀ n, P17338982735299013502.a n = A028129 n

end A028129

/-!
# A028130: Expansion of 1/((1-4x)(1-6x)(1-7x)(1-8x)).

The programs for A028130, the canonical program `A028130.P606229496623466269` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028130 has offset 0).

The definition of A028130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028130.P606229496623466269

`15*a(n-1)-56*a(n-2)-2*4^n+3*6^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028130

/-- `15*a(n-1)-56*a(n-2)-2*4^n+3*6^n` -/
def P606229496623466269.Spec : Prop :=
  ∀ n, P606229496623466269.a n = A028130 n

theorem P606229496623466269.correct : P606229496623466269.Spec := by
  intro n
  simp only [A028130]

end A028130

/-! ## A028130.P6256478353809094975

`A019333(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A028130.P6256478353809094975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019333 n + 7 * a (n - 1)

end

end A028130.P6256478353809094975

namespace A028130

/-- `A019333(n)+7*a(n-1)` -/
def P6256478353809094975.Spec : Prop :=
  ∀ n, P6256478353809094975.a n = A028130 n

end A028130

/-! ## A028130.P9639498965105230310

`Δ[A021814(n)-A021804(n)]`
-/

namespace A028130.P9639498965105230310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021814 n - A021804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028130.P9639498965105230310

namespace A028130

/-- `Δ[A021814(n)-A021804(n)]` -/
def P9639498965105230310.Spec : Prop :=
  ∀ n, P9639498965105230310.a n = A028130 n

end A028130

/-! ## A028130.P17965852816123816895

`Δ[A021854(n)-A021814(n)]`
-/

namespace A028130.P17965852816123816895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021854 n - A021814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028130.P17965852816123816895

namespace A028130

/-- `Δ[A021854(n)-A021814(n)]` -/
def P17965852816123816895.Spec : Prop :=
  ∀ n, P17965852816123816895.a n = A028130 n

end A028130

/-! ## A028130.P4636118152049720581

`2*A028115(n)-A028110(n)`
-/

namespace A028130.P4636118152049720581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028115 n - A028110 n

end

end A028130.P4636118152049720581

namespace A028130

/-- `2*A028115(n)-A028110(n)` -/
def P4636118152049720581.Spec : Prop :=
  ∀ n, P4636118152049720581.a n = A028130 n

end A028130

/-! ## A028130.P9970006057821901817

`2*A028131(n)-A028135(n)`
-/

namespace A028130.P9970006057821901817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028131 n - A028135 n

end

end A028130.P9970006057821901817

namespace A028130

/-- `2*A028131(n)-A028135(n)` -/
def P9970006057821901817.Spec : Prop :=
  ∀ n, P9970006057821901817.a n = A028130 n

end A028130

/-! ## A028130.P9634260568966942046

`2*A028132(n)-A028146(n)`
-/

namespace A028130.P9634260568966942046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028132 n - A028146 n

end

end A028130.P9634260568966942046

namespace A028130

/-- `2*A028132(n)-A028146(n)` -/
def P9634260568966942046.Spec : Prop :=
  ∀ n, P9634260568966942046.a n = A028130 n

end A028130

/-!
# A028131: Expansion of 1/((1-4x)(1-6x)(1-7x)(1-9x)).

The programs for A028131, the canonical program `A028131.P8883410933783450491` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028131 has offset 0).

The definition of A028131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028131.P8883410933783450491

`(9^(n+3)-5*7^(n+3)+5*6^(n+3)-4^(n+3))/30`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028131

/-- `(9^(n+3)-5*7^(n+3)+5*6^(n+3)-4^(n+3))/30` -/
def P8883410933783450491.Spec : Prop :=
  ∀ n, P8883410933783450491.a n = (A028131 n : ℚ)

end A028131

/-! ## A028131.P13265621916233860286

`2*A028039(n)-A028032(n)`
-/

namespace A028131.P13265621916233860286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028039 n - A028032 n

end

end A028131.P13265621916233860286

namespace A028131

/-- `2*A028039(n)-A028032(n)` -/
def P13265621916233860286.Spec : Prop :=
  ∀ n, P13265621916233860286.a n = A028131 n

end A028131

/-! ## A028131.P17065414037459023516

`2*A028116(n)-A028111(n)`
-/

namespace A028131.P17065414037459023516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028116 n - A028111 n

end

end A028131.P17065414037459023516

namespace A028131

/-- `2*A028116(n)-A028111(n)` -/
def P17065414037459023516.Spec : Prop :=
  ∀ n, P17065414037459023516.a n = A028131 n

end A028131

/-! ## A028131.P13042757684375541046

`A028115(n)+A028120(n)-A028111(n)`
-/

namespace A028131.P13042757684375541046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028115 n + (A028120 n - A028111 n)

end

end A028131.P13042757684375541046

namespace A028131

/-- `A028115(n)+A028120(n)-A028111(n)` -/
def P13042757684375541046.Spec : Prop :=
  ∀ n, P13042757684375541046.a n = A028131 n

end A028131

/-! ## A028131.P6454487145485874208

`Δ[A021864(n)-A021824(n)]`
-/

namespace A028131.P6454487145485874208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021864 n - A021824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028131.P6454487145485874208

namespace A028131

/-- `Δ[A021864(n)-A021824(n)]` -/
def P6454487145485874208.Spec : Prop :=
  ∀ n, P6454487145485874208.a n = A028131 n

end A028131

/-! ## A028131.P2155794321201604655

`2*A028139(n)-A028204(n)`
-/

namespace A028131.P2155794321201604655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028139 n - A028204 n

end

end A028131.P2155794321201604655

namespace A028131

/-- `2*A028139(n)-A028204(n)` -/
def P2155794321201604655.Spec : Prop :=
  ∀ n, P2155794321201604655.a n = A028131 n

end A028131

/-!
# A028132: Expansion of 1/((1-4x)(1-6x)(1-7x)(1-10x)).

The programs for A028132, the canonical program `A028132.P12135696164699722933` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028132 has offset 0).

The definition of A028132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028132.P12135696164699722933

`(10^(n+3)-8*7^(n+3)+9*6^(n+3)-2*4^(n+3))/72`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028132

/-- `(10^(n+3)-8*7^(n+3)+9*6^(n+3)-2*4^(n+3))/72` -/
def P12135696164699722933.Spec : Prop :=
  ∀ n, P12135696164699722933.a n = (A028132 n : ℚ)

end A028132

/-! ## A028132.P7057496683750472586

`Δ[A021874(n)-A021829(n)]`
-/

namespace A028132.P7057496683750472586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021874 n - A021829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028132.P7057496683750472586

namespace A028132

/-- `Δ[A021874(n)-A021829(n)]` -/
def P7057496683750472586.Spec : Prop :=
  ∀ n, P7057496683750472586.a n = A028132 n

end A028132

/-! ## A028132.P9452775767636954435

`2*A023951(n)-A021829(n)`
-/

namespace A028132.P9452775767636954435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023951 n - A021829 n

end

end A028132.P9452775767636954435

namespace A028132

/-- `2*A023951(n)-A021829(n)` -/
def P9452775767636954435.Spec : Prop :=
  ∀ n, P9452775767636954435.a n = A028132 n

end A028132

/-! ## A028132.P9994668459496562223

`2*A025973(n)-A025965(n)`
-/

namespace A028132.P9994668459496562223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025973 n - A025965 n

end

end A028132.P9994668459496562223

namespace A028132

/-- `2*A025973(n)-A025965(n)` -/
def P9994668459496562223.Spec : Prop :=
  ∀ n, P9994668459496562223.a n = A028132 n

end A028132

/-! ## A028132.P13577167570492128389

`2*A028117(n)-A028112(n)`
-/

namespace A028132.P13577167570492128389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028117 n - A028112 n

end

end A028132.P13577167570492128389

namespace A028132

/-- `2*A028117(n)-A028112(n)` -/
def P13577167570492128389.Spec : Prop :=
  ∀ n, P13577167570492128389.a n = A028132 n

end A028132

/-! ## A028132.P6244994137015539556

`A021829(n)+A023951(n)-A021804(n)`
-/

namespace A028132.P6244994137015539556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021829 n + (A023951 n - A021804 n)

end

end A028132.P6244994137015539556

namespace A028132

/-- `A021829(n)+A023951(n)-A021804(n)` -/
def P6244994137015539556.Spec : Prop :=
  ∀ n, P6244994137015539556.a n = A028132 n

end A028132

/-! ## A028132.P7089700076378878557

`A028035(n)+A028040(n)-A028032(n)`
-/

namespace A028132.P7089700076378878557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028035 n + (A028040 n - A028032 n)

end

end A028132.P7089700076378878557

namespace A028132

/-- `A028035(n)+A028040(n)-A028032(n)` -/
def P7089700076378878557.Spec : Prop :=
  ∀ n, P7089700076378878557.a n = A028132 n

end A028132

/-! ## A028132.P3317291373588955082

`A028131(n)+A028149(n)-A028139(n)`
-/

namespace A028132.P3317291373588955082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028131 n + (A028149 n - A028139 n)

end

end A028132.P3317291373588955082

namespace A028132

/-- `A028131(n)+A028149(n)-A028139(n)` -/
def P3317291373588955082.Spec : Prop :=
  ∀ n, P3317291373588955082.a n = A028132 n

end A028132

/-! ## A028132.P16450848997336903765

`A028135(n)+A028139(n)-A028146(n)`
-/

namespace A028132.P16450848997336903765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028135 n + (A028139 n - A028146 n)

end

end A028132.P16450848997336903765

namespace A028132

/-- `A028135(n)+A028139(n)-A028146(n)` -/
def P16450848997336903765.Spec : Prop :=
  ∀ n, P16450848997336903765.a n = A028132 n

end A028132

/-!
# A028133: Expansion of 1/((1-4x)(1-6x)(1-7x)(1-11x)).

The programs for A028133, there is no canonical definition to state claims against.
-/

/-! ## A028133.P8325326013198573510

`2*A021884(n)-A021804(n)`
-/

namespace A028133.P8325326013198573510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021884 n - A021804 n

end

end A028133.P8325326013198573510

/-! ## A028133.P12198881180732139085

`2*A028036(n)-A028032(n)`
-/

namespace A028133.P12198881180732139085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028036 n - A028032 n

end

end A028133.P12198881180732139085

/-! ## A028133.P12623375593992825142

`A025969(n)+A025974(n)-A025965(n)`
-/

namespace A028133.P12623375593992825142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025969 n + (A025974 n - A025965 n)

end

end A028133.P12623375593992825142

/-! ## A028133.P15225341250545822836

`A028118(n)+A028118(n)-A028113(n)`
-/

namespace A028133.P15225341250545822836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028118 n + (A028118 n - A028113 n)

end

end A028133.P15225341250545822836

/-! ## A028133.P12821642796349143899

`Δ[A021884(n)-A021834(n)]`
-/

namespace A028133.P12821642796349143899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021884 n - A021834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028133.P12821642796349143899

/-! ## A028133.P9082930530901033873

`2*A028118(n)-A028113(n)`
-/

namespace A028133.P9082930530901033873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028118 n - A028113 n

end

end A028133.P9082930530901033873

/-! ## A028133.P12328370276585941830

`A028115(n)+A028147(n)-A028113(n)`
-/

namespace A028133.P12328370276585941830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028115 n + (A028147 n - A028113 n)

end

end A028133.P12328370276585941830

/-!
# A028134: Expansion of 1/((1-4x)(1-6x)(1-7x)(1-12x)).

The programs for A028134, the canonical program `A028134.P6458629489105547883` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028134 has offset 0).

The definition of A028134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028134.P6458629489105547883

`(12^(n+3)-16*7^(n+3)+20*6^(n+3)-5*4^(n+3))/240`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028134

/-- `(12^(n+3)-16*7^(n+3)+20*6^(n+3)-5*4^(n+3))/240` -/
def P6458629489105547883.Spec : Prop :=
  ∀ n, P6458629489105547883.a n = (A028134 n : ℚ)

end A028134

/-! ## A028134.P6008105190905329495

`A020577(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A028134.P6008105190905329495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020577 n + 4 * a (n - 1)

end

end A028134.P6008105190905329495

namespace A028134

/-- `A020577(n)+4*a(n-1)` -/
def P6008105190905329495.Spec : Prop :=
  ∀ n, P6008105190905329495.a n = A028134 n

end A028134

/-! ## A028134.P2967174054309854558

`Δ[A021894(n)-A021844(n)]`
-/

namespace A028134.P2967174054309854558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021894 n - A021844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028134.P2967174054309854558

namespace A028134

/-- `Δ[A021894(n)-A021844(n)]` -/
def P2967174054309854558.Spec : Prop :=
  ∀ n, P2967174054309854558.a n = A028134 n

end A028134

/-! ## A028134.P5617864751393385514

`2*A025970(n)-A025965(n)`
-/

namespace A028134.P5617864751393385514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025970 n - A025965 n

end

end A028134.P5617864751393385514

namespace A028134

/-- `2*A025970(n)-A025965(n)` -/
def P5617864751393385514.Spec : Prop :=
  ∀ n, P5617864751393385514.a n = A028134 n

end A028134

/-! ## A028134.P12841383251013240267

`2*A028119(n)-A028114(n)`
-/

namespace A028134.P12841383251013240267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028119 n - A028114 n

end

end A028134.P12841383251013240267

namespace A028134

/-- `2*A028119(n)-A028114(n)` -/
def P12841383251013240267.Spec : Prop :=
  ∀ n, P12841383251013240267.a n = A028134 n

end A028134

/-! ## A028134.P2152722325121502376

`2*A028138(n)-A028148(n)`
-/

namespace A028134.P2152722325121502376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028138 n - A028148 n

end

end A028134.P2152722325121502376

namespace A028134

/-- `2*A028138(n)-A028148(n)` -/
def P2152722325121502376.Spec : Prop :=
  ∀ n, P2152722325121502376.a n = A028134 n

end A028134

/-! ## A028134.P15848677957430723128

`A021844(n)+A021894(n)-A021804(n)`
-/

namespace A028134.P15848677957430723128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021844 n + (A021894 n - A021804 n)

end

end A028134.P15848677957430723128

namespace A028134

/-- `A021844(n)+A021894(n)-A021804(n)` -/
def P15848677957430723128.Spec : Prop :=
  ∀ n, P15848677957430723128.a n = A028134 n

end A028134

/-!
# A028135: Expansion of 1/((1-4x)(1-6x)(1-8x)(1-9x)).

The programs for A028135, the canonical program `A028135.P9598602579900787646` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028135 has offset 0).

The definition of A028135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028135.P9598602579900787646

`(6*9^(n+2)-10*8^(n+2)+5*6^(n+2)-4^(n+2))/10`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028135

/-- `(6*9^(n+2)-10*8^(n+2)+5*6^(n+2)-4^(n+2))/10` -/
def P9598602579900787646.Spec : Prop :=
  ∀ n, P9598602579900787646.a n = (A028135 n : ℚ)

end A028135

/-! ## A028135.P2075343786232509415

`2*A028043(n)-A028033(n)`
-/

namespace A028135.P2075343786232509415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028043 n - A028033 n

end

end A028135.P2075343786232509415

namespace A028135

/-- `2*A028043(n)-A028033(n)` -/
def P2075343786232509415.Spec : Prop :=
  ∀ n, P2075343786232509415.a n = A028135 n

end A028135

/-! ## A028135.P2712261981092331026

`2*A028131(n)-A028130(n)`
-/

namespace A028135.P2712261981092331026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028131 n - A028130 n

end

end A028135.P2712261981092331026

namespace A028135

/-- `2*A028131(n)-A028130(n)` -/
def P2712261981092331026.Spec : Prop :=
  ∀ n, P2712261981092331026.a n = A028135 n

end A028135

/-! ## A028135.P11352815223969752353

`A028111(n)+A028120(n)-A028110(n)`
-/

namespace A028135.P11352815223969752353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028111 n + (A028120 n - A028110 n)

end

end A028135.P11352815223969752353

namespace A028135

/-- `A028111(n)+A028120(n)-A028110(n)` -/
def P11352815223969752353.Spec : Prop :=
  ∀ n, P11352815223969752353.a n = A028135 n

end A028135

/-! ## A028135.P13023804505073209792

`Δ[A021824(n)-A021814(n)]`
-/

namespace A028135.P13023804505073209792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021824 n - A021814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028135.P13023804505073209792

namespace A028135

/-- `Δ[A021824(n)-A021814(n)]` -/
def P13023804505073209792.Spec : Prop :=
  ∀ n, P13023804505073209792.a n = A028135 n

end A028135

/-! ## A028135.P369581316187930628

`2*A028139(n)-A028155(n)`
-/

namespace A028135.P369581316187930628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028139 n - A028155 n

end

end A028135.P369581316187930628

namespace A028135

/-- `2*A028139(n)-A028155(n)` -/
def P369581316187930628.Spec : Prop :=
  ∀ n, P369581316187930628.a n = A028135 n

end A028135

/-!
# A028136: Expansion of 1/((1-4x)(1-6x)(1-8x)(1-10x)).

The programs for A028136, there is no canonical definition to state claims against.
-/

/-! ## A028136.P14240300568596893434

`2^n*A025211(n)`
-/

namespace A028136.P14240300568596893434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A025211 n

end

end A028136.P14240300568596893434

/-! ## A028136.P3175490531954140431

`2*A025977(n)-A025966(n)`
-/

namespace A028136.P3175490531954140431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025977 n - A025966 n

end

end A028136.P3175490531954140431

/-! ## A028136.P5570271044955113358

`(A028139(n)+A028135(n))/2`
-/

namespace A028136.P5570271044955113358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028139 n + A028135 n : ℚ) / 2

end

end A028136.P5570271044955113358

/-! ## A028136.P8837854443620638470

`(A028146(n)+A028132(n))/2`
-/

namespace A028136.P8837854443620638470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028146 n + A028132 n : ℚ) / 2

end

end A028136.P8837854443620638470

/-! ## A028136.P4328630302772610289

`A025211(n)*A090888(A000217(n))`
-/

namespace A028136.P4328630302772610289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n * A090888 (A000217 n).toNat

end

end A028136.P4328630302772610289

/-! ## A028136.P17094097478838745364

`2*A025977(n)-A000079(n)*A000453(n+4)`
-/

namespace A028136.P17094097478838745364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025977 n - A000079 n * A000453 (n + 4)

end

end A028136.P17094097478838745364

/-!
# A028137: Expansion of 1/((1-4x)(1-6x)(1-8x)(1-11x)).

The programs for A028137, there is no canonical definition to state claims against.
-/

/-! ## A028137.P18293531321762202050

`2*A021924(n)-A021814(n)`
-/

namespace A028137.P18293531321762202050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021924 n - A021814 n

end

end A028137.P18293531321762202050

/-! ## A028137.P14070368438348155427

`2*A028113(n)-A028110(n)`
-/

namespace A028137.P14070368438348155427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028113 n - A028110 n

end

end A028137.P14070368438348155427

/-! ## A028137.P9528134604308264171

`(A028147(n)+A028133(n))/2`
-/

namespace A028137.P9528134604308264171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028147 n + A028133 n : ℚ) / 2

end

end A028137.P9528134604308264171

/-! ## A028137.P15625432861698273698

`(A028172(n)+A028122(n))/2`
-/

namespace A028137.P15625432861698273698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028172 n + A028122 n : ℚ) / 2

end

end A028137.P15625432861698273698

/-! ## A028137.P5077803409001541084

`A028036(n)+A028045(n)-A028033(n)`
-/

namespace A028137.P5077803409001541084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028036 n + (A028045 n - A028033 n)

end

end A028137.P5077803409001541084

/-!
# A028138: Expansion of 1/((1-4x)(1-6x)(1-8x)(1-12x)).

The programs for A028138, the canonical program `A028138.P1951212680681082061` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028138 has offset 0).

The definition of A028138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028138.P1951212680681082061

`9*12^n-2*8^(n+1)+9*6^n-4^n`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028138

/-- `9*12^n-2*8^(n+1)+9*6^n-4^n` -/
def P1951212680681082061.Spec : Prop :=
  ∀ n, P1951212680681082061.a n = A028138 n

theorem P1951212680681082061.correct : P1951212680681082061.Spec := by
  intro n
  simp only [A028138]

end A028138

/-! ## A028138.P1648255421577784854

`2^n*A025440(n)`
-/

namespace A028138.P1648255421577784854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A025440 n

end

end A028138.P1648255421577784854

namespace A028138

/-- `2^n*A025440(n)` -/
def P1648255421577784854.Spec : Prop :=
  ∀ n, P1648255421577784854.a n = A028138 n

end A028138

/-! ## A028138.P3266270402115404371

`2^n*Δ[A016200(n)-A016208(n)]`
-/

namespace A028138.P3266270402115404371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016200 n - A016208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A028138.P3266270402115404371

namespace A028138

/-- `2^n*Δ[A016200(n)-A016208(n)]` -/
def P3266270402115404371.Spec : Prop :=
  ∀ n, P3266270402115404371.a n = A028138 n

end A028138

/-! ## A028138.P11452097574802166875

`Δ[A021076(n)-A021029(n)]*A000079(n)`
-/

namespace A028138.P11452097574802166875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021076 n - A021029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A028138.P11452097574802166875

namespace A028138

/-- `Δ[A021076(n)-A021029(n)]*A000079(n)` -/
def P11452097574802166875.Spec : Prop :=
  ∀ n, P11452097574802166875.a n = A028138 n

end A028138

/-! ## A028138.P4494620064624449811

`A025440(n)*A025487(A025488(n))`
-/

namespace A028138.P4494620064624449811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025440 n * A025487 (A025488 n).toNat

end

end A028138.P4494620064624449811

namespace A028138

/-- `A025440(n)*A025487(A025488(n))` -/
def P4494620064624449811.Spec : Prop :=
  ∀ n, P4494620064624449811.a n = A028138 n

end A028138

/-!
# A028139: Expansion of 1/((1-4x)(1-6x)(1-9x)(1-10x)).

The programs for A028139, there is no canonical definition to state claims against.
-/

/-! ## A028139.P1677477473708154841

`Δ[A021829(n)-A021824(n)]`
-/

namespace A028139.P1677477473708154841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021829 n - A021824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028139.P1677477473708154841

/-! ## A028139.P16032224800840325604

`2*A028136(n)-A028135(n)`
-/

namespace A028139.P16032224800840325604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028136 n - A028135 n

end

end A028139.P16032224800840325604

/-! ## A028139.P12390180760870527485

`(A028155(n)+A028135(n))/2`
-/

namespace A028139.P12390180760870527485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028155 n + A028135 n : ℚ) / 2

end

end A028139.P12390180760870527485

/-! ## A028139.P11844872458886287218

`(A028174(n)+A028124(n))/2`
-/

namespace A028139.P11844872458886287218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028174 n + A028124 n : ℚ) / 2

end

end A028139.P11844872458886287218

/-! ## A028139.P2449889949299467889

`A028112(n)+A028124(n)-A028111(n)`
-/

namespace A028139.P2449889949299467889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028112 n + (A028124 n - A028111 n)

end

end A028139.P2449889949299467889

/-! ## A028139.P13386597650059889833

`A028131(n)+A028149(n)-A028132(n)`
-/

namespace A028139.P13386597650059889833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028131 n + (A028149 n - A028132 n)

end

end A028139.P13386597650059889833

/-!
# A028140: Expansion of 1/((1-4x)(1-6x)(1-9x)(1-11x)).

The programs for A028140, there is no canonical definition to state claims against.
-/

/-! ## A028140.P7895721627360179928

`A019488(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028140.P7895721627360179928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019488 n + 9 * a (n - 1)

end

end A028140.P7895721627360179928

/-! ## A028140.P9681629589492292546

`2*A021964(n)-A021824(n)`
-/

namespace A028140.P9681629589492292546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021964 n - A021824 n

end

end A028140.P9681629589492292546

/-! ## A028140.P9526615099977581381

`2*A028048(n)-A028036(n)`
-/

namespace A028140.P9526615099977581381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028048 n - A028036 n

end

end A028140.P9526615099977581381

/-! ## A028140.P9729202501913979208

`2*A028133(n)-A028131(n)`
-/

namespace A028140.P9729202501913979208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028133 n - A028131 n

end

end A028140.P9729202501913979208

/-! ## A028140.P8040862681257952194

`(A028142(n)+A028139(n))/2`
-/

namespace A028140.P8040862681257952194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028142 n + A028139 n : ℚ) / 2

end

end A028140.P8040862681257952194

/-! ## A028140.P17627298604129114952

`A021954(n)+A021984(n)-A021824(n)`
-/

namespace A028140.P17627298604129114952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021954 n + (A021984 n - A021824 n)

end

end A028140.P17627298604129114952

/-!
# A028141: Expansion of 1/((1-4x)(1-6x)(1-9x)(1-12x)).

The programs for A028141, there is no canonical definition to state claims against.
-/

/-! ## A028141.P15587956051628096518

`A019490(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028141.P15587956051628096518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019490 n + 9 * a (n - 1)

end

end A028141.P15587956051628096518

/-! ## A028141.P12138381842912955924

`A019443(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A028141.P12138381842912955924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019443 n + 12 * a (n - 1)

end

end A028141.P12138381842912955924

/-! ## A028141.P4580726424023693083

`2*A020594(n)-A019664(n)`
-/

namespace A028141.P4580726424023693083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020594 n - A019664 n

end

end A028141.P4580726424023693083

/-! ## A028141.P16984541587031618236

`(A028176(n)+A028126(n))/2`
-/

namespace A028141.P16984541587031618236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028176 n + A028126 n : ℚ) / 2

end

end A028141.P16984541587031618236

/-! ## A028141.P5955349415911517315

`A020579(n)+A020978(n)-A019664(n)`
-/

namespace A028141.P5955349415911517315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020579 n + (A020978 n - A019664 n)

end

end A028141.P5955349415911517315

/-! ## A028141.P9349671861944081269

`2*A019722(n)-A019664(n)+A020579(n)-A019664(n)`
-/

namespace A028141.P9349671861944081269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019722 n - A019664 n + (A020579 n - A019664 n)

end

end A028141.P9349671861944081269

/-!
# A028142: Expansion of 1/((1-4x)(1-6x)(1-10x)(1-11x)).

The programs for A028142, there is no canonical definition to state claims against.
-/

/-! ## A028142.P7867484741250392573

`Δ[A021834(n)-A021829(n)]`
-/

namespace A028142.P7867484741250392573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021834 n - A021829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028142.P7867484741250392573

/-! ## A028142.P12622547431691059990

`2*A021984(n)-A021829(n)`
-/

namespace A028142.P12622547431691059990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021984 n - A021829 n

end

end A028142.P12622547431691059990

/-! ## A028142.P7249799041794093629

`2*A028140(n)-A028139(n)`
-/

namespace A028142.P7249799041794093629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028140 n - A028139 n

end

end A028142.P7249799041794093629

/-! ## A028142.P12503154222600264647

`A028113(n)+A028127(n)-A028112(n)`
-/

namespace A028142.P12503154222600264647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028113 n + (A028127 n - A028112 n)

end

end A028142.P12503154222600264647

/-! ## A028142.P18183090576250127383

`2*A028143(n)-A028144(n)`
-/

namespace A028142.P18183090576250127383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028143 n - A028144 n

end

end A028142.P18183090576250127383

/-!
# A028143: Expansion of 1/((1-4x)(1-6x)(1-10x)(1-12x)).

The programs for A028143, the canonical program `A028143.P17639721856656403742` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028143 has offset 0).

The definition of A028143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028143.P17639721856656403742

`(108*12^n-125*10^n+27*6^n-4*4^n)/6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028143

/-- `(108*12^n-125*10^n+27*6^n-4*4^n)/6` -/
def P17639721856656403742.Spec : Prop :=
  ∀ n, P17639721856656403742.a n = (A028143 n : ℚ)

end A028143

/-! ## A028143.P6670243580373800176

`2^n*A025930(n)`
-/

namespace A028143.P6670243580373800176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A025930 n

end

end A028143.P6670243580373800176

namespace A028143

/-- `2^n*A025930(n)` -/
def P6670243580373800176.Spec : Prop :=
  ∀ n, P6670243580373800176.a n = A028143 n

end A028143

/-! ## A028143.P9311855182059363143

`abs(A025930(n)*A120617(n))`
-/

namespace A028143.P9311855182059363143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A025930 n * A120617 n|

end

end A028143.P9311855182059363143

namespace A028143

/-- `abs(A025930(n)*A120617(n))` -/
def P9311855182059363143.Spec : Prop :=
  ∀ n, P9311855182059363143.a n = A028143 n

end A028143

/-! ## A028143.P3161066387311313762

`2*A028138(n)-A028136(n)`
-/

namespace A028143.P3161066387311313762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028138 n - A028136 n

end

end A028143.P3161066387311313762

namespace A028143

/-- `2*A028138(n)-A028136(n)` -/
def P3161066387311313762.Spec : Prop :=
  ∀ n, P3161066387311313762.a n = A028143 n

end A028143

/-! ## A028143.P4988284334530525272

`A025930(n)*A077957(2*n)`
-/

namespace A028143.P4988284334530525272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025930 n * A077957 (2 * n)

end

end A028143.P4988284334530525272

namespace A028143

/-- `A025930(n)*A077957(2*n)` -/
def P4988284334530525272.Spec : Prop :=
  ∀ n, P4988284334530525272.a n = A028143 n

end A028143

/-! ## A028143.P18400022186140478523

`A025930(n)*A329605(A008578(n+1))`
-/

namespace A028143.P18400022186140478523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025930 n * A329605 (A008578 (n + 1)).toNat

end

end A028143.P18400022186140478523

namespace A028143

/-- `A025930(n)*A329605(A008578(n+1))` -/
def P18400022186140478523.Spec : Prop :=
  ∀ n, P18400022186140478523.a n = A028143 n

end A028143

/-!
# A028144: Expansion of 1/((1-4x)(1-6x)(1-11x)(1-12x)).

The programs for A028144, there is no canonical definition to state claims against.
-/

/-! ## A028144.P6660331094640559812

`A019752(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A028144.P6660331094640559812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019752 n + 6 * a (n - 1)

end

end A028144.P6660331094640559812

/-! ## A028144.P16039251864138625423

`A019490(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A028144.P16039251864138625423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019490 n + 11 * a (n - 1)

end

end A028144.P16039251864138625423

/-! ## A028144.P7921792700007819281

`Δ[A021844(n)-A021834(n)]`
-/

namespace A028144.P7921792700007819281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021844 n - A021834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028144.P7921792700007819281

/-! ## A028144.P16411358065711747811

`2*A022000(n)-A021844(n)`
-/

namespace A028144.P16411358065711747811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022000 n - A021844 n

end

end A028144.P16411358065711747811

/-! ## A028144.P9403192075741365827

`2*A028143(n)-A028142(n)`
-/

namespace A028144.P9403192075741365827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028143 n - A028142 n

end

end A028144.P9403192075741365827

/-! ## A028144.P10813003819696045565

`A028114(n)+A028129(n)-A028113(n)`
-/

namespace A028144.P10813003819696045565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028114 n + (A028129 n - A028113 n)

end

end A028144.P10813003819696045565

/-! ## A028144.P2299265244122192911

`A028133(n)+A028154(n)-A028134(n)`
-/

namespace A028144.P2299265244122192911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028133 n + (A028154 n - A028134 n)

end

end A028144.P2299265244122192911

/-!
# A028145: Expansion of 1/((1-4x)(1-7x)(1-8x)(1-9x)).

The programs for A028145, the canonical program `A028145.P12315979576003627854` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028145 has offset 0).

The definition of A028145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028145.P12315979576003627854

`17*a(n-1)-72*a(n-2)+(7^(n+1)-4^(n+1))/3` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028145

/-- `17*a(n-1)-72*a(n-2)+(7^(n+1)-4^(n+1))/3` -/
def P12315979576003627854.Spec : Prop :=
  ∀ n, P12315979576003627854.a n = (A028145 n : ℚ)

end A028145

/-! ## A028145.P18053245417760812206

`Δ[A021864(n)-A021854(n)]`
-/

namespace A028145.P18053245417760812206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021864 n - A021854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028145.P18053245417760812206

namespace A028145

/-- `Δ[A021864(n)-A021854(n)]` -/
def P18053245417760812206.Spec : Prop :=
  ∀ n, P18053245417760812206.a n = A028145 n

end A028145

/-! ## A028145.P59664932146709474

`Δ[A021904(n)-A021864(n)]`
-/

namespace A028145.P59664932146709474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021904 n - A021864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028145.P59664932146709474

namespace A028145

/-- `Δ[A021904(n)-A021864(n)]` -/
def P59664932146709474.Spec : Prop :=
  ∀ n, P59664932146709474.a n = A028145 n

end A028145

/-! ## A028145.P6522299185717979205

`2*A028120(n)-A028115(n)`
-/

namespace A028145.P6522299185717979205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028120 n - A028115 n

end

end A028145.P6522299185717979205

namespace A028145

/-- `2*A028120(n)-A028115(n)` -/
def P6522299185717979205.Spec : Prop :=
  ∀ n, P6522299185717979205.a n = A028145 n

end A028145

/-! ## A028145.P7972183132764427815

`2*A028135(n)-A028131(n)`
-/

namespace A028145.P7972183132764427815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028135 n - A028131 n

end

end A028145.P7972183132764427815

namespace A028145

/-- `2*A028135(n)-A028131(n)` -/
def P7972183132764427815.Spec : Prop :=
  ∀ n, P7972183132764427815.a n = A028145 n

end A028145

/-! ## A028145.P1393604479896447996

`A019664(n+1)-A019613(n+1)`
-/

namespace A028145.P1393604479896447996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019664 (n + 1) - A019613 (n + 1)

end

end A028145.P1393604479896447996

namespace A028145

/-- `A019664(n+1)-A019613(n+1)` -/
def P1393604479896447996.Spec : Prop :=
  ∀ n, P1393604479896447996.a n = A028145 n

end A028145

/-! ## A028145.P14531624065099805776

`2*A028146(n)-A028149(n)`
-/

namespace A028145.P14531624065099805776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028146 n - A028149 n

end

end A028145.P14531624065099805776

namespace A028145

/-- `2*A028146(n)-A028149(n)` -/
def P14531624065099805776.Spec : Prop :=
  ∀ n, P14531624065099805776.a n = A028145 n

end A028145

/-! ## A028145.P1349544493897453768

`2*A028147(n)-A028156(n)`
-/

namespace A028145.P1349544493897453768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028147 n - A028156 n

end

end A028145.P1349544493897453768

namespace A028145

/-- `2*A028147(n)-A028156(n)` -/
def P1349544493897453768.Spec : Prop :=
  ∀ n, P1349544493897453768.a n = A028145 n

end A028145

/-!
# A028146: Expansion of 1/((1-4x)(1-7x)(1-8x)(1-10x)).

The programs for A028146, the canonical program `A028146.P6211314778944352689` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028146 has offset 0).

The definition of A028146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028146.P6211314778944352689

`(2*10^(n+3)-9*8^(n+3)+8*7^(n+3)-4^(n+3))/72`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028146

/-- `(2*10^(n+3)-9*8^(n+3)+8*7^(n+3)-4^(n+3))/72` -/
def P6211314778944352689.Spec : Prop :=
  ∀ n, P6211314778944352689.a n = (A028146 n : ℚ)

end A028146

/-! ## A028146.P13111379249788225688

`A020838(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A028146.P13111379249788225688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020838 n + 4 * a (n - 1)

end

end A028146.P13111379249788225688

namespace A028146

/-- `A020838(n)+4*a(n-1)` -/
def P13111379249788225688.Spec : Prop :=
  ∀ n, P13111379249788225688.a n = A028146 n

end A028146

/-! ## A028146.P6131918040997521078

`A019618(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A028146.P6131918040997521078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019618 n + 8 * a (n - 1)

end

end A028146.P6131918040997521078

namespace A028146

/-- `A019618(n)+8*a(n-1)` -/
def P6131918040997521078.Spec : Prop :=
  ∀ n, P6131918040997521078.a n = A028146 n

end A028146

/-! ## A028146.P6980455883488544639

`Δ[A021914(n)-A021874(n)]`
-/

namespace A028146.P6980455883488544639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021914 n - A021874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028146.P6980455883488544639

namespace A028146

/-- `Δ[A021914(n)-A021874(n)]` -/
def P6980455883488544639.Spec : Prop :=
  ∀ n, P6980455883488544639.a n = A028146 n

end A028146

/-! ## A028146.P3986401256389465168

`2*A024438(n)-A021914(n)`
-/

namespace A028146.P3986401256389465168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024438 n - A021914 n

end

end A028146.P3986401256389465168

namespace A028146

/-- `2*A024438(n)-A021914(n)` -/
def P3986401256389465168.Spec : Prop :=
  ∀ n, P3986401256389465168.a n = A028146 n

end A028146

/-! ## A028146.P3338997024378761755

`2*A028132(n)-A028130(n)`
-/

namespace A028146.P3338997024378761755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028132 n - A028130 n

end

end A028146.P3338997024378761755

namespace A028146

/-- `2*A028132(n)-A028130(n)` -/
def P3338997024378761755.Spec : Prop :=
  ∀ n, P3338997024378761755.a n = A028146 n

end A028146

/-! ## A028146.P5882957888792575435

`2*A028136(n)-A028132(n)`
-/

namespace A028146.P5882957888792575435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028136 n - A028132 n

end

end A028146.P5882957888792575435

namespace A028146

/-- `2*A028136(n)-A028132(n)` -/
def P5882957888792575435.Spec : Prop :=
  ∀ n, P5882957888792575435.a n = A028146 n

end A028146

/-! ## A028146.P16606467942198007918

`A028149(n)+A028149(n)-A028155(n)`
-/

namespace A028146.P16606467942198007918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028149 n + (A028149 n - A028155 n)

end

end A028146.P16606467942198007918

namespace A028146

/-- `A028149(n)+A028149(n)-A028155(n)` -/
def P16606467942198007918.Spec : Prop :=
  ∀ n, P16606467942198007918.a n = A028146 n

end A028146

/-! ## A028146.P10839926448992145436

`2*A028149(n)-A028155(n)`
-/

namespace A028146.P10839926448992145436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028149 n - A028155 n

end

end A028146.P10839926448992145436

namespace A028146

/-- `2*A028149(n)-A028155(n)` -/
def P10839926448992145436.Spec : Prop :=
  ∀ n, P10839926448992145436.a n = A028146 n

end A028146

/-!
# A028147: Expansion of 1/((1-4x)(1-7x)(1-8x)(1-11x)).

The programs for A028147, the canonical program `A028147.P9431957313694385678` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028147 has offset 0).

The definition of A028147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028147.P9431957313694385678

`(11^(n+3)-7*8^(n+3)+7^(n+4)-4^(n+3))/84`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028147

/-- `(11^(n+3)-7*8^(n+3)+7^(n+4)-4^(n+3))/84` -/
def P9431957313694385678.Spec : Prop :=
  ∀ n, P9431957313694385678.a n = (A028147 n : ℚ)

end A028147

/-! ## A028147.P2827539526016392630

`Δ[A021924(n)-A021884(n)]`
-/

namespace A028147.P2827539526016392630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021924 n - A021884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028147.P2827539526016392630

namespace A028147

/-- `Δ[A021924(n)-A021884(n)]` -/
def P2827539526016392630.Spec : Prop :=
  ∀ n, P2827539526016392630.a n = A028147 n

end A028147

/-! ## A028147.P1706507974376762410

`2*A028045(n)-A028038(n)`
-/

namespace A028147.P1706507974376762410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028045 n - A028038 n

end

end A028147.P1706507974376762410

namespace A028147

/-- `2*A028045(n)-A028038(n)` -/
def P1706507974376762410.Spec : Prop :=
  ∀ n, P1706507974376762410.a n = A028147 n

end A028147

/-! ## A028147.P11852055602827449604

`2*A028118(n)-A028115(n)`
-/

namespace A028147.P11852055602827449604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028118 n - A028115 n

end

end A028147.P11852055602827449604

namespace A028147

/-- `2*A028118(n)-A028115(n)` -/
def P11852055602827449604.Spec : Prop :=
  ∀ n, P11852055602827449604.a n = A028147 n

end A028147

/-! ## A028147.P16707761419074539900

`A021884(n)+A024439(n)-A021854(n)`
-/

namespace A028147.P16707761419074539900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021884 n + (A024439 n - A021854 n)

end

end A028147.P16707761419074539900

namespace A028147

/-- `A021884(n)+A024439(n)-A021854(n)` -/
def P16707761419074539900.Spec : Prop :=
  ∀ n, P16707761419074539900.a n = A028147 n

end A028147

/-! ## A028147.P13086758501073140640

`A028116(n)+A028125(n)-A028115(n)`
-/

namespace A028147.P13086758501073140640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028116 n + (A028125 n - A028115 n)

end

end A028147.P13086758501073140640

namespace A028147

/-- `A028116(n)+A028125(n)-A028115(n)` -/
def P13086758501073140640.Spec : Prop :=
  ∀ n, P13086758501073140640.a n = A028147 n

end A028147

/-!
# A028148: Expansion of 1/((1-4x)(1-7x)(1-8x)(1-12x)).

The programs for A028148, there is no canonical definition to state claims against.
-/

/-! ## A028148.P4098830432686880811

`Δ[A021944(n)-A021894(n)]`
-/

namespace A028148.P4098830432686880811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021944 n - A021894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028148.P4098830432686880811

/-! ## A028148.P16877774768091205297

`2*A028138(n)-A028134(n)`
-/

namespace A028148.P16877774768091205297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028138 n - A028134 n

end

end A028148.P16877774768091205297

/-! ## A028148.P17291141167183507778

`2*A028151(n)-A028157(n)`
-/

namespace A028148.P17291141167183507778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028151 n - A028157 n

end

end A028148.P17291141167183507778

/-! ## A028148.P9248179996137510088

`A028042(n)+A028046(n)-A028038(n)`
-/

namespace A028148.P9248179996137510088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028042 n + (A028046 n - A028038 n)

end

end A028148.P9248179996137510088

/-! ## A028148.P6424068032296073457

`A028147(n)+A028160(n)-A028154(n)`
-/

namespace A028148.P6424068032296073457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028147 n + (A028160 n - A028154 n)

end

end A028148.P6424068032296073457

/-!
# A028149: Expansion of 1/((1-4x)(1-7x)(1-9x)(1-10x)).

The programs for A028149, the canonical program `A028149.P6137959313321250524` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028149 has offset 0).

The definition of A028149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028149.P6137959313321250524

`(5*10^(n+3)-9^(n+4)+5*7^(n+3)-4^(n+3))/90`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028149

/-- `(5*10^(n+3)-9^(n+4)+5*7^(n+3)-4^(n+3))/90` -/
def P6137959313321250524.Spec : Prop :=
  ∀ n, P6137959313321250524.a n = (A028149 n : ℚ)

end A028149

/-! ## A028149.P9925923778321651208

`A020970(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A028149.P9925923778321651208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020970 n + 4 * a (n - 1)

end

end A028149.P9925923778321651208

namespace A028149

/-- `A020970(n)+4*a(n-1)` -/
def P9925923778321651208.Spec : Prop :=
  ∀ n, P9925923778321651208.a n = A028149 n

end A028149

/-! ## A028149.P13943822599590129603

`A019613(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A028149.P13943822599590129603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019613 n + 10 * a (n - 1)

end

end A028149.P13943822599590129603

namespace A028149

/-- `A019613(n)+10*a(n-1)` -/
def P13943822599590129603.Spec : Prop :=
  ∀ n, P13943822599590129603.a n = A028149 n

end A028149

/-! ## A028149.P5911945285103724464

`A019618(n)+10*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A028149.P5911945285103724464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019618 n + (10 * a (n - 1) - a (n - 1))

end

end A028149.P5911945285103724464

namespace A028149

/-- `A019618(n)+10*a(n-1)-a(n-1)` -/
def P5911945285103724464.Spec : Prop :=
  ∀ n, P5911945285103724464.a n = A028149 n

end A028149

/-! ## A028149.P14874319858147674563

`Δ[A021874(n)-A021864(n)]`
-/

namespace A028149.P14874319858147674563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021874 n - A021864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028149.P14874319858147674563

namespace A028149

/-- `Δ[A021874(n)-A021864(n)]` -/
def P14874319858147674563.Spec : Prop :=
  ∀ n, P14874319858147674563.a n = A028149 n

end A028149

/-! ## A028149.P759763345001508220

`2*A028146(n)-A028145(n)`
-/

namespace A028149.P759763345001508220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028146 n - A028145 n

end

end A028149.P759763345001508220

namespace A028149

/-- `2*A028146(n)-A028145(n)` -/
def P759763345001508220.Spec : Prop :=
  ∀ n, P759763345001508220.a n = A028149 n

end A028149

/-! ## A028149.P3531358350980339791

`A019618(n+1)-A019613(n+1)`
-/

namespace A028149.P3531358350980339791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019618 (n + 1) - A019613 (n + 1)

end

end A028149.P3531358350980339791

namespace A028149

/-- `A019618(n+1)-A019613(n+1)` -/
def P3531358350980339791.Spec : Prop :=
  ∀ n, P3531358350980339791.a n = A028149 n

end A028149

/-! ## A028149.P1948112330402223088

`A028145(n)+A028155(n)-A028146(n)`
-/

namespace A028149.P1948112330402223088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028145 n + (A028155 n - A028146 n)

end

end A028149.P1948112330402223088

namespace A028149

/-- `A028145(n)+A028155(n)-A028146(n)` -/
def P1948112330402223088.Spec : Prop :=
  ∀ n, P1948112330402223088.a n = A028149 n

end A028149

/-!
# A028150: Expansion of 1/((1-4x)(1-7x)(1-9x)(1-11x)).

The programs for A028150, there is no canonical definition to state claims against.
-/

/-! ## A028150.P8186578492628678731

`7*a(n-1)+a(n-1)+A019623(n)+a(n-1)` with `a(0)=1`
-/

namespace A028150.P8186578492628678731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + (a (n - 1) + (A019623 n + a (n - 1)))

end

end A028150.P8186578492628678731

/-! ## A028150.P3613918160554330638

`2*A028048(n)-A028039(n)`
-/

namespace A028150.P3613918160554330638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028048 n - A028039 n

end

end A028150.P3613918160554330638

/-! ## A028150.P1340886489421802710

`2*A028125(n)-A028118(n)`
-/

namespace A028150.P1340886489421802710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028125 n - A028118 n

end

end A028150.P1340886489421802710

/-! ## A028150.P17035836342419470321

`(A028152(n)+A028149(n))/2`
-/

namespace A028150.P17035836342419470321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028152 n + A028149 n : ℚ) / 2

end

end A028150.P17035836342419470321

/-! ## A028150.P15624268163147778481

`(A028156(n)+A028147(n))/2`
-/

namespace A028150.P15624268163147778481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028156 n + A028147 n : ℚ) / 2

end

end A028150.P15624268163147778481

/-! ## A028150.P5432188134203579474

`(A019623(n+1)-A019613(n+1))/2`
-/

namespace A028150.P5432188134203579474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019623 (n + 1) - A019613 (n + 1) : ℚ) / 2

end

end A028150.P5432188134203579474

/-! ## A028150.P6029724216413027263

`(A019687(n+1)-A019623(n+1))/2`
-/

namespace A028150.P6029724216413027263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019687 (n + 1) - A019623 (n + 1) : ℚ) / 2

end

end A028150.P6029724216413027263

/-! ## A028150.P4599297354893389084

`A028047(n)+A028050(n)-A028039(n)`
-/

namespace A028150.P4599297354893389084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028047 n + (A028050 n - A028039 n)

end

end A028150.P4599297354893389084

/-! ## A028150.P17716955225393344061

`A028118(n)+A028125(n)-A028116(n)`
-/

namespace A028150.P17716955225393344061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028118 n + (A028125 n - A028116 n)

end

end A028150.P17716955225393344061

/-! ## A028150.P11754967081107295739

`A028124(n)+A028127(n)-A028118(n)`
-/

namespace A028150.P11754967081107295739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028124 n + (A028127 n - A028118 n)

end

end A028150.P11754967081107295739

/-!
# A028151: Expansion of 1/((1-4x)(1-7x)(1-9x)(1-12x)).

The programs for A028151, the canonical program `A028151.P365319427221959354` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028151 has offset 0).

The definition of A028151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028151.P365319427221959354

`(12^(n+3)-4*9^(n+3)+4*7^(n+3)-4^(n+3))/120`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028151

/-- `(12^(n+3)-4*9^(n+3)+4*7^(n+3)-4^(n+3))/120` -/
def P365319427221959354.Spec : Prop :=
  ∀ n, P365319427221959354.a n = (A028151 n : ℚ)

end A028151

/-! ## A028151.P3566323485727015927

`2*A028126(n)-A028119(n)`
-/

namespace A028151.P3566323485727015927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028126 n - A028119 n

end

end A028151.P3566323485727015927

namespace A028151

/-- `2*A028126(n)-A028119(n)` -/
def P3566323485727015927.Spec : Prop :=
  ∀ n, P3566323485727015927.a n = A028151 n

end A028151

/-! ## A028151.P11394704553542853651

`2*A028134(n)-A028131(n)`
-/

namespace A028151.P11394704553542853651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028134 n - A028131 n

end

end A028151.P11394704553542853651

namespace A028151

/-- `2*A028134(n)-A028131(n)` -/
def P11394704553542853651.Spec : Prop :=
  ∀ n, P11394704553542853651.a n = A028151 n

end A028151

/-! ## A028151.P11582815769521285475

`A028149(n)+A028162(n)-A028153(n)`
-/

namespace A028151.P11582815769521285475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028149 n + (A028162 n - A028153 n)

end

end A028151.P11582815769521285475

namespace A028151

/-- `A028149(n)+A028162(n)-A028153(n)` -/
def P11582815769521285475.Spec : Prop :=
  ∀ n, P11582815769521285475.a n = A028151 n

end A028151

/-! ## A028151.P16339117597603187999

`2*A028154(n)-A028163(n)`
-/

namespace A028151.P16339117597603187999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028154 n - A028163 n

end

end A028151.P16339117597603187999

namespace A028151

/-- `2*A028154(n)-A028163(n)` -/
def P16339117597603187999.Spec : Prop :=
  ∀ n, P16339117597603187999.a n = A028151 n

end A028151

/-! ## A028151.P982811915834964897

`Δ[(A021974(n)-A021864(n))/5]`
-/

namespace A028151.P982811915834964897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021974 n - A021864 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028151.P982811915834964897

namespace A028151

/-- `Δ[(A021974(n)-A021864(n))/5]` -/
def P982811915834964897.Spec : Prop :=
  ∀ n, P982811915834964897.a n = (A028151 n : ℚ)

end A028151

/-!
# A028152: Expansion of 1/((1-4x)(1-7x)(1-10x)(1-11x)).

The programs for A028152, the canonical program `A028152.P1549497584319431662` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028152 has offset 0).

The definition of A028152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028152.P1549497584319431662

`(9*11^(n+3)-14*10^(n+3)+7^(n+4)-2*4^(n+3))/252`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028152

/-- `(9*11^(n+3)-14*10^(n+3)+7^(n+4)-2*4^(n+3))/252` -/
def P1549497584319431662.Spec : Prop :=
  ∀ n, P1549497584319431662.a n = (A028152 n : ℚ)

end A028152

/-! ## A028152.P6588811118201929208

`A019742(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A028152.P6588811118201929208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019742 n + 7 * a (n - 1)

end

end A028152.P6588811118201929208

namespace A028152

/-- `A019742(n)+7*a(n-1)` -/
def P6588811118201929208.Spec : Prop :=
  ∀ n, P6588811118201929208.a n = A028152 n

end A028152

/-! ## A028152.P12076026837922337134

`Δ[A021884(n)-A021874(n)]`
-/

namespace A028152.P12076026837922337134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021884 n - A021874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028152.P12076026837922337134

namespace A028152

/-- `Δ[A021884(n)-A021874(n)]` -/
def P12076026837922337134.Spec : Prop :=
  ∀ n, P12076026837922337134.a n = A028152 n

end A028152

/-! ## A028152.P15313576953626036175

`2*A024444(n)-A021984(n)`
-/

namespace A028152.P15313576953626036175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024444 n - A021984 n

end

end A028152.P15313576953626036175

namespace A028152

/-- `2*A024444(n)-A021984(n)` -/
def P15313576953626036175.Spec : Prop :=
  ∀ n, P15313576953626036175.a n = A028152 n

end A028152

/-! ## A028152.P9915877030737648651

`2*A028150(n)-A028149(n)`
-/

namespace A028152.P9915877030737648651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028150 n - A028149 n

end

end A028152.P9915877030737648651

namespace A028152

/-- `2*A028150(n)-A028149(n)` -/
def P9915877030737648651.Spec : Prop :=
  ∀ n, P9915877030737648651.a n = A028152 n

end A028152

/-! ## A028152.P7923093993565660691

`A028133(n)+A028142(n)-A028132(n)`
-/

namespace A028152.P7923093993565660691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028133 n + (A028142 n - A028132 n)

end

end A028152.P7923093993565660691

namespace A028152

/-- `A028133(n)+A028142(n)-A028132(n)` -/
def P7923093993565660691.Spec : Prop :=
  ∀ n, P7923093993565660691.a n = A028152 n

end A028152

/-! ## A028152.P7664608762891144060

`2*A028153(n)-A028154(n)`
-/

namespace A028152.P7664608762891144060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028153 n - A028154 n

end

end A028152.P7664608762891144060

namespace A028152

/-- `2*A028153(n)-A028154(n)` -/
def P7664608762891144060.Spec : Prop :=
  ∀ n, P7664608762891144060.a n = A028152 n

end A028152

/-!
# A028153: Expansion of 1/((1-4x)(1-7x)(1-10x)(1-12x)).

The programs for A028153, there is no canonical definition to state claims against.
-/

/-! ## A028153.P5079615971205992513

`A019628(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A028153.P5079615971205992513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019628 n + 10 * a (n - 1)

end

end A028153.P5079615971205992513

/-! ## A028153.P17237011384706716941

`2*A028148(n)-A028146(n)`
-/

namespace A028153.P17237011384706716941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028148 n - A028146 n

end

end A028153.P17237011384706716941

/-! ## A028153.P7987389756012578259

`(A028154(n)+A028152(n))/2`
-/

namespace A028153.P7987389756012578259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028154 n + A028152 n : ℚ) / 2

end

end A028153.P7987389756012578259

/-! ## A028153.P12123514296936441883

`A028119(n)+A028128(n)-A028117(n)`
-/

namespace A028153.P12123514296936441883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028119 n + (A028128 n - A028117 n)

end

end A028153.P12123514296936441883

/-! ## A028153.P17711781923239729008

`A028149(n)+A028162(n)-A028151(n)`
-/

namespace A028153.P17711781923239729008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028149 n + (A028162 n - A028151 n)

end

end A028153.P17711781923239729008

/-!
# A028154: Expansion of 1/((1-4x)(1-7x)(1-11x)(1-12x)).

The programs for A028154, there is no canonical definition to state claims against.
-/

/-! ## A028154.P10052749936448654082

`A020975(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A028154.P10052749936448654082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020975 n + 4 * a (n - 1)

end

end A028154.P10052749936448654082

/-! ## A028154.P13168630005673950881

`Δ[A021894(n)-A021884(n)]`
-/

namespace A028154.P13168630005673950881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021894 n - A021884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028154.P13168630005673950881

/-! ## A028154.P15051423838495888339

`2*A028052(n)-A028042(n)`
-/

namespace A028154.P15051423838495888339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028052 n - A028042 n

end

end A028154.P15051423838495888339

/-! ## A028154.P96769382035321551

`2*A028153(n)-A028152(n)`
-/

namespace A028154.P96769382035321551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028153 n - A028152 n

end

end A028154.P96769382035321551

/-! ## A028154.P3882441155386376964

`A028134(n)+A028144(n)-A028133(n)`
-/

namespace A028154.P3882441155386376964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028134 n + (A028144 n - A028133 n)

end

end A028154.P3882441155386376964

/-! ## A028154.P1477968318383179900

`A028147(n)+A028160(n)-A028148(n)`
-/

namespace A028154.P1477968318383179900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028147 n + (A028160 n - A028148 n)

end

end A028154.P1477968318383179900

/-!
# A028155: Expansion of 1/((1-4x)(1-8x)(1-9x)(1-10x)).

The programs for A028155, the canonical program `A028155.P9623364175313960181` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028155 has offset 0).

The definition of A028155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028155.P9623364175313960181

`(10^(n+4)-24*9^(n+3)+15*8^(n+3)-4^(n+3))/120`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028155

/-- `(10^(n+4)-24*9^(n+3)+15*8^(n+3)-4^(n+3))/120` -/
def P9623364175313960181.Spec : Prop :=
  ∀ n, P9623364175313960181.a n = (A028155 n : ℚ)

end A028155

/-! ## A028155.P175105659671659521

`Δ[A021914(n)-A021904(n)]`
-/

namespace A028155.P175105659671659521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021914 n - A021904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028155.P175105659671659521

namespace A028155

/-- `Δ[A021914(n)-A021904(n)]` -/
def P175105659671659521.Spec : Prop :=
  ∀ n, P175105659671659521.a n = A028155 n

end A028155

/-! ## A028155.P8477675909157336858

`2*A028139(n)-A028135(n)`
-/

namespace A028155.P8477675909157336858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028139 n - A028135 n

end

end A028155.P8477675909157336858

namespace A028155

/-- `2*A028139(n)-A028135(n)` -/
def P8477675909157336858.Spec : Prop :=
  ∀ n, P8477675909157336858.a n = A028155 n

end A028155

/-! ## A028155.P11258193256335902396

`A019671(n+1)-A019664(n+1)`
-/

namespace A028155.P11258193256335902396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019671 (n + 1) - A019664 (n + 1)

end

end A028155.P11258193256335902396

namespace A028155

/-- `A019671(n+1)-A019664(n+1)` -/
def P11258193256335902396.Spec : Prop :=
  ∀ n, P11258193256335902396.a n = A028155 n

end A028155

/-! ## A028155.P6351185896842097412

`A028146(n)+A028149(n)-A028145(n)`
-/

namespace A028155.P6351185896842097412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028146 n + (A028149 n - A028145 n)

end

end A028155.P6351185896842097412

namespace A028155

/-- `A028146(n)+A028149(n)-A028145(n)` -/
def P6351185896842097412.Spec : Prop :=
  ∀ n, P6351185896842097412.a n = A028155 n

end A028155

/-! ## A028155.P10102128889280275330

`Δ[A021954(n)-A021914(n)]`
-/

namespace A028155.P10102128889280275330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021954 n - A021914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028155.P10102128889280275330

namespace A028155

/-- `Δ[A021954(n)-A021914(n)]` -/
def P10102128889280275330.Spec : Prop :=
  ∀ n, P10102128889280275330.a n = A028155 n

end A028155

/-! ## A028155.P12369793488962394117

`2*A028149(n)-A028146(n)`
-/

namespace A028155.P12369793488962394117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028149 n - A028146 n

end

end A028155.P12369793488962394117

namespace A028155

/-- `2*A028149(n)-A028146(n)` -/
def P12369793488962394117.Spec : Prop :=
  ∀ n, P12369793488962394117.a n = A028155 n

end A028155

/-! ## A028155.P10513611144563521902

`A019682(n+1)-A019671(n+1)`
-/

namespace A028155.P10513611144563521902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019682 (n + 1) - A019671 (n + 1)

end

end A028155.P10513611144563521902

namespace A028155

/-- `A019682(n+1)-A019671(n+1)` -/
def P10513611144563521902.Spec : Prop :=
  ∀ n, P10513611144563521902.a n = A028155 n

end A028155

/-! ## A028155.P11208983357145953603

`2*A028156(n)-A028158(n)`
-/

namespace A028155.P11208983357145953603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028156 n - A028158 n

end

end A028155.P11208983357145953603

namespace A028155

/-- `2*A028156(n)-A028158(n)` -/
def P11208983357145953603.Spec : Prop :=
  ∀ n, P11208983357145953603.a n = A028155 n

end A028155

/-! ## A028155.P8052261612959546858

`2*A028157(n)-A028162(n)`
-/

namespace A028155.P8052261612959546858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028157 n - A028162 n

end

end A028155.P8052261612959546858

namespace A028155

/-- `2*A028157(n)-A028162(n)` -/
def P8052261612959546858.Spec : Prop :=
  ∀ n, P8052261612959546858.a n = A028155 n

end A028155

/-!
# A028156: Expansion of 1/((1-4x)(1-8x)(1-9x)(1-11x)).

The programs for A028156, there is no canonical definition to state claims against.
-/

/-! ## A028156.P9995808604746477521

`A019687(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A028156.P9995808604746477521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019687 n + 8 * a (n - 1)

end

end A028156.P9995808604746477521

/-! ## A028156.P1779447155753224994

`Δ[A021964(n)-A021924(n)]`
-/

namespace A028156.P1779447155753224994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021964 n - A021924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028156.P1779447155753224994

/-! ## A028156.P9375840907412744933

`2*A028125(n)-A028120(n)`
-/

namespace A028156.P9375840907412744933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028125 n - A028120 n

end

end A028156.P9375840907412744933

/-! ## A028156.P10839791957882879711

`2*A028147(n)-A028145(n)`
-/

namespace A028156.P10839791957882879711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028147 n - A028145 n

end

end A028156.P10839791957882879711

/-! ## A028156.P14502973243285134553

`2*A028150(n)-A028147(n)`
-/

namespace A028156.P14502973243285134553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028150 n - A028147 n

end

end A028156.P14502973243285134553

/-! ## A028156.P3881537323416199812

`A028124(n)+A028127(n)-A028120(n)`
-/

namespace A028156.P3881537323416199812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028124 n + (A028127 n - A028120 n)

end

end A028156.P3881537323416199812

/-! ## A028156.P7868860571779378444

`A028137(n)+A028140(n)-A028135(n)`
-/

namespace A028156.P7868860571779378444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028137 n + (A028140 n - A028135 n)

end

end A028156.P7868860571779378444

/-!
# A028157: Expansion of 1/((1-4*x)*(1-8*x)*(1-9*x)*(1-12*x)).

The programs for A028157, there is no canonical definition to state claims against.
-/

/-! ## A028157.P2651068000201554580

`A020978(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A028157.P2651068000201554580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020978 n + 4 * a (n - 1)

end

end A028157.P2651068000201554580

/-! ## A028157.P11510093406678166231

`2*A020978(n)-A019722(n)`
-/

namespace A028157.P11510093406678166231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020978 n - A019722 n

end

end A028157.P11510093406678166231

/-! ## A028157.P18380991338322606346

`2*A028138(n)-A028135(n)`
-/

namespace A028157.P18380991338322606346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028138 n - A028135 n

end

end A028157.P18380991338322606346

/-! ## A028157.P5548737213299641954

`(A028162(n)+A028155(n))/2`
-/

namespace A028157.P5548737213299641954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028162 n + A028155 n : ℚ) / 2

end

end A028157.P5548737213299641954

/-! ## A028157.P8013228011388652494

`A019722(n)+A020978(n)-A019664(n)`
-/

namespace A028157.P8013228011388652494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019722 n + (A020978 n - A019664 n)

end

end A028157.P8013228011388652494

/-! ## A028157.P3248358505331974797

`A028123(n)+A028126(n)-A028120(n)`
-/

namespace A028157.P3248358505331974797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028123 n + (A028126 n - A028120 n)

end

end A028157.P3248358505331974797

/-! ## A028157.P18134053003484436013

`Δ[A021974(n)-A021944(n)]`
-/

namespace A028157.P18134053003484436013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021974 n - A021944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028157.P18134053003484436013

/-!
# A028158: Expansion of 1/((1-4x)(1-8x)(1-10x)(1-11x)).

The programs for A028158, the canonical program `A028158.P14522080325193195830` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028158 has offset 0).

The definition of A028158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028158.P14522080325193195830

`(8*11^(n+3)-14*10^(n+3)+7*8^(n+3)-4^(n+3))/168`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028158

/-- `(8*11^(n+3)-14*10^(n+3)+7*8^(n+3)-4^(n+3))/168` -/
def P14522080325193195830.Spec : Prop :=
  ∀ n, P14522080325193195830.a n = (A028158 n : ℚ)

end A028158

/-! ## A028158.P13205437092072230193

`Δ[A021924(n)-A021914(n)]`
-/

namespace A028158.P13205437092072230193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021924 n - A021914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028158.P13205437092072230193

namespace A028158

/-- `Δ[A021924(n)-A021914(n)]` -/
def P13205437092072230193.Spec : Prop :=
  ∀ n, P13205437092072230193.a n = A028158 n

end A028158

/-! ## A028158.P12954421107336132642

`2*A028127(n)-A028121(n)`
-/

namespace A028158.P12954421107336132642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028127 n - A028121 n

end

end A028158.P12954421107336132642

namespace A028158

/-- `2*A028127(n)-A028121(n)` -/
def P12954421107336132642.Spec : Prop :=
  ∀ n, P12954421107336132642.a n = A028158 n

end A028158

/-! ## A028158.P8322166163009545062

`2*A028142(n)-A028137(n)`
-/

namespace A028158.P8322166163009545062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028142 n - A028137 n

end

end A028158.P8322166163009545062

namespace A028158

/-- `2*A028142(n)-A028137(n)` -/
def P8322166163009545062.Spec : Prop :=
  ∀ n, P8322166163009545062.a n = A028158 n

end A028158

/-! ## A028158.P11985618873735602242

`2*A028156(n)-A028155(n)`
-/

namespace A028158.P11985618873735602242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028156 n - A028155 n

end

end A028158.P11985618873735602242

namespace A028158

/-- `2*A028156(n)-A028155(n)` -/
def P11985618873735602242.Spec : Prop :=
  ∀ n, P11985618873735602242.a n = A028158 n

end A028158

/-! ## A028158.P1249309898196475789

`2*A028159(n)-A028160(n)`
-/

namespace A028158.P1249309898196475789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028159 n - A028160 n

end

end A028158.P1249309898196475789

namespace A028158

/-- `2*A028159(n)-A028160(n)` -/
def P1249309898196475789.Spec : Prop :=
  ∀ n, P1249309898196475789.a n = A028158 n

end A028158

/-!
# A028159: Expansion of 1/((1-4*x)*(1-8*x)*(1-10*x)*(1-12*x)).

The programs for A028159, the canonical program `A028159.P266652802698845510` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028159 has offset 0).

The definition of A028159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028159.P266652802698845510

`(3*12^(n+3)-8*10^(n+3)+6*8^(n+3)-4^(n+3))/192`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028159

/-- `(3*12^(n+3)-8*10^(n+3)+6*8^(n+3)-4^(n+3))/192` -/
def P266652802698845510.Spec : Prop :=
  ∀ n, P266652802698845510.a n = (A028159 n : ℚ)

end A028159

/-! ## A028159.P13275083396001592365

`2^n*A025958(n)`
-/

namespace A028159.P13275083396001592365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A025958 n

end

end A028159.P13275083396001592365

namespace A028159

/-- `2^n*A025958(n)` -/
def P13275083396001592365.Spec : Prop :=
  ∀ n, P13275083396001592365.a n = A028159 n

end A028159

/-! ## A028159.P7122192440365796033

`lcm(A000079(n), A025958(n))`
-/

namespace A028159.P7122192440365796033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A025958 n)

end

end A028159.P7122192440365796033

namespace A028159

/-- `lcm(A000079(n), A025958(n))` -/
def P7122192440365796033.Spec : Prop :=
  ∀ n, (P7122192440365796033.a n : ℤ) = A028159 n

end A028159

/-! ## A028159.P11416188769961827727

`2^n*Δ[A021114(n)-A021076(n)]`
-/

namespace A028159.P11416188769961827727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021114 n - A021076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A028159.P11416188769961827727

namespace A028159

/-- `2^n*Δ[A021114(n)-A021076(n)]` -/
def P11416188769961827727.Spec : Prop :=
  ∀ n, P11416188769961827727.a n = A028159 n

end A028159

/-! ## A028159.P15905839095064279098

`2^n*Δ[(A021114(n)-A021074(n))/2]`
-/

namespace A028159.P15905839095064279098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021114 n - A021074 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (f1 (n + 1) - f1 n)

end

end A028159.P15905839095064279098

namespace A028159

/-- `2^n*Δ[(A021114(n)-A021074(n))/2]` -/
def P15905839095064279098.Spec : Prop :=
  ∀ n, P15905839095064279098.a n = (A028159 n : ℚ)

end A028159

/-! ## A028159.P2052564206705317887

`A000051(n)*A025958(n)-A025958(n)`
-/

namespace A028159.P2052564206705317887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A025958 n - A025958 n

end

end A028159.P2052564206705317887

namespace A028159

/-- `A000051(n)*A025958(n)-A025958(n)` -/
def P2052564206705317887.Spec : Prop :=
  ∀ n, P2052564206705317887.a n = A028159 n

end A028159

/-! ## A028159.P8955577927499107659

`Δ[A021114(n)-A021076(n)]*A000079(n)`
-/

namespace A028159.P8955577927499107659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021114 n - A021076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A028159.P8955577927499107659

namespace A028159

/-- `Δ[A021114(n)-A021076(n)]*A000079(n)` -/
def P8955577927499107659.Spec : Prop :=
  ∀ n, P8955577927499107659.a n = A028159 n

end A028159

/-!
# A028160: Expansion of 1/((1-4x)(1-8x)(1-11x)(1-12x)).

The programs for A028160, the canonical program `A028160.P5454538292376429812` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028160 has offset 0).

The definition of A028160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028160.P5454538292376429812

`23*a(n-1)-132*a(n-2)+2^(3*n+1)-4^n` with `a(0)=1, a(1)=35`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028160

/-- `23*a(n-1)-132*a(n-2)+2^(3*n+1)-4^n` -/
def P5454538292376429812.Spec : Prop :=
  ∀ n, P5454538292376429812.a n = A028160 n

theorem P5454538292376429812.correct : P5454538292376429812.Spec := by
  intro n
  simp only [A028160]

end A028160

/-! ## A028160.P6123867194287969167

`Δ[A021944(n)-A021924(n)]`
-/

namespace A028160.P6123867194287969167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021944 n - A021924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028160.P6123867194287969167

namespace A028160

/-- `Δ[A021944(n)-A021924(n)]` -/
def P6123867194287969167.Spec : Prop :=
  ∀ n, P6123867194287969167.a n = A028160 n

end A028160

/-! ## A028160.P193206437557311278

`2*A028129(n)-A028123(n)`
-/

namespace A028160.P193206437557311278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028129 n - A028123 n

end

end A028160.P193206437557311278

namespace A028160

/-- `2*A028129(n)-A028123(n)` -/
def P193206437557311278.Spec : Prop :=
  ∀ n, P193206437557311278.a n = A028160 n

end A028160

/-! ## A028160.P6323432122992824457

`2*A028159(n)-A028158(n)`
-/

namespace A028160.P6323432122992824457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028159 n - A028158 n

end

end A028160.P6323432122992824457

namespace A028160

/-- `2*A028159(n)-A028158(n)` -/
def P6323432122992824457.Spec : Prop :=
  ∀ n, P6323432122992824457.a n = A028160 n

end A028160

/-! ## A028160.P6938910552106891743

`A019752(n)+A020981(n)-A019672(n)`
-/

namespace A028160.P6938910552106891743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019752 n + (A020981 n - A019672 n)

end

end A028160.P6938910552106891743

namespace A028160

/-- `A019752(n)+A020981(n)-A019672(n)` -/
def P6938910552106891743.Spec : Prop :=
  ∀ n, P6938910552106891743.a n = A028160 n

end A028160

/-! ## A028160.P13492609182513683220

`2*A020981(n)-A019752(n)`
-/

namespace A028160.P13492609182513683220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020981 n - A019752 n

end

end A028160.P13492609182513683220

namespace A028160

/-- `2*A020981(n)-A019752(n)` -/
def P13492609182513683220.Spec : Prop :=
  ∀ n, P13492609182513683220.a n = A028160 n

end A028160

/-! ## A028160.P4082562546137959793

`(A028164(n)+A028158(n))/2`
-/

namespace A028160.P4082562546137959793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028164 n + A028158 n : ℚ) / 2

end

end A028160.P4082562546137959793

namespace A028160

/-- `(A028164(n)+A028158(n))/2` -/
def P4082562546137959793.Spec : Prop :=
  ∀ n, P4082562546137959793.a n = (A028160 n : ℚ)

end A028160

/-!
# A028161: Expansion of 1/((1-4*x)*(1-9*x)*(1-10*x)*(1-11*x)).

The programs for A028161, the canonical program `A028161.P16074032200473046150` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028161 has offset 0).

The definition of A028161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028161.P16074032200473046150

`21*a(n-1)-110*a(n-2)+(9^(n+1)-4^(n+1))/5` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028161

/-- `21*a(n-1)-110*a(n-2)+(9^(n+1)-4^(n+1))/5` -/
def P16074032200473046150.Spec : Prop :=
  ∀ n, P16074032200473046150.a n = (A028161 n : ℚ)

end A028161

/-! ## A028161.P14933146070277038137

`Δ[A021964(n)-A021954(n)]`
-/

namespace A028161.P14933146070277038137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021964 n - A021954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028161.P14933146070277038137

namespace A028161

/-- `Δ[A021964(n)-A021954(n)]` -/
def P14933146070277038137.Spec : Prop :=
  ∀ n, P14933146070277038137.a n = A028161 n

end A028161

/-! ## A028161.P3635278746431887618

`2*A028152(n)-A028149(n)`
-/

namespace A028161.P3635278746431887618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028152 n - A028149 n

end

end A028161.P3635278746431887618

namespace A028161

/-- `2*A028152(n)-A028149(n)` -/
def P3635278746431887618.Spec : Prop :=
  ∀ n, P3635278746431887618.a n = A028161 n

end A028161

/-! ## A028161.P2057338475876347648

`2*A028158(n)-A028156(n)`
-/

namespace A028161.P2057338475876347648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028158 n - A028156 n

end

end A028161.P2057338475876347648

namespace A028161

/-- `2*A028158(n)-A028156(n)` -/
def P2057338475876347648.Spec : Prop :=
  ∀ n, P2057338475876347648.a n = A028161 n

end A028161

/-! ## A028161.P15953695532815608653

`A019687(n+1)-A019682(n+1)`
-/

namespace A028161.P15953695532815608653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019687 (n + 1) - A019682 (n + 1)

end

end A028161.P15953695532815608653

namespace A028161

/-- `A019687(n+1)-A019682(n+1)` -/
def P15953695532815608653.Spec : Prop :=
  ∀ n, P15953695532815608653.a n = A028161 n

end A028161

/-! ## A028161.P8943731557160845433

`Δ[A021984(n)-A021964(n)]`
-/

namespace A028161.P8943731557160845433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021984 n - A021964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028161.P8943731557160845433

namespace A028161

/-- `Δ[A021984(n)-A021964(n)]` -/
def P8943731557160845433.Spec : Prop :=
  ∀ n, P8943731557160845433.a n = A028161 n

end A028161

/-! ## A028161.P7019366925439700249

`A019742(n+1)-A019687(n+1)`
-/

namespace A028161.P7019366925439700249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019742 (n + 1) - A019687 (n + 1)

end

end A028161.P7019366925439700249

namespace A028161

/-- `A019742(n+1)-A019687(n+1)` -/
def P7019366925439700249.Spec : Prop :=
  ∀ n, P7019366925439700249.a n = A028161 n

end A028161

/-! ## A028161.P5654045631051617811

`(A019742(n+1)-A019682(n+1))/2`
-/

namespace A028161.P5654045631051617811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019742 (n + 1) - A019682 (n + 1) : ℚ) / 2

end

end A028161.P5654045631051617811

namespace A028161

/-- `(A019742(n+1)-A019682(n+1))/2` -/
def P5654045631051617811.Spec : Prop :=
  ∀ n, P5654045631051617811.a n = (A028161 n : ℚ)

end A028161

/-! ## A028161.P57278019378563334

`2*A028162(n)-A028163(n)`
-/

namespace A028161.P57278019378563334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028162 n - A028163 n

end

end A028161.P57278019378563334

namespace A028161

/-- `2*A028162(n)-A028163(n)` -/
def P57278019378563334.Spec : Prop :=
  ∀ n, P57278019378563334.a n = A028161 n

end A028161

/-!
# A028162: Expansion of 1/((1-4x)(1-9x)(1-10x)(1-12x)).

The programs for A028162, the canonical program `A028162.P11244433733540453938` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028162 has offset 0).

The definition of A028162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028162.P11244433733540453938

`22*a(n-1)-120*a(n-2)+(9^(n+1)-4^(n+1))/5` with `a(0)=1, a(1)=35`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028162

/-- `22*a(n-1)-120*a(n-2)+(9^(n+1)-4^(n+1))/5` -/
def P11244433733540453938.Spec : Prop :=
  ∀ n, P11244433733540453938.a n = (A028162 n : ℚ)

end A028162

/-! ## A028162.P6661111937023056572

`2*A028157(n)-A028155(n)`
-/

namespace A028162.P6661111937023056572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028157 n - A028155 n

end

end A028162.P6661111937023056572

namespace A028162

/-- `2*A028157(n)-A028155(n)` -/
def P6661111937023056572.Spec : Prop :=
  ∀ n, P6661111937023056572.a n = A028162 n

end A028162

/-! ## A028162.P16867744590901654512

`2*A028159(n)-A028157(n)`
-/

namespace A028162.P16867744590901654512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028159 n - A028157 n

end

end A028162.P16867744590901654512

namespace A028162

/-- `2*A028159(n)-A028157(n)` -/
def P16867744590901654512.Spec : Prop :=
  ∀ n, P16867744590901654512.a n = A028162 n

end A028162

/-! ## A028162.P16585927833500787852

`A028151(n)+A028153(n)-A028149(n)`
-/

namespace A028162.P16585927833500787852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028151 n + (A028153 n - A028149 n)

end

end A028162.P16585927833500787852

namespace A028162

/-- `A028151(n)+A028153(n)-A028149(n)` -/
def P16585927833500787852.Spec : Prop :=
  ∀ n, P16585927833500787852.a n = A028162 n

end A028162

/-! ## A028162.P9572468551312236103

`Δ[A021994(n)-A021974(n)]`
-/

namespace A028162.P9572468551312236103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021994 n - A021974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028162.P9572468551312236103

namespace A028162

/-- `Δ[A021994(n)-A021974(n)]` -/
def P9572468551312236103.Spec : Prop :=
  ∀ n, P9572468551312236103.a n = A028162 n

end A028162

/-! ## A028162.P12225098760462014396

`(A028163(n)+A028161(n))/2`
-/

namespace A028162.P12225098760462014396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028163 n + A028161 n : ℚ) / 2

end

end A028162.P12225098760462014396

namespace A028162

/-- `(A028163(n)+A028161(n))/2` -/
def P12225098760462014396.Spec : Prop :=
  ∀ n, P12225098760462014396.a n = (A028162 n : ℚ)

end A028162

/-! ## A028162.P12389293477144938930

`2*A028163(n)-A028164(n)`
-/

namespace A028162.P12389293477144938930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028163 n - A028164 n

end

end A028162.P12389293477144938930

namespace A028162

/-- `2*A028163(n)-A028164(n)` -/
def P12389293477144938930.Spec : Prop :=
  ∀ n, P12389293477144938930.a n = A028162 n

end A028162

/-!
# A028163: Expansion of 1/((1-4x)(1-9x)(1-11x)(1-12x)).

The programs for A028163, the canonical program `A028163.P1760750220502138560` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028163 has offset 0).

The definition of A028163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028163.P1760750220502138560

`23*a(n-1)-132*a(n-2)+(9^(n+1)-4^(n+1))/5` with `a(0)=1, a(1)=36`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028163

/-- `23*a(n-1)-132*a(n-2)+(9^(n+1)-4^(n+1))/5` -/
def P1760750220502138560.Spec : Prop :=
  ∀ n, P1760750220502138560.a n = (A028163 n : ℚ)

end A028163

/-! ## A028163.P11366506078543829378

`Δ[A021974(n)-A021964(n)]`
-/

namespace A028163.P11366506078543829378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021974 n - A021964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028163.P11366506078543829378

namespace A028163

/-- `Δ[A021974(n)-A021964(n)]` -/
def P11366506078543829378.Spec : Prop :=
  ∀ n, P11366506078543829378.a n = A028163 n

end A028163

/-! ## A028163.P2441586110734559524

`2*A028154(n)-A028151(n)`
-/

namespace A028163.P2441586110734559524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028154 n - A028151 n

end

end A028163.P2441586110734559524

namespace A028163

/-- `2*A028154(n)-A028151(n)` -/
def P2441586110734559524.Spec : Prop :=
  ∀ n, P2441586110734559524.a n = A028163 n

end A028163

/-! ## A028163.P4145211166632679496

`2*A028162(n)-A028161(n)`
-/

namespace A028163.P4145211166632679496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028162 n - A028161 n

end

end A028163.P4145211166632679496

namespace A028163

/-- `2*A028162(n)-A028161(n)` -/
def P4145211166632679496.Spec : Prop :=
  ∀ n, P4145211166632679496.a n = A028163 n

end A028163

/-! ## A028163.P10578485549437363009

`(A028164(n)+A028162(n))/2`
-/

namespace A028163.P10578485549437363009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028164 n + A028162 n : ℚ) / 2

end

end A028163.P10578485549437363009

namespace A028163

/-- `(A028164(n)+A028162(n))/2` -/
def P10578485549437363009.Spec : Prop :=
  ∀ n, P10578485549437363009.a n = (A028163 n : ℚ)

end A028163

/-! ## A028163.P5969591967702174535

`A028157(n)+A028160(n)-A028156(n)`
-/

namespace A028163.P5969591967702174535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028157 n + (A028160 n - A028156 n)

end

end A028163.P5969591967702174535

namespace A028163

/-- `A028157(n)+A028160(n)-A028156(n)` -/
def P5969591967702174535.Spec : Prop :=
  ∀ n, P5969591967702174535.a n = A028163 n

end A028163

/-! ## A028163.P18157309132195678540

`A028161(n)+A028164(n)-A028162(n)`
-/

namespace A028163.P18157309132195678540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028161 n + (A028164 n - A028162 n)

end

end A028163.P18157309132195678540

namespace A028163

/-- `A028161(n)+A028164(n)-A028162(n)` -/
def P18157309132195678540.Spec : Prop :=
  ∀ n, P18157309132195678540.a n = A028163 n

end A028163

/-!
# A028164: Expansion of 1/((1-4x)(1-10x)(1-11x)(1-12x)).

The programs for A028164, the canonical program `A028164.P10812680093312296707` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028164 has offset 0).

The definition of A028164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028164.P10812680093312296707

`23*a(n-1)-132*a(n-2)+(10^(n+1)-4^(n+1))/6` with `a(0)=1, a(1)=37`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028164

/-- `23*a(n-1)-132*a(n-2)+(10^(n+1)-4^(n+1))/6` -/
def P10812680093312296707.Spec : Prop :=
  ∀ n, P10812680093312296707.a n = (A028164 n : ℚ)

end A028164

/-! ## A028164.P11711920356624539159

`A021021(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A028164.P11711920356624539159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A021021 n + 4 * a (n - 1)

end

end A028164.P11711920356624539159

namespace A028164

/-- `A021021(n)+4*a(n-1)` -/
def P11711920356624539159.Spec : Prop :=
  ∀ n, P11711920356624539159.a n = A028164 n

end A028164

/-! ## A028164.P11784187575818094488

`Δ[A021994(n)-A021984(n)]`
-/

namespace A028164.P11784187575818094488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021994 n - A021984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028164.P11784187575818094488

namespace A028164

/-- `Δ[A021994(n)-A021984(n)]` -/
def P11784187575818094488.Spec : Prop :=
  ∀ n, P11784187575818094488.a n = A028164 n

end A028164

/-! ## A028164.P5639836530054391759

`Δ[A022000(n)-A021994(n)]`
-/

namespace A028164.P5639836530054391759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022000 n - A021994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028164.P5639836530054391759

namespace A028164

/-- `Δ[A022000(n)-A021994(n)]` -/
def P5639836530054391759.Spec : Prop :=
  ∀ n, P5639836530054391759.a n = A028164 n

end A028164

/-! ## A028164.P9929805864726616647

`2*A028160(n)-A028158(n)`
-/

namespace A028164.P9929805864726616647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028160 n - A028158 n

end

end A028164.P9929805864726616647

namespace A028164

/-- `2*A028160(n)-A028158(n)` -/
def P9929805864726616647.Spec : Prop :=
  ∀ n, P9929805864726616647.a n = A028164 n

end A028164

/-! ## A028164.P3318792978280039752

`2*A028163(n)-A028162(n)`
-/

namespace A028164.P3318792978280039752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028163 n - A028162 n

end

end A028164.P3318792978280039752

namespace A028164

/-- `2*A028163(n)-A028162(n)` -/
def P3318792978280039752.Spec : Prop :=
  ∀ n, P3318792978280039752.a n = A028164 n

end A028164

/-! ## A028164.P701172034722933102

`A019747(n+1)-A019742(n+1)`
-/

namespace A028164.P701172034722933102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019747 (n + 1) - A019742 (n + 1)

end

end A028164.P701172034722933102

namespace A028164

/-- `A019747(n+1)-A019742(n+1)` -/
def P701172034722933102.Spec : Prop :=
  ∀ n, P701172034722933102.a n = A028164 n

end A028164

/-! ## A028164.P14242141093495413619

`(A019752(n+1)-A019742(n+1))/2`
-/

namespace A028164.P14242141093495413619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019752 (n + 1) - A019742 (n + 1) : ℚ) / 2

end

end A028164.P14242141093495413619

namespace A028164

/-- `(A019752(n+1)-A019742(n+1))/2` -/
def P14242141093495413619.Spec : Prop :=
  ∀ n, P14242141093495413619.a n = (A028164 n : ℚ)

end A028164

/-! ## A028164.P5579240598491709292

`A028162(n)+A028163(n)-A028161(n)`
-/

namespace A028164.P5579240598491709292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028162 n + (A028163 n - A028161 n)

end

end A028164.P5579240598491709292

namespace A028164

/-- `A028162(n)+A028163(n)-A028161(n)` -/
def P5579240598491709292.Spec : Prop :=
  ∀ n, P5579240598491709292.a n = A028164 n

end A028164

/-!
# A028165: Expansion of 1/((1-5*x)*(1-6*x)*(1-7*x)*(1-8*x)).

The programs for A028165, the canonical program `A028165.P9848545770980890725` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028165 has offset 0).

The definition of A028165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028165.P9848545770980890725

`15*a(n-1)-56*a(n-2)+6^(n+1)-5^(n+1)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028165

/-- `15*a(n-1)-56*a(n-2)+6^(n+1)-5^(n+1)` -/
def P9848545770980890725.Spec : Prop :=
  ∀ n, P9848545770980890725.a n = A028165 n

theorem P9848545770980890725.correct : P9848545770980890725.Spec := by
  intro n
  simp only [A028165]

end A028165

/-! ## A028165.P5521972529945928085

`A020570(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A028165.P5521972529945928085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020570 n + 5 * a (n - 1)

end

end A028165.P5521972529945928085

namespace A028165

/-- `A020570(n)+5*a(n-1)` -/
def P5521972529945928085.Spec : Prop :=
  ∀ n, P5521972529945928085.a n = A028165 n

end A028165

/-! ## A028165.P12292269850234952085

`A019928(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A028165.P12292269850234952085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019928 n + 6 * a (n - 1)

end

end A028165.P12292269850234952085

namespace A028165

/-- `A019928(n)+6*a(n-1)` -/
def P12292269850234952085.Spec : Prop :=
  ∀ n, P12292269850234952085.a n = A028165 n

end A028165

/-! ## A028165.P6750736045226441097

`2*A028074(n)-A028054(n)`
-/

namespace A028165.P6750736045226441097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028074 n - A028054 n

end

end A028165.P6750736045226441097

namespace A028165

/-- `2*A028074(n)-A028054(n)` -/
def P6750736045226441097.Spec : Prop :=
  ∀ n, P6750736045226441097.a n = A028165 n

end A028165

/-! ## A028165.P6843557945635725266

`2*A028130(n)-A028115(n)`
-/

namespace A028165.P6843557945635725266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028130 n - A028115 n

end

end A028165.P6843557945635725266

namespace A028165

/-- `2*A028130(n)-A028115(n)` -/
def P6843557945635725266.Spec : Prop :=
  ∀ n, P6843557945635725266.a n = A028165 n

end A028165

/-! ## A028165.P17523536660399506029

`A019783(n+1)-A019757(n+1)`
-/

namespace A028165.P17523536660399506029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019783 (n + 1) - A019757 (n + 1)

end

end A028165.P17523536660399506029

namespace A028165

/-- `A019783(n+1)-A019757(n+1)` -/
def P17523536660399506029.Spec : Prop :=
  ∀ n, P17523536660399506029.a n = A028165 n

end A028165

/-! ## A028165.P8345399515349972840

`(A019928(n+1)-A019757(n+1))/2`
-/

namespace A028165.P8345399515349972840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019928 (n + 1) - A019757 (n + 1) : ℚ) / 2

end

end A028165.P8345399515349972840

namespace A028165

/-- `(A019928(n+1)-A019757(n+1))/2` -/
def P8345399515349972840.Spec : Prop :=
  ∀ n, P8345399515349972840.a n = (A028165 n : ℚ)

end A028165

/-! ## A028165.P13337968188736271266

`A028115(n)+A028130(n)-A028110(n)`
-/

namespace A028165.P13337968188736271266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028115 n + (A028130 n - A028110 n)

end

end A028165.P13337968188736271266

namespace A028165

/-- `A028115(n)+A028130(n)-A028110(n)` -/
def P13337968188736271266.Spec : Prop :=
  ∀ n, P13337968188736271266.a n = A028165 n

end A028165

/-! ## A028165.P15045960572884830254

`2*A028166(n)-A028170(n)`
-/

namespace A028165.P15045960572884830254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028166 n - A028170 n

end

end A028165.P15045960572884830254

namespace A028165

/-- `2*A028166(n)-A028170(n)` -/
def P15045960572884830254.Spec : Prop :=
  ∀ n, P15045960572884830254.a n = A028165 n

end A028165

/-! ## A028165.P168825166699351249

`2*A028167(n)-A028181(n)`
-/

namespace A028165.P168825166699351249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028167 n - A028181 n

end

end A028165.P168825166699351249

namespace A028165

/-- `2*A028167(n)-A028181(n)` -/
def P168825166699351249.Spec : Prop :=
  ∀ n, P168825166699351249.a n = A028165 n

end A028165

/-!
# A028166: Expansion of 1/((1-5x)(1-6x)(1-7x)(1-9x)).

The programs for A028166, the canonical program `A028166.P1614785683038331922` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028166 has offset 0).

The definition of A028166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028166.P1614785683038331922

`16*a(n-1)-63*a(n-2)+6^(n+1)-5^(n+1)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028166

/-- `16*a(n-1)-63*a(n-2)+6^(n+1)-5^(n+1)` -/
def P1614785683038331922.Spec : Prop :=
  ∀ n, P1614785683038331922.a n = A028166 n

theorem P1614785683038331922.correct : P1614785683038331922.Spec := by
  intro n
  simp only [A028166]

end A028166

/-! ## A028166.P7159211862539659094

`Δ[A021454(n)-A021494(n)]`
-/

namespace A028166.P7159211862539659094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021454 n - A021494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028166.P7159211862539659094

namespace A028166

/-- `Δ[A021454(n)-A021494(n)]` -/
def P7159211862539659094.Spec : Prop :=
  ∀ n, P7159211862539659094.a n = A028166 n

end A028166

/-! ## A028166.P17140468339942348149

`2*A028075(n)-A028055(n)`
-/

namespace A028166.P17140468339942348149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028075 n - A028055 n

end

end A028166.P17140468339942348149

namespace A028166

/-- `2*A028075(n)-A028055(n)` -/
def P17140468339942348149.Spec : Prop :=
  ∀ n, P17140468339942348149.a n = A028166 n

end A028166

/-! ## A028166.P2634526588245098773

`A028064(n)+A028074(n)-A028054(n)`
-/

namespace A028166.P2634526588245098773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028064 n + (A028074 n - A028054 n)

end

end A028166.P2634526588245098773

namespace A028166

/-- `A028064(n)+A028074(n)-A028054(n)` -/
def P2634526588245098773.Spec : Prop :=
  ∀ n, P2634526588245098773.a n = A028166 n

end A028166

/-! ## A028166.P7352548303039854532

`(A028170(n)+A028165(n))/2`
-/

namespace A028166.P7352548303039854532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028170 n + A028165 n : ℚ) / 2

end

end A028166.P7352548303039854532

namespace A028166

/-- `(A028170(n)+A028165(n))/2` -/
def P7352548303039854532.Spec : Prop :=
  ∀ n, P7352548303039854532.a n = (A028166 n : ℚ)

end A028166

/-! ## A028166.P7305614545426592481

`2*A028170(n)-A028180(n)`
-/

namespace A028166.P7305614545426592481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028170 n - A028180 n

end

end A028166.P7305614545426592481

namespace A028166

/-- `2*A028170(n)-A028180(n)` -/
def P7305614545426592481.Spec : Prop :=
  ∀ n, P7305614545426592481.a n = A028166 n

end A028166

/-! ## A028166.P8117013639830324832

`(A019793(n+1)-A019757(n+1))/2`
-/

namespace A028166.P8117013639830324832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019793 (n + 1) - A019757 (n + 1) : ℚ) / 2

end

end A028166.P8117013639830324832

namespace A028166

/-- `(A019793(n+1)-A019757(n+1))/2` -/
def P8117013639830324832.Spec : Prop :=
  ∀ n, P8117013639830324832.a n = (A028166 n : ℚ)

end A028166

/-! ## A028166.P14602608121408662421

`2*A028168(n)-A028175(n)`
-/

namespace A028166.P14602608121408662421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028168 n - A028175 n

end

end A028166.P14602608121408662421

namespace A028166

/-- `2*A028168(n)-A028175(n)` -/
def P14602608121408662421.Spec : Prop :=
  ∀ n, P14602608121408662421.a n = A028166 n

end A028166

/-!
# A028167: Expansion of 1/((1-5x)(1-6x)(1-7x)(1-10x)).

The programs for A028167, the canonical program `A028167.P264763677203577302` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028167 has offset 0).

The definition of A028167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028167.P264763677203577302

`17*a(n-1)-70*a(n-2)+6^(n+1)-5^(n+1)` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028167

/-- `17*a(n-1)-70*a(n-2)+6^(n+1)-5^(n+1)` -/
def P264763677203577302.Spec : Prop :=
  ∀ n, P264763677203577302.a n = A028167 n

theorem P264763677203577302.correct : P264763677203577302.Spec := by
  intro n
  simp only [A028167]

end A028167

/-! ## A028167.P10907417353793460865

`A020572(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A028167.P10907417353793460865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020572 n + 5 * a (n - 1)

end

end A028167.P10907417353793460865

namespace A028167

/-- `A020572(n)+5*a(n-1)` -/
def P10907417353793460865.Spec : Prop :=
  ∀ n, P10907417353793460865.a n = A028167 n

end A028167

/-! ## A028167.P15201240427025929532

`2*A025994(n)-A025986(n)`
-/

namespace A028167.P15201240427025929532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025994 n - A025986 n

end

end A028167.P15201240427025929532

namespace A028167

/-- `2*A025994(n)-A025986(n)` -/
def P15201240427025929532.Spec : Prop :=
  ∀ n, P15201240427025929532.a n = A028167 n

end A028167

/-! ## A028167.P12058965338156107022

`2*A028076(n)-A028056(n)`
-/

namespace A028167.P12058965338156107022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028076 n - A028056 n

end

end A028167.P12058965338156107022

namespace A028167

/-- `2*A028076(n)-A028056(n)` -/
def P12058965338156107022.Spec : Prop :=
  ∀ n, P12058965338156107022.a n = A028167 n

end A028167

/-! ## A028167.P13587794434970843801

`2*A028132(n)-A028117(n)`
-/

namespace A028167.P13587794434970843801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028132 n - A028117 n

end

end A028167.P13587794434970843801

namespace A028167

/-- `2*A028132(n)-A028117(n)` -/
def P13587794434970843801.Spec : Prop :=
  ∀ n, P13587794434970843801.a n = A028167 n

end A028167

/-! ## A028167.P16374941107942206044

`(A028181(n)+A028165(n))/2`
-/

namespace A028167.P16374941107942206044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028181 n + A028165 n : ℚ) / 2

end

end A028167.P16374941107942206044

namespace A028167

/-- `(A028181(n)+A028165(n))/2` -/
def P16374941107942206044.Spec : Prop :=
  ∀ n, P16374941107942206044.a n = (A028167 n : ℚ)

end A028167

/-! ## A028167.P17054771525211459218

`2*A028171(n)-A028181(n)`
-/

namespace A028167.P17054771525211459218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028171 n - A028181 n

end

end A028167.P17054771525211459218

namespace A028167

/-- `2*A028171(n)-A028181(n)` -/
def P17054771525211459218.Spec : Prop :=
  ∀ n, P17054771525211459218.a n = A028167 n

end A028167

/-! ## A028167.P7977844561336253609

`2*A028174(n)-A028204(n)`
-/

namespace A028167.P7977844561336253609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028174 n - A028204 n

end

end A028167.P7977844561336253609

namespace A028167

/-- `2*A028174(n)-A028204(n)` -/
def P7977844561336253609.Spec : Prop :=
  ∀ n, P7977844561336253609.a n = A028167 n

end A028167

/-! ## A028167.P11913203577613062981

`A019958(n+1)-A019839(n+1)`
-/

namespace A028167.P11913203577613062981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019958 (n + 1) - A019839 (n + 1)

end

end A028167.P11913203577613062981

namespace A028167

/-- `A019958(n+1)-A019839(n+1)` -/
def P11913203577613062981.Spec : Prop :=
  ∀ n, P11913203577613062981.a n = A028167 n

end A028167

/-! ## A028167.P15257663762787273987

`A028121(n)+A028165(n)-A028130(n)`
-/

namespace A028167.P15257663762787273987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028121 n + (A028165 n - A028130 n)

end

end A028167.P15257663762787273987

namespace A028167

/-- `A028121(n)+A028165(n)-A028130(n)` -/
def P15257663762787273987.Spec : Prop :=
  ∀ n, P15257663762787273987.a n = A028167 n

end A028167

/-!
# A028168: Expansion of 1/((1-5x)(1-6x)(1-7x)(1-11x)).

The programs for A028168, the canonical program `A028168.P109701627506607601` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028168 has offset 0).

The definition of A028168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028168.P109701627506607601

`18*a(n-1)-77*a(n-2)+6^(n+1)-5^(n+1)` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028168

/-- `18*a(n-1)-77*a(n-2)+6^(n+1)-5^(n+1)` -/
def P109701627506607601.Spec : Prop :=
  ∀ n, P109701627506607601.a n = A028168 n

theorem P109701627506607601.correct : P109701627506607601.Spec := by
  intro n
  simp only [A028168]

end A028168

/-! ## A028168.P18069718402416262350

`6^(n+3)/5-7^(n+3)/8-5^(n+3)/12+11^(n+3)/120`
-/

namespace A028168.P18069718402416262350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 3) : ℚ) / 5 - (7 ^ (n + 3) : ℚ) / 8 - (5 ^ (n + 3) : ℚ) / 12 + (11 ^ (n + 3) : ℚ) / 120

end

end A028168.P18069718402416262350

namespace A028168

/-- `6^(n+3)/5-7^(n+3)/8-5^(n+3)/12+11^(n+3)/120` -/
def P18069718402416262350.Spec : Prop :=
  ∀ n, P18069718402416262350.a n = (A028168 n : ℚ)

theorem P18069718402416262350.correct : P18069718402416262350.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028168, Nat.add_sub_cancel, A028168.P18069718402416262350.a, A028168.P109701627506607601.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028168, Nat.add_sub_cancel, A028168.P18069718402416262350.a, A028168.P109701627506607601.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A028168

/-! ## A028168.P12263774834786366893

`(A028175(n)+A028166(n))/2`
-/

namespace A028168.P12263774834786366893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028175 n + A028166 n : ℚ) / 2

end

end A028168.P12263774834786366893

namespace A028168

/-- `(A028175(n)+A028166(n))/2` -/
def P12263774834786366893.Spec : Prop :=
  ∀ n, P12263774834786366893.a n = (A028168 n : ℚ)

end A028168

/-!
# A028169: Expansion of 1/((1-5*x)*(1-6*x)*(1-7*x)*(1-12*x)).

The programs for A028169, the canonical program `A028169.P10920943489971184433` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028169 has offset 0).

The definition of A028169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028169.P10920943489971184433

`6^(n+1)-5^(n+1)+19*a(n-1)-84*a(n-2)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028169

/-- `6^(n+1)-5^(n+1)+19*a(n-1)-84*a(n-2)` -/
def P10920943489971184433.Spec : Prop :=
  ∀ n, P10920943489971184433.a n = A028169 n

theorem P10920943489971184433.correct : P10920943489971184433.Spec := by
  intro n
  simp only [A028169]

end A028169

/-! ## A028169.P6584412726324536460

`(12^(n+3)-3*7^(n+4)+35*6^(n+3)-3*5^(n+4))/210`
-/

namespace A028169.P6584412726324536460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (3 * 7 ^ (n + 4) : ℤ) + (35 * 6 ^ (n + 3) : ℤ) - (3 * 5 ^ (n + 4) : ℤ) : ℚ) / 210

end

end A028169.P6584412726324536460

namespace A028169

/-- `(12^(n+3)-3*7^(n+4)+35*6^(n+3)-3*5^(n+4))/210` -/
def P6584412726324536460.Spec : Prop :=
  ∀ n, P6584412726324536460.a n = (A028169 n : ℚ)

theorem P6584412726324536460.correct : P6584412726324536460.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028169, Nat.add_sub_cancel, A028169.P6584412726324536460.a, A028169.P10920943489971184433.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028169, Nat.add_sub_cancel, A028169.P6584412726324536460.a, A028169.P10920943489971184433.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A028169

/-! ## A028169.P5529409653174129047

`Δ[A022456(n)-A022448(n)]`
-/

namespace A028169.P5529409653174129047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022456 n - A022448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028169.P5529409653174129047

namespace A028169

/-- `Δ[A022456(n)-A022448(n)]` -/
def P5529409653174129047.Spec : Prop :=
  ∀ n, P5529409653174129047.a n = A028169 n

end A028169

/-! ## A028169.P15223410604951830029

`2*A028078(n)-A028058(n)`
-/

namespace A028169.P15223410604951830029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028078 n - A028058 n

end

end A028169.P15223410604951830029

namespace A028169

/-- `2*A028078(n)-A028058(n)` -/
def P15223410604951830029.Spec : Prop :=
  ∀ n, P15223410604951830029.a n = A028169 n

end A028169

/-! ## A028169.P10365856619675020562

`2*A028134(n)-A028119(n)`
-/

namespace A028169.P10365856619675020562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028134 n - A028119 n

end

end A028169.P10365856619675020562

namespace A028169

/-- `2*A028134(n)-A028119(n)` -/
def P10365856619675020562.Spec : Prop :=
  ∀ n, P10365856619675020562.a n = A028169 n

end A028169

/-! ## A028169.P4912876518763639607

`2*A028173(n)-A028183(n)`
-/

namespace A028169.P4912876518763639607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028173 n - A028183 n

end

end A028169.P4912876518763639607

namespace A028169

/-- `2*A028173(n)-A028183(n)` -/
def P4912876518763639607.Spec : Prop :=
  ∀ n, P4912876518763639607.a n = A028169 n

end A028169

/-! ## A028169.P5103981227921315687

`A028031(n)+A028042(n)-A028032(n)`
-/

namespace A028169.P5103981227921315687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028031 n + (A028042 n - A028032 n)

end

end A028169.P5103981227921315687

namespace A028169

/-- `A028031(n)+A028042(n)-A028032(n)` -/
def P5103981227921315687.Spec : Prop :=
  ∀ n, P5103981227921315687.a n = A028169 n

end A028169

/-! ## A028169.P17120547498693652788

`A028119(n)+A028134(n)-A028114(n)`
-/

namespace A028169.P17120547498693652788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028119 n + (A028134 n - A028114 n)

end

end A028169.P17120547498693652788

namespace A028169

/-- `A028119(n)+A028134(n)-A028114(n)` -/
def P17120547498693652788.Spec : Prop :=
  ∀ n, P17120547498693652788.a n = A028169 n

end A028169

/-!
# A028170: Expansion of 1/((1-5x)(1-6x)(1-8x)(1-9x)).

The programs for A028170, the canonical program `A028170.P15875648695307297809` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028170 has offset 0).

The definition of A028170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028170.P15875648695307297809

`(9^(n+3)-2*8^(n+3)+2*6^(n+3)-5^(n+3))/12`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028170

/-- `(9^(n+3)-2*8^(n+3)+2*6^(n+3)-5^(n+3))/12` -/
def P15875648695307297809.Spec : Prop :=
  ∀ n, P15875648695307297809.a n = (A028170 n : ℚ)

end A028170

/-! ## A028170.P4194369715313391248

`2*A028064(n)-A028054(n)`
-/

namespace A028170.P4194369715313391248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028064 n - A028054 n

end

end A028170.P4194369715313391248

namespace A028170

/-- `2*A028064(n)-A028054(n)` -/
def P4194369715313391248.Spec : Prop :=
  ∀ n, P4194369715313391248.a n = A028170 n

end A028170

/-! ## A028170.P4446601545009676876

`2*A028120(n)-A028111(n)`
-/

namespace A028170.P4446601545009676876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028120 n - A028111 n

end

end A028170.P4446601545009676876

namespace A028170

/-- `2*A028120(n)-A028111(n)` -/
def P4446601545009676876.Spec : Prop :=
  ∀ n, P4446601545009676876.a n = A028170 n

end A028170

/-! ## A028170.P14534716945706483409

`2*A028135(n)-A028120(n)`
-/

namespace A028170.P14534716945706483409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028135 n - A028120 n

end

end A028170.P14534716945706483409

namespace A028170

/-- `2*A028135(n)-A028120(n)` -/
def P14534716945706483409.Spec : Prop :=
  ∀ n, P14534716945706483409.a n = A028170 n

end A028170

/-! ## A028170.P12779307341948380178

`2*A028166(n)-A028165(n)`
-/

namespace A028170.P12779307341948380178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028166 n - A028165 n

end

end A028170.P12779307341948380178

namespace A028170

/-- `2*A028166(n)-A028165(n)` -/
def P12779307341948380178.Spec : Prop :=
  ∀ n, P12779307341948380178.a n = A028170 n

end A028170

/-! ## A028170.P6230145494419457258

`2*A028180(n)-A028200(n)`
-/

namespace A028170.P6230145494419457258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028180 n - A028200 n

end

end A028170.P6230145494419457258

namespace A028170

/-- `2*A028180(n)-A028200(n)` -/
def P6230145494419457258.Spec : Prop :=
  ∀ n, P6230145494419457258.a n = A028170 n

end A028170

/-! ## A028170.P15360487445123034213

`A028120(n)+A028131(n)-A028115(n)`
-/

namespace A028170.P15360487445123034213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028120 n + (A028131 n - A028115 n)

end

end A028170.P15360487445123034213

namespace A028170

/-- `A028120(n)+A028131(n)-A028115(n)` -/
def P15360487445123034213.Spec : Prop :=
  ∀ n, P15360487445123034213.a n = A028170 n

end A028170

/-! ## A028170.P10725753656217964362

`A028175(n)+A028180(n)-A028202(n)`
-/

namespace A028170.P10725753656217964362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028175 n + (A028180 n - A028202 n)

end

end A028170.P10725753656217964362

namespace A028170

/-- `A028175(n)+A028180(n)-A028202(n)` -/
def P10725753656217964362.Spec : Prop :=
  ∀ n, P10725753656217964362.a n = A028170 n

end A028170

/-!
# A028171: Expansion of 1/((1-5*x)*(1-6*x)*(1-8*x)*(1-10*x)).

The programs for A028171, the canonical program `A028171.P15945381769155415072` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028171 has offset 0).

The definition of A028171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028171.P15945381769155415072

`6^(n+1)-5^(n+1)+18*a(n-1)-80*a(n-2)` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028171

/-- `6^(n+1)-5^(n+1)+18*a(n-1)-80*a(n-2)` -/
def P15945381769155415072.Spec : Prop :=
  ∀ n, P15945381769155415072.a n = A028171 n

theorem P15945381769155415072.correct : P15945381769155415072.Spec := by
  intro n
  simp only [A028171]

end A028171

/-! ## A028171.P8999578437233590118

`Δ[A021144(n)-A021184(n)]`
-/

namespace A028171.P8999578437233590118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021144 n - A021184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028171.P8999578437233590118

namespace A028171

/-- `Δ[A021144(n)-A021184(n)]` -/
def P8999578437233590118.Spec : Prop :=
  ∀ n, P8999578437233590118.a n = A028171 n

end A028171

/-! ## A028171.P5746941660997090686

`2*A025998(n)-A025987(n)`
-/

namespace A028171.P5746941660997090686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025998 n - A025987 n

end

end A028171.P5746941660997090686

namespace A028171

/-- `2*A025998(n)-A025987(n)` -/
def P5746941660997090686.Spec : Prop :=
  ∀ n, P5746941660997090686.a n = A028171 n

end A028171

/-! ## A028171.P3582734841010095850

`2*A028121(n)-A028112(n)`
-/

namespace A028171.P3582734841010095850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028121 n - A028112 n

end

end A028171.P3582734841010095850

namespace A028171

/-- `2*A028121(n)-A028112(n)` -/
def P3582734841010095850.Spec : Prop :=
  ∀ n, P3582734841010095850.a n = A028171 n

end A028171

/-! ## A028171.P9860303281957655223

`2*A028136(n)-A028121(n)`
-/

namespace A028171.P9860303281957655223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028136 n - A028121 n

end

end A028171.P9860303281957655223

namespace A028171

/-- `2*A028136(n)-A028121(n)` -/
def P9860303281957655223.Spec : Prop :=
  ∀ n, P9860303281957655223.a n = A028171 n

end A028171

/-! ## A028171.P12835647916715605483

`(A028174(n)+A028170(n))/2`
-/

namespace A028171.P12835647916715605483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028174 n + A028170 n : ℚ) / 2

end

end A028171.P12835647916715605483

namespace A028171

/-- `(A028174(n)+A028170(n))/2` -/
def P12835647916715605483.Spec : Prop :=
  ∀ n, P12835647916715605483.a n = (A028171 n : ℚ)

end A028171

/-! ## A028171.P12803084722863083496

`(A028181(n)+A028167(n))/2`
-/

namespace A028171.P12803084722863083496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028181 n + A028167 n : ℚ) / 2

end

end A028171.P12803084722863083496

namespace A028171

/-- `(A028181(n)+A028167(n))/2` -/
def P12803084722863083496.Spec : Prop :=
  ∀ n, P12803084722863083496.a n = (A028171 n : ℚ)

end A028171

/-! ## A028171.P307548993940936729

`(A019839(n+1)-A019783(n+1))/2`
-/

namespace A028171.P307548993940936729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019839 (n + 1) - A019783 (n + 1) : ℚ) / 2

end

end A028171.P307548993940936729

namespace A028171

/-- `(A019839(n+1)-A019783(n+1))/2` -/
def P307548993940936729.Spec : Prop :=
  ∀ n, P307548993940936729.a n = (A028171 n : ℚ)

end A028171

/-! ## A028171.P5260445620666357812

`(A020346(n+1)-A019839(n+1))/2`
-/

namespace A028171.P5260445620666357812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020346 (n + 1) - A019839 (n + 1) : ℚ) / 2

end

end A028171.P5260445620666357812

namespace A028171

/-- `(A020346(n+1)-A019839(n+1))/2` -/
def P5260445620666357812.Spec : Prop :=
  ∀ n, P5260445620666357812.a n = (A028171 n : ℚ)

end A028171

/-! ## A028171.P12471791077379294052

`A028056(n)+A028080(n)-A028054(n)`
-/

namespace A028171.P12471791077379294052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028056 n + (A028080 n - A028054 n)

end

end A028171.P12471791077379294052

namespace A028171

/-- `A028056(n)+A028080(n)-A028054(n)` -/
def P12471791077379294052.Spec : Prop :=
  ∀ n, P12471791077379294052.a n = A028171 n

end A028171

/-!
# A028172: Expansion of 1/((1-5*x)*(1-6*x)*(1-8*x)*(1-11*x)).

The programs for A028172, the canonical program `A028172.P2533487496963848231` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028172 has offset 0).

The definition of A028172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028172.P2533487496963848231

`6^(n+1)-5^(n+1)+19*a(n-1)-88*a(n-2)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028172

/-- `6^(n+1)-5^(n+1)+19*a(n-1)-88*a(n-2)` -/
def P2533487496963848231.Spec : Prop :=
  ∀ n, P2533487496963848231.a n = A028172 n

theorem P2533487496963848231.correct : P2533487496963848231.Spec := by
  intro n
  simp only [A028172]

end A028172

/-! ## A028172.P942615983167783913

`(11^(n+3)-5*8^(n+3)+9*6^(n+3)-5^(n+4))/90`
-/

namespace A028172.P942615983167783913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (5 * 8 ^ (n + 3) : ℤ) + (9 * 6 ^ (n + 3) : ℤ) - (5 ^ (n + 4) : ℤ) : ℚ) / 90

end

end A028172.P942615983167783913

namespace A028172

/-- `(11^(n+3)-5*8^(n+3)+9*6^(n+3)-5^(n+4))/90` -/
def P942615983167783913.Spec : Prop :=
  ∀ n, P942615983167783913.a n = (A028172 n : ℚ)

theorem P942615983167783913.correct : P942615983167783913.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028172, Nat.add_sub_cancel, A028172.P942615983167783913.a, A028172.P2533487496963848231.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028172, Nat.add_sub_cancel, A028172.P942615983167783913.a, A028172.P2533487496963848231.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A028172

/-! ## A028172.P12895651104705942834

`A020593(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A028172.P12895651104705942834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020593 n + 5 * a (n - 1)

end

end A028172.P12895651104705942834

namespace A028172

/-- `A020593(n)+5*a(n-1)` -/
def P12895651104705942834.Spec : Prop :=
  ∀ n, P12895651104705942834.a n = A028172 n

end A028172

/-! ## A028172.P9205723173893945919

`2*A028122(n)-A028113(n)`
-/

namespace A028172.P9205723173893945919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028122 n - A028113 n

end

end A028172.P9205723173893945919

namespace A028172

/-- `2*A028122(n)-A028113(n)` -/
def P9205723173893945919.Spec : Prop :=
  ∀ n, P9205723173893945919.a n = A028172 n

end A028172

/-! ## A028172.P8261974737756021913

`2*A028137(n)-A028122(n)`
-/

namespace A028172.P8261974737756021913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028137 n - A028122 n

end

end A028172.P8261974737756021913

namespace A028172

/-- `2*A028137(n)-A028122(n)` -/
def P8261974737756021913.Spec : Prop :=
  ∀ n, P8261974737756021913.a n = A028172 n

end A028172

/-! ## A028172.P18405083540911909229

`A028057(n)+A028066(n)-A028054(n)`
-/

namespace A028172.P18405083540911909229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028057 n + (A028066 n - A028054 n)

end

end A028172.P18405083540911909229

namespace A028172

/-- `A028057(n)+A028066(n)-A028054(n)` -/
def P18405083540911909229.Spec : Prop :=
  ∀ n, P18405083540911909229.a n = A028172 n

end A028172

/-! ## A028172.P7551944745746900580

`A028133(n)+A028147(n)-A028122(n)`
-/

namespace A028172.P7551944745746900580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028133 n + (A028147 n - A028122 n)

end

end A028172.P7551944745746900580

namespace A028172

/-- `A028133(n)+A028147(n)-A028122(n)` -/
def P7551944745746900580.Spec : Prop :=
  ∀ n, P7551944745746900580.a n = A028172 n

end A028172

/-!
# A028173: Expansion of 1/((1-5*x)*(1-6*x)*(1-8*x)*(1-12*x)).

The programs for A028173, the canonical program `A028173.P6940832907693067162` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028173 has offset 0).

The definition of A028173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028173.P6940832907693067162

`6^(n+1)-5^(n+1)+20*a(n-1)-96*a(n-2)` with `a(0)=1, a(1)=31`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028173

/-- `6^(n+1)-5^(n+1)+20*a(n-1)-96*a(n-2)` -/
def P6940832907693067162.Spec : Prop :=
  ∀ n, P6940832907693067162.a n = A028173 n

theorem P6940832907693067162.correct : P6940832907693067162.Spec := by
  intro n
  simp only [A028173]

end A028173

/-! ## A028173.P10087979397170654261

`(12^(n+3)-7*8^(n+3)+14*6^(n+3)-8*5^(n+3))/168`
-/

namespace A028173.P10087979397170654261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (7 * 8 ^ (n + 3) : ℤ) + (14 * 6 ^ (n + 3) : ℤ) - (8 * 5 ^ (n + 3) : ℤ) : ℚ) / 168

end

end A028173.P10087979397170654261

namespace A028173

/-- `(12^(n+3)-7*8^(n+3)+14*6^(n+3)-8*5^(n+3))/168` -/
def P10087979397170654261.Spec : Prop :=
  ∀ n, P10087979397170654261.a n = (A028173 n : ℚ)

theorem P10087979397170654261.correct : P10087979397170654261.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028173, Nat.add_sub_cancel, A028173.P10087979397170654261.a, A028173.P6940832907693067162.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028173, Nat.add_sub_cancel, A028173.P10087979397170654261.a, A028173.P6940832907693067162.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A028173

/-! ## A028173.P2812431008284821231

`A019869(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A028173.P2812431008284821231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019869 n + 8 * a (n - 1)

end

end A028173.P2812431008284821231

namespace A028173

/-- `A019869(n)+8*a(n-1)` -/
def P2812431008284821231.Spec : Prop :=
  ∀ n, P2812431008284821231.a n = A028173 n

end A028173

/-! ## A028173.P15322004594266360004

`2*A028123(n)-A028114(n)`
-/

namespace A028173.P15322004594266360004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028123 n - A028114 n

end

end A028173.P15322004594266360004

namespace A028173

/-- `2*A028123(n)-A028114(n)` -/
def P15322004594266360004.Spec : Prop :=
  ∀ n, P15322004594266360004.a n = A028173 n

end A028173

/-! ## A028173.P368743883022191001

`2*A028138(n)-A028123(n)`
-/

namespace A028173.P368743883022191001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028138 n - A028123 n

end

end A028173.P368743883022191001

namespace A028173

/-- `2*A028138(n)-A028123(n)` -/
def P368743883022191001.Spec : Prop :=
  ∀ n, P368743883022191001.a n = A028173 n

end A028173

/-! ## A028173.P16091944659866535020

`A028121(n)+A028128(n)-A028114(n)`
-/

namespace A028173.P16091944659866535020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028121 n + (A028128 n - A028114 n)

end

end A028173.P16091944659866535020

namespace A028173

/-- `A028121(n)+A028128(n)-A028114(n)` -/
def P16091944659866535020.Spec : Prop :=
  ∀ n, P16091944659866535020.a n = A028173 n

end A028173

/-! ## A028173.P4179939562421778748

`A028126(n)+A028135(n)-A028120(n)`
-/

namespace A028173.P4179939562421778748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028126 n + (A028135 n - A028120 n)

end

end A028173.P4179939562421778748

namespace A028173

/-- `A028126(n)+A028135(n)-A028120(n)` -/
def P4179939562421778748.Spec : Prop :=
  ∀ n, P4179939562421778748.a n = A028173 n

end A028173

/-!
# A028174: Expansion of 1/((1-5*x)*(1-6*x)*(1-9*x)*(1-10*x)).

The programs for A028174, the canonical program `A028174.P9320658813268607088` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028174 has offset 0).

The definition of A028174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028174.P9320658813268607088

`6^(n+1)-5^(n+1)+19*a(n-1)-90*a(n-2)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028174

/-- `6^(n+1)-5^(n+1)+19*a(n-1)-90*a(n-2)` -/
def P9320658813268607088.Spec : Prop :=
  ∀ n, P9320658813268607088.a n = A028174 n

theorem P9320658813268607088.correct : P9320658813268607088.Spec := by
  intro n
  simp only [A028174]

end A028174

/-! ## A028174.P10489266940711460978

`(2*10^(n+2)-3*9^(n+2)+2*6^(n+2)-5^(n+2))/4`
-/

namespace A028174.P10489266940711460978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 10 ^ (n + 2) : ℤ) - (3 * 9 ^ (n + 2) : ℤ) + (2 * 6 ^ (n + 2) : ℤ) - (5 ^ (n + 2) : ℤ) : ℚ) / 4

end

end A028174.P10489266940711460978

namespace A028174

/-- `(2*10^(n+2)-3*9^(n+2)+2*6^(n+2)-5^(n+2))/4` -/
def P10489266940711460978.Spec : Prop :=
  ∀ n, P10489266940711460978.a n = (A028174 n : ℚ)

theorem P10489266940711460978.correct : P10489266940711460978.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028174, Nat.add_sub_cancel, A028174.P10489266940711460978.a, A028174.P9320658813268607088.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028174, Nat.add_sub_cancel, A028174.P10489266940711460978.a, A028174.P9320658813268607088.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A028174

/-! ## A028174.P17768960196809383120

`2*A028139(n)-A028124(n)`
-/

namespace A028174.P17768960196809383120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028139 n - A028124 n

end

end A028174.P17768960196809383120

namespace A028174

/-- `2*A028139(n)-A028124(n)` -/
def P17768960196809383120.Spec : Prop :=
  ∀ n, P17768960196809383120.a n = A028174 n

end A028174

/-! ## A028174.P5972464173263625843

`2*A028171(n)-A028170(n)`
-/

namespace A028174.P5972464173263625843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028171 n - A028170 n

end

end A028174.P5972464173263625843

namespace A028174

/-- `2*A028171(n)-A028170(n)` -/
def P5972464173263625843.Spec : Prop :=
  ∀ n, P5972464173263625843.a n = A028174 n

end A028174

/-! ## A028174.P18217311224322234411

`A019839(n+1)-A019793(n+1)`
-/

namespace A028174.P18217311224322234411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019839 (n + 1) - A019793 (n + 1)

end

end A028174.P18217311224322234411

namespace A028174

/-- `A019839(n+1)-A019793(n+1)` -/
def P18217311224322234411.Spec : Prop :=
  ∀ n, P18217311224322234411.a n = A028174 n

end A028174

/-! ## A028174.P3971621691538338065

`A028076(n)+A028093(n)-A028061(n)`
-/

namespace A028174.P3971621691538338065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028076 n + (A028093 n - A028061 n)

end

end A028174.P3971621691538338065

namespace A028174

/-- `A028076(n)+A028093(n)-A028061(n)` -/
def P3971621691538338065.Spec : Prop :=
  ∀ n, P3971621691538338065.a n = A028174 n

end A028174

/-! ## A028174.P18389018767268471866

`A028135(n)+A028155(n)-A028124(n)`
-/

namespace A028174.P18389018767268471866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028135 n + (A028155 n - A028124 n)

end

end A028174.P18389018767268471866

namespace A028174

/-- `A028135(n)+A028155(n)-A028124(n)` -/
def P18389018767268471866.Spec : Prop :=
  ∀ n, P18389018767268471866.a n = A028174 n

end A028174

/-!
# A028175: Expansion of 1/((1-5x)(1-6x)(1-9x)(1-11x)).

The programs for A028175, the canonical program `A028175.P16064367084335486380` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028175 has offset 0).

The definition of A028175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028175.P16064367084335486380

`(2*11^(n+3)-5*9^(n+3)+8*6^(n+3)-5^(n+4))/120`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028175

/-- `(2*11^(n+3)-5*9^(n+3)+8*6^(n+3)-5^(n+4))/120` -/
def P16064367084335486380.Spec : Prop :=
  ∀ n, P16064367084335486380.a n = (A028175 n : ℚ)

end A028175

/-! ## A028175.P11801825896816850767

`2*A028069(n)-A028057(n)`
-/

namespace A028175.P11801825896816850767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028069 n - A028057 n

end

end A028175.P11801825896816850767

namespace A028175

/-- `2*A028069(n)-A028057(n)` -/
def P11801825896816850767.Spec : Prop :=
  ∀ n, P11801825896816850767.a n = A028175 n

end A028175

/-! ## A028175.P9042945565736277426

`2*A028081(n)-A028064(n)`
-/

namespace A028175.P9042945565736277426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028081 n - A028064 n

end

end A028175.P9042945565736277426

namespace A028175

/-- `2*A028081(n)-A028064(n)` -/
def P9042945565736277426.Spec : Prop :=
  ∀ n, P9042945565736277426.a n = A028175 n

end A028175

/-! ## A028175.P8541204617111259067

`2*A028168(n)-A028166(n)`
-/

namespace A028175.P8541204617111259067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028168 n - A028166 n

end

end A028175.P8541204617111259067

namespace A028175

/-- `2*A028168(n)-A028166(n)` -/
def P8541204617111259067.Spec : Prop :=
  ∀ n, P8541204617111259067.a n = A028175 n

end A028175

/-! ## A028175.P12235857598046314745

`A028057(n)+A028084(n)-A028055(n)`
-/

namespace A028175.P12235857598046314745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028057 n + (A028084 n - A028055 n)

end

end A028175.P12235857598046314745

namespace A028175

/-- `A028057(n)+A028084(n)-A028055(n)` -/
def P12235857598046314745.Spec : Prop :=
  ∀ n, P12235857598046314745.a n = A028175 n

end A028175

/-! ## A028175.P15215116135639972685

`A028068(n)+A028071(n)-A028057(n)`
-/

namespace A028175.P15215116135639972685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028068 n + (A028071 n - A028057 n)

end

end A028175.P15215116135639972685

namespace A028175

/-- `A028068(n)+A028071(n)-A028057(n)` -/
def P15215116135639972685.Spec : Prop :=
  ∀ n, P15215116135639972685.a n = A028175 n

end A028175

/-! ## A028175.P17961936629451395370

`A028069(n)+A028077(n)-A028060(n)`
-/

namespace A028175.P17961936629451395370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028069 n + (A028077 n - A028060 n)

end

end A028175.P17961936629451395370

namespace A028175

/-- `A028069(n)+A028077(n)-A028060(n)` -/
def P17961936629451395370.Spec : Prop :=
  ∀ n, P17961936629451395370.a n = A028175 n

end A028175

/-!
# A028176: Expansion of 1/((1-5*x)*(1-6*x)*(1-9*x)*(1-12*x)).

The programs for A028176, the canonical program `A028176.P17481457850777747027` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028176 has offset 0).

The definition of A028176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028176.P17481457850777747027

`6^(n+1)-5^(n+1)+21*a(n-1)-108*a(n-2)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028176

/-- `6^(n+1)-5^(n+1)+21*a(n-1)-108*a(n-2)` -/
def P17481457850777747027.Spec : Prop :=
  ∀ n, P17481457850777747027.a n = A028176 n

theorem P17481457850777747027.correct : P17481457850777747027.Spec := by
  intro n
  simp only [A028176]

end A028176

/-! ## A028176.P8465150252106477409

`A019869(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028176.P8465150252106477409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019869 n + 9 * a (n - 1)

end

end A028176.P8465150252106477409

namespace A028176

/-- `A019869(n)+9*a(n-1)` -/
def P8465150252106477409.Spec : Prop :=
  ∀ n, P8465150252106477409.a n = A028176 n

end A028176

/-! ## A028176.P11000274848951945492

`2*A028070(n)-A028058(n)`
-/

namespace A028176.P11000274848951945492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028070 n - A028058 n

end

end A028176.P11000274848951945492

namespace A028176

/-- `2*A028070(n)-A028058(n)` -/
def P11000274848951945492.Spec : Prop :=
  ∀ n, P11000274848951945492.a n = A028176 n

end A028176

/-! ## A028176.P4989711451729751277

`2*A028141(n)-A028126(n)`
-/

namespace A028176.P4989711451729751277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028141 n - A028126 n

end

end A028176.P4989711451729751277

namespace A028176

/-- `2*A028141(n)-A028126(n)` -/
def P4989711451729751277.Spec : Prop :=
  ∀ n, P4989711451729751277.a n = A028176 n

end A028176

/-! ## A028176.P2339669230305547304

`A028058(n)+A028070(n)-A028055(n)`
-/

namespace A028176.P2339669230305547304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028058 n + (A028070 n - A028055 n)

end

end A028176.P2339669230305547304

namespace A028176

/-- `A028058(n)+A028070(n)-A028055(n)` -/
def P2339669230305547304.Spec : Prop :=
  ∀ n, P2339669230305547304.a n = A028176 n

end A028176

/-!
# A028177: Expansion of 1/((1-5*x)*(1-6*x)*(1-10*x)*(1-11*x)).

The programs for A028177, the canonical program `A028177.P1998973076957300471` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028177 has offset 0).

The definition of A028177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028177.P1998973076957300471

`6^(n+1)-5^(n+1)+21*a(n-1)-110*a(n-2)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028177

/-- `6^(n+1)-5^(n+1)+21*a(n-1)-110*a(n-2)` -/
def P1998973076957300471.Spec : Prop :=
  ∀ n, P1998973076957300471.a n = A028177 n

theorem P1998973076957300471.correct : P1998973076957300471.Spec := by
  intro n
  simp only [A028177]

end A028177

/-! ## A028177.P5342229665463912749

`2*A028142(n)-A028127(n)`
-/

namespace A028177.P5342229665463912749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028142 n - A028127 n

end

end A028177.P5342229665463912749

namespace A028177

/-- `2*A028142(n)-A028127(n)` -/
def P5342229665463912749.Spec : Prop :=
  ∀ n, P5342229665463912749.a n = A028177 n

end A028177

/-! ## A028177.P4503076592832436500

`2*A028175(n)-A028174(n)`
-/

namespace A028177.P4503076592832436500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028175 n - A028174 n

end

end A028177.P4503076592832436500

namespace A028177

/-- `2*A028175(n)-A028174(n)` -/
def P4503076592832436500.Spec : Prop :=
  ∀ n, P4503076592832436500.a n = A028177 n

end A028177

/-! ## A028177.P9727300903211789512

`A028127(n)+A028137(n)-A028121(n)`
-/

namespace A028177.P9727300903211789512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028127 n + (A028137 n - A028121 n)

end

end A028177.P9727300903211789512

namespace A028177

/-- `A028127(n)+A028137(n)-A028121(n)` -/
def P9727300903211789512.Spec : Prop :=
  ∀ n, P9727300903211789512.a n = A028177 n

end A028177

/-! ## A028177.P13701399933097877329

`2*A028178(n)-A028179(n)`
-/

namespace A028177.P13701399933097877329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028178 n - A028179 n

end

end A028177.P13701399933097877329

namespace A028177

/-- `2*A028178(n)-A028179(n)` -/
def P13701399933097877329.Spec : Prop :=
  ∀ n, P13701399933097877329.a n = A028177 n

end A028177

/-! ## A028177.P4915977972179779074

`A028173(n)+A028194(n)-A028179(n)`
-/

namespace A028177.P4915977972179779074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028173 n + (A028194 n - A028179 n)

end

end A028177.P4915977972179779074

namespace A028177

/-- `A028173(n)+A028194(n)-A028179(n)` -/
def P4915977972179779074.Spec : Prop :=
  ∀ n, P4915977972179779074.a n = A028177 n

end A028177

/-!
# A028178: Expansion of 1/((1-5x)(1-6x)(1-10x)(1-12x)).

The programs for A028178, there is no canonical definition to state claims against.
-/

/-! ## A028178.P5497194857857548727

`Δ[A016239(n)-A016246(n)]`
-/

namespace A028178.P5497194857857548727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016239 n - A016246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028178.P5497194857857548727

/-! ## A028178.P8694484964146175154

`2*A028173(n)-A028171(n)`
-/

namespace A028178.P8694484964146175154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028173 n - A028171 n

end

end A028178.P8694484964146175154

/-! ## A028178.P11655554334593658006

`(A028179(n)+A028177(n))/2`
-/

namespace A028178.P11655554334593658006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028179 n + A028177 n : ℚ) / 2

end

end A028178.P11655554334593658006

/-! ## A028178.P15769220747244016016

`(A028194(n)+A028173(n))/2`
-/

namespace A028178.P15769220747244016016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028194 n + A028173 n : ℚ) / 2

end

end A028178.P15769220747244016016

/-! ## A028178.P5915657381312591077

`(A028197(n)+A028174(n))/2`
-/

namespace A028178.P5915657381312591077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028197 n + A028174 n : ℚ) / 2

end

end A028178.P5915657381312591077

/-! ## A028178.P13510512586018868086

`A028114(n)+A028128(n)-A028112(n)`
-/

namespace A028178.P13510512586018868086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028114 n + (A028128 n - A028112 n)

end

end A028178.P13510512586018868086

/-!
# A028179: Expansion of 1/((1-5*x)*(1-6*x)*(1-11*x)*(1-12*x)).

The programs for A028179, the canonical program `A028179.P10764679583639073578` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028179 has offset 0).

The definition of A028179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028179.P10764679583639073578

`6^(n+1)-5^(n+1)+23*a(n-1)-132*a(n-2)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028179

/-- `6^(n+1)-5^(n+1)+23*a(n-1)-132*a(n-2)` -/
def P10764679583639073578.Spec : Prop :=
  ∀ n, P10764679583639073578.a n = A028179 n

theorem P10764679583639073578.correct : P10764679583639073578.Spec := by
  intro n
  simp only [A028179]

end A028179

/-! ## A028179.P4565776224612509224

`(5*12^(n+3)-7*11^(n+3)+7*6^(n+3)-5^(n+4))/210`
-/

namespace A028179.P4565776224612509224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 12 ^ (n + 3) : ℤ) - (7 * 11 ^ (n + 3) : ℤ) + (7 * 6 ^ (n + 3) : ℤ) - (5 ^ (n + 4) : ℤ) : ℚ) / 210

end

end A028179.P4565776224612509224

namespace A028179

/-- `(5*12^(n+3)-7*11^(n+3)+7*6^(n+3)-5^(n+4))/210` -/
def P4565776224612509224.Spec : Prop :=
  ∀ n, P4565776224612509224.a n = (A028179 n : ℚ)

theorem P4565776224612509224.correct : P4565776224612509224.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028179, Nat.add_sub_cancel, A028179.P4565776224612509224.a, A028179.P10764679583639073578.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028179, Nat.add_sub_cancel, A028179.P4565776224612509224.a, A028179.P10764679583639073578.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A028179

/-! ## A028179.P5321576379184909756

`2*A028178(n)-A028177(n)`
-/

namespace A028179.P5321576379184909756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028178 n - A028177 n

end

end A028179.P5321576379184909756

namespace A028179

/-- `2*A028178(n)-A028177(n)` -/
def P5321576379184909756.Spec : Prop :=
  ∀ n, P5321576379184909756.a n = A028179 n

end A028179

/-! ## A028179.P5436549292944901904

`2*A028192(n)-A028211(n)`
-/

namespace A028179.P5436549292944901904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028192 n - A028211 n

end

end A028179.P5436549292944901904

namespace A028179

/-- `2*A028192(n)-A028211(n)` -/
def P5436549292944901904.Spec : Prop :=
  ∀ n, P5436549292944901904.a n = A028179 n

end A028179

/-! ## A028179.P14668842900826415594

`A028144(n)+A028144(n)-A028129(n)`
-/

namespace A028179.P14668842900826415594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028144 n + (A028144 n - A028129 n)

end

end A028179.P14668842900826415594

namespace A028179

/-- `A028144(n)+A028144(n)-A028129(n)` -/
def P14668842900826415594.Spec : Prop :=
  ∀ n, P14668842900826415594.a n = A028179 n

end A028179

/-! ## A028179.P11026252177600522159

`A028173(n)+A028194(n)-A028177(n)`
-/

namespace A028179.P11026252177600522159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028173 n + (A028194 n - A028177 n)

end

end A028179.P11026252177600522159

namespace A028179

/-- `A028173(n)+A028194(n)-A028177(n)` -/
def P11026252177600522159.Spec : Prop :=
  ∀ n, P11026252177600522159.a n = A028179 n

end A028179

/-! ## A028179.P4121262578609785070

`A028174(n)+A028197(n)-A028177(n)`
-/

namespace A028179.P4121262578609785070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028174 n + (A028197 n - A028177 n)

end

end A028179.P4121262578609785070

namespace A028179

/-- `A028174(n)+A028197(n)-A028177(n)` -/
def P4121262578609785070.Spec : Prop :=
  ∀ n, P4121262578609785070.a n = A028179 n

end A028179

/-! ## A028179.P5522830513627648999

`2*A028144(n)-A028129(n)`
-/

namespace A028179.P5522830513627648999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028144 n - A028129 n

end

end A028179.P5522830513627648999

namespace A028179

/-- `2*A028144(n)-A028129(n)` -/
def P5522830513627648999.Spec : Prop :=
  ∀ n, P5522830513627648999.a n = A028179 n

end A028179

/-!
# A028180: Expansion of 1/((1-5*x)*(1-7*x)*(1-8*x)*(1-9*x)).

The programs for A028180, the canonical program `A028180.P3818867424606021701` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028180 has offset 0).

The definition of A028180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028180.P3818867424606021701

`(7^(n+1)-5^(n+1))/2+17*a(n-1)-72*a(n-2)` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028180

/-- `(7^(n+1)-5^(n+1))/2+17*a(n-1)-72*a(n-2)` -/
def P3818867424606021701.Spec : Prop :=
  ∀ n, P3818867424606021701.a n = (A028180 n : ℚ)

end A028180

/-! ## A028180.P1342447800104988021

`(3*9^(n+3)-8^(n+4)+6*7^(n+3)-5^(n+3))/24`
-/

namespace A028180.P1342447800104988021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ (n + 3) : ℤ) - (8 ^ (n + 4) : ℤ) + (6 * 7 ^ (n + 3) : ℤ) - (5 ^ (n + 3) : ℤ) : ℚ) / 24

end

end A028180.P1342447800104988021

namespace A028180

/-- `(3*9^(n+3)-8^(n+4)+6*7^(n+3)-5^(n+3))/24` -/
def P1342447800104988021.Spec : Prop :=
  ∀ n, P1342447800104988021.a n = (A028180 n : ℚ)

end A028180

/-! ## A028180.P3835646214354616833

`Δ[A022453(n)-A022452(n)]`
-/

namespace A028180.P3835646214354616833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022453 n - A022452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028180.P3835646214354616833

namespace A028180

/-- `Δ[A022453(n)-A022452(n)]` -/
def P3835646214354616833.Spec : Prop :=
  ∀ n, P3835646214354616833.a n = A028180 n

end A028180

/-! ## A028180.P3034348570739902964

`Δ[A022469(n)-A022453(n)]`
-/

namespace A028180.P3034348570739902964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022469 n - A022453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028180.P3034348570739902964

namespace A028180

/-- `Δ[A022469(n)-A022453(n)]` -/
def P3034348570739902964.Spec : Prop :=
  ∀ n, P3034348570739902964.a n = A028180 n

end A028180

/-! ## A028180.P2067801616394594798

`2*A028089(n)-A028064(n)`
-/

namespace A028180.P2067801616394594798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028089 n - A028064 n

end

end A028180.P2067801616394594798

namespace A028180

/-- `2*A028089(n)-A028064(n)` -/
def P2067801616394594798.Spec : Prop :=
  ∀ n, P2067801616394594798.a n = A028180 n

end A028180

/-! ## A028180.P3130492706548764963

`2*A028170(n)-A028166(n)`
-/

namespace A028180.P3130492706548764963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028170 n - A028166 n

end

end A028180.P3130492706548764963

namespace A028180

/-- `2*A028170(n)-A028166(n)` -/
def P3130492706548764963.Spec : Prop :=
  ∀ n, P3130492706548764963.a n = A028180 n

end A028180

/-! ## A028180.P9238624334171802508

`A019943(n+1)-A019928(n+1)`
-/

namespace A028180.P9238624334171802508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019943 (n + 1) - A019928 (n + 1)

end

end A028180.P9238624334171802508

namespace A028180

/-- `A019943(n+1)-A019928(n+1)` -/
def P9238624334171802508.Spec : Prop :=
  ∀ n, P9238624334171802508.a n = A028180 n

end A028180

/-!
# A028181: Expansion of 1/((1-5*x)*(1-7*x)*(1-8*x)*(1-10*x)).

The programs for A028181, the canonical program `A028181.P10521670038160062120` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028181 has offset 0).

The definition of A028181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028181.P10521670038160062120

`(7^(n+1)-5^(n+1))/2+18*a(n-1)-80*a(n-2)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028181

/-- `(7^(n+1)-5^(n+1))/2+18*a(n-1)-80*a(n-2)` -/
def P10521670038160062120.Spec : Prop :=
  ∀ n, P10521670038160062120.a n = (A028181 n : ℚ)

end A028181

/-! ## A028181.P12420240596503228821

`(10^(n+3)-5*8^(n+3)+5*7^(n+3)-5^(n+3))/30`
-/

namespace A028181.P12420240596503228821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (5 * 8 ^ (n + 3) : ℤ) + (5 * 7 ^ (n + 3) : ℤ) - (5 ^ (n + 3) : ℤ) : ℚ) / 30

end

end A028181.P12420240596503228821

namespace A028181

/-- `(10^(n+3)-5*8^(n+3)+5*7^(n+3)-5^(n+3))/30` -/
def P12420240596503228821.Spec : Prop :=
  ∀ n, P12420240596503228821.a n = (A028181 n : ℚ)

end A028181

/-! ## A028181.P15309697081128459815

`2*A028006(n)-A025994(n)`
-/

namespace A028181.P15309697081128459815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028006 n - A025994 n

end

end A028181.P15309697081128459815

namespace A028181

/-- `2*A028006(n)-A025994(n)` -/
def P15309697081128459815.Spec : Prop :=
  ∀ n, P15309697081128459815.a n = A028181 n

end A028181

/-! ## A028181.P16625029002233887300

`2*A028090(n)-A028065(n)`
-/

namespace A028181.P16625029002233887300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028090 n - A028065 n

end

end A028181.P16625029002233887300

namespace A028181

/-- `2*A028090(n)-A028065(n)` -/
def P16625029002233887300.Spec : Prop :=
  ∀ n, P16625029002233887300.a n = A028181 n

end A028181

/-! ## A028181.P16915528184342254887

`A025998(n)+A028006(n)-A025992(n)`
-/

namespace A028181.P16915528184342254887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025998 n + (A028006 n - A025992 n)

end

end A028181.P16915528184342254887

namespace A028181

/-- `A025998(n)+A028006(n)-A025992(n)` -/
def P16915528184342254887.Spec : Prop :=
  ∀ n, P16915528184342254887.a n = A028181 n

end A028181

/-! ## A028181.P1316138061570877893

`A028120(n)+A028124(n)-A028115(n)`
-/

namespace A028181.P1316138061570877893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028120 n + (A028124 n - A028115 n)

end

end A028181.P1316138061570877893

namespace A028181

/-- `A028120(n)+A028124(n)-A028115(n)` -/
def P1316138061570877893.Spec : Prop :=
  ∀ n, P1316138061570877893.a n = A028181 n

end A028181

/-! ## A028181.P1427371712576858285

`A028124(n)+A028145(n)-A028120(n)`
-/

namespace A028181.P1427371712576858285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028124 n + (A028145 n - A028120 n)

end

end A028181.P1427371712576858285

namespace A028181

/-- `A028124(n)+A028145(n)-A028120(n)` -/
def P1427371712576858285.Spec : Prop :=
  ∀ n, P1427371712576858285.a n = A028181 n

end A028181

/-! ## A028181.P18114701983650326453

`A028124(n)+A028170(n)-A028131(n)`
-/

namespace A028181.P18114701983650326453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028124 n + (A028170 n - A028131 n)

end

end A028181.P18114701983650326453

namespace A028181

/-- `A028124(n)+A028170(n)-A028131(n)` -/
def P18114701983650326453.Spec : Prop :=
  ∀ n, P18114701983650326453.a n = A028181 n

end A028181

/-!
# A028182: Expansion of 1/((1-5*x)*(1-7*x)*(1-8*x)*(1-11*x)).

The programs for A028182, the canonical program `A028182.P5736683234270697353` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028182 has offset 0).

The definition of A028182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028182.P5736683234270697353

`(7^(n+1)-5^(n+1))/2+19*a(n-1)-88*a(n-2)` with `a(0)=1, a(1)=31`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028182

/-- `(7^(n+1)-5^(n+1))/2+19*a(n-1)-88*a(n-2)` -/
def P5736683234270697353.Spec : Prop :=
  ∀ n, P5736683234270697353.a n = (A028182 n : ℚ)

end A028182

/-! ## A028182.P2226154111454590248

`(11^(n+3)-8^(n+4)+9*7^(n+3)-2*5^(n+3))/72`
-/

namespace A028182.P2226154111454590248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (8 ^ (n + 4) : ℤ) + (9 * 7 ^ (n + 3) : ℤ) - (2 * 5 ^ (n + 3) : ℤ) : ℚ) / 72

end

end A028182.P2226154111454590248

namespace A028182

/-- `(11^(n+3)-8^(n+4)+9*7^(n+3)-2*5^(n+3))/72` -/
def P2226154111454590248.Spec : Prop :=
  ∀ n, P2226154111454590248.a n = (A028182 n : ℚ)

end A028182

/-! ## A028182.P4493960587106733475

`2*A028007(n)-A025995(n)`
-/

namespace A028182.P4493960587106733475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028007 n - A025995 n

end

end A028182.P4493960587106733475

namespace A028182

/-- `2*A028007(n)-A025995(n)` -/
def P4493960587106733475.Spec : Prop :=
  ∀ n, P4493960587106733475.a n = A028182 n

end A028182

/-! ## A028182.P9708047310519064456

`2*A028066(n)-A028059(n)`
-/

namespace A028182.P9708047310519064456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028066 n - A028059 n

end

end A028182.P9708047310519064456

namespace A028182

/-- `2*A028066(n)-A028059(n)` -/
def P9708047310519064456.Spec : Prop :=
  ∀ n, P9708047310519064456.a n = A028182 n

end A028182

/-! ## A028182.P1090332846963799610

`2*A028172(n)-A028168(n)`
-/

namespace A028182.P1090332846963799610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028172 n - A028168 n

end

end A028182.P1090332846963799610

namespace A028182

/-- `2*A028172(n)-A028168(n)` -/
def P1090332846963799610.Spec : Prop :=
  ∀ n, P1090332846963799610.a n = A028182 n

end A028182

/-! ## A028182.P6938311058906029859

`A028118(n)+A028122(n)-A028115(n)`
-/

namespace A028182.P6938311058906029859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028118 n + (A028122 n - A028115 n)

end

end A028182.P6938311058906029859

namespace A028182

/-- `A028118(n)+A028122(n)-A028115(n)` -/
def P6938311058906029859.Spec : Prop :=
  ∀ n, P6938311058906029859.a n = A028182 n

end A028182

/-! ## A028182.P8775583233203664915

`A028168(n)+A028202(n)-A028172(n)`
-/

namespace A028182.P8775583233203664915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028168 n + (A028202 n - A028172 n)

end

end A028182.P8775583233203664915

namespace A028182

/-- `A028168(n)+A028202(n)-A028172(n)` -/
def P8775583233203664915.Spec : Prop :=
  ∀ n, P8775583233203664915.a n = A028182 n

end A028182

/-!
# A028183: Expansion of 1/((1-5*x)*(1-7*x)*(1-8*x)*(1-12*x)).

The programs for A028183, the canonical program `A028183.P13087217175381346763` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028183 has offset 0).

The definition of A028183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028183.P13087217175381346763

`(7^(n+1)-5^(n+1))/2+20*a(n-1)-96*a(n-2)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028183

/-- `(7^(n+1)-5^(n+1))/2+20*a(n-1)-96*a(n-2)` -/
def P13087217175381346763.Spec : Prop :=
  ∀ n, P13087217175381346763.a n = (A028183 n : ℚ)

end A028183

/-! ## A028183.P9501379687438557022

`2*A028119(n)-A028115(n)`
-/

namespace A028183.P9501379687438557022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028119 n - A028115 n

end

end A028183.P9501379687438557022

namespace A028183

/-- `2*A028119(n)-A028115(n)` -/
def P9501379687438557022.Spec : Prop :=
  ∀ n, P9501379687438557022.a n = A028183 n

end A028183

/-! ## A028183.P5886569240844825391

`2*A028173(n)-A028169(n)`
-/

namespace A028183.P5886569240844825391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028173 n - A028169 n

end

end A028183.P5886569240844825391

namespace A028183

/-- `2*A028173(n)-A028169(n)` -/
def P5886569240844825391.Spec : Prop :=
  ∀ n, P5886569240844825391.a n = A028183 n

end A028183

/-! ## A028183.P13939281544541287240

`2*A028192(n)-A028221(n)`
-/

namespace A028183.P13939281544541287240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028192 n - A028221 n

end

end A028183.P13939281544541287240

namespace A028183

/-- `2*A028192(n)-A028221(n)` -/
def P13939281544541287240.Spec : Prop :=
  ∀ n, P13939281544541287240.a n = A028183 n

end A028183

/-! ## A028183.P9364874524764821428

`A028063(n)+A028067(n)-A028059(n)`
-/

namespace A028183.P9364874524764821428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028063 n + (A028067 n - A028059 n)

end

end A028183.P9364874524764821428

namespace A028183

/-- `A028063(n)+A028067(n)-A028059(n)` -/
def P9364874524764821428.Spec : Prop :=
  ∀ n, P9364874524764821428.a n = A028183 n

end A028183

/-! ## A028183.P12087086515372546090

`A028114(n)+A028134(n)-A028115(n)`
-/

namespace A028183.P12087086515372546090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028114 n + (A028134 n - A028115 n)

end

end A028183.P12087086515372546090

namespace A028183

/-- `A028114(n)+A028134(n)-A028115(n)` -/
def P12087086515372546090.Spec : Prop :=
  ∀ n, P12087086515372546090.a n = A028183 n

end A028183

/-!
# A028184: Expansion of 1/((1-5x)(1-7x)(1-9x)(1-10x)).

The programs for A028184, there is no canonical definition to state claims against.
-/

/-! ## A028184.P7971283030427746959

`Δ[A022454(n)-A022453(n)]`
-/

namespace A028184.P7971283030427746959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022454 n - A022453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028184.P7971283030427746959

/-! ## A028184.P17282194945351249275

`2*A028093(n)-A028068(n)`
-/

namespace A028184.P17282194945351249275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028093 n - A028068 n

end

end A028184.P17282194945351249275

/-! ## A028184.P17007989828113243213

`2*A028124(n)-A028116(n)`
-/

namespace A028184.P17007989828113243213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028124 n - A028116 n

end

end A028184.P17007989828113243213

/-! ## A028184.P14372588985728913700

`2*A028181(n)-A028180(n)`
-/

namespace A028184.P14372588985728913700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028181 n - A028180 n

end

end A028184.P14372588985728913700

/-! ## A028184.P11485692937802439330

`A019958(n+1)-A019943(n+1)`
-/

namespace A028184.P11485692937802439330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019958 (n + 1) - A019943 (n + 1)

end

end A028184.P11485692937802439330

/-! ## A028184.P1026558133102637343

`(A028190(n)+A028181(n))/2`
-/

namespace A028184.P1026558133102637343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028190 n + A028181 n : ℚ) / 2

end

end A028184.P1026558133102637343

/-! ## A028184.P12479530542330278162

`(A028204(n)+A028174(n))/2`
-/

namespace A028184.P12479530542330278162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028204 n + A028174 n : ℚ) / 2

end

end A028184.P12479530542330278162

/-! ## A028184.P1559803584981560915

`2*A028185(n)-A028187(n)`
-/

namespace A028184.P1559803584981560915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028185 n - A028187 n

end

end A028184.P1559803584981560915

/-!
# A028185: Expansion of 1/((1-5*x)*(1-7*x)*(1-9*x)*(1-11*x)).

The programs for A028185, the canonical program `A028185.P13775091130431779179` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028185 has offset 0).

The definition of A028185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028185.P13775091130431779179

`(7^(n+1)-5^(n+1))/2+20*a(n-1)-99*a(n-2)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028185

/-- `(7^(n+1)-5^(n+1))/2+20*a(n-1)-99*a(n-2)` -/
def P13775091130431779179.Spec : Prop :=
  ∀ n, P13775091130431779179.a n = (A028185 n : ℚ)

end A028185

/-! ## A028185.P6832963541378989176

`(11^(n+3)-3*9^(n+3)+3*7^(n+3)-5^(n+3))/48`
-/

namespace A028185.P6832963541378989176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (3 * 9 ^ (n + 3) : ℤ) + (3 * 7 ^ (n + 3) : ℤ) - (5 ^ (n + 3) : ℤ) : ℚ) / 48

end

end A028185.P6832963541378989176

namespace A028185

/-- `(11^(n+3)-3*9^(n+3)+3*7^(n+3)-5^(n+3))/48` -/
def P6832963541378989176.Spec : Prop :=
  ∀ n, P6832963541378989176.a n = (A028185 n : ℚ)

end A028185

/-! ## A028185.P15292835231350719601

`2*A028069(n)-A028060(n)`
-/

namespace A028185.P15292835231350719601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028069 n - A028060 n

end

end A028185.P15292835231350719601

namespace A028185

/-- `2*A028069(n)-A028060(n)` -/
def P15292835231350719601.Spec : Prop :=
  ∀ n, P15292835231350719601.a n = A028185 n

end A028185

/-! ## A028185.P17097977789198782254

`2*A028094(n)-A028069(n)`
-/

namespace A028185.P17097977789198782254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028094 n - A028069 n

end

end A028185.P17097977789198782254

namespace A028185

/-- `2*A028094(n)-A028069(n)` -/
def P17097977789198782254.Spec : Prop :=
  ∀ n, P17097977789198782254.a n = A028185 n

end A028185

/-! ## A028185.P26064840864653191

`A022455(n)+A024772(n)-A022452(n)`
-/

namespace A028185.P26064840864653191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022455 n + (A024772 n - A022452 n)

end

end A028185.P26064840864653191

namespace A028185

/-- `A022455(n)+A024772(n)-A022452(n)` -/
def P26064840864653191.Spec : Prop :=
  ∀ n, P26064840864653191.a n = A028185 n

end A028185

/-! ## A028185.P4779407765373498989

`A024441(n)+A024444(n)-A022455(n)`
-/

namespace A028185.P4779407765373498989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024441 n + (A024444 n - A022455 n)

end

end A028185.P4779407765373498989

namespace A028185

/-- `A024441(n)+A024444(n)-A022455(n)` -/
def P4779407765373498989.Spec : Prop :=
  ∀ n, P4779407765373498989.a n = A028185 n

end A028185

/-! ## A028185.P8652558806341217369

`A024439(n)+A024772(n)-A022455(n)`
-/

namespace A028185.P8652558806341217369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024439 n + (A024772 n - A022455 n)

end

end A028185.P8652558806341217369

namespace A028185

/-- `A024439(n)+A024772(n)-A022455(n)` -/
def P8652558806341217369.Spec : Prop :=
  ∀ n, P8652558806341217369.a n = A028185 n

end A028185

/-! ## A028185.P13433824501421624439

`A028068(n)+A028071(n)-A028060(n)`
-/

namespace A028185.P13433824501421624439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028068 n + (A028071 n - A028060 n)

end

end A028185.P13433824501421624439

namespace A028185

/-- `A028068(n)+A028071(n)-A028060(n)` -/
def P13433824501421624439.Spec : Prop :=
  ∀ n, P13433824501421624439.a n = A028185 n

end A028185

/-! ## A028185.P5370595189312854906

`A028069(n)+A028091(n)-A028064(n)`
-/

namespace A028185.P5370595189312854906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028069 n + (A028091 n - A028064 n)

end

end A028185.P5370595189312854906

namespace A028185

/-- `A028069(n)+A028091(n)-A028064(n)` -/
def P5370595189312854906.Spec : Prop :=
  ∀ n, P5370595189312854906.a n = A028185 n

end A028185

/-!
# A028186: Expansion of 1/((1-5*x)*(1-7*x)*(1-9*x)*(1-12*x)).

The programs for A028186, the canonical program `A028186.P417130861848857928` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028186 has offset 0).

The definition of A028186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028186.P417130861848857928

`(7^(n+1)-5^(n+1))/2+21*a(n-1)-108*a(n-2)` with `a(0)=1, a(1)=33`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028186

/-- `(7^(n+1)-5^(n+1))/2+21*a(n-1)-108*a(n-2)` -/
def P417130861848857928.Spec : Prop :=
  ∀ n, P417130861848857928.a n = (A028186 n : ℚ)

end A028186

/-! ## A028186.P16962299847451823688

`2*A028095(n)-A028070(n)`
-/

namespace A028186.P16962299847451823688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028095 n - A028070 n

end

end A028186.P16962299847451823688

namespace A028186

/-- `2*A028095(n)-A028070(n)` -/
def P16962299847451823688.Spec : Prop :=
  ∀ n, P16962299847451823688.a n = A028186 n

end A028186

/-! ## A028186.P1150591116763234532

`2*A028169(n)-A028166(n)`
-/

namespace A028186.P1150591116763234532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028169 n - A028166 n

end

end A028186.P1150591116763234532

namespace A028186

/-- `2*A028169(n)-A028166(n)` -/
def P1150591116763234532.Spec : Prop :=
  ∀ n, P1150591116763234532.a n = A028186 n

end A028186

/-! ## A028186.P1682083959976121276

`A028119(n)+A028126(n)-A028116(n)`
-/

namespace A028186.P1682083959976121276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028119 n + (A028126 n - A028116 n)

end

end A028186.P1682083959976121276

namespace A028186

/-- `A028119(n)+A028126(n)-A028116(n)` -/
def P1682083959976121276.Spec : Prop :=
  ∀ n, P1682083959976121276.a n = A028186 n

end A028186

/-! ## A028186.P5531697023838032903

`A028184(n)+A028197(n)-A028188(n)`
-/

namespace A028186.P5531697023838032903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028184 n + (A028197 n - A028188 n)

end

end A028186.P5531697023838032903

namespace A028186

/-- `A028184(n)+A028197(n)-A028188(n)` -/
def P5531697023838032903.Spec : Prop :=
  ∀ n, P5531697023838032903.a n = A028186 n

end A028186

/-! ## A028186.P12485543856175035988

`2*A028189(n)-A028198(n)`
-/

namespace A028186.P12485543856175035988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028189 n - A028198 n

end

end A028186.P12485543856175035988

namespace A028186

/-- `2*A028189(n)-A028198(n)` -/
def P12485543856175035988.Spec : Prop :=
  ∀ n, P12485543856175035988.a n = A028186 n

end A028186

/-!
# A028187: Expansion of 1/((1-5*x)*(1-7*x)*(1-10*x)*(1-11*x)).

The programs for A028187, the canonical program `A028187.P362190293092192236` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028187 has offset 0).

The definition of A028187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028187.P362190293092192236

`(7^(n+1)-5^(n+1))/2+21*a(n-1)-110*a(n-2)` with `a(0)=1, a(1)=33`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028187

/-- `(7^(n+1)-5^(n+1))/2+21*a(n-1)-110*a(n-2)` -/
def P362190293092192236.Spec : Prop :=
  ∀ n, P362190293092192236.a n = (A028187 n : ℚ)

end A028187

/-! ## A028187.P10244606406842468202

`A020567(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A028187.P10244606406842468202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020567 n + 7 * a (n - 1)

end

end A028187.P10244606406842468202

namespace A028187

/-- `A020567(n)+7*a(n-1)` -/
def P10244606406842468202.Spec : Prop :=
  ∀ n, P10244606406842468202.a n = A028187 n

end A028187

/-! ## A028187.P9751622532955568059

`Δ[A022455(n)-A022454(n)]`
-/

namespace A028187.P9751622532955568059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022455 n - A022454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028187.P9751622532955568059

namespace A028187

/-- `Δ[A022455(n)-A022454(n)]` -/
def P9751622532955568059.Spec : Prop :=
  ∀ n, P9751622532955568059.a n = A028187 n

end A028187

/-! ## A028187.P6934781299918687610

`2*A028071(n)-A028061(n)`
-/

namespace A028187.P6934781299918687610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028071 n - A028061 n

end

end A028187.P6934781299918687610

namespace A028187

/-- `2*A028071(n)-A028061(n)` -/
def P6934781299918687610.Spec : Prop :=
  ∀ n, P6934781299918687610.a n = A028187 n

end A028187

/-! ## A028187.P16307384354531161155

`2*A028096(n)-A028071(n)`
-/

namespace A028187.P16307384354531161155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028096 n - A028071 n

end

end A028187.P16307384354531161155

namespace A028187

/-- `2*A028096(n)-A028071(n)` -/
def P16307384354531161155.Spec : Prop :=
  ∀ n, P16307384354531161155.a n = A028187 n

end A028187

/-! ## A028187.P10179871013423930966

`2*A028127(n)-A028118(n)`
-/

namespace A028187.P10179871013423930966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028127 n - A028118 n

end

end A028187.P10179871013423930966

namespace A028187

/-- `2*A028127(n)-A028118(n)` -/
def P10179871013423930966.Spec : Prop :=
  ∀ n, P10179871013423930966.a n = A028187 n

end A028187

/-! ## A028187.P12187163085700631272

`2*A028185(n)-A028184(n)`
-/

namespace A028187.P12187163085700631272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028185 n - A028184 n

end

end A028187.P12187163085700631272

namespace A028187

/-- `2*A028185(n)-A028184(n)` -/
def P12187163085700631272.Spec : Prop :=
  ∀ n, P12187163085700631272.a n = A028187 n

end A028187

/-! ## A028187.P18002786876532382246

`2*A028188(n)-A028189(n)`
-/

namespace A028187.P18002786876532382246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028188 n - A028189 n

end

end A028187.P18002786876532382246

namespace A028187

/-- `2*A028188(n)-A028189(n)` -/
def P18002786876532382246.Spec : Prop :=
  ∀ n, P18002786876532382246.a n = A028187 n

end A028187

/-!
# A028188: Expansion of 1/((1-5*x)*(1-7*x)*(1-10*x)*(1-12*x)).

The programs for A028188, the canonical program `A028188.P9058867641866898953` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028188 has offset 0).

The definition of A028188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028188.P9058867641866898953

`(7^(n+1)-5^(n+1))/2+22*a(n-1)-120*a(n-2)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028188

/-- `(7^(n+1)-5^(n+1))/2+22*a(n-1)-120*a(n-2)` -/
def P9058867641866898953.Spec : Prop :=
  ∀ n, P9058867641866898953.a n = (A028188 n : ℚ)

end A028188

/-! ## A028188.P8072648860369667645

`(3*12^(n+3)-7*10^(n+3)+7^(n+4)-3*5^(n+3))/210`
-/

namespace A028188.P8072648860369667645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 12 ^ (n + 3) : ℤ) - (7 * 10 ^ (n + 3) : ℤ) + (7 ^ (n + 4) : ℤ) - (3 * 5 ^ (n + 3) : ℤ) : ℚ) / 210

end

end A028188.P8072648860369667645

namespace A028188

/-- `(3*12^(n+3)-7*10^(n+3)+7^(n+4)-3*5^(n+3))/210` -/
def P8072648860369667645.Spec : Prop :=
  ∀ n, P8072648860369667645.a n = (A028188 n : ℚ)

end A028188

/-! ## A028188.P12798235178891145136

`2*A028097(n)-A028072(n)`
-/

namespace A028188.P12798235178891145136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028097 n - A028072 n

end

end A028188.P12798235178891145136

namespace A028188

/-- `2*A028097(n)-A028072(n)` -/
def P12798235178891145136.Spec : Prop :=
  ∀ n, P12798235178891145136.a n = A028188 n

end A028188

/-! ## A028188.P9617963641855206067

`2*A028128(n)-A028119(n)`
-/

namespace A028188.P9617963641855206067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028128 n - A028119 n

end

end A028188.P9617963641855206067

namespace A028188

/-- `2*A028128(n)-A028119(n)` -/
def P9617963641855206067.Spec : Prop :=
  ∀ n, P9617963641855206067.a n = A028188 n

end A028188

/-! ## A028188.P15641677915336915239

`2*A028183(n)-A028181(n)`
-/

namespace A028188.P15641677915336915239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028183 n - A028181 n

end

end A028188.P15641677915336915239

namespace A028188

/-- `2*A028183(n)-A028181(n)` -/
def P15641677915336915239.Spec : Prop :=
  ∀ n, P15641677915336915239.a n = A028188 n

end A028188

/-! ## A028188.P6381721601205049856

`A028096(n)+A028098(n)-A028072(n)`
-/

namespace A028188.P6381721601205049856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028096 n + (A028098 n - A028072 n)

end

end A028188.P6381721601205049856

namespace A028188

/-- `A028096(n)+A028098(n)-A028072(n)` -/
def P6381721601205049856.Spec : Prop :=
  ∀ n, P6381721601205049856.a n = A028188 n

end A028188

/-! ## A028188.P6148542065326156878

`A028127(n)+A028129(n)-A028119(n)`
-/

namespace A028188.P6148542065326156878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028127 n + (A028129 n - A028119 n)

end

end A028188.P6148542065326156878

namespace A028188

/-- `A028127(n)+A028129(n)-A028119(n)` -/
def P6148542065326156878.Spec : Prop :=
  ∀ n, P6148542065326156878.a n = A028188 n

end A028188

/-!
# A028189: Expansion of 1/((1-5*x)*(1-7*x)*(1-11*x)*(1-12*x)).

The programs for A028189, the canonical program `A028189.P15928500632375740968` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028189 has offset 0).

The definition of A028189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028189.P15928500632375740968

`(7^(n+1)-5^(n+1))/2+23*a(n-1)-132*a(n-2)` with `a(0)=1, a(1)=35`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028189

/-- `(7^(n+1)-5^(n+1))/2+23*a(n-1)-132*a(n-2)` -/
def P15928500632375740968.Spec : Prop :=
  ∀ n, P15928500632375740968.a n = (A028189 n : ℚ)

end A028189

/-! ## A028189.P6803691268329042044

`Δ[A022456(n)-A022455(n)]`
-/

namespace A028189.P6803691268329042044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022456 n - A022455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028189.P6803691268329042044

namespace A028189

/-- `Δ[A022456(n)-A022455(n)]` -/
def P6803691268329042044.Spec : Prop :=
  ∀ n, P6803691268329042044.a n = A028189 n

end A028189

/-! ## A028189.P10905481509664935477

`2*A028073(n)-A028063(n)`
-/

namespace A028189.P10905481509664935477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028073 n - A028063 n

end

end A028189.P10905481509664935477

namespace A028189

/-- `2*A028073(n)-A028063(n)` -/
def P10905481509664935477.Spec : Prop :=
  ∀ n, P10905481509664935477.a n = A028189 n

end A028189

/-! ## A028189.P13366728310021816398

`2*A028188(n)-A028187(n)`
-/

namespace A028189.P13366728310021816398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028188 n - A028187 n

end

end A028189.P13366728310021816398

namespace A028189

/-- `2*A028188(n)-A028187(n)` -/
def P13366728310021816398.Spec : Prop :=
  ∀ n, P13366728310021816398.a n = A028189 n

end A028189

/-! ## A028189.P4718697464508767590

`A020341(n+1)-A020000(n+1)`
-/

namespace A028189.P4718697464508767590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020341 (n + 1) - A020000 (n + 1)

end

end A028189.P4718697464508767590

namespace A028189

/-- `A020341(n+1)-A020000(n+1)` -/
def P4718697464508767590.Spec : Prop :=
  ∀ n, P4718697464508767590.a n = A028189 n

end A028189

/-! ## A028189.P9270220494867499354

`A028098(n)+A028098(n)-A028073(n)`
-/

namespace A028189.P9270220494867499354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028098 n + (A028098 n - A028073 n)

end

end A028189.P9270220494867499354

namespace A028189

/-- `A028098(n)+A028098(n)-A028073(n)` -/
def P9270220494867499354.Spec : Prop :=
  ∀ n, P9270220494867499354.a n = A028189 n

end A028189

/-! ## A028189.P13466678713837510033

`A028192(n)+A028221(n)-A028220(n)`
-/

namespace A028189.P13466678713837510033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028192 n + (A028221 n - A028220 n)

end

end A028189.P13466678713837510033

namespace A028189

/-- `A028192(n)+A028221(n)-A028220(n)` -/
def P13466678713837510033.Spec : Prop :=
  ∀ n, P13466678713837510033.a n = A028189 n

end A028189

/-! ## A028189.P8643833629874479966

`2*A028098(n)-A028073(n)`
-/

namespace A028189.P8643833629874479966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028098 n - A028073 n

end

end A028189.P8643833629874479966

namespace A028189

/-- `2*A028098(n)-A028073(n)` -/
def P8643833629874479966.Spec : Prop :=
  ∀ n, P8643833629874479966.a n = A028189 n

end A028189

/-!
# A028190: Expansion of 1/((1-5*x)*(1-8*x)*(1-9*x)*(1-10*x)).

The programs for A028190, the canonical program `A028190.P15812559799737944590` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028190 has offset 0).

The definition of A028190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028190.P15812559799737944590

`(8^(n+1)-5^(n+1))/3+19*a(n-1)-90*a(n-2)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028190

/-- `(8^(n+1)-5^(n+1))/3+19*a(n-1)-90*a(n-2)` -/
def P15812559799737944590.Spec : Prop :=
  ∀ n, P15812559799737944590.a n = (A028190 n : ℚ)

end A028190

/-! ## A028190.P9937453910105082245

`(6*10^(n+3)-15*9^(n+3)+10*8^(n+3)-5^(n+3))/60`
-/

namespace A028190.P9937453910105082245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 10 ^ (n + 3) : ℤ) - (15 * 9 ^ (n + 3) : ℤ) + (10 * 8 ^ (n + 3) : ℤ) - (5 ^ (n + 3) : ℤ) : ℚ) / 60

end

end A028190.P9937453910105082245

namespace A028190

/-- `(6*10^(n+3)-15*9^(n+3)+10*8^(n+3)-5^(n+3))/60` -/
def P9937453910105082245.Spec : Prop :=
  ∀ n, P9937453910105082245.a n = (A028190 n : ℚ)

end A028190

/-! ## A028190.P17917151123070336167

`2*A028174(n)-A028170(n)`
-/

namespace A028190.P17917151123070336167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028174 n - A028170 n

end

end A028190.P17917151123070336167

namespace A028190

/-- `2*A028174(n)-A028170(n)` -/
def P17917151123070336167.Spec : Prop :=
  ∀ n, P17917151123070336167.a n = A028190 n

end A028190

/-! ## A028190.P2992677742265475879

`A020346(n+1)-A020343(n+1)`
-/

namespace A028190.P2992677742265475879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020346 (n + 1) - A020343 (n + 1)

end

end A028190.P2992677742265475879

namespace A028190

/-- `A020346(n+1)-A020343(n+1)` -/
def P2992677742265475879.Spec : Prop :=
  ∀ n, P2992677742265475879.a n = A028190 n

end A028190

/-! ## A028190.P10164606261472850155

`A028124(n)+A028155(n)-A028121(n)`
-/

namespace A028190.P10164606261472850155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028124 n + (A028155 n - A028121 n)

end

end A028190.P10164606261472850155

namespace A028190

/-- `A028124(n)+A028155(n)-A028121(n)` -/
def P10164606261472850155.Spec : Prop :=
  ∀ n, P10164606261472850155.a n = A028190 n

end A028190

/-! ## A028190.P9705050397235556490

`A028167(n)+A028204(n)-A028170(n)`
-/

namespace A028190.P9705050397235556490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028167 n + (A028204 n - A028170 n)

end

end A028190.P9705050397235556490

namespace A028190

/-- `A028167(n)+A028204(n)-A028170(n)` -/
def P9705050397235556490.Spec : Prop :=
  ∀ n, P9705050397235556490.a n = A028190 n

end A028190

/-! ## A028190.P1695257600136914815

`A020494(n+1)-A020346(n+1)`
-/

namespace A028190.P1695257600136914815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020494 (n + 1) - A020346 (n + 1)

end

end A028190.P1695257600136914815

namespace A028190

/-- `A020494(n+1)-A020346(n+1)` -/
def P1695257600136914815.Spec : Prop :=
  ∀ n, P1695257600136914815.a n = A028190 n

end A028190

/-! ## A028190.P494247744753164727

`A028170(n)+A028210(n)-A028171(n)`
-/

namespace A028190.P494247744753164727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028170 n + (A028210 n - A028171 n)

end

end A028190.P494247744753164727

namespace A028190

/-- `A028170(n)+A028210(n)-A028171(n)` -/
def P494247744753164727.Spec : Prop :=
  ∀ n, P494247744753164727.a n = A028190 n

end A028190

/-! ## A028190.P11071806665111674790

`2*A028191(n)-A028193(n)`
-/

namespace A028190.P11071806665111674790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028191 n - A028193 n

end

end A028190.P11071806665111674790

namespace A028190

/-- `2*A028191(n)-A028193(n)` -/
def P11071806665111674790.Spec : Prop :=
  ∀ n, P11071806665111674790.a n = A028190 n

end A028190

/-! ## A028190.P18163225551778630211

`2*A028192(n)-A028197(n)`
-/

namespace A028190.P18163225551778630211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028192 n - A028197 n

end

end A028190.P18163225551778630211

namespace A028190

/-- `2*A028192(n)-A028197(n)` -/
def P18163225551778630211.Spec : Prop :=
  ∀ n, P18163225551778630211.a n = A028190 n

end A028190

/-!
# A028191: Expansion of 1/((1-5x)(1-8x)(1-9x)(1-11x)).

The programs for A028191, the canonical program `A028191.P18263927731897952463` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028191 has offset 0).

The definition of A028191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028191.P18263927731897952463

`20*a(n-1)-99*a(n-2)+(8^(n+1)-5^(n+1))/3` with `a(0)=1, a(1)=33`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028191

/-- `20*a(n-1)-99*a(n-2)+(8^(n+1)-5^(n+1))/3` -/
def P18263927731897952463.Spec : Prop :=
  ∀ n, P18263927731897952463.a n = (A028191 n : ℚ)

end A028191

/-! ## A028191.P4344130939750291286

`(8^(n+4)-9^(n+4)+2*11^(n+3)-5^(n+3))/72`
-/

namespace A028191.P4344130939750291286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 4) : ℤ) - (9 ^ (n + 4) : ℤ) + (2 * 11 ^ (n + 3) : ℤ) - (5 ^ (n + 3) : ℤ) : ℚ) / 72

end

end A028191.P4344130939750291286

namespace A028191

/-- `(8^(n+4)-9^(n+4)+2*11^(n+3)-5^(n+3))/72` -/
def P4344130939750291286.Spec : Prop :=
  ∀ n, P4344130939750291286.a n = (A028191 n : ℚ)

end A028191

/-! ## A028191.P7975635348794943039

`2*A028182(n)-A028180(n)`
-/

namespace A028191.P7975635348794943039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028182 n - A028180 n

end

end A028191.P7975635348794943039

namespace A028191

/-- `2*A028182(n)-A028180(n)` -/
def P7975635348794943039.Spec : Prop :=
  ∀ n, P7975635348794943039.a n = A028191 n

end A028191

/-! ## A028191.P10552578417352343337

`2*A028185(n)-A028182(n)`
-/

namespace A028191.P10552578417352343337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028185 n - A028182 n

end

end A028191.P10552578417352343337

namespace A028191

/-- `2*A028185(n)-A028182(n)` -/
def P10552578417352343337.Spec : Prop :=
  ∀ n, P10552578417352343337.a n = A028191 n

end A028191

/-! ## A028191.P11121771858134090906

`A028172(n)+A028175(n)-A028170(n)`
-/

namespace A028191.P11121771858134090906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028172 n + (A028175 n - A028170 n)

end

end A028191.P11121771858134090906

namespace A028191

/-- `A028172(n)+A028175(n)-A028170(n)` -/
def P11121771858134090906.Spec : Prop :=
  ∀ n, P11121771858134090906.a n = A028191 n

end A028191

/-!
# A028192: Expansion of 1/((1-5*x)*(1-8*x)*(1-9*x)*(1-12*x)).

The programs for A028192, the canonical program `A028192.P17688712326506452579` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028192 has offset 0).

The definition of A028192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028192.P17688712326506452579

`(8^(n+1)-5^(n+1))/3+21*a(n-1)-108*a(n-2)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028192

/-- `(8^(n+1)-5^(n+1))/3+21*a(n-1)-108*a(n-2)` -/
def P17688712326506452579.Spec : Prop :=
  ∀ n, P17688712326506452579.a n = (A028192 n : ℚ)

end A028192

/-! ## A028192.P15265899712385863497

`(7*8^(n+3)-7*9^(n+3)+12^(n+3)-5^(n+3))/84`
-/

namespace A028192.P15265899712385863497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 8 ^ (n + 3) : ℤ) - (7 * 9 ^ (n + 3) : ℤ) + (12 ^ (n + 3) : ℤ) - (5 ^ (n + 3) : ℤ) : ℚ) / 84

end

end A028192.P15265899712385863497

namespace A028192

/-- `(7*8^(n+3)-7*9^(n+3)+12^(n+3)-5^(n+3))/84` -/
def P15265899712385863497.Spec : Prop :=
  ∀ n, P15265899712385863497.a n = (A028192 n : ℚ)

end A028192

/-! ## A028192.P9637664641415202131

`A020978(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A028192.P9637664641415202131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020978 n + 5 * a (n - 1)

end

end A028192.P9637664641415202131

namespace A028192

/-- `A020978(n)+5*a(n-1)` -/
def P9637664641415202131.Spec : Prop :=
  ∀ n, P9637664641415202131.a n = A028192 n

end A028192

/-! ## A028192.P16101844991845556532

`A020448(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028192.P16101844991845556532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020448 n + 9 * a (n - 1)

end

end A028192.P16101844991845556532

namespace A028192

/-- `A020448(n)+9*a(n-1)` -/
def P16101844991845556532.Spec : Prop :=
  ∀ n, P16101844991845556532.a n = A028192 n

end A028192

/-! ## A028192.P15170254234882088083

`2*A028126(n)-A028120(n)`
-/

namespace A028192.P15170254234882088083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028126 n - A028120 n

end

end A028192.P15170254234882088083

namespace A028192

/-- `2*A028126(n)-A028120(n)` -/
def P15170254234882088083.Spec : Prop :=
  ∀ n, P15170254234882088083.a n = A028192 n

end A028192

/-! ## A028192.P17074087638793006131

`2*A028194(n)-A028197(n)`
-/

namespace A028192.P17074087638793006131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028194 n - A028197 n

end

end A028192.P17074087638793006131

namespace A028192

/-- `2*A028194(n)-A028197(n)` -/
def P17074087638793006131.Spec : Prop :=
  ∀ n, P17074087638793006131.a n = A028192 n

end A028192

/-! ## A028192.P17442959325399698143

`A028193(n)+A028195(n)-A028197(n)`
-/

namespace A028192.P17442959325399698143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028193 n + (A028195 n - A028197 n)

end

end A028192.P17442959325399698143

namespace A028192

/-- `A028193(n)+A028195(n)-A028197(n)` -/
def P17442959325399698143.Spec : Prop :=
  ∀ n, P17442959325399698143.a n = A028192 n

end A028192

/-!
# A028193: Expansion of 1/((1-5*x)*(1-8*x)*(1-10*x)*(1-11*x)).

The programs for A028193, the canonical program `A028193.P16880149396847578633` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028193 has offset 0).

The definition of A028193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028193.P16880149396847578633

`(8^(n+3)+11^(n+3)-18*10^(n+2)-5^(n+2))/18`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028193

/-- `(8^(n+3)+11^(n+3)-18*10^(n+2)-5^(n+2))/18` -/
def P16880149396847578633.Spec : Prop :=
  ∀ n, P16880149396847578633.a n = (A028193 n : ℚ)

end A028193

/-! ## A028193.P8511403119543270600

`2*A028191(n)-A028190(n)`
-/

namespace A028193.P8511403119543270600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028191 n - A028190 n

end

end A028193.P8511403119543270600

namespace A028193

/-- `2*A028191(n)-A028190(n)` -/
def P8511403119543270600.Spec : Prop :=
  ∀ n, P8511403119543270600.a n = A028193 n

end A028193

/-! ## A028193.P8098039468540912957

`2*A028194(n)-A028195(n)`
-/

namespace A028193.P8098039468540912957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028194 n - A028195 n

end

end A028193.P8098039468540912957

namespace A028193

/-- `2*A028194(n)-A028195(n)` -/
def P8098039468540912957.Spec : Prop :=
  ∀ n, P8098039468540912957.a n = A028193 n

end A028193

/-! ## A028193.P5364259875191417624

`A028192(n)+A028197(n)-A028195(n)`
-/

namespace A028193.P5364259875191417624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028192 n + (A028197 n - A028195 n)

end

end A028193.P5364259875191417624

namespace A028193

/-- `A028192(n)+A028197(n)-A028195(n)` -/
def P5364259875191417624.Spec : Prop :=
  ∀ n, P5364259875191417624.a n = A028193 n

end A028193

/-! ## A028193.P969264868764506852

`2*A028195(n)-A028199(n)`
-/

namespace A028193.P969264868764506852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028195 n - A028199 n

end

end A028193.P969264868764506852

namespace A028193

/-- `2*A028195(n)-A028199(n)` -/
def P969264868764506852.Spec : Prop :=
  ∀ n, P969264868764506852.a n = A028193 n

end A028193

/-!
# A028194: Expansion of 1/((1-5x)(1-8x)(1-10x)(1-12x)).

The programs for A028194, the canonical program `A028194.P9784221247184380727` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028194 has offset 0).

The definition of A028194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028194.P9784221247184380727

`22*a(n-1)-120*a(n-2)+(8^(n+1)-5^(n+1))/3` with `a(0)=1, a(1)=35`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028194

/-- `22*a(n-1)-120*a(n-2)+(8^(n+1)-5^(n+1))/3` -/
def P9784221247184380727.Spec : Prop :=
  ∀ n, P9784221247184380727.a n = (A028194 n : ℚ)

end A028194

/-! ## A028194.P12409707826086884610

`(648*12^n+448*8^n-25*5^n)/21-50*10^n`
-/

namespace A028194.P12409707826086884610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((648 * 12 ^ n + 448 * 8 ^ n : ℤ) - (25 * 5 ^ n : ℤ) : ℚ) / 21 - (50 * 10 ^ n : ℚ)

end

end A028194.P12409707826086884610

namespace A028194

/-- `(648*12^n+448*8^n-25*5^n)/21-50*10^n` -/
def P12409707826086884610.Spec : Prop :=
  ∀ n, P12409707826086884610.a n = (A028194 n : ℚ)

end A028194

/-!
# A028195: Expansion of 1/((1-5x)(1-8x)(1-11x)(1-12x)).

The programs for A028195, the canonical program `A028195.P3857516111405679298` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028195 has offset 0).

The definition of A028195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028195.P3857516111405679298

`23*a(n-1)-132*a(n-2)+(8^(n+1)-5^(n+1))/3` with `a(0)=1, a(1)=36`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028195

/-- `23*a(n-1)-132*a(n-2)+(8^(n+1)-5^(n+1))/3` -/
def P3857516111405679298.Spec : Prop :=
  ∀ n, P3857516111405679298.a n = (A028195 n : ℚ)

end A028195

/-! ## A028195.P1547237123094255771

`(28*8^(n+2)+54*12^(n+2)-7*11^(n+3)-5^(n+3))/126`
-/

namespace A028195.P1547237123094255771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((28 * 8 ^ (n + 2) + 54 * 12 ^ (n + 2) : ℤ) - (7 * 11 ^ (n + 3) : ℤ) - (5 ^ (n + 3) : ℤ) : ℚ) / 126

end

end A028195.P1547237123094255771

namespace A028195

/-- `(28*8^(n+2)+54*12^(n+2)-7*11^(n+3)-5^(n+3))/126` -/
def P1547237123094255771.Spec : Prop :=
  ∀ n, P1547237123094255771.a n = (A028195 n : ℚ)

end A028195

/-! ## A028195.P2175038670564113664

`2*A028129(n)-A028122(n)`
-/

namespace A028195.P2175038670564113664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028129 n - A028122 n

end

end A028195.P2175038670564113664

namespace A028195

/-- `2*A028129(n)-A028122(n)` -/
def P2175038670564113664.Spec : Prop :=
  ∀ n, P2175038670564113664.a n = A028195 n

end A028195

/-! ## A028195.P16062893968844587621

`2*A028194(n)-A028193(n)`
-/

namespace A028195.P16062893968844587621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028194 n - A028193 n

end

end A028195.P16062893968844587621

namespace A028195

/-- `2*A028194(n)-A028193(n)` -/
def P16062893968844587621.Spec : Prop :=
  ∀ n, P16062893968844587621.a n = A028195 n

end A028195

/-! ## A028195.P12652317030592782090

`5*a(n-1)+A020981(n)+A000007(n)` with `a(0)=1`
-/

namespace A028195.P12652317030592782090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A020981 n + A000007 n)

end

end A028195.P12652317030592782090

namespace A028195

/-- `5*a(n-1)+A020981(n)+A000007(n)` -/
def P12652317030592782090.Spec : Prop :=
  ∀ n, P12652317030592782090.a n = A028195 n

end A028195

/-! ## A028195.P16311367681347527961

`5*a(n-1)+A020981(n)+A000038(n)` with `a(0)=1`
-/

namespace A028195.P16311367681347527961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A020981 n + A000038 n)

end

end A028195.P16311367681347527961

namespace A028195

/-- `5*a(n-1)+A020981(n)+A000038(n)` -/
def P16311367681347527961.Spec : Prop :=
  ∀ n, P16311367681347527961.a n = A028195 n

end A028195

/-! ## A028195.P17870885167404884076

`A028183(n)+A028189(n)-A028182(n)`
-/

namespace A028195.P17870885167404884076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028183 n + (A028189 n - A028182 n)

end

end A028195.P17870885167404884076

namespace A028195

/-- `A028183(n)+A028189(n)-A028182(n)` -/
def P17870885167404884076.Spec : Prop :=
  ∀ n, P17870885167404884076.a n = A028195 n

end A028195

/-! ## A028195.P6044229096341504026

`A028192(n)+A028197(n)-A028193(n)`
-/

namespace A028195.P6044229096341504026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028192 n + (A028197 n - A028193 n)

end

end A028195.P6044229096341504026

namespace A028195

/-- `A028192(n)+A028197(n)-A028193(n)` -/
def P6044229096341504026.Spec : Prop :=
  ∀ n, P6044229096341504026.a n = A028195 n

end A028195

/-!
# A028196: Expansion of 1/((1-5x)(1-9x)(1-10x)(1-11x)).

The programs for A028196, the canonical program `A028196.P6334453879115977283` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028196 has offset 0).

The definition of A028196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028196.P6334453879115977283

`21*a(n-1)-110*a(n-2)+(9^(n+1)-5^(n+1))/4` with `a(0)=1, a(1)=35`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028196

/-- `21*a(n-1)-110*a(n-2)+(9^(n+1)-5^(n+1))/4` -/
def P6334453879115977283.Spec : Prop :=
  ∀ n, P6334453879115977283.a n = (A028196 n : ℚ)

end A028196

/-! ## A028196.P12497427082912383201

`2*A028187(n)-A028184(n)`
-/

namespace A028196.P12497427082912383201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028187 n - A028184 n

end

end A028196.P12497427082912383201

namespace A028196

/-- `2*A028187(n)-A028184(n)` -/
def P12497427082912383201.Spec : Prop :=
  ∀ n, P12497427082912383201.a n = A028196 n

end A028196

/-! ## A028196.P4064375409569836312

`A020499(n+1)-A020494(n+1)`
-/

namespace A028196.P4064375409569836312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020499 (n + 1) - A020494 (n + 1)

end

end A028196.P4064375409569836312

namespace A028196

/-- `A020499(n+1)-A020494(n+1)` -/
def P4064375409569836312.Spec : Prop :=
  ∀ n, P4064375409569836312.a n = A028196 n

end A028196

/-! ## A028196.P16647289535511775440

`A028191(n)+A028193(n)-A028190(n)`
-/

namespace A028196.P16647289535511775440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028191 n + (A028193 n - A028190 n)

end

end A028196.P16647289535511775440

namespace A028196

/-- `A028191(n)+A028193(n)-A028190(n)` -/
def P16647289535511775440.Spec : Prop :=
  ∀ n, P16647289535511775440.a n = A028196 n

end A028196

/-! ## A028196.P5115149677451318994

`2*A028193(n)-A028191(n)`
-/

namespace A028196.P5115149677451318994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028193 n - A028191 n

end

end A028196.P5115149677451318994

namespace A028196

/-- `2*A028193(n)-A028191(n)` -/
def P5115149677451318994.Spec : Prop :=
  ∀ n, P5115149677451318994.a n = A028196 n

end A028196

/-! ## A028196.P13544289600225956029

`2*A028197(n)-A028198(n)`
-/

namespace A028196.P13544289600225956029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028197 n - A028198 n

end

end A028196.P13544289600225956029

namespace A028196

/-- `2*A028197(n)-A028198(n)` -/
def P13544289600225956029.Spec : Prop :=
  ∀ n, P13544289600225956029.a n = A028196 n

end A028196

/-! ## A028196.P9357839678947723815

`A028197(n)-(A028199(n)-A028198(n))`
-/

namespace A028196.P9357839678947723815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028197 n - (A028199 n - A028198 n)

end

end A028196.P9357839678947723815

namespace A028196

/-- `A028197(n)-(A028199(n)-A028198(n))` -/
def P9357839678947723815.Spec : Prop :=
  ∀ n, P9357839678947723815.a n = A028196 n

end A028196

/-!
# A028197: Expansion of 1/((1-5x)(1-9x)(1-10x)(1-12x)).

The programs for A028197, the canonical program `A028197.P2875863422496933748` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028197 has offset 0).

The definition of A028197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028197.P2875863422496933748

`22*a(n-1)-120*a(n-2)+(9^(n+1)-5^(n+1))/4` with `a(0)=1, a(1)=36`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028197

/-- `22*a(n-1)-120*a(n-2)+(9^(n+1)-5^(n+1))/4` -/
def P2875863422496933748.Spec : Prop :=
  ∀ n, P2875863422496933748.a n = (A028197 n : ℚ)

end A028197

/-! ## A028197.P13034913540668712447

`A020566(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A028197.P13034913540668712447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020566 n + 10 * a (n - 1)

end

end A028197.P13034913540668712447

namespace A028197

/-- `A020566(n)+10*a(n-1)` -/
def P13034913540668712447.Spec : Prop :=
  ∀ n, P13034913540668712447.a n = A028197 n

end A028197

/-! ## A028197.P4038593487250233971

`2*A028178(n)-A028174(n)`
-/

namespace A028197.P4038593487250233971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028178 n - A028174 n

end

end A028197.P4038593487250233971

namespace A028197

/-- `2*A028178(n)-A028174(n)` -/
def P4038593487250233971.Spec : Prop :=
  ∀ n, P4038593487250233971.a n = A028197 n

end A028197

/-! ## A028197.P12242599960928290167

`2*A028192(n)-A028190(n)`
-/

namespace A028197.P12242599960928290167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028192 n - A028190 n

end

end A028197.P12242599960928290167

namespace A028197

/-- `2*A028192(n)-A028190(n)` -/
def P12242599960928290167.Spec : Prop :=
  ∀ n, P12242599960928290167.a n = A028197 n

end A028197

/-! ## A028197.P9071909156517367773

`2*A028194(n)-A028192(n)`
-/

namespace A028197.P9071909156517367773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028194 n - A028192 n

end

end A028197.P9071909156517367773

namespace A028197

/-- `2*A028194(n)-A028192(n)` -/
def P9071909156517367773.Spec : Prop :=
  ∀ n, P9071909156517367773.a n = A028197 n

end A028197

/-! ## A028197.P3311749089973968090

`A028193(n)+A028195(n)-A028192(n)`
-/

namespace A028197.P3311749089973968090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028193 n + (A028195 n - A028192 n)

end

end A028197.P3311749089973968090

namespace A028197

/-- `A028193(n)+A028195(n)-A028192(n)` -/
def P3311749089973968090.Spec : Prop :=
  ∀ n, P3311749089973968090.a n = A028197 n

end A028197

/-! ## A028197.P10969328986938498345

`(A028198(n)+A028196(n))/2`
-/

namespace A028197.P10969328986938498345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028198 n + A028196 n : ℚ) / 2

end

end A028197.P10969328986938498345

namespace A028197

/-- `(A028198(n)+A028196(n))/2` -/
def P10969328986938498345.Spec : Prop :=
  ∀ n, P10969328986938498345.a n = (A028197 n : ℚ)

end A028197

/-! ## A028197.P11793828745135785236

`2*A028198(n)-A028199(n)`
-/

namespace A028197.P11793828745135785236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028198 n - A028199 n

end

end A028197.P11793828745135785236

namespace A028197

/-- `2*A028198(n)-A028199(n)` -/
def P11793828745135785236.Spec : Prop :=
  ∀ n, P11793828745135785236.a n = A028197 n

end A028197

/-! ## A028197.P595509480793868327

`A028196(n)+A028199(n)-A028198(n)`
-/

namespace A028197.P595509480793868327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028196 n + (A028199 n - A028198 n)

end

end A028197.P595509480793868327

namespace A028197

/-- `A028196(n)+A028199(n)-A028198(n)` -/
def P595509480793868327.Spec : Prop :=
  ∀ n, P595509480793868327.a n = A028197 n

end A028197

/-!
# A028198: Expansion of 1/((1-5x)(1-9x)(1-11x)(1-12x)).

The programs for A028198, the canonical program `A028198.P15813476277862254169` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028198 has offset 0).

The definition of A028198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028198.P15813476277862254169

`23*a(n-1)-132*a(n-2)+(9^(n+1)-5^(n+1))/4` with `a(0)=1, a(1)=37`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028198

/-- `23*a(n-1)-132*a(n-2)+(9^(n+1)-5^(n+1))/4` -/
def P15813476277862254169.Spec : Prop :=
  ∀ n, P15813476277862254169.a n = (A028198 n : ℚ)

end A028198

/-! ## A028198.P2064426464697023800

`2*A028179(n)-A028175(n)`
-/

namespace A028198.P2064426464697023800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028179 n - A028175 n

end

end A028198.P2064426464697023800

namespace A028198

/-- `2*A028179(n)-A028175(n)` -/
def P2064426464697023800.Spec : Prop :=
  ∀ n, P2064426464697023800.a n = A028198 n

end A028198

/-! ## A028198.P13355794116885583524

`2*A028189(n)-A028186(n)`
-/

namespace A028198.P13355794116885583524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028189 n - A028186 n

end

end A028198.P13355794116885583524

namespace A028198

/-- `2*A028189(n)-A028186(n)` -/
def P13355794116885583524.Spec : Prop :=
  ∀ n, P13355794116885583524.a n = A028198 n

end A028198

/-! ## A028198.P9275792110988980813

`2*A028197(n)-A028196(n)`
-/

namespace A028198.P9275792110988980813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028197 n - A028196 n

end

end A028198.P9275792110988980813

namespace A028198

/-- `2*A028197(n)-A028196(n)` -/
def P9275792110988980813.Spec : Prop :=
  ∀ n, P9275792110988980813.a n = A028198 n

end A028198

/-! ## A028198.P10617685276070054257

`(A028199(n)+A028197(n))/2`
-/

namespace A028198.P10617685276070054257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028199 n + A028197 n : ℚ) / 2

end

end A028198.P10617685276070054257

namespace A028198

/-- `(A028199(n)+A028197(n))/2` -/
def P10617685276070054257.Spec : Prop :=
  ∀ n, P10617685276070054257.a n = (A028198 n : ℚ)

end A028198

/-! ## A028198.P1250315257949491278

`A028196(n)+A028199(n)-A028197(n)`
-/

namespace A028198.P1250315257949491278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028196 n + (A028199 n - A028197 n)

end

end A028198.P1250315257949491278

namespace A028198

/-- `A028196(n)+A028199(n)-A028197(n)` -/
def P1250315257949491278.Spec : Prop :=
  ∀ n, P1250315257949491278.a n = A028198 n

end A028198

/-!
# A028199: Expansion of 1/((1-5x)(1-10x)(1-11x)(1-12x)).

The programs for A028199, the canonical program `A028199.P7278358745337036273` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028199 has offset 0).

The definition of A028199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028199.P7278358745337036273

`23*a(n-1)-132*a(n-2)+5^n*(2^(n+1)-1)` with `a(0)=1, a(1)=38`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028199

/-- `23*a(n-1)-132*a(n-2)+5^n*(2^(n+1)-1)` -/
def P7278358745337036273.Spec : Prop :=
  ∀ n, P7278358745337036273.a n = A028199 n

theorem P7278358745337036273.correct : P7278358745337036273.Spec := by
  intro n
  simp only [A028199]

end A028199

/-! ## A028199.P837535412617265507

`A020569(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A028199.P837535412617265507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020569 n + 10 * a (n - 1)

end

end A028199.P837535412617265507

namespace A028199

/-- `A020569(n)+10*a(n-1)` -/
def P837535412617265507.Spec : Prop :=
  ∀ n, P837535412617265507.a n = A028199 n

end A028199

/-! ## A028199.P5949003537118027514

`Δ[A023947(n)-A023946(n)]`
-/

namespace A028199.P5949003537118027514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023947 n - A023946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028199.P5949003537118027514

namespace A028199

/-- `Δ[A023947(n)-A023946(n)]` -/
def P5949003537118027514.Spec : Prop :=
  ∀ n, P5949003537118027514.a n = A028199 n

end A028199

/-! ## A028199.P14447896973913436888

`Δ[A023948(n)-A023947(n)]`
-/

namespace A028199.P14447896973913436888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023948 n - A023947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028199.P14447896973913436888

namespace A028199

/-- `Δ[A023948(n)-A023947(n)]` -/
def P14447896973913436888.Spec : Prop :=
  ∀ n, P14447896973913436888.a n = A028199 n

end A028199

/-! ## A028199.P9277456302996208960

`2*A028195(n)-A028193(n)`
-/

namespace A028199.P9277456302996208960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028195 n - A028193 n

end

end A028199.P9277456302996208960

namespace A028199

/-- `2*A028195(n)-A028193(n)` -/
def P9277456302996208960.Spec : Prop :=
  ∀ n, P9277456302996208960.a n = A028199 n

end A028199

/-! ## A028199.P279299633745970490

`2*A028198(n)-A028197(n)`
-/

namespace A028199.P279299633745970490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028198 n - A028197 n

end

end A028199.P279299633745970490

namespace A028199

/-- `2*A028198(n)-A028197(n)` -/
def P279299633745970490.Spec : Prop :=
  ∀ n, P279299633745970490.a n = A028199 n

end A028199

/-! ## A028199.P10164474675124141638

`A020568(n+1)-A020567(n+1)`
-/

namespace A028199.P10164474675124141638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020568 (n + 1) - A020567 (n + 1)

end

end A028199.P10164474675124141638

namespace A028199

/-- `A020568(n+1)-A020567(n+1)` -/
def P10164474675124141638.Spec : Prop :=
  ∀ n, P10164474675124141638.a n = A028199 n

end A028199

/-! ## A028199.P7990406416355329728

`A020569(n+1)-A020568(n+1)`
-/

namespace A028199.P7990406416355329728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020569 (n + 1) - A020568 (n + 1)

end

end A028199.P7990406416355329728

namespace A028199

/-- `A020569(n+1)-A020568(n+1)` -/
def P7990406416355329728.Spec : Prop :=
  ∀ n, P7990406416355329728.a n = A028199 n

end A028199

/-! ## A028199.P8071240002495831499

`(A020569(n+1)-A020567(n+1))/2`
-/

namespace A028199.P8071240002495831499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020569 (n + 1) - A020567 (n + 1) : ℚ) / 2

end

end A028199.P8071240002495831499

namespace A028199

/-- `(A020569(n+1)-A020567(n+1))/2` -/
def P8071240002495831499.Spec : Prop :=
  ∀ n, P8071240002495831499.a n = (A028199 n : ℚ)

end A028199

/-! ## A028199.P8233541338769463693

`A028197(n)+A028198(n)-A028196(n)`
-/

namespace A028199.P8233541338769463693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028197 n + (A028198 n - A028196 n)

end

end A028199.P8233541338769463693

namespace A028199

/-- `A028197(n)+A028198(n)-A028196(n)` -/
def P8233541338769463693.Spec : Prop :=
  ∀ n, P8233541338769463693.a n = A028199 n

end A028199

