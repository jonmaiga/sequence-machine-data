import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C040
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A266700: Coefficient of x in minimal polynomial of the continued fraction [1^n,1/2,1,1,1,...], where 1^n means n ones.

The programs for A266700, the canonical program `A266700.P7159717375548046763` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266700 has offset 0).

The definition of A266700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266700.P7159717375548046763

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=-10, a(2)=-12`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266700

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P7159717375548046763.Spec : Prop :=
  ∀ n, P7159717375548046763.a n = A266700 n

theorem P7159717375548046763.correct : P7159717375548046763.Spec := by
  intro n
  simp only [A266700]

end A266700

/-! ## A266700.P17760147906302033829

`ogf((-10x+8x^2)/(1-2x-2x^2+x^3))`
-/

namespace A266700.P17760147906302033829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -10, 8] [1, -2, -2, 1] n

end

end A266700.P17760147906302033829

namespace A266700

/-- `ogf((-10x+8x^2)/(1-2x-2x^2+x^3))` -/
def P17760147906302033829.Spec : Prop :=
  ∀ n, P17760147906302033829.a n = A266700 n

end A266700

/-! ## A266700.P7546983141283977004

`-(2*A192917(n))`
-/

namespace A266700.P7546983141283977004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * A192917 n)

end

end A266700.P7546983141283977004

namespace A266700

/-- `-(2*A192917(n))` -/
def P7546983141283977004.Spec : Prop :=
  ∀ n, P7546983141283977004.a n = A266700 n

end A266700

/-! ## A266700.P9883264989963621517

`A165326(n)-A266705(n)`
-/

namespace A266700.P9883264989963621517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n - A266705 n

end

end A266700.P9883264989963621517

namespace A266700

/-- `A165326(n)-A266705(n)` -/
def P9883264989963621517.Spec : Prop :=
  ∀ n, P9883264989963621517.a n = A266700 n

end A266700

/-! ## A266700.P14551988734474922157

`-(A000045(n)*A022367(n))`
-/

namespace A266700.P14551988734474922157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000045 n * A022367 n)

end

end A266700.P14551988734474922157

namespace A266700

/-- `-(A000045(n)*A022367(n))` -/
def P14551988734474922157.Spec : Prop :=
  ∀ n, P14551988734474922157.a n = A266700 n

end A266700

/-! ## A266700.P12591084586875940494

`(1-A001588(n))*A022095(n)`
-/

namespace A266700.P12591084586875940494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001588 n) * A022095 n

end

end A266700.P12591084586875940494

namespace A266700

/-- `(1-A001588(n))*A022095(n)` -/
def P12591084586875940494.Spec : Prop :=
  ∀ n, P12591084586875940494.a n = A266700 n

end A266700

/-! ## A266700.P1014825729885368312

`(1-A001611(n))*A022367(n)`
-/

namespace A266700.P1014825729885368312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001611 n) * A022367 n

end

end A266700.P1014825729885368312

namespace A266700

/-- `(1-A001611(n))*A022367(n)` -/
def P1014825729885368312.Spec : Prop :=
  ∀ n, P1014825729885368312.a n = A266700 n

end A266700

/-! ## A266700.P11787244463253492164

`A022367(n)*A152163(n+2)`
-/

namespace A266700.P11787244463253492164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n * A152163 (n + 2)

end

end A266700.P11787244463253492164

namespace A266700

/-- `A022367(n)*A152163(n+2)` -/
def P11787244463253492164.Spec : Prop :=
  ∀ n, P11787244463253492164.a n = A266700 n

end A266700

/-! ## A266700.P10935745157954861224

`A380696(2*n)-A069960(n)`
-/

namespace A266700.P10935745157954861224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380696 (2 * n) - A069960 n

end

end A266700.P10935745157954861224

namespace A266700

/-- `A380696(2*n)-A069960(n)` -/
def P10935745157954861224.Spec : Prop :=
  ∀ n, P10935745157954861224.a n = A266700 n

end A266700

/-! ## A266700.P9301640404485622105

`Δ[-A001595(n)]*A022095(n)`
-/

namespace A266700.P9301640404485622105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A022095 n

end

end A266700.P9301640404485622105

namespace A266700

/-- `Δ[-A001595(n)]*A022095(n)` -/
def P9301640404485622105.Spec : Prop :=
  ∀ n, P9301640404485622105.a n = A266700 n

end A266700

/-! ## A266700.P12857590928293796705

`2*(A192879(n+1)-A001254(n+1))`
-/

namespace A266700.P12857590928293796705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A192879 (n + 1) - A001254 (n + 1))

end

end A266700.P12857590928293796705

namespace A266700

/-- `2*(A192879(n+1)-A001254(n+1))` -/
def P12857590928293796705.Spec : Prop :=
  ∀ n, P12857590928293796705.a n = A266700 n

end A266700

/-! ## A266700.P14492661393797394539

`(A000045(n)-A022115(n))*A000045(n)`
-/

namespace A266700.P14492661393797394539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n - A022115 n) * A000045 n

end

end A266700.P14492661393797394539

namespace A266700

/-- `(A000045(n)-A022115(n))*A000045(n)` -/
def P14492661393797394539.Spec : Prop :=
  ∀ n, P14492661393797394539.a n = A266700 n

end A266700

/-! ## A266700.P2733090913308195885

`(A000285(n)-A022125(n))*A000045(n)`
-/

namespace A266700.P2733090913308195885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000285 n - A022125 n) * A000045 n

end

end A266700.P2733090913308195885

namespace A266700

/-- `(A000285(n)-A022125(n))*A000045(n)` -/
def P2733090913308195885.Spec : Prop :=
  ∀ n, P2733090913308195885.a n = A266700 n

end A266700

/-! ## A266700.P10447946744562791340

`(A000285(n)-A022096(n))*A022095(n)`
-/

namespace A266700.P10447946744562791340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000285 n - A022096 n) * A022095 n

end

end A266700.P10447946744562791340

namespace A266700

/-- `(A000285(n)-A022096(n))*A022095(n)` -/
def P10447946744562791340.Spec : Prop :=
  ∀ n, P10447946744562791340.a n = A266700 n

end A266700

/-! ## A266700.P5080780012160090981

`(A022095(n)-A022381(n))*A000045(n)`
-/

namespace A266700.P5080780012160090981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022095 n - A022381 n) * A000045 n

end

end A266700.P5080780012160090981

namespace A266700

/-- `(A022095(n)-A022381(n))*A000045(n)` -/
def P5080780012160090981.Spec : Prop :=
  ∀ n, P5080780012160090981.a n = A266700 n

end A266700

/-! ## A266700.P11418489953998944359

`(A001610(n)-A022308(n))*A022367(n)`
-/

namespace A266700.P11418489953998944359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 n - A022308 n) * A022367 n

end

end A266700.P11418489953998944359

namespace A266700

/-- `(A001610(n)-A022308(n))*A022367(n)` -/
def P11418489953998944359.Spec : Prop :=
  ∀ n, P11418489953998944359.a n = A266700 n

end A266700

/-! ## A266700.P7344920324063100106

`(A022095(n)-A022097(n))*A022095(n)`
-/

namespace A266700.P7344920324063100106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022095 n - A022097 n) * A022095 n

end

end A266700.P7344920324063100106

namespace A266700

/-- `(A022095(n)-A022097(n))*A022095(n)` -/
def P7344920324063100106.Spec : Prop :=
  ∀ n, P7344920324063100106.a n = A266700 n

end A266700

/-! ## A266700.P12210600149048708309

`(A022096(n)-A022098(n))*A022095(n)`
-/

namespace A266700.P12210600149048708309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022096 n - A022098 n) * A022095 n

end

end A266700.P12210600149048708309

namespace A266700

/-- `(A022096(n)-A022098(n))*A022095(n)` -/
def P12210600149048708309.Spec : Prop :=
  ∀ n, P12210600149048708309.a n = A266700 n

end A266700

/-! ## A266700.P2426765961617514572

`(A022098(n)-A022100(n))*A022095(n)`
-/

namespace A266700.P2426765961617514572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022098 n - A022100 n) * A022095 n

end

end A266700.P2426765961617514572

namespace A266700

/-- `(A022098(n)-A022100(n))*A022095(n)` -/
def P2426765961617514572.Spec : Prop :=
  ∀ n, P2426765961617514572.a n = A266700 n

end A266700

/-! ## A266700.P4522438749198550008

`(A022114(n)-A022367(n))*A022367(n)`
-/

namespace A266700.P4522438749198550008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022114 n - A022367 n) * A022367 n

end

end A266700.P4522438749198550008

namespace A266700

/-- `(A022114(n)-A022367(n))*A022367(n)` -/
def P4522438749198550008.Spec : Prop :=
  ∀ n, P4522438749198550008.a n = A266700 n

end A266700

/-!
# A266705: Coefficient of x^2 in minimal polynomial of the continued fraction [1^n,sqrt(5),1,1,1,...], where 1^n means n ones.

The programs for A266705, the canonical program `A266705.P4979248889115192289` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266705 has offset 0).

The definition of A266705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266705.P4979248889115192289

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=11, a(2)=11, a(3)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266705

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P4979248889115192289.Spec : Prop :=
  ∀ n, P4979248889115192289.a n = A266705 n

theorem P4979248889115192289.correct : P4979248889115192289.Spec := by
  intro n
  simp only [A266705]

end A266705

/-! ## A266705.P18306595501192128516

`A165326(n)-A266700(n)`
-/

namespace A266705.P18306595501192128516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n - A266700 n

end

end A266705.P18306595501192128516

namespace A266705

/-- `A165326(n)-A266700(n)` -/
def P18306595501192128516.Spec : Prop :=
  ∀ n, P18306595501192128516.a n = A266705 n

end A266705

/-! ## A266705.P17438820127754494183

`abs(A266700(n)+A033999(n))`
-/

namespace A266705.P17438820127754494183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266700 n + A033999 n|

end

end A266705.P17438820127754494183

namespace A266705

/-- `abs(A266700(n)+A033999(n))` -/
def P17438820127754494183.Spec : Prop :=
  ∀ n, P17438820127754494183.a n = A266705 n

end A266705

/-! ## A266705.P216100489332657689

`abs(A192917(n)+Δ[A192916(n)])`
-/

namespace A266705.P216100489332657689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A192917 n + (f1 (n + 1) - f1 n)|

end

end A266705.P216100489332657689

namespace A266705

/-- `abs(A192917(n)+Δ[A192916(n)])` -/
def P216100489332657689.Spec : Prop :=
  ∀ n, P216100489332657689.a n = A266705 n

end A266705

/-! ## A266705.P3880277661816864609

`A062157(A028310(n))-A266700(n)`
-/

namespace A266705.P3880277661816864609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A028310 n).toNat - A266700 n

end

end A266705.P3880277661816864609

namespace A266705

/-- `A062157(A028310(n))-A266700(n)` -/
def P3880277661816864609.Spec : Prop :=
  ∀ n, P3880277661816864609.a n = A266705 n

end A266705

/-! ## A266705.P4085703634514079210

`A033999(A047160(n+2))-A266700(n)`
-/

namespace A266705.P4085703634514079210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A047160 (n + 2)).toNat - A266700 n

end

end A266705.P4085703634514079210

namespace A266705

/-- `A033999(A047160(n+2))-A266700(n)` -/
def P4085703634514079210.Spec : Prop :=
  ∀ n, P4085703634514079210.a n = A266705 n

end A266705

/-! ## A266705.P2014338677440973531

`A000038(n)-(A266700(n)+A033999(n))`
-/

namespace A266705.P2014338677440973531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - (A266700 n + A033999 n)

end

end A266705.P2014338677440973531

namespace A266705

/-- `A000038(n)-(A266700(n)+A033999(n))` -/
def P2014338677440973531.Spec : Prop :=
  ∀ n, P2014338677440973531.a n = A266705 n

end A266705

/-!
# A266706: Coefficient of x in minimal polynomial of the continued fraction [1^n,sqrt(5),1,1,1,...], where 1^n means n ones.

The programs for A266706, the canonical program `A266706.P2389761740966907790` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266706 has offset 1).

The definition of A266706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266706.P2389761740966907790

`3*a(n-1)-a(n-2)-23*(-1)^(n+1)` with `a(0)=1, a(1)=-23, a(2)=-45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266706

/-- `3*a(n-1)-a(n-2)-23*(-1)^(n+1)` -/
def P2389761740966907790.Spec : Prop :=
  ∀ n, P2389761740966907790.a n = A266706 (n + 1)

theorem P2389761740966907790.correct : P2389761740966907790.Spec := by
  intro n
  simp only [A266706, Nat.add_sub_cancel]

end A266706

/-! ## A266706.P18198737857138760335

`A266705(n)-Δ[A266705(n+1)]`
-/

namespace A266706.P18198737857138760335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266705 n - (f1 (n + 1) - f1 n)

end

end A266706.P18198737857138760335

namespace A266706

/-- `A266705(n)-Δ[A266705(n+1)]` -/
def P18198737857138760335.Spec : Prop :=
  ∀ n, P18198737857138760335.a n = A266706 (n + 1)

end A266706

/-! ## A266706.P14550845201761636773

`A266705(n+1)+A266705(n)-A266705(n+2)`
-/

namespace A266706.P14550845201761636773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266705 (n + 1) + (A266705 n - A266705 (n + 2))

end

end A266706.P14550845201761636773

namespace A266706

/-- `A266705(n+1)+A266705(n)-A266705(n+2)` -/
def P14550845201761636773.Spec : Prop :=
  ∀ n, P14550845201761636773.a n = A266706 (n + 1)

end A266706

/-!
# A266707: Coefficient of x^2 in minimal polynomial of the continued fraction [1^n,phi,1,1,1,...], where 1^n means n ones and phi = golden ratio = (1 + sqrt(5))/2.

The programs for A266707, the canonical program `A266707.P5074477213507265024` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266707 has offset 0).

The definition of A266707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266707.P5074477213507265024

`abs(A059929(n)+Δ[A192872(n)])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A266707

/-- `abs(A059929(n)+Δ[A192872(n)])` -/
def P5074477213507265024.Spec : Prop :=
  ∀ n, P5074477213507265024.a n = A266707 n

theorem P5074477213507265024.correct : P5074477213507265024.Spec := by
  intro n
  simp only [A266707]

end A266707

/-! ## A266707.P16502471713126160185

`A000038(n)+A059929(n)+Δ[A192872(n)]`
-/

namespace A266707.P16502471713126160185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A059929 n + (f1 (n + 1) - f1 n))

end

end A266707.P16502471713126160185

namespace A266707

/-- `A000038(n)+A059929(n)+Δ[A192872(n)]` -/
def P16502471713126160185.Spec : Prop :=
  ∀ n, P16502471713126160185.a n = A266707 n

end A266707

/-! ## A266707.P7811567120073764416

`abs(Δ[A192914(n)])`
-/

namespace A266707.P7811567120073764416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A266707.P7811567120073764416

namespace A266707

/-- `abs(Δ[A192914(n)])` -/
def P7811567120073764416.Spec : Prop :=
  ∀ n, P7811567120073764416.a n = A266707 n

end A266707

/-! ## A266707.P17427638134309145232

`A000038(n)+Δ[A192914(n)]`
-/

namespace A266707.P17427638134309145232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A266707.P17427638134309145232

namespace A266707

/-- `A000038(n)+Δ[A192914(n)]` -/
def P17427638134309145232.Spec : Prop :=
  ∀ n, P17427638134309145232.a n = A266707 n

end A266707

/-! ## A266707.P13697417199458754840

`lcm(Δ[A192914(n)], A033999(n))`
-/

namespace A266707.P13697417199458754840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A266707.P13697417199458754840

namespace A266707

/-- `lcm(Δ[A192914(n)], A033999(n))` -/
def P13697417199458754840.Spec : Prop :=
  ∀ n, (P13697417199458754840.a n : ℤ) = A266707 n

end A266707

/-! ## A266707.P15684637287549557077

`abs(Δ[A192879(n)+A033999(n)])`
-/

namespace A266707.P15684637287549557077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192879 n + A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A266707.P15684637287549557077

namespace A266707

/-- `abs(Δ[A192879(n)+A033999(n)])` -/
def P15684637287549557077.Spec : Prop :=
  ∀ n, P15684637287549557077.a n = A266707 n

end A266707

/-! ## A266707.P5461125369019892280

`abs(Δ[A000285(n)*A212804(n)])`
-/

namespace A266707.P5461125369019892280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A266707.P5461125369019892280

namespace A266707

/-- `abs(Δ[A000285(n)*A212804(n)])` -/
def P5461125369019892280.Spec : Prop :=
  ∀ n, P5461125369019892280.a n = A266707 n

end A266707

/-! ## A266707.P9575525831156682646

`abs(A192914(n+1)-A192914(n))`
-/

namespace A266707.P9575525831156682646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A192914 (n + 1) - A192914 n|

end

end A266707.P9575525831156682646

namespace A266707

/-- `abs(A192914(n+1)-A192914(n))` -/
def P9575525831156682646.Spec : Prop :=
  ∀ n, P9575525831156682646.a n = A266707 n

end A266707

/-! ## A266707.P979293891202941639

`abs(Δ[A000045(n+2)²-(2*A000045(n))²])`
-/

namespace A266707.P979293891202941639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 2 - (2 * A000045 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A266707.P979293891202941639

namespace A266707

/-- `abs(Δ[A000045(n+2)²-(2*A000045(n))²])` -/
def P979293891202941639.Spec : Prop :=
  ∀ n, P979293891202941639.a n = A266707 n

end A266707

/-! ## A266707.P939515262626350432

`Δ[A192914(n)]^A178334(n)`
-/

namespace A266707.P939515262626350432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A178334 n : ℤ)

end

end A266707.P939515262626350432

namespace A266707

/-- `Δ[A192914(n)]^A178334(n)` -/
def P939515262626350432.Spec : Prop :=
  ∀ n, P939515262626350432.a n = (A266707 n : ℚ)

end A266707

/-!
# A266708: Coefficient of x in minimal polynomial of the continued fraction [1^n,phi,1,1,1,...], where 1^n means n ones and phi = golden ratio = (1 + sqrt(5))/2.

The programs for A266708, the canonical program `A266708.P14678480856737926102` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266708 has offset 0).

The definition of A266708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266708.P4573225912393188634

`ogf((-10x+2x^2)/(1-2x-2x^2+x^3))`
-/

namespace A266708.P4573225912393188634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -10, 2] [1, -2, -2, 1] n

end

end A266708.P4573225912393188634

namespace A266708

/-- `ogf((-10x+2x^2)/(1-2x-2x^2+x^3))` -/
def P4573225912393188634.Spec : Prop :=
  ∀ n, P4573225912393188634.a n = A266708 n

end A266708

/-! ## A266708.P14678480856737926102

`-(2*A192914(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A266708

/-- `-(2*A192914(n+1))` -/
def P14678480856737926102.Spec : Prop :=
  ∀ n, P14678480856737926102.a n = A266708 n

theorem P14678480856737926102.correct : P14678480856737926102.Spec := by
  intro n
  simp only [A266708]

end A266708

/-! ## A266708.P5911103715978566676

`2*(A192914(n)-A054486(n))`
-/

namespace A266708.P5911103715978566676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A192914 n - A054486 n)

end

end A266708.P5911103715978566676

namespace A266708

/-- `2*(A192914(n)-A054486(n))` -/
def P5911103715978566676.Spec : Prop :=
  ∀ n, P5911103715978566676.a n = A266708 n

end A266708

/-! ## A266708.P13709008178502731163

`2*(A192883(n)-A102714(n))`
-/

namespace A266708.P13709008178502731163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A192883 n - A102714 n)

end

end A266708.P13709008178502731163

namespace A266708

/-- `2*(A192883(n)-A102714(n))` -/
def P13709008178502731163.Spec : Prop :=
  ∀ n, P13709008178502731163.a n = A266708 n

end A266708

/-! ## A266708.P11110637901997105114

`2*(A007598(n)-A121801(n+1))`
-/

namespace A266708.P11110637901997105114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007598 n - A121801 (n + 1))

end

end A266708.P11110637901997105114

namespace A266708

/-- `2*(A007598(n)-A121801(n+1))` -/
def P11110637901997105114.Spec : Prop :=
  ∀ n, P11110637901997105114.a n = A266708 n

end A266708

/-! ## A266708.P12056635984561441499

`2*(A000045(n)²-A121801(n+1))`
-/

namespace A266708.P12056635984561441499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 n ^ 2 - A121801 (n + 1))

end

end A266708.P12056635984561441499

namespace A266708

/-- `2*(A000045(n)²-A121801(n+1))` -/
def P12056635984561441499.Spec : Prop :=
  ∀ n, P12056635984561441499.a n = A266708 n

end A266708

/-! ## A266708.P14357633994082482734

`2*(A175395(n+1)-A014742(n+1))`
-/

namespace A266708.P14357633994082482734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A175395 (n + 1) - A014742 (n + 1))

end

end A266708.P14357633994082482734

namespace A266708

/-- `2*(A175395(n+1)-A014742(n+1))` -/
def P14357633994082482734.Spec : Prop :=
  ∀ n, P14357633994082482734.a n = A266708 n

end A266708

/-! ## A266708.P17916896335969318131

`2*(A000038(n+1)-A192914(n+1))`
-/

namespace A266708.P17916896335969318131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000038 (n + 1) - A192914 (n + 1))

end

end A266708.P17916896335969318131

namespace A266708

/-- `2*(A000038(n+1)-A192914(n+1))` -/
def P17916896335969318131.Spec : Prop :=
  ∀ n, P17916896335969318131.a n = A266708 n

theorem P17916896335969318131.correct : P17916896335969318131.Spec := by
  intro n
  simp only [A266708, Nat.add_sub_cancel, A266708.P17916896335969318131.a, A266708.P14678480856737926102.a, A000038, A000038.P13734959004655594922.a, A192914, A192914.P7675048250764723682.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A266708

/-! ## A266708.P14521989157897532828

`(A033999(2*n+1)-1)*A192914(n+1)`
-/

namespace A266708.P14521989157897532828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) - 1) * A192914 (n + 1)

end

end A266708.P14521989157897532828

namespace A266708

/-- `(A033999(2*n+1)-1)*A192914(n+1)` -/
def P14521989157897532828.Spec : Prop :=
  ∀ n, P14521989157897532828.a n = A266708 n

end A266708

/-! ## A266708.P2628387430178570687

`2*(A059841(2*n+1)-A192914(n+1))`
-/

namespace A266708.P2628387430178570687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059841 (2 * n + 1) - A192914 (n + 1))

end

end A266708.P2628387430178570687

namespace A266708

/-- `2*(A059841(2*n+1)-A192914(n+1))` -/
def P2628387430178570687.Spec : Prop :=
  ∀ n, P2628387430178570687.a n = A266708 n

end A266708

/-! ## A266708.P7635441967050141386

`A192914(n)-A192914(n+1)-A054486(n)`
-/

namespace A266708.P7635441967050141386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 n - A192914 (n + 1) - A054486 n

end

end A266708.P7635441967050141386

namespace A266708

/-- `A192914(n)-A192914(n+1)-A054486(n)` -/
def P7635441967050141386.Spec : Prop :=
  ∀ n, P7635441967050141386.a n = A266708 n

end A266708

/-! ## A266708.P14367624761140074238

`(A000045(n)-A022121(n+1))*A000045(n)`
-/

namespace A266708.P14367624761140074238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n - A022121 (n + 1)) * A000045 n

end

end A266708.P14367624761140074238

namespace A266708

/-- `(A000045(n)-A022121(n+1))*A000045(n)` -/
def P14367624761140074238.Spec : Prop :=
  ∀ n, P14367624761140074238.a n = A266708 n

end A266708

/-! ## A266708.P4463828191515829760

`(A000045(n)-A022086(n))*A000285(n+1)`
-/

namespace A266708.P4463828191515829760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n - A022086 n) * A000285 (n + 1)

end

end A266708.P4463828191515829760

namespace A266708

/-- `(A000045(n)-A022086(n))*A000285(n+1)` -/
def P4463828191515829760.Spec : Prop :=
  ∀ n, P4463828191515829760.a n = A266708 n

end A266708

/-! ## A266708.P17758891867365170854

`(A000285(n)-A022096(n))*A000285(n+1)`
-/

namespace A266708.P17758891867365170854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000285 n - A022096 n) * A000285 (n + 1)

end

end A266708.P17758891867365170854

namespace A266708

/-- `(A000285(n)-A022096(n))*A000285(n+1)` -/
def P17758891867365170854.Spec : Prop :=
  ∀ n, P17758891867365170854.a n = A266708 n

end A266708

/-! ## A266708.P7631164343767072775

`(A001610(n)-A022407(n+1))*A000045(n)`
-/

namespace A266708.P7631164343767072775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 n - A022407 (n + 1)) * A000045 n

end

end A266708.P7631164343767072775

namespace A266708

/-- `(A001610(n)-A022407(n+1))*A000045(n)` -/
def P7631164343767072775.Spec : Prop :=
  ∀ n, P7631164343767072775.a n = A266708 n

end A266708

/-! ## A266708.P1037225008725569861

`(A355288(n)-A022325(n+1))*A000045(n)`
-/

namespace A266708.P1037225008725569861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A355288 n - A022325 (n + 1)) * A000045 n

end

end A266708.P1037225008725569861

namespace A266708

/-- `(A355288(n)-A022325(n+1))*A000045(n)` -/
def P1037225008725569861.Spec : Prop :=
  ∀ n, P1037225008725569861.a n = A266708 n

end A266708

/-! ## A266708.P16872071424304962219

`(A022113(n)-A294157(n))*A294157(n+1)`
-/

namespace A266708.P16872071424304962219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022113 n - A294157 n) * A294157 (n + 1)

end

end A266708.P16872071424304962219

namespace A266708

/-- `(A022113(n)-A294157(n))*A294157(n+1)` -/
def P16872071424304962219.Spec : Prop :=
  ∀ n, P16872071424304962219.a n = A266708 n

end A266708

/-! ## A266708.P18290855709732637186

`A001254(n)-A173661(n+1)-A208176(n+1)`
-/

namespace A266708.P18290855709732637186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n - A173661 (n + 1) - A208176 (n + 1)

end

end A266708.P18290855709732637186

namespace A266708

/-- `A001254(n)-A173661(n+1)-A208176(n+1)` -/
def P18290855709732637186.Spec : Prop :=
  ∀ n, P18290855709732637186.a n = A266708 n

end A266708

/-! ## A266708.P13180206911029387814

`(A000032(n+1)-A022130(n+1))*A000045(n)`
-/

namespace A266708.P13180206911029387814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) - A022130 (n + 1)) * A000045 n

end

end A266708.P13180206911029387814

namespace A266708

/-- `(A000032(n+1)-A022130(n+1))*A000045(n)` -/
def P13180206911029387814.Spec : Prop :=
  ∀ n, P13180206911029387814.a n = A266708 n

end A266708

/-!
# A266709: Coefficient of x in minimal polynomial of the continued fraction [2,1^n,2,1,1,...], where 1^n means n ones.

The programs for A266709, the canonical program `A266709.P11812194294470715169` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266709 has offset 0).

The definition of A266709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266709.P11812194294470715169

`1-2*A192872(n+3)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A266709

/-- `1-2*A192872(n+3)` -/
def P11812194294470715169.Spec : Prop :=
  ∀ n, P11812194294470715169.a n = A266709 n

theorem P11812194294470715169.correct : P11812194294470715169.Spec := by
  intro n
  simp only [A266709]

end A266709

/-! ## A266709.P8210197023855173433

`A192883(n)-A020701(n)²`
-/

namespace A266709.P8210197023855173433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 n - A020701 n ^ 2

end

end A266709.P8210197023855173433

namespace A266709

/-- `A192883(n)-A020701(n)²` -/
def P8210197023855173433.Spec : Prop :=
  ∀ n, P8210197023855173433.a n = A266709 n

end A266709

/-! ## A266709.P274615322668940953

`Δ[A265762(n)+∑[A265762(n)]]`
-/

namespace A266709.P274615322668940953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265762 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265762 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266709.P274615322668940953

namespace A266709

/-- `Δ[A265762(n)+∑[A265762(n)]]` -/
def P274615322668940953.Spec : Prop :=
  ∀ n, P274615322668940953.a n = A266709 n

end A266709

/-! ## A266709.P6501034434579741001

`-(A102714(n)+A099921(n+2))`
-/

namespace A266709.P6501034434579741001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A102714 n + A099921 (n + 2))

end

end A266709.P6501034434579741001

namespace A266709

/-- `-(A102714(n)+A099921(n+2))` -/
def P6501034434579741001.Spec : Prop :=
  ∀ n, P6501034434579741001.a n = A266709 n

end A266709

/-! ## A266709.P13946099044473610196

`A265762(n+1)+Δ[A265762(n)]`
-/

namespace A266709.P13946099044473610196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265762 (n + 1) + (f1 (n + 1) - f1 n)

end

end A266709.P13946099044473610196

namespace A266709

/-- `A265762(n+1)+Δ[A265762(n)]` -/
def P13946099044473610196.Spec : Prop :=
  ∀ n, P13946099044473610196.a n = A266709 n

end A266709

/-! ## A266709.P14719784800358186477

`Δ[A001654(n)-A080143(n+1)]`
-/

namespace A266709.P14719784800358186477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - A080143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266709.P14719784800358186477

namespace A266709

/-- `Δ[A001654(n)-A080143(n+1)]` -/
def P14719784800358186477.Spec : Prop :=
  ∀ n, P14719784800358186477.a n = A266709 n

end A266709

/-! ## A266709.P15568703640694761379

`A192883(n)-Δ[A001654(n+3)]`
-/

namespace A266709.P15568703640694761379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 n - (f1 (n + 1) - f1 n)

end

end A266709.P15568703640694761379

namespace A266709

/-- `A192883(n)-Δ[A001654(n+3)]` -/
def P15568703640694761379.Spec : Prop :=
  ∀ n, P15568703640694761379.a n = A266709 n

end A266709

/-! ## A266709.P97479435015254811

`A007598(n+1)-A192883(n+3)`
-/

namespace A266709.P97479435015254811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) - A192883 (n + 3)

end

end A266709.P97479435015254811

namespace A266709

/-- `A007598(n+1)-A192883(n+3)` -/
def P97479435015254811.Spec : Prop :=
  ∀ n, P97479435015254811.a n = A266709 n

end A266709

/-! ## A266709.P11436766557343090540

`A121646(n+2)-A128533(n+2)`
-/

namespace A266709.P11436766557343090540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121646 (n + 2) - A128533 (n + 2)

end

end A266709.P11436766557343090540

namespace A266709

/-- `A121646(n+2)-A128533(n+2)` -/
def P11436766557343090540.Spec : Prop :=
  ∀ n, P11436766557343090540.a n = A266709 n

end A266709

/-! ## A266709.P4100294386829772801

`Δ[A059841(n+1)-A127546(n+1)]`
-/

namespace A266709.P4100294386829772801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) - A127546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266709.P4100294386829772801

namespace A266709

/-- `Δ[A059841(n+1)-A127546(n+1)]` -/
def P4100294386829772801.Spec : Prop :=
  ∀ n, P4100294386829772801.a n = A266709 n

end A266709

/-! ## A266709.P2990042420551376442

`A265762(n+1)-2*A236428(n+1)`
-/

namespace A266709.P2990042420551376442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265762 (n + 1) - 2 * A236428 (n + 1)

end

end A266709.P2990042420551376442

namespace A266709

/-- `A265762(n+1)-2*A236428(n+1)` -/
def P2990042420551376442.Spec : Prop :=
  ∀ n, P2990042420551376442.a n = A266709 n

end A266709

/-! ## A266709.P2174082728747393229

`A000045(n+1)²-Δ[A080143(n+1)]`
-/

namespace A266709.P2174082728747393229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A266709.P2174082728747393229

namespace A266709

/-- `A000045(n+1)²-Δ[A080143(n+1)]` -/
def P2174082728747393229.Spec : Prop :=
  ∀ n, P2174082728747393229.a n = A266709 n

end A266709

/-!
# A266710: Coefficient of x^0 in the minimal polynomial of the continued fraction [1^n,sqrt(2),1,1,...], where 1^n means n ones.

The programs for A266710, there is no canonical definition to state claims against.
-/

/-! ## A266710.P4629777917250924861

`or(A000010(A108640(n+1)), A226922(n+1))`
-/

namespace A266710.P4629777917250924861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (A108640 (n + 1)).toNat) (A226922 (n + 1))

end

end A266710.P4629777917250924861

/-!
# A266713: Coefficient of x^3 in the minimal polynomial of the continued fraction [1^n,sqrt(2),1,1,...], where 1^n means n ones.

The programs for A266713, there is no canonical definition to state claims against.
-/

/-! ## A266713.P5393099271491819154

`3-A246333(A042589(n))`
-/

namespace A266713.P5393099271491819154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A246333 (A042589 n).toNat

end

end A266713.P5393099271491819154

/-!
# A266714: Number of k <= n such that (n mod k) is prime.

The programs for A266714, there is no canonical definition to state claims against.
-/

/-! ## A266714.P7706064558462576706

`A266715(n+1)+A056172(A028310(n))`
-/

namespace A266714.P7706064558462576706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266715 (n + 1) + A056172 (A028310 n).toNat

end

end A266714.P7706064558462576706

/-! ## A266714.P13679567791832540878

`A266715(n+1)+A056172(A109613(n))`
-/

namespace A266714.P13679567791832540878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266715 (n + 1) + A056172 (A109613 n).toNat

end

end A266714.P13679567791832540878

/-! ## A266714.P558086831377107807

`A266715(n+1)+A230980(A004526(n))`
-/

namespace A266714.P558086831377107807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266715 (n + 1) + A230980 (A004526 n).toNat

end

end A266714.P558086831377107807

/-! ## A266714.P8067249280193261589

`A266715(n+1)+A230980(A123108(n))`
-/

namespace A266714.P8067249280193261589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266715 (n + 1) + A230980 (A123108 n).toNat

end

end A266714.P8067249280193261589

/-! ## A266714.P13215326619833515813

`A266715(n+1)+A056172(A000038(n)+n)`
-/

namespace A266714.P13215326619833515813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266715 (n + 1) + A056172 (A000038 n + (n : ℤ)).toNat

end

end A266714.P13215326619833515813

/-! ## A266714.P6028741075046984104

`A266715(n+1)+A056811(A033638(n))`
-/

namespace A266714.P6028741075046984104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266715 (n + 1) + A056811 (A033638 n).toNat

end

end A266714.P6028741075046984104

/-!
# A266715: Number of k <= floor(n/2) such that (n mod k) is prime.

The programs for A266715, there is no canonical definition to state claims against.
-/

/-! ## A266715.P5233172794769379919

`A266714(n+1)-A056172(A028310(n))`
-/

namespace A266715.P5233172794769379919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266714 (n + 1) - A056172 (A028310 n).toNat

end

end A266715.P5233172794769379919

/-! ## A266715.P6005131622698729823

`A266714(n+1)-A056172(A109613(n))`
-/

namespace A266715.P6005131622698729823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266714 (n + 1) - A056172 (A109613 n).toNat

end

end A266715.P6005131622698729823

/-! ## A266715.P306087692165903703

`A266714(n+1)-A230980(A004526(n))`
-/

namespace A266715.P306087692165903703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266714 (n + 1) - A230980 (A004526 n).toNat

end

end A266715.P306087692165903703

/-! ## A266715.P8282474340021306282

`A266714(n+1)-A230980(A123108(n))`
-/

namespace A266715.P8282474340021306282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266714 (n + 1) - A230980 (A123108 n).toNat

end

end A266715.P8282474340021306282

/-! ## A266715.P10598210380716258613

`A266714(n+1)-A056811(A033638(n))`
-/

namespace A266715.P10598210380716258613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266714 (n + 1) - A056811 (A033638 n).toNat

end

end A266715.P10598210380716258613

/-!
# A266716: Triangle read by rows giving successive states of cellular automaton generated by "Rule 59" initiated with a single ON (black) cell.

The programs for A266716, the canonical program `A266716.P4114286461542328987` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266716 has offset 0).

The definition of A266716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266716.P2108438027380211643

`A267269(A020703(n+1)-1)`
-/

namespace A266716.P2108438027380211643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267269 (A020703 (n + 1) - 1).toNat

end

end A266716.P2108438027380211643

namespace A266716

/-- `A267269(A020703(n+1)-1)` -/
def P2108438027380211643.Spec : Prop :=
  ∀ n, P2108438027380211643.a n = A266716 n

end A266716

/-! ## A266716.P9243647662091422808

`A267269(A057428(n)+A020703(n+1))`
-/

namespace A266716.P9243647662091422808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267269 (A057428 n + A020703 (n + 1)).toNat

end

end A266716.P9243647662091422808

namespace A266716

/-- `A267269(A057428(n)+A020703(n+1))` -/
def P9243647662091422808.Spec : Prop :=
  ∀ n, P9243647662091422808.a n = A266716 n

end A266716

/-! ## A266716.P4114286461542328987

`1-A263428(A049068(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A266716

/-- `1-A263428(A049068(n+1))` -/
def P4114286461542328987.Spec : Prop :=
  ∀ n, P4114286461542328987.a n = A266716 n

theorem P4114286461542328987.correct : P4114286461542328987.Spec := by
  intro n
  simp only [A266716]

end A266716

/-! ## A266716.P17867625621714401742

`xor(A034947(n+1)², A263428(A049068(n+1)))`
-/

namespace A266716.P17867625621714401742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034947 (n + 1) ^ 2) (A263428 (A049068 (n + 1)).toNat)

end

end A266716.P17867625621714401742

namespace A266716

/-- `xor(A034947(n+1)², A263428(A049068(n+1)))` -/
def P17867625621714401742.Spec : Prop :=
  ∀ n, P17867625621714401742.a n = A266716 n

end A266716

/-! ## A266716.P9248051676036199078

`xor(A033999(2*n), A263428(A049068(n+1)))`
-/

namespace A266716.P9248051676036199078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 (2 * n)) (A263428 (A049068 (n + 1)).toNat)

end

end A266716.P9248051676036199078

namespace A266716

/-- `xor(A033999(2*n), A263428(A049068(n+1)))` -/
def P9248051676036199078.Spec : Prop :=
  ∀ n, P9248051676036199078.a n = A266716 n

end A266716

/-! ## A266716.P1067511843460171182

`A266459(n%A133214(A144396(n+1)))`
-/

namespace A266716.P1067511843460171182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266459 (Int.tmod (n : ℤ) (A133214 (A144396 (n + 1)).toNat)).toNat

end

end A266716.P1067511843460171182

namespace A266716

/-- `A266459(n%A133214(A144396(n+1)))` -/
def P1067511843460171182.Spec : Prop :=
  ∀ n, P1067511843460171182.a n = A266716 n

end A266716

/-!
# A266717: Binary representation of the n-th iteration of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266717, there is no canonical definition to state claims against.
-/

/-! ## A266717.P7297892371442355300

`A007088(A266718(n))`
-/

namespace A266717.P7297892371442355300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266718 n).toNat

end

end A266717.P7297892371442355300

/-! ## A266717.P5633765704423222154

`A007088(A153284(n+1)*A266461(n))`
-/

namespace A266717.P5633765704423222154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A153284 (n + 1) * A266461 n).toNat

end

end A266717.P5633765704423222154

/-! ## A266717.P16691045407750517851

`A007088((2-A165326(n))*A266461(n))`
-/

namespace A266717.P16691045407750517851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((2 - A165326 n) * A266461 n).toNat

end

end A266717.P16691045407750517851

/-! ## A266717.P258762561765993077

`A007088(lcm(A153284(n+1), A266461(n)))`
-/

namespace A266717.P258762561765993077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A153284 (n + 1)) (A266461 n))

end

end A266717.P258762561765993077

/-! ## A266717.P13947302898860029838

`A007088(A266255(n+1)+A266255(n)-A266069(n+1))`
-/

namespace A266717.P13947302898860029838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266255 (n + 1) + (A266255 n - A266069 (n + 1))).toNat

end

end A266717.P13947302898860029838

/-!
# A266718: Decimal representation of the n-th iteration of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266718, the canonical program `A266718.P2106620432007152276` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266718 has offset 0).

The definition of A266718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266718.P6385754379370921855

`A153284(n+1)*A266461(n)`
-/

namespace A266718.P6385754379370921855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) * A266461 n

end

end A266718.P6385754379370921855

namespace A266718

/-- `A153284(n+1)*A266461(n)` -/
def P6385754379370921855.Spec : Prop :=
  ∀ n, P6385754379370921855.a n = A266718 n

end A266718

/-! ## A266718.P2106620432007152276

`(2-A165326(n))*A266461(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A266718

/-- `(2-A165326(n))*A266461(n)` -/
def P2106620432007152276.Spec : Prop :=
  ∀ n, P2106620432007152276.a n = A266718 n

theorem P2106620432007152276.correct : P2106620432007152276.Spec := by
  intro n
  simp only [A266718]

end A266718

/-! ## A266718.P6068559300904525618

`A093178(A267352(n))*A266461(n)`
-/

namespace A266718.P6068559300904525618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A267352 n).toNat * A266461 n

end

end A266718.P6068559300904525618

namespace A266718

/-- `A093178(A267352(n))*A266461(n)` -/
def P6068559300904525618.Spec : Prop :=
  ∀ n, P6068559300904525618.a n = A266718 n

end A266718

/-! ## A266718.P16493976402534293368

`A266461(n)*A267352(A237420(n))`
-/

namespace A266718.P16493976402534293368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266461 n * A267352 (A237420 n).toNat

end

end A266718.P16493976402534293368

namespace A266718

/-- `A266461(n)*A267352(A237420(n))` -/
def P16493976402534293368.Spec : Prop :=
  ∀ n, P16493976402534293368.a n = A266718 n

end A266718

/-! ## A266718.P4336893763200951191

`or(A266069(n)+A131572(n), A131572(n))`
-/

namespace A266718.P4336893763200951191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266069 n + A131572 n) (A131572 n)

end

end A266718.P4336893763200951191

namespace A266718

/-- `or(A266069(n)+A131572(n), A131572(n))` -/
def P4336893763200951191.Spec : Prop :=
  ∀ n, P4336893763200951191.a n = A266718 n

end A266718

/-! ## A266718.P17249480040018407259

`A266255(n+1)+A266255(n)-A266069(n+1)`
-/

namespace A266718.P17249480040018407259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266255 (n + 1) + (A266255 n - A266069 (n + 1))

end

end A266718.P17249480040018407259

namespace A266718

/-- `A266255(n+1)+A266255(n)-A266069(n+1)` -/
def P17249480040018407259.Spec : Prop :=
  ∀ n, P17249480040018407259.a n = A266718 n

end A266718

/-!
# A266719: Middle column of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266719, the canonical program `A266719.P12462107278927765487` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266719 has offset 0).

The definition of A266719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266719.P12462107278927765487

`Δ[round((n-3)/2)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266719

/-- `Δ[round((n-3)/2)]` -/
def P12462107278927765487.Spec : Prop :=
  ∀ n, P12462107278927765487.a n = A266719 n

theorem P12462107278927765487.correct : P12462107278927765487.Spec := by
  intro n
  simp only [A266719]

end A266719

/-!
# A266720: Binary representation of the middle column of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266720, the canonical program `A266720.P9950493863436978358` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266720 has offset 0).

The definition of A266720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266720.P9950493863436978358

`Δ[round((n-3)/2)]+10*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266720

/-- `Δ[round((n-3)/2)]+10*a(n-1)` -/
def P9950493863436978358.Spec : Prop :=
  ∀ n, P9950493863436978358.a n = A266720 n

theorem P9950493863436978358.correct : P9950493863436978358.Spec := by
  intro n
  simp only [A266720]

end A266720

/-! ## A266720.P16199275574396399241

`or(10*a(n-1), Δ[round((n-3)/2)])` with `a(0)=1`
-/

namespace A266720.P16199275574396399241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A266720.P16199275574396399241

namespace A266720

/-- `or(10*a(n-1), Δ[round((n-3)/2)])` -/
def P16199275574396399241.Spec : Prop :=
  ∀ n, P16199275574396399241.a n = A266720 n

end A266720

/-! ## A266720.P14965251256087287831

`xor(1, or(10*a(n-1), char[2*(n+2)]))` with `a(0)=1, a(1)=10`
-/

namespace A266720.P14965251256087287831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  Nat.xor 1 (Nat.lor (10 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0))

end

end A266720.P14965251256087287831

namespace A266720

/-- `xor(1, or(10*a(n-1), char[2*(n+2)]))` -/
def P14965251256087287831.Spec : Prop :=
  ∀ n, (P14965251256087287831.a n : ℤ) = A266720 n

end A266720

/-! ## A266720.P1453945769037113226

`xor(10*a(n-1), A266719(n))` with `a(0)=1`
-/

namespace A266720.P1453945769037113226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A266719 n)

end

end A266720.P1453945769037113226

namespace A266720

/-- `xor(10*a(n-1), A266719(n))` -/
def P1453945769037113226.Spec : Prop :=
  ∀ n, P1453945769037113226.a n = A266720 n

end A266720

/-! ## A266720.P1615495772355657315

`xor(10*a(n-1), A000035(A060000(n+1)))` with `a(0)=1`
-/

namespace A266720.P1615495772355657315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A000035 (A060000 (n + 1)).toNat)

end

end A266720.P1615495772355657315

namespace A266720

/-- `xor(10*a(n-1), A000035(A060000(n+1)))` -/
def P1615495772355657315.Spec : Prop :=
  ∀ n, P1615495772355657315.a n = A266720 n

end A266720

/-!
# A266721: Decimal representation of the middle column of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266721, the canonical program `A266721.P13285861787842265541` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266721 has offset 0).

The definition of A266721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266721.P13285861787842265541

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=11, a(4)=22`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266721

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P13285861787842265541.Spec : Prop :=
  ∀ n, P13285861787842265541.a n = A266721 n

theorem P13285861787842265541.correct : P13285861787842265541.Spec := by
  intro n
  simp only [A266721]

end A266721

/-! ## A266721.P18310428172867490026

`floor(17*2^n/12)`
-/

namespace A266721.P18310428172867490026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(17 * 2 ^ n : ℚ) / 12⌋

end

end A266721.P18310428172867490026

namespace A266721

/-- `floor(17*2^n/12)` -/
def P18310428172867490026.Spec : Prop :=
  ∀ n, P18310428172867490026.a n = A266721 n

end A266721

/-! ## A266721.P9481961346936919772

`ogf((1+x^3-x^4)/(1-2x-x^2+2x^3))`
-/

namespace A266721.P9481961346936919772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1, -1] [1, -2, -1, 2] n

end

end A266721.P9481961346936919772

namespace A266721

/-- `ogf((1+x^3-x^4)/(1-2x-x^2+2x^3))` -/
def P9481961346936919772.Spec : Prop :=
  ∀ n, P9481961346936919772.a n = A266721 n

end A266721

/-! ## A266721.P7090977703887034199

`n%2+2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A266721.P7090977703887034199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  n % 2 + 2 * a (n - 1)

end

end A266721.P7090977703887034199

namespace A266721

/-- `n%2+2*a(n-1)` -/
def P7090977703887034199.Spec : Prop :=
  ∀ n, (P7090977703887034199.a n : ℤ) = A266721 n

end A266721

/-! ## A266721.P3469623028177878297

`or(2*a(n-1), gcd(2, n))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A266721.P3469623028177878297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Nat.lor (2 * a (n - 1)) (Nat.gcd 2 n)

end

end A266721.P3469623028177878297

namespace A266721

/-- `or(2*a(n-1), gcd(2, n))` -/
def P3469623028177878297.Spec : Prop :=
  ∀ n, (P3469623028177878297.a n : ℤ) = A266721 n

end A266721

/-! ## A266721.P12429758009474710722

`2*(a(n-1)+n)-comp[or(2, n)]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A266721.P12429758009474710722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * (a (n - 1) + (n : ℤ)) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A266721.P12429758009474710722

namespace A266721

/-- `2*(a(n-1)+n)-comp[or(2, n)]` -/
def P12429758009474710722.Spec : Prop :=
  ∀ n, P12429758009474710722.a n = A266721 n

end A266721

/-! ## A266721.P11602112145908653658

`A266719(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A266721.P11602112145908653658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266719 n + 2 * a (n - 1)

end

end A266721.P11602112145908653658

namespace A266721

/-- `A266719(n)+2*a(n-1)` -/
def P11602112145908653658.Spec : Prop :=
  ∀ n, P11602112145908653658.a n = A266721 n

end A266721

/-! ## A266721.P14383967249369162666

`a(n-1)+A296066(n)+a(n-1)` with `a(0)=1`
-/

namespace A266721.P14383967249369162666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A296066 n + a (n - 1))

end

end A266721.P14383967249369162666

namespace A266721

/-- `a(n-1)+A296066(n)+a(n-1)` -/
def P14383967249369162666.Spec : Prop :=
  ∀ n, P14383967249369162666.a n = A266721 n

end A266721

/-! ## A266721.P10620061851017971732

`char[3]+a(n-1)+or(a(n-1), Δ[A096386(n)])` with `a(0)=1`
-/

namespace A266721.P10620061851017971732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096386 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (a (n - 1) + Int.lor (a (n - 1)) (f2 (n + 1) - f2 n))

end

end A266721.P10620061851017971732

namespace A266721

/-- `char[3]+a(n-1)+or(a(n-1), Δ[A096386(n)])` -/
def P10620061851017971732.Spec : Prop :=
  ∀ n, P10620061851017971732.a n = A266721 n

end A266721

/-! ## A266721.P5700789042365572123

`A081254(n+1)-A166444(n)`
-/

namespace A266721.P5700789042365572123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081254 (n + 1) - A166444 n

end

end A266721.P5700789042365572123

namespace A266721

/-- `A081254(n+1)-A166444(n)` -/
def P5700789042365572123.Spec : Prop :=
  ∀ n, P5700789042365572123.a n = A266721 n

end A266721

/-! ## A266721.P13150966686368921649

`xor(A000975(n), A125176(n+1))`
-/

namespace A266721.P13150966686368921649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A125176 (n + 1))

end

end A266721.P13150966686368921649

namespace A266721

/-- `xor(A000975(n), A125176(n+1))` -/
def P13150966686368921649.Spec : Prop :=
  ∀ n, P13150966686368921649.a n = A266721 n

end A266721

/-! ## A266721.P4431682147808021793

`(2*and(1, n)+4*a(n-1))/2` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A266721.P4431682147808021793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  ((2 * Nat.land 1 n : ℚ) + 4 * a (n - 1)) / 2

end

end A266721.P4431682147808021793

namespace A266721

/-- `(2*and(1, n)+4*a(n-1))/2` -/
def P4431682147808021793.Spec : Prop :=
  ∀ n, P4431682147808021793.a n = (A266721 n : ℚ)

end A266721

/-! ## A266721.P17798433169134386665

`A054135(n+1)-A267045(n)`
-/

namespace A266721.P17798433169134386665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054135 (n + 1) - A267045 n

end

end A266721.P17798433169134386665

namespace A266721

/-- `A054135(n+1)-A267045(n)` -/
def P17798433169134386665.Spec : Prop :=
  ∀ n, P17798433169134386665.a n = A266721 n

end A266721

/-! ## A266721.P2751922143597144100

`A000225(n+2)-A266613(n+1)`
-/

namespace A266721.P2751922143597144100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A266613 (n + 1)

end

end A266721.P2751922143597144100

namespace A266721

/-- `A000225(n+2)-A266613(n+1)` -/
def P2751922143597144100.Spec : Prop :=
  ∀ n, P2751922143597144100.a n = A266721 n

end A266721

/-! ## A266721.P9281401683375115418

`A266248(n+2)-2^(n+2)`
-/

namespace A266721.P9281401683375115418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266248 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A266721.P9281401683375115418

namespace A266721

/-- `A266248(n+2)-2^(n+2)` -/
def P9281401683375115418.Spec : Prop :=
  ∀ n, P9281401683375115418.a n = A266721 n

end A266721

/-!
# A266722: Number of ON (black) cells in the n-th iteration of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266722, the canonical program `A266722.P5637698890615748076` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266722 has offset 0).

The definition of A266722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266722.P5637698890615748076

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=6, a(4)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266722

/-- `2*a(n-2)-a(n-4)` -/
def P5637698890615748076.Spec : Prop :=
  ∀ n, P5637698890615748076.a n = A266722 n

theorem P5637698890615748076.correct : P5637698890615748076.Spec := by
  intro n
  simp only [A266722]

end A266722

/-! ## A266722.P14260835968832171490

`lcm(2, n^C(2, a(n-1)))` with `a(0)=1`
-/

namespace A266722.P14260835968832171490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (n ^ Nat.choose 2 (a (n - 1)))

end

end A266722.P14260835968832171490

namespace A266722

/-- `lcm(2, n^C(2, a(n-1)))` -/
def P14260835968832171490.Spec : Prop :=
  ∀ n, (P14260835968832171490.a n : ℤ) = A266722 n

end A266722

/-! ## A266722.P16658105211009525529

`or(2, 2*n-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A266722.P16658105211009525529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 2 ((2 * n : ℤ) - a (n - 1))

end

end A266722.P16658105211009525529

namespace A266722

/-- `or(2, 2*n-a(n-1))` -/
def P16658105211009525529.Spec : Prop :=
  ∀ n, P16658105211009525529.a n = A266722 n

end A266722

/-! ## A266722.P15754595134338577245

`floor(4*n/a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A266722.P15754595134338577245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  ⌊4 * ((n : ℚ) / (a (n - 1) : ℚ))⌋

end

end A266722.P15754595134338577245

namespace A266722

/-- `floor(4*n/a(n-1))` -/
def P15754595134338577245.Spec : Prop :=
  ∀ n, P15754595134338577245.a n = A266722 n

end A266722

/-! ## A266722.P15227450409984120970

`2*gcd(n, 2-a(n%2))` with `a(0)=1, a(1)=2`
-/

namespace A266722.P15227450409984120970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * Int.gcd (n : ℤ) (2 - (a (n % 2) : ℤ))

end

end A266722.P15227450409984120970

namespace A266722

/-- `2*gcd(n, 2-a(n%2))` -/
def P15227450409984120970.Spec : Prop :=
  ∀ n, (P15227450409984120970.a n : ℤ) = A266722 n

end A266722

/-! ## A266722.P7778144779550189008

`4*ceil(n/a(n-1))-2` with `a(0)=1`
-/

namespace A266722.P7778144779550189008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ⌈(n : ℚ) / (a (n - 1) : ℚ)⌉ - 2

end

end A266722.P7778144779550189008

namespace A266722

/-- `4*ceil(n/a(n-1))-2` -/
def P7778144779550189008.Spec : Prop :=
  ∀ n, P7778144779550189008.a n = A266722 n

end A266722

/-! ## A266722.P11504638844371159670

`a(n-2)+4*and(1, n)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A266722.P11504638844371159670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 2) + 4 * Nat.land 1 n

end

end A266722.P11504638844371159670

namespace A266722

/-- `a(n-2)+4*and(1, n)` -/
def P11504638844371159670.Spec : Prop :=
  ∀ n, (P11504638844371159670.a n : ℤ) = A266722 n

end A266722

/-! ## A266722.P9656598978649446481

`∑[4*and(1, n)]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A266722.P9656598978649446481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A266722.P9656598978649446481

namespace A266722

/-- `∑[4*and(1, n)]-a(n-1)` -/
def P9656598978649446481.Spec : Prop :=
  ∀ n, P9656598978649446481.a n = A266722 n

end A266722

/-! ## A266722.P18367987514028784697

`2*((1-n)%a(n-1)+n)` with `a(0)=1`
-/

namespace A266722.P18367987514028784697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Int.tmod (1 - (n : ℤ)) (a (n - 1)) + (n : ℤ))

end

end A266722.P18367987514028784697

namespace A266722

/-- `2*((1-n)%a(n-1)+n)` -/
def P18367987514028784697.Spec : Prop :=
  ∀ n, P18367987514028784697.a n = A266722 n

end A266722

/-! ## A266722.P18255253100663516460

`2*(n-(n-1)%a(n-1))` with `a(0)=1`
-/

namespace A266722.P18255253100663516460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - Int.tmod ((n : ℤ) - 1) (a (n - 1)))

end

end A266722.P18255253100663516460

namespace A266722

/-- `2*(n-(n-1)%a(n-1))` -/
def P18255253100663516460.Spec : Prop :=
  ∀ n, P18255253100663516460.a n = A266722 n

end A266722

/-! ## A266722.P6307955111586608817

`and((-1)^n, comp[2*(n+1)])+1`
-/

namespace A266722.P6307955111586608817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1

end

end A266722.P6307955111586608817

namespace A266722

/-- `and((-1)^n, comp[2*(n+1)])+1` -/
def P6307955111586608817.Spec : Prop :=
  ∀ n, P6307955111586608817.a n = A266722 n

end A266722

/-! ## A266722.P10439212802154190209

`a(n-2)+4%a(n-2)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=6`
-/

namespace A266722.P10439212802154190209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 6] fun n a =>
  a (n - 2) + 4 % a (n - 2)

end

end A266722.P10439212802154190209

namespace A266722

/-- `a(n-2)+4%a(n-2)` -/
def P10439212802154190209.Spec : Prop :=
  ∀ n, (P10439212802154190209.a n : ℤ) = A266722 n

end A266722

/-! ## A266722.P9184578618018537011

`2*n^(gcd(n+1, a(n-1))-1)` with `a(0)=1`
-/

namespace A266722.P9184578618018537011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (n : ℚ) ^ ((Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ) - 1 : ℤ)

end

end A266722.P9184578618018537011

namespace A266722

/-- `2*n^(gcd(n+1, a(n-1))-1)` -/
def P9184578618018537011.Spec : Prop :=
  ∀ n, P9184578618018537011.a n = (A266722 n : ℚ)

end A266722

/-! ## A266722.P1172038743814593596

`2*n-and(2*(n-1), a(n-1))` with `a(0)=1`
-/

namespace A266722.P1172038743814593596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - Int.land (2 * ((n : ℤ) - 1)) (a (n - 1))

end

end A266722.P1172038743814593596

namespace A266722

/-- `2*n-and(2*(n-1), a(n-1))` -/
def P1172038743814593596.Spec : Prop :=
  ∀ n, P1172038743814593596.a n = A266722 n

end A266722

/-! ## A266722.P739277149843815706

`a(n-2)-(5%a(n-1)-5)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A266722.P739277149843815706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 2) - (Int.tmod 5 (a (n - 1)) - 5)

end

end A266722.P739277149843815706

namespace A266722

/-- `a(n-2)-(5%a(n-1)-5)` -/
def P739277149843815706.Spec : Prop :=
  ∀ n, P739277149843815706.a n = A266722 n

end A266722

/-! ## A266722.P15900599854577951162

`floor(a(n-2)+(4/a(n-1))²)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A266722.P15900599854577951162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) + (4 / (a (n - 1) : ℚ)) ^ 2⌋

end

end A266722.P15900599854577951162

namespace A266722

/-- `floor(a(n-2)+(4/a(n-1))²)` -/
def P15900599854577951162.Spec : Prop :=
  ∀ n, P15900599854577951162.a n = A266722 n

end A266722

/-! ## A266722.P10287543404439542300

`n/(n/2-floor(n/a(n-1)))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A266722.P10287543404439542300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (n : ℚ) / ((n : ℚ) / 2 - (⌊(n : ℚ) / a (n - 1)⌋ : ℚ))

end

end A266722.P10287543404439542300

namespace A266722

/-- `n/(n/2-floor(n/a(n-1)))` -/
def P10287543404439542300.Spec : Prop :=
  ∀ n, P10287543404439542300.a n = (A266722 n : ℚ)

end A266722

/-! ## A266722.P11414356376521383521

`n/((a(n-1)-n)/a(n-2)+1)` with `a(0)=1, a(1)=2`
-/

namespace A266722.P11414356376521383521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℚ) / ((a (n - 1) - (n : ℚ)) / a (n - 2) + 1)

end

end A266722.P11414356376521383521

namespace A266722

/-- `n/((a(n-1)-n)/a(n-2)+1)` -/
def P11414356376521383521.Spec : Prop :=
  ∀ n, P11414356376521383521.a n = (A266722 n : ℚ)

end A266722

/-! ## A266722.P7310114542188742240

`n/(1-(n-a(n-1))/a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A266722.P7310114542188742240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℚ) / (1 - ((n : ℚ) - a (n - 1)) / a (n - 2))

end

end A266722.P7310114542188742240

namespace A266722

/-- `n/(1-(n-a(n-1))/a(n-2))` -/
def P7310114542188742240.Spec : Prop :=
  ∀ n, P7310114542188742240.a n = (A266722 n : ℚ)

end A266722

/-! ## A266722.P13970058450604569925

`gcd(2*n, A110907(n))`
-/

namespace A266722.P13970058450604569925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A110907 n)

end

end A266722.P13970058450604569925

namespace A266722

/-- `gcd(2*n, A110907(n))` -/
def P13970058450604569925.Spec : Prop :=
  ∀ n, (P13970058450604569925.a n : ℤ) = A266722 n

end A266722

/-!
# A266723: Total number of ON (black) cells after n iterations of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266723, the canonical program `A266723.P8175901567302543336` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266723 has offset 0).

The definition of A266723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266723.P15378168733201709473

`∑[2*n^(n%2)]-1`
-/

namespace A266723.P15378168733201709473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A266723.P15378168733201709473

namespace A266723

/-- `∑[2*n^(n%2)]-1` -/
def P15378168733201709473.Spec : Prop :=
  ∀ n, P15378168733201709473.a n = A266723 n

end A266723

/-! ## A266723.P12896970722868427011

`2*∑[n^and(1, n)]-1`
-/

namespace A266723.P12896970722868427011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A266723.P12896970722868427011

namespace A266723

/-- `2*∑[n^and(1, n)]-1` -/
def P12896970722868427011.Spec : Prop :=
  ∀ n, P12896970722868427011.a n = A266723 n

end A266723

/-! ## A266723.P8175901567302543336

`a(n-gcd(2, n))+2*n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266723

/-- `a(n-gcd(2, n))+2*n` -/
def P8175901567302543336.Spec : Prop :=
  ∀ n, (P8175901567302543336.a n : ℤ) = A266723 n

theorem P8175901567302543336.correct : P8175901567302543336.Spec := by
  intro n
  simp only [A266723]

end A266723

/-! ## A266723.P4611380113104110355

`a(and(n-1, -2))+2*n` with `a(0)=1`
-/

namespace A266723.P4611380113104110355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land ((n : ℤ) - 1) (-2)).toNat + 2 * n

end

end A266723.P4611380113104110355

namespace A266723

/-- `a(and(n-1, -2))+2*n` -/
def P4611380113104110355.Spec : Prop :=
  ∀ n, (P4611380113104110355.a n : ℤ) = A266723 n

end A266723

/-! ## A266723.P7587308798238717873

`∑[gcd(2*or(1, n), 2*n)]-1`
-/

namespace A266723.P7587308798238717873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * Nat.lor 1 n) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A266723.P7587308798238717873

namespace A266723

/-- `∑[gcd(2*or(1, n), 2*n)]-1` -/
def P7587308798238717873.Spec : Prop :=
  ∀ n, P7587308798238717873.a n = A266723 n

end A266723

/-! ## A266723.P5081650768739076807

`∑[lcm(2, n^C(2, a(n-1)))]` with `a(0)=1`
-/

namespace A266723.P5081650768739076807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 2 (n ^ Nat.choose 2 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266723.P5081650768739076807

namespace A266723

/-- `∑[lcm(2, n^C(2, a(n-1)))]` -/
def P5081650768739076807.Spec : Prop :=
  ∀ n, (P5081650768739076807.a n : ℤ) = A266723 n

end A266723

/-! ## A266723.P123287078671625960

`∑[2*n*and(1, n)]+or(1, n)`
-/

namespace A266723.P123287078671625960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 n

end

end A266723.P123287078671625960

namespace A266723

/-- `∑[2*n*and(1, n)]+or(1, n)` -/
def P123287078671625960.Spec : Prop :=
  ∀ n, (P123287078671625960.a n : ℤ) = A266723 n

end A266723

/-! ## A266723.P15921454792825049395

`∑[floor(4*n/a(n-1))]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A266723.P15921454792825049395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  ⌊4 * ((n : ℚ) / (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266723.P15921454792825049395

namespace A266723

/-- `∑[floor(4*n/a(n-1))]` -/
def P15921454792825049395.Spec : Prop :=
  ∀ n, P15921454792825049395.a n = A266723 n

end A266723

/-! ## A266723.P18314422865160070382

`a(and(1, n)+n-2)+2*n` with `a(0)=1`
-/

namespace A266723.P18314422865160070382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((Nat.land 1 n : ℤ) + ((n : ℤ) - 2)).toNat + 2 * n

end

end A266723.P18314422865160070382

namespace A266723

/-- `a(and(1, n)+n-2)+2*n` -/
def P18314422865160070382.Spec : Prop :=
  ∀ n, (P18314422865160070382.a n : ℤ) = A266723 n

end A266723

/-! ## A266723.P12818369741167836813

`or(1, n*(n+2)-a(n-1))` with `a(0)=1`
-/

namespace A266723.P12818369741167836813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 ((n * (n + 2) : ℤ) - a (n - 1))

end

end A266723.P12818369741167836813

namespace A266723

/-- `or(1, n*(n+2)-a(n-1))` -/
def P12818369741167836813.Spec : Prop :=
  ∀ n, P12818369741167836813.a n = A266723 n

end A266723

/-! ## A266723.P8346804383849633079

`abs(or(1, a(n-1)-(n+1)²))` with `a(0)=1`
-/

namespace A266723.P8346804383849633079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.lor 1 (a (n - 1) - ((n + 1) ^ 2 : ℤ))|

end

end A266723.P8346804383849633079

namespace A266723

/-- `abs(or(1, a(n-1)-(n+1)²))` -/
def P8346804383849633079.Spec : Prop :=
  ∀ n, P8346804383849633079.a n = A266723 n

end A266723

/-! ## A266723.P8925512772711467462

`-or(1, a(n-1)-(n+1)²)` with `a(0)=1`
-/

namespace A266723.P8925512772711467462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.lor 1 (a (n - 1) - ((n + 1) ^ 2 : ℤ))

end

end A266723.P8925512772711467462

namespace A266723

/-- `-or(1, a(n-1)-(n+1)²)` -/
def P8925512772711467462.Spec : Prop :=
  ∀ n, P8925512772711467462.a n = A266723 n

end A266723

/-! ## A266723.P6449863737992254822

`and(-2, (n+1)²)-a(n-1)` with `a(0)=1`
-/

namespace A266723.P6449863737992254822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (-2) ((n + 1) ^ 2 : ℤ) - a (n - 1)

end

end A266723.P6449863737992254822

namespace A266723

/-- `and(-2, (n+1)²)-a(n-1)` -/
def P6449863737992254822.Spec : Prop :=
  ∀ n, P6449863737992254822.a n = A266723 n

end A266723

/-! ## A266723.P120789410444567939

`a(n-(char[2*n]+1))+2*n` with `a(0)=1`
-/

namespace A266723.P120789410444567939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - ((if ∃ j, f1 j = n then 1 else 0) + 1)) + 2 * n

end

end A266723.P120789410444567939

namespace A266723

/-- `a(n-(char[2*n]+1))+2*n` -/
def P120789410444567939.Spec : Prop :=
  ∀ n, (P120789410444567939.a n : ℤ) = A266723 n

end A266723

/-! ## A266723.P13554857506223545566

`∑[ogf((1+x-x^2+3x^3)/(1-2x^2+x^4))]+n`
-/

namespace A266723.P13554857506223545566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 3] [1, 0, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A266723.P13554857506223545566

namespace A266723

/-- `∑[ogf((1+x-x^2+3x^3)/(1-2x^2+x^4))]+n` -/
def P13554857506223545566.Spec : Prop :=
  ∀ n, P13554857506223545566.a n = A266723 n

end A266723

/-! ## A266723.P12438716776492490045

`2*floor((n+1)²/2)-a(n-1)` with `a(0)=1`
-/

namespace A266723.P12438716776492490045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ⌊((n + 1) ^ 2 : ℚ) / 2⌋ - a (n - 1)

end

end A266723.P12438716776492490045

namespace A266723

/-- `2*floor((n+1)²/2)-a(n-1)` -/
def P12438716776492490045.Spec : Prop :=
  ∀ n, P12438716776492490045.a n = A266723 n

end A266723

/-! ## A266723.P10169268265266186964

`∑[abs(2-(n+1)*2*and(1, n))]-1`
-/

namespace A266723.P10169268265266186964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((n + 1) * (2 * Nat.land 1 n) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A266723.P10169268265266186964

namespace A266723

/-- `∑[abs(2-(n+1)*2*and(1, n))]-1` -/
def P10169268265266186964.Spec : Prop :=
  ∀ n, P10169268265266186964.a n = A266723 n

end A266723

/-! ## A266723.P14963363873110840823

`(n+1)²-(∑[(-1)^n]+a(n-1))` with `a(0)=1`
-/

namespace A266723.P14963363873110840823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A266723.P14963363873110840823

namespace A266723

/-- `(n+1)²-(∑[(-1)^n]+a(n-1))` -/
def P14963363873110840823.Spec : Prop :=
  ∀ n, P14963363873110840823.a n = A266723 n

end A266723

/-! ## A266723.P732509943610191133

`(n+1)²-(a(n-1)+and(1, n+1))` with `a(0)=1`
-/

namespace A266723.P732509943610191133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℤ) - (a (n - 1) + (Nat.land 1 (n + 1) : ℤ))

end

end A266723.P732509943610191133

namespace A266723

/-- `(n+1)²-(a(n-1)+and(1, n+1))` -/
def P732509943610191133.Spec : Prop :=
  ∀ n, P732509943610191133.a n = A266723 n

end A266723

/-! ## A266723.P1625660926890492588

`∑[(n-1)*2*and(1, n)]+2*n+1`
-/

namespace A266723.P1625660926890492588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A266723.P1625660926890492588

namespace A266723

/-- `∑[(n-1)*2*and(1, n)]+2*n+1` -/
def P1625660926890492588.Spec : Prop :=
  ∀ n, P1625660926890492588.a n = A266723 n

end A266723

/-!
# A266724: Number of OFF (white) cells in the n-th iteration of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266724, the canonical program `A266724.P13503456145107445204` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266724 has offset 0).

The definition of A266724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266724.P5489984049043449217

`gcd(n%2, comp[2*(n+1)])`
-/

namespace A266724.P5489984049043449217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n % 2) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A266724.P5489984049043449217

namespace A266724

/-- `gcd(n%2, comp[2*(n+1)])` -/
def P5489984049043449217.Spec : Prop :=
  ∀ n, (P5489984049043449217.a n : ℤ) = A266724 n

end A266724

/-! ## A266724.P13503456145107445204

`xor(2, a(n-2)+2)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266724

/-- `xor(2, a(n-2)+2)` -/
def P13503456145107445204.Spec : Prop :=
  ∀ n, (P13503456145107445204.a n : ℤ) = A266724 n

theorem P13503456145107445204.correct : P13503456145107445204.Spec := by
  intro n
  simp only [A266724]

end A266724

/-! ## A266724.P9137631935942941025

`comp[2*(n+1)]^log2(gcd(2, n))`
-/

namespace A266724.P9137631935942941025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

end

end A266724.P9137631935942941025

namespace A266724

/-- `comp[2*(n+1)]^log2(gcd(2, n))` -/
def P9137631935942941025.Spec : Prop :=
  ∀ n, P9137631935942941025.a n = (A266724 n : ℝ)

end A266724

/-! ## A266724.P14012072632995221358

`and(Δ[xor(1, n)], comp[2*(n+1)])`
-/

namespace A266724.P14012072632995221358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A266724.P14012072632995221358

namespace A266724

/-- `and(Δ[xor(1, n)], comp[2*(n+1)])` -/
def P14012072632995221358.Spec : Prop :=
  ∀ n, P14012072632995221358.a n = A266724 n

end A266724

/-! ## A266724.P194544684603136753

`and(-(-1)^n, comp[2*(n+1)])`
-/

namespace A266724.P194544684603136753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((-1) ^ n)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A266724.P194544684603136753

namespace A266724

/-- `and(-(-1)^n, comp[2*(n+1)])` -/
def P194544684603136753.Spec : Prop :=
  ∀ n, P194544684603136753.a n = A266724 n

end A266724

/-! ## A266724.P16448551875705026476

`ceil(comp[2*(n+1)]^(-1)^n)`
-/

namespace A266724.P16448551875705026476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ ((-1) ^ n : ℤ)⌉

end

end A266724.P16448551875705026476

namespace A266724

/-- `ceil(comp[2*(n+1)]^(-1)^n)` -/
def P16448551875705026476.Spec : Prop :=
  ∀ n, P16448551875705026476.a n = A266724 n

end A266724

/-! ## A266724.P13613012556924729601

`C(comp[2*(n+1)], ∑[(-1)^n])`
-/

namespace A266724.P13613012556924729601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A266724.P13613012556924729601

namespace A266724

/-- `C(comp[2*(n+1)], ∑[(-1)^n])` -/
def P13613012556924729601.Spec : Prop :=
  ∀ n, (P13613012556924729601.a n : ℤ) = A266724 n

end A266724

/-! ## A266724.P16723583147945392296

`comp[2*(n+1)]^((n+1)%2)`
-/

namespace A266724.P16723583147945392296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ ((n + 1) % 2)

end

end A266724.P16723583147945392296

namespace A266724

/-- `comp[2*(n+1)]^((n+1)%2)` -/
def P16723583147945392296.Spec : Prop :=
  ∀ n, (P16723583147945392296.a n : ℤ) = A266724 n

end A266724

/-! ## A266724.P6562414274073099099

`comp[2*(n+1)]^and(1, n+1)`
-/

namespace A266724.P6562414274073099099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ Nat.land 1 (n + 1)

end

end A266724.P6562414274073099099

namespace A266724

/-- `comp[2*(n+1)]^and(1, n+1)` -/
def P6562414274073099099.Spec : Prop :=
  ∀ n, (P6562414274073099099.a n : ℤ) = A266724 n

end A266724

/-! ## A266724.P2055432136098456725

`(n-1)*C(2, a(n-1))+1` with `a(0)=0`
-/

namespace A266724.P2055432136098456725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1) * (Nat.choose 2 (a (n - 1)).toNat : ℤ) + 1

end

end A266724.P2055432136098456725

namespace A266724

/-- `(n-1)*C(2, a(n-1))+1` -/
def P2055432136098456725.Spec : Prop :=
  ∀ n, P2055432136098456725.a n = A266724 n

end A266724

/-! ## A266724.P15008771365147915147

`2*and(n, -2)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A266724.P15008771365147915147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * Int.land (n : ℤ) (-2) - a (n - 1)

end

end A266724.P15008771365147915147

namespace A266724

/-- `2*and(n, -2)-a(n-1)` -/
def P15008771365147915147.Spec : Prop :=
  ∀ n, P15008771365147915147.a n = A266724 n

end A266724

/-! ## A266724.P166940009521051233

`floor((2*n-1)/a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A266724.P166940009521051233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊((2 * n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A266724.P166940009521051233

namespace A266724

/-- `floor((2*n-1)/a(n-1))` -/
def P166940009521051233.Spec : Prop :=
  ∀ n, P166940009521051233.a n = A266724 n

end A266724

/-! ## A266724.P6323612697916370579

`ceil(2*n/a(n-1))-1` with `a(0)=0, a(1)=1`
-/

namespace A266724.P6323612697916370579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(2 * n : ℚ) / (a (n - 1) : ℚ)⌉ - 1

end

end A266724.P6323612697916370579

namespace A266724

/-- `ceil(2*n/a(n-1))-1` -/
def P6323612697916370579.Spec : Prop :=
  ∀ n, P6323612697916370579.a n = A266724 n

end A266724

/-! ## A266724.P3077772551582997036

`lcm(n-1, C(2, a(n-1)))+1` with `a(0)=0`
-/

namespace A266724.P3077772551582997036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.lcm ((n : ℤ) - 1) (Nat.choose 2 (a (n - 1)) : ℤ) + 1

end

end A266724.P3077772551582997036

namespace A266724

/-- `lcm(n-1, C(2, a(n-1)))+1` -/
def P3077772551582997036.Spec : Prop :=
  ∀ n, (P3077772551582997036.a n : ℤ) = A266724 n

end A266724

/-! ## A266724.P11302792165909294193

`gcd(1-2*n, and(2, a(n-1)))` with `a(0)=0`
-/

namespace A266724.P11302792165909294193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (1 - (2 * n : ℤ)) (Nat.land 2 (a (n - 1)) : ℤ)

end

end A266724.P11302792165909294193

namespace A266724

/-- `gcd(1-2*n, and(2, a(n-1)))` -/
def P11302792165909294193.Spec : Prop :=
  ∀ n, (P11302792165909294193.a n : ℤ) = A266724 n

end A266724

/-! ## A266724.P854592596531637575

`lt[or(6, n-1), n]%(2*n+1)`
-/

namespace A266724.P854592596531637575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % (2 * n + 1)

end

end A266724.P854592596531637575

namespace A266724

/-- `lt[or(6, n-1), n]%(2*n+1)` -/
def P854592596531637575.Spec : Prop :=
  ∀ n, (P854592596531637575.a n : ℤ) = A266724 n

end A266724

/-! ## A266724.P1370463832637641252

`gcd(1-a(n-1), 2*n)-1` with `a(0)=0, a(1)=1`
-/

namespace A266724.P1370463832637641252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.gcd (1 - a (n - 1)) (2 * n : ℤ) : ℤ) - 1

end

end A266724.P1370463832637641252

namespace A266724

/-- `gcd(1-a(n-1), 2*n)-1` -/
def P1370463832637641252.Spec : Prop :=
  ∀ n, P1370463832637641252.a n = A266724 n

end A266724

/-! ## A266724.P8816802822673522062

`gcd(n-1+n, 2%a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A266724.P8816802822673522062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd ((n : ℤ) - 1 + (n : ℤ)) ((2 % a (n - 1) : ℕ) : ℤ)

end

end A266724.P8816802822673522062

namespace A266724

/-- `gcd(n-1+n, 2%a(n-1))` -/
def P8816802822673522062.Spec : Prop :=
  ∀ n, (P8816802822673522062.a n : ℤ) = A266724 n

end A266724

/-! ## A266724.P738143859401169154

`floor((n-1+n)/floor(a(n-1)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A266724.P738143859401169154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊((n : ℤ) - 1 + (n : ℤ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A266724.P738143859401169154

namespace A266724

/-- `floor((n-1+n)/floor(a(n-1)))` -/
def P738143859401169154.Spec : Prop :=
  ∀ n, P738143859401169154.a n = A266724 n

end A266724

/-! ## A266724.P14317639542293793087

`gcd(1-n-n, floor(a(n-1)/n))` with `a(0)=0`
-/

namespace A266724.P14317639542293793087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (1 - (n : ℤ) - (n : ℤ)) ⌊(a (n - 1) : ℚ) / (n : ℚ)⌋

end

end A266724.P14317639542293793087

namespace A266724

/-- `gcd(1-n-n, floor(a(n-1)/n))` -/
def P14317639542293793087.Spec : Prop :=
  ∀ n, (P14317639542293793087.a n : ℤ) = A266724 n

end A266724

/-!
# A266725: Total number of OFF (white) cells after n iterations of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266725, the canonical program `A266725.P17777298965235793153` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266725 has offset 0).

The definition of A266725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266725.P17777298965235793153

`2*floor(n/2)²+n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266725

/-- `2*floor(n/2)²+n` -/
def P17777298965235793153.Spec : Prop :=
  ∀ n, P17777298965235793153.a n = A266725 n

theorem P17777298965235793153.correct : P17777298965235793153.Spec := by
  intro n
  simp only [A266725]

end A266725

/-! ## A266725.P10354240357624181287

`floor((1-n*xor(n, -2))/2)`
-/

namespace A266725.P10354240357624181287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (n : ℤ) * Int.xor (n : ℤ) (-2) : ℚ) / 2⌋

end

end A266725.P10354240357624181287

namespace A266725

/-- `floor((1-n*xor(n, -2))/2)` -/
def P10354240357624181287.Spec : Prop :=
  ∀ n, P10354240357624181287.a n = A266725 n

end A266725

/-! ## A266725.P12106343873014570586

`∑[gcd(n%2, comp[2*(n+1)])]`
-/

namespace A266725.P12106343873014570586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n % 2) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266725.P12106343873014570586

namespace A266725

/-- `∑[gcd(n%2, comp[2*(n+1)])]` -/
def P12106343873014570586.Spec : Prop :=
  ∀ n, (P12106343873014570586.a n : ℤ) = A266725 n

end A266725

/-! ## A266725.P723353760564812463

`∑[xor(2, a(n-2)+2)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A266725.P723353760564812463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  Nat.xor 2 (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266725.P723353760564812463

namespace A266725

/-- `∑[xor(2, a(n-2)+2)]` -/
def P723353760564812463.Spec : Prop :=
  ∀ n, (P723353760564812463.a n : ℤ) = A266725 n

end A266725

/-! ## A266725.P7495995279578584047

`∑[comp[2*(n+1)]^log2(gcd(2, n))]`
-/

namespace A266725.P7495995279578584047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266725.P7495995279578584047

namespace A266725

/-- `∑[comp[2*(n+1)]^log2(gcd(2, n))]` -/
def P7495995279578584047.Spec : Prop :=
  ∀ n, P7495995279578584047.a n = (A266725 n : ℝ)

end A266725

/-! ## A266725.P14110336529502083325

`floor(n^4/(4*a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A266725.P14110336529502083325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n ^ 4 : ℚ) / (4 * a (n - 1) : ℚ)⌋

end

end A266725.P14110336529502083325

namespace A266725

/-- `floor(n^4/(4*a(n-1)))` -/
def P14110336529502083325.Spec : Prop :=
  ∀ n, P14110336529502083325.a n = A266725 n

end A266725

/-! ## A266725.P10381726997344584019

`floor((n²/2)²/a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A266725.P10381726997344584019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊((n ^ 2 : ℚ) / 2) ^ 2 / (a (n - 1) : ℚ)⌋

end

end A266725.P10381726997344584019

namespace A266725

/-- `floor((n²/2)²/a(n-1))` -/
def P10381726997344584019.Spec : Prop :=
  ∀ n, P10381726997344584019.a n = A266725 n

end A266725

/-! ## A266725.P9602939139332413190

`∑[(n-1)*C(2, a(n-1))+1]` with `a(0)=0`
-/

namespace A266725.P9602939139332413190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n : ℤ) - 1) * (Nat.choose 2 (f1 (n - 1)).toNat : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266725.P9602939139332413190

namespace A266725

/-- `∑[(n-1)*C(2, a(n-1))+1]` -/
def P9602939139332413190.Spec : Prop :=
  ∀ n, P9602939139332413190.a n = A266725 n

end A266725

/-! ## A266725.P2353741885408494865

`floor(a(n-2)+4*floor(n/2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A266725.P2353741885408494865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 4 * ⌊(n : ℚ) / 2⌋

end

end A266725.P2353741885408494865

namespace A266725

/-- `floor(a(n-2)+4*floor(n/2))` -/
def P2353741885408494865.Spec : Prop :=
  ∀ n, P2353741885408494865.a n = A266725 n

end A266725

/-! ## A266725.P11867513491459745552

`∑[floor((2*n-1)/a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A266725.P11867513491459745552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊((2 * n : ℤ) - 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266725.P11867513491459745552

namespace A266725

/-- `∑[floor((2*n-1)/a(n-1))]` -/
def P11867513491459745552.Spec : Prop :=
  ∀ n, P11867513491459745552.a n = A266725 n

end A266725

/-! ## A266725.P11145539034188460614

`floor(a(n-1)%2+n²-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A266725.P11145539034188460614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1)) 2 + ((n ^ 2 : ℤ) - a (n - 1))

end

end A266725.P11145539034188460614

namespace A266725

/-- `floor(a(n-1)%2+n²-a(n-1))` -/
def P11145539034188460614.Spec : Prop :=
  ∀ n, P11145539034188460614.a n = A266725 n

end A266725

/-! ## A266725.P14363069081153014994

`floor(floor(a(n-1))%2-(a(n-1)-n²))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A266725.P14363069081153014994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1)) 2 - (a (n - 1) - (n ^ 2 : ℤ))

end

end A266725.P14363069081153014994

namespace A266725

/-- `floor(floor(a(n-1))%2-(a(n-1)-n²))` -/
def P14363069081153014994.Spec : Prop :=
  ∀ n, P14363069081153014994.a n = A266725 n

end A266725

/-! ## A266725.P17056118632619773531

`∑[A266724(n)]`
-/

namespace A266725.P17056118632619773531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266725.P17056118632619773531

namespace A266725

/-- `∑[A266724(n)]` -/
def P17056118632619773531.Spec : Prop :=
  ∀ n, P17056118632619773531.a n = A266725 n

end A266725

/-! ## A266725.P4109752861868738525

`floor(A081346(n)/2)`
-/

namespace A266725.P4109752861868738525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081346 n : ℚ) / 2⌋

end

end A266725.P4109752861868738525

namespace A266725

/-- `floor(A081346(n)/2)` -/
def P4109752861868738525.Spec : Prop :=
  ∀ n, P4109752861868738525.a n = A266725 n

end A266725

/-! ## A266725.P11277742709503801652

`A186424(n)%A213041(n)`
-/

namespace A266725.P11277742709503801652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186424 n) (A213041 n)

end

end A266725.P11277742709503801652

namespace A266725

/-- `A186424(n)%A213041(n)` -/
def P11277742709503801652.Spec : Prop :=
  ∀ n, P11277742709503801652.a n = A266725 n

end A266725

/-! ## A266725.P10393314424857615462

`A319384(n)%A081345(n)`
-/

namespace A266725.P10393314424857615462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319384 n) (A081345 n)

end

end A266725.P10393314424857615462

namespace A266725

/-- `A319384(n)%A081345(n)` -/
def P10393314424857615462.Spec : Prop :=
  ∀ n, P10393314424857615462.a n = A266725 n

end A266725

/-! ## A266725.P8777954016331887178

`A213398(n)%A267353(n)`
-/

namespace A266725.P8777954016331887178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213398 n) (A267353 n)

end

end A266725.P8777954016331887178

namespace A266725

/-- `A213398(n)%A267353(n)` -/
def P8777954016331887178.Spec : Prop :=
  ∀ n, P8777954016331887178.a n = A266725 n

end A266725

/-! ## A266725.P2197950008026197465

`∪[A001844(n), A046092(n)]`
-/

namespace A266725.P2197950008026197465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266725.P2197950008026197465

namespace A266725

/-- `∪[A001844(n), A046092(n)]` -/
def P2197950008026197465.Spec : Prop :=
  ∀ n, (P2197950008026197465.a n : ℤ) = A266725 n

end A266725

/-! ## A266725.P7307566892958260765

`A131478(n)%A087327(n+1)`
-/

namespace A266725.P7307566892958260765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131478 n) (A087327 (n + 1))

end

end A266725.P7307566892958260765

namespace A266725

/-- `A131478(n)%A087327(n+1)` -/
def P7307566892958260765.Spec : Prop :=
  ∀ n, P7307566892958260765.a n = A266725 n

end A266725

/-! ## A266725.P5929986043104827073

`A245524(n+1)%A084265(n)`
-/

namespace A266725.P5929986043104827073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245524 (n + 1)) (A084265 n)

end

end A266725.P5929986043104827073

namespace A266725

/-- `A245524(n+1)%A084265(n)` -/
def P5929986043104827073.Spec : Prop :=
  ∀ n, P5929986043104827073.a n = A266725 n

end A266725

/-!
# A266726: Indices of even terms in A006019.

The programs for A266726, there is no canonical definition to state claims against.
-/

/-! ## A266726.P1947984259465695216

`eq[0, A006019(n)%2]`
-/

namespace A266726.P1947984259465695216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006019 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266726.P1947984259465695216

/-! ## A266726.P14903792000854394514

`eq[0, A000035(A006019(n))]`
-/

namespace A266726.P14903792000854394514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A006019 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266726.P14903792000854394514

/-! ## A266726.P13356166117076372784

`eq[1, A000034(A006019(n)²)]`
-/

namespace A266726.P13356166117076372784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A006019 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266726.P13356166117076372784

/-! ## A266726.P7521819857212483402

`eq[1, A028920(A006019(n)²)]`
-/

namespace A266726.P7521819857212483402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A006019 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266726.P7521819857212483402

/-! ## A266726.P3323233429425637466

`eq[1, A053381(A006019(n)²)]`
-/

namespace A266726.P3323233429425637466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 (A006019 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266726.P3323233429425637466

/-! ## A266726.P13530622505919884741

`eq[1, A056753(A006019(n)²)]`
-/

namespace A266726.P13530622505919884741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (A006019 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266726.P13530622505919884741

/-! ## A266726.P16588623338543712590

`eq[1, A028920(A006019(n)+2)]`
-/

namespace A266726.P16588623338543712590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A006019 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266726.P16588623338543712590

/-! ## A266726.P778269083079167304

`eq[1, A053381(A006019(n)+2)]`
-/

namespace A266726.P778269083079167304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 (A006019 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266726.P778269083079167304

/-! ## A266726.P2327414948974412074

`eq[1, A056753(A006019(n)+2)]`
-/

namespace A266726.P2327414948974412074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (A006019 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266726.P2327414948974412074

/-! ## A266726.P10469552462990092540

`eq[A000007(n), A266220(A006019(n))]`
-/

namespace A266726.P10469552462990092540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (A006019 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266726.P10469552462990092540

/-!
# A266727: Stanley sequence S(0,1,7).

The programs for A266727, there is no canonical definition to state claims against.
-/

/-! ## A266727.P11575110701080018029

`∑{p}[A050614(n), A066201(2*#)]`
-/

namespace A266727.P11575110701080018029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A066201 (2 * p)

end

end A266727.P11575110701080018029

/-! ## A266727.P10618285820545243862

`lt[A020639(A113807(2*n+3)), A203571(3*(n+1))]`
-/

namespace A266727.P10618285820545243862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A113807 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203571 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A266727.P10618285820545243862

/-!
# A266728: Stanley sequence S_5(0,3).

The programs for A266728, there is no canonical definition to state claims against.
-/

/-! ## A266728.P15720203407393254068

`lt[A044875(A119620(n)), A125097(n)]`
-/

namespace A266728.P15720203407393254068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044875 (A119620 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A266728.P15720203407393254068

/-! ## A266728.P4973274855937992310

`A047207(A247250(n+1))%record[A102230(n)]`
-/

namespace A266728.P4973274855937992310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047207 (A247250 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A266728.P4973274855937992310

/-! ## A266728.P2213197020641895230

`lt[A074298(2*(n+1)), A083952(A326502(n+1))]`
-/

namespace A266728.P2213197020641895230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074298 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (A326502 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A266728.P2213197020641895230

/-! ## A266728.P14516850180537542378

`A047207(A247250(n+1))-A000007(A029907(n))`
-/

namespace A266728.P14516850180537542378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (A247250 (n + 1)).toNat - A000007 (A029907 n).toNat

end

end A266728.P14516850180537542378

/-! ## A266728.P4332399457567638359

`A047207(A247250(n+1))-A209229(A209236(n+1))`
-/

namespace A266728.P4332399457567638359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (A247250 (n + 1)).toNat - A209229 (A209236 (n + 1)).toNat

end

end A266728.P4332399457567638359

/-!
# A266730: Appears to be an erroneous version of A000066.

The programs for A266730, there is no canonical definition to state claims against.
-/

/-! ## A266730.P13871123025543368510

`A000066(n+3)+A266691(n)²`
-/

namespace A266730.P13871123025543368510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000066 (n + 3) + A266691 n ^ 2

end

end A266730.P13871123025543368510

/-! ## A266730.P6424619164920518968

`A000066(n+3)+A308773(n)²`
-/

namespace A266730.P6424619164920518968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000066 (n + 3) + A308773 n ^ 2

end

end A266730.P6424619164920518968

/-! ## A266730.P16904301854794404470

`A000066(n+3)+Δ[A005873(n)]`
-/

namespace A266730.P16904301854794404470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000066 (n + 3) + (f1 (n + 1) - f1 n)

end

end A266730.P16904301854794404470

/-! ## A266730.P12704048157457653359

`A000066(n+3)+Δ[A236378(n)]`
-/

namespace A266730.P12704048157457653359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000066 (n + 3) + (f1 (n + 1) - f1 n)

end

end A266730.P12704048157457653359

/-! ## A266730.P15120859231051840438

`A022564(n+1)+A000066(n+3)`
-/

namespace A266730.P15120859231051840438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022564 (n + 1) + A000066 (n + 3)

end

end A266730.P15120859231051840438

/-!
# A266731: Smallest number of vertices in bi-regular ({3,4};n) graph with girth (shortest cycle) = n.

The programs for A266731, there is no canonical definition to state claims against.
-/

/-! ## A266731.P2269754679934064841

`A038127(A052955(n+2))`
-/

namespace A266731.P2269754679934064841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038127 (A052955 (n + 2)).toNat

end

end A266731.P2269754679934064841

/-! ## A266731.P9322014028016998424

`A038127(A136252(n)+2)`
-/

namespace A266731.P9322014028016998424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038127 (A136252 n + 2).toNat

end

end A266731.P9322014028016998424

/-! ## A266731.P4729484192084364161

`A047480(A136252(n)+2)`
-/

namespace A266731.P4729484192084364161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (A136252 n + 2).toNat

end

end A266731.P4729484192084364161

/-! ## A266731.P11512178360490248992

`A219529(A052955(n))+2`
-/

namespace A266731.P11512178360490248992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 (A052955 n).toNat + 2

end

end A266731.P11512178360490248992

/-!
# A266732: a(n) = 10*binomial(n+4, 5).

The programs for A266732, the canonical program `A266732.P1525120879752990614` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266732 has offset 0).

The definition of A266732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*C(n+4, 5)` (program `A266732.P1525120879752990614`, by `A266732.P1525120879752990614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A266732.P1525120879752990614

`10*C(n+4, 5)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266732

/-- `10*C(n+4, 5)` -/
def P1525120879752990614.Spec : Prop :=
  ∀ n, (P1525120879752990614.a n : ℤ) = A266732 n

theorem P1525120879752990614.correct : P1525120879752990614.Spec := by
  intro n
  simp only [A266732]

end A266732

/-! ## A266732.P15409477919778271184

`n*(1+n)*(2+n)*(3+n)*(4+n)/12`
-/

namespace A266732.P15409477919778271184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (1 + n) * (2 + n) * (3 + n) * (4 + n) : ℚ) / 12

end

end A266732.P15409477919778271184

namespace A266732

/-- `n*(1+n)*(2+n)*(3+n)*(4+n)/12` -/
def P15409477919778271184.Spec : Prop :=
  ∀ n, P15409477919778271184.a n = (A266732 n : ℚ)

theorem P15409477919778271184.correct : P15409477919778271184.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P15409477919778271184.a, A266732.P1525120879752990614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P1234277780672078313

`10*A000389(n+4)`
-/

namespace A266732.P1234277780672078313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000389 (n + 4)

end

end A266732.P1234277780672078313

namespace A266732

/-- `10*A000389(n+4)` -/
def P1234277780672078313.Spec : Prop :=
  ∀ n, P1234277780672078313.a n = A266732 n

theorem P1234277780672078313.correct : P1234277780672078313.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P1234277780672078313.a, A266732.P1525120879752990614.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P8029187321723117439

`2*A174002(n)`
-/

namespace A266732.P8029187321723117439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174002 n

end

end A266732.P8029187321723117439

namespace A266732

/-- `2*A174002(n)` -/
def P8029187321723117439.Spec : Prop :=
  ∀ n, P8029187321723117439.a n = A266732 n

theorem P8029187321723117439.correct : P8029187321723117439.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P8029187321723117439.a, A266732.P1525120879752990614.a, A174002, A174002.P7699814237944664298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P3757050886058935065

`5*A277935(n+1)`
-/

namespace A266732.P3757050886058935065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A277935 (n + 1)

end

end A266732.P3757050886058935065

namespace A266732

/-- `5*A277935(n+1)` -/
def P3757050886058935065.Spec : Prop :=
  ∀ n, P3757050886058935065.a n = A266732 n

theorem P3757050886058935065.correct : P3757050886058935065.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P3757050886058935065.a, A266732.P1525120879752990614.a, A277935, A277935.P11391963306517879859.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P17188089465240539041

`2/3*A151974(n)`
-/

namespace A266732.P17188089465240539041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A151974 n : ℚ)

end

end A266732.P17188089465240539041

namespace A266732

/-- `2/3*A151974(n)` -/
def P17188089465240539041.Spec : Prop :=
  ∀ n, P17188089465240539041.a n = (A266732 n : ℚ)

theorem P17188089465240539041.correct : P17188089465240539041.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P17188089465240539041.a, A266732.P1525120879752990614.a, A151974, A151974.P10190100127795550298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P17311086495663441406

`A151974(n)-A174002(n)`
-/

namespace A266732.P17311086495663441406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151974 n - A174002 n

end

end A266732.P17311086495663441406

namespace A266732

/-- `A151974(n)-A174002(n)` -/
def P17311086495663441406.Spec : Prop :=
  ∀ n, P17311086495663441406.a n = A266732 n

theorem P17311086495663441406.correct : P17311086495663441406.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P17311086495663441406.a, A266732.P1525120879752990614.a, A151974, A151974.P10190100127795550298.a, A174002, A174002.P7699814237944664298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P8881952787497001784

`A271567(n)-A005585(n+1)`
-/

namespace A266732.P8881952787497001784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 n - A005585 (n + 1)

end

end A266732.P8881952787497001784

namespace A266732

/-- `A271567(n)-A005585(n+1)` -/
def P8881952787497001784.Spec : Prop :=
  ∀ n, P8881952787497001784.a n = A266732 n

end A266732

/-! ## A266732.P9064021532294097378

`A293611(n)-A274501(n+5)`
-/

namespace A266732.P9064021532294097378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293611 n - A274501 (n + 5)

end

end A266732.P9064021532294097378

namespace A266732

/-- `A293611(n)-A274501(n+5)` -/
def P9064021532294097378.Spec : Prop :=
  ∀ n, P9064021532294097378.a n = A266732 n

end A266732

/-! ## A266732.P3611754192788046326

`lcm(A174002(n), A277935(n+1))`
-/

namespace A266732.P3611754192788046326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174002 n) (A277935 (n + 1))

end

end A266732.P3611754192788046326

namespace A266732

/-- `lcm(A174002(n), A277935(n+1))` -/
def P3611754192788046326.Spec : Prop :=
  ∀ n, (P3611754192788046326.a n : ℤ) = A266732 n

end A266732

/-! ## A266732.P532102257287942378

`(A008778(n+1)-A000217(n+1))*A000217(n)`
-/

namespace A266732.P532102257287942378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008778 (n + 1) - A000217 (n + 1)) * A000217 n

end

end A266732.P532102257287942378

namespace A266732

/-- `(A008778(n+1)-A000217(n+1))*A000217(n)` -/
def P532102257287942378.Spec : Prop :=
  ∀ n, P532102257287942378.a n = A266732 n

theorem P532102257287942378.correct : P532102257287942378.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P532102257287942378.a, A266732.P1525120879752990614.a, A000217, A000217.P10269402890581615239.a, A008778, A008778.P5727098079324999072.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P16908891025353107805

`n/2*A033488(n+1)`
-/

namespace A266732.P16908891025353107805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A033488 (n + 1) : ℚ)

end

end A266732.P16908891025353107805

namespace A266732

/-- `n/2*A033488(n+1)` -/
def P16908891025353107805.Spec : Prop :=
  ∀ n, P16908891025353107805.a n = (A266732 n : ℚ)

theorem P16908891025353107805.correct : P16908891025353107805.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P16908891025353107805.a, A266732.P1525120879752990614.a, A033488, A033488.P5263045204408268705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P15578570615358246498

`n/3*A033487(n+1)`
-/

namespace A266732.P15578570615358246498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A033487 (n + 1) : ℚ)

end

end A266732.P15578570615358246498

namespace A266732

/-- `n/3*A033487(n+1)` -/
def P15578570615358246498.Spec : Prop :=
  ∀ n, P15578570615358246498.a n = (A266732 n : ℚ)

theorem P15578570615358246498.correct : P15578570615358246498.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P15578570615358246498.a, A266732.P1525120879752990614.a, A033487, A033487.P180010041112617206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P2927803987601084326

`A000217(n)*A000292(n+2)`
-/

namespace A266732.P2927803987601084326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000292 (n + 2)

end

end A266732.P2927803987601084326

namespace A266732

/-- `A000217(n)*A000292(n+2)` -/
def P2927803987601084326.Spec : Prop :=
  ∀ n, P2927803987601084326.a n = A266732 n

theorem P2927803987601084326.correct : P2927803987601084326.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P2927803987601084326.a, A266732.P1525120879752990614.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P5565219245677180440

`A051880(n+1)-A055268(n+1)`
-/

namespace A266732.P5565219245677180440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 (n + 1) - A055268 (n + 1)

end

end A266732.P5565219245677180440

namespace A266732

/-- `A051880(n+1)-A055268(n+1)` -/
def P5565219245677180440.Spec : Prop :=
  ∀ n, P5565219245677180440.a n = A266732 n

theorem P5565219245677180440.correct : P5565219245677180440.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P5565219245677180440.a, A266732.P1525120879752990614.a, A051880, A051880.P18339695450162809644.a, A055268, A055268.P7030506225203019238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P3546940135019927558

`A000292(n+2)*A161680(n+1)`
-/

namespace A266732.P3546940135019927558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2) * A161680 (n + 1)

end

end A266732.P3546940135019927558

namespace A266732

/-- `A000292(n+2)*A161680(n+1)` -/
def P3546940135019927558.Spec : Prop :=
  ∀ n, P3546940135019927558.a n = A266732 n

theorem P3546940135019927558.correct : P3546940135019927558.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P3546940135019927558.a, A266732.P1525120879752990614.a, A000292, A000292.P18322089543142633594.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P282194623738287251

`(A002623(n+1)+A002623(n))*A000217(n)`
-/

namespace A266732.P282194623738287251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002623 (n + 1) + A002623 n) * A000217 n

end

end A266732.P282194623738287251

namespace A266732

/-- `(A002623(n+1)+A002623(n))*A000217(n)` -/
def P282194623738287251.Spec : Prop :=
  ∀ n, P282194623738287251.a n = A266732 n

end A266732

/-! ## A266732.P5353134441068404452

`(A062748(n+1)-A062748(n))*A000292(n)`
-/

namespace A266732.P5353134441068404452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062748 (n + 1) - A062748 n) * A000292 n

end

end A266732.P5353134441068404452

namespace A266732

/-- `(A062748(n+1)-A062748(n))*A000292(n)` -/
def P5353134441068404452.Spec : Prop :=
  ∀ n, P5353134441068404452.a n = A266732 n

theorem P5353134441068404452.correct : P5353134441068404452.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P5353134441068404452.a, A266732.P1525120879752990614.a, A000292, A000292.P18322089543142633594.a, A062748, A062748.P14956383250975312494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P3362642264632975268

`A034263(n+1)+A056118(n)-A027800(n+1)`
-/

namespace A266732.P3362642264632975268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 (n + 1) + (A056118 n - A027800 (n + 1))

end

end A266732.P3362642264632975268

namespace A266732

/-- `A034263(n+1)+A056118(n)-A027800(n+1)` -/
def P3362642264632975268.Spec : Prop :=
  ∀ n, P3362642264632975268.a n = A266732 n

theorem P3362642264632975268.correct : P3362642264632975268.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P3362642264632975268.a, A266732.P1525120879752990614.a, A027800, A027800.P6346572312768476247.a, A034263, A034263.P5868129197671622568.a, A056118, A056118.P6591570600101730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-! ## A266732.P7120999961382422993

`A051880(n+1)+A056118(n)-A056118(n+1)`
-/

namespace A266732.P7120999961382422993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 (n + 1) + (A056118 n - A056118 (n + 1))

end

end A266732.P7120999961382422993

namespace A266732

/-- `A051880(n+1)+A056118(n)-A056118(n+1)` -/
def P7120999961382422993.Spec : Prop :=
  ∀ n, P7120999961382422993.a n = A266732 n

theorem P7120999961382422993.correct : P7120999961382422993.Spec := by
  intro n
  simp only [A266732, Nat.add_sub_cancel, A266732.P7120999961382422993.a, A266732.P1525120879752990614.a, A051880, A051880.P18339695450162809644.a, A056118, A056118.P6591570600101730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266732

/-!
# A266733: a(n) = 21*binomial(n+6,7).

The programs for A266733, the canonical program `A266733.P17331750459027999541` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266733 has offset 0).

The definition of A266733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*C(n+6, 7)` (program `A266733.P17331750459027999541`, by `A266733.P17331750459027999541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A266733.P17331750459027999541

`21*C(n+6, 7)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266733

/-- `21*C(n+6, 7)` -/
def P17331750459027999541.Spec : Prop :=
  ∀ n, (P17331750459027999541.a n : ℤ) = A266733 n

theorem P17331750459027999541.correct : P17331750459027999541.Spec := by
  intro n
  simp only [A266733]

end A266733

/-! ## A266733.P6302134142313733820

`n*(1+n)*(2+n)*(3+n)*(4+n)*(5+n)*(6+n)/240`
-/

namespace A266733.P6302134142313733820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (1 + n) * (2 + n) * (3 + n) * (4 + n) * (5 + n) * (6 + n) : ℚ) / 240

end

end A266733.P6302134142313733820

namespace A266733

/-- `n*(1+n)*(2+n)*(3+n)*(4+n)*(5+n)*(6+n)/240` -/
def P6302134142313733820.Spec : Prop :=
  ∀ n, P6302134142313733820.a n = (A266733 n : ℚ)

theorem P6302134142313733820.correct : P6302134142313733820.Spec := by
  intro n
  simp only [A266733, Nat.add_sub_cancel, A266733.P6302134142313733820.a, A266733.P17331750459027999541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266733

/-! ## A266733.P4898156290690533743

`A027811(n+1)-A253946(n+5)`
-/

namespace A266733.P4898156290690533743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027811 (n + 1) - A253946 (n + 5)

end

end A266733.P4898156290690533743

namespace A266733

/-- `A027811(n+1)-A253946(n+5)` -/
def P4898156290690533743.Spec : Prop :=
  ∀ n, P4898156290690533743.a n = A266733 n

theorem P4898156290690533743.correct : P4898156290690533743.Spec := by
  intro n
  simp only [A266733, Nat.add_sub_cancel, A266733.P4898156290690533743.a, A266733.P17331750459027999541.a, A027811, A027811.P17959991506038065412.a, A253946, A253946.P6076803449469898878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266733

/-! ## A266733.P16981804841710310522

`A000217(n)+A000217(n)*A062988(n)`
-/

namespace A266733.P16981804841710310522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000217 n * A062988 n

end

end A266733.P16981804841710310522

namespace A266733

/-- `A000217(n)+A000217(n)*A062988(n)` -/
def P16981804841710310522.Spec : Prop :=
  ∀ n, P16981804841710310522.a n = A266733 n

theorem P16981804841710310522.correct : P16981804841710310522.Spec := by
  intro n
  simp only [A266733, Nat.add_sub_cancel, A266733.P16981804841710310522.a, A266733.P17331750459027999541.a, A000217, A000217.P10269402890581615239.a, A062988, A062988.P10319984421922645529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266733

/-! ## A266733.P16090257545570761512

`A002378(n)+A000217(n)*A166808(n+1)`
-/

namespace A266733.P16090257545570761512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + A000217 n * A166808 (n + 1)

end

end A266733.P16090257545570761512

namespace A266733

/-- `A002378(n)+A000217(n)*A166808(n+1)` -/
def P16090257545570761512.Spec : Prop :=
  ∀ n, P16090257545570761512.a n = A266733 n

theorem P16090257545570761512.correct : P16090257545570761512.Spec := by
  intro n
  simp only [A266733, Nat.add_sub_cancel, A266733.P16090257545570761512.a, A266733.P17331750459027999541.a, A000217, A000217.P10269402890581615239.a, A002378, A002378.P6342434596694243671.a, A166808, A166808.P9614524992927031431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266733

/-! ## A266733.P16834829346739710644

`A094305(A000096(n+3)+6)%(n+1)²²²`
-/

namespace A266733.P16834829346739710644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094305 (A000096 (n + 3) + 6).toNat) ((((n + 1) ^ 2) ^ 2) ^ 2 : ℤ)

end

end A266733.P16834829346739710644

namespace A266733

/-- `A094305(A000096(n+3)+6)%(n+1)²²²` -/
def P16834829346739710644.Spec : Prop :=
  ∀ n, P16834829346739710644.a n = A266733 n

end A266733

/-!
# A266734: Number of words on {1,1,2,2,3,3,...,n,n} avoiding the pattern 1234.

The programs for A266734, there is no canonical definition to state claims against.
-/

/-! ## A266734.P3530653038624974965

`A267479(∑[n+3]+n+3)`
-/

namespace A266734.P3530653038624974965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267479 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A266734.P3530653038624974965

/-! ## A266734.P16704590828479561876

`A267479(A046691(n+2))+A185255(n)`
-/

namespace A266734.P16704590828479561876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267479 (A046691 (n + 2)).toNat + A185255 n

end

end A266734.P16704590828479561876

/-!
# A266735: Number of words on {1,1,2,2,3,3,...,n,n} avoiding the pattern 12345.

The programs for A266735, there is no canonical definition to state claims against.
-/

/-! ## A266735.P14377248713504248749

`A267479(∑[n+5]+5)`
-/

namespace A266735.P14377248713504248749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267479 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A266735.P14377248713504248749

/-! ## A266735.P6983741009992240096

`A001511(2*n+1)*A267479(A052905(n+2))`
-/

namespace A266735.P6983741009992240096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A267479 (A052905 (n + 2)).toNat

end

end A266735.P6983741009992240096

/-!
# A266737: Number of words on {1,1,1,2,2,2,3,3,3,4,4,4,...,n,n,n} avoiding the pattern 1234.

The programs for A266737, there is no canonical definition to state claims against.
-/

/-! ## A266737.P9361711259239101766

`A014606(n)%A064739(A026790(3*n+4))`
-/

namespace A266737.P9361711259239101766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014606 n) (A064739 (A026790 (3 * n + 4)).toNat)

end

end A266737.P9361711259239101766

/-!
# A266740: Number of words on {1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,...,n,n,n,n} avoiding the pattern 1234.

The programs for A266740, there is no canonical definition to state claims against.
-/

/-! ## A266740.P3442223320416719574

`A266741(A273921(n+1)+n)%A268847(A332026(n+1))`
-/

namespace A266740.P3442223320416719574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266741 (A273921 (n + 1) + (n : ℤ)).toNat) (A268847 (A332026 (n + 1)).toNat)

end

end A266740.P3442223320416719574

/-!
# A266742: Irregular triangle read by rows: T(n,k) = floor(n/(prime(k)-1)), n>=1, 1 <= k <= pi(n+1), where pi is A000720.

The programs for A266742, there is no canonical definition to state claims against.
-/

/-! ## A266742.P10625753226327794994

`A350103(eq[2, A346562(n+1)])`
-/

namespace A266742.P10625753226327794994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266742.P10625753226327794994

/-! ## A266742.P1853977667130022608

`A010766(∑[A006466(A029990(n+1))])`
-/

namespace A266742.P1853977667130022608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A029990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A266742.P1853977667130022608

/-! ## A266742.P16886398671378738834

`gcd(A216470(A216523(n+1)), A216477(n+1))`
-/

namespace A266742.P16886398671378738834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A216470 (A216523 (n + 1)).toNat) (A216477 (n + 1))

end

end A266742.P16886398671378738834

/-! ## A266742.P13515101776596167204

`A120385(∑[A167851(A302835(n))])`
-/

namespace A266742.P13515101776596167204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167851 (A302835 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120385 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A266742.P13515101776596167204

/-! ## A266742.P4667413821181234426

`A358371(A248112(n+2))`
-/

namespace A266742.P4667413821181234426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A248112 (n + 2)).toNat

end

end A266742.P4667413821181234426

/-!
# A266744: G.f.: 1/((1-t^4)*(1-t)*(1-t^3)*(1-t^5)*(1-t^7)).

The programs for A266744, the canonical program `A266744.P6598350087135451720` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266744 has offset 0).

The definition of A266744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266744.P6598350087135451720

`∑[A029245(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A266744

/-- `∑[A029245(n)]` -/
def P6598350087135451720.Spec : Prop :=
  ∀ n, P6598350087135451720.a n = A266744 n

theorem P6598350087135451720.correct : P6598350087135451720.Spec := by
  intro n
  simp only [A266744]

end A266744

/-! ## A266744.P1479623393859675306

`A029064(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A266744.P1479623393859675306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029064 n + a (n - 3)

end

end A266744.P1479623393859675306

namespace A266744

/-- `A029064(n)+a(n-3)` -/
def P1479623393859675306.Spec : Prop :=
  ∀ n, P1479623393859675306.a n = A266744 n

end A266744

/-! ## A266744.P7180067661715912251

`∑[A029144(n)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A266744.P7180067661715912251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029144 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A266744.P7180067661715912251

namespace A266744

/-- `∑[A029144(n)]-a(n-2)` -/
def P7180067661715912251.Spec : Prop :=
  ∀ n, P7180067661715912251.a n = A266744 n

end A266744

/-! ## A266744.P17097852912630152898

`A029245(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A266744.P17097852912630152898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029245 n + a (A023443 n).toNat

end

end A266744.P17097852912630152898

namespace A266744

/-- `A029245(n)+a(A023443(n))` -/
def P17097852912630152898.Spec : Prop :=
  ∀ n, P17097852912630152898.a n = A266744 n

end A266744

/-! ## A266744.P9170162301603232522

`∑[A029414(2*n)]`
-/

namespace A266744.P9170162301603232522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266744.P9170162301603232522

namespace A266744

/-- `∑[A029414(2*n)]` -/
def P9170162301603232522.Spec : Prop :=
  ∀ n, P9170162301603232522.a n = A266744 n

end A266744

/-! ## A266744.P14980002196477723958

`A029414(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A266744.P14980002196477723958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029414 (n + n) + a (n - 1)

end

end A266744.P14980002196477723958

namespace A266744

/-- `A029414(n+n)+a(n-1)` -/
def P14980002196477723958.Spec : Prop :=
  ∀ n, P14980002196477723958.a n = A266744 n

end A266744

/-! ## A266744.P10898513239396802959

`∑[A029436(2*n+1)+A029436(2*n)]`
-/

namespace A266744.P10898513239396802959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 (2 * n + 1) + A029436 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266744.P10898513239396802959

namespace A266744

/-- `∑[A029436(2*n+1)+A029436(2*n)]` -/
def P10898513239396802959.Spec : Prop :=
  ∀ n, P10898513239396802959.a n = A266744 n

end A266744

/-! ## A266744.P6090004100811847081

`Δ[A266776(2*n+3)-A266776(2*n)]`
-/

namespace A266744.P6090004100811847081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 (2 * n + 3) - A266776 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266744.P6090004100811847081

namespace A266744

/-- `Δ[A266776(2*n+3)-A266776(2*n)]` -/
def P6090004100811847081.Spec : Prop :=
  ∀ n, P6090004100811847081.a n = A266744 n

end A266744

/-!
# A266746: G.f.: 1/((1-t^6)*(1-t)*(1-t^3)*(1-t^5)*(1-t^7)*(1-t^9)*(1-t^11)).

The programs for A266746, there is no canonical definition to state claims against.
-/

/-! ## A266746.P11083146233949332190

`A031285(A034296(n))-A070939(n)`
-/

namespace A266746.P11083146233949332190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A034296 n).toNat - A070939 n

end

end A266746.P11083146233949332190

/-! ## A266746.P1981394472609060023

`A317686(A333147(n)%A325141(n+1))`
-/

namespace A266746.P1981394472609060023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317686 (Int.tmod (A333147 n) (A325141 (n + 1))).toNat

end

end A266746.P1981394472609060023

/-! ## A266746.P17311477357814051254

`A317686(A333147(n))%A005843(A011782(n))`
-/

namespace A266746.P17311477357814051254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317686 (A333147 n).toNat) (A005843 (A011782 n).toNat)

end

end A266746.P17311477357814051254

/-! ## A266746.P17914817135720664315

`A031285(A034296(n))-A034296(A029837(n+1))`
-/

namespace A266746.P17914817135720664315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A034296 n).toNat - A034296 (A029837 (n + 1)).toNat

end

end A266746.P17914817135720664315

/-! ## A266746.P4441165691483052901

`A373220(n)-A221308(A261959(n))`
-/

namespace A266746.P4441165691483052901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373220 n - A221308 (A261959 n).toNat

end

end A266746.P4441165691483052901

/-!
# A266747: G.f.: 1/((1-t^7)^2*(1-t)*(1-t^3)*(1-t^5)*(1-t^9)*(1-t^11)*(1-t^13)).

The programs for A266747, there is no canonical definition to state claims against.
-/

/-! ## A266747.P8757347651047142042

`A093950(n)-A019431(A184955(n))`
-/

namespace A266747.P8757347651047142042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093950 n - A019431 (A184955 n).toNat

end

end A266747.P8757347651047142042

/-! ## A266747.P4764367409649511834

`A093950(n)-A093957(A325271(n))`
-/

namespace A266747.P4764367409649511834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093950 n - A093957 (A325271 n).toNat

end

end A266747.P4764367409649511834

/-! ## A266747.P15080633771415108608

`A093950(n)-A086080(A099099(n))`
-/

namespace A266747.P15080633771415108608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093950 n - A086080 (A099099 n).toNat

end

end A266747.P15080633771415108608

/-! ## A266747.P117678713586721264

`A093950(n)-A067898(A256810(n+1))`
-/

namespace A266747.P117678713586721264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093950 n - A067898 (A256810 (n + 1)).toNat

end

end A266747.P117678713586721264

/-! ## A266747.P9203503790888932698

`A112212(2*n+1)-A185284(A112212(2*n+1))`
-/

namespace A266747.P9203503790888932698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112212 (2 * n + 1) - A185284 (A112212 (2 * n + 1)).toNat

end

end A266747.P9203503790888932698

/-!
# A266748: G.f.: 1/((1-t^8)*(1-t)*(1-t^3)*(1-t^5)*(1-t^7)*(1-t^9)*(1-t^11)*(1-t^13)*(1-t^15)).

The programs for A266748, there is no canonical definition to state claims against.
-/

/-! ## A266748.P2204924739406270263

`A319951(A026814(n))+A000009(n)`
-/

namespace A266748.P2204924739406270263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A026814 n).toNat + A000009 n

end

end A266748.P2204924739406270263

/-! ## A266748.P8943952487874788735

`A319951(A026814(n))+∑[A087897(n)]`
-/

namespace A266748.P8943952487874788735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A026814 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266748.P8943952487874788735

/-! ## A266748.P3492907556310361144

`A204164(A288578(n))-Δ[A280663(n)]`
-/

namespace A266748.P3492907556310361144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A288578 n).toNat - (f1 (n + 1) - f1 n)

end

end A266748.P3492907556310361144

/-! ## A266748.P16316174475521820758

`A067085(∑[A166097(A182097(n))])`
-/

namespace A266748.P16316174475521820758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166097 (A182097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A266748.P16316174475521820758

/-!
# A266749: G.f.: 1/((1-t^9)^2*(1-t)*(1-t^3)*(1-t^5)*(1-t^7)*(1-t^11)*(1-t^13)*(1-t^15)*(1-t^17)).

The programs for A266749, there is no canonical definition to state claims against.
-/

/-! ## A266749.P16792307484672660669

`A033183(A194439(n+1))+A000009(n)`
-/

namespace A266749.P16792307484672660669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A194439 (n + 1)).toNat + A000009 n

end

end A266749.P16792307484672660669

/-! ## A266749.P15215666566270849252

`A033183(A194439(n+1))+A111133(n)+1`
-/

namespace A266749.P15215666566270849252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A194439 (n + 1)).toNat + (A111133 n + 1)

end

end A266749.P15215666566270849252

/-! ## A266749.P17672903556801210995

`A033183(A194439(n+1))+(A333147(n)+1)/2`
-/

namespace A266749.P17672903556801210995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033183 (A194439 (n + 1)).toNat : ℚ) + (A333147 n + 1 : ℚ) / 2

end

end A266749.P17672903556801210995

/-! ## A266749.P17628081362399250151

`A033183(A194439(n+1))+A282892(n)+A035363(n)`
-/

namespace A266749.P17628081362399250151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A194439 (n + 1)).toNat + (A282892 n + A035363 n)

end

end A266749.P17628081362399250151

/-! ## A266749.P17666339118131753900

`A033183(A194439(n+1))+A331848(n)+A000700(n)`
-/

namespace A266749.P17666339118131753900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A194439 (n + 1)).toNat + (A331848 n + A000700 n)

end

end A266749.P17666339118131753900

/-!
# A266750: G.f.: 1/((1-t^10)*(1-t)*(1-t^3)*(1-t^5)*(1-t^7)*(1-t^9)*(1-t^11)*(1-t^13)*(1-t^15)*(1-t^17)*(1-t^19)).

The programs for A266750, there is no canonical definition to state claims against.
-/

/-! ## A266750.P15865129349728083400

`A007095(A280664(n)%A244549(n+5))`
-/

namespace A266750.P15865129349728083400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A280664 n) (A244549 (n + 5))).toNat

end

end A266750.P15865129349728083400

/-! ## A266750.P15113772722229962584

`A007095(A280664(n))%A092000(2*n+1)`
-/

namespace A266750.P15113772722229962584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A280664 n).toNat) (A092000 (2 * n + 1))

end

end A266750.P15113772722229962584

/-! ## A266750.P9338169331008706993

`A000196(A008620(A333147(n)²))`
-/

namespace A266750.P9338169331008706993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008620 (A333147 n ^ 2).toNat).toNat

end

end A266750.P9338169331008706993

/-! ## A266750.P13284450009054791106

`A094500(floor(sqrt(A001523(n))))`
-/

namespace A266750.P13284450009054791106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (Int.sqrt (A001523 n)).toNat

end

end A266750.P13284450009054791106

/-!
# A266751: G.f.: 1/((1-t^11)^2*(1-t)*(1-t^3)*(1-t^5)*(1-t^7)*(1-t^9)*(1-t^13)*(1-t^15)*(1-t^17)*(1-t^19)*(1-t^21)).

The programs for A266751, there is no canonical definition to state claims against.
-/

/-! ## A266751.P1186291266634451491

`A000196(A242362(n)-Δ[A000009(n)])`
-/

namespace A266751.P1186291266634451491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A242362 n - (f1 (n + 1) - f1 n)).toNat

end

end A266751.P1186291266634451491

/-! ## A266751.P8401942077642838352

`A000196(A242362(n)-Δ[A114098(n)])`
-/

namespace A266751.P8401942077642838352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A242362 n - (f1 (n + 1) - f1 n)).toNat

end

end A266751.P8401942077642838352

/-! ## A266751.P11002519551982303797

`A051889(A008636(n)%A309158(3*n+2))`
-/

namespace A266751.P11002519551982303797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.tmod (A008636 n) (A309158 (3 * n + 2))).toNat

end

end A266751.P11002519551982303797

/-! ## A266751.P6575400428131739600

`A121900(A064174(2*(n+1))-n)`
-/

namespace A266751.P6575400428131739600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A064174 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A266751.P6575400428131739600

/-! ## A266751.P1644924906288949648

`A391618(A246655(n+1)+A240573(2*n+1))`
-/

namespace A266751.P1644924906288949648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A246655 (n + 1) + A240573 (2 * n + 1)).toNat

end

end A266751.P1644924906288949648

/-!
# A266752: Binary representation of the n-th iteration of the "Rule 163" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266752, there is no canonical definition to state claims against.
-/

/-! ## A266752.P7008462033057481714

`A266071(2*n)`
-/

namespace A266752.P7008462033057481714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266071 (2 * n)

end

end A266752.P7008462033057481714

/-! ## A266752.P2709070141254071630

`record[A266071(n)/A033999(n)]`
-/

namespace A266752.P2709070141254071630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266071 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266752.P2709070141254071630

/-! ## A266752.P9828756900193680342

`A178501(n+1)²+A056830(2*n)-A178501(2*n)`
-/

namespace A266752.P9828756900193680342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 1) ^ 2 + (A056830 (2 * n) - A178501 (2 * n))

end

end A266752.P9828756900193680342

/-! ## A266752.P5094739049699808140

`A178501(2*n+1)+A056830(2*n)-A178501(2*n)`
-/

namespace A266752.P5094739049699808140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (2 * n + 1) + (A056830 (2 * n) - A178501 (2 * n))

end

end A266752.P5094739049699808140

/-! ## A266752.P16958847151466012335

`A215022(A055588(n))`
-/

namespace A266752.P16958847151466012335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215022 (A055588 n).toNat

end

end A266752.P16958847151466012335

/-!
# A266753: Decimal representation of the n-th iteration of the "Rule 163" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266753, the canonical program `A266753.P9521150464544028367` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266753 has offset 0).

The definition of A266753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266753.P9521150464544028367

`floor(7*4^n/6)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266753

/-- `floor(7*4^n/6)` -/
def P9521150464544028367.Spec : Prop :=
  ∀ n, P9521150464544028367.a n = A266753 n

theorem P9521150464544028367.correct : P9521150464544028367.Spec := by
  intro n
  simp only [A266753]

end A266753

/-! ## A266753.P10392109596214630026

`ogf((1-x+2x^2)/(1-5x+4x^2))`
-/

namespace A266753.P10392109596214630026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -5, 4] n

end

end A266753.P10392109596214630026

namespace A266753

/-- `ogf((1-x+2x^2)/(1-5x+4x^2))` -/
def P10392109596214630026.Spec : Prop :=
  ∀ n, P10392109596214630026.a n = A266753 n

end A266753

/-! ## A266753.P7392285845278598636

`4*a(n-1)+2` with `a(0)=1, a(1)=4`
-/

namespace A266753.P7392285845278598636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) + 2

end

end A266753.P7392285845278598636

namespace A266753

/-- `4*a(n-1)+2` -/
def P7392285845278598636.Spec : Prop :=
  ∀ n, (P7392285845278598636.a n : ℤ) = A266753 n

end A266753

/-! ## A266753.P6508919981738572149

`or(2, 4*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A266753.P6508919981738572149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lor 2 (4 * a (n - 1))

end

end A266753.P6508919981738572149

namespace A266753

/-- `or(2, 4*a(n-1))` -/
def P6508919981738572149.Spec : Prop :=
  ∀ n, (P6508919981738572149.a n : ℤ) = A266753 n

end A266753

/-! ## A266753.P10640374690684696185

`xor(2, 4*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A266753.P10640374690684696185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.xor 2 (4 * a (n - 1))

end

end A266753.P10640374690684696185

namespace A266753

/-- `xor(2, 4*a(n-1))` -/
def P10640374690684696185.Spec : Prop :=
  ∀ n, (P10640374690684696185.a n : ℤ) = A266753 n

end A266753

/-! ## A266753.P12835786079976444190

`∑[4*a(n-1)]` with `a(0)=1, a(1)=3, a(2)=14`
-/

namespace A266753.P12835786079976444190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 14] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266753.P12835786079976444190

namespace A266753

/-- `∑[4*a(n-1)]` -/
def P12835786079976444190.Spec : Prop :=
  ∀ n, (P12835786079976444190.a n : ℤ) = A266753 n

end A266753

/-! ## A266753.P15660119487417905033

`6-4*(1-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A266753.P15660119487417905033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 - 4 * (1 - a (n - 1))

end

end A266753.P15660119487417905033

namespace A266753

/-- `6-4*(1-a(n-1))` -/
def P15660119487417905033.Spec : Prop :=
  ∀ n, P15660119487417905033.a n = A266753 n

end A266753

/-! ## A266753.P15899254861891983962

`a(n-1)/(1/2)²+2` with `a(0)=1, a(1)=4`
-/

namespace A266753.P15899254861891983962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + 2

end

end A266753.P15899254861891983962

namespace A266753

/-- `a(n-1)/(1/2)²+2` -/
def P15899254861891983962.Spec : Prop :=
  ∀ n, P15899254861891983962.a n = (A266753 n : ℚ)

end A266753

/-! ## A266753.P17005157241639448772

`2-a(n-1)/(3/4-1)` with `a(0)=1, a(1)=4`
-/

namespace A266753.P17005157241639448772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 - a (n - 1) / ((3 : ℚ) / 4 - 1)

end

end A266753.P17005157241639448772

namespace A266753

/-- `2-a(n-1)/(3/4-1)` -/
def P17005157241639448772.Spec : Prop :=
  ∀ n, P17005157241639448772.a n = (A266753 n : ℚ)

end A266753

/-! ## A266753.P587263964296336469

`record[∑[(-2)^n]+2^n-(floor(2^(n-1))+1)]`
-/

namespace A266753.P587263964296336469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 ^ n : ℤ) - (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266753.P587263964296336469

namespace A266753

/-- `record[∑[(-2)^n]+2^n-(floor(2^(n-1))+1)]` -/
def P587263964296336469.Spec : Prop :=
  ∀ n, P587263964296336469.a n = A266753 n

end A266753

/-! ## A266753.P9078669941896416962

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+2` with `a(0)=1, a(1)=4`
-/

namespace A266753.P9078669941896416962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + 2)))

end

end A266753.P9078669941896416962

namespace A266753

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+2` -/
def P9078669941896416962.Spec : Prop :=
  ∀ n, (P9078669941896416962.a n : ℤ) = A266753 n

end A266753

/-! ## A266753.P1901674722175746060

`ceil(A083597(n)/2)`
-/

namespace A266753.P1901674722175746060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083597 n : ℚ) / 2⌉

end

end A266753.P1901674722175746060

namespace A266753

/-- `ceil(A083597(n)/2)` -/
def P1901674722175746060.Spec : Prop :=
  ∀ n, P1901674722175746060.a n = A266753 n

end A266753

/-! ## A266753.P8498825959633924354

`abs(record[Δ[A084183(n)]])`
-/

namespace A266753.P8498825959633924354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A266753.P8498825959633924354

namespace A266753

/-- `abs(record[Δ[A084183(n)]])` -/
def P8498825959633924354.Spec : Prop :=
  ∀ n, P8498825959633924354.a n = A266753 n

end A266753

/-! ## A266753.P2265098778226400232

`ceil(A308124(n)/2)-1`
-/

namespace A266753.P2265098778226400232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308124 n : ℚ) / 2⌉ - 1

end

end A266753.P2265098778226400232

namespace A266753

/-- `ceil(A308124(n)/2)-1` -/
def P2265098778226400232.Spec : Prop :=
  ∀ n, P2265098778226400232.a n = A266753 n

end A266753

/-! ## A266753.P4479084790688923790

`ceil(A221049(2*n)/2)`
-/

namespace A266753.P4479084790688923790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A221049 (2 * n) : ℚ) / 2⌉

end

end A266753.P4479084790688923790

namespace A266753

/-- `ceil(A221049(2*n)/2)` -/
def P4479084790688923790.Spec : Prop :=
  ∀ n, P4479084790688923790.a n = A266753 n

end A266753

/-! ## A266753.P6380099528023578543

`ceil(A176961(2*n+1)/2)`
-/

namespace A266753.P6380099528023578543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176961 (2 * n + 1) : ℚ) / 2⌉

end

end A266753.P6380099528023578543

namespace A266753

/-- `ceil(A176961(2*n+1)/2)` -/
def P6380099528023578543.Spec : Prop :=
  ∀ n, P6380099528023578543.a n = A266753 n

end A266753

/-! ## A266753.P15298370377208193423

`A020988(n)+ceil(4^n/2)`
-/

namespace A266753.P15298370377208193423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n + ⌈(4 ^ n : ℚ) / 2⌉

end

end A266753.P15298370377208193423

namespace A266753

/-- `A020988(n)+ceil(4^n/2)` -/
def P15298370377208193423.Spec : Prop :=
  ∀ n, P15298370377208193423.a n = A266753 n

end A266753

/-! ## A266753.P10224479182670517338

`∑[A174317(2*n)]+2*n`
-/

namespace A266753.P10224479182670517338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174317 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A266753.P10224479182670517338

namespace A266753

/-- `∑[A174317(2*n)]+2*n` -/
def P10224479182670517338.Spec : Prop :=
  ∀ n, P10224479182670517338.a n = A266753 n

end A266753

/-! ## A266753.P16435595142057582728

`A125176(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A266753.P16435595142057582728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A125176 (n + n) + a (n - 1)

end

end A266753.P16435595142057582728

namespace A266753

/-- `A125176(n+n)+a(n-1)` -/
def P16435595142057582728.Spec : Prop :=
  ∀ n, P16435595142057582728.a n = A266753 n

end A266753

/-! ## A266753.P18408165173278793082

`A081294(n)+A020988(n)`
-/

namespace A266753.P18408165173278793082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + A020988 n

end

end A266753.P18408165173278793082

namespace A266753

/-- `A081294(n)+A020988(n)` -/
def P18408165173278793082.Spec : Prop :=
  ∀ n, P18408165173278793082.a n = A266753 n

end A266753

/-!
# A266754: Triangle read by rows giving successive states of cellular automaton generated by "Rule 165" initiated with a single ON (black) cell.

The programs for A266754, the canonical program `A266754.P13841617243074620179` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266754 has offset 0).

The definition of A266754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266754.P13841617243074620179

`(1-A070886(n))^n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A266754

/-- `(1-A070886(n))^n` -/
def P13841617243074620179.Spec : Prop :=
  ∀ n, P13841617243074620179.a n = A266754 n

theorem P13841617243074620179.correct : P13841617243074620179.Spec := by
  intro n
  simp only [A266754]

end A266754

/-! ## A266754.P8186723044088202429

`A054977(n)-A070886(n)`
-/

namespace A266754.P8186723044088202429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A070886 n

end

end A266754.P8186723044088202429

namespace A266754

/-- `A054977(n)-A070886(n)` -/
def P8186723044088202429.Spec : Prop :=
  ∀ n, P8186723044088202429.a n = A266754 n

end A266754

/-! ## A266754.P8416477543101509915

`A000007(n*A070886(n))`
-/

namespace A266754.P8416477543101509915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A070886 n).toNat

end

end A266754.P8416477543101509915

namespace A266754

/-- `A000007(n*A070886(n))` -/
def P8416477543101509915.Spec : Prop :=
  ∀ n, P8416477543101509915.a n = A266754 n

end A266754

/-! ## A266754.P4212891980375204637

`xor(A057427(n), A070886(n))`
-/

namespace A266754.P4212891980375204637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A070886 n)

end

end A266754.P4212891980375204637

namespace A266754

/-- `xor(A057427(n), A070886(n))` -/
def P4212891980375204637.Spec : Prop :=
  ∀ n, P4212891980375204637.a n = A266754 n

end A266754

/-! ## A266754.P2662837354103148153

`A000007(n)+1-A070886(n)`
-/

namespace A266754.P2662837354103148153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A070886 n)

end

end A266754.P2662837354103148153

namespace A266754

/-- `A000007(n)+1-A070886(n)` -/
def P2662837354103148153.Spec : Prop :=
  ∀ n, P2662837354103148153.a n = A266754 n

end A266754

/-! ## A266754.P12515298644895127738

`1-A057427(n*A070886(n))`
-/

namespace A266754.P12515298644895127738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A070886 n).toNat

end

end A266754.P12515298644895127738

namespace A266754

/-- `1-A057427(n*A070886(n))` -/
def P12515298644895127738.Spec : Prop :=
  ∀ n, P12515298644895127738.a n = A266754 n

end A266754

/-! ## A266754.P13577089713522626150

`A302048(n*A070886(n)+4)`
-/

namespace A266754.P13577089713522626150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 ((n : ℤ) * A070886 n + 4).toNat

end

end A266754.P13577089713522626150

namespace A266754

/-- `A302048(n*A070886(n)+4)` -/
def P13577089713522626150.Spec : Prop :=
  ∀ n, P13577089713522626150.a n = A266754 n

end A266754

/-! ## A266754.P14610929915425478840

`A070886(a(n-1))-A070886(n)` with `a(0)=1`
-/

namespace A266754.P14610929915425478840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070886 (a (n - 1)).toNat - A070886 n

end

end A266754.P14610929915425478840

namespace A266754

/-- `A070886(a(n-1))-A070886(n)` -/
def P14610929915425478840.Spec : Prop :=
  ∀ n, P14610929915425478840.a n = A266754 n

end A266754

/-! ## A266754.P6215713124556078287

`(A005171(2*(n+1))-A070886(n))²`
-/

namespace A266754.P6215713124556078287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005171 (2 * (n + 1)) - A070886 n) ^ 2

end

end A266754.P6215713124556078287

namespace A266754

/-- `(A005171(2*(n+1))-A070886(n))²` -/
def P6215713124556078287.Spec : Prop :=
  ∀ n, P6215713124556078287.a n = A266754 n

end A266754

/-! ## A266754.P10997835187292892325

`A070886(A070886(n)+A000120(n)²)`
-/

namespace A266754.P10997835187292892325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (A070886 n + A000120 n ^ 2).toNat

end

end A266754.P10997835187292892325

namespace A266754

/-- `A070886(A070886(n)+A000120(n)²)` -/
def P10997835187292892325.Spec : Prop :=
  ∀ n, P10997835187292892325.a n = A266754 n

end A266754

/-! ## A266754.P11157184310532669197

`A070886(A070886(n)+A196199(n)²)`
-/

namespace A266754.P11157184310532669197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (A070886 n + A196199 n ^ 2).toNat

end

end A266754.P11157184310532669197

namespace A266754

/-- `A070886(A070886(n)+A196199(n)²)` -/
def P11157184310532669197.Spec : Prop :=
  ∀ n, P11157184310532669197.a n = A266754 n

end A266754

/-! ## A266754.P7454456420644132026

`A070886(A071055((n+1)*A070886(n)))`
-/

namespace A266754.P7454456420644132026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (A071055 ((n + 1 : ℤ) * A070886 n).toNat).toNat

end

end A266754.P7454456420644132026

namespace A266754

/-- `A070886(A071055((n+1)*A070886(n)))` -/
def P7454456420644132026.Spec : Prop :=
  ∀ n, P7454456420644132026.a n = A266754 n

end A266754

/-! ## A266754.P8538517754981986038

`A070886((n-A196199(n))*A070886(n))`
-/

namespace A266754.P8538517754981986038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (((n : ℤ) - A196199 n) * A070886 n).toNat

end

end A266754.P8538517754981986038

namespace A266754

/-- `A070886((n-A196199(n))*A070886(n))` -/
def P8538517754981986038.Spec : Prop :=
  ∀ n, P8538517754981986038.a n = A266754 n

end A266754

/-! ## A266754.P1048028069743033145

`char[eq[A267576(n), A267605(n)]]`
-/

namespace A266754.P1048028069743033145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267576 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A266754.P1048028069743033145

namespace A266754

/-- `char[eq[A267576(n), A267605(n)]]` -/
def P1048028069743033145.Spec : Prop :=
  ∀ n, (P1048028069743033145.a n : ℤ) = A266754 n

end A266754

/-! ## A266754.P1011200133229674110

`A267576(eq[A267594(n), A267621(n)])`
-/

namespace A266754.P1011200133229674110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267576 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A266754.P1011200133229674110

namespace A266754

/-- `A267576(eq[A267594(n), A267621(n)])` -/
def P1011200133229674110.Spec : Prop :=
  ∀ n, P1011200133229674110.a n = A266754 n

end A266754

/-! ## A266754.P6475011000259582237

`C(2, A031126(n*A070886(n)))`
-/

namespace A266754.P6475011000259582237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A031126 ((n : ℤ) * A070886 n).toNat).toNat

end

end A266754.P6475011000259582237

namespace A266754

/-- `C(2, A031126(n*A070886(n)))` -/
def P6475011000259582237.Spec : Prop :=
  ∀ n, (P6475011000259582237.a n : ℤ) = A266754 n

end A266754

/-! ## A266754.P1338387727180101867

`1-A005171(A070886(n)+A000040(n+1))`
-/

namespace A266754.P1338387727180101867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (A070886 n + A000040 (n + 1)).toNat

end

end A266754.P1338387727180101867

namespace A266754

/-- `1-A005171(A070886(n)+A000040(n+1))` -/
def P1338387727180101867.Spec : Prop :=
  ∀ n, P1338387727180101867.a n = A266754 n

end A266754

/-! ## A266754.P15479361303629704826

`A070886(A070886(n)*A071055(2*n))`
-/

namespace A266754.P15479361303629704826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (A070886 n * A071055 (2 * n)).toNat

end

end A266754.P15479361303629704826

namespace A266754

/-- `A070886(A070886(n)*A071055(2*n))` -/
def P15479361303629704826.Spec : Prop :=
  ∀ n, P15479361303629704826.a n = A266754 n

end A266754

/-! ## A266754.P2410787076472157901

`A070886(A070886(n)+A308896(n)²)`
-/

namespace A266754.P2410787076472157901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (A070886 n + A308896 n ^ 2).toNat

end

end A266754.P2410787076472157901

namespace A266754

/-- `A070886(A070886(n)+A308896(n)²)` -/
def P2410787076472157901.Spec : Prop :=
  ∀ n, P2410787076472157901.a n = A266754 n

end A266754

/-! ## A266754.P14947985156012331382

`((A158782(n)+1)%2)^n`
-/

namespace A266754.P14947985156012331382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158782 n + 1) 2 ^ n

end

end A266754.P14947985156012331382

namespace A266754

/-- `((A158782(n)+1)%2)^n` -/
def P14947985156012331382.Spec : Prop :=
  ∀ n, P14947985156012331382.a n = A266754 n

end A266754

/-!
# A266755: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^4)).

The programs for A266755, the canonical program `A266755.P8389662948252283063` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266755 has offset 0).

The definition of A266755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))` (program `A266755.P8389662948252283063`, by `A266755.P8389662948252283063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A266755.P13672744737018681829

`round((n+3*(2-n%2))²/48)`
-/

namespace A266755.P13672744737018681829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℤ) + 3 * (2 - ((n % 2 : ℕ) : ℤ))) ^ 2 : ℚ) / 48)

end

end A266755.P13672744737018681829

namespace A266755

/-- `round((n+3*(2-n%2))²/48)` -/
def P13672744737018681829.Spec : Prop :=
  ∀ n, P13672744737018681829.a n = A266755 n

end A266755

/-! ## A266755.P8389662948252283063

`ogf(1/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266755

/-- `ogf(1/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))` -/
def P8389662948252283063.Spec : Prop :=
  ∀ n, P8389662948252283063.a n = A266755 n

theorem P8389662948252283063.correct : P8389662948252283063.Spec := by
  intro n
  simp only [A266755]

end A266755

/-! ## A266755.P11205928574603163746

`floor((n²+9*n+(3*n+9)*(-1)^n+39)/48)`
-/

namespace A266755.P11205928574603163746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 9 * n : ℤ) + (3 * n + 9 : ℤ) * (-1) ^ n + 39 : ℚ) / 48⌋

end

end A266755.P11205928574603163746

namespace A266755

/-- `floor((n²+9*n+(3*n+9)*(-1)^n+39)/48)` -/
def P11205928574603163746.Spec : Prop :=
  ∀ n, P11205928574603163746.a n = A266755 n

end A266755

/-! ## A266755.P17242361395276957613

`∑[floor(floor(n/3)+1-n/4)]-a(n-1)` with `a(0)=1`
-/

namespace A266755.P17242361395276957613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 3⌋ : ℚ) + (1 - (n : ℚ) / 4)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A266755.P17242361395276957613

namespace A266755

/-- `∑[floor(floor(n/3)+1-n/4)]-a(n-1)` -/
def P17242361395276957613.Spec : Prop :=
  ∀ n, P17242361395276957613.a n = A266755 n

end A266755

/-! ## A266755.P2141105867617860221

`∑[∑[∑[A275638(n)]]]`
-/

namespace A266755.P2141105867617860221
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275638 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266755.P2141105867617860221

namespace A266755

/-- `∑[∑[∑[A275638(n)]]]` -/
def P2141105867617860221.Spec : Prop :=
  ∀ n, P2141105867617860221.a n = A266755 n

end A266755

/-! ## A266755.P12893225200155954675

`A325691(n)+char[2*n]`
-/

namespace A266755.P12893225200155954675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266755.P12893225200155954675

namespace A266755

/-- `A325691(n)+char[2*n]` -/
def P12893225200155954675.Spec : Prop :=
  ∀ n, P12893225200155954675.a n = A266755 n

end A266755

/-! ## A266755.P3337616785898249631

`A069905(ceil(xor(1, n)/2)+2)`
-/

namespace A266755.P3337616785898249631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (⌈(Nat.xor 1 n : ℚ) / 2⌉ + 2).toNat

end

end A266755.P3337616785898249631

namespace A266755

/-- `A069905(ceil(xor(1, n)/2)+2)` -/
def P3337616785898249631.Spec : Prop :=
  ∀ n, P3337616785898249631.a n = A266755 n

end A266755

/-! ## A266755.P13926476479656479363

`A069905(A052938(n+1))`
-/

namespace A266755.P13926476479656479363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A052938 (n + 1)).toNat

end

end A266755.P13926476479656479363

namespace A266755

/-- `A069905(A052938(n+1))` -/
def P13926476479656479363.Spec : Prop :=
  ∀ n, P13926476479656479363.a n = A266755 n

end A266755

/-! ## A266755.P15003013214165560733

`A069905(A028242(n)+2)`
-/

namespace A266755.P15003013214165560733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A028242 n + 2).toNat

end

end A266755.P15003013214165560733

namespace A266755

/-- `A069905(A028242(n)+2)` -/
def P15003013214165560733.Spec : Prop :=
  ∀ n, P15003013214165560733.a n = A266755 n

end A266755

/-! ## A266755.P17007778530747608151

`A060023(n)+A026810(n)`
-/

namespace A266755.P17007778530747608151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060023 n + A026810 n

end

end A266755.P17007778530747608151

namespace A266755

/-- `A060023(n)+A026810(n)` -/
def P17007778530747608151.Spec : Prop :=
  ∀ n, P17007778530747608151.a n = A266755 n

end A266755

/-! ## A266755.P8007168850145879231

`A254708(n)-A254707(n)`
-/

namespace A266755.P8007168850145879231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - A254707 n

end

end A266755.P8007168850145879231

namespace A266755

/-- `A254708(n)-A254707(n)` -/
def P8007168850145879231.Spec : Prop :=
  ∀ n, P8007168850145879231.a n = A266755 n

theorem P8007168850145879231.correct : P8007168850145879231.Spec := by
  intro n
  simp only [A266755, Nat.add_sub_cancel, A266755.P8007168850145879231.a, A266755.P8389662948252283063.a, A254707, A254707.P370968306155579139.a, A254708, A254708.P15475653326016787145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A266755

/-! ## A266755.P17802004360976483452

`A008679(n)+A005044(n+1)`
-/

namespace A266755.P17802004360976483452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 n + A005044 (n + 1)

end

end A266755.P17802004360976483452

namespace A266755

/-- `A008679(n)+A005044(n+1)` -/
def P17802004360976483452.Spec : Prop :=
  ∀ n, P17802004360976483452.a n = A266755 n

end A266755

/-! ## A266755.P8150710896274333070

`A001399(A004526(n)+n)-A001840(n)`
-/

namespace A266755.P8150710896274333070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A004526 n + (n : ℤ)).toNat - A001840 n

end

end A266755.P8150710896274333070

namespace A266755

/-- `A001399(A004526(n)+n)-A001840(n)` -/
def P8150710896274333070.Spec : Prop :=
  ∀ n, P8150710896274333070.a n = A266755 n

end A266755

/-! ## A266755.P11897238014679045041

`A069905(A030451(n+1)+1)`
-/

namespace A266755.P11897238014679045041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A030451 (n + 1) + 1).toNat

end

end A266755.P11897238014679045041

namespace A266755

/-- `A069905(A030451(n+1)+1)` -/
def P11897238014679045041.Spec : Prop :=
  ∀ n, P11897238014679045041.a n = A266755 n

end A266755

/-! ## A266755.P8014610382100593897

`A211540(A060762(n+2)+1)`
-/

namespace A266755.P8014610382100593897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A060762 (n + 2) + 1).toNat

end

end A266755.P8014610382100593897

namespace A266755

/-- `A211540(A060762(n+2)+1)` -/
def P8014610382100593897.Spec : Prop :=
  ∀ n, P8014610382100593897.a n = A266755 n

end A266755

/-! ## A266755.P16283084582796415061

`A025767(n)-A005044(n+2)`
-/

namespace A266755.P16283084582796415061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 n - A005044 (n + 2)

end

end A266755.P16283084582796415061

namespace A266755

/-- `A025767(n)-A005044(n+2)` -/
def P16283084582796415061.Spec : Prop :=
  ∀ n, P16283084582796415061.a n = A266755 n

end A266755

/-! ## A266755.P12086815990424593086

`A008642(n+1)+A001399(n)-A008805(n+1)`
-/

namespace A266755.P12086815990424593086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (n + 1) + (A001399 n - A008805 (n + 1))

end

end A266755.P12086815990424593086

namespace A266755

/-- `A008642(n+1)+A001399(n)-A008805(n+1)` -/
def P12086815990424593086.Spec : Prop :=
  ∀ n, P12086815990424593086.a n = A266755 n

end A266755

/-! ## A266755.P15586449113773967361

`A025767(n+1)+A001400(n)-A001400(n+1)`
-/

namespace A266755.P15586449113773967361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (n + 1) + (A001400 n - A001400 (n + 1))

end

end A266755.P15586449113773967361

namespace A266755

/-- `A025767(n+1)+A001400(n)-A001400(n+1)` -/
def P15586449113773967361.Spec : Prop :=
  ∀ n, P15586449113773967361.a n = A266755 n

end A266755

/-! ## A266755.P18088271000007620656

`A005044(n+3)`
-/

namespace A266755.P18088271000007620656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 3)

end

end A266755.P18088271000007620656

namespace A266755

/-- `A005044(n+3)` -/
def P18088271000007620656.Spec : Prop :=
  ∀ n, P18088271000007620656.a n = A266755 n

end A266755

/-! ## A266755.P3686258953395950822

`∑{d}[n+3, A051493(#)]`
-/

namespace A266755.P3686258953395950822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051493 d

end

end A266755.P3686258953395950822

namespace A266755

/-- `∑{d}[n+3, A051493(#)]` -/
def P3686258953395950822.Spec : Prop :=
  ∀ n, P3686258953395950822.a n = A266755 n

end A266755

/-!
# A266756: Nim value of subtraction game S(2,5,7) with a heap of n beans.

The programs for A266756, there is no canonical definition to state claims against.
-/

/-! ## A266756.P14656848001719079221

`A123502(A183563(n+6))%∏{e}[n+1, #+1]`
-/

namespace A266756.P14656848001719079221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123502 (A183563 (n + 6)).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A266756.P14656848001719079221

/-!
# A266758: E.g.f.: x*(1+x-(x^2-6*x+1)^(1/2))/8 + x^2/2.

The programs for A266758, there is no canonical definition to state claims against.
-/

/-! ## A266758.P14752493012289724608

`A052742(n)/A059268(A152948(n+1))`
-/

namespace A266758.P14752493012289724608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052742 n : ℚ) / (A059268 (A152948 (n + 1)).toNat : ℚ)

end

end A266758.P14752493012289724608

/-! ## A266758.P8509975241713593856

`gcd(C(A052742(n), 4), A052742(n))`
-/

namespace A266758.P8509975241713593856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (A052742 n).toNat 4 : ℤ) (A052742 n)

end

end A266758.P8509975241713593856

/-!
# A266759: Growth series for affine Coxeter group (or affine Weyl group) D_4.

The programs for A266759, there is no canonical definition to state claims against.
-/

/-! ## A266759.P9864267699956071000

`∑[A136499(∑[A083652(n)])]`
-/

namespace A266759.P9864267699956071000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136499 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266759.P9864267699956071000

/-! ## A266759.P17680842557598864438

`A321728(A321741(n+1))+A299275(n)`
-/

namespace A266759.P17680842557598864438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (A321741 (n + 1)).toNat + A299275 n

end

end A266759.P17680842557598864438

/-! ## A266759.P17025497645772620581

`A000267(6*A144902(n))`
-/

namespace A266759.P17025497645772620581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (6 * A144902 n).toNat

end

end A266759.P17025497645772620581

/-!
# A266760: Growth series for affine Coxeter group (or affine Weyl group) D_5.

The programs for A266760, there is no canonical definition to state claims against.
-/

/-! ## A266760.P246210463492787507

`∑[A024417(∑[A100448(2*(n+1))])]`
-/

namespace A266760.P246210463492787507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266760.P246210463492787507

/-! ## A266760.P5592548668374886883

`(2*n+1)²+(n-1)*∑[(n+1)*2*n]-A257848((∑[4*n]+1)²)`
-/

namespace A266760.P5592548668374886883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A257848 ((∑ j ∈ Finset.range (n + 1), f2 j + 1) ^ 2)

end

end A266760.P5592548668374886883

/-! ## A266760.P15641031899247022860

`∑[∑[A089856(A008003(n))]]`
-/

namespace A266760.P15641031899247022860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A008003 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266760.P15641031899247022860

/-!
# A266761: Growth series for affine Coxeter group (or affine Weyl group) D_6.

The programs for A266761, there is no canonical definition to state claims against.
-/

/-! ## A266761.P9057537806425221571

`∑[A226190(A005583(n+1))]`
-/

namespace A266761.P9057537806425221571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A005583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266761.P9057537806425221571

/-! ## A266761.P17856681436885346322

`∑[∑[A261104(A213556(n+1))]]`
-/

namespace A266761.P17856681436885346322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A213556 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266761.P17856681436885346322

/-!
# A266762: Growth series for affine Coxeter group (or affine Weyl group) D_7.

The programs for A266762, there is no canonical definition to state claims against.
-/

/-! ## A266762.P16293269909291317221

`A267170(n)+A052401(2*n+3)`
-/

namespace A266762.P16293269909291317221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267170 n + A052401 (2 * n + 3)

end

end A266762.P16293269909291317221

/-! ## A266762.P9971730696099188887

`A052401(2*n+3)+∑[A267169(n)]`
-/

namespace A266762.P9971730696099188887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052401 (2 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266762.P9971730696099188887

/-! ## A266762.P13008431850682300732

`A267170(n)+A037912(A000262(n))`
-/

namespace A266762.P13008431850682300732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267170 n + A037912 (A000262 n).toNat

end

end A266762.P13008431850682300732

/-!
# A266763: Growth series for affine Coxeter group (or affine Weyl group) D_8.

The programs for A266763, there is no canonical definition to state claims against.
-/

/-! ## A266763.P13961020577822937962

`or(A267171(n), A278987(A283960(n+1)))`
-/

namespace A266763.P13961020577822937962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267171 n) (A278987 (A283960 (n + 1)).toNat)

end

end A266763.P13961020577822937962

/-! ## A266763.P5449734162845289082

`or(A055999(A018843(3*(n+1))), A267171(n))`
-/

namespace A266763.P5449734162845289082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055999 (A018843 (3 * (n + 1))).toNat) (A267171 n)

end

end A266763.P5449734162845289082

/-! ## A266763.P7107968804537656439

`or(A267171(n), A354099(A001115(2*n+3)))`
-/

namespace A266763.P7107968804537656439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267171 n) (A354099 (A001115 (2 * n + 3)).toNat)

end

end A266763.P7107968804537656439

/-! ## A266763.P4971495212420897583

`A267171(n)+A239705(xor(1, 8*C(n², 2)))`
-/

namespace A266763.P4971495212420897583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267171 n + A239705 (Nat.xor 1 (8 * Nat.choose (n ^ 2) 2))

end

end A266763.P4971495212420897583

/-!
# A266764: Growth series for affine Coxeter group (or affine Weyl group) D_9.

The programs for A266764, there is no canonical definition to state claims against.
-/

/-! ## A266764.P12338955401644050946

`A267172(n)+A185284(A097050(n))`
-/

namespace A266764.P12338955401644050946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267172 n + A185284 (A097050 n).toNat

end

end A266764.P12338955401644050946

/-! ## A266764.P13522674684392078734

`A267172(n)+A239705(A061396(n))`
-/

namespace A266764.P13522674684392078734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267172 n + A239705 (A061396 n).toNat

end

end A266764.P13522674684392078734

/-! ## A266764.P18376050257715582565

`A267172(n)+A226463(A142239(n))`
-/

namespace A266764.P18376050257715582565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267172 n + A226463 (A142239 n).toNat

end

end A266764.P18376050257715582565

/-! ## A266764.P5253258564751736114

`A354099(A072243(n))+A267172(n)`
-/

namespace A266764.P5253258564751736114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (A072243 n).toNat + A267172 n

end

end A266764.P5253258564751736114

/-! ## A266764.P8784682278404244913

`A267172(n)+A185284(A315074(n))`
-/

namespace A266764.P8784682278404244913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267172 n + A185284 (A315074 n).toNat

end

end A266764.P8784682278404244913

/-!
# A266765: Growth series for affine Coxeter group (or affine Weyl group) D_10.

The programs for A266765, there is no canonical definition to state claims against.
-/

/-! ## A266765.P3560004762172098667

`A102683(n)+A052410(A267173(n))`
-/

namespace A266765.P3560004762172098667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A052410 (A267173 n).toNat

end

end A266765.P3560004762172098667

/-! ## A266765.P14740226623478791715

`A267173(n)+A018843(A267193(n))`
-/

namespace A266765.P14740226623478791715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267173 n + A018843 (A267193 n).toNat

end

end A266765.P14740226623478791715

/-! ## A266765.P2938564517375702532

`A267173(n)+A102683(A275313(n))`
-/

namespace A266765.P2938564517375702532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267173 n + A102683 (A275313 n).toNat

end

end A266765.P2938564517375702532

/-! ## A266765.P10371857683079689035

`A340998(A062724(n))+A267173(n)`
-/

namespace A266765.P10371857683079689035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A062724 n).toNat + 140) + A267173 n

end

end A266765.P10371857683079689035

/-! ## A266765.P26183945828111763

`A331288(A267173(n))`
-/

namespace A266765.P26183945828111763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (A267173 n).toNat

end

end A266765.P26183945828111763

/-!
# A266766: Growth series for affine Coxeter group (or affine Weyl group) D_11.

The programs for A266766, there is no canonical definition to state claims against.
-/

/-! ## A266766.P241885005479173662

`A000027(A267174(n))+char[10]`
-/

namespace A266766.P241885005479173662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A267174 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266766.P241885005479173662

/-! ## A266766.P12277509938664068732

`A267174(n)+val(A267162(n+1)+1, 5)`
-/

namespace A266766.P12277509938664068732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267174 n + (SequenceMachineLib.valuation (A267162 (n + 1) + 1).toNat 5 : ℤ)

end

end A266766.P12277509938664068732

/-! ## A266766.P9216622842549279425

`A261424(n)+A000027(A267174(n))`
-/

namespace A266766.P9216622842549279425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n + A000027 (A267174 n).toNat

end

end A266766.P9216622842549279425

/-! ## A266766.P7765807269058756853

`A267174(n)+A102677(A165877(n))`
-/

namespace A266766.P7765807269058756853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267174 n + A102677 (A165877 n).toNat

end

end A266766.P7765807269058756853

/-! ## A266766.P16011517220370983223

`A267174(n)+A267142(A006966(n))`
-/

namespace A266766.P16011517220370983223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267174 n + A267142 (A006966 n).toNat

end

end A266766.P16011517220370983223

/-!
# A266767: Growth series for affine Coxeter group (or affine Weyl group) D_12.

The programs for A266767, there is no canonical definition to state claims against.
-/

/-! ## A266767.P13469447322407716908

`A267175(n)+A055641(A086615(n))`
-/

namespace A266767.P13469447322407716908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267175 n + A055641 (A086615 n).toNat

end

end A266767.P13469447322407716908

/-! ## A266767.P15996807809430984959

`A267175(n)+A185284(A241736(n))`
-/

namespace A266767.P15996807809430984959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267175 n + A185284 (A241736 n).toNat

end

end A266767.P15996807809430984959

/-! ## A266767.P9904316456435084885

`A368701(A148345(n))+A267175(n)`
-/

namespace A266767.P9904316456435084885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368701 (A148345 n).toNat + A267175 n

end

end A266767.P9904316456435084885

/-! ## A266767.P8302995695561218246

`A294936(A294281(n))+A267175(n)`
-/

namespace A266767.P8302995695561218246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A294281 n).toNat + A267175 n

end

end A266767.P8302995695561218246

/-! ## A266767.P6423353877273302339

`or(A024362(A002524(n)), A267175(n))`
-/

namespace A266767.P6423353877273302339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024362 (A002524 n).toNat) (A267175 n)

end

end A266767.P6423353877273302339

/-!
# A266768: Molien series for invariants of finite Coxeter group D_5.

The programs for A266768, the canonical program `A266768.P11564001929353987529` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266768 has offset 0).

The definition of A266768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266768.P11564001929353987529

`A029327(n)+a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A266768

/-- `A029327(n)+a(n-2)` -/
def P11564001929353987529.Spec : Prop :=
  ∀ n, P11564001929353987529.a n = A266768 n

theorem P11564001929353987529.correct : P11564001929353987529.Spec := by
  intro n
  simp only [A266768]

end A266768

/-! ## A266768.P3971384431504708055

`A026811(A084964(n)+3)`
-/

namespace A266768.P3971384431504708055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (A084964 n + 3).toNat

end

end A266768.P3971384431504708055

namespace A266768

/-- `A026811(A084964(n)+3)` -/
def P3971384431504708055.Spec : Prop :=
  ∀ n, P3971384431504708055.a n = A266768 n

end A266768

/-! ## A266768.P12786813198801511955

`A026811(A097065(n)+4)`
-/

namespace A266768.P12786813198801511955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (A097065 n + 4).toNat

end

end A266768.P12786813198801511955

namespace A266768

/-- `A026811(A097065(n)+4)` -/
def P12786813198801511955.Spec : Prop :=
  ∀ n, P12786813198801511955.a n = A266768 n

end A266768

/-! ## A266768.P320862379323303519

`A288166(A004275(n))+A029173(n)`
-/

namespace A266768.P320862379323303519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (A004275 n).toNat + A029173 n

end

end A266768.P320862379323303519

namespace A266768

/-- `A288166(A004275(n))+A029173(n)` -/
def P320862379323303519.Spec : Prop :=
  ∀ n, P320862379323303519.a n = A266768 n

end A266768

/-! ## A266768.P2244878209274704723

`A288166(2*n+1)+A029327(n)`
-/

namespace A266768.P2244878209274704723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (2 * n + 1) + A029327 n

end

end A266768.P2244878209274704723

namespace A266768

/-- `A288166(2*n+1)+A029327(n)` -/
def P2244878209274704723.Spec : Prop :=
  ∀ n, P2244878209274704723.a n = A266768 n

end A266768

/-! ## A266768.P17985933334555202355

`A288166(2*n+5)`
-/

namespace A266768.P17985933334555202355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (2 * n + 5)

end

end A266768.P17985933334555202355

namespace A266768

/-- `A288166(2*n+5)` -/
def P17985933334555202355.Spec : Prop :=
  ∀ n, P17985933334555202355.a n = A266768 n

end A266768

/-! ## A266768.P13233851807909803093

`(A288166(A020735(n+1))^(1/2))²`
-/

namespace A266768.P13233851807909803093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A288166 (A020735 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A266768.P13233851807909803093

namespace A266768

/-- `(A288166(A020735(n+1))^(1/2))²` -/
def P13233851807909803093.Spec : Prop :=
  ∀ n, P13233851807909803093.a n = (A266768 n : ℝ)

end A266768

/-! ## A266768.P18255375973566196191

`A288166(A020735(n+1))%A000032(n)`
-/

namespace A266768.P18255375973566196191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288166 (A020735 (n + 1)).toNat) (A000032 n)

end

end A266768.P18255375973566196191

namespace A266768

/-- `A288166(A020735(n+1))%A000032(n)` -/
def P18255375973566196191.Spec : Prop :=
  ∀ n, P18255375973566196191.a n = A266768 n

end A266768

/-! ## A266768.P9494590966671085549

`A323170(A190731(n+1))+A288166(A020735(n+1))`
-/

namespace A266768.P9494590966671085549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323170 (A190731 (n + 1)).toNat + A288166 (A020735 (n + 1)).toNat

end

end A266768.P9494590966671085549

namespace A266768

/-- `A323170(A190731(n+1))+A288166(A020735(n+1))` -/
def P9494590966671085549.Spec : Prop :=
  ∀ n, P9494590966671085549.a n = A266768 n

end A266768

/-!
# A266769: Expansion of 1/((1-x)*(1-x^2)^2*(1-x^3)).

The programs for A266769, the canonical program `A266769.P10332270993305587785` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266769 has offset 0).

The definition of A266769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))` (program `A266769.P10332270993305587785`, by `A266769.P10332270993305587785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A266769.P10332270993305587785

`ogf(1/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266769

/-- `ogf(1/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))` -/
def P10332270993305587785.Spec : Prop :=
  ∀ n, P10332270993305587785.a n = A266769 n

theorem P10332270993305587785.correct : P10332270993305587785.Spec := by
  intro n
  simp only [A266769]

end A266769

/-! ## A266769.P14734831888474551641

`∑[round((n+3)²/12)-a(n-1)]` with `a(0)=1`
-/

namespace A266769.P14734831888474551641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266769.P14734831888474551641

namespace A266769

/-- `∑[round((n+3)²/12)-a(n-1)]` -/
def P14734831888474551641.Spec : Prop :=
  ∀ n, P14734831888474551641.a n = A266769 n

end A266769

/-! ## A266769.P1636041699964081258

`∑[ceil(a(n-2)+(n+1)/3)]-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A266769.P1636041699964081258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌈(f1 (n - 2) : ℚ) + (n + 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A266769.P1636041699964081258

namespace A266769

/-- `∑[ceil(a(n-2)+(n+1)/3)]-a(n-1)` -/
def P1636041699964081258.Spec : Prop :=
  ∀ n, P1636041699964081258.a n = A266769 n

end A266769

/-! ## A266769.P7576700798362081746

`∑[A008731(n)]`
-/

namespace A266769.P7576700798362081746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266769.P7576700798362081746

namespace A266769

/-- `∑[A008731(n)]` -/
def P7576700798362081746.Spec : Prop :=
  ∀ n, P7576700798362081746.a n = A266769 n

end A266769

/-! ## A266769.P10621459170051585710

`A000601(n)-a(n-1)` with `a(0)=1`
-/

namespace A266769.P10621459170051585710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000601 n - a (n - 1)

end

end A266769.P10621459170051585710

namespace A266769

/-- `A000601(n)-a(n-1)` -/
def P10621459170051585710.Spec : Prop :=
  ∀ n, P10621459170051585710.a n = A266769 n

end A266769

/-! ## A266769.P16160201974696794982

`∑[A001840(ceil(xor(1, n)/2))]`
-/

namespace A266769.P16160201974696794982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266769.P16160201974696794982

namespace A266769

/-- `∑[A001840(ceil(xor(1, n)/2))]` -/
def P16160201974696794982.Spec : Prop :=
  ∀ n, P16160201974696794982.a n = A266769 n

end A266769

/-! ## A266769.P7898736004082298856

`A001399(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A266769.P7898736004082298856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001399 n + a (n - 2)

end

end A266769.P7898736004082298856

namespace A266769

/-- `A001399(n)+a(n-2)` -/
def P7898736004082298856.Spec : Prop :=
  ∀ n, P7898736004082298856.a n = A266769 n

end A266769

/-! ## A266769.P7640104417991022280

`A008805(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A266769.P7640104417991022280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A008805 n + a (n - 3)

end

end A266769.P7640104417991022280

namespace A266769

/-- `A008805(n)+a(n-3)` -/
def P7640104417991022280.Spec : Prop :=
  ∀ n, P7640104417991022280.a n = A266769 n

end A266769

/-! ## A266769.P9135049133734890559

`A001973(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A266769.P9135049133734890559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A001973 n - a (n - 3)

end

end A266769.P9135049133734890559

namespace A266769

/-- `A001973(n)-a(n-3)` -/
def P9135049133734890559.Spec : Prop :=
  ∀ n, P9135049133734890559.a n = A266769 n

end A266769

/-! ## A266769.P15964295290091050987

`∑[∑[A103221(n)]]-a(n-1)` with `a(0)=1`
-/

namespace A266769.P15964295290091050987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A266769.P15964295290091050987

namespace A266769

/-- `∑[∑[A103221(n)]]-a(n-1)` -/
def P15964295290091050987.Spec : Prop :=
  ∀ n, P15964295290091050987.a n = A266769 n

end A266769

/-! ## A266769.P13012472408229871910

`∑[A001840(A028242(n))]`
-/

namespace A266769.P13012472408229871910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266769.P13012472408229871910

namespace A266769

/-- `∑[A001840(A028242(n))]` -/
def P13012472408229871910.Spec : Prop :=
  ∀ n, P13012472408229871910.a n = A266769 n

end A266769

/-! ## A266769.P9300458270140288556

`A008769(n)+A001971(n)`
-/

namespace A266769.P9300458270140288556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 n + A001971 n

end

end A266769.P9300458270140288556

namespace A266769

/-- `A008769(n)+A001971(n)` -/
def P9300458270140288556.Spec : Prop :=
  ∀ n, P9300458270140288556.a n = A266769 n

end A266769

/-! ## A266769.P9924100136744159710

`A156040(n)+A008763(n)`
-/

namespace A266769.P9924100136744159710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n + A008763 n

end

end A266769.P9924100136744159710

namespace A266769

/-- `A156040(n)+A008763(n)` -/
def P9924100136744159710.Spec : Prop :=
  ∀ n, P9924100136744159710.a n = A266769 n

end A266769

/-! ## A266769.P10157712002138097702

`A014126(n)-A006918(n)`
-/

namespace A266769.P10157712002138097702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 n - A006918 n

end

end A266769.P10157712002138097702

namespace A266769

/-- `A014126(n)-A006918(n)` -/
def P10157712002138097702.Spec : Prop :=
  ∀ n, P10157712002138097702.a n = A266769 n

end A266769

/-! ## A266769.P8564169064239291764

`A005232(n)-A026810(n)`
-/

namespace A266769.P8564169064239291764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 n - A026810 n

end

end A266769.P8564169064239291764

namespace A266769

/-- `A005232(n)-A026810(n)` -/
def P8564169064239291764.Spec : Prop :=
  ∀ n, P8564169064239291764.a n = A266769 n

end A266769

/-! ## A266769.P17234267836251963119

`A008627(n)+∑[A008615(n)]`
-/

namespace A266769.P17234267836251963119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266769.P17234267836251963119

namespace A266769

/-- `A008627(n)+∑[A008615(n)]` -/
def P17234267836251963119.Spec : Prop :=
  ∀ n, P17234267836251963119.a n = A266769 n

end A266769

/-! ## A266769.P13149442082813777651

`∑[A008733(n)]-A026810(n)`
-/

namespace A266769.P13149442082813777651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026810 n

end

end A266769.P13149442082813777651

namespace A266769

/-- `∑[A008733(n)]-A026810(n)` -/
def P13149442082813777651.Spec : Prop :=
  ∀ n, P13149442082813777651.a n = A266769 n

end A266769

/-! ## A266769.P3788307138082202058

`A008764(n)+A005044(n+1)`
-/

namespace A266769.P3788307138082202058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008764 n + A005044 (n + 1)

end

end A266769.P3788307138082202058

namespace A266769

/-- `A008764(n)+A005044(n+1)` -/
def P3788307138082202058.Spec : Prop :=
  ∀ n, P3788307138082202058.a n = A266769 n

end A266769

/-!
# A266770: Molien series for invariants of finite Coxeter group D_7.

The programs for A266770, there is no canonical definition to state claims against.
-/

/-! ## A266770.P10540885897903362967

`A281460(A047276(n+1)%A281463(n+1))`
-/

namespace A266770.P10540885897903362967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281460 (Int.tmod (A047276 (n + 1)) (A281463 (n + 1))).toNat

end

end A266770.P10540885897903362967

/-! ## A266770.P9368963268380896402

`A266772(xor(1, A187829(n+1)))`
-/

namespace A266770.P9368963268380896402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (Int.xor 1 (A187829 (n + 1))).toNat

end

end A266770.P9368963268380896402

/-! ## A266770.P10383503049676146333

`A266772(A187829(n+1)-(-1)^n)`
-/

namespace A266770.P10383503049676146333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (A187829 (n + 1) - (-1) ^ n).toNat

end

end A266770.P10383503049676146333

/-! ## A266770.P9351619438157736407

`A266772(A004442(A187829(n+1)))`
-/

namespace A266770.P9351619438157736407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (A004442 (A187829 (n + 1)).toNat).toNat

end

end A266770.P9351619438157736407

/-! ## A266770.P13147502058450716871

`A355523(A005177(n))+A035363(n)`
-/

namespace A266770.P13147502058450716871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355523 (A005177 n).toNat + A035363 n

end

end A266770.P13147502058450716871

/-!
# A266771: Molien series for invariants of finite Coxeter group D_8 (bisected).

The programs for A266771, there is no canonical definition to state claims against.
-/

/-! ## A266771.P10411799932366887512

`A026814(n+4)+∑[A266776(n)]`
-/

namespace A266771.P10411799932366887512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266771.P10411799932366887512

/-! ## A266771.P12220252748012398712

`A026814(n+4)+A026814(n+8)`
-/

namespace A266771.P12220252748012398712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 4) + A026814 (n + 8)

end

end A266771.P12220252748012398712

/-! ## A266771.P4314818024341744625

`A026814(n+4)+A008637(n)`
-/

namespace A266771.P4314818024341744625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 4) + A008637 n

end

end A266771.P4314818024341744625

/-! ## A266771.P858880141966084792

`A008637(n)+A396145(n)+A396075(n)`
-/

namespace A266771.P858880141966084792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n + (A396145 n + A396075 n)

end

end A266771.P858880141966084792

/-! ## A266771.P13094345085800214514

`A008637(n+4)-(A008636(n+4)-A008637(n))`
-/

namespace A266771.P13094345085800214514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 (n + 4) - (A008636 (n + 4) - A008637 n)

end

end A266771.P13094345085800214514

/-!
# A266772: Molien series for invariants of finite Coxeter group D_9.

The programs for A266772, there is no canonical definition to state claims against.
-/

/-! ## A266772.P11391718891652500847

`or(A035363(n), A328499(A052816(n)))`
-/

namespace A266772.P11391718891652500847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035363 n) (A328499 (A052816 n).toNat)

end

end A266772.P11391718891652500847

/-! ## A266772.P4111091188300236960

`A262064(n)-A235145(A108700(n+2))`
-/

namespace A266772.P4111091188300236960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262064 n - A235145 (A108700 (n + 2)).toNat

end

end A266772.P4111091188300236960

/-! ## A266772.P7789133383638126888

`A266774(A000005(2^n)-(-1)^n)`
-/

namespace A266772.P7789133383638126888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266774 (A000005 (2 ^ n) - (-1) ^ n).toNat

end

end A266772.P7789133383638126888

/-! ## A266772.P7148835149762438315

`or(A001221(A143571(n)), A035363(n))`
-/

namespace A266772.P7148835149762438315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A143571 n).toNat) (A035363 n)

end

end A266772.P7148835149762438315

/-!
# A266773: Molien series for invariants of finite Coxeter group D_10 (bisected).

The programs for A266773, there is no canonical definition to state claims against.
-/

/-! ## A266773.P2134320455869277274

`A026816(n+5)+∑[A266778(n)]`
-/

namespace A266773.P2134320455869277274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266773.P2134320455869277274

/-! ## A266773.P18310380678626622063

`A026816(n+5)+A026816(n+10)`
-/

namespace A266773.P18310380678626622063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (n + 5) + A026816 (n + 10)

end

end A266773.P18310380678626622063

/-! ## A266773.P5839613376896826666

`A026816(n+5)+A008639(n)`
-/

namespace A266773.P5839613376896826666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (n + 5) + A008639 n

end

end A266773.P5839613376896826666

/-! ## A266773.P3160702794459055117

`A326469(n+14)-A326468(n+14)`
-/

namespace A266773.P3160702794459055117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326469 (n + 14) - A326468 (n + 14)

end

end A266773.P3160702794459055117

/-! ## A266773.P11203684866270316516

`A351870(A026811(n))+A330641(n)`
-/

namespace A266773.P11203684866270316516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A026811 n).toNat + A330641 n

end

end A266773.P11203684866270316516

/-!
# A266774: Molien series for invariants of finite Coxeter group D_11.

The programs for A266774, there is no canonical definition to state claims against.
-/

/-! ## A266774.P13881867761041255036

`or(A035363(n), A060128(A243745(n)))`
-/

namespace A266774.P13881867761041255036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035363 n) (A060128 (A243745 (n + 10)).toNat)

end

end A266774.P13881867761041255036

/-! ## A266774.P7766087305854773112

`or(A090573(n)%3, A035363(n))`
-/

namespace A266774.P7766087305854773112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A090573 n) 3) (A035363 n)

end

end A266774.P7766087305854773112

/-! ## A266774.P4591226888951489103

`or(A035363(n), A194698(A051250(n+1)))`
-/

namespace A266774.P4591226888951489103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035363 n) (A194698 (A051250 (n + 1)).toNat)

end

end A266774.P4591226888951489103

/-! ## A266774.P6163323783929568391

`A035363(n)+A000035(A079205(n+1))`
-/

namespace A266774.P6163323783929568391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + A000035 (A079205 (n + 1)).toNat

end

end A266774.P6163323783929568391

/-! ## A266774.P106922929137437060

`A035363(n)+A008966(A236096(n+1))`
-/

namespace A266774.P106922929137437060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + A008966 (A236096 (n + 1)).toNat

end

end A266774.P106922929137437060

/-!
# A266775: Molien series for invariants of finite Coxeter group D_12 (bisected).

The programs for A266775, there is no canonical definition to state claims against.
-/

/-! ## A266775.P5880577163521783505

`(A026812(n)+A000041(n))%Δ[A085016(n)]`
-/

namespace A266775.P5880577163521783505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026812 n + A000041 n) (f1 (n + 1) - f1 n)

end

end A266775.P5880577163521783505

/-! ## A266775.P7510573797089985254

`A000041(n)+A008966(A001644(n))*A026812(n)`
-/

namespace A266775.P7510573797089985254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A008966 (A001644 n).toNat * A026812 n

end

end A266775.P7510573797089985254

/-! ## A266775.P11118577059408353111

`A008966(A085040(n+1))+A026812(n)+A000041(n)`
-/

namespace A266775.P11118577059408353111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A085040 (n + 1)).toNat + (A026812 n + A000041 n)

end

end A266775.P11118577059408353111

/-! ## A266775.P3213390495502441767

`A194439(n+2)+A026812(n)`
-/

namespace A266775.P3213390495502441767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (n + 2) + A026812 n

end

end A266775.P3213390495502441767

/-! ## A266775.P5840183530830056426

`A000041(n)+A332898(A000079(n))+A026812(n)`
-/

namespace A266775.P5840183530830056426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A332898 (A000079 n).toNat + A026812 n)

end

end A266775.P5840183530830056426

/-!
# A266776: Molien series for invariants of finite Coxeter group A_7.

The programs for A266776, there is no canonical definition to state claims against.
-/

/-! ## A266776.P5486815402321629279

`A060027(n)+A026814(n)`
-/

namespace A266776.P5486815402321629279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060027 n + A026814 n

end

end A266776.P5486815402321629279

/-! ## A266776.P6882606024356833847

`Δ[A026814(n+7)]`
-/

namespace A266776.P6882606024356833847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266776.P6882606024356833847

/-! ## A266776.P7557883035777324521

`A026814(n+8)-A026814(n+7)`
-/

namespace A266776.P7557883035777324521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 8) - A026814 (n + 7)

end

end A266776.P7557883035777324521

/-! ## A266776.P7361734421931298571

`Δ[A008636(n)-A060027(n)]`
-/

namespace A266776.P7361734421931298571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A060027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266776.P7361734421931298571

/-! ## A266776.P1864562044143697193

`A008637(n)-A026814(n+7)`
-/

namespace A266776.P1864562044143697193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A026814 (n + 7)

end

end A266776.P1864562044143697193

/-! ## A266776.P8978345090895601570

`A008636(n+7)-(A008637(n+7)-A008637(n))`
-/

namespace A266776.P8978345090895601570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 (n + 7) - (A008637 (n + 7) - A008637 n)

end

end A266776.P8978345090895601570

/-! ## A266776.P2739302875556831494

`Δ[A008637(n+7)-A008636(n+7)]`
-/

namespace A266776.P2739302875556831494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 (n + 7) - A008636 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266776.P2739302875556831494

/-! ## A266776.P9537293856351977311

`Δ[A152146(A167614(n+2)+1)]`
-/

namespace A266776.P9537293856351977311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266776.P9537293856351977311

/-! ## A266776.P9811160004086975640

`Δ[A152146(A166136(n+2)-2)]`
-/

namespace A266776.P9811160004086975640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A166136 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266776.P9811160004086975640

/-! ## A266776.P3703148790224509920

`Δ[A072233(A000217(n+7)+8)]`
-/

namespace A266776.P3703148790224509920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A000217 (n + 7) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266776.P3703148790224509920

/-!
# A266777: Molien series for invariants of finite Coxeter group A_8.

The programs for A266777, there is no canonical definition to state claims against.
-/

/-! ## A266777.P6411623709402960133

`A060028(n)+A026815(n)`
-/

namespace A266777.P6411623709402960133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060028 n + A026815 n

end

end A266777.P6411623709402960133

/-! ## A266777.P16729676788882385849

`Δ[A026815(n+8)]`
-/

namespace A266777.P16729676788882385849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266777.P16729676788882385849

/-! ## A266777.P9010218838634445904

`A026815(n+9)-A026815(n+8)`
-/

namespace A266777.P9010218838634445904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (n + 9) - A026815 (n + 8)

end

end A266777.P9010218838634445904

/-! ## A266777.P17571234236149366269

`Δ[A266772(A004442(A004273(n)))]`
-/

namespace A266777.P17571234236149366269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266777.P17571234236149366269

/-! ## A266777.P1715724286548103152

`A266772(2*n)-A266772(A020742(n))`
-/

namespace A266777.P1715724286548103152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (2 * n) - A266772 (A020742 n).toNat

end

end A266777.P1715724286548103152

/-! ## A266777.P2713890311631019280

`Δ[A266772(2*n+7)]`
-/

namespace A266777.P2713890311631019280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266777.P2713890311631019280

/-! ## A266777.P7603535005212181463

`abs(Δ[A266772(A020742(n))])`
-/

namespace A266777.P7603535005212181463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A266777.P7603535005212181463

/-! ## A266777.P6871545759987900529

`A008638(n)-A026815(n+8)`
-/

namespace A266777.P6871545759987900529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A026815 (n + 8)

end

end A266777.P6871545759987900529

/-! ## A266777.P15218525334581911877

`Δ[A266772(A020742(n))]%A000032(4*n)`
-/

namespace A266777.P15218525334581911877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000032 (4 * n))

end

end A266777.P15218525334581911877

/-!
# A266778: Molien series for invariants of finite Coxeter group A_9.

The programs for A266778, there is no canonical definition to state claims against.
-/

/-! ## A266778.P14504338167705755704

`A060029(n)+A026816(n)`
-/

namespace A266778.P14504338167705755704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060029 n + A026816 n

end

end A266778.P14504338167705755704

/-! ## A266778.P16838061322626373278

`Δ[A026816(n+9)]`
-/

namespace A266778.P16838061322626373278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266778.P16838061322626373278

/-! ## A266778.P339923262467891927

`abs(Δ[A026816(A020723(n))])`
-/

namespace A266778.P339923262467891927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (A020723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A266778.P339923262467891927

/-! ## A266778.P18326000583475180248

`A026816(n+10)-A026816(n+9)`
-/

namespace A266778.P18326000583475180248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (n + 10) - A026816 (n + 9)

end

end A266778.P18326000583475180248

/-! ## A266778.P7799551795073962423

`A008639(n)-A026816(n+9)`
-/

namespace A266778.P7799551795073962423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n - A026816 (n + 9)

end

end A266778.P7799551795073962423

/-! ## A266778.P13769734905342514554

`Δ[A008638(n)-A060029(n)]`
-/

namespace A266778.P13769734905342514554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A060029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266778.P13769734905342514554

/-! ## A266778.P7608760107258443038

`Δ[A008639(n+9)-A008638(n+9)]`
-/

namespace A266778.P7608760107258443038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 (n + 9) - A008638 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266778.P7608760107258443038

/-! ## A266778.P5187722147406352171

`A008639(n)-A152146(A052905(n+1)+10)`
-/

namespace A266778.P5187722147406352171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n - A152146 (A052905 (n + 1) + 10).toNat

end

end A266778.P5187722147406352171

/-! ## A266778.P16549971877496475534

`Δ[A152146(A167499(n+3))]`
-/

namespace A266778.P16549971877496475534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167499 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266778.P16549971877496475534

/-! ## A266778.P13872518492896961204

`Δ[A152146(A167614(n+3)+2)]`
-/

namespace A266778.P13872518492896961204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167614 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266778.P13872518492896961204

/-! ## A266778.P1686610003736206555

`Δ[A152146(A052905(n+1)+10)]`
-/

namespace A266778.P1686610003736206555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A052905 (n + 1) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266778.P1686610003736206555

/-! ## A266778.P107675773861605662

`A333925(eq[8, A116598(n)])`
-/

namespace A266778.P107675773861605662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266778.P107675773861605662

/-!
# A266779: Molien series for invariants of finite Coxeter group A_10.

The programs for A266779, there is no canonical definition to state claims against.
-/

/-! ## A266779.P14072978391890533390

`Δ[A266774(A004442(A004273(n)))]`
-/

namespace A266779.P14072978391890533390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266774 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266779.P14072978391890533390

/-! ## A266779.P6439277043008437947

`Δ[A266774(2*n+9)]`
-/

namespace A266779.P6439277043008437947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266774 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266779.P6439277043008437947

/-! ## A266779.P161463890927932029

`A333925(A155212(n+7)-3)`
-/

namespace A266779.P161463890927932029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (A155212 (n + 7) - 3).toNat

end

end A266779.P161463890927932029

/-! ## A266779.P14358228911527996547

`A333925(A000096(n+10)-10)`
-/

namespace A266779.P14358228911527996547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (A000096 (n + 10) - 10).toNat

end

end A266779.P14358228911527996547

/-! ## A266779.P14201849280566617117

`A333925(eq[10, A025581(n)])`
-/

namespace A266779.P14201849280566617117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266779.P14201849280566617117

/-! ## A266779.P9689024576851145381

`A333925(eq[11, A004736(n+1)])`
-/

namespace A266779.P9689024576851145381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266779.P9689024576851145381

/-!
# A266780: Molien series for invariants of finite Coxeter group A_11.

The programs for A266780, there is no canonical definition to state claims against.
-/

/-! ## A266780.P499753532109718711

`Δ[A152146(A166136(n+4))]`
-/

namespace A266780.P499753532109718711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A166136 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266780.P499753532109718711

/-! ## A266780.P3514999592899019020

`Δ[A152146(A167499(n+4)+1)]`
-/

namespace A266780.P3514999592899019020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167499 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266780.P3514999592899019020

/-! ## A266780.P3105931713107418671

`Δ[A152146(A167614(n+4)+3)]`
-/

namespace A266780.P3105931713107418671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167614 (n + 4) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266780.P3105931713107418671

/-! ## A266780.P12066230754778945963

`Δ[A152146(A133263(n+5)+4)]`
-/

namespace A266780.P12066230754778945963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A133263 (n + 5) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266780.P12066230754778945963

/-! ## A266780.P2147257068183659562

`Δ[A152146(A000124(n+5)+5)]`
-/

namespace A266780.P2147257068183659562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A000124 (n + 5) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266780.P2147257068183659562

/-! ## A266780.P18437281072766996007

`Δ[A152146(A253145(n+4)+6)]`
-/

namespace A266780.P18437281072766996007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A253145 (n + 4) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266780.P18437281072766996007

/-! ## A266780.P6766792744958310175

`Δ[A152146(A000217(n+5)+6)]`
-/

namespace A266780.P6766792744958310175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A000217 (n + 5) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266780.P6766792744958310175

/-! ## A266780.P16202928867030338304

`Δ[A152146(A161680(n+6)+6)]`
-/

namespace A266780.P16202928867030338304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A161680 (n + 6) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266780.P16202928867030338304

/-!
# A266781: Molien series for invariants of finite Coxeter group A_12.

The programs for A266781, there is no canonical definition to state claims against.
-/

/-! ## A266781.P14968823598804080385

`A316384(4*n+1)-A185245(A165652(n))`
-/

namespace A266781.P14968823598804080385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316384 (4 * n + 1) - A185245 (A165652 n).toNat

end

end A266781.P14968823598804080385

/-! ## A266781.P6945612814982726304

`A029838(4*n+1)%A029814(n)`
-/

namespace A266781.P6945612814982726304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029838 (4 * n + 1)) (A029814 n)

end

end A266781.P6945612814982726304

/-! ## A266781.P13595127579502708102

`A036015(2*n)+Δ[A028445(3*n+1)]%2`
-/

namespace A266781.P13595127579502708102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028445 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036015 (2 * n) + Int.tmod (f1 (n + 1) - f1 n) 2

end

end A266781.P13595127579502708102

/-! ## A266781.P10203611773812748040

`A259774(2*n)^A001628(A005926(n))`
-/

namespace A266781.P10203611773812748040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259774 (2 * n) : ℚ) ^ (A001628 (A005926 n).toNat : ℤ)

end

end A266781.P10203611773812748040

/-! ## A266781.P8265341465668203073

`A259774(2*n)%A226380(A129012(n))`
-/

namespace A266781.P8265341465668203073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259774 (2 * n)) (A226380 (A129012 n).toNat)

end

end A266781.P8265341465668203073

/-!
# A266782: The growth series for the affine Coxeter (or Weyl) group [3,5] (or H_3).

The programs for A266782, there is no canonical definition to state claims against.
-/

/-! ## A266782.P1422445722870058282

`∑[∑[A294903(A077241(n))]]`
-/

namespace A266782.P1422445722870058282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (A077241 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266782.P1422445722870058282

/-! ## A266782.P9153188675438663736

`∑[∑[A138553(A342063(n+1))]]`
-/

namespace A266782.P9153188675438663736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138553 (A342063 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266782.P9153188675438663736

/-! ## A266782.P8062351687129182148

`∑[∑[A256915(A006002(n)+3)]]`
-/

namespace A266782.P8062351687129182148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A006002 n + 3).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266782.P8062351687129182148

/-!
# A266783: The growth series for the affine Coxeter (or Weyl) group [3,3,5] (or H_4).

The programs for A266783, there is no canonical definition to state claims against.
-/

/-! ## A266783.P11815007251347890523

`∑[∑[A341866(A315170(n))]]`
-/

namespace A266783.P11815007251347890523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A315170 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266783.P11815007251347890523

/-! ## A266783.P1883350863011389663

`A283826(A068045(n))+∑[(n+1)²]`
-/

namespace A266783.P1883350863011389663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283826 (A068045 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A266783.P1883350863011389663

/-! ## A266783.P190988892931547168

`or(A000120(A255379(n)), A000330(n+1))`
-/

namespace A266783.P190988892931547168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A255379 n).toNat) (A000330 (n + 1))

end

end A266783.P190988892931547168

/-! ## A266783.P16378788265469131116

`∑[∑[record[A169819(n+1)]+n]]`
-/

namespace A266783.P16378788265469131116
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266783.P16378788265469131116

/-! ## A266783.P2978497316026763302

`∑[(n+1)²]+and(n, A185284(3*n+4))`
-/

namespace A266783.P2978497316026763302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.land (n : ℤ) (A185284 (3 * n + 4))

end

end A266783.P2978497316026763302

/-!
# A266784: The growth series for the affine Weyl group F_4.

The programs for A266784, there is no canonical definition to state claims against.
-/

/-! ## A266784.P6109013748045897260

`∑[∑[∑[A326702((n+1)²)]]]`
-/

namespace A266784.P6109013748045897260
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266784.P6109013748045897260

/-! ## A266784.P2963447400871324859

`∑[∑[∑[A107800((n+1)^4+1)]]]`
-/

namespace A266784.P2963447400871324859
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107800 ((n + 1) ^ 4 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266784.P2963447400871324859

/-! ## A266784.P6855690532784514669

`∑[∑[A108852(A084508(n))]]`
-/

namespace A266784.P6855690532784514669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A084508 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266784.P6855690532784514669

/-! ## A266784.P2058525134489696960

`∑[A373948(∑[A063938(2*n+1)])]`
-/

namespace A266784.P2058525134489696960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266784.P2058525134489696960

/-!
# A266785: The growth series for the affine Weyl group E_7.

The programs for A266785, there is no canonical definition to state claims against.
-/

/-! ## A266785.P1676164250590409362

`A040977(n)+A000579(A032555(n+1))`
-/

namespace A266785.P1676164250590409362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n + A000579 (A032555 (n + 1)).toNat

end

end A266785.P1676164250590409362

/-! ## A266785.P16387497103236919822

`A040977(n)+A000579(A032559(n+1))`
-/

namespace A266785.P16387497103236919822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n + A000579 (A032559 (n + 1)).toNat

end

end A266785.P16387497103236919822

/-! ## A266785.P598710140985057395

`A040977(A032555(n+1))-A162493(n+1)`
-/

namespace A266785.P598710140985057395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 (A032555 (n + 1)).toNat - A162493 (n + 1)

end

end A266785.P598710140985057395

/-! ## A266785.P1865032883600042294

`A040977(A032559(n+1))-A162493(n+1)`
-/

namespace A266785.P1865032883600042294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 (A032559 (n + 1)).toNat - A162493 (n + 1)

end

end A266785.P1865032883600042294

/-! ## A266785.P3290151118136819219

`A299337(2*n)+A000579(A032555(n+1))`
-/

namespace A266785.P3290151118136819219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299337 (2 * n) + A000579 (A032555 (n + 1)).toNat

end

end A266785.P3290151118136819219

/-!
# A266786: Triangle read by rows giving successive states of cellular automaton generated by "Rule 61" initiated with a single ON (black) cell.

The programs for A266786, there is no canonical definition to state claims against.
-/

/-! ## A266786.P11866479760039470340

`A267136(A020703(n+1)-1)`
-/

namespace A266786.P11866479760039470340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267136 (A020703 (n + 1) - 1).toNat

end

end A266786.P11866479760039470340

/-! ## A266786.P18114721463414964743

`A267136(n-2*A196199(n))`
-/

namespace A266786.P18114721463414964743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267136 ((n : ℤ) - 2 * A196199 n).toNat

end

end A266786.P18114721463414964743

/-! ## A266786.P16280742457269713269

`A267136(A057428(n)+A020703(n+1))`
-/

namespace A266786.P16280742457269713269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267136 (A057428 n + A020703 (n + 1)).toNat

end

end A266786.P16280742457269713269

/-! ## A266786.P18214852827271379641

`A267136(n-A196199(n)-A196199(n))`
-/

namespace A266786.P18214852827271379641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267136 ((n : ℤ) - A196199 n - A196199 n).toNat

end

end A266786.P18214852827271379641

/-! ## A266786.P2687384223457767349

`A267136(A020703(n+2)%A204985(n+1))`
-/

namespace A266786.P2687384223457767349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267136 (Int.tmod (A020703 (n + 2)) (A204985 (n + 1))).toNat

end

end A266786.P2687384223457767349

/-! ## A266786.P7751724843401050568

`A267136(A020703(n+2)%A198633(n))`
-/

namespace A266786.P7751724843401050568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267136 (Int.tmod (A020703 (n + 2)) (A198633 n)).toNat

end

end A266786.P7751724843401050568

/-!
# A266787: Binary representation of the n-th iteration of the "Rule 61" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266787, there is no canonical definition to state claims against.
-/

/-! ## A266787.P13983544838910139416

`A007088(A266788(n))`
-/

namespace A266787.P13983544838910139416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266788 n).toNat

end

end A266787.P13983544838910139416

/-! ## A266787.P11486496790485135892

`A185544(2*A266788(n))`
-/

namespace A266787.P11486496790485135892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A266788 n).toNat

end

end A266787.P11486496790485135892

/-!
# A266788: Decimal representation of the n-th iteration of the "Rule 61" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266788, there is no canonical definition to state claims against.
-/

/-! ## A266788.P9978663741607068462

`A319182(n^3+1-n)+∑[7*n-5]+5`
-/

namespace A266788.P9978663741607068462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319182 ((n ^ 3 : ℤ) + (1 - (n : ℤ))).toNat + (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A266788.P9978663741607068462

/-!
# A266789: Middle column of the "Rule 61" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266789, there is no canonical definition to state claims against.
-/

/-! ## A266789.P9755794744220060829

`1-A266444(n+1)`
-/

namespace A266789.P9755794744220060829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266444 (n + 1)

end

end A266789.P9755794744220060829

/-!
# A266790: Binary representation of the middle column of the "Rule 61" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266790, there is no canonical definition to state claims against.
-/

/-! ## A266790.P12002000799500600580

`A266789(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A266790.P12002000799500600580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266789 n + 10 * a (n - 1)

end

end A266790.P12002000799500600580

/-! ## A266790.P10860708483700834093

`A007088(A266791(n))`
-/

namespace A266790.P10860708483700834093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266791 n).toNat

end

end A266790.P10860708483700834093

/-! ## A266790.P9742896061567605286

`A007088(∑[A198633(n)]-A266446(n+1))`
-/

namespace A266790.P9742896061567605286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j - A266446 (n + 1)).toNat

end

end A266790.P9742896061567605286

/-! ## A266790.P9378745341849110194

`A007088(Δ[A000247(n+2)]-A266446(n+1))`
-/

namespace A266790.P9378745341849110194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000247 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n - A266446 (n + 1)).toNat

end

end A266790.P9378745341849110194

/-! ## A266790.P6884253540421168520

`A007088(A198633(n+1)-(A266446(n+1)+1))`
-/

namespace A266790.P6884253540421168520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 (n + 1) - (A266446 (n + 1) + 1)).toNat

end

end A266790.P6884253540421168520

/-!
# A266791: Decimal representation of the middle column of the "Rule 61" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266791, there is no canonical definition to state claims against.
-/

/-! ## A266791.P9357487857515330646

`xor(2*a(n-1), A266789(n))` with `a(0)=1`
-/

namespace A266791.P9357487857515330646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A266789 n)

end

end A266791.P9357487857515330646

/-! ## A266791.P15401361670683905237

`∑[A198633(n)]-A266446(n+1)`
-/

namespace A266791.P15401361670683905237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A266446 (n + 1)

end

end A266791.P15401361670683905237

/-! ## A266791.P7980943410082089797

`A198633(n+1)-(A266446(n+1)+1)`
-/

namespace A266791.P7980943410082089797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 1) - (A266446 (n + 1) + 1)

end

end A266791.P7980943410082089797

/-! ## A266791.P641707668840136610

`Δ[A000247(n+2)]-A266446(n+1)`
-/

namespace A266791.P641707668840136610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000247 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A266446 (n + 1)

end

end A266791.P641707668840136610

/-! ## A266791.P1475328154491816148

`record[A204985(n+1)+1]-A266446(n+1)`
-/

namespace A266791.P1475328154491816148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204985 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A266446 (n + 1)

end

end A266791.P1475328154491816148

/-! ## A266791.P15658625270024865500

`xor(2*a(n-1), A266786(n²+n))` with `a(0)=1`
-/

namespace A266791.P15658625270024865500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A266786 (n ^ 2 + n))

end

end A266791.P15658625270024865500

/-!
# A266792: Number of ON (black) cells in the n-th iteration of the "Rule 61" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266792, the canonical program `A266792.P1581298622143804355` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266792 has offset 0).

The definition of A266792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266792.P1581298622143804355

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5, a(4)=4, a(5)=7, a(6)=5, a(7)=11, a(8)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266792

/-- `2*a(n-2)-a(n-4)` -/
def P1581298622143804355.Spec : Prop :=
  ∀ n, P1581298622143804355.a n = A266792 n

theorem P1581298622143804355.correct : P1581298622143804355.Spec := by
  intro n
  simp only [A266792]

end A266792

/-! ## A266792.P9386411554833039238

`Δ[n²]-A266794(n)`
-/

namespace A266792.P9386411554833039238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266794 n

end

end A266792.P9386411554833039238

namespace A266792

/-- `Δ[n²]-A266794(n)` -/
def P9386411554833039238.Spec : Prop :=
  ∀ n, P9386411554833039238.a n = A266792 n

end A266792

/-! ## A266792.P7502785445662001458

`A267259(n)-char[2*(n+1)]`
-/

namespace A266792.P7502785445662001458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266792.P7502785445662001458

namespace A266792

/-- `A267259(n)-char[2*(n+1)]` -/
def P7502785445662001458.Spec : Prop :=
  ∀ n, P7502785445662001458.a n = A266792 n

end A266792

/-! ## A266792.P8622083205620009381

`n+1-A266794(n%(n+1))+n`
-/

namespace A266792.P8622083205620009381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A266794 (n % (n + 1)) + (n : ℤ)

end

end A266792.P8622083205620009381

namespace A266792

/-- `n+1-A266794(n%(n+1))+n` -/
def P8622083205620009381.Spec : Prop :=
  ∀ n, P8622083205620009381.a n = A266792 n

end A266792

/-! ## A266792.P11333487600539148222

`abs(A005408(n)-A266794(n))`
-/

namespace A266792.P11333487600539148222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A266794 n|

end

end A266792.P11333487600539148222

namespace A266792

/-- `abs(A005408(n)-A266794(n))` -/
def P11333487600539148222.Spec : Prop :=
  ∀ n, P11333487600539148222.a n = A266792 n

end A266792

/-! ## A266792.P6533152620861512567

`A005843(n)+1-A266794(n)`
-/

namespace A266792.P6533152620861512567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A266794 n)

end

end A266792.P6533152620861512567

namespace A266792

/-- `A005843(n)+1-A266794(n)` -/
def P6533152620861512567.Spec : Prop :=
  ∀ n, P6533152620861512567.a n = A266792 n

end A266792

/-! ## A266792.P7557330854645551062

`A000027(n+1)+n-A266794(n)`
-/

namespace A266792.P7557330854645551062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A266794 n)

end

end A266792.P7557330854645551062

namespace A266792

/-- `A000027(n+1)+n-A266794(n)` -/
def P7557330854645551062.Spec : Prop :=
  ∀ n, P7557330854645551062.a n = A266792 n

end A266792

/-! ## A266792.P6625302028385310354

`A000027(A005408(n)-A266794(n))`
-/

namespace A266792.P6625302028385310354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005408 n - A266794 n).toNat

end

end A266792.P6625302028385310354

namespace A266792

/-- `A000027(A005408(n)-A266794(n))` -/
def P6625302028385310354.Spec : Prop :=
  ∀ n, P6625302028385310354.a n = A266792 n

end A266792

/-! ## A266792.P9349840638800364721

`∑{digits}[A266787(n), #]`
-/

namespace A266792.P9349840638800364721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A266792.P9349840638800364721

namespace A266792

/-- `∑{digits}[A266787(n), #]` -/
def P9349840638800364721.Spec : Prop :=
  ∀ n, (P9349840638800364721.a n : ℤ) = A266792 n

end A266792

/-! ## A266792.P9683943538423314852

`∑{digits}[A267138(n), #]`
-/

namespace A266792.P9683943538423314852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267138 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A266792.P9683943538423314852

namespace A266792

/-- `∑{digits}[A267138(n), #]` -/
def P9683943538423314852.Spec : Prop :=
  ∀ n, (P9683943538423314852.a n : ℤ) = A266792 n

end A266792

/-!
# A266793: Total number of ON (black) cells after n iterations of the "Rule 61" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266793, the canonical program `A266793.P1306854048290342548` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266793 has offset 0).

The definition of A266793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266793.P1306854048290342548

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=10, a(4)=14, a(5)=21, a(6)=26, a(7)=37, a(8)=42`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266793

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1306854048290342548.Spec : Prop :=
  ∀ n, P1306854048290342548.a n = A266793 n

theorem P1306854048290342548.correct : P1306854048290342548.Spec := by
  intro n
  simp only [A266793]

end A266793

/-! ## A266793.P7660084856389138883

`∑[A266792(n)]`
-/

namespace A266793.P7660084856389138883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266793.P7660084856389138883

namespace A266793

/-- `∑[A266792(n)]` -/
def P7660084856389138883.Spec : Prop :=
  ∀ n, P7660084856389138883.a n = A266793 n

end A266793

/-! ## A266793.P17326559424337346120

`(n+1)²-A266795(n)`
-/

namespace A266793.P17326559424337346120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266795 n

end

end A266793.P17326559424337346120

namespace A266793

/-- `(n+1)²-A266795(n)` -/
def P17326559424337346120.Spec : Prop :=
  ∀ n, P17326559424337346120.a n = A266793 n

end A266793

/-! ## A266793.P11076858811516972405

`∑[Δ[n²]-A266794(n)]`
-/

namespace A266793.P11076858811516972405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266793.P11076858811516972405

namespace A266793

/-- `∑[Δ[n²]-A266794(n)]` -/
def P11076858811516972405.Spec : Prop :=
  ∀ n, P11076858811516972405.a n = A266793 n

end A266793

/-! ## A266793.P10655916696017849770

`∑[A267259(n)+n%2]-n`
-/

namespace A266793.P10655916696017849770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A266793.P10655916696017849770

namespace A266793

/-- `∑[A267259(n)+n%2]-n` -/
def P10655916696017849770.Spec : Prop :=
  ∀ n, P10655916696017849770.a n = A266793 n

end A266793

/-! ## A266793.P17998727160998452086

`A267260(n)-A004526(n)`
-/

namespace A266793.P17998727160998452086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267260 n - A004526 n

end

end A266793.P17998727160998452086

namespace A266793

/-- `A267260(n)-A004526(n)` -/
def P17998727160998452086.Spec : Prop :=
  ∀ n, P17998727160998452086.a n = A266793 n

end A266793

/-! ## A266793.P9802182990892741613

`A000217(n+1)+∑[n-A266794(n)]`
-/

namespace A266793.P9802182990892741613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A266794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266793.P9802182990892741613

namespace A266793

/-- `A000217(n+1)+∑[n-A266794(n)]` -/
def P9802182990892741613.Spec : Prop :=
  ∀ n, P9802182990892741613.a n = A266793 n

end A266793

/-! ## A266793.P1575331072619817721

`A278818(A266795(n))`
-/

namespace A266793.P1575331072619817721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 (A266795 n).toNat

end

end A266793.P1575331072619817721

namespace A266793

/-- `A278818(A266795(n))` -/
def P1575331072619817721.Spec : Prop :=
  ∀ n, P1575331072619817721.a n = A266793 n

end A266793

/-! ## A266793.P14444173325454904542

`∑[∑{digits}[A266787(n), #]]`
-/

namespace A266793.P14444173325454904542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266787 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266793.P14444173325454904542

namespace A266793

/-- `∑[∑{digits}[A266787(n), #]]` -/
def P14444173325454904542.Spec : Prop :=
  ∀ n, (P14444173325454904542.a n : ℤ) = A266793 n

end A266793

/-!
# A266794: Number of OFF (white) cells in the n-th iteration of the "Rule 61" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266794, the canonical program `A266794.P858016830914444533` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266794 has offset 0).

The definition of A266794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266794.P858016830914444533

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=5, a(5)=4, a(6)=8, a(7)=4, a(8)=12`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266794

/-- `2*a(n-2)-a(n-4)` -/
def P858016830914444533.Spec : Prop :=
  ∀ n, P858016830914444533.a n = A266794 n

theorem P858016830914444533.correct : P858016830914444533.Spec := by
  intro n
  simp only [A266794]

end A266794

/-! ## A266794.P8277998564294970227

`Δ[n²]-A266792(n)`
-/

namespace A266794.P8277998564294970227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266792 n

end

end A266794.P8277998564294970227

namespace A266794

/-- `Δ[n²]-A266792(n)` -/
def P8277998564294970227.Spec : Prop :=
  ∀ n, P8277998564294970227.a n = A266794 n

end A266794

/-! ## A266794.P4482680515360439436

`A267261(n)+char[2*(n+1)]`
-/

namespace A266794.P4482680515360439436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267261 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266794.P4482680515360439436

namespace A266794

/-- `A267261(n)+char[2*(n+1)]` -/
def P4482680515360439436.Spec : Prop :=
  ∀ n, P4482680515360439436.a n = A266794 n

end A266794

/-! ## A266794.P3094309046261778765

`abs(A005408(n)-A266792(n))`
-/

namespace A266794.P3094309046261778765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A266792 n|

end

end A266794.P3094309046261778765

namespace A266794

/-- `abs(A005408(n)-A266792(n))` -/
def P3094309046261778765.Spec : Prop :=
  ∀ n, P3094309046261778765.a n = A266794 n

end A266794

/-! ## A266794.P73642310619657928

`A005843(n)+1-A266792(n)`
-/

namespace A266794.P73642310619657928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A266792 n)

end

end A266794.P73642310619657928

namespace A266794

/-- `A005843(n)+1-A266792(n)` -/
def P73642310619657928.Spec : Prop :=
  ∀ n, P73642310619657928.a n = A266794 n

end A266794

/-! ## A266794.P10996093831413874032

`A000027(n+1)+n-A266792(n)`
-/

namespace A266794.P10996093831413874032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A266792 n)

end

end A266794.P10996093831413874032

namespace A266794

/-- `A000027(n+1)+n-A266792(n)` -/
def P10996093831413874032.Spec : Prop :=
  ∀ n, P10996093831413874032.a n = A266794 n

end A266794

/-!
# A266795: Total number of OFF (white) cells after n iterations of the "Rule 61" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266795, the canonical program `A266795.P13405455888868570937` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266795 has offset 0).

The definition of A266795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266795.P13405455888868570937

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=11, a(5)=15, a(6)=23, a(7)=27, a(8)=39`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266795

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13405455888868570937.Spec : Prop :=
  ∀ n, P13405455888868570937.a n = A266795 n

theorem P13405455888868570937.correct : P13405455888868570937.Spec := by
  intro n
  simp only [A266795]

end A266795

/-! ## A266795.P1147809138386570797

`∑[A266794(n)]`
-/

namespace A266795.P1147809138386570797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266795.P1147809138386570797

namespace A266795

/-- `∑[A266794(n)]` -/
def P1147809138386570797.Spec : Prop :=
  ∀ n, P1147809138386570797.a n = A266795 n

end A266795

/-! ## A266795.P10110137148840479748

`(n+1)²-A266793(n)`
-/

namespace A266795.P10110137148840479748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266793 n

end

end A266795.P10110137148840479748

namespace A266795

/-- `(n+1)²-A266793(n)` -/
def P10110137148840479748.Spec : Prop :=
  ∀ n, P10110137148840479748.a n = A266795 n

end A266795

/-! ## A266795.P11521920442984207866

`∑[Δ[n²]-A266792(n)]`
-/

namespace A266795.P11521920442984207866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266795.P11521920442984207866

namespace A266795

/-- `∑[Δ[n²]-A266792(n)]` -/
def P11521920442984207866.Spec : Prop :=
  ∀ n, P11521920442984207866.a n = A266795 n

end A266795

/-! ## A266795.P2530742558655680472

`A267262(n)+A004526(n)`
-/

namespace A266795.P2530742558655680472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267262 n + A004526 n

end

end A266795.P2530742558655680472

namespace A266795

/-- `A267262(n)+A004526(n)` -/
def P2530742558655680472.Spec : Prop :=
  ∀ n, P2530742558655680472.a n = A266795 n

end A266795

/-! ## A266795.P7298602123589643360

`A213398(n)-A267260(n)`
-/

namespace A266795.P7298602123589643360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n - A267260 n

end

end A266795.P7298602123589643360

namespace A266795

/-- `A213398(n)-A267260(n)` -/
def P7298602123589643360.Spec : Prop :=
  ∀ n, P7298602123589643360.a n = A266795 n

end A266795

/-!
# A266796: Numbers n such that the concave polygon formed by the trajectory of n in the "3n+1" problem and the straight line between the coordinate points (0,n) and (r,1) where r is the number of iterations needed to reach 1 is not a self-intersecting polygon.

The programs for A266796, there is no canonical definition to state claims against.
-/

/-! ## A266796.P8943466478024705620

`lt[A097407(A001651(n+3)), A306994(2*n+1)]`
-/

namespace A266796.P8943466478024705620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097407 (A001651 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306994 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A266796.P8943466478024705620

/-! ## A266796.P6532656877899444020

`A347711(A321655(n))+A324280(n+1)`
-/

namespace A266796.P6532656877899444020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347711 (A321655 n).toNat + A324280 (n + 1)

end

end A266796.P6532656877899444020

/-! ## A266796.P18117903881964149397

`A084783(n+3)+A080024(A001037(2*n))`
-/

namespace A266796.P18117903881964149397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084783 (n + 3) + A080024 (A001037 (2 * n)).toNat

end

end A266796.P18117903881964149397

/-! ## A266796.P8532721861668028921

`lt[A355060(A355029(n+2)), A355061(n+1)]`
-/

namespace A266796.P8532721861668028921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355060 (A355029 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A266796.P8532721861668028921

/-!
# A266797: a(n) = (6^n + 4^n + 3*2^n)/8.

The programs for A266797, the canonical program `A266797.P13738162874664316019` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266797 has offset 1).

The definition of A266797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^(n+1)+4^(n+1)+3*2^(n+1))/8` (program `A266797.P5758046943497529372`, by `A266797.P5758046943497529372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A266797.P333733540225214530

`2^(n-2)*(2^(n+1)+3^(n+1)+3)`
-/

namespace A266797.P333733540225214530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (2 ^ (n + 1) + 3 ^ (n + 1) + 3 : ℚ)

end

end A266797.P333733540225214530

namespace A266797

/-- `2^(n-2)*(2^(n+1)+3^(n+1)+3)` -/
def P333733540225214530.Spec : Prop :=
  ∀ n, P333733540225214530.a n = (A266797 (n + 1) : ℚ)

theorem P333733540225214530.correct : P333733540225214530.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A266797, Nat.add_sub_cancel, A266797.P333733540225214530.a, A266797.P13738162874664316019.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A266797, Nat.add_sub_cancel, A266797.P333733540225214530.a, A266797.P13738162874664316019.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A266797

/-! ## A266797.P13738162874664316019

`12*a(n-1)-44*a(n-2)+48*a(n-3)` with `a(0)=2, a(1)=8, a(2)=38`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266797

/-- `12*a(n-1)-44*a(n-2)+48*a(n-3)` -/
def P13738162874664316019.Spec : Prop :=
  ∀ n, P13738162874664316019.a n = A266797 (n + 1)

theorem P13738162874664316019.correct : P13738162874664316019.Spec := by
  intro n
  simp only [A266797, Nat.add_sub_cancel]

end A266797

/-! ## A266797.P5758046943497529372

`(6^(n+1)+4^(n+1)+3*2^(n+1))/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266797.P5758046943497529372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 1) + 4 ^ (n + 1) + 3 * 2 ^ (n + 1) : ℚ) / 8

end

end A266797.P5758046943497529372

namespace A266797

/-- `(6^(n+1)+4^(n+1)+3*2^(n+1))/8` -/
def P5758046943497529372.Spec : Prop :=
  ∀ n, P5758046943497529372.a n = (A266797 (n + 1) : ℚ)

theorem P5758046943497529372.correct : P5758046943497529372.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A266797, Nat.add_sub_cancel, A266797.P5758046943497529372.a, A266797.P13738162874664316019.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A266797, Nat.add_sub_cancel, A266797.P5758046943497529372.a, A266797.P13738162874664316019.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A266797

/-! ## A266797.P6625615360322946096

`A090040(n)+A007582(n)`
-/

namespace A266797.P6625615360322946096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090040 n + A007582 n

end

end A266797.P6625615360322946096

namespace A266797

/-- `A090040(n)+A007582(n)` -/
def P6625615360322946096.Spec : Prop :=
  ∀ n, P6625615360322946096.a n = A266797 (n + 1)

end A266797

/-! ## A266797.P904234670964234758

`A233162(n+3)-A007582(n)`
-/

namespace A266797.P904234670964234758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233162 (n + 3) - A007582 n

end

end A266797.P904234670964234758

namespace A266797

/-- `A233162(n+3)-A007582(n)` -/
def P904234670964234758.Spec : Prop :=
  ∀ n, P904234670964234758.a n = A266797 (n + 1)

end A266797

/-! ## A266797.P10360917567600237460

`A074601(n)-2*A016283(n)`
-/

namespace A266797.P10360917567600237460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074601 n - 2 * A016283 n

end

end A266797.P10360917567600237460

namespace A266797

/-- `A074601(n)-2*A016283(n)` -/
def P10360917567600237460.Spec : Prop :=
  ∀ n, P10360917567600237460.a n = A266797 (n + 1)

end A266797

/-! ## A266797.P12954097305804949126

`Δ[A007582(n)+∑[A016283(n)]]`
-/

namespace A266797.P12954097305804949126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266797.P12954097305804949126

namespace A266797

/-- `Δ[A007582(n)+∑[A016283(n)]]` -/
def P12954097305804949126.Spec : Prop :=
  ∀ n, P12954097305804949126.a n = A266797 (n + 1)

end A266797

/-! ## A266797.P5559693642479606677

`A016283(n+1)+Δ[A007582(n)]`
-/

namespace A266797.P5559693642479606677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016283 (n + 1) + (f1 (n + 1) - f1 n)

end

end A266797.P5559693642479606677

namespace A266797

/-- `A016283(n+1)+Δ[A007582(n)]` -/
def P5559693642479606677.Spec : Prop :=
  ∀ n, P5559693642479606677.a n = A266797 (n + 1)

end A266797

/-! ## A266797.P1861269748041649662

`A081294(n)+A003945(n)*A007051(n)`
-/

namespace A266797.P1861269748041649662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + A003945 n * A007051 n

end

end A266797.P1861269748041649662

namespace A266797

/-- `A081294(n)+A003945(n)*A007051(n)` -/
def P1861269748041649662.Spec : Prop :=
  ∀ n, P1861269748041649662.a n = A266797 (n + 1)

end A266797

/-!
# A266799: Coefficient of x^0 in the minimal polynomial of the continued fraction [1^n,sqrt(3),1,1,...], where 1^n means n ones.

The programs for A266799, there is no canonical definition to state claims against.
-/

/-! ## A266799.P1893788301401878556

`A088468(∑{d}[n, #%#²]*A250663(3*(n+1)))`
-/

namespace A266799.P1893788301401878556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (((∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 : ℕ) : ℤ) * A250663 (3 * (n + 1))).toNat

end

end A266799.P1893788301401878556

